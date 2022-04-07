unit URelTabCalculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzBckgnd, ExtCtrls, RzPanel, Menus, EMsgDlg, RzButton,
  FMTBcd, DB, DBClient, Provider, SqlExpr, frxDesgn, frxClass, frxDBSet, Grids,
  DBGrids, RzShellDialogs, wwdblook;

type
  TFRelTabCalculo = class(TForm)
    RzPanel3: TRzPanel;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    lblTitulo: TLabel;
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
    cdsgrupo: TStringField;
    sqlCOD_EMP_RCA: TIntegerField;
    sqlCOD_REC_RCA: TIntegerField;
    sqlCOD_DESDOREC_RCA: TIntegerField;
    sqlABRE_GUIA_RCA: TStringField;
    sqlDESCRI_RCA: TStringField;
    sqlTIP_CALC_RCA: TStringField;
    sqlVALOR_RCA: TFloatField;
    sqlTIP_VALOR_RCA: TStringField;
    sqlLINF_RCA: TFloatField;
    sqlLSUP_RCA: TFloatField;
    sqlCALC_RCA: TStringField;
    sqlHIS_GUIA_RCA: TMemoField;
    sqlDIVIDA_RCA: TStringField;
    sqlEXCED_RCA: TFloatField;
    sqlLOGIN_INC_RCA: TStringField;
    sqlDTA_INC_RCA: TSQLTimeStampField;
    sqlLOGIN_ALT_RCA: TStringField;
    sqlDTA_ALT_RCA: TSQLTimeStampField;
    sqlDESCRI_REC: TStringField;
    cdsCOD_EMP_RCA: TIntegerField;
    cdsCOD_REC_RCA: TIntegerField;
    cdsCOD_DESDOREC_RCA: TIntegerField;
    cdsABRE_GUIA_RCA: TStringField;
    cdsDESCRI_RCA: TStringField;
    cdsTIP_CALC_RCA: TStringField;
    cdsVALOR_RCA: TFloatField;
    cdsTIP_VALOR_RCA: TStringField;
    cdsLINF_RCA: TFloatField;
    cdsLSUP_RCA: TFloatField;
    cdsCALC_RCA: TStringField;
    cdsHIS_GUIA_RCA: TMemoField;
    cdsDIVIDA_RCA: TStringField;
    cdsEXCED_RCA: TFloatField;
    cdsLOGIN_INC_RCA: TStringField;
    cdsDTA_INC_RCA: TSQLTimeStampField;
    cdsLOGIN_ALT_RCA: TStringField;
    cdsDTA_ALT_RCA: TSQLTimeStampField;
    cdsDESCRI_REC: TStringField;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
    procedure BtnLayoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGO : string;
    CODIGO1: string;
  end;

var
  FRelTabCalculo             : TFRelTabCalculo;
  Original, LoadFile, SAntes : Boolean;
  StreamOriginal, StreamAntes: TMemoryStream;

implementation

uses UDM, Funcoes, funcoesTela, TrataErros, UPrin, URelatorios;

{$R *.dfm}


procedure TFRelTabCalculo.BtnConfirmaClick(Sender: TObject);
var
  Ordem, Filtro: string;
  Stream       : TMemoryStream;
begin
  if GR.ItemIndex = 0 then
    Ordem := ' ORDER BY COD_REC_RCA, ABRE_GUIA_RCA'
  else
    Ordem := ' ORDER BY COD_REC_RCA, COD_DESDOREC_RCA';

  if CODIGO <> '' then
    filtro := filtro + ' AND RR_CALCULO.COD_REC_RCA = ''' + CODIGO + '''';
  if CODIGO1 <> '' then
    filtro := filtro + ' AND RR_CALCULO.COD_DESDOREC_RCA = ''' + CODIGO1 + '''';

  cds.close;
  sql.CommandText := 'SELECT RR_CALCULO.*, GR_RECEITA.DESCRI_REC ' +
    ' FROM RR_CALCULO ' +
    ' LEFT JOIN GR_RECEITA ON GR_RECEITA.COD_EMP_REC = RR_CALCULO.COD_EMP_RCA ' +
    '                     AND GR_RECEITA.COD_REC = RR_CALCULO.COD_REC_RCA ' +
    ' WHERE RR_CALCULO.COD_EMP_RCA = ' + SIA_Empresa + filtro + Ordem;
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

procedure TFRelTabCalculo.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFRelTabCalculo.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Tabela de Cálculo ';
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;
end;

procedure TFRelTabCalculo.BtnLayoutClick(Sender: TObject);
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

procedure TFRelTabCalculo.FormShow(Sender: TObject);
begin
  Sia_Aplicacao  := TForm(sender).Name;
  StreamAntes    := TMemoryStream.Create;
  StreamOriginal := TMemoryStream.Create;
  LoadFile       := False;
  Original       := False;
  SAntes         := False;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelTabCalculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  Action := caFree;
end;

procedure TFRelTabCalculo.cdsCalcFields(DataSet: TDataSet);
begin
  cdsGRUPO.AsString := cdsCOD_REC_RCA.AsString + ZeraEsquerda(6, cdsCOD_DESDOREC_RCA.AsString);
end;

procedure TFRelTabCalculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    BtnSair.Click;
end;

end.
