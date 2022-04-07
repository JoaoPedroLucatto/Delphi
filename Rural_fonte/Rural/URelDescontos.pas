unit URelDescontos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelGenericoSimples, RzShellDialogs, Menus, frxDesgn, EMsgDlg,
  RzButton, StdCtrls, ExtCtrls, RzBckgnd, RzPanel, FMTBcd, DB, DBClient,
  Provider, SqlExpr, frxClass, frxDBSet, wwdblook;

type
  TFRelDescontos = class(TFRelGenericoSimples)
    Relatorio: TfrxReport;
    DBEmpresa: TfrxDBDataset;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    DBDados: TfrxDBDataset;
    cbLayouts: TwwDBLookupCombo;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnLayoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelDescontos              : TFRelDescontos;
  Original, LoadFile, SAntes : Boolean;
  StreamOriginal, StreamAntes: TMemoryStream;

implementation

uses UDM, UPrin, Funcoes, funcoesTela, TrataErros, URelatorios;

{$R *.dfm}


procedure TFRelDescontos.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFRelDescontos.BtnLayoutClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRelatorios, FRelatorios);
  StreamOriginal.clear;
  Relatorio.SaveToStream(StreamOriginal);
  StreamOriginal.Position := 0;
  FRelatorios.Rel_Original.LoadFromStream(StreamOriginal);
  Original := True;

  FRelatorios.ShowModal;
  if CarregaLayoutStream(strtoint(Sia_Empresa), SIA_Aplicacao) then
    LoadFile := False
  else begin
    LoadFile                := True;
    StreamOriginal.Position := 0;
    Relatorio.LoadFromStream(StreamOriginal);
  end;
  FRelatorios.Free;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelDescontos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  inherited;
end;

procedure TFRelDescontos.FormShow(Sender: TObject);
begin
  inherited;
  Sia_Aplicacao  := TForm(sender).Name;
  StreamAntes    := TMemoryStream.Create;
  StreamOriginal := TMemoryStream.Create;
  LoadFile       := False;
  Original       := False;
  SAntes         := False;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelDescontos.BtnConfirmaClick(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  inherited;
  cds.close;
  if GR.ItemIndex = 0 then begin
    sql.CommandText := 'select RR_DESCONTO.*, GR_RECEITA.DESCRI_REC ' +
      'from RR_DESCONTO ' +
      'LEFT JOIN GR_RECEITA ON GR_RECEITA.COD_EMP_REC = RR_DESCONTO.COD_EMP_DSC AND GR_RECEITA.COD_REC = RR_DESCONTO.COD_REC_DSC ' +
      'where RR_DESCONTO.COD_EMP_DSC = ' + SIA_Empresa +
      ' ORDER BY RR_DESCONTO.COD_EMP_DSC, GR_RECEITA.DESCRI_REC';
  end
  else begin
    sql.CommandText := 'select RR_DESCONTO.*, GR_RECEITA.DESCRI_REC ' +
      'from RR_DESCONTO ' +
      'LEFT JOIN GR_RECEITA ON GR_RECEITA.COD_EMP_REC = RR_DESCONTO.COD_EMP_DSC AND GR_RECEITA.COD_REC = RR_DESCONTO.COD_REC_DSC ' +
      'where RR_DESCONTO.COD_EMP_DSC = ' + SIA_Empresa +
      ' ORDER BY RR_DESCONTO.COD_EMP_DSC, RR_DESCONTO.COD_STR_DSC';
  end;
  cds.open;

  if not LoadFile then
    if CarregaLayoutStream(strtoint(Sia_Empresa), SIA_Aplicacao) then begin
      Stream := TMemoryStream.Create;
      TBlobField(dm.cdsLayoutRel.FieldByName('LAYOUT_RLT')).SaveToStream(Stream);
      Stream.Position := 0;
      Relatorio.LoadFromStream(Stream);
      FreeAndNil(Stream);
    end;

  if cbLayouts.Visible then
    if trim(cbLayouts.Text) <> '' then begin
      if not SAntes then begin
        Relatorio.SaveToStream(StreamAntes);
        StreamAntes.Position := 0;
        SAntes               := True;
      end;

      Stream := TMemoryStream.Create;
      TBlobField(dm.cdsLayoutAPL.FieldByName('LAYOUT_RLT')).SaveToStream(Stream);
      Stream.Position := 0;
      Relatorio.LoadFromStream(Stream);
      FreeAndNil(Stream);
      cbLayouts.Text := '';
    end;

  if trim(ImpPadrao) <> '' then
    Relatorio.PrintOptions.Printer := ImpPadrao
  else begin
    try
      if VerImpPadrao <> '' then
        Relatorio.PrintOptions.Printer := VerImpPadrao;
    except
      messagedlg('Impressora Padrão não Definida.' + #13 + 'Instale uma Impressora e Defina como Padrão.', mtInformation, [mbok], 0);
    end;
  end;

  relatorio.PreviewOptions.AllowEdit      := false;
  relatorio.PreviewOptions.DoubleBuffered := false;
  relatorio.PreviewOptions.Maximized      := true;
  relatorio.PreviewOptions.MDIChild       := false;
  relatorio.PreviewOptions.Modal          := true;
  relatorio.PreviewOptions.OutlineExpand  := true;
  relatorio.PreviewOptions.ZoomMode       := zmPageWidth;
  relatorio.ReportOptions.Author          := dm.cdsEmpresa.FieldByName('NOME_EMP').AsString;
  relatorio.EngineOptions.UseFileCache    := true;
  relatorio.EngineOptions.TempDir         := ExtractFilePath(ParamStr(0));

  if not VerImpressao then
    relatorio.ShowReport(true)
  else begin
    relatorio.PrepareReport;
    relatorio.Print;
  end;

  if SAntes then begin
    StreamAntes.Position := 0;
    Relatorio.LoadFromStream(StreamAntes);
  end;
end;

procedure TFRelDescontos.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbNomeRelatorio' then
    (Sender as TfrxMemoView).Text := Label2.Caption;
end;

end.
