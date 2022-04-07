unit URelRolRR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelGenerico, RzShellDialogs, EMsgDlg, frxDesgn, RzButton,
  RzSplit, StdCtrls, RzBckgnd, ExtCtrls, RzPanel, Mask, CheckLst, Buttons,
  FMTBcd, DBClient, Provider, DB, SqlExpr, frxClass, frxDBSet, wwdblook,
  UExportaPDF;

type
  TFRelRolRR = class(TFRelGenerico)
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
    DBDADOS: TfrxDBDataset;
    DBEmpresa: TfrxDBDataset;
    Relatorio: TfrxReport;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    GSet: TGroupBox;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Label21: TLabel;
    Label22: TLabel;
    msk7: TMaskEdit;
    msk8: TMaskEdit;
    rdTipo: TRadioGroup;
    Relatorio1: TfrxReport;
    Relatorio2: TfrxReport;
    rdOrdem: TRadioGroup;
    cbLayouts: TwwDBLookupCombo;
    btnExpotar: TRzBitBtn;
    sqlCOD_EMP_RRR: TIntegerField;
    sqlCOD_RRR: TStringField;
    sqlMATRIC_RRR: TStringField;
    sqlDTCAD_RRR: TDateField;
    sqlCOD_STR_RRR: TStringField;
    sqlCOD_CLASS_RRR: TIntegerField;
    sqlCOD_COB_RRR: TIntegerField;
    sqlCOD_CNT_RRR: TStringField;
    sqlDEBAU_RRR: TStringField;
    sqlCOD_BCO_RRR: TIntegerField;
    sqlCOD_BANCO_RRR: TStringField;
    sqlCOD_AGEN_RRR: TStringField;
    sqlCOD_CONTA_RRR: TStringField;
    sqlDTDEBAU_INC_RRR: TDateField;
    sqlDTDEBAU_IXC_RRR: TDateField;
    sqlPROPRIEDADE_RRR: TStringField;
    sqlFONEP_RRR: TStringField;
    sqlRESPONSA_RRR: TStringField;
    sqlINSCRP_RRR: TStringField;
    sqlINCRA_RRR: TStringField;
    sqlAREAH_RRR: TFloatField;
    sqlAREAE_RRR: TFloatField;
    sqlAREAM_RRR: TFloatField;
    sqlDISTANCIA_RRR: TFloatField;
    sqlPONTOS_RRR: TFloatField;
    sqlVVENAL_RRR: TFloatField;
    sqlCOD_LOG_RRR: TIntegerField;
    sqlLOGRA_RRR: TStringField;
    sqlCOMPL_RRR: TStringField;
    sqlOBSLOGRA_RRR: TMemoField;
    sqlCOD_TIPE_RRR: TIntegerField;
    sqlTIPOLOGE_RRR: TStringField;
    sqlCOD_TITE_RRR: TIntegerField;
    sqlTITULOLOGE_RRR: TStringField;
    sqlCOD_LOGE_RRR: TIntegerField;
    sqlLOGRAE_RRR: TStringField;
    sqlCOD_BAIE_RRR: TIntegerField;
    sqlBAIRROE_RRR: TStringField;
    sqlNUMEROE_RRR: TStringField;
    sqlCEPE_RRR: TStringField;
    sqlCOMPLEE_RRR: TStringField;
    sqlCOD_CIDE_RRR: TStringField;
    sqlUFE_RRR: TStringField;
    sqlHISTO_RRR: TMemoField;
    sqlMUNCARTORIO_RRR: TStringField;
    sqlUFCARTORIO_RRR: TStringField;
    sqlDTAREG_RRR: TDateField;
    sqlOFICIO_RR: TStringField;
    sqlMATRICULA_RRR: TStringField;
    sqlREGISTRO_RRR: TStringField;
    sqlLIVRO_RRR: TStringField;
    sqlAREATOTREG_RRR: TFloatField;
    sqlCOD_FOBTENCAO_RRR: TStringField;
    sqlCOD_ORIGLITIGIO_RRR: TStringField;
    sqlCOD_DESTIMOV_RRR: TStringField;
    sqlCOD_TPZONAESP_RRR: TStringField;
    sqlAREASEMUSO_RRR: TFloatField;
    sqlPESSOAS_RRR: TIntegerField;
    sqlFAMILIAS_RRR: TIntegerField;
    sqlASSALARIADOSCCART_RRR: TIntegerField;
    sqlASSALARIADOSSCART_RRR: TIntegerField;
    sqlMOBRAFAMILIAR_RRR: TIntegerField;
    sqlVTOTIMOVEL_RRR: TFloatField;
    sqlVTOTBENF_RRR: TFloatField;
    sqlVTOTCULTURAS_RR: TFloatField;
    sqlVTOTTERRANUA_RRR: TFloatField;
    sqlCOD_FOBPOSSEJT_RRR: TStringField;
    sqlDTPOSSEJT_RRR: TDateField;
    sqlAREAPOSSEJT_RRR: TFloatField;
    sqlCOD_FOBPOSSESO_RRR: TStringField;
    sqlDTPOSSESO_RRR: TDateField;
    sqlAREAPOSSESO_RRR: TFloatField;
    sqlDTA_INC_RRR: TSQLTimeStampField;
    sqlLOGIN_INC_RRR: TStringField;
    sqlDTA_ALT_RRR: TSQLTimeStampField;
    sqlLOGIN_ALT_RRR: TStringField;
    sqlCCIR_RRR: TStringField;
    sqlNIRF_RRR: TStringField;
    sqlFOLHA_RRR: TStringField;
    sqlCOD_ZNA_RRR: TIntegerField;
    sqlINDICE_IMG_RRR: TIntegerField;
    sqlINDICE_DOC_RRR: TIntegerField;
    sqlCOD_IMP_ARQ: TIntegerField;
    sqlCADDEBITOAUTOMATICAO_RRR: TStringField;
    sqlDESCR_RCL: TStringField;
    sqlNOME_BCO: TStringField;
    sqlDESCRI_COB: TStringField;
    sqlNOME_CNT: TStringField;
    sqlRG_CNT: TStringField;
    sqlCNPJ_CNT: TStringField;
    sqlFONE_CNT: TStringField;
    sqlEMAIL_CNT: TStringField;
    sqlLOGRAPRO: TStringField;
    sqlTPLOGRENT: TStringField;
    sqlTTLOGRENT: TStringField;
    sqlLOGRAENT: TStringField;
    sqlBIRROENT: TStringField;
    sqlCIDENT: TStringField;
    cdsCOD_EMP_RRR: TIntegerField;
    cdsCOD_RRR: TStringField;
    cdsMATRIC_RRR: TStringField;
    cdsDTCAD_RRR: TDateField;
    cdsCOD_STR_RRR: TStringField;
    cdsCOD_CLASS_RRR: TIntegerField;
    cdsCOD_COB_RRR: TIntegerField;
    cdsCOD_CNT_RRR: TStringField;
    cdsDEBAU_RRR: TStringField;
    cdsCOD_BCO_RRR: TIntegerField;
    cdsCOD_BANCO_RRR: TStringField;
    cdsCOD_AGEN_RRR: TStringField;
    cdsCOD_CONTA_RRR: TStringField;
    cdsDTDEBAU_INC_RRR: TDateField;
    cdsDTDEBAU_IXC_RRR: TDateField;
    cdsPROPRIEDADE_RRR: TStringField;
    cdsFONEP_RRR: TStringField;
    cdsRESPONSA_RRR: TStringField;
    cdsINSCRP_RRR: TStringField;
    cdsINCRA_RRR: TStringField;
    cdsAREAH_RRR: TFloatField;
    cdsAREAE_RRR: TFloatField;
    cdsAREAM_RRR: TFloatField;
    cdsDISTANCIA_RRR: TFloatField;
    cdsPONTOS_RRR: TFloatField;
    cdsVVENAL_RRR: TFloatField;
    cdsCOD_LOG_RRR: TIntegerField;
    cdsLOGRA_RRR: TStringField;
    cdsCOMPL_RRR: TStringField;
    cdsOBSLOGRA_RRR: TMemoField;
    cdsCOD_TIPE_RRR: TIntegerField;
    cdsTIPOLOGE_RRR: TStringField;
    cdsCOD_TITE_RRR: TIntegerField;
    cdsTITULOLOGE_RRR: TStringField;
    cdsCOD_LOGE_RRR: TIntegerField;
    cdsLOGRAE_RRR: TStringField;
    cdsCOD_BAIE_RRR: TIntegerField;
    cdsBAIRROE_RRR: TStringField;
    cdsNUMEROE_RRR: TStringField;
    cdsCEPE_RRR: TStringField;
    cdsCOMPLEE_RRR: TStringField;
    cdsCOD_CIDE_RRR: TStringField;
    cdsUFE_RRR: TStringField;
    cdsHISTO_RRR: TMemoField;
    cdsMUNCARTORIO_RRR: TStringField;
    cdsUFCARTORIO_RRR: TStringField;
    cdsDTAREG_RRR: TDateField;
    cdsOFICIO_RR: TStringField;
    cdsMATRICULA_RRR: TStringField;
    cdsREGISTRO_RRR: TStringField;
    cdsLIVRO_RRR: TStringField;
    cdsAREATOTREG_RRR: TFloatField;
    cdsCOD_FOBTENCAO_RRR: TStringField;
    cdsCOD_ORIGLITIGIO_RRR: TStringField;
    cdsCOD_DESTIMOV_RRR: TStringField;
    cdsCOD_TPZONAESP_RRR: TStringField;
    cdsAREASEMUSO_RRR: TFloatField;
    cdsPESSOAS_RRR: TIntegerField;
    cdsFAMILIAS_RRR: TIntegerField;
    cdsASSALARIADOSCCART_RRR: TIntegerField;
    cdsASSALARIADOSSCART_RRR: TIntegerField;
    cdsMOBRAFAMILIAR_RRR: TIntegerField;
    cdsVTOTIMOVEL_RRR: TFloatField;
    cdsVTOTBENF_RRR: TFloatField;
    cdsVTOTCULTURAS_RR: TFloatField;
    cdsVTOTTERRANUA_RRR: TFloatField;
    cdsCOD_FOBPOSSEJT_RRR: TStringField;
    cdsDTPOSSEJT_RRR: TDateField;
    cdsAREAPOSSEJT_RRR: TFloatField;
    cdsCOD_FOBPOSSESO_RRR: TStringField;
    cdsDTPOSSESO_RRR: TDateField;
    cdsAREAPOSSESO_RRR: TFloatField;
    cdsDTA_INC_RRR: TSQLTimeStampField;
    cdsLOGIN_INC_RRR: TStringField;
    cdsDTA_ALT_RRR: TSQLTimeStampField;
    cdsLOGIN_ALT_RRR: TStringField;
    cdsCCIR_RRR: TStringField;
    cdsNIRF_RRR: TStringField;
    cdsFOLHA_RRR: TStringField;
    cdsCOD_ZNA_RRR: TIntegerField;
    cdsINDICE_IMG_RRR: TIntegerField;
    cdsINDICE_DOC_RRR: TIntegerField;
    cdsCOD_IMP_ARQ: TIntegerField;
    cdsCADDEBITOAUTOMATICAO_RRR: TStringField;
    cdsDESCR_RCL: TStringField;
    cdsNOME_BCO: TStringField;
    cdsDESCRI_COB: TStringField;
    cdsNOME_CNT: TStringField;
    cdsRG_CNT: TStringField;
    cdsCNPJ_CNT: TStringField;
    cdsFONE_CNT: TStringField;
    cdsEMAIL_CNT: TStringField;
    cdsLOGRAPRO: TStringField;
    cdsTPLOGRENT: TStringField;
    cdsTTLOGRENT: TStringField;
    cdsLOGRAENT: TStringField;
    cdsBIRROENT: TStringField;
    cdsCIDENT: TStringField;
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
    procedure msk7Exit(Sender: TObject);
    procedure msk8Exit(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnLayoutClick(Sender: TObject);
    procedure RzSizePanel1HotSpotClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Relatorio1BeforePrint(Sender: TfrxReportComponent);
    procedure Relatorio2BeforePrint(Sender: TfrxReportComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdTipoClick(Sender: TObject);
    procedure btnExpotarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    ExportaPDF, PetEletronico                                : Boolean;
    caminhoPDFPet, nomePDFPet, nomePDFPetSaida, IDCertificado: string;
  end;

var
  FRelRolRR                           : TFRelRolRR;
  Avancada, Original, LoadFile, SAntes: Boolean;
  StreamOriginal, StreamAntes         : TMemoryStream;
  Consulta, ConsultaG, Btn, cabecalho : string;
  expPDF                              : exporta;

implementation

uses UDM, UPrin, Funcoes, funcoesTela, TrataErros, aguarde, URelatorios, UClasse_PesqRur,
  UClasse_PesqPrin, UXmlServicosPet;

{$R *.dfm}


procedure TFRelRolRR.msk1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then
    SelectNext(twincontrol(sender), true, true);
  if (key = 38) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFRelRolRR.msk1Exit(Sender: TObject);
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

procedure TFRelRolRR.btnCadINIClick(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  inherited;
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then begin
    msk1.Text := Pesq.CADASTRO;
    msk1.setfocus;
    if trim(msk2.Text) = '' then
      msk2.Text := msk1.Text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelRolRR.msk2Exit(Sender: TObject);
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

procedure TFRelRolRR.btnCadFIMClick(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  inherited;
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then begin
    msk2.Text := Pesq.CADASTRO;
    msk2.SetFocus;
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelRolRR.msk1Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelRolRR.msk3Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('CNT', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelRolRR.msk3Exit(Sender: TObject);
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

procedure TFRelRolRR.msk4Exit(Sender: TObject);
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

procedure TFRelRolRR.SpeedButton3Click(Sender: TObject);
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

procedure TFRelRolRR.SpeedButton4Click(Sender: TObject);
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

procedure TFRelRolRR.msk5Exit(Sender: TObject);
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

procedure TFRelRolRR.msk6Exit(Sender: TObject);
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

procedure TFRelRolRR.SpeedButton1Click(Sender: TObject);
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

procedure TFRelRolRR.SpeedButton2Click(Sender: TObject);
var
  Pesq: TPesq_Classificacao_RR;
begin
  inherited;

  Pesq := TPesq_Classificacao_RR.Create;
  if Pesq.BotaoClassificacaoRR then
    msk6.text := vartostr(Pesq.Codigo);
  FreeAndNil(Pesq);
end;

procedure TFRelRolRR.msk7Exit(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  inherited;

  if trim(TMaskEdit(Sender).text) <> '' then begin
    TMaskEdit(Sender).text := Lpad(TMaskEdit(Sender).text, '0', 4);

    Pesq := TPesq_SetorRural.Create;
    Pesq.PesquisaSetor(trim(TMaskEdit(Sender).text), SIA_Exercicio);
    TMaskEdit(Sender).text := vartostr(Pesq.Setor);
    if trim(msk8.Text) = '' then
      msk8.Text := TMaskEdit(Sender).text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolRR.msk8Exit(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  inherited;

  if trim(TMaskEdit(Sender).text) <> '' then begin
    TMaskEdit(Sender).text := Lpad(TMaskEdit(Sender).text, '0', 4);

    Pesq := TPesq_SetorRural.Create;
    Pesq.PesquisaSetor(trim(TMaskEdit(Sender).text), SIA_Exercicio);
    TMaskEdit(Sender).text := vartostr(Pesq.Setor);
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelRolRR.rdTipoClick(Sender: TObject);
begin
  inherited;
  SIA_Aplicacao := 'FRelRolRR' + IntToStr(rdTipo.ItemIndex);
  cblayouts.clear;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelRolRR.SpeedButton13Click(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  inherited;

  Pesq := TPesq_SetorRural.Create;
  if Pesq.BotaoSetor then begin
    msk7.text := vartostr(Pesq.Setor);
    if trim(msk8.Text) = '' then
      msk8.Text := msk7.text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelRolRR.SpeedButton14Click(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  inherited;

  Pesq := TPesq_SetorRural.Create;
  if Pesq.BotaoSetor then
    msk8.text := vartostr(Pesq.Setor);
  FreeAndNil(Pesq);
end;

procedure TFRelRolRR.FormShow(Sender: TObject);
begin
  inherited;
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

  FRelRolRR.Height := 290;
  RzSizePanel1.CloseHotSpot;

  SIA_Aplicacao  := 'FRelRolRR' + IntToStr(rdTipo.ItemIndex);
  StreamAntes    := TMemoryStream.Create;
  StreamOriginal := TMemoryStream.Create;
  LoadFile       := False;
  Original       := False;
  SAntes         := False;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelRolRR.BtnLayoutClick(Sender: TObject);
var
  rel: TfrxReport;
begin
  inherited;
  SIA_Aplicacao := 'FRelRolRR' + IntToStr(rdTipo.ItemIndex);

  if rdTipo.ItemIndex = 0 then
    rel := Relatorio
  else if rdTipo.ItemIndex = 1 then
    rel := Relatorio1
  else if rdTipo.ItemIndex = 2 then
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

procedure TFRelRolRR.RzSizePanel1HotSpotClick(Sender: TObject);
begin
  inherited;
  if FRelRolRR.Height = 290 then begin
    FRelRolRR.Height := 404;
    FRelRolRR.top    := FRelRolRR.top - 57;
  end
  else begin
    FRelRolRR.Height := 290;
    FRelRolRR.top    := FRelRolRR.top + 57;
  end;
end;

procedure TFRelRolRR.BtnConfirmaClick(Sender: TObject);
var
  filtro, ordem, rec, caminho, assina, nomePDFEnt, nomePDFSai: string;
  i                                                          : integer;
  rel                                                        : TfrxReport;
  Stream                                                     : TMemoryStream;
  qExporta                                                   : TSQLQuery;
  servicoPet                                                 : TXmlServicosPet;
begin
  inherited;
  ordem  := '';
  filtro := '';

  if rdOrdem.ItemIndex = 0 then
    ordem := ' ORDER BY COD_RRR '
  else if rdOrdem.ItemIndex = 1 then
    ordem := ' ORDER BY LOGRA_RRR '
  else if rdOrdem.ItemIndex = 2 then
    ordem := ' ORDER BY NOME_CNT,COD_RRR ';

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

  if (trim(msk7.Text) <> '') and (trim(msk8.Text) <> '') then begin
    filtro    := filtro + ' AND RR_CAD_RURAL.COD_STR_RRR BETWEEN ' + '''' + trim(msk7.Text) + '''' + ' AND ' + '''' + trim(msk8.Text) + '''';
    cabecalho := cabecalho + ' Setor: ' + msk7.Text + ' ao ' + msk8.Text;
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

  if not PetEletronico then
    Application.CreateForm(Tfrmaguarde, frmaguarde);

  if Assigned(frmaguarde) then begin
    frmaguarde.PB.Visible    := False;
    frmaguarde.Caption       := 'Aguarde......';
    frmaguarde.LMens.Caption := 'Gerando Relatório.';
    frmaguarde.Show;
    Application.ProcessMessages;
  end;

  cds.close;
  sql.CommandText := Consulta + filtro + ordem;
  cds.open;

  SIA_Aplicacao := 'FRelRolRR' + IntToStr(rdTipo.ItemIndex);

  if rdTipo.ItemIndex = 0 then
    rel := Relatorio
  else if rdTipo.ItemIndex = 1 then
    rel := Relatorio1
  else if rdTipo.ItemIndex = 2 then
    rel := Relatorio2;

  if not LoadFile then
    if CarregaLayoutStream(strtoint(Sia_Empresa), SIA_Aplicacao) then begin
      Stream := TMemoryStream.Create;
      TBlobField(dm.cdsLayoutRel.FieldByName('LAYOUT_RLT')).SaveToStream(Stream);
      Stream.Position := 0;
      Rel.LoadFromStream(Stream);
      FreeAndNil(Stream);
    end;

  if cbLayouts.Visible then
    if trim(cbLayouts.Text) <> '' then begin
      if not SAntes then begin
        Rel.SaveToStream(StreamAntes);
        StreamAntes.Position := 0;
        SAntes               := True;
      end;

      Stream := TMemoryStream.Create;
      TBlobField(dm.cdsLayoutAPL.FieldByName('LAYOUT_RLT')).SaveToStream(Stream);
      Stream.Position := 0;
      Rel.LoadFromStream(Stream);
      FreeAndNil(Stream);
      cbLayouts.Text := '';
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

  if Assigned(frmaguarde) and (not PetEletronico) then
    frmaguarde.Free;

  if ExportaPDF then begin
    servicoPet := TXmlServicosPet.Create;

    if Trim(caminhoPDFPet) = '' then begin
      caminho := ExtractFilePath(Application.ExeName) + 'Relatorios\Rural\';

      if dm.msg.MessageDlg(' Deseja assinar os PDF exportado com o certificado Digital ?', mtConfirmation, [mbyes, mbno], 0) = mrno then
        assina := 'N'
      else begin
        if not expPDF.GetCertificado then begin
          dm.msg.MessageDlg('Não foi possível conectar ao certificado digital.' + #13 +
            'Verifique se o mesmo está instalado e/ou conectado corretamente e tente novamente.', mtInformation, [mbok], 0);
          Exit;
        end
        else
          IDCertificado := expPDF.FIDCERT;

        assina := 'S';
      end;
    end
    else begin
      assina  := 'S';
      caminho := caminhoPDFPet;
    end;

    qExporta               := TSQLQuery.Create(Application.Owner);
    qExporta.SQLConnection := dm.Conexao;
    qExporta.sql.Text      := Consulta + filtro + ordem;
    qExporta.Open;

    qExporta.First;
    while not qExporta.Eof do begin
      cds.Close;
      cds.Filtered := False;
      cds.Filter   := ' COD_EMP_RRR = ' + qExporta.FieldByName('COD_EMP_RRR').AsString +
        ' AND COD_RRR = ' + QuotedStr(qExporta.FieldByName('COD_RRR').AsString);
      cds.Filtered := True;
      cds.Open;

      if Trim(caminhoPDFPet) = '' then begin
        caminho := caminho + cds.FieldByName('NOME_CNT').AsString;
        if not DirectoryExists(caminho) then
          ForceDirectories(caminho);

        nomePDFEnt := '\FichaCad' + cds.FieldByName('COD_RRR').AsString + '.pdf';
        nomePDFSai := '\FichaCadASS' + cds.FieldByName('COD_RRR').AsString + '.pdf';
      end
      else begin
        nomePDFEnt := nomePDFPet;
        nomePDFSai := nomePDFPetSaida;
      end;

      if FileExists(caminho + nomePDFSai) then
        servicoPet.deletaArq(caminho, nomePDFSai);

      rel.PrepareReport;
      if not expPDF.ExportandoPDF(rel, caminho, nomePDFEnt, nomePDFSai, assina, IDCertificado) then
        Exit;

      qExporta.Next;
      caminho    := '';
      caminho    := ExtractFilePath(Application.ExeName) + 'Relatorios\Rural\';
      nomePDFEnt := '';
      nomePDFSai := '';
    end;

    if Trim(caminhoPDFPet) = '' then
      dm.msg.MessageDlg('Exportação concluida!', mtInformation, [mbok], 0);

    FreeAndNil(servicoPet);
  end
  else begin
    if trim(ImpPadrao) <> '' then
      rel.PrintOptions.Printer := ImpPadrao
    else begin
      try
        if VerImpPadrao <> '' then
          rel.PrintOptions.Printer := VerImpPadrao;
      except
        dm.msg.messagedlg('Impressora Padrão não Definida.' + #13 + 'Instale uma Impressora e Defina como Padrão.', mtInformation, [mbok], 0);
      end;
    end;

    if not VerImpressao then
      rel.ShowReport(true)
    else begin
      rel.PrepareReport;
      rel.Print;
    end;
  end;

  if SAntes then begin
    StreamAntes.Position := 0;
    rel.LoadFromStream(StreamAntes);
  end;
end;

procedure TFRelRolRR.btnExpotarClick(Sender: TObject);
begin
  inherited;

  ExportaPDF := True;
  BtnConfirma.Click;
  ExportaPDF := False;
end;

procedure TFRelRolRR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  inherited;
end;

procedure TFRelRolRR.FormCreate(Sender: TObject);
begin
  inherited;
  Consulta := 'SELECT RR_CAD_RURAL.*, ' +
    'RR_CLASSIFICA.DESCR_RCL, ' +
    'GR_BANCO.NOME_BCO, ' +
    'RR_COBRANCA.DESCRI_COB, ' +
    'GR_CONTRIBUINTES.NOME_CNT, ' +
    'GR_CONTRIBUINTES.RG_CNT, ' +
    'GR_CONTRIBUINTES.CNPJ_CNT, ' +
    'GR_CONTRIBUINTES.FONE_CNT, ' +
    'GR_CONTRIBUINTES.EMAIL_CNT, ' +
    'LOGRA.NOME_LOG LOGRAPRO, ' +
    'TIPENT.NOM_TIP_CEP TPLOGRENT, ' +
    'TITENT.DESCR_TIT TTLOGRENT, ' +
    'LOGRAE.NOME_LOG LOGRAENT, ' +
    'BAIE.NOME_BAI BIRROENT, ' +
    'CIDE.NOME_CID CIDENT ' +
    ' FROM RR_CAD_RURAL ' +
    ' LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR AND EXERCICIO_RCL=' + Sia_Exercicio +
    ' LEFT JOIN GR_BANCO ON COD_EMP_BCO = COD_EMP_RRR AND COD_BCO = COD_BCO_RRR ' +
    ' LEFT JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR ' +
    ' LEFT JOIN GR_CONTRIBUINTES ON COD_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_CNT_RRR ' +
    ' LEFT JOIN GR_LOGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP_RRR AND LOGRA.COD_LOG = COD_LOG_RRR ' +
    ' LEFT JOIN CEP_TIPOLOGIA TIPENT ON TIPENT.COD_TIP_CEP = COD_TIPE_RRR ' +
    ' LEFT JOIN CEP_TITULACAO TITENT ON TITENT.COD_TIT = COD_TITE_RRR ' +
    ' LEFT JOIN GR_LOGRA LOGRAE ON LOGRAE.COD_EMP_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = COD_LOGE_RRR ' +
    ' LEFT JOIN GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_EMP_RRR AND BAIE.COD_BAI = COD_BAIE_RRR ' +
    ' LEFT JOIN GR_CIDADE CIDE ON CIDE.COD_CID = COD_CIDE_RRR ' +
    ' WHERE RR_CAD_RURAL.COD_EMP_RRR = ' + SIA_Empresa;

  ExportaPDF    := False;
  PetEletronico := False;
  expPDF        := exporta.Create;
end;

procedure TFRelRolRR.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeAndNil(expPDF);
  FRelRolRR := nil;
end;

procedure TFRelRolRR.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Rol Cadastral Completo ' + cabecalho;
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;

end;

procedure TFRelRolRR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    BtnSair.Click;
end;

procedure TFRelRolRR.Relatorio1BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Rol Cadastral Simplificado 1 ' + cabecalho;
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;
end;

procedure TFRelRolRR.Relatorio2BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender.Name = 'lbRelatorio' then
    (Sender as TfrxMemoView).Text := 'Rol Cadastral Simplificado 2 ' + cabecalho;
  if Sender.Name = 'lbUsuario' then
    (Sender as TfrxMemoView).Text := Sia_Usuario;
end;

end.
