unit URelGuiasRR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelGenerico, RzShellDialogs, EMsgDlg, frxDesgn, RzButton,
  RzSplit, StdCtrls, RzBckgnd, ExtCtrls, RzPanel, Mask, Buttons, DBCtrls,
  ECkBox, CheckLst, FMTBcd, SqlExpr, Provider, DB, DBClient, frxClass,
  frxDBSet, wwdblook, RzCmboBx;

type
  TFRelGuiasRR = class(TFRelGenerico)
    GroupBox6: TGroupBox;
    ckAtualiza: TEvCheckBox;
    mkAtualizacao: TMaskEdit;
    cCapa: TEvCheckBox;
    cRecibo: TEvCheckBox;
    cParcelas: TEvCheckBox;
    cDemons: TEvCheckBox;
    RDSITUACAO: TRadioGroup;
    cdsCob: TClientDataSet;
    dspCob: TDataSetProvider;
    sqlCob: TSQLDataSet;
    DBUnica: TfrxDBDataset;
    dsUnica: TDataSource;
    cdsUnica: TClientDataSet;
    cdsUnicaCOD_EMP_PAR: TIntegerField;
    cdsUnicaCOD_DIV_PAR: TIntegerField;
    cdsUnicaTOTALLANCADO: TFloatField;
    cdsUnicaNRPARCELA: TIntegerField;
    cdsUnicaVALORPRIMEIRA: TFloatField;
    cdsUnicaVALORUNICA: TFloatField;
    cdsUnicaDESCONTOUNICA: TFloatField;
    dspUnica: TDataSetProvider;
    sqlUnica: TSQLDataSet;
    sqlUnicaCOD_EMP_PAR: TIntegerField;
    sqlUnicaCOD_DIV_PAR: TIntegerField;
    sqlUnicaTOTALLANCADO: TFloatField;
    sqlUnicaNRPARCELA: TIntegerField;
    sqlUnicaVALORPRIMEIRA: TFloatField;
    sqlUnicaVALORUNICA: TFloatField;
    sqlUnicaDESCONTOUNICA: TFloatField;
    dbSorteio: TfrxDBDataset;
    dsSorteio: TDataSource;
    cdsSorteio: TClientDataSet;
    cdsSorteioNRO_PREMIO_PRE: TFloatField;
    cdsSorteioCOD_EMP_PRE: TIntegerField;
    cdsSorteioANO_PRE: TIntegerField;
    cdsSorteioCOD_CAD_PRE: TStringField;
    cdsSorteioCOD_MOD_PRE: TIntegerField;
    dspSorteio: TDataSetProvider;
    sqlSorteio: TSQLDataSet;
    sqlSorteioNRO_PREMIO_PRE: TFloatField;
    sqlSorteioCOD_EMP_PRE: TIntegerField;
    sqlSorteioANO_PRE: TIntegerField;
    sqlSorteioCOD_CAD_PRE: TStringField;
    sqlSorteioCOD_MOD_PRE: TIntegerField;
    sqlVenc: TSQLDataSet;
    sqlVencCOD_EMP_VEN: TIntegerField;
    sqlVencCOD_STR_VEN: TStringField;
    sqlVencANO_STR_VEN: TIntegerField;
    sqlVencNRPARCE_VEN: TIntegerField;
    sqlVencVENCI_VEN: TDateField;
    sqlVencUNICA_VEN: TStringField;
    sqlVencMENS1_VEN: TMemoField;
    dspVenc: TDataSetProvider;
    cdsvenc: TClientDataSet;
    cdsvencCOD_EMP_VEN: TIntegerField;
    cdsvencCOD_STR_VEN: TStringField;
    cdsvencANO_STR_VEN: TIntegerField;
    cdsvencNRPARCE_VEN: TIntegerField;
    cdsvencVENCI_VEN: TDateField;
    cdsvencUNICA_VEN: TStringField;
    cdsvencMENS1_VEN: TMemoField;
    dsvenc: TDataSource;
    dbVenc: TfrxDBDataset;
    dbResRec: TfrxDBDataset;
    dsResRec: TDataSource;
    cdsResRec: TClientDataSet;
    cdsResRecVALOR: TFloatField;
    cdsResRecLCORRECAO: TFloatField;
    cdsResRecLMULTA: TFloatField;
    cdsResRecLJUROS: TFloatField;
    cdsResRecLDESCOR: TFloatField;
    cdsResRecLDESCOC: TFloatField;
    cdsResRecLDESCOM: TFloatField;
    cdsResRecLDESCOJ: TFloatField;
    cdsResRecLACRES: TFloatField;
    cdsResRecLISENTO: TFloatField;
    cdsResRecCOD_EMP_FRC: TIntegerField;
    cdsResRecCOD_DIV_FRC: TIntegerField;
    cdsResRecCOD_REC_FRC: TIntegerField;
    cdsResRecANO_FRC: TStringField;
    cdsResRecCODORIGEM_FRC: TIntegerField;
    cdsResRecdesco: TCurrencyField;
    cdsResRectotal: TCurrencyField;
    dspResRec: TDataSetProvider;
    sqlResRec: TSQLDataSet;
    sqlResRecVALOR: TFloatField;
    sqlResRecLCORRECAO: TFloatField;
    sqlResRecLMULTA: TFloatField;
    sqlResRecLJUROS: TFloatField;
    sqlResRecLDESCOR: TFloatField;
    sqlResRecLDESCOC: TFloatField;
    sqlResRecLDESCOM: TFloatField;
    sqlResRecLDESCOJ: TFloatField;
    sqlResRecLACRES: TFloatField;
    sqlResRecLISENTO: TFloatField;
    sqlResRecCOD_EMP_FRC: TIntegerField;
    sqlResRecCOD_DIV_FRC: TIntegerField;
    sqlResRecCOD_REC_FRC: TIntegerField;
    sqlResRecANO_FRC: TStringField;
    sqlResRecCODORIGEM_FRC: TIntegerField;
    sqlResumo: TSQLDataSet;
    dspResumo: TDataSetProvider;
    cdsResumo: TClientDataSet;
    dsResumo: TDataSource;
    dbResumo: TfrxDBDataset;
    dbCadastro: TfrxDBDataset;
    dsCadastro: TDataSource;
    cdsCadastro: TClientDataSet;
    cdsCadastroCOD_EMP_DIV: TIntegerField;
    cdsCadastroCOD_DIV: TIntegerField;
    cdsCadastroCOD_MOD_DIV: TIntegerField;
    cdsCadastroCOD_REP_DIV: TIntegerField;
    cdsCadastroANO_DIV: TStringField;
    cdsCadastroANOREF_DIV: TStringField;
    cdsCadastroDATACADAST_DIV: TDateField;
    cdsCadastroORIGEM_DIV: TStringField;
    cdsCadastroCOD_CNT_DIV: TStringField;
    cdsCadastroCODC_CNT_DIV: TStringField;
    cdsCadastroMATRICULA_DIV: TStringField;
    cdsCadastroCOD_CAD_DIV: TStringField;
    cdsCadastroVRPREDIAL_DIV: TFloatField;
    cdsCadastroVREXCEDENTE_DIV: TFloatField;
    cdsCadastroVRTERRIT_DIV: TFloatField;
    cdsCadastroAREAEDI_DIV: TFloatField;
    cdsCadastroAREATER_DIV: TFloatField;
    cdsCadastroAREAEXCE_DIV: TFloatField;
    cdsCadastroTESTADA_DIV: TFloatField;
    cdsCadastroSECAO_DIV: TStringField;
    cdsCadastroSETOR_DIV: TStringField;
    cdsCadastroQUADRA_DIV: TStringField;
    cdsCadastroLOTE_DIV: TStringField;
    cdsCadastroUNIDADE_DIV: TStringField;
    cdsCadastroCOD_BAI_DIV: TIntegerField;
    cdsCadastroCOD_LOG_DIV: TIntegerField;
    cdsCadastroNUMERO_DIV: TStringField;
    cdsCadastroCOMPLE_DIV: TStringField;
    cdsCadastroCEPI_DIV: TStringField;
    cdsCadastroFORA_DIV: TStringField;
    cdsCadastroCOD_BAIE_DIV: TIntegerField;
    cdsCadastroBAIRRO_DIV: TStringField;
    cdsCadastroCOD_LOGE_DIV: TIntegerField;
    cdsCadastroLOGRA_DIV: TStringField;
    cdsCadastroNUMEROE_DIV: TStringField;
    cdsCadastroCEPE_DIV: TStringField;
    cdsCadastroCOMPLEE_DIV: TStringField;
    cdsCadastroCOD_CID_DIV: TStringField;
    cdsCadastroDEBAU_DIV: TStringField;
    cdsCadastroCOD_BCO_DIV: TIntegerField;
    cdsCadastroCOD_AGEN_DIV: TStringField;
    cdsCadastroCOD_CONTA_DIV: TStringField;
    cdsCadastroHISTO_DIV: TMemoField;
    cdsCadastroFACE_DIV: TStringField;
    cdsCadastroDTDEBAU_INC_DIV: TDateField;
    cdsCadastroDTDEBAU_IXC_DIV: TDateField;
    cdsCadastroLOGIN_INC_DIV: TStringField;
    cdsCadastroDTA_INC_DIV: TSQLTimeStampField;
    cdsCadastroLOGIN_ALT_DIV: TStringField;
    cdsCadastroDTA_ALT_DIV: TSQLTimeStampField;
    cdsCadastroPNOMEPROPRI: TStringField;
    cdsCadastroPCNPJPROPI: TStringField;
    cdsCadastroPFONE: TStringField;
    cdsCadastroCNOMEPROPRI: TStringField;
    cdsCadastroCCNPJPROPI: TStringField;
    cdsCadastroCFONE: TStringField;
    cdsCadastroNOME_LOG: TStringField;
    cdsCadastroNOME_BAI: TStringField;
    cdsCadastroNOME_CID: TStringField;
    cdsCadastroUF_CID: TStringField;
    cdsCadastroNOMEF_DIV: TStringField;
    dspCadastro: TDataSetProvider;
    sqlCadastro: TSQLDataSet;
    n: TIntegerField;
    sqlCadastroCOD_DIV: TIntegerField;
    sqlCadastroCOD_MOD_DIV: TIntegerField;
    sqlCadastroCOD_REP_DIV: TIntegerField;
    sqlCadastroANO_DIV: TStringField;
    sqlCadastroANOREF_DIV: TStringField;
    sqlCadastroDATACADAST_DIV: TDateField;
    sqlCadastroORIGEM_DIV: TStringField;
    sqlCadastroCOD_CNT_DIV: TStringField;
    sqlCadastroCODC_CNT_DIV: TStringField;
    sqlCadastroMATRICULA_DIV: TStringField;
    sqlCadastroCOD_CAD_DIV: TStringField;
    sqlCadastroVRPREDIAL_DIV: TFloatField;
    sqlCadastroVREXCEDENTE_DIV: TFloatField;
    sqlCadastroVRTERRIT_DIV: TFloatField;
    sqlCadastroAREAEDI_DIV: TFloatField;
    sqlCadastroAREATER_DIV: TFloatField;
    sqlCadastroAREAEXCE_DIV: TFloatField;
    sqlCadastroTESTADA_DIV: TFloatField;
    sqlCadastroSECAO_DIV: TStringField;
    sqlCadastroSETOR_DIV: TStringField;
    sqlCadastroQUADRA_DIV: TStringField;
    sqlCadastroLOTE_DIV: TStringField;
    sqlCadastroUNIDADE_DIV: TStringField;
    sqlCadastroCOD_BAI_DIV: TIntegerField;
    sqlCadastroCOD_LOG_DIV: TIntegerField;
    sqlCadastroNUMERO_DIV: TStringField;
    sqlCadastroCOMPLE_DIV: TStringField;
    sqlCadastroCEPI_DIV: TStringField;
    sqlCadastroFORA_DIV: TStringField;
    sqlCadastroCOD_BAIE_DIV: TIntegerField;
    sqlCadastroBAIRRO_DIV: TStringField;
    sqlCadastroCOD_LOGE_DIV: TIntegerField;
    sqlCadastroLOGRA_DIV: TStringField;
    sqlCadastroNUMEROE_DIV: TStringField;
    sqlCadastroCEPE_DIV: TStringField;
    sqlCadastroCOMPLEE_DIV: TStringField;
    sqlCadastroCOD_CID_DIV: TStringField;
    sqlCadastroDEBAU_DIV: TStringField;
    sqlCadastroCOD_BCO_DIV: TIntegerField;
    sqlCadastroCOD_AGEN_DIV: TStringField;
    sqlCadastroCOD_CONTA_DIV: TStringField;
    sqlCadastroHISTO_DIV: TMemoField;
    sqlCadastroFACE_DIV: TStringField;
    sqlCadastroDTDEBAU_INC_DIV: TDateField;
    sqlCadastroDTDEBAU_IXC_DIV: TDateField;
    sqlCadastroNOMEF_DIV: TStringField;
    sqlCadastroLOGIN_INC_DIV: TStringField;
    sqlCadastroDTA_INC_DIV: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_DIV: TStringField;
    sqlCadastroDTA_ALT_DIV: TSQLTimeStampField;
    sqlCadastroPNOMEPROPRI: TStringField;
    sqlCadastroPCNPJPROPI: TStringField;
    sqlCadastroPFONE: TStringField;
    sqlCadastroCNOMEPROPRI: TStringField;
    sqlCadastroCCNPJPROPI: TStringField;
    sqlCadastroCFONE: TStringField;
    sqlCadastroNOME_LOG: TStringField;
    sqlCadastroNOME_BAI: TStringField;
    sqlCadastroNOME_CID: TStringField;
    sqlCadastroUF_CID: TStringField;
    sqlReceitas: TSQLDataSet;
    sqlReceitasVALOR: TFloatField;
    sqlReceitasLCORRECAO: TFloatField;
    sqlReceitasLMULTA: TFloatField;
    sqlReceitasLJUROS: TFloatField;
    sqlReceitasLDESCOR: TFloatField;
    sqlReceitasLDESCOC: TFloatField;
    sqlReceitasLDESCOM: TFloatField;
    sqlReceitasLDESCOJ: TFloatField;
    sqlReceitasLACRES: TFloatField;
    sqlReceitasLISENTO: TFloatField;
    sqlReceitasLDESCOPONTU: TFloatField;
    sqlReceitasCOD_EMP_FRC: TIntegerField;
    sqlReceitasCOD_DIV_FRC: TIntegerField;
    sqlReceitasPARCELA_PAR_FRC: TIntegerField;
    sqlReceitasTP_PAR_FRC: TIntegerField;
    sqlReceitasCOD_REC_FRC: TIntegerField;
    dspReceitas: TDataSetProvider;
    cdsReceitas: TClientDataSet;
    cdsReceitasVALOR: TFloatField;
    cdsReceitasLCORRECAO: TFloatField;
    cdsReceitasLMULTA: TFloatField;
    cdsReceitasLJUROS: TFloatField;
    cdsReceitasLDESCOR: TFloatField;
    cdsReceitasLDESCOC: TFloatField;
    cdsReceitasLDESCOM: TFloatField;
    cdsReceitasLDESCOJ: TFloatField;
    cdsReceitasLACRES: TFloatField;
    cdsReceitasLISENTO: TFloatField;
    cdsReceitasLDESCOPONTU: TFloatField;
    cdsReceitasCOD_REC_FRC: TIntegerField;
    cdsReceitasCOD_EMP_FRC: TIntegerField;
    cdsReceitasCOD_DIV_FRC: TIntegerField;
    cdsReceitasPARCELA_PAR_FRC: TIntegerField;
    cdsReceitasTP_PAR_FRC: TIntegerField;
    cdsReceitasdesco: TCurrencyField;
    dsReceitas: TDataSource;
    dbReceitas: TfrxDBDataset;
    DBDados: TfrxDBDataset;
    ds: TDataSource;
    cds: TClientDataSet;
    cdsVrParcela: TCurrencyField;
    cdsCorrecao: TCurrencyField;
    cdsMulta: TCurrencyField;
    cdsJuros: TCurrencyField;
    cdsTotal: TCurrencyField;
    cdsBarra: TStringField;
    cdsparte1: TStringField;
    cdsparte2: TStringField;
    cdsparte3: TStringField;
    cdsparte4: TStringField;
    cdslocal: TStringField;
    cdscedente: TStringField;
    cdsnnumero: TStringField;
    cdscdbanco: TStringField;
    cdsdigitavel: TStringField;
    cdsnomebanco: TStringField;
    cdsvalorliquido: TFloatField;
    cdsvalorBruto: TCurrencyField;
    cdsValordesconto: TCurrencyField;
    cdsmenssagemDivida: TStringField;
    dsp: TDataSetProvider;
    sql: TSQLDataSet;
    DBEmpresa: TfrxDBDataset;
    dbConvenios: TfrxDBDataset;
    relatorio2: TfrxReport;
    Relatorio: TfrxReport;
    cdsPARCELA_PAR: TIntegerField;
    cdsTP_PAR: TIntegerField;
    cdsCOD_DIV_PAR: TIntegerField;
    cdsSITUACAO_PAR: TIntegerField;
    cdsDTCORRECAO_PAR: TDateField;
    cdsCOTACAO_PAR: TFloatField;
    cdsDATAVENCI: TDateField;
    cdsANO_DIV: TStringField;
    cdsCOD_REP_DIV: TIntegerField;
    cdsCOD_EMP_PAR: TIntegerField;
    cdsDESCRICAO_REP: TStringField;
    cdsCOD_MOD_DIV: TIntegerField;
    cdsCOD_CNT_DIV: TStringField;
    cdsCOD_IND_PAR: TIntegerField;
    cdsMOEDA_PAR: TStringField;
    cdsNNUMERO_PAR: TFloatField;
    cdsUNICA_PAR: TStringField;
    cdsCOD_STR_RRR: TStringField;
    cdsANO_STR: TIntegerField;
    cdsCOD_CAD_DIV: TStringField;
    cdsPROPRIEDADE_RRR: TStringField;
    cdsINSCRP_RRR: TStringField;
    cdsINCRA_RRR: TStringField;
    cdsAREAH_RRR: TFloatField;
    cdsAREAE_RRR: TFloatField;
    cdsAREAM_RRR: TFloatField;
    cdsDISTANCIA_RRR: TFloatField;
    cdsPONTOS_RRR: TFloatField;
    cdsVVENAL_RRR: TFloatField;
    cdsLOGRA_RRR: TStringField;
    cdsCOMPL_RRR: TStringField;
    cdsVALOR: TFloatField;
    cdsLCORRECAO: TFloatField;
    cdsLMULTA: TFloatField;
    cdsLJUROS: TFloatField;
    cdsLDESCOR: TFloatField;
    cdsLDESCOC: TFloatField;
    cdsLDESCOM: TFloatField;
    cdsLDESCOVENCI: TFloatField;
    cdsLDESCOJ: TFloatField;
    cdsLACRES: TFloatField;
    cdsLISENTO: TFloatField;
    ckDesconto: TEvCheckBox;
    cdsRESPONSA_RRR: TStringField;
    rdOrdem: TRadioGroup;
    GroupBox10: TGroupBox;
    msk13: TMaskEdit;
    GroupBox1: TGroupBox;
    btnCadINI: TSpeedButton;
    btnCadFIM: TSpeedButton;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    msk9: TMaskEdit;
    msk10: TMaskEdit;
    sqlPARCELA_PAR: TIntegerField;
    sqlTP_PAR: TIntegerField;
    sqlCOD_DIV_PAR: TIntegerField;
    sqlSITUACAO_PAR: TIntegerField;
    sqlDTCORRECAO_PAR: TDateField;
    sqlCOTACAO_PAR: TFloatField;
    sqlDATAVENCI: TDateField;
    sqlANO_DIV: TStringField;
    sqlCOD_REP_DIV: TIntegerField;
    sqlCOD_EMP_PAR: TIntegerField;
    sqlDESCRICAO_REP: TStringField;
    sqlCOD_MOD_DIV: TIntegerField;
    sqlCOD_CNT_DIV: TStringField;
    sqlCOD_IND_PAR: TIntegerField;
    sqlMOEDA_PAR: TStringField;
    sqlNNUMERO_PAR: TFloatField;
    sqlUNICA_PAR: TStringField;
    sqlCOD_STR_RRR: TStringField;
    sqlANO_STR: TIntegerField;
    sqlCOD_CAD_DIV: TStringField;
    sqlPROPRIEDADE_RRR: TStringField;
    sqlINSCRP_RRR: TStringField;
    sqlINCRA_RRR: TStringField;
    sqlAREAH_RRR: TFloatField;
    sqlAREAE_RRR: TFloatField;
    sqlAREAM_RRR: TFloatField;
    sqlDISTANCIA_RRR: TFloatField;
    sqlPONTOS_RRR: TFloatField;
    sqlVVENAL_RRR: TFloatField;
    sqlLOGRA_RRR: TStringField;
    sqlCOMPL_RRR: TStringField;
    sqlRESPONSA_RRR: TStringField;
    sqlVALOR: TFloatField;
    sqlLCORRECAO: TFloatField;
    sqlLMULTA: TFloatField;
    sqlLJUROS: TFloatField;
    sqlLDESCOR: TFloatField;
    sqlLDESCOC: TFloatField;
    sqlLDESCOM: TFloatField;
    sqlLDESCOVENCI: TFloatField;
    sqlLDESCOJ: TFloatField;
    sqlLACRES: TFloatField;
    sqlLISENTO: TFloatField;
    cdsOBSLOGRA_RRR: TStringField;
    cbLayouts: TwwDBLookupCombo;
    sqlCOD_LOGE_DIV: TIntegerField;
    sqlNUMEROE_DIV: TStringField;
    cdsCOD_LOGE_DIV: TIntegerField;
    cdsNUMEROE_DIV: TStringField;
    sqlFAIXANNUMERO_PAR: TIntegerField;
    cdsFAIXANNUMERO_PAR: TIntegerField;
    sqlATIVA_PAR: TStringField;
    sqlEXECUTADA_PAR: TStringField;
    sqlPROTESTADO_PAR: TStringField;
    sqlNOTIFICADO_PAR: TStringField;
    sqlDATAINSCRI_PAR: TDateField;
    cdsATIVA_PAR: TStringField;
    cdsEXECUTADA_PAR: TStringField;
    cdsPROTESTADO_PAR: TStringField;
    cdsNOTIFICADO_PAR: TStringField;
    cdsDATAINSCRI_PAR: TDateField;
    ckBloqueadas: TEvCheckBox;
    sqlResRecDESCRI_REC: TStringField;
    cdsResRecDESCRI_REC: TStringField;
    sqlReceitasDESCRI_REC: TStringField;
    cdsReceitasDESCRI_REC: TStringField;
    gpTipoGuia: TGroupBox;
    checkCobrRegistrada: TEvCheckBox;
    gpConvenio: TGroupBox;
    comboConvenio: TDBLookupComboBox;
    comboTipoGuia: TRzComboBox;
    procedure msk1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure msk1Exit(Sender: TObject);
    procedure msk1Enter(Sender: TObject);
    procedure btnCadINIClick(Sender: TObject);
    procedure msk2Exit(Sender: TObject);
    procedure btnCadFIMClick(Sender: TObject);
    procedure msk3Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cdsCalcFields(DataSet: TDataSet);
    procedure ckAtualizaClick(Sender: TObject);
    procedure cdsResRecCalcFields(DataSet: TDataSet);
    procedure RzSizePanel1HotSpotClick(Sender: TObject);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
    procedure relatorio2BeforePrint(Sender: TfrxReportComponent);
    procedure BtnLayoutClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure comboTipoGuiaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelGuiasRR: TFRelGuiasRR;
  Avancada, Original, LoadFile, SAntes : Boolean;
  StreamOriginal, StreamAntes : TMemoryStream;
  Consulta, ConsultaG, Btn : string;

implementation

uses UDM, UPrin, Funcoes, funcoesTela, TrataErros, aguarde, URelatorios, UDMF, UClasse_PesqRur, UClasse_Financeiro;

{$R *.dfm}

procedure TFRelGuiasRR.msk1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFRelGuiasRR.msk1Exit(Sender: TObject);
var Pesq : TPesq_Rural;
begin
  inherited;
  if trim(TMaskEdit(sender).Text) <> '' then begin
    TMaskEdit(sender).MaxLength := 0;
    If trim(TMaskEdit(sender).Text) <> '' Then
    TMaskEdit(sender).Text := MontaMascara(TMaskEdit(sender).Text, 'RUR', SIA_Empresa);
    if trim(msk2.Text) = '' then
    msk2.Text := TMaskEdit(sender).Text;
  end
  else begin
    Pesq := TPesq_Rural.Create;
    Pesq.PesquisaRural(TMaskEdit(sender).Text);
    TMaskEdit(sender).Text := Pesq.CADASTRO;
    if trim(msk2.Text) = '' then msk2.Text := TMaskEdit(sender).Text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelGuiasRR.msk1Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('RUR',SIA_Empresa);
  If trim(TMaskEdit(Sender).Text)<>'' Then TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelGuiasRR.btnCadINIClick(Sender: TObject);
var Pesq : TPesq_Rural;
begin
  inherited;
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then begin
    msk1.Text := Pesq.CADASTRO;
    if trim(msk2.Text) = '' then msk2.Text := msk1.Text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFRelGuiasRR.msk2Exit(Sender: TObject);
var Pesq : TPesq_Rural;
begin
  inherited;
  if trim(TMaskEdit(sender).Text) <> '' then begin
    TMaskEdit(sender).MaxLength := 0;
    If trim(TMaskEdit(sender).Text) <> '' Then TMaskEdit(sender).Text := MontaMascara(TMaskEdit(sender).Text, 'RUR', SIA_Empresa);
  end
  else begin
    Pesq := TPesq_Rural.Create;
    Pesq.PesquisaRural(TMaskEdit(sender).Text);
    TMaskEdit(sender).Text := Pesq.CADASTRO;
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelGuiasRR.btnCadFIMClick(Sender: TObject);
var Pesq : TPesq_Rural;
begin
  inherited;
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then msk2.Text := Pesq.CADASTRO;
  FreeAndNil(Pesq);
end;

procedure TFRelGuiasRR.msk3Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('CNT',SIA_Empresa);
  If trim(TMaskEdit(Sender).Text)<>'' Then TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelGuiasRR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  inherited;
end;

procedure TFRelGuiasRR.FormCreate(Sender: TObject);
begin
  inherited;
  dm.cdsCadConvenios.close;
  dm.sqlCadConvenios.Params.ParamValues['empresa'] := sia_empresa;
  dm.cdsCadConvenios.Open;

  Consulta := 'SELECT ' +
              '  A.PARCELA_PAR, '+
              '  A.TP_PAR, '+
              '  A.COD_DIV_PAR, '+
              '  A.SITUACAO_PAR, '+
              '  A.DTCORRECAO_PAR, '+
              '  A.COTACAO_PAR, '+
              '  A.DATAVENCI, '+
              '  C.ANO_DIV, '+
              '  C.COD_REP_DIV, '+
              '  A.COD_EMP_PAR, '+
              '  D.DESCRICAO_REP, '+
              '  C.COD_MOD_DIV, '+
              '  C.COD_CNT_DIV, '+
              '  A.COD_IND_PAR, '+
              '  A.MOEDA_PAR, '+
              '  A.NNUMERO_PAR, '+
              '  A.UNICA_PAR, '+
              '  A.FAIXANNUMERO_PAR,'+
              '  E.COD_STR_RRR, '+
              '  ST.ANO_STR, '+
              '  C.COD_CAD_DIV, '+
              '  E.PROPRIEDADE_RRR, '+
              '  E.INSCRP_RRR, '+
              '  E.INCRA_RRR, '+
              '  E.AREAH_RRR, '+
              '  E.AREAE_RRR, '+
              '  E.AREAM_RRR, '+
              '  E.DISTANCIA_RRR, '+
              '  E.PONTOS_RRR, '+
              '  E.VVENAL_RRR, '+
              '  E.LOGRA_RRR, '+
              '  E.COMPL_RRR, '+
              '  E.RESPONSA_RRR, ' +
              '  C.COD_LOGE_DIV, ' +
              '  C.NUMEROE_DIV, '+
              '  A.ATIVA_PAR, ' +
              '  A.EXECUTADA_PAR, ' +
              '  A.PROTESTADO_PAR, ' +
              '  A.NOTIFICADO_PAR, ' +
              '  A.DATAINSCRI_PAR, ' +
              '  (SUM(COALESCE(LVALOR_FRC,0)) - SUM(COALESCE(LISENTO_FRC,0))) AS VALOR, '+
              '  SUM(LVRCORRE_FRC)    AS LCORRECAO, '+
              '  SUM(LVRMULTA_FRC)    AS LMULTA, '+
              '  SUM(LVRJUROS_FRC)    AS LJUROS, '+
              '  SUM(LDESCOR_FRC)     AS LDESCOR, '+
              '  SUM(LDESCOC_FRC)     AS LDESCOC, '+
              '  SUM(LDESCOM_FRC)     AS LDESCOM, '+
              '  SUM(LDESCOVENCI_FRC) AS LDESCOVENCI, '+
              '  SUM(LDESCOJ_FRC)     AS LDESCOJ, '+
              '  SUM(LACRES_FRC)      AS LACRES, '+
              '  SUM(LISENTO_FRC)     AS LISENTO '+
              'FROM ' +
              '  FI_PARCELA A '+
              '  INNER JOIN FI_RECEITAS B ON A.COD_EMP_PAR = B.COD_EMP_FRC '+
                                      'AND A.COD_DIV_PAR = B.COD_DIV_FRC '+
                                      'AND A.TP_PAR = B.TP_PAR_FRC '+
                                      'AND A.PARCELA_PAR = B.PARCELA_PAR_FRC '+
              '  INNER JOIN FI_DIVIDA C ON A.COD_EMP_PAR = C.COD_EMP_DIV '+
                                    'AND A.COD_DIV_PAR = C.COD_DIV '+
              '  INNER JOIN RR_CAD_RURAL E ON C.COD_EMP_DIV = E.COD_EMP_RRR '+
                                       'AND C.COD_CAD_DIV = E.COD_RRR '+
              '  INNER JOIN RR_SETOR ST ON ST.COD_EMP_STR = E.COD_EMP_RRR '+
                                    'AND ST.COD_STR = E.COD_STR_RRR '+
              '  LEFT JOIN FI_RECPRINCIPAL D ON C.COD_EMP_DIV = D.COD_EMP_REP '+
                                         'AND C.COD_REP_DIV = D.COD_REP '+
                                         'AND C.COD_MOD_DIV = D.COD_MOD_REP '+
              'WHERE ' +
              '  A.COD_EMP_PAR = ' + Sia_Empresa +
              '  AND C.COD_MOD_DIV = 4 ';

  ConsultaG := 'GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40 ';
end;

procedure TFRelGuiasRR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then BtnSair.Click;
end;

procedure TFRelGuiasRR.FormShow(Sender: TObject);
begin
  inherited;
  if Sia_PadraoGuia = 'F' then begin
    comboTipoGuia.ItemIndex := 1; // Ficha de Compensação
    comboConvenio.Enabled   := True;
    comboConvenio.Color     := clWhite;

    if dm.cdsCadConvenios.locate('RURAL_CVW','S',([])) then
      comboConvenio.KeyValue := dm.cdsCadConvenios.fieldByName('CEDENTE_CNV').Value;
  end
  else begin
    comboTipoGuia.ItemIndex := 0; // Carnê
    comboConvenio.Enabled   := False;
    comboConvenio.Color     := clBtnFace;
  end;

  FRelGuiasRR.Height := 320;
  RzSizePanel1.CloseHotSpot;
  msk13.Text := Sia_Exercicio;

  SIA_Aplicacao := 'FRelGuiasRR' + IntToStr(comboTipoGuia.ItemIndex);
  StreamAntes := TMemoryStream.Create;
  StreamOriginal := TMemoryStream.Create;
  LoadFile := False;
  Original := False;
  SAntes := False;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelGuiasRR.RzSizePanel1HotSpotClick(Sender: TObject);
begin
  inherited;
  if FRelGuiasRR.Height = 320 then begin
    FRelGuiasRR.Height := 424;
    FRelGuiasRR.top := FRelGuiasRR.top - 81;
  end
  else begin
    FRelGuiasRR.Height := 320;
    FRelGuiasRR.top := FRelGuiasRR.top + 81;
  end;
end;

procedure TFRelGuiasRR.cdsCalcFields(DataSet: TDataSet);
var atualiza : Vetor;
    valor : Double;
    digverif, codbarra : String;
begin
  inherited;
  dm.cdsAtualiza.close;
  dm.sqlAtualiza.commandText := 'SELECT COD_DIV FROM FI_PARCELA '+
                                'INNER JOIN FI_DIVIDA ON COD_EMP_DIV=COD_EMP_PAR AND COD_DIV=COD_DIV_PAR '+
                                'WHERE COD_EMP_PAR = '+ Sia_Empresa +
                                 ' AND COD_MOD_DIV = 4 '+
                                 ' AND COD_DIV_PAR <> '+ cds.fieldByName('COD_DIV_PAR').AsString +
                                 ' AND COD_CAD_DIV = '''+ cds.fieldByName('COD_CAD_DIV').AsString +''''+
                                 ' AND SITUACAO_PAR >= 1 AND SITUACAO_PAR <= 3 '+
                                 ' AND DATAVENCI <= '''+ INVERTEDATA(DATETOSTR(DATE)) +'''';
  dm.cdsAtualiza.open;
  if not dm.cdsAtualiza.IsEmpty then
    cds.FieldByName('menssagemDivida').AsString := 'CONSTA DÉBITO VENCIDO'
  else
    cds.FieldByName('menssagemDivida').AsString := '' ;

  dm.cdsAtualiza.close;
  dm.sqlAtualiza.commandText := 'SELECT OBSLOGRA_RRR '+
                                'FROM RR_CAD_RURAL '+
                                'WHERE COD_EMP_RRR = '+ Sia_Empresa +
                                 ' AND COD_RRR = '''+ cds.fieldByName('COD_CAD_DIV').AsString +'''';
  dm.cdsAtualiza.open;
  cds.FieldByName('OBSLOGRA_RRR').Value := dm.cdsAtualiza.FieldByName('OBSLOGRA_RRR').Value;
  dm.cdsAtualiza.close;

  with dataset do begin
    if state = dsinternalcalc then
      if cds.FieldByName('unica_par').AsString = 'S' then
       cds.FieldByName('vrParcela').AsCurrency := cds.FieldByName('valor').AsCurrency +
                                                  cds.FieldByName('lcorrecao').AsCurrency +
                                                  cds.FieldByName('lmulta').AsCurrency +
                                                  cds.FieldByName('ljuros').AsCurrency +
                                                  cds.FieldByName('lacres').AsCurrency -
                                                 (cds.FieldByName('ldescor').AsCurrency +
                                                  cds.FieldByName('ldescoc').AsCurrency +
                                                  cds.FieldByName('ldescom').AsCurrency +
                                                  cds.FieldByName('ldescovenci').AsCurrency +
                                                  cds.FieldByName('ldescoj').AsCurrency)
      else begin
       if (ckDesconto.Checked) and (cds.FieldByName('datavenci').AsDateTime>=date) then
         cds.FieldByName('vrParcela').AsCurrency := cds.FieldByName('valor').AsCurrency +
                                                    cds.FieldByName('lcorrecao').AsCurrency +
                                                    cds.FieldByName('lmulta').AsCurrency +
                                                    cds.FieldByName('ljuros').AsCurrency +
                                                    cds.FieldByName('lacres').AsCurrency -
                                                   (cds.FieldByName('ldescor').AsCurrency +
                                                    cds.FieldByName('ldescoc').AsCurrency +
                                                    cds.FieldByName('ldescom').AsCurrency +
                                                    cds.FieldByName('ldescovenci').AsCurrency+
                                                    cds.FieldByName('ldescoj').AsCurrency)
       else
         cds.FieldByName('vrParcela').AsCurrency := cds.FieldByName('valor').AsCurrency +
                                                    cds.FieldByName('lcorrecao').AsCurrency +
                                                    cds.FieldByName('lmulta').AsCurrency +
                                                    cds.FieldByName('ljuros').AsCurrency +
                                                    cds.FieldByName('lacres').AsCurrency -
                                                   (cds.FieldByName('ldescor').AsCurrency +
                                                    cds.FieldByName('ldescoc').AsCurrency +
                                                    cds.FieldByName('ldescom').AsCurrency +
                                                    cds.FieldByName('ldescoj').AsCurrency)
      end;

      cds.FieldByName('valorBruto').AsCurrency := cds.FieldByName('valor').AsCurrency +
                                                  cds.FieldByName('lcorrecao').AsCurrency +
                                                  cds.FieldByName('lmulta').AsCurrency +
                                                  cds.FieldByName('ljuros').AsCurrency +
                                                  cds.FieldByName('lacres').AsCurrency -
                                                 (cds.FieldByName('ldescor').AsCurrency +
                                                  cds.FieldByName('ldescoc').AsCurrency +
                                                  cds.FieldByName('ldescom').AsCurrency +
                                                  cds.FieldByName('ldescoj').AsCurrency);

      cds.FieldByName('valorDesconto').AsCurrency := cds.FieldByName('ldescovenci').AsCurrency;
      cds.FieldByName('valorliquido').AsCurrency := cds.FieldByName('valor').AsCurrency +
                                                    cds.FieldByName('lcorrecao').AsCurrency +
                                                    cds.FieldByName('lmulta').AsCurrency +
                                                    cds.FieldByName('ljuros').AsCurrency +
                                                    cds.FieldByName('lacres').AsCurrency -
                                                   (cds.FieldByName('ldescor').AsCurrency +
                                                    cds.FieldByName('ldescoc').AsCurrency +
                                                    cds.FieldByName('ldescom').AsCurrency +
                                                    cds.FieldByName('ldescovenci').AsCurrency +
                                                    cds.FieldByName('ldescoj').AsCurrency);

      cds.FieldByName('Correcao').AsCurrency := 0;
      cds.FieldByName('multa').AsCurrency    := 0;
      cds.FieldByName('Juros').AsCurrency    := 0;
      cds.FieldByName('Total').AsCurrency    := 0;

      valor := cds.FieldByName('vrParcela').AsCurrency;

      if ckAtualiza.Checked then begin
        atualiza := CalculaAtualizacaoT(dmf.cdsFiConfig.Data, // dConfig,
                                       dmf.cdsMulta.Data, //dMulta,
                                       dmf.cdsJuros.Data, //dJuros,
                                       dmf.cdsFeriados.Data, //dFeriado,
                                       dmf.cdsIndCorr.Data, //dIndice,
                                       dmf.cdsIndCorrDesdo.Data,
                                       cds.fieldByName('cod_rep_div').AsString,
                                       cds.fieldByName('cod_mod_div').AsString,
                                       cds.fieldByName('datavenci').AsString,
                                       mkAtualizacao.Text,
                                       cds.fieldByName('dtcorrecao_par').AsString,
                                       cds.fieldByName('cod_ind_par').AsString,
                                       cds.FieldByName('vrParcela').AsCurrency,
                                       cds.FieldByName('cotacao_par').AsCurrency,
                                       cds.FieldByName('EXECUTADA_PAR').AsString,
                                       cds.FieldByName('ATIVA_PAR').AsString,
                                       cds.FieldByName('NOTIFICADO_PAR').AsString,
                                       cds.FieldByName('PROTESTADO_PAR').AsString,
                                       cds.FieldByName('DATAINSCRI_PAR').AsString
                                       );

        cds.FieldByName('Correcao').AsCurrency := Atualiza[1];
        cds.FieldByName('multa').AsCurrency    := Atualiza[2];
        cds.FieldByName('Juros').AsCurrency    := Atualiza[3];

        cds.FieldByName('Total').AsCurrency := cds.FieldByName('vrParcela').AsCurrency +
                                               cds.FieldByName('Correcao').AsCurrency +
                                               cds.FieldByName('Multa').AsCurrency +
                                               cds.FieldByName('Juros').AsCurrency;

        valor := cds.FieldByName('Total').AsCurrency;
      end;

     if comboTipoGuia.ItemIndex = 0 then begin // carne

     codbarra:=CodigodebarraArrecadacao('1',
                                       '2',
                                       cds.fieldbyname('unica_par').Asstring,
                                       dm.cdsEmpresa.fieldbyname('cod_FebraBan_emp').AsString,
                                       dm.cdsEmpresa.fieldbyname('cod_FebraBan_ag_emp').AsString,
                                       cds.fieldbyname('cod_mod_div').Asstring,
                                       cds.fieldbyname('cod_div_par').AsString,
                                       cds.fieldbyname('parcela_par').AsString,
                                       cds.fieldbyname('tp_par').AsString,
                                       cds.fieldbyname('datavenci').AsString,
                                       'N',
                                       Valor);

      cds.fieldbyname('barra').AsString := codbarra;
      cds.fieldbyname('parte1').AsString := copy(codbarra,1,11)  + '-' + DIGFebra(copy(codbarra,1,11));
      cds.fieldbyname('parte2').AsString := copy(codbarra,12,11) + '-' + DIGFebra(copy(codbarra,12,11));
      cds.fieldbyname('parte3').AsString := copy(codbarra,23,11) + '-' + DIGFebra(copy(codbarra,23,11));
      cds.FieldByName('parte4').AsString := copy(codbarra,34,11) + '-' + DIGFebra(copy(codbarra,34,11));
     end
     else begin
       cds.fieldbyname('barra').AsString := codigodebarra(Sia_Empresa,Sia_Exercicio,dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString,
                                                          cds.fieldbyname('datavenci').AsString,
                                                          cds.fieldbyname('cod_div_par').AsString,
                                                          cds.fieldbyname('parcela_par').AsString,
                                                          cds.fieldbyname('tp_par').AsString,
                                                          cds.fieldbyname('nnumero_par').AsString,
                                                          '2',
                                                          dm.cdsCadConvenios.fieldbyname('cedente_cnv').AsString,
                                                          Valor,
                                                          cds.fieldbyname('FAIXANNUMERO_PAR').AsString
                                                          );

       cds.FieldByName('cdBanco').AsString := CodigoBanco(dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString);
       cds.FieldByName('nomebanco').AsString := NomeBanco(dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString);
       cds.FieldByName('cedente').AsString := Cedente(dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString,
                                                      dm.cdsCadConvenios.fieldbyname('cedente_cnv').AsString,
                                                      dm.cdsCadConvenios.fieldbyname('agencia_cnv').AsString,
                                                      dm.cdsCadConvenios.fieldbyname('conta_cnv').AsString);

       cds.FieldByName('nnumero').AsString := NossoNumero(Sia_Empresa,Sia_Exercicio,dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString,
                                                          dm.cdsCadConvenios.fieldbyname('cedente_cnv').AsString,
                                                          cds.fieldbyname('cod_div_par').AsString,
                                                          cds.fieldbyname('parcela_par').AsString,
                                                          cds.fieldbyname('tp_par').AsString,
                                                          cds.fieldbyname('nnumero_par').AsString,
                                                          '2',
                                                          cds.fieldbyname('datavenci').AsString,
                                                          cds.fieldbyname('FAIXANNUMERO_PAR').AsString
                                                          );

       cds.FieldByName('local').AsString := Local(dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString);

       cds.FieldByName('digitavel').AsString := linhadigitavel(cds.fieldbyname('barra').AsString,dm.cdsCadConvenios.fieldbyname('NDIGITO_CNV').AsString,dm.cdsCadConvenios.fieldbyname('cedente_cnv').AsString);
     end;
  end;
end;

procedure TFRelGuiasRR.ckAtualizaClick(Sender: TObject);
begin
  inherited;
  if ckAtualiza.Checked then mkAtualizacao.visible := true
  else mkAtualizacao.visible := false;
end;

procedure TFRelGuiasRR.comboTipoGuiaChange(Sender: TObject);
begin
  inherited;
  if comboTipoGuia.ItemIndex = 0 then begin // Carnê
    comboConvenio.Enabled   := False;
    comboConvenio.Color     := clBtnFace;
    comboConvenio.KeyValue  := '';
  end
  else begin // Ficha de Compensação
    comboConvenio.Enabled   := True;
    comboConvenio.Color     := clWhite;
  end;

  SIA_Aplicacao := 'FRelGuiasRR' + IntToStr(comboTipoGuia.ItemIndex);
  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelGuiasRR.cdsResRecCalcFields(DataSet: TDataSet);
begin
  inherited;
  with dataset do begin
   if state = dsinternalcalc then begin
     cdsResRec.FieldByName('desco').AsCurrency := cdsResRec.FieldByName('ldescor').AsCurrency +
                                                  cdsResRec.FieldByName('ldescoc').AsCurrency +
                                                  cdsResRec.FieldByName('ldescom').AsCurrency +
                                                  cdsResRec.FieldByName('ldescoj').AsCurrency +
                                                  cdsResRec.FieldByName('lisento').AsCurrency;

     cdsResRec.FieldByName('total').AsCurrency := cdsResRec.FieldByName('valor').AsCurrency +
                                                  cdsResRec.FieldByName('lcorrecao').AsCurrency +
                                                  cdsResRec.FieldByName('lmulta').AsCurrency +
                                                  cdsResRec.FieldByName('ljuros').AsCurrency +
                                                  cdsResRec.FieldByName('lacres').AsCurrency -
                                                  cdsResRec.FieldByName('desco').AsCurrency;
   end;
  end;
end;

procedure TFRelGuiasRR.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender is TfrxGroupHeader then
     (Sender as TfrxGroupHeader).Visible := cCapa.Checked;
  if Sender is TfrxMasterData then
     (Sender as TfrxMasterData).Visible := cParcelas.Checked;
  if Sender is TfrxGroupFooter then
     (Sender as TfrxGroupFooter).Visible := cDemons.Checked;
end;

procedure TFRelGuiasRR.relatorio2BeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  if Sender is TfrxGroupHeader then
     (Sender as TfrxGroupHeader).Visible := cCapa.Checked;
  if Sender is TfrxMasterData then
     (Sender as TfrxMasterData).Visible := cParcelas.Checked;
  if Sender is TfrxGroupFooter then
     (Sender as TfrxGroupFooter).Visible := cDemons.Checked;
end;

procedure TFRelGuiasRR.BtnLayoutClick(Sender: TObject);
var rel : TfrxReport;
begin
  inherited;

  if comboTipoGuia.ItemIndex = 0 then
    rel := relatorio
  else
    rel := relatorio2;

  SIA_Aplicacao := 'FRelGuiasRR'+IntToStr(comboTipoGuia.ItemIndex);

  Application.CreateForm(TFRelatorios, FRelatorios);
  StreamOriginal.clear;
  rel.SaveToStream(StreamOriginal);
  StreamOriginal.Position := 0;
  FRelatorios.Rel_Original.LoadFromStream(StreamOriginal);
  Original := True;
  FRelatorios.ShowModal;

  if CarregaLayoutStream(strtoint(Sia_Empresa ), SIA_Aplicacao) then
    LoadFile := False
  else begin
    LoadFile := True;
    StreamOriginal.Position := 0;
    rel.LoadFromStream(StreamOriginal);
  end;

  FRelatorios.Free;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelGuiasRR.BtnConfirmaClick(Sender: TObject);
var rec, having, filtro, ordem : string;
    rel : TfrxReport;
    i : integer;
    Stream : TMemoryStream;
    dataAlteracao : Variant;
begin
  inherited;

  if (trim(msk13.Text) = '') then begin
    dm.msg.MessageDlg('O Exercício é Obrigatório.',mtInformation,[mbok],0);
    msk13.SetFocus;
    exit;
  end;

  ordem := '';
  filtro := '';

  if rdOrdem.ItemIndex=0 then
    ordem:=' ORDER BY COD_CAD_DIV,COD_DIV_PAR,PARCELA_PAR,TP_PAR '
  else if rdOrdem.ItemIndex=1 then
    ordem:=' ORDER BY LOGRA_RRR,COD_DIV_PAR,PARCELA_PAR,TP_PAR '
  else if rdOrdem.ItemIndex=2 then
    ordem:=' ORDER BY COD_LOGE_DIV,NUMEROE_DIV,COD_DIV_PAR,PARCELA_PAR,TP_PAR ';

  if (trim(msk1.Text) <> '') and (trim(msk2.Text) <> '') then
    filtro := ' AND E.COD_RRR BETWEEN '+''''+ trim(msk1.Text) +''''+ ' AND '+''''+ trim(msk2.Text) +'''';

  if (trim(msk9.Text) <> '') and (trim(msk10.Text) <> '') then
    filtro := filtro + ' AND A.PARCELA_PAR >= '+ trim(msk9.Text) +
                       ' AND A.PARCELA_PAR <= '+ trim(msk10.Text);

  if (trim(msk13.Text) <> '') then
    filtro := filtro + ' AND C.ANO_DIV = '+''''+ trim(msk13.Text) +''''+
                       ' AND ST.ANO_STR = '+''''+ trim(msk13.Text) +'''';

  filtro := filtro + ' AND AGRUPAMENTO_REP LIKE ''13%'' ';

  if not ckBloqueadas.Checked then filtro := filtro + ' AND ((A.BLOQUEADA_PAR = ''N'') OR (A.BLOQUEADA_PAR IS NULL)) ';

  if RDSITUACAO.ItemIndex = 0 then filtro := filtro + ' AND A.SITUACAO_PAR>=6 AND SITUACAO_PAR<=8 '
  else if RDSITUACAO.ItemIndex = 1 then begin
   filtro := filtro + ' AND ((A.SITUACAO_PAR>=1 AND SITUACAO_PAR<=3) OR (SITUACAO_PAR=0 AND A.PARCELA_PAR=0 AND DATAVENCI>='''+INVERTEDATA(DATETOSTR(DATE))+''') ) ';

   filtro := filtro + ' AND  (A.SITUACAO_PAR IN (1,2,3) or (A.UNICA_PAR=''S'' AND '+
                                                                          ' NOT EXISTS (SELECT 1 FROM FI_PARCELA U '+
                                                                                        'WHERE A.COD_EMP_PAR=U.COD_EMP_PAR AND '+
                                                                                        'A.COD_DIV_PAR=U.COD_DIV_PAR AND '+
                                                                                        '(U.SITUACAO_PAR=0 OR U.SITUACAO_PAR>=4) AND U.UNICA_PAR=''N'' '+
                                                                                       ')'+
                                                         ')'+
                             ')';
  end;

  dmf.CarregaTabelasFinanceiro(Sia_Empresa);
  cds.close;
  sql.CommandText:= Consulta + filtro + ConsultaG + Ordem;
  cds.open;

  cdsReceitas.close;
  cdsReceitas.open;

  cdsCadastro.close;
  cdsCadastro.open;

  cdsResumo.Close;
  cdsResumo.Open;

  cdsResRec.Close;
  cdsResRec.Open;

  cdsvenc.Close;
  cdsvenc.Open;

  cdsSorteio.Close;
  cdsSorteio.Open;

  cdsUnica.Close;
  cdsUnica.Open;

  SIA_Aplicacao:='FRelGuiasRR'+IntToStr(comboTipoGuia.ItemIndex);

  if comboTipoGuia.ItemIndex = 0 then
    rel := relatorio
  else
    rel := relatorio2;

  If Not LoadFile Then begin
    if CarregaLayoutStream(strtoint(Sia_Empresa), SIA_Aplicacao) then begin
      Stream := TMemoryStream.Create;
      TBlobField(dm.cdsLayoutRel.FieldByName('LAYOUT_RLT')).SaveToStream(Stream);
      Stream.Position := 0;
      Rel.LoadFromStream(Stream);
      FreeAndNil(Stream);
    end;
  end;

  if cbLayouts.Visible then begin
    if trim(cbLayouts.Text) <> '' then begin
      if not SAntes then begin
        Rel.SaveToStream(StreamAntes);
        StreamAntes.Position := 0;
        SAntes := True;
      end;

      Stream := TMemoryStream.Create;
      TBlobField(dm.cdsLayoutAPL.FieldByName('LAYOUT_RLT')).SaveToStream(Stream);
      Stream.Position := 0;
      Rel.LoadFromStream(Stream);
      FreeAndNil(Stream);
      cbLayouts.Text := '';
    end;
  end;

  If trim(ImpPadrao) <> '' Then
    Rel.PrintOptions.Printer := ImpPadrao
  else begin
    try
      if VerImpPadrao <> '' then
        Rel.PrintOptions.Printer := VerImpPadrao;
    except
      messagedlg('Impressora Padrão não Definida.'+#13+'Instale uma Impressora e Defina como Padrão.',mtInformation,[mbok],0);
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

  if not VerImpressao then rel.ShowReport(true)
  else begin
    rel.PrepareReport;
    rel.Print;
  end;

  if SAntes then begin
    StreamAntes.Position := 0;
    rel.LoadFromStream(StreamAntes);
  end;

  // aqui Gera a Guia de Cobrança Registrada
  if checkCobrRegistrada.Checked then begin
	  if comboTipoGuia.ItemIndex = 1 then begin // Ficha de Compensação
      if ckAtualiza.checked then begin
        dataAlteracao  := StrToDate(mkAtualizacao.Text);
      end
      else begin
        dataAlteracao  := null;
      end;

      GerarGuiaRegistrada('2',                 // TipoEmissao
                          True,                // comWhile
                          dataAlteracao,       // Atualizar Vencimento (Altera Dta Vencimento ou valor da Guia)
                          cds                  // DataSet
                          );

    end;
	end;
end;

end.
