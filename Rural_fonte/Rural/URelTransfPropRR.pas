unit URelTransfPropRR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelGenericoSimples, RzShellDialogs, frxDesgn, EMsgDlg,
  RzButton, StdCtrls, ExtCtrls, RzBckgnd, RzPanel, FMTBcd, frxClass, DB,
  DBClient, Provider, SqlExpr, frxDBSet, wwdblook;

type
  TFRelTransfPropRR = class(TFRelGenericoSimples)
    DBEmpresa: TfrxDBDataset;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    DBDados: TfrxDBDataset;
    Relatorio: TfrxReport;
    cbLayouts: TwwDBLookupCombo;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnLayoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTransfPropRR           : TFRelTransfPropRR;
  Original, LoadFile, SAntes : Boolean;
  StreamOriginal, StreamAntes: TMemoryStream;
  CODRTP                     : string;

implementation

uses UDM, Funcoes, funcoesTela, TrataErros, UPrin, URelatorios;

{$R *.dfm}


procedure TFRelTransfPropRR.BtnConfirmaClick(Sender: TObject);
var
  filtro, onde: string;
  Stream      : TMemoryStream;
begin
  inherited;
  filtro := '';
  if GR.ItemIndex = 0 then
    onde := ' ORDER BY COD_EMP_RTP, CNTV.NOME_CNT'
  else
    onde := ' ORDER BY COD_EMP_RTP, COD_RTP';

  if trim(CODRTP) <> '' then
    filtro := ' AND COD_RTP = ' + CODRTP;

  cds.close;
  sql.CommandText := 'SELECT RR_TRANSPROP.*, ' +
    'CNTV.NOME_CNT NOMEVELHO, ' +
    'CNTV.CNPJ_CNT CPFVELHO, ' +
    'CNTV.RG_CNT RGVELHO, ' +
    'LOGV.NOME_LOG LOGVELHO, ' +
    'VELHO.COMPL_RRR COMPLVELHO, ' +
    'CNTN.NOME_CNT NOMENOVO, ' +
    'LOGN.NOME_LOG LOGNOVO, ' +
    'BAIN.NOME_BAI BAINOVO, ' +
    'CNTN.NUMERO_CNT NRONOVO, ' +
    'CNTN.COMPLE_CNT COMPLNOVO, ' +
    'CNTN.CNPJ_CNT CPFNOVO, ' +
    'CNTN.RG_CNT RGNOVO ' +
    'FROM RR_TRANSPROP ' +
    'INNER JOIN GR_CONTRIBUINTES CNTN ON CNTN.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP ' +
    'AND CNTN.COD_CNT = RR_TRANSPROP.COD_CNTN_RTP ' +
    'LEFT JOIN GR_LOGRA LOGN ON LOGN.COD_EMP_LOG = CNTN.COD_EMP_CNT ' +
    'AND LOGN.COD_LOG = CNTN.COD_LOG_CNT ' +
    'LEFT JOIN GR_BAIRRO BAIN ON BAIN.COD_EMP_BAI = CNTN.COD_EMP_CNT ' +
    'AND BAIN.COD_BAI = CNTN.COD_BAI_CNT ' +
    'INNER JOIN RR_CAD_RURAL VELHO ON VELHO.COD_EMP_RRR = RR_TRANSPROP.COD_EMP_RTP ' +
    'AND VELHO.COD_RRR = RR_TRANSPROP.COD_RRR_ANT_RTP ' +
    'INNER JOIN GR_CONTRIBUINTES CNTV ON CNTV.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP ' +
    'AND CNTV.COD_CNT = RR_TRANSPROP.COD_CNTV_RTP ' +
    'LEFT JOIN GR_LOGRA LOGV ON LOGV.COD_EMP_LOG = VELHO.COD_EMP_RRR ' +
    'AND LOGV.COD_LOG = VELHO.COD_LOG_RRR ' +
    'WHERE RR_TRANSPROP.COD_EMP_RTP = ' + SIA_Empresa + filtro + onde;
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

procedure TFRelTransfPropRR.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFRelTransfPropRR.BtnLayoutClick(Sender: TObject);
begin
  inherited;
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

procedure TFRelTransfPropRR.FormShow(Sender: TObject);
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

procedure TFRelTransfPropRR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  inherited;
end;

procedure TFRelTransfPropRR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    BtnSair.Click;
end;

procedure TFRelTransfPropRR.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Relatório de Trasferência de Propriedade'; // +cabecalho;
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;
end;

end.
