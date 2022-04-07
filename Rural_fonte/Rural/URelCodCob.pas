unit URelCodCob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzBckgnd, ExtCtrls, RzPanel, Menus, EMsgDlg, RzButton,
  FMTBcd, DB, DBClient, Provider, SqlExpr, frxDesgn, frxClass, frxDBSet,
  Grids, DBGrids, RzShellDialogs, wwdblook;

type
  TFRelCodCob = class(TForm)
    RzPanel3: TRzPanel;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    Label2: TLabel;
    msg: TEvMsgDlg;
    GR: TRadioGroup;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    DBDados: TfrxDBDataset;
    DBEmpresa: TfrxDBDataset;
    frxDesigner: TfrxDesigner;
    Relatorio: TfrxReport;
    RzPanel1: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnLayout: TRzBitBtn;
    cbLayouts: TwwDBLookupCombo;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
    procedure BtnLayoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGO: string;
  end;

var
  FRelCodCob                 : TFRelCodCob;
  Original, LoadFile, SAntes : Boolean;
  StreamOriginal, StreamAntes: TMemoryStream;

implementation

uses UDM, Funcoes, funcoesTela, TrataErros, UPrin, URelatorios;

{$R *.dfm}


procedure TFRelCodCob.BtnConfirmaClick(Sender: TObject);
var
  Ordem, Filtro: string;
  Stream       : TMemoryStream;
begin
  if GR.ItemIndex = 0 then
    Ordem := ' ORDER BY DESCRI_COB, GR_RECEITA.DESCRI_REC'
  else
    Ordem := ' ORDER BY COD_COB,DESCRI_REC';

  if CODIGO <> '' then
    filtro := ' AND RR_COBRANCA.COD_COB = ' + CODIGO
  else
    filtro := '';

  cds.close;
  sql.CommandText := 'SELECT RR_COBRANCA.*, RR_RELCOBRANCA.*,DESCRI_REC ' +
    'FROM RR_COBRANCA ' +
    'LEFT JOIN RR_RELCOBRANCA ON RR_RELCOBRANCA.COD_EMP_RCO = RR_COBRANCA.COD_EMP_COB AND ' +
    '                            RR_RELCOBRANCA.COD_COB_RCO = RR_COBRANCA.COD_COB ' +
    'LEFT JOIN GR_RECEITA ON GR_RECEITA.COD_EMP_REC = RR_RELCOBRANCA.COD_EMP_RCO AND ' +
    '                        GR_RECEITA.COD_REC     =  RR_RELCOBRANCA.COD_REC_RCO ' +
    'WHERE RR_COBRANCA.COD_EMP_COB = ' + SIA_Empresa + filtro + Ordem;
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

procedure TFRelCodCob.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFRelCodCob.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Relação de Códigos de Cobrança';
end;

procedure TFRelCodCob.BtnLayoutClick(Sender: TObject);
begin
  Application.CreateForm(TFRelatorios, FRelatorios);
  StreamOriginal.Clear;
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

procedure TFRelCodCob.FormShow(Sender: TObject);
begin
  Sia_Aplicacao  := TForm(sender).Name;
  StreamAntes    := TMemoryStream.Create;
  StreamOriginal := TMemoryStream.Create;
  LoadFile       := False;
  Original       := False;
  SAntes         := False;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelCodCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  Action := caFree;
end;

procedure TFRelCodCob.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    BtnSair.Click;
end;

end.
