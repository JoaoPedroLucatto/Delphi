unit URelRolLancRR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelGenerico, RzShellDialogs, EMsgDlg, frxDesgn, RzButton,
  RzSplit, StdCtrls, RzBckgnd, ExtCtrls, RzPanel, Mask, CheckLst, Buttons,
  FMTBcd, DBClient, Provider, DB, SqlExpr, frxClass, frxDBSet, wwdblook;

type
  TFRelRolLancRR = class(TFRelGenerico)
    GroupBox1: TGroupBox;
    btnCadINI: TSpeedButton;
    btnCadFIM: TSpeedButton;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    GroupBox4: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label5: TLabel;
    msk3: TMaskEdit;
    msk4: TMaskEdit;
    GroupBox11: TGroupBox;
    lstCob: TCheckListBox;
    rgDEB: TRadioGroup;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    msk5: TMaskEdit;
    msk6: TMaskEdit;
    sqlCob: TSQLDataSet;
    dspCob: TDataSetProvider;
    cdsCob: TClientDataSet;
    DBEmpresa: TfrxDBDataset;
    GSet: TGroupBox;
    Label21: TLabel;
    mkExercicio: TMaskEdit;
    rdTipo: TRadioGroup;
    rdOrdem: TRadioGroup;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    DBDados: TfrxDBDataset;
    sqlResumo: TSQLDataSet;
    dspResumo: TDataSetProvider;
    cdsResumo: TClientDataSet;
    dsResumo: TDataSource;
    DBRec: TfrxDBDataset;
    dbParcelas: TfrxDBDataset;
    dsParcelas: TDataSource;
    cdsParcelas: TClientDataSet;
    cdsParcelasCOD_EMP_FRC: TIntegerField;
    cdsParcelasCOD_DIV_FRC: TIntegerField;
    cdsParcelasPARCELA_PAR: TIntegerField;
    cdsParcelasTP_PAR: TIntegerField;
    cdsParcelasDATAVENCI: TDateField;
    cdsParcelasVALOR: TFloatField;
    cdsParcelasLDESCOVENCI: TFloatField;
    cdsParcelasvalorParcela: TCurrencyField;
    cdsParcelasUNICA_PAR: TStringField;
    dspParcelas: TDataSetProvider;
    sqlParcelas: TSQLDataSet;
    sqlParcelasCOD_EMP_FRC: TIntegerField;
    sqlParcelasCOD_DIV_FRC: TIntegerField;
    sqlParcelasPARCELA_PAR: TIntegerField;
    sqlParcelasTP_PAR: TIntegerField;
    sqlParcelasDATAVENCI: TDateField;
    sqlParcelasVALOR: TFloatField;
    sqlParcelasLDESCOVENCI: TFloatField;
    sqlParcelasUNICA_PAR: TStringField;
    sqlResumoGeral: TSQLDataSet;
    dspResumoGeral: TDataSetProvider;
    cdsResumoGeral: TClientDataSet;
    dsResumoGeral: TDataSource;
    dbResumoGeral: TfrxDBDataset;
    Relatorio2: TfrxReport;
    sqlCOD_EMP_PAR: TIntegerField;
    sqlCOD_DIV_PAR: TIntegerField;
    sqlANO_DIV: TStringField;
    sqlCOD_REP_DIV: TIntegerField;
    sqlNOME_CNT: TStringField;
    sqlNOMECOMPRO: TStringField;
    sqlDESCRICAO_REP: TStringField;
    sqlCOD_MOD_DIV: TIntegerField;
    sqlCOD_CNT_RRR: TStringField;
    sqlCNPJ_CNT: TStringField;
    sqlRG_CNT: TStringField;
    sqlCOD_CAD_DIV: TStringField;
    sqlLOGRAI: TStringField;
    sqlCOMPLEI: TStringField;
    sqlLOGRAE: TStringField;
    sqlBAIRROE: TStringField;
    sqlNUMEROE: TStringField;
    sqlCEPE: TStringField;
    sqlCOMPLEE: TStringField;
    sqlCIDADE: TStringField;
    sqlUF: TStringField;
    sqlMATRIC_RRR: TStringField;
    sqlDESCRI_COB: TStringField;
    sqlAREAH_RRR: TFloatField;
    sqlAREAE_RRR: TFloatField;
    sqlAREAM_RRR: TFloatField;
    sqlVVENAL_RRR: TFloatField;
    sqlINCRA_RRR: TStringField;
    sqlVALOR: TFloatField;
    cdsCOD_EMP_PAR: TIntegerField;
    cdsCOD_DIV_PAR: TIntegerField;
    cdsANO_DIV: TStringField;
    cdsCOD_REP_DIV: TIntegerField;
    cdsNOME_CNT: TStringField;
    cdsNOMECOMPRO: TStringField;
    cdsDESCRICAO_REP: TStringField;
    cdsCOD_MOD_DIV: TIntegerField;
    cdsCOD_CNT_RRR: TStringField;
    cdsCNPJ_CNT: TStringField;
    cdsRG_CNT: TStringField;
    cdsCOD_CAD_DIV: TStringField;
    cdsLOGRAI: TStringField;
    cdsCOMPLEI: TStringField;
    cdsLOGRAE: TStringField;
    cdsBAIRROE: TStringField;
    cdsNUMEROE: TStringField;
    cdsCEPE: TStringField;
    cdsCOMPLEE: TStringField;
    cdsCIDADE: TStringField;
    cdsUF: TStringField;
    cdsMATRIC_RRR: TStringField;
    cdsDESCRI_COB: TStringField;
    cdsAREAH_RRR: TFloatField;
    cdsAREAE_RRR: TFloatField;
    cdsAREAM_RRR: TFloatField;
    cdsVVENAL_RRR: TFloatField;
    cdsINCRA_RRR: TStringField;
    cdsVALOR: TFloatField;
    sqlPROPRIEDADE_RRR: TStringField;
    sqlPONTOS_RRR: TFloatField;
    sqlDISTANCIA_RRR: TFloatField;
    cdsPROPRIEDADE_RRR: TStringField;
    cdsPONTOS_RRR: TFloatField;
    cdsDISTANCIA_RRR: TFloatField;
    Relatorio: TfrxReport;
    cbLayouts: TwwDBLookupCombo;
    procedure msk1Exit(Sender: TObject);
    procedure btnCadINIClick(Sender: TObject);
    procedure msk2Exit(Sender: TObject);
    procedure btnCadFIMClick(Sender: TObject);
    procedure msk1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure msk1Enter(Sender: TObject);
    procedure msk3Enter(Sender: TObject);
    procedure msk3Exit(Sender: TObject);
    procedure msk4Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure msk5Exit(Sender: TObject);
    procedure msk6Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnLayoutClick(Sender: TObject);
    procedure RzSizePanel1HotSpotClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Relatorio1BeforePrint(Sender: TfrxReportComponent);
    procedure Relatorio2BeforePrint(Sender: TfrxReportComponent);
    procedure cdsParcelasCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelRolLancRR                       : TFRelRolLancRR;
  Avancada, Original, LoadFile, SAntes: Boolean;
  StreamOriginal, StreamAntes         : TMemoryStream;
  Consulta, ConsultaG, Btn, cabecalho : string;

implementation

uses UDM, UPrin, Funcoes, funcoesTela, TrataErros, aguarde, URelatorios, UClasse_PesqPrin,
  UClasse_PesqRur;

{$R *.dfm}


procedure TFRelRolLancRR.msk1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFRelRolLancRR.msk1Exit(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  inherited;
  if trim(TMaskEdit(sender).Text) <> '' then begin
    TMaskEdit(sender).MaxLength := 0;
    if trim(TMaskEdit(sender).Text) <> '' then
      TMaskEdit(sender).Text := MontaMascara(TMaskEdit(sender).Text, 'RUR', SIA_Empresa);

    Pesq := TPesq_Rural.Create;
    Pesq.PesquisaRural(TMaskEdit(sender).Text);
    TMaskEdit(sender).Text := Pesq.CADASTRO;
    if trim(msk2.Text) = '' then
      msk2.Text := TMaskEdit(sender).Text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolLancRR.btnCadINIClick(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  inherited;
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then begin
    msk1.Text := Pesq.CADASTRO;
    if trim(msk2.Text) = '' then
      msk2.Text := msk1.Text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelRolLancRR.msk2Exit(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  inherited;
  if trim(TMaskEdit(sender).Text) <> '' then begin
    TMaskEdit(sender).MaxLength := 0;
    if trim(TMaskEdit(sender).Text) <> '' then
      TMaskEdit(sender).Text := MontaMascara(TMaskEdit(sender).Text, 'RUR', SIA_Empresa);

    Pesq := TPesq_Rural.Create;
    Pesq.PesquisaRural(TMaskEdit(sender).Text);
    TMaskEdit(sender).Text := Pesq.CADASTRO;
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolLancRR.btnCadFIMClick(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  inherited;
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then
    msk2.Text := Pesq.CADASTRO;
  FreeAndNil(Pesq);
end;

procedure TFRelRolLancRR.msk1Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelRolLancRR.msk3Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('CNT', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelRolLancRR.msk3Exit(Sender: TObject);
var
  Pesq: TPesq_CNT;
begin
  inherited;
  if trim(TMaskEdit(Sender).text) <> '' then begin
    TMaskEdit(Sender).MaxLength := 0;
    if trim(TMaskEdit(Sender).Text) <> '' then
      TMaskEdit(Sender).Text := MontaMascara(TMaskEdit(Sender).Text, 'CNT', SIA_Empresa);

    Pesq := TPesq_CNT.Create;
    Pesq.PesquisaCNT(trim(TMaskEdit(Sender).text), 'INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_CNT AND COD_CNT_RRR=COD_CNT');
    TMaskEdit(Sender).text := vartostr(Pesq.Codigo);
    if trim(msk4.text) = '' then
      msk4.text := TMaskEdit(Sender).text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolLancRR.msk4Exit(Sender: TObject);
var
  Pesq: TPesq_CNT;
begin
  inherited;
  if trim(TMaskEdit(Sender).text) <> '' then begin
    TMaskEdit(Sender).MaxLength := 0;
    if trim(TMaskEdit(Sender).Text) <> '' then
      TMaskEdit(Sender).Text := MontaMascara(TMaskEdit(Sender).Text, 'CNT', SIA_Empresa);

    Pesq := TPesq_CNT.Create;
    Pesq.PesquisaCNT(trim(TMaskEdit(Sender).text), 'INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_CNT AND COD_CNT_RRR=COD_CNT');
    TMaskEdit(Sender).text := vartostr(Pesq.Codigo);
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolLancRR.SpeedButton3Click(Sender: TObject);
var
  Pesq: TPesq_CNT;
begin
  inherited;

  Pesq := TPesq_CNT.Create;
  if Pesq.BotaoCNT('INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_CNT AND COD_CNT_RRR=COD_CNT') then begin
    msk3.text := vartostr(Pesq.Codigo);
    if trim(msk4.text) = '' then
      msk4.text := msk3.text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelRolLancRR.SpeedButton4Click(Sender: TObject);
var
  Pesq: TPesq_CNT;
begin
  inherited;

  Pesq := TPesq_CNT.Create;
  if Pesq.BotaoCNT('INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_CNT AND COD_CNT_RRR=COD_CNT') then begin
    msk4.text := vartostr(Pesq.Codigo);
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelRolLancRR.msk5Exit(Sender: TObject);
var
  Pesq: TPesq_Classificacao_RR;
begin
  inherited;

  if trim(TMaskEdit(Sender).text) <> '' then begin
    Pesq := TPesq_Classificacao_RR.Create;
    Pesq.PesquisaClassificacaoRR(trim(TMaskEdit(Sender).text), Sia_Exercicio);
    TMaskEdit(Sender).text := vartostr(Pesq.Codigo);
    if trim(msk6.Text) = '' then
      msk6.Text := TMaskEdit(Sender).text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolLancRR.msk6Exit(Sender: TObject);
var
  Pesq: TPesq_Classificacao_RR;
begin
  inherited;

  if trim(TMaskEdit(Sender).text) <> '' then begin
    Pesq := TPesq_Classificacao_RR.Create;
    Pesq.PesquisaClassificacaoRR(trim(TMaskEdit(Sender).text), Sia_Exercicio);
    TMaskEdit(Sender).text := vartostr(Pesq.Codigo);
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolLancRR.rdTipoClick(Sender: TObject);
begin
  inherited;
  SIA_Aplicacao := 'FRelRolLancRR' + IntToStr(rdTipo.ItemIndex);

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelRolLancRR.SpeedButton1Click(Sender: TObject);
var
  Pesq: TPesq_Classificacao_RR;
begin
  inherited;

  Pesq := TPesq_Classificacao_RR.Create;
  if Pesq.BotaoClassificacaoRR then begin
    msk5.text := vartostr(Pesq.Codigo);
    if trim(msk6.Text) = '' then
      msk6.Text := msk5.text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelRolLancRR.SpeedButton2Click(Sender: TObject);
var
  Pesq: TPesq_Classificacao_RR;
begin
  inherited;

  Pesq := TPesq_Classificacao_RR.Create;
  if Pesq.BotaoClassificacaoRR then
    msk6.text := vartostr(Pesq.Codigo);
  FreeAndNil(Pesq);
end;

procedure TFRelRolLancRR.FormShow(Sender: TObject);
begin
  inherited;
  mkExercicio.Text := Sia_Exercicio;
  lstCob.Clear;
  cdsCob.Close;
  sqlCob.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
  cdsCob.Open;
  while not cdsCob.Eof do begin
    lstCob.Items.Add(ZeraEsquerda(2, cdsCob.FieldByName('COD_COB').AsString) + ' - ' +
      cdsCob.FieldByName('DESCRI_COB').AsString);
    cdsCob.Next;
  end;
  cdsCob.Close;

  FRelRolLancRR.Height := 290;
  RzSizePanel1.CloseHotSpot;

  SIA_Aplicacao  := 'FRelRolLancRR' + IntToStr(rdTipo.ItemIndex);
  StreamAntes    := TMemoryStream.Create;
  StreamOriginal := TMemoryStream.Create;
  LoadFile       := False;
  Original       := False;
  SAntes         := False;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelRolLancRR.BtnLayoutClick(Sender: TObject);
var
  rel: TfrxReport;
begin
  inherited;
  SIA_Aplicacao := 'FRelRolLancRR' + IntToStr(rdTipo.ItemIndex);

  if rdTipo.ItemIndex = 0 then
    rel := Relatorio
  else if rdTipo.ItemIndex = 1 then
    rel := Relatorio2;

  Application.CreateForm(TFRelatorios, FRelatorios);
  StreamOriginal.clear;
  rel.SaveToStream(StreamOriginal);
  StreamOriginal.Position := 0;
  FRelatorios.Rel_Original.LoadFromStream(StreamOriginal);
  Original := True;

  FRelatorios.ShowModal;
  if CarregaLayoutStream(strtoint(Sia_Empresa), SIA_Aplicacao) then
    LoadFile := False
  else begin
    LoadFile                := True;
    StreamOriginal.Position := 0;
    rel.LoadFromStream(StreamOriginal);
  end;
  FRelatorios.Free;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelRolLancRR.RzSizePanel1HotSpotClick(Sender: TObject);
begin
  inherited;
  if FRelRolLancRR.Height = 290 then begin
    FRelRolLancRR.Height := 404;
    FRelRolLancRR.top    := FRelRolLancRR.top - 57;
  end
  else begin
    FRelRolLancRR.Height := 290;
    FRelRolLancRR.top    := FRelRolLancRR.top + 57;
  end;
end;

procedure TFRelRolLancRR.BtnConfirmaClick(Sender: TObject);
var
  filtro, ordem, rec: string;
  i                 : integer;
  rel               : TfrxReport;
  Stream            : TMemoryStream;
begin
  inherited;
  ordem  := '';
  filtro := '';

  if (trim(mkExercicio.Text) = '') then begin
    dm.msg.MessageDlg('Exercício é Obrigatório.', mtInformation, [mbok], 0);
    mkExercicio.SetFocus;
    exit;
  end;

  if rdOrdem.ItemIndex = 0 then
    ordem := ' ORDER BY COD_CAD_DIV '
  else if rdOrdem.ItemIndex = 2 then
    ordem := ' ORDER BY LOGRA_RRR '
  else if rdOrdem.ItemIndex = 3 then
    ordem := ' ORDER BY NOME_CNT,COD_CAD_DIV ';

  cabecalho := '';
  if (trim(msk1.Text) <> '') and (trim(msk2.Text) <> '') then begin
    filtro    := filtro + ' AND RR_CAD_RURAL.COD_RRR BETWEEN ' + '''' + trim(msk1.Text) + '''' + ' AND ' + '''' + trim(msk2.Text) + '''';
    cabecalho := cabecalho + ' Cadastro: ' + msk1.Text + ' ao ' + msk2.Text;
  end;

  if (trim(msk3.Text) <> '') and (trim(msk4.Text) <> '') then begin
    filtro    := filtro + ' AND RR_CAD_RURAL.COD_CNT_RRR BETWEEN ' + '''' + trim(msk3.Text) + '''' + ' AND ' + '''' + trim(msk4.Text) + '''';
    cabecalho := cabecalho + ' Contribuinte: ' + msk3.Text + ' ao ' + msk4.Text;
  end;

  if (trim(msk5.Text) <> '') and (trim(msk6.Text) <> '') then begin
    filtro    := filtro + ' AND RR_CAD_RURAL.COD_CLASS_RRR BETWEEN ' + trim(msk5.Text) + ' AND ' + trim(msk6.Text);
    cabecalho := cabecalho + ' Classificação: ' + msk5.Text + ' ao ' + msk6.Text;
  end;

  if (trim(mkExercicio.Text) <> '') then begin
    filtro    := filtro + ' AND ANO_DIV=''' + mkExercicio.Text + '''';
    cabecalho := cabecalho + ' Exercicio: ' + mkExercicio.Text;
  end;

  case rgDEB.ItemIndex of
    0:
      filtro := filtro + ' AND RR_CAD_RURAL.DEBAU_RRR = ''S'' ';
    1:
      filtro := filtro + ' AND RR_CAD_RURAL.DEBAU_RRR = ''N'' OR RR_CAD_RURAL.DEBAU_RRR IS NULL ';
  end;

  rec   := '';
  for i := 0 to lstCob.Items.Count - 1 do begin
    if lstCob.Checked[i] then
      rec := rec + copy(lstCob.Items.Strings[i], 1, 2) + ',';
  end;

  if trim(rec) <> '' then begin
    if length(trim(copy(rec, 1, length(rec) - 1))) = 1 then
      filtro := filtro + ' AND RR_CAD_RURAL.COD_COB_RRR = ' + trim(copy(rec, 1, length(rec) - 1))
    else
      filtro := filtro + ' AND RR_CAD_RURAL.COD_COB_RRR IN (' + trim(copy(rec, 1, length(rec) - 1)) + ')';

    cabecalho := cabecalho + ' Código de Cobrança ' + trim(copy(rec, 1, length(rec) - 1));
  end;

  Consulta := 'SELECT COD_EMP_PAR, ' +
    'COD_DIV_PAR, ' +
    'ANO_DIV, ' +
    'COD_REP_DIV, ' +
    'P.NOME_CNT, ' +
    'RESPONSA_RRR AS NOMECOMPRO, ' +
    'DESCRICAO_REP, ' +
    'COD_MOD_DIV, ' +
    'COD_CNT_RRR , ' +
    'P.CNPJ_CNT, ' +
    'P.RG_CNT, ' +
    'COD_CAD_DIV, ' +
    'LOGRA_RRR AS LOGRAI, ' +
    'COMPL_RRR AS COMPLEI, ' +
    'LOGRAE_RRR AS LOGRAE, ' +
    'BAIRROE_RRR AS BAIRROE, ' +
    'NUMEROE_RRR AS NUMEROE, ' +
    'CEPE_RRR AS CEPE, ' +
    'COMPLEE_RRR AS COMPLEE, ' +
    'NOME_CID AS CIDADE, ' +
    'UF_CID AS UF, ' +
    'MATRIC_RRR, ' +
    'DESCRI_COB, ' +
    'AREAH_RRR, ' +
    'AREAE_RRR, ' +
    'AREAM_RRR, ' +
    'VVENAL_RRR, ' +
    'INCRA_RRR, ' +
    'PROPRIEDADE_RRR, ' +
    'PONTOS_RRR, ' +
    'DISTANCIA_RRR, ' +
    'SUM(COALESCE(LVALOR_FRC,0)-COALESCE(LISENTO_FRC,0)) AS VALOR ' +
    ' FROM FI_PARCELA ' +
    ' INNER JOIN FI_RECEITAS ON COD_EMP_PAR=COD_EMP_FRC AND COD_DIV_PAR=COD_DIV_FRC AND TP_PAR=TP_PAR_FRC AND PARCELA_PAR=PARCELA_PAR_FRC ' +
    ' INNER JOIN FI_DIVIDA ON COD_EMP_PAR=COD_EMP_DIV AND COD_DIV_PAR=COD_DIV ' +
    ' INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_DIV AND COD_RRR=COD_CAD_DIV ' +
    ' INNER JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR ' +
    ' INNER JOIN FI_RECPRINCIPAL ON COD_EMP_DIV=COD_EMP_REP AND COD_REP_DIV=COD_REP AND COD_MOD_DIV=COD_MOD_REP ' +
    ' INNER JOIN GR_CONTRIBUINTES P ON P.COD_EMP_CNT=COD_EMP_PAR AND P.COD_CNT=COD_CNT_RRR ' +
    ' LEFT JOIN GR_CIDADE ON COD_CID=COD_CIDE_RRR ' +
    ' WHERE COD_EMP_PAR = ' + Sia_Empresa + filtro +
    ' AND PARCE_PAR=''N'' AND UNICA_PAR=''N'' AND COD_MOD_DIV=4 ' +
    ' AND AGRUPAMENTO_REP LIKE ''13%'' ' +
    ' GROUP BY COD_EMP_PAR,COD_DIV_PAR,ANO_DIV,COD_REP_DIV,P.NOME_CNT, ' +
    ' RESPONSA_RRR,DESCRICAO_REP,COD_MOD_DIV,COD_CNT_RRR,P.CNPJ_CNT, ' +
    ' P.RG_CNT,COD_CAD_DIV,LOGRA_RRR,COMPL_RRR,LOGRAE_RRR,BAIRROE_RRR, ' +
    ' NUMEROE_RRR,CEPE_RRR,COMPLEE_RRR,NOME_CID,UF_CID,MATRIC_RRR,DESCRI_COB, ' +
    ' AREAH_RRR,AREAE_RRR,AREAM_RRR,VVENAL_RRR,INCRA_RRR,PROPRIEDADE_RRR,PONTOS_RRR, ' +
    ' DISTANCIA_RRR ';

  Application.CreateForm(Tfrmaguarde, frmaguarde);
  frmaguarde.PB.Visible    := False;
  frmaguarde.Caption       := 'Aguarde......';
  frmaguarde.LMens.Caption := 'Gerando Relatório.';
  frmaguarde.Show;
  Application.ProcessMessages;

  cds.close;
  sql.CommandText := Consulta + ORDEM;
  cds.open;

  cdsResumo.close;
  cdsResumo.open;

  if rdTipo.ItemIndex = 1 then begin
    cdsParcelas.close;
    cdsParcelas.open;
  end;

  cdsResumoGeral.close;
  sqlResumoGeral.commandText := ' SELECT SUM(COALESCE(LVALOR_FRC,0)-COALESCE(LISENTO_FRC,0)) AS VALOR,COD_REC_FRC,DESCRI_REC ' +
    ' FROM FI_PARCELA ' +
    ' INNER JOIN FI_RECEITAS ON COD_EMP_PAR=COD_EMP_FRC AND COD_DIV_PAR=COD_DIV_FRC AND TP_PAR=TP_PAR_FRC AND PARCELA_PAR=PARCELA_PAR_FRC ' +
    ' INNER JOIN GR_RECEITA  ON COD_EMP_REC=COD_EMP_FRC AND COD_REC=COD_REC_FRC ' +
    ' INNER JOIN FI_DIVIDA ON COD_EMP_PAR=COD_EMP_DIV AND COD_DIV_PAR=COD_DIV ' +
    ' INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_DIV AND COD_RRR=COD_CAD_DIV ' +
    ' INNER JOIN FI_RECPRINCIPAL ON COD_EMP_DIV=COD_EMP_REP AND COD_REP_DIV=COD_REP AND COD_MOD_DIV=COD_MOD_REP ' +
    ' WHERE COD_EMP_PAR=' + Sia_Empresa + ' AND PARCE_PAR=''N'' AND UNICA_PAR=''N'' ' +
    ' AND COD_MOD_DIV=4 ' + filtro +
    ' AND AGRUPAMENTO_REP LIKE ''13%'' ' +
    ' GROUP BY COD_REC_FRC,DESCRI_REC ';
  cdsResumoGeral.open;

  frmaguarde.Free;

  SIA_Aplicacao := 'FRelRolLancRR' + IntToStr(rdTipo.ItemIndex);

  if rdTipo.ItemIndex = 0 then
    rel := Relatorio
  else if rdTipo.ItemIndex = 1 then
    rel := Relatorio2;

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
    rel.PrintOptions.Printer := ImpPadrao
  else begin
    try
      if VerImpPadrao <> '' then
        rel.PrintOptions.Printer := VerImpPadrao;
    except
      messagedlg('Impressora Padrão não Definida.' + #13 + 'Instale uma Impressora e Defina como Padrão.', mtInformation, [mbok], 0);
    end;
  end;

  rel.PreviewOptions.AllowEdit      := false;
  rel.PreviewOptions.DoubleBuffered := false;
  rel.PreviewOptions.Maximized      := true;
  rel.PreviewOptions.MDIChild       := false;
  rel.PreviewOptions.Modal          := true;
  rel.PreviewOptions.OutlineExpand  := true;
  rel.PreviewOptions.ZoomMode       := zmPageWidth;
  rel.ReportOptions.Author          := dm.cdsEmpresa.FieldByName('NOME_EMP').AsString;
  rel.EngineOptions.UseFileCache    := true;
  rel.EngineOptions.TempDir         := ExtractFilePath(ParamStr(0));

  if not VerImpressao then
    rel.ShowReport(true)
  else begin
    rel.PrepareReport;
    rel.Print;
  end;

  if SAntes then begin
    StreamAntes.Position := 0;
    rel.LoadFromStream(StreamAntes);
  end;
end;

procedure TFRelRolLancRR.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Rol Cadastral Completo ' + cabecalho;
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;
end;

procedure TFRelRolLancRR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  inherited;
end;

procedure TFRelRolLancRR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    BtnSair.Click;
end;

procedure TFRelRolLancRR.Relatorio1BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Rol Cadastral Simplificado 1 ' + cabecalho;
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;
end;

procedure TFRelRolLancRR.Relatorio2BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Rol Cadastral Simplificado 2 ' + cabecalho;
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;
end;

procedure TFRelRolLancRR.cdsParcelasCalcFields(DataSet: TDataSet);
begin
  with dataset do begin
    if state = dsinternalcalc then begin
      if cdsParcelas.fieldByName('unica_par').AsString = 'S' then
        cdsParcelas.fieldByName('valorParcela').AsCurrency := cdsParcelas.fieldByName('VALOR').AsCurrency - cdsParcelas.fieldByName('LDESCOVENCI').AsCurrency
      else
        cdsParcelas.fieldByName('valorParcela').AsCurrency := cdsParcelas.fieldByName('VALOR').AsCurrency;
    end;
  end;
end;

end.
