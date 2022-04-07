unit UCadRural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, SqlExpr, DB, DBClient, Provider, EMsgDlg,
  RzButton, RzPanel, Grids, DBGrids, StdCtrls, RzBckgnd, ExtCtrls, RzTabs,
  DBCtrls, EDBCkBox, EDBDate, Mask, Buttons, PesqAvancada_Fiorilli, Menus,
  Clipbrd, ImgList, RVStyle, RzShellDialogs, EDBNum, UClasse_Principal, dxGDIPlusClasses;

type
  TFCadRural = class(TFGenerico)
    BtnFuncoes: TRzBitBtn;
    PGGeral: TRzPageControl;
    tbCadastral: TRzTabSheet;
    tbCNT: TRzTabSheet;
    RzPanel3: TRzPanel;
    Label3: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label27: TLabel;
    btnSetVenc: TSpeedButton;
    Label74: TLabel;
    SpeedButton2: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    EvDBDateEdit14: TEvDBDateEdit;
    DBEdit28: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit30: TDBEdit;
    PGImovel: TRzPageControl;
    tbDadosG: TRzTabSheet;
    tbCorres: TRzTabSheet;
    tbEscritura: TRzTabSheet;
    tbTaxas: TRzTabSheet;
    tbObs: TRzTabSheet;
    tbProd: TRzTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    btnLogr: TSpeedButton;
    Label26: TLabel;
    Label38: TLabel;
    SpeedButton9: TSpeedButton;
    Label40: TLabel;
    SpeedButton10: TSpeedButton;
    Label34: TLabel;
    SpeedButton7: TSpeedButton;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit29: TDBEdit;
    DBMemo2: TDBMemo;
    DBEdit26: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label4: TLabel;
    btnLogr1: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label39: TLabel;
    Label7: TLabel;
    btnBai1: TSpeedButton;
    Label58: TLabel;
    btnCid1: TSpeedButton;
    Label36: TLabel;
    Label118: TLabel;
    SpeedButton4: TSpeedButton;
    Label119: TLabel;
    SpeedButton5: TSpeedButton;
    DBEdit18: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit15: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit44: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    Bevel3: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    Label37: TLabel;
    SpeedButton8: TSpeedButton;
    Label51: TLabel;
    Label52: TLabel;
    Label56: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    SpeedButton11: TSpeedButton;
    Label69: TLabel;
    Label70: TLabel;
    SpeedButton13: TSpeedButton;
    Label67: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label75: TLabel;
    Bevel4: TBevel;
    DBEdit45: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    EvDBDateEdit1: TEvDBDateEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit70: TDBEdit;
    EvDBDateEdit2: TEvDBDateEdit;
    EvDBDateEdit3: TEvDBDateEdit;
    RzPanel4: TRzPanel;
    Label35: TLabel;
    SpeedButton6: TSpeedButton;
    Label11: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label31: TLabel;
    DBEdit33: TEdit;
    DBEdit34: TEdit;
    DBEdit27: TEdit;
    DBEdit31: TEdit;
    DBEdit32: TEdit;
    DBGrid2: TDBGrid;
    PGCad: TRzPageControl;
    tbImovel: TRzTabSheet;
    Panel12: TPanel;
    Label54: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel9: TPanel;
    Label45: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBGrid7: TDBGrid;
    DBGrid3: TDBGrid;
    RzTabSheet1: TRzTabSheet;
    Panel3: TPanel;
    Label43: TLabel;
    Panel5: TPanel;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    Panel18: TPanel;
    Label47: TLabel;
    Panel19: TPanel;
    Panel20: TPanel;
    DBGrid9: TDBGrid;
    tbDados: TRzTabSheet;
    Panel6: TPanel;
    Label44: TLabel;
    Panel8: TPanel;
    Panel7: TPanel;
    DBGrid5: TDBGrid;
    TabSheet7: TRzTabSheet;
    Panel15: TPanel;
    Label46: TLabel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel21: TPanel;
    Label48: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    DBGrid10: TDBGrid;
    DBGrid11: TDBGrid;
    GroupBox1: TGroupBox;
    Label49: TLabel;
    DBEdit53: TDBEdit;
    DBMemo3: TDBMemo;
    tbCadAlter: TRzTabSheet;
    tbCadTransf: TRzTabSheet;
    RzPanel13: TRzPanel;
    Label83: TLabel;
    DBText3: TDBText;
    DBGrid6: TDBGrid;
    DBMemo1: TDBMemo;
    DBGrid8: TDBGrid;
    msk3: TRzPanel;
    Label55: TLabel;
    Label57: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label68: TLabel;
    Label80: TLabel;
    btnCobranca: TSpeedButton;
    DBText2: TDBText;
    Label81: TLabel;
    Label33: TLabel;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    msk4: TMaskEdit;
    msk5: TMaskEdit;
    msk6: TMaskEdit;
    msk7: TMaskEdit;
    msk11: TMaskEdit;
    msk12: TMaskEdit;
    btnPesquisa: TBitBtn;
    btnPesqAvancada: TBitBtn;
    mkIncra: TMaskEdit;
    pop1: TPopupMenu;
    ClculoAnual1: TMenuItem;
    ConsultadeDvida1: TMenuItem;
    ConsultadeLanamento1: TMenuItem;
    CompensaodeValores1: TMenuItem;
    EstornaCompensaodeValores1: TMenuItem;
    CancelamentodeDvida1: TMenuItem;
    EstornaCancelamentodeDvida1: TMenuItem;
    N4: TMenuItem;
    ReceitasDiversas1: TMenuItem;
    ITBI1: TMenuItem;
    N3: TMenuItem;
    EmissodeCertides1: TMenuItem;
    EmissodeCarne1: TMenuItem;
    FichaCadastral2: TMenuItem;
    N2: TMenuItem;
    ExtratoCompleto1: TMenuItem;
    ExtratoSimplificado1: TMenuItem;
    N1: TMenuItem;
    ListagemdosDbitosCompleta1: TMenuItem;
    ListagemdosDbitoSimplificada1: TMenuItem;
    N5: TMenuItem;
    popBtnDir: TPopupMenu;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    PesqAvancado: TPesqAvancada_Fiorilli;
    dsGranj: TDataSource;
    cdsGranj: TClientDataSet;
    dspGranj: TDataSetProvider;
    sqlGranj: TSQLDataSet;
    sqlGranjCOD_EMP_AGQ: TIntegerField;
    sqlGranjCOD_AGQ: TIntegerField;
    sqlGranjCOD_RRR_AGQ: TStringField;
    sqlGranjCOD_PRO_AGQ: TStringField;
    sqlGranjCOD_INDRESTUSO_AGQ: TStringField;
    sqlGranjAREA_EXPLO_AGQ: TFloatField;
    sqlGranjLOGIN_INC_AGQ: TStringField;
    sqlGranjDTA_INC_AGQ: TSQLTimeStampField;
    sqlGranjLOGIN_ALT_AGQ: TStringField;
    sqlGranjDTA_ALT_AGQ: TSQLTimeStampField;
    sqlGranjDESCR_RPG: TStringField;
    sqlGranjDESCR_RIU: TStringField;
    dsProdIso: TDataSource;
    cdsProdIso: TClientDataSet;
    dspProdIso: TDataSetProvider;
    sqlProdIso: TSQLDataSet;
    sqlProdIsoCOD_EMP_AVI: TIntegerField;
    sqlProdIsoCOD_AVI: TIntegerField;
    sqlProdIsoCOD_RRR_AVI: TStringField;
    sqlProdIsoCOD_PRO_AVI: TStringField;
    sqlProdIsoAREA_PLAN_AVI: TFloatField;
    sqlProdIsoAREA_COLH_AVI: TFloatField;
    sqlProdIsoQTD_COLH_AVI: TFloatField;
    sqlProdIsoCOD_UNID_AVI: TStringField;
    sqlProdIsoCOD_INDRESTPROD_AVI: TStringField;
    sqlProdIsoLOGIN_INC_AVI: TStringField;
    sqlProdIsoDTA_INC_AVI: TSQLTimeStampField;
    sqlProdIsoLOGIN_ALT_AVI: TStringField;
    sqlProdIsoDTA_ALT_AVI: TSQLTimeStampField;
    sqlProdIsoDESCR_RIP: TStringField;
    sqlProdIsoDESCR_RPR: TStringField;
    sqlProdIsoDESCR_RUP: TStringField;
    dsProRot: TDataSource;
    cdsProRot: TClientDataSet;
    dspProRot: TDataSetProvider;
    sqlProRot: TSQLDataSet;
    sqlProRotCOD_EMP_AVR: TIntegerField;
    sqlProRotCOD_AVR: TIntegerField;
    sqlProRotCOD_RRR_AVR: TStringField;
    sqlProRotCOD_PRO_AVR: TStringField;
    sqlProRotFORMAEXP_AVR: TStringField;
    sqlProRotSEQGRUPO_AVR: TIntegerField;
    sqlProRotAREA_PLAN_AVR: TFloatField;
    sqlProRotAREA_COLH_AVR: TFloatField;
    sqlProRotQTD_COLH_AVR: TFloatField;
    sqlProRotCOD_UNID_AVR: TStringField;
    sqlProRotCOD_INDRESTPROD_AVR: TStringField;
    sqlProRotLOGIN_INC_AVR: TStringField;
    sqlProRotDTA_INC_AVR: TSQLTimeStampField;
    sqlProRotLOGIN_ALT_AVR: TStringField;
    sqlProRotDTA_ALT_AVR: TSQLTimeStampField;
    sqlProRotDESCR_RIP: TStringField;
    sqlProRotDESCR_RPR: TStringField;
    sqlProRotDESCR_RUP: TStringField;
    dsPasto: TDataSource;
    cdsPasto: TClientDataSet;
    dspPasto: TDataSetProvider;
    sqlPasto: TSQLDataSet;
    sqlPastoCOD_EMP_ARP: TIntegerField;
    sqlPastoCOD_ARP: TIntegerField;
    sqlPastoCOD_RRR_ARP: TStringField;
    sqlPastoCOD_TPPASTO_ARP: TIntegerField;
    sqlPastoAREA_UTIL_ARP: TFloatField;
    sqlPastoCOD_INDRESTUSO_ARP: TStringField;
    sqlPastoLOGIN_INC_ARP: TStringField;
    sqlPastoDTA_INC_ARP: TSQLTimeStampField;
    sqlPastoLOGIN_ALT_ARP: TStringField;
    sqlPastoDTA_ALT_ARP: TSQLTimeStampField;
    sqlPastoDESCR_RTS: TStringField;
    sqlPastoDESCR_RIU: TStringField;
    dsPecuaria: TDataSource;
    cdsPecuaria: TClientDataSet;
    dspPecuaria: TDataSetProvider;
    sqlPecuaria: TSQLDataSet;
    sqlPecuariaCOD_EMP_RPE: TIntegerField;
    sqlPecuariaCOD_RPE: TIntegerField;
    sqlPecuariaCOD_RRR_RPE: TStringField;
    sqlPecuariaCOD_PRO_RPE: TStringField;
    sqlPecuariaQTD_RPE: TIntegerField;
    sqlPecuariaLOGIN_INC_RPE: TStringField;
    sqlPecuariaDTA_INC_RPE: TSQLTimeStampField;
    sqlPecuariaLOGIN_ALT_RPE: TStringField;
    sqlPecuariaDTA_ALT_RPE: TSQLTimeStampField;
    sqlPecuariaDESCR_RPA: TStringField;
    dsTransf: TDataSource;
    cdsTransf: TClientDataSet;
    dspTransf: TDataSetProvider;
    sqlTransf: TSQLDataSet;
    dsHisAlt: TDataSource;
    cdsHisAlt: TClientDataSet;
    dspHisAlt: TDataSetProvider;
    sqlHisAlt: TSQLDataSet;
    sqlHisAltCOD_RHA: TIntegerField;
    sqlHisAltCOD_EMP_RHA: TIntegerField;
    sqlHisAltCOD_RRR_RHA: TStringField;
    sqlHisAltCAMPO_RHA: TStringField;
    sqlHisAltVALOR_ANT_RHA: TStringField;
    sqlHisAltVALOR_AUT_RHA: TStringField;
    sqlHisAltLOGIN_ALT_RHA: TStringField;
    sqlHisAltDTA_ALT_RHA: TSQLTimeStampField;
    sqlHisAltOBS_RHA: TMemoField;
    dsRec: TDataSource;
    cdsRec: TClientDataSet;
    dspRec: TDataSetProvider;
    sqlRec: TSQLDataSet;
    sqlRecCOD_EMP_RCT: TIntegerField;
    sqlRecCOD_RCT: TIntegerField;
    sqlRecCOD_RRR_RCT: TStringField;
    sqlRecCOD_REC_RCT: TIntegerField;
    sqlRecCOD_DDO_RCT: TIntegerField;
    sqlRecQTD_RCT: TFloatField;
    sqlRecLOGIN_INC_RCT: TStringField;
    sqlRecDTA_INC_RCT: TSQLTimeStampField;
    sqlRecDESCRI_RCA: TStringField;
    sqlRecVALOR_RCA: TFloatField;
    dsAOutUso: TDataSource;
    cdsAOutUso: TClientDataSet;
    dspAOutUso: TDataSetProvider;
    sqlAOutUso: TSQLDataSet;
    sqlAOutUsoCOD_EMP_AOT: TIntegerField;
    sqlAOutUsoCOD_AOT: TIntegerField;
    sqlAOutUsoCOD_RRR_AOT: TStringField;
    sqlAOutUsoCOD_BEN_AOT: TStringField;
    sqlAOutUsoAREA_UTIL_AOT: TFloatField;
    sqlAOutUsoCOD_INDRESTUSO_AOT: TStringField;
    sqlAOutUsoLOGIN_INC_AOT: TStringField;
    sqlAOutUsoDTA_INC_AOT: TSQLTimeStampField;
    sqlAOutUsoLOGIN_ALT_AOT: TStringField;
    sqlAOutUsoDTA_ALT_AOT: TSQLTimeStampField;
    sqlAOutUsoDESCR_RPO: TStringField;
    sqlAOutUsoDESCR_RIU: TStringField;
    dsARest: TDataSource;
    cdsARest: TClientDataSet;
    dspARest: TDataSetProvider;
    sqlARest: TSQLDataSet;
    sqlARestCOD_EMP_ART: TIntegerField;
    sqlARestCOD_ART: TIntegerField;
    sqlARestCOD_RRR_ART: TStringField;
    sqlARestCOD_INDRESTUSO_ART: TStringField;
    sqlARestAREA_UTIL_ART: TFloatField;
    sqlARestLOGIN_INC_ART: TStringField;
    sqlARestDTA_INC_ART: TSQLTimeStampField;
    sqlARestLOGIN_ALT_ART: TStringField;
    sqlARestDTA_ALT_ART: TSQLTimeStampField;
    sqlARestDESCR_RIU: TStringField;
    sqlCadastroCOD_EMP_RRR: TIntegerField;
    sqlCadastroCOD_RRR: TStringField;
    sqlCadastroMATRIC_RRR: TStringField;
    sqlCadastroDTCAD_RRR: TDateField;
    sqlCadastroCOD_STR_RRR: TStringField;
    sqlCadastroCOD_CLASS_RRR: TIntegerField;
    sqlCadastroCOD_COB_RRR: TIntegerField;
    sqlCadastroCOD_CNT_RRR: TStringField;
    sqlCadastroDEBAU_RRR: TStringField;
    sqlCadastroCOD_BCO_RRR: TIntegerField;
    sqlCadastroCOD_BANCO_RRR: TStringField;
    sqlCadastroCOD_AGEN_RRR: TStringField;
    sqlCadastroCOD_CONTA_RRR: TStringField;
    sqlCadastroDTDEBAU_INC_RRR: TDateField;
    sqlCadastroDTDEBAU_IXC_RRR: TDateField;
    sqlCadastroPROPRIEDADE_RRR: TStringField;
    sqlCadastroFONEP_RRR: TStringField;
    sqlCadastroRESPONSA_RRR: TStringField;
    sqlCadastroINSCRP_RRR: TStringField;
    sqlCadastroINCRA_RRR: TStringField;
    sqlCadastroAREAH_RRR: TFloatField;
    sqlCadastroAREAE_RRR: TFloatField;
    sqlCadastroAREAM_RRR: TFloatField;
    sqlCadastroDISTANCIA_RRR: TFloatField;
    sqlCadastroPONTOS_RRR: TFloatField;
    sqlCadastroVVENAL_RRR: TFloatField;
    sqlCadastroCOD_LOG_RRR: TIntegerField;
    sqlCadastroLOGRA_RRR: TStringField;
    sqlCadastroCOMPL_RRR: TStringField;
    sqlCadastroOBSLOGRA_RRR: TMemoField;
    sqlCadastroCOD_TIPE_RRR: TIntegerField;
    sqlCadastroTIPOLOGE_RRR: TStringField;
    sqlCadastroCOD_TITE_RRR: TIntegerField;
    sqlCadastroTITULOLOGE_RRR: TStringField;
    sqlCadastroCOD_LOGE_RRR: TIntegerField;
    sqlCadastroLOGRAE_RRR: TStringField;
    sqlCadastroCOD_BAIE_RRR: TIntegerField;
    sqlCadastroBAIRROE_RRR: TStringField;
    sqlCadastroNUMEROE_RRR: TStringField;
    sqlCadastroCEPE_RRR: TStringField;
    sqlCadastroCOMPLEE_RRR: TStringField;
    sqlCadastroCOD_CIDE_RRR: TStringField;
    sqlCadastroUFE_RRR: TStringField;
    sqlCadastroHISTO_RRR: TMemoField;
    sqlCadastroMUNCARTORIO_RRR: TStringField;
    sqlCadastroUFCARTORIO_RRR: TStringField;
    sqlCadastroDTAREG_RRR: TDateField;
    sqlCadastroOFICIO_RR: TStringField;
    sqlCadastroMATRICULA_RRR: TStringField;
    sqlCadastroREGISTRO_RRR: TStringField;
    sqlCadastroLIVRO_RRR: TStringField;
    sqlCadastroAREATOTREG_RRR: TFloatField;
    sqlCadastroCOD_FOBTENCAO_RRR: TStringField;
    sqlCadastroCOD_ORIGLITIGIO_RRR: TStringField;
    sqlCadastroCOD_DESTIMOV_RRR: TStringField;
    sqlCadastroCOD_TPZONAESP_RRR: TStringField;
    sqlCadastroAREASEMUSO_RRR: TFloatField;
    sqlCadastroPESSOAS_RRR: TIntegerField;
    sqlCadastroFAMILIAS_RRR: TIntegerField;
    sqlCadastroASSALARIADOSCCART_RRR: TIntegerField;
    sqlCadastroASSALARIADOSSCART_RRR: TIntegerField;
    sqlCadastroMOBRAFAMILIAR_RRR: TIntegerField;
    sqlCadastroVTOTIMOVEL_RRR: TFloatField;
    sqlCadastroVTOTBENF_RRR: TFloatField;
    sqlCadastroVTOTCULTURAS_RR: TFloatField;
    sqlCadastroVTOTTERRANUA_RRR: TFloatField;
    sqlCadastroCOD_FOBPOSSEJT_RRR: TStringField;
    sqlCadastroDTPOSSEJT_RRR: TDateField;
    sqlCadastroAREAPOSSEJT_RRR: TFloatField;
    sqlCadastroCOD_FOBPOSSESO_RRR: TStringField;
    sqlCadastroDTPOSSESO_RRR: TDateField;
    sqlCadastroAREAPOSSESO_RRR: TFloatField;
    sqlCadastroDTA_INC_RRR: TSQLTimeStampField;
    sqlCadastroLOGIN_INC_RRR: TStringField;
    sqlCadastroDTA_ALT_RRR: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_RRR: TStringField;
    sqlCadastroDESCR_RCL: TStringField;
    sqlCadastroNOME_BCO: TStringField;
    sqlCadastroDESCRI_COB: TStringField;
    sqlCadastroNOME_CNT: TStringField;
    sqlCadastroRG_CNT: TStringField;
    sqlCadastroCNPJ_CNT: TStringField;
    sqlCadastroFONE_CNT: TStringField;
    sqlCadastroEMAIL_CNT: TStringField;
    sqlCadastroLOGRAPRO: TStringField;
    sqlCadastroTPLOGRENT: TStringField;
    sqlCadastroTTLOGRENT: TStringField;
    sqlCadastroLOGRAENT: TStringField;
    sqlCadastroBIRROENT: TStringField;
    sqlCadastroCIDENT: TStringField;
    sqlCadastroDESCR_RTZ: TStringField;
    sqlCadastroDESCR_RDI: TStringField;
    sqlCadastroDESCR_ROL: TStringField;
    sqlCadastroFOBTENCAO: TStringField;
    sqlCadastroFOBTENCAOJT: TStringField;
    sqlCadastroFOBTENCAOSO: TStringField;
    Documentos1: TMenuItem;
    tbCRT: TRzTabSheet;
    Panel24: TPanel;
    Label139: TLabel;
    btnADDcrt: TSpeedButton;
    btnDELcrt: TSpeedButton;
    btnCRT: TSpeedButton;
    btnIMPcrt: TSpeedButton;
    mskCRT: TMaskEdit;
    mskDCR: TMaskEdit;
    mskDCRT: TMaskEdit;
    mskVALOR: TMaskEdit;
    mskDDESDO: TMaskEdit;
    DBGrid15: TDBGrid;
    sqlCRT: TSQLDataSet;
    dspCRT: TDataSetProvider;
    cdsCRT: TClientDataSet;
    dsCRT: TDataSource;
    sqlCRTCOD_EMP_RR3: TIntegerField;
    sqlCRTCOD_RR3: TIntegerField;
    sqlCRTCOD_RRR_RR3: TStringField;
    sqlCRTCOD_CRT_RR3: TStringField;
    sqlCRTCOD_DCR_RR3: TStringField;
    sqlCRTVALOR_RR3: TStringField;
    sqlCRTLOGIN_INC_RR3: TStringField;
    sqlCRTDTA_INC_RR3: TSQLTimeStampField;
    sqlCRTLOGIN_ALT_RR3: TStringField;
    sqlCRTDTA_ALT_RR3: TSQLTimeStampField;
    sqlCRTDESCRI_RR1: TStringField;
    sqlCRTDESCRI_RR2: TStringField;
    sqlCadastroCCIR_RRR: TStringField;
    sqlCadastroNIRF_RRR: TStringField;
    sqlCadastroFOLHA_RRR: TStringField;
    Label50: TLabel;
    DBEdit54: TDBEdit;
    TabSheet1: TRzTabSheet;
    PHis: TPanel;
    btnNovoHis: TRzBitBtn;
    btnAlteraHis: TRzBitBtn;
    btnExcluiHis: TRzBitBtn;
    DBGrid12: TDBGrid;
    DBMemo4: TDBMemo;
    sqlHisto: TSQLDataSet;
    dspHisto: TDataSetProvider;
    cdsHisto: TClientDataSet;
    dsHisto: TDataSource;
    popDWG: TPopupMenu;
    VisualizarImagem1: TMenuItem;
    cdsCRTCOD_EMP_RR3: TIntegerField;
    cdsCRTCOD_RR3: TIntegerField;
    cdsCRTCOD_RRR_RR3: TStringField;
    cdsCRTCOD_CRT_RR3: TStringField;
    cdsCRTCOD_DCR_RR3: TStringField;
    cdsCRTVALOR_RR3: TStringField;
    cdsCRTLOGIN_INC_RR3: TStringField;
    cdsCRTDTA_INC_RR3: TSQLTimeStampField;
    cdsCRTLOGIN_ALT_RR3: TStringField;
    cdsCRTDTA_ALT_RR3: TSQLTimeStampField;
    cdsCRTDESCRI_RR1: TStringField;
    cdsCRTDESCRI_RR2: TStringField;
    DBEdit67: TDBEdit;
    Label76: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    Label77: TLabel;
    DBEdit69: TDBEdit;
    SpeedButton14: TSpeedButton;
    DBEdit71: TDBEdit;
    sqlCadastroCOD_ZNA_RRR: TIntegerField;
    sqlCadastroDESCR_RZN: TStringField;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    EvDBNumEdit5: TEvDBNumEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    qrx2: TSQLQuery;
    dsSocios: TDataSource;
    dspSocios: TDataSetProvider;
    sqlSocios: TSQLDataSet;
    cdsSocios: TClientDataSet;
    sqlSociosCOD_EMP_SOC: TIntegerField;
    sqlSociosCOD_RRR_SOC: TStringField;
    sqlSociosCOD_CNT_SOC: TStringField;
    sqlSociosQUALIFIC_SOC: TStringField;
    sqlSociosDTINI_SOC: TDateField;
    sqlSociosDTFIM_SOC: TDateField;
    sqlSociosNOME_CNT: TStringField;
    sqlSociosCNPJ_CNT: TStringField;
    sqlSociosRG_CNT: TStringField;
    cdsSociosCOD_EMP_SOC: TIntegerField;
    cdsSociosCOD_RRR_SOC: TStringField;
    cdsSociosCOD_CNT_SOC: TStringField;
    cdsSociosQUALIFIC_SOC: TStringField;
    cdsSociosDTINI_SOC: TDateField;
    cdsSociosDTFIM_SOC: TDateField;
    cdsSociosNOME_CNT: TStringField;
    cdsSociosCNPJ_CNT: TStringField;
    cdsSociosRG_CNT: TStringField;
    PGCNT: TRzPageControl;
    TabSheet12: TRzTabSheet;
    Panel27: TPanel;
    Label99: TLabel;
    Panel28: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    GridSocio: TDBGrid;
    Panel29: TPanel;
    Label19: TLabel;
    btnContrib: TSpeedButton;
    Label23: TLabel;
    Label20: TLabel;
    Label29: TLabel;
    btnIE: TSpeedButton;
    Label9: TLabel;
    btnEmail: TSpeedButton;
    Bevel1: TBevel;
    Label59: TLabel;
    Label63: TLabel;
    Label90: TLabel;
    Label92: TLabel;
    Label91: TLabel;
    btnBanco: TSpeedButton;
    Label53: TLabel;
    DBEdit25: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    btnTransfere: TRzBitBtn;
    DBEdit2: TDBEdit;
    EvDBDateEdit18: TEvDBDateEdit;
    EvDBDateEdit19: TEvDBDateEdit;
    DBEdit55: TDBEdit;
    DBCheckBox1: TEvDBCheckBox;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    Image1: TImage;
    btnAnexar: TRzBitBtn;
    popAnexo: TPopupMenu;
    AnexarFotos1: TMenuItem;
    Documentos2: TMenuItem;
    sqlCadastroINDICE_IMG_RRR: TIntegerField;
    sqlCadastroINDICE_DOC_RRR: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4TitleClick(Column: TColumn);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure DBGrid7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid7TitleClick(Column: TColumn);
    procedure DBGrid9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid9TitleClick(Column: TColumn);
    procedure btnEmailClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEdit62Exit(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure DBEdit65Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure btnSetVencClick(Sender: TObject);
    procedure DBEdit25Enter(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure btnContribClick(Sender: TObject);
    procedure btnIEClick(Sender: TObject);
    procedure btnTransfereClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit55Exit(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure btnLogrClick(Sender: TObject);
    procedure DBEdit103Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit105Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure btnLogr1Click(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure btnBai1Click(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure btnCid1Click(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnPesqAvancadaClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure cdsRecAfterOpen(DataSet: TDataSet);
    procedure msk11Exit(Sender: TObject);
    procedure btnCobrancaClick(Sender: TObject);
    procedure dspCadastroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure dspGranjAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspGranjBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspGranjGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspPastoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspPastoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspPastoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspPecuariaAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspPecuariaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspPecuariaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspProdIsoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspProdIsoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspProdIsoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspProRotAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspProRotBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspProRotGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspRecGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspAOutUsoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspAOutUsoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspAOutUsoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspARestAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspARestBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspARestGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspRecAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspRecBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsGranjAfterOpen(DataSet: TDataSet);
    procedure cdsPastoAfterOpen(DataSet: TDataSet);
    procedure cdsPecuariaAfterOpen(DataSet: TDataSet);
    procedure cdsProdIsoAfterOpen(DataSet: TDataSet);
    procedure cdsProRotAfterOpen(DataSet: TDataSet);
    procedure cdsAOutUsoAfterOpen(DataSet: TDataSet);
    procedure cdsARestAfterOpen(DataSet: TDataSet);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure msk1Exit(Sender: TObject);
    procedure msk1Enter(Sender: TObject);
    procedure msk1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnFuncoesClick(Sender: TObject);
    procedure ConsultadeDvida1Click(Sender: TObject);
    procedure ConsultadeLanamento1Click(Sender: TObject);
    procedure CompensaodeValores1Click(Sender: TObject);
    procedure EstornaCompensaodeValores1Click(Sender: TObject);
    procedure CancelamentodeDvida1Click(Sender: TObject);
    procedure EstornaCancelamentodeDvida1Click(Sender: TObject);
    procedure ReceitasDiversas1Click(Sender: TObject);
    procedure ITBI1Click(Sender: TObject);
    procedure EmissodeCertides1Click(Sender: TObject);
    procedure EmissodeCarne1Click(Sender: TObject);
    procedure FichaCadastral2Click(Sender: TObject);
    procedure ExtratoCompleto1Click(Sender: TObject);
    procedure ExtratoSimplificado1Click(Sender: TObject);
    procedure ListagemdosDbitosCompleta1Click(Sender: TObject);
    procedure ListagemdosDbitoSimplificada1Click(Sender: TObject);
    procedure ClculoAnual1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mskCRTExit(Sender: TObject);
    procedure mskCRTKeyPress(Sender: TObject; var Key: Char);
    procedure mskDCRExit(Sender: TObject);
    procedure btnCRTClick(Sender: TObject);
    procedure mskVALORExit(Sender: TObject);
    procedure btnADDcrtClick(Sender: TObject);
    procedure btnDELcrtClick(Sender: TObject);
    procedure btnIMPcrtClick(Sender: TObject);
    procedure cdsCRTAfterOpen(DataSet: TDataSet);
    procedure cdsCRTNewRecord(DataSet: TDataSet);
    procedure dspCRTAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspCRTBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspCRTGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure DBGrid15CellClick(Column: TColumn);
    procedure btnNovoHisClick(Sender: TObject);
    procedure btnAlteraHisClick(Sender: TObject);
    procedure btnExcluiHisClick(Sender: TObject);
    procedure DBGrid12CellClick(Column: TColumn);
    procedure DBEdit69Exit(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure EvDBNumEdit1Exit(Sender: TObject);
    procedure EvDBNumEdit2Exit(Sender: TObject);
    procedure EvDBNumEdit3Exit(Sender: TObject);
    procedure EvDBNumEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dspSociosAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure cdsSociosNewRecord(DataSet: TDataSet);
    procedure GridSocioColExit(Sender: TObject);
    procedure GridSocioEditButtonClick(Sender: TObject);
    procedure GridSocioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridSocioTitleClick(Column: TColumn);
    procedure dspSociosBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure DBGrid8TitleClick(Column: TColumn);
    procedure DBGrid8DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid12TitleClick(Column: TColumn);
    procedure DBGrid6TitleClick(Column: TColumn);
    procedure GridSocioEnter(Sender: TObject);
    procedure dspSociosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
    procedure dspSociosUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure btnAnexarClick(Sender: TObject);
    procedure AnexarFotos1Click(Sender: TObject);
    procedure Documentos2Click(Sender: TObject);
  private
    { Private declarations }
     function AchouObjeto(vNome : string) : boolean;
     function MoverObjeto(vNome, vTipo : string) : boolean;
     function VerificaCamposObrigatorios : boolean;
    procedure VoltaObjetos;
    procedure LocalizaCampo(campo : string);
    function ArqvANEXOJaExiste(Arquivo: string): boolean;
    function ArqvFOTOJaExiste(Arquivo: string): boolean;
  public
    { Public declarations }
    NovoAtend, RUR : String; // Verifica se é uma novo imovel vinda do Atendimento
    procedure ClicaGrid;
     function VerDividaRural(Empresa, Cadastro : string) : boolean;
  end;

var
  FCadRural: TFCadRural;
  vClipbrd, Condicao : string;
  UltRec, Erros, CodCancelado, ultCRT, ultANX, ultFOT : integer;
  IgnoraSegmento, IncF2 : Boolean;
  idISO, idROT, idANI, idPST, idGRN, idOUT, idRES : Integer;
  vrALQHEC : Double;
  cPrin    : TGeral;

implementation

uses UDM, UPrin, Funcoes, TrataErros, UConsSite, UEmail, UCadTransfRR, URelRolRR,
     UConsultaLancamentos, UClasse_Debito, UCompensaValores, UDigitalizaDoc, UAguardeCopiaArq,
     UEstornaCompensaValores, UEstornaBaixaDividas, URelGuiasRR, URelExtrato,
     URelListagemDebitos, UBaixaDividas, UCadGeral, UCadITBI, UConsCert,
     UCalcRural, UConsProVegISO, UConsProAni, UConsRRAreas, UConsDocumentos, UClasse_Arquivos,
     UClasse_PesqRur, UClasse_PesqPrin, UCadHistoricos, UCadContribuintes;

{$R *.dfm}

function TFCadRural.AchouObjeto(vNome : string) : boolean;
var cp : TComponent;
begin
  result := false;
  cp := FindComponent(vNome);
  if cp <> Nil then begin
    TWinControl(cp).SetFocus;
    result := true;
  end;
end;

function TFCadRural.MoverObjeto(vNome, vTipo : string) : boolean;
var cp : TComponent;
begin
  result := false;
  cp := FindComponent(vNome);
  if cp <> Nil then begin
    //if vTipo = 'TPageControl' then TPageControl(cp).ActivePageIndex := 0;
    //if vTipo = 'TTabSheet' then TPageControl(TTabSheet(cp).Parent).ActivePage := TTabSheet(cp);
    if vTipo = 'TRzPageControl' then begin
      if TRzPageControl(cp).Parent.ClassType = TRzTabSheet then
        TRzPageControl(TRzTabSheet(TRzPageControl(cp).Parent).Parent).ActivePageIndex := 0;

      TRzPageControl(cp).ActivePageIndex := 0;
    end;
    if vTipo = 'TRzTabSheet' then TRzPageControl(TRzTabSheet(cp).Parent).ActivePage := TRzTabSheet(cp);
    result := true;
  end;
end;

procedure TFCadRural.LocalizaCampo(campo : string);
var i : integer;
    ok : boolean;
begin
  ok := false;
  for i := 0 to FCadRural.Componentcount-1 do begin
    MoverObjeto(Components[i].Name, Components[i].ClassName);
    if FCadRural.Components[i] Is TDBEdit then begin
      if TDBEdit(FCadRural.Components[i]).DataField = campo then begin
        ok := AchouObjeto(TDBEdit(FCadRural.Components[i]).Name);
        break;
      end;
    end;
  end;
  if not ok then VoltaObjetos;
end;

function TFCadRural.VerificaCamposObrigatorios : boolean;
var campo : string;
begin
  Result := True;

  dm.cdsAux.Close;
  dm.sqlAux.CommandText := 'select IDCAMPO_ROB, DESCRCAMPO_ROB '+
                           'from RR_CAMPOSOBRIGATORIOS';
  dm.cdsAux.Open;
  if not dm.cdsAux.IsEmpty then begin
    while not dm.cdsAux.Eof do begin
      campo := dm.cdsAux.FieldByName('IDCAMPO_ROB').AsString;
      if trim(cdsCadastro.FieldByName(campo).AsString) = '' then begin
        LocalizaCampo(campo);
        dm.msg.MessageDlg('Atenção !!!'+#13+
                       dm.cdsAux.FieldByName('DESCRCAMPO_ROB').AsString,
                       mtWarning, [mbok], 0);
        Result := False;
        exit;
      end;
      dm.cdsAux.Next;
    end;
  end;
  dm.cdsAux.Close;
end;

procedure TFCadRural.msk11Exit(Sender: TObject);
var Pesq : TPesq_CobRural;
begin
  inherited;
  If trim(TMaskEdit(sender).text) <> '' Then begin
    Pesq := TPesq_CobRural.Create;
    Pesq.PesquisaCobRural(TMaskEdit(sender).text);

    TMaskEdit(sender).text := Pesq.Codigo;
    DBText2.Caption        := Pesq.Descricao;
    FreeAndNil(Pesq);
  end
  else begin
    TMaskEdit(sender).text := '';
    DBText2.Caption        := '';
  end;
end;

procedure TFCadRural.msk1Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  If trim(TMaskEdit(Sender).Text)<>'' Then TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFCadRural.msk1Exit(Sender: TObject);
begin
  inherited;
  If trim(msk1.Text) <> '' Then
    msk1.Text := MontaMascara(TMaskEdit(Sender).Text, 'RUR', SIA_Empresa);
end;

procedure TFCadRural.msk1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbright then
    vClipbrd := TMaskEdit(Sender).Text;
end;

procedure TFCadRural.mskCRTExit(Sender: TObject);
begin
  inherited;
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

  if (trim(mskCRT.Text) <> '') then
    mskCRT.Text := lpad(mskCRT.Text,'0',4);
end;

procedure TFCadRural.mskCRTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13]) then key := #0;
end;

procedure TFCadRural.mskDCRExit(Sender: TObject);
var Pesq : TPesq_RR_CAD_DESDOCRT;
begin
  inherited;
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

  if (trim(mskCRT.Text) = '') then exit;
{    dm.msg.MessageDlg('Informe código de Característica.',mtInformation,[mbok],0);
    mskCRT.SetFocus;
    exit;
  end;}

  if (trim(mskDCR.Text) <> '') then begin
    mskCRT.Text := lpad(trim(mskCRT.Text),'0',4);
    mskDCR.Text := lpad(trim(mskDCR.Text),'0',4);

    Pesq := TPesq_RR_CAD_DESDOCRT.Create;
    Pesq.PesquisaRR_CAD_DESDOCRT(trim(mskCRT.Text), trim(mskDCR.Text));
    mskCRT.Text    := vartostr(Pesq.COD_CRT_RR2);
    mskDCRT.Text   := vartostr(Pesq.DESCRI_CRT);
    mskDCR.Text    := vartostr(Pesq.COD_RR2);
    mskDDESDO.Text := vartostr(Pesq.DESCRI_RR2);
    FreeAndNil(Pesq);

    mskVALOR.SetFocus;
  end;
end;

procedure TFCadRural.mskVALORExit(Sender: TObject);
begin
  inherited;
  if ((trim(mskCRT.Text) <> '') and (trim(mskDCR.Text) <> '')) then btnADDcrt.Click;
end;

procedure TFCadRural.ReceitasDiversas1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then Exit;
  Application.CreateForm(TFCadDiversas, FCadDiversas);
  if dm.Permissao(FCadDiversas, 'DIV_FCadDiversas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadDiversas.NovoAtend:= 'NOVO';
    FCadDiversas.CAMPO1 := cdsCadastro.FieldValues['COD_CNT_RRR'];
    FCadDiversas.CAMPO2 := cdsCadastro.FieldValues['NOME_CNT'];
    FCadDiversas.CAMPO3 := 4;
    FCadDiversas.CAMPO4 := cdsCadastro.FieldValues['COD_RRR'];
    FormBackShowModal(FCadDiversas);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCadDiversas.Free;
end;

procedure TFCadRural.SpeedButton10Click(Sender: TObject);
var Pesq : TPesq_RR_TPORIGLITIGIO;
begin
  inherited;
  Pesq := TPesq_RR_TPORIGLITIGIO.Create;
  if Pesq.BotaoRR_TPORIGLITIGIO then begin
    cdsCadastro.FieldValues['COD_ORIGLITIGIO_RRR'] := Pesq.COD_ROL;
    cdsCadastro.FieldValues['DESCR_ROL']           := Pesq.DESCR_ROL;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton11Click(Sender: TObject);
var Pesq : TPesq_RR_TPFORMAOB;
begin
  inherited;
  Pesq := TPesq_RR_TPFORMAOB.Create;
  if Pesq.BotaoRR_TPFORMAOB then begin
    cdsCadastro.FieldValues['COD_FOBPOSSEJT_RRR'] := Pesq.COD_RFO;
    cdsCadastro.FieldValues['FOBTENCAOJT']        := Pesq.DESCR_RFO;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  DBEdit33.Text := '';
  DBEdit27.Text := '';
  DBEdit32.Text := '';
  DBEdit34.Text := '';
  DBEdit31.Text := '';
  if not cdsRec.IsEmpty then cdsRec.Delete;
end;

procedure TFCadRural.SpeedButton13Click(Sender: TObject);
var Pesq : TPesq_RR_TPFORMAOB;
begin
  inherited;
  Pesq := TPesq_RR_TPFORMAOB.Create;
  if Pesq.BotaoRR_TPFORMAOB then begin
    cdsCadastro.FieldValues['COD_FOBPOSSESO_RRR'] := Pesq.COD_RFO;
    cdsCadastro.FieldValues['FOBTENCAOSO']        := Pesq.DESCR_RFO;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton14Click(Sender: TObject);
var Pesq : TPesq_ZonaFiscal_RR;
begin
  inherited;

  Pesq := TPesq_ZonaFiscal_RR.Create;
  if Pesq.BotaoRR_ZONAFISCAL then begin
    cdsCadastro.FieldValues['COD_ZNA_RRR'] := Pesq.COD_RZN;
    cdsCadastro.FieldValues['DESCR_RZN']   := Pesq.DESCR_RZN;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton1Click(Sender: TObject);
var Pesq : TPesq_Classificacao_RR;
begin
  inherited;
  Pesq := TPesq_Classificacao_RR.Create;
  if Pesq.BotaoClassificacaoRR then begin
    cdsCadastro.FieldValues['COD_CLASS_RRR'] := Pesq.Codigo;
    cdsCadastro.FieldValues['DESCR_RCL']     := Pesq.Descricao;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton2Click(Sender: TObject);
var Pesq : TPesq_CobRural;
begin
  inherited;
  Pesq := TPesq_CobRural.Create;
  if Pesq.BotaoCobRural then begin
    cdsCadastro.fieldbyname('COD_COB_RRR').Value := Pesq.Codigo;
    cdsCadastro.fieldbyname('DESCRI_COB').Value  := Pesq.Descricao;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton3Click(Sender: TObject);
var Pesq : TPesq_TabCalculo_RR;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if cdsCadastro.FieldByName('COD_RRR').IsNull then begin
    dm.msg.MessageDlg('Informe um Cadastro.',mtInformation,[mbok],0);
    DBEdit1.SetFocus;
    exit;
  end;

  if not cdsRec.Active then cdsRec.Open;
  cdsRec.Insert;
  cdsRec.FieldByName('COD_EMP_RCT').Value   := SIA_Empresa;
  cdsRec.FieldByName('COD_RCT').Value       := UltRec + 1;
  cdsRec.FieldByName('COD_RRR_RCT').Value   := cdsCadastro.FieldByName('COD_RRR').Value;
  cdsRec.FieldByName('COD_REC_RCT').Value   := DBEdit33.Text;
  cdsRec.FieldByName('COD_DDO_RCT').Value   := DBEdit27.Text;

  if trim(DBEdit31.Text)='' then
    cdsRec.FieldByName('QTD_RCT').Value       := '1'
  else
    cdsRec.FieldByName('QTD_RCT').Value       := DBEdit31.Text;

  cdsRec.FieldByName('LOGIN_INC_RCT').Value := SIA_Usuario;
  cdsRec.FieldByName('DTA_INC_RCT').Value   := DataBanco;

  Pesq := TPesq_TabCalculo_RR.Create;
  Pesq.PesquisaTabCalculo(DBEdit33.Text, DBEdit27.Text);
  cdsRec.FieldByName('DESCRI_RCA').Value    := Pesq.Descr;
  cdsRec.FieldByName('VALOR_RCA').Value     := Pesq.Valor;
  FreeAndNil(Pesq);

  inc(UltRec);
  cdsRec.Post;

  DBEdit33.Text := '';
  DBEdit27.Text := '';
  DBEdit32.Text := '';
  DBEdit34.Text := '';
  DBEdit31.Text := '';

  DBEdit33.SetFocus;
end;

procedure TFCadRural.SpeedButton4Click(Sender: TObject);
var Pesq : TPesq_TPLogr;
begin
  inherited;
  Pesq := TPesq_TPLogr.Create;
  if Pesq.BotaoTPLogr then begin
    cdsCadastro.fieldbyname('COD_TIPE_RRR').Value := Pesq.Codigo;
    cdsCadastro.fieldbyname('TIPOLOGE_RRR').Value := Pesq.Abrev;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton5Click(Sender: TObject);
var Pesq : TPesq_TitLogr;
begin
  inherited;
  Pesq := TPesq_TitLogr.Create;
  if Pesq.BotaoTitLogr then begin
    cdsCadastro.fieldbyname('COD_TITE_RRR').Value   := Pesq.Codigo;
    cdsCadastro.fieldbyname('TITULOLOGE_RRR').Value := Pesq.Abrev;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton6Click(Sender: TObject);
var Pesq : TPesq_TabCalculo_RR;
begin
  inherited;
  Pesq := TPesq_TabCalculo_RR.Create;
  if Pesq.BotaoTabCalculo then begin
    DBEdit33.Text := VarToStr(Pesq.Receita);
    DBEdit27.Text := VarToStr(Pesq.Desdobro);
    DBEdit34.Text := VarToStr(Pesq.Descr);
    DBEdit32.Text := VarToStr(Pesq.Valor);
    if copy(VarToStr(Pesq.TPCalc),1,2)='02' then begin
      dbedit31.Visible:=true;
      label11.Visible:=true;
    end
    else begin
      dbedit31.Visible:=false;
      label11.Visible:=false;
    end;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton7Click(Sender: TObject);
var Pesq : TPesq_RR_TPZONAESPECIAL;
begin
  inherited;
  Pesq := TPesq_RR_TPZONAESPECIAL.Create;
  if Pesq.BotaoRR_TPZONAESPECIAL then begin
    cdsCadastro.FieldValues['COD_TPZONAESP_RRR'] := Pesq.COD_RTZ;
    cdsCadastro.FieldValues['DESCR_RTZ']         := Pesq.DESCR_RTZ;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton8Click(Sender: TObject);
var Pesq : TPesq_RR_TPFORMAOB;
begin
  inherited;
  Pesq := TPesq_RR_TPFORMAOB.Create;
  if Pesq.BotaoRR_TPFORMAOB then begin
    cdsCadastro.FieldValues['COD_FOBTENCAO_RRR'] := Pesq.COD_RFO;
    cdsCadastro.FieldValues['FOBTENCAO']         := Pesq.DESCR_RFO;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.SpeedButton9Click(Sender: TObject);
var Pesq : TPesq_RR_TPDESTIMV;
begin
  inherited;
  Pesq := TPesq_RR_TPDESTIMV.Create;
  if Pesq.BotaoRR_TPDESTIMV then begin
    cdsCadastro.FieldValues['COD_DESTIMOV_RRR'] := Pesq.COD_RDI;
    cdsCadastro.FieldValues['DESCR_RDI']        := Pesq.DESCR_RDI;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.VoltaObjetos;
var i : integer;
begin
  for i := FCadRural.Componentcount-1 downto 0 do begin
    //if Components[I].ClassType = TPageControl then TPageControl(Components[I]).ActivePageIndex := 0;
    if Components[I].ClassType = TRzPageControl then TRzPageControl(Components[I]).ActivePageIndex := 0;
  end;
end;

procedure TFCadRural.ListagemdosDbitosCompleta1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then Exit;

  Application.CreateForm(TFRelListagemDebitos,FRelListagemDebitos);
  if dm.Permissao(FRelListagemDebitos, 'FIN_FRelListagemDebitos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FRelListagemDebitos.mkCadastro1.Text  := cdsCadastro.fieldByName('COD_RRR').AsString;
    FRelListagemDebitos.mkReferencia.text := formatdatetime('dd/mm/yyyy', now);;
    FRelListagemDebitos.rdTipo.ItemIndex  := 0;
    FRelListagemDebitos.comboModulo.Value := '4'; //  IMOBILIARIO RURAL';
    FormBackShowModal(FRelListagemDebitos);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FRelListagemDebitos.Free;
end;

procedure TFCadRural.ListagemdosDbitoSimplificada1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then Exit;

  Application.CreateForm(TFRelListagemDebitos,FRelListagemDebitos);
  if dm.Permissao(FRelListagemDebitos, 'FIN_FRelListagemDebitos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FRelListagemDebitos.mkCadastro1.Text   := cdsCadastro.fieldByName('COD_RRR').AsString;
    FRelListagemDebitos.mkReferencia.text  := formatdatetime('dd/mm/yyyy', now);;
    FRelListagemDebitos.rdTipo.ItemIndex   := 1;
    FRelListagemDebitos.comboModulo.Value  := '4'; //  IMOBILIARIO RURAL';
    FormBackShowModal(FRelListagemDebitos);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FRelListagemDebitos.Free;
end;

function TFCadRural.VerDividaRural(Empresa, Cadastro : string) : boolean;
var qrx : TSQLQuery;
    cod : string;
begin
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'Select FI_DIVIDA.COD_DIV '+
                  'from FI_DIVIDA '+
                  'where FI_DIVIDA.COD_EMP_DIV = '+ Empresa +
                   ' and FI_DIVIDA.COD_MOD_DIV = 4 '+
                   ' and FI_DIVIDA.COD_CAD_DIV = '+''''+ Cadastro +'''';
  qrx.Open;
  if qrx.IsEmpty then Result := False
  else begin
    cod := '';
    while not qrx.Eof do begin
     cod := cod + qrx.FieldByName('COD_DIV').AsString +',';
     qrx.Next;
    end;
    Result := True;
    dm.msg.MessageDlg('Atenção !!!'+#13+
                   'Para Excluir uma Propriedade é necessário que o mesmo não tenha movimentações registradas.'+#13+
                   'Caso possua algum débito em aberto ou pago, deve-se primeiro eliminá-lo.'+#13+
                   'Dividas Encontradas : '+ cod, mtWarning, [mbok], 0);
  end;
  FreeAndNil(qrx);
end;

procedure TFCadRural.ClculoAnual1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then Exit;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  Application.CreateForm(TFCalcRural, FCalcRural);
  if dm.Permissao(FCalcRural, 'RUR_FCalcRural', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCalcRural.edINI.text:=cdsCadastro.fieldByName('COD_RRR').AsString;
    FCalcRural.edFIM.text:=cdsCadastro.fieldByName('COD_RRR').AsString;
    FCalcRural.EdRef.text:=Sia_Exercicio;
    FCalcRural.chkExp.Checked := True;
    FormBackShowModal(FCalcRural);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCalcRural.Free;
end;

procedure TFCadRural.ClicaGrid;
begin
  if cdsVis.IsEmpty then
    exit;

  Condicao := 'ClicaGrid';

  if (NovoAtend <> 'Alterar') and (NovoAtend <> 'Consulta') then
    RUR := cdsVis.FieldValues['cod_rrr'];

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := RUR;
  cdsCadastro.Open;

  cdsCRT.Close;
  cdsCRT.Open;

  cdsHisAlt.Close;
  sqlHisAlt.Params.ParamValues['empresa']  := strtoint(SIA_Empresa);
  sqlHisAlt.Params.ParamValues['rural']    := RUR;
  cdsHisAlt.Open;

  cdsTransf.Close;
  sqlTransf.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlTransf.Params.ParamValues['cod']     := RUR;
  cdsTransf.Open;

  cdsSocios.Close;
  sqlSocios.Params.ParamValues['empresa']  := strtoint(SIA_Empresa);
  sqlSocios.Params.ParamValues['cod']      := RUR;
  cdsSocios.Open;

  cdsRec.Close;
  cdsRec.Open;

  cdsProdIso.Close;
  cdsProdIso.Open;

  cdsProRot.Close;
  cdsProRot.Open;

  cdsPasto.Close;
  cdsPasto.Open;

  cdsPecuaria.Close;
  cdsPecuaria.Open;

  cdsGranj.Close;
  cdsGranj.Open;

  cdsAOutUso.Close;
  cdsAOutUso.Open;

  cdsARest.Close;
  cdsARest.Open;

  cdsCRT.Close;
  cdsCRT.Open;

  dm.cdsUF.Close;
  dm.cdsUF.Open;
end;

procedure TFCadRural.Colar1Click(Sender: TObject);
begin
  keybd_event(VK_CONTROL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
  keybd_event(86, 0, 0, 0);
  keybd_event(VK_CONTROL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
end;

procedure TFCadRural.CompensaodeValores1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then Exit;

  Application.CreateForm(TFCompensaValores, FCompensaValores);
  if dm.Permissao(FCompensaValores, 'FIN_FCompensaValores', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCompensaValores.comboModulo.Value   := '4'; //  IMOBILIÁRIO RURAL';
    FCompensaValores.comboModulo.Enabled := false;
    FCompensaValores.mkCadastro.Text     := cdsCadastro.FieldByName('COD_RRR').AsString;
    FCompensaValores.mkData.text         := formatdatetime('dd/mm/yyyy', now);//data de refrencia
    FCompensaValores.mkCadastroExit(Nil);
    FormBackShowModal(FCompensaValores);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCompensaValores.Free;
end;

procedure TFCadRural.ConsultadeDvida1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then
    Exit;

	AbreConsultaDebito(cdsCadastro.fieldByName('COD_RRR').AsString,       // codigo
                     '',                                                // Divida
                     '4',                                               // Modulo
                     False,                                             // Bloqueia Desconto/Parcelamento
                     False                                              // TelaCheia
                     );
end;

procedure TFCadRural.ConsultadeLanamento1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then Exit;

  Application.CreateForm(TFConsultaLancamento, FConsultaLancamento);
  FConsultaLancamento.comboModulo.Value   := '4'; // IMOBILIARIO RURAL';
  FConsultaLancamento.mkdata.Text         := formatdatetime('dd/mm/yyyy', now);
  FConsultaLancamento.comboModulo.Enabled := False;
  FConsultaLancamento.mkCadastro.Text     := cdsCadastro.FieldByName('COD_RRR').AsString;
  FConsultaLancamento.mkCadastroExit(Nil);
  FormBackShowModal(FConsultaLancamento);
  FConsultaLancamento.Free;
end;

procedure TFCadRural.Copiar1Click(Sender: TObject);
begin
  inherited;
  if trim(vClipbrd) <> '' then
    Clipboard.AsText := TiraCaracter(vClipbrd);
end;

procedure TFCadRural.DBEdit103Exit(Sender: TObject);
var Pesq : TPesq_TPLogr;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    Pesq := TPesq_TPLogr.Create;
    Pesq.PesquisaTPLogr(TDBedit(sender).text);
    cdsCadastro.fieldbyname('COD_TIPE_RRR').Value := Pesq.Codigo;
    cdsCadastro.fieldbyname('TIPOLOGE_RRR').Value := Pesq.Abrev;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit105Exit(Sender: TObject);
var Pesq : TPesq_TitLogr;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    Pesq := TPesq_TitLogr.Create;
    Pesq.PesquisaTitLogr(TDBedit(sender).text);
    cdsCadastro.fieldbyname('COD_TITE_RRR').Value   := Pesq.Codigo;
    cdsCadastro.fieldbyname('TITULOLOGE_RRR').Value := Pesq.Abrev;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit14Enter(Sender: TObject);
begin
  inherited;
  if trim(TDBEdit(Sender).Text) <> '' then
   if cdsCadastro.State in [dsInsert, dsEdit] then
    cdsCadastro.FieldByName('CEPE_RRR').AsString := TiraCaracter(TDBEdit(Sender).Text);
end;

procedure TFCadRural.DBEdit14Exit(Sender: TObject);
begin
  inherited;
  if BtnCancela.Focused then exit;
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

  TDBEdit(Sender).MaxLength := 0;
  TDBEdit(Sender).Field.EditMask := '';
  If trim(TDBEdit(Sender).Text) <> '' Then
    cdsCadastro.FieldByName('CEPE_RRR').AsString := MontaMascara(TDBEdit(Sender).Text, 'CEP', SIA_Empresa);
end;

procedure TFCadRural.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13]) then key := #0;
end;

procedure TFCadRural.DBEdit15Exit(Sender: TObject);
var Pesq : TPesq_Cidade;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).text := STRZERO(trim(TDBedit(sender).text),7);
    Pesq := TPesq_Cidade.Create;
    Pesq.PesquisaCidade(trim(TDBedit(sender).text));
    cdsCadastro.fieldbyname('COD_CIDE_RRR').Value := Pesq.CodCidade;
    cdsCadastro.fieldbyname('CIDENT').Value       := Pesq.Cidade;
    cdsCadastro.fieldbyname('UFE_RRR').Value      := Pesq.UF;
    FreeAndNil(Pesq);
  end
  else begin
   PGImovel.ActivePageIndex := 3;
   //DBEdit17.SetFocus;
  end;
end;

procedure TFCadRural.DBEdit18Exit(Sender: TObject);
var Pesq : TPesq_Logra;
begin
  inherited;
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then
    exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    if IgnoraSegmento then begin //usei para ignorar a abertura do segmento qdo se clica lupa
      IgnoraSegmento := False;
      Exit;
    end;

    Pesq := TPesq_Logra.Create;
    Pesq.PesquisaLogr(TDBedit(sender).text);

		if varToStr(Pesq.Codigo) <> '' then begin
      cdsCadastro.fieldbyname('COD_LOGE_RRR').Value := Pesq.Codigo;
      cdsCadastro.fieldbyname('LOGRAE_RRR').Value   := Pesq.Descri;

      if varToStr(Pesq.CodTipo) <> '' then begin
        cdsCadastro.fieldbyname('COD_TIPE_RRR').Value := Pesq.CodTipo;
        cdsCadastro.fieldbyname('TIPOLOGE_RRR').Value := Pesq.AbrevTipo;
      end;

      if varToStr(Pesq.CodTitulo) <> '' then begin
        cdsCadastro.fieldbyname('COD_TITE_RRR').Value   := Pesq.CodTitulo;
        cdsCadastro.fieldbyname('TITULOLOGE_RRR').Value := Pesq.AbrevTitulo;
      end;

      if varToStr(Pesq.Cep) <> '' then
        cdsCadastro.fieldbyname('CEPE_RRR').Value := Pesq.Cep;

      if varToStr(Pesq.CodBairro) <> '' then begin
        cdsCadastro.fieldbyname('COD_BAIE_RRR').Value := Pesq.CodBairro;
        cdsCadastro.fieldbyname('BAIRROE_RRR').Value  := Pesq.Bairro;
      end;

      if varToStr(Pesq.CodCidade) <> '' then begin
        cdsCadastro.fieldbyname('COD_CIDE_RRR').Value := Pesq.CodCidade;
        cdsCadastro.fieldbyname('CIDENT').Value       := Pesq.Cidade;
        cdsCadastro.fieldbyname('UFE_RRR').Value      := Pesq.UF;
      end;
    end;

    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit1Enter(Sender: TObject);
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  TDBEdit(Sender).MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  If trim(TDBEdit(Sender).Text)<>'' Then TDBEdit(Sender).Text := TiraCaracter(TDBEdit(Sender).Text);
end;

procedure TFCadRural.DBEdit1Exit(Sender: TObject);
var qrx : TSQLQuery;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  TDBEdit(Sender).MaxLength := 0;
  If trim(TDBEdit(Sender).Text) <> '' Then TDBEdit(Sender).Text := MontaMascara(TDBEdit(Sender).Text, 'RUR', SIA_Empresa);

  If cdsCadastro.State = dsInsert Then Begin
    QVerCod.Close;
    QVerCod.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
    QVerCod.Params.ParamByName('cod').AsString := TDBEdit(Sender).Text;
    QVerCod.Open;
    If QVerCod.FieldByName('TOT').AsInteger<>0 Then Begin
      showmessage('ATENÇÃO : Este Código já consta no Banco de Dados !');
      TDBEdit(Sender).SetFocus;
    End;
    QVerCod.Close;
  End;
end;

procedure TFCadRural.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadRural.DBEdit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Button = mbright then
    vClipbrd := TDBEdit(Sender).Text;
end;

procedure TFCadRural.DBEdit24Exit(Sender: TObject);
var Pesq : TPesq_Bairro;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    Pesq := TPesq_Bairro.Create;
    Pesq.PesquisaBairro(TDBedit(sender).text);
    cdsCadastro.fieldbyname('COD_BAIE_RRR').Value := Pesq.CodBairro;
    cdsCadastro.fieldbyname('BAIRROE_RRR').Value  := Pesq.Bairro;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit25Enter(Sender: TObject);
begin
  inherited;
  TDBEdit(Sender).MaxLength := TamanhoMascara('CNT', SIA_Empresa);
  If trim(TDBEdit(Sender).Text)<>'' Then TDBEdit(Sender).Text := TiraCaracter(TDBEdit(Sender).Text);
end;

procedure TFCadRural.DBEdit25Exit(Sender: TObject);
var Pesq : TPesq_CNT;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if (cdsCadastro.State = dsEdit) then begin
    if btnTransfere.Visible then btnTransfere.SetFocus;
    exit;
  end;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).MaxLength := 0;
    If trim(TDBedit(sender).Text) <> '' Then TDBedit(sender).Text := MontaMascara(TDBedit(sender).Text, 'CNT', SIA_Empresa);

    Pesq := TPesq_CNT.Create;
    Pesq.PesquisaCNT(trim(TDBedit(sender).text), '');
    cdsCadastro.FieldValues['COD_CNT_RRR'] := Pesq.Codigo;
    cdsCadastro.FieldValues['NOME_CNT']    := Pesq.Nome;
    cdsCadastro.FieldValues['RG_CNT']      := Pesq.Rgc;
    cdsCadastro.FieldValues['CNPJ_CNT']    := Pesq.Cnpj;
    cdsCadastro.FieldValues['FONE_CNT']    := Pesq.Fone;
    cdsCadastro.FieldValues['EMAIL_CNT']   := Pesq.Email;
    FreeAndNil(Pesq);
  end
  else cdsCadastro.FieldValues['COD_CNT_RRR'] := NULL;
end;

procedure TFCadRural.DBEdit26Exit(Sender: TObject);
var Pesq : TPesq_Logra;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then
    exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    if IgnoraSegmento then begin //usei para ignorar a abertura do segmento qdo se clica lupa
      IgnoraSegmento := False;
      Exit;
    end;

    Pesq := TPesq_Logra.Create;
    Pesq.PesquisaLogr(TDBedit(sender).text);

		if varToStr(Pesq.Codigo) <> '' then begin
      cdsCadastro.fieldbyname('COD_LOG_RRR').Value := Pesq.Codigo;
      cdsCadastro.fieldbyname('LOGRA_RRR').Value   := Pesq.Descri;
    end;

    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit27Exit(Sender: TObject);
var Pesq : TPesq_TabCalculo_RR;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(DBEdit33.Text) = '' then begin
    dm.msg.MessageDlg('Informe a Receita.',mtInformation,[mbok],0);
    DBEdit33.SetFocus;
  end;

  If trim(TEdit(sender).text) <> '' Then begin
    Pesq := TPesq_TabCalculo_RR.Create;
    Pesq.PesquisaTabCalculo(DBEdit33.Text, TEdit(sender).text);

    DBEdit33.Text := VarToStr(Pesq.Receita);
    DBEdit27.Text := VarToStr(Pesq.Desdobro);
    DBEdit34.Text := VarToStr(Pesq.Descr);
    DBEdit32.Text := VarToStr(Pesq.Valor);

    if copy(VarToStr(Pesq.TPCalc),1,2)='02' then begin
      dbedit31.Visible:=true;
      label11.Visible:=true;
    end
    else begin
      dbedit31.Visible:=false;
      label11.Visible:=false;
    end;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit28Exit(Sender: TObject);
var Pesq : TPesq_SetorRural;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    Pesq := TPesq_SetorRural.Create;
    Pesq.PesquisaSetor(lpad(TDBedit(sender).text,'0',4), SIA_Exercicio);
    cdsCadastro.fieldbyname('COD_STR_RRR').Value := Pesq.Setor;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit35Exit(Sender: TObject);
var Pesq : TPesq_RR_TPZONAESPECIAL;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).MaxLength := 0;
    If trim(TDBedit(sender).Text) <> '' Then
      TDBedit(sender).Text := lpad(TDBedit(sender).Text, '0', 2);

    Pesq := TPesq_RR_TPZONAESPECIAL.Create;
    Pesq.PesquisaRR_TPZONAESPECIAL(trim(TDBedit(sender).text));
    cdsCadastro.FieldValues['COD_TPZONAESP_RRR'] := Pesq.COD_RTZ;
    cdsCadastro.FieldValues['DESCR_RTZ']         := Pesq.DESCR_RTZ;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit37Exit(Sender: TObject);
var Pesq : TPesq_RR_TPFORMAOB;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).MaxLength := 0;
    If trim(TDBedit(sender).Text) <> '' Then
      TDBedit(sender).Text := lpad(TDBedit(sender).Text, '0', 2);

    Pesq := TPesq_RR_TPFORMAOB.Create;
    Pesq.PesquisaRR_TPFORMAOB(trim(TDBedit(sender).text));
    cdsCadastro.FieldValues['COD_FOBTENCAO_RRR'] := Pesq.COD_RFO;
    cdsCadastro.FieldValues['FOBTENCAO']         := Pesq.DESCR_RFO;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit39Exit(Sender: TObject);
var Pesq : TPesq_RR_TPDESTIMV;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).MaxLength := 0;
    If trim(TDBedit(sender).Text) <> '' Then
      TDBedit(sender).Text := lpad(TDBedit(sender).Text, '0', 2);

    Pesq := TPesq_RR_TPDESTIMV.Create;
    Pesq.PesquisaRR_TPDESTIMV(trim(TDBedit(sender).text));
    cdsCadastro.FieldValues['COD_DESTIMOV_RRR'] := Pesq.COD_RDI;
    cdsCadastro.FieldValues['DESCR_RDI']        := Pesq.DESCR_RDI;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit3Exit(Sender: TObject);
var Pesq : TPesq_Classificacao_RR;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    Pesq := TPesq_Classificacao_RR.Create;
    Pesq.PesquisaClassificacaoRR(TDBedit(sender).text,Sia_Exercicio);
    cdsCadastro.fieldbyname('COD_CLASS_RRR').Value := Pesq.Codigo;
    cdsCadastro.fieldbyname('DESCR_RCL').Value     := Pesq.Descricao;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit41Exit(Sender: TObject);
var Pesq : TPesq_RR_TPORIGLITIGIO;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).MaxLength := 0;
    If trim(TDBedit(sender).Text) <> '' Then
      TDBedit(sender).Text := lpad(TDBedit(sender).Text, '0', 2);

    Pesq := TPesq_RR_TPORIGLITIGIO.Create;
    Pesq.PesquisaRR_TPORIGLITIGIO(trim(TDBedit(sender).text));
    cdsCadastro.FieldValues['COD_ORIGLITIGIO_RRR'] := Pesq.COD_ROL;
    cdsCadastro.FieldValues['DESCR_ROL']           := Pesq.DESCR_ROL;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit55Exit(Sender: TObject);
var Pesq : TPesq_Banco;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    Pesq := TPesq_Banco.Create;
    Pesq.PesquisaBanco(TDBedit(sender).text);
    cdsCadastro.fieldbyname('COD_BCO_RRR').Value   := Pesq.Codigo;
    cdsCadastro.fieldbyname('COD_BANCO_RRR').Value := Pesq.Banco;
    cdsCadastro.fieldbyname('COD_AGEN_RRR').Value  := Pesq.Agencia;
    cdsCadastro.fieldbyname('COD_CONTA_RRR').Value := Pesq.Conta;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit62Exit(Sender: TObject);
var Pesq : TPesq_RR_TPFORMAOB;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).MaxLength := 0;
    If trim(TDBedit(sender).Text) <> '' Then
      TDBedit(sender).Text := lpad(TDBedit(sender).Text, '0', 2);

    Pesq := TPesq_RR_TPFORMAOB.Create;
    Pesq.PesquisaRR_TPFORMAOB(trim(TDBedit(sender).text));
    cdsCadastro.FieldValues['COD_FOBPOSSEJT_RRR'] := Pesq.COD_RFO;
    cdsCadastro.FieldValues['FOBTENCAOJT']        := Pesq.DESCR_RFO;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit63Exit(Sender: TObject);
var Pesq : TPesq_CobRural;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  If trim(TDBedit(sender).text) <> '' Then begin
    Pesq := TPesq_CobRural.Create;
    Pesq.PesquisaCobRural(TDBedit(sender).text);
    cdsCadastro.fieldbyname('COD_COB_RRR').Value := Pesq.Codigo;
    cdsCadastro.fieldbyname('DESCRI_COB').Value  := Pesq.Descricao;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit65Exit(Sender: TObject);
var Pesq : TPesq_RR_TPFORMAOB;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    TDBedit(sender).MaxLength := 0;
    If trim(TDBedit(sender).Text) <> '' Then
      TDBedit(sender).Text := lpad(TDBedit(sender).Text, '0', 2);

    Pesq := TPesq_RR_TPFORMAOB.Create;
    Pesq.PesquisaRR_TPFORMAOB(trim(TDBedit(sender).text));
    cdsCadastro.FieldValues['COD_FOBPOSSESO_RRR'] := Pesq.COD_RFO;
    cdsCadastro.FieldValues['FOBTENCAOSO']        := Pesq.DESCR_RFO;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBEdit69Exit(Sender: TObject);
var Pesq : TPesq_ZonaFiscal_RR;
begin
  inherited;
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then exit;

  if trim(TDBedit(sender).text) <> '' then begin
    Pesq := TPesq_ZonaFiscal_RR.Create;
    Pesq.PesquisaRR_ZONAFISCAL(trim(TDBedit(sender).text));
    cdsCadastro.FieldValues['COD_ZNA_RRR'] := Pesq.COD_RZN;
    cdsCadastro.FieldValues['DESCR_RZN']   := Pesq.DESCR_RZN;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.DBGrid12CellClick(Column: TColumn);
begin
  inherited;
  DBGrid12.PopupMenu := Nil;
  if not dm.cdsEmpresa.Active then dm.cdsEmpresa.Open;
  if dm.cdsEmpresa.FieldByName('ARQDWG_EMP').AsString <> '' then
    if POS(UpperCase(cdsHisto.FieldByName('RESUMO').AsString), '.DWG') = 0  then
      DBGrid12.PopupMenu := popDWG;
end;

procedure TFCadRural.DBGrid12TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsHisto, dsHisto, Column);
end;

procedure TFCadRural.GridSocioColExit(Sender: TObject);
begin
  if cdsSocios.State in [dsInsert, dsEdit] then begin
    if GridSocio.Columns.Grid.SelectedIndex = 0 then begin
      if (trim(GridSocio.Columns.Items[0].Field.Text) <> '') then begin
        dm.qrAtualiza.close;
        dm.qrAtualiza.SQL.Text := 'SELECT ' +
                                  '  COD_CNT Codigo, NOME_CNT Nome, RG_CNT RG, CNPJ_CNT CNPJ, FONE_CNT Fone ' +
                                  'FROM ' +
                                  '  GR_CONTRIBUINTES ' +
                                  'WHERE ' +
                                  '  COD_EMP_CNT = ' + SIA_Empresa +
                                  '  AND COD_CNT = ' + QuotedSTR(trim(GridSocio.Columns.Items[0].Field.Text));
        dm.qrAtualiza.Open;

        if not dm.qrAtualiza.IsEmpty then begin
          cdsSocios.fieldbyname('COD_CNT_SOC').asstring := dm.qrAtualiza.fieldbyname('Codigo').asstring;
          cdsSocios.fieldbyname('NOME_CNT').asstring    := dm.qrAtualiza.fieldbyname('Nome').asstring;
          dm.qrAtualiza.Close;
        end
        else begin
          dm.qrAtualiza.Close;
          cdsSocios.fieldbyname('COD_CNT_SOC').asstring := '';
          cdsSocios.fieldbyname('NOME_CNT').asstring    := '';
          GridSocio.Columns.Grid.SelectedIndex            := 1;
          GridSocioEditButtonClick(@Sender);
        end;
      end;
    end;
  end;
end;

procedure TFCadRural.GridSocioEditButtonClick(Sender: TObject);
var Pesq : TPesq_CodCNT;
begin
  if GridSocio.Columns.Grid.SelectedIndex = 0 then begin
    Pesq := TPesq_CodCNT.Create;

    if Pesq.BotaoCodCNTSimples then begin
      if not Empty(vartostr(Pesq.Codigo)) then begin
        if cdsSocios.fieldbyname('COD_CNT_SOC').IsNull then
          cdsSocios.Append
        else
          cdsSocios.Edit;

        cdsSocios.fieldbyname('COD_CNT_SOC').asstring := vartostr(Pesq.Codigo);
        cdsSocios.fieldbyname('NOME_CNT').asstring    := vartostr(Pesq.Nome);
        cdsSocios.fieldbyname('CNPJ_CNT').asstring    := vartostr(Pesq.CNPJ);
        cdsSocios.fieldbyname('RG_CNT').asstring      := vartostr(Pesq.rg);
        cdsSocios.Post;
      end;
    end;

    FreeAndNil(Pesq);
  end;
end;

procedure TFCadRural.GridSocioEnter(Sender: TObject);
begin
  inherited;
  if cdsSocios.State in [dsInsert, dsEdit] then cdsSocios.Post;
end;

procedure TFCadRural.GridSocioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var qrx : TSQLQuery;
begin
  if key = vk_f5 then begin
    if cdsCadastro.State in [dsInsert, dsEdit] then
      cdsSocios.Delete;
  end;

  if key = vk_f6 then begin
    if cdsSocios.FieldByName('COD_CNT_SOC').IsNull then
      exit;

    Application.CreateForm(TFCadContribuintes, FCadContribuintes);

    if dm.Permissao(FCadContribuintes, 'PRN_FCadContribuintes', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
      FCadContribuintes.NovoAtend := 'Alterar';
      FCadContribuintes.CNT       := cdsSocios.FieldValues['COD_CNT_SOC'];
      FormBackShowModal(FCadContribuintes);

      qrx               := TSQLQuery.Create(Application.Owner);
      qrx.SQLConnection := dm.Conexao;
      qrx.SQL.Text      :=
        'SELECT ' +
        '  NOME_CNT, CNPJ_CNT, RG_CNT, FONE_CNT '+
        'FROM ' +
        '  GR_CONTRIBUINTES '+
        'WHERE ' +
        '  COD_EMP_CNT = ' + cdsSocios.FieldByName('COD_EMP_SOC').AsString +
        '  AND COD_CNT = ' + QuotedSTR(cdsSocios.FieldByName('COD_CNT_SOC').AsString);
      qrx.Open;

      if cdsSocios.State in [dsInsert, dsEdit] then
        cdsSocios.Edit;

      cdsSocios.fieldbyname('NOME_CNT').asstring := qrx.fieldbyname('NOME_CNT').asstring;
      cdsSocios.fieldbyname('CNPJ_CNT').asstring := qrx.fieldbyname('CNPJ_CNT').asstring;
      cdsSocios.fieldbyname('RG_CNT').asstring   := qrx.fieldbyname('RG_CNT').asstring;
      cdsSocios.Post;
      FreeAndNil(qrx);
    end
    else
      dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

    FCadContribuintes.Free;
  end;
end;

procedure TFCadRural.GridSocioTitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsSocios, dsSocios, Column);
end;

procedure TFCadRural.DBGrid15CellClick(Column: TColumn);
begin
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;
  if not cdsCRT.Active then exit;
  if cdsCRT.IsEmpty then exit;

  mskCRT.Text    := vartostr(cdsCRT.FieldValues['COD_CRT_RR3']);
  mskDCR.Text    := vartostr(cdsCRT.FieldValues['COD_DCR_RR3']);
  mskVALOR.Text  := vartostr(cdsCRT.FieldValues['VALOR_RR3']);
  mskDCRT.Text   := vartostr(cdsCRT.FieldValues['DESCRI_RR1']);
  mskDDESDO.Text := vartostr(cdsCRT.FieldValues['DESCRI_RR2']);
end;

procedure TFCadRural.DBGrid1CellClick(Column: TColumn);
begin
  ClicaGrid;
end;

procedure TFCadRural.DBGrid1DblClick(Sender: TObject);
begin
  ClicaGrid;

  PG.ActivePageIndex := 0;
  PGGeral.ActivePageIndex  := 0;
  PGImovel.ActivePageIndex := 0;
  PGCad.ActivePageIndex := 0;

  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadRural.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited; //herda cores do form generico

  if cdsVis.FieldByName('COD_COB_RRR').AsInteger = CodCancelado  then begin
    TDBGRID(SENDER).Canvas.Font.Color  := clRed;
    TDBGRID(SENDER).Canvas.Font.Style  := [fsBold,fsStrikeOut];
    TDBGRID(SENDER).DefaultDrawDataCell(Rect, column.field, State);
  end
  else begin
    TDBGRID(SENDER).Canvas.Font.Color := clBlack;
    TDBGRID(SENDER).Canvas.Font.Style := [];
    TDBGRID(SENDER).DefaultDrawDataCell(Rect, column.field, State);
  end;
end;

procedure TFCadRural.DBGrid3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_f2 then begin
    if (cdsCadastro.State in [dsInsert, dsEdit]) then begin
      Application.CreateForm(TFConsProVegISO, FConsProVegISO);
      FConsProVegISO.Tag := 0;

      if FormBackShowModal(FConsProVegISO) = mrOk then begin
        FConsProVegISO.cds.First;
        IncF2 := True;

        while not FConsProVegISO.cds.Eof do begin
          if cdsProdIso.Locate('COD_PRO_AVI', FConsProVegISO.cds.FieldValues['COD_PRO'], ([])) then
            cdsProdIso.Edit
          else
            cdsProdIso.Append;

          if cdsProdIso.State = dsInsert then begin
            cdsProdIso.FieldValues['COD_EMP_AVI']   := SIA_Empresa;
            cdsProdIso.FieldValues['COD_AVI']       := idISO;
            cdsProdIso.FieldValues['COD_RRR_AVI']   := cdsCadastro.FieldValues['COD_RRR'];
          end;

          cdsProdIso.FieldValues['COD_PRO_AVI']   := FConsProVegISO.cds.FieldValues['COD_PRO'];
          cdsProdIso.FieldValues['AREA_PLAN_AVI'] := FConsProVegISO.cds.FieldValues['AREAPLAN'];
          cdsProdIso.FieldValues['AREA_COLH_AVI'] := FConsProVegISO.cds.FieldValues['AREACOLH'];
          cdsProdIso.FieldValues['QTD_COLH_AVI']  := FConsProVegISO.cds.FieldValues['QTDCOLH'];
          cdsProdIso.FieldValues['COD_UNID_AVI']  := FConsProVegISO.cds.FieldValues['CODUNI'];
          cdsProdIso.FieldValues['COD_INDRESTPROD_AVI'] := FConsProVegISO.cds.FieldValues['CODRES'];
          cdsProdIso.FieldValues['DESCR_RIP']     := FConsProVegISO.cds.FieldValues['DRES'];
          cdsProdIso.FieldValues['DESCR_RPR']     := FConsProVegISO.cds.FieldValues['PRODUTO'];
          cdsProdIso.FieldValues['DESCR_RUP']     := FConsProVegISO.cds.FieldValues['DUNI'];
          cdsProdIso.Post;

          inc(idISO);

          FConsProVegISO.cds.Next;
        end;

        IncF2 := False;
      end;

      FConsProVegISO.Free;
    end;
  end;

  if key = vk_f5 then
    if (Condicao = 'Incluindo') or (Condicao = 'Alterando') then cdsProdIso.Delete;
end;

procedure TFCadRural.DBGrid3TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsProdIso, dsProdIso, Column);
end;

procedure TFCadRural.DBGrid4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_f2 then begin
    if (cdsCadastro.State in [dsInsert, dsEdit]) then begin
      Application.CreateForm(TFConsProAni, FConsProAni);
      if FormBackShowModal(FConsProAni) = mrOk then begin
        FConsProAni.cds.First;
        IncF2 := True;
        while not FConsProAni.cds.Eof do begin

          if cdsPecuaria.Locate('COD_PRO_RPE', FConsProAni.cds.FieldValues['COD_PRO'], ([])) then cdsPecuaria.Edit
          else cdsPecuaria.Append;

          if cdsPecuaria.State = dsInsert then begin
            cdsPecuaria.FieldValues['COD_EMP_RPE']   := SIA_Empresa;
            cdsPecuaria.FieldValues['COD_RPE']       := idANI;
            cdsPecuaria.FieldValues['COD_RRR_RPE']   := cdsCadastro.FieldValues['COD_RRR'];
          end;
          cdsPecuaria.FieldValues['COD_PRO_RPE'] := FConsProAni.cds.FieldValues['COD_PRO'];
          cdsPecuaria.FieldValues['DESCR_RPA']   := FConsProAni.cds.FieldValues['PRODUTO'];
          cdsPecuaria.FieldValues['QTD_RPE']     := FConsProAni.cds.FieldValues['QTDANI'];
          cdsPecuaria.Post;

          inc(idANI);

          FConsProAni.cds.Next;
        end;
        IncF2 := False;
      end;
      FConsProAni.Free;
    end;
  end;

  if key = vk_f5 then
    if (Condicao = 'Incluindo') or (Condicao = 'Alterando') then cdsPecuaria.Delete;
end;

procedure TFCadRural.DBGrid4TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsPecuaria, dsPecuaria, Column);
end;

procedure TFCadRural.DBGrid5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_f2 then begin
    if (cdsCadastro.State in [dsInsert, dsEdit]) then begin
      Application.CreateForm(TFConsRRAreas, FConsRRAreas);
      FConsRRAreas.Tag := 1;

      if FormBackShowModal(FConsRRAreas) = mrOk then begin
        FConsRRAreas.cds.First;
        IncF2 := True;

        while not FConsRRAreas.cds.Eof do begin
          if cdsGranj.Locate('COD_PRO_AGQ', FConsRRAreas.cds.FieldValues['COD_PRO'], ([])) then
            cdsGranj.Edit
          else
            cdsGranj.Append;

          if cdsGranj.State = dsInsert then begin
            cdsGranj.FieldValues['COD_EMP_AGQ']   := SIA_Empresa;
            cdsGranj.FieldValues['COD_AGQ']       := idGRN;
            cdsGranj.FieldValues['COD_RRR_AGQ']   := cdsCadastro.FieldValues['COD_RRR'];
          end;

          cdsGranj.FieldValues['COD_PRO_AGQ']        := FConsRRAreas.cds.FieldValues['COD_PRO'];
          cdsGranj.FieldValues['DESCR_RPG']          := FConsRRAreas.cds.FieldValues['PRODUTO'];
          cdsGranj.FieldValues['AREA_EXPLO_AGQ']     := FConsRRAreas.cds.FieldValues['AREA'];
          cdsGranj.FieldValues['COD_INDRESTUSO_AGQ'] := FConsRRAreas.cds.FieldValues['CODRES'];
          cdsGranj.FieldValues['DESCR_RIU']          := FConsRRAreas.cds.FieldValues['DRES'];
          cdsGranj.Post;

          inc(idGRN);

          FConsRRAreas.cds.Next;
        end;
        IncF2 := False;
      end;
      FConsRRAreas.Free;
    end;
  end;

  if key = vk_f5 then
    if (Condicao = 'Incluindo') or (Condicao = 'Alterando') then cdsGranj.Delete;
end;

procedure TFCadRural.DBGrid5TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsGranj, dsGranj, Column);
end;

procedure TFCadRural.DBGrid6TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsHisAlt, dsHisAlt, Column);
end;

procedure TFCadRural.DBGrid7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_f2 then begin
    if (cdsCadastro.State in [dsInsert, dsEdit]) then begin
      Application.CreateForm(TFConsProVegISO, FConsProVegISO);
      FConsProVegISO.Tag := 1;

      if FormBackShowModal(FConsProVegISO) = mrOk then begin
        FConsProVegISO.cds.First;
        IncF2 := True;

        while not FConsProVegISO.cds.Eof do begin
          if cdsProRot.Locate('COD_PRO_AVR', FConsProVegISO.cds.FieldValues['COD_PRO'], ([])) then
            cdsProRot.Edit
          else
            cdsProRot.Append;

          if cdsProRot.State = dsInsert then begin
            cdsProRot.FieldValues['COD_EMP_AVR']   := SIA_Empresa;
            cdsProRot.FieldValues['COD_AVR']       := idROT;
            cdsProRot.FieldValues['COD_RRR_AVR']   := cdsCadastro.FieldValues['COD_RRR'];
          end;

          cdsProRot.FieldValues['COD_PRO_AVR']   := FConsProVegISO.cds.FieldValues['COD_PRO'];
          cdsProRot.FieldValues['FORMAEXP_AVR']  := FConsProVegISO.cds.FieldValues['FEXP'];
          cdsProRot.FieldValues['SEQGRUPO_AVR']  := FConsProVegISO.cds.FieldValues['SEQG'];
          cdsProRot.FieldValues['AREA_PLAN_AVR'] := FConsProVegISO.cds.FieldValues['AREAPLAN'];
          cdsProRot.FieldValues['AREA_COLH_AVR'] := FConsProVegISO.cds.FieldValues['AREACOLH'];
          cdsProRot.FieldValues['QTD_COLH_AVR']  := FConsProVegISO.cds.FieldValues['QTDCOLH'];
          cdsProRot.FieldValues['COD_UNID_AVR']  := FConsProVegISO.cds.FieldValues['CODUNI'];
          cdsProRot.FieldValues['COD_INDRESTPROD_AVR'] := FConsProVegISO.cds.FieldValues['CODRES'];
          cdsProRot.FieldValues['DESCR_RIP']     := FConsProVegISO.cds.FieldValues['DRES'];
          cdsProRot.FieldValues['DESCR_RPR']     := FConsProVegISO.cds.FieldValues['PRODUTO'];
          cdsProRot.FieldValues['DESCR_RUP']     := FConsProVegISO.cds.FieldValues['DUNI'];
          cdsProRot.Post;

          inc(idROT);

          FConsProVegISO.cds.Next;
        end;

        IncF2 := False;
      end;

      FConsProVegISO.Free;
    end;
  end;

  if key = vk_f5 then begin
    if (Condicao = 'Incluindo') or (Condicao = 'Alterando') then
      cdsProRot.Delete;
  end;
end;

procedure TFCadRural.DBGrid7TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsProRot, dsProRot, Column);
end;

procedure TFCadRural.DBGrid8DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(Tdbgrid(Sender).Datasource.Dataset.RecNo) then begin
    Tdbgrid(Sender).Canvas.Font.Color  := ClBlack;
    Tdbgrid(Sender).Canvas.Brush.Color := $00C5DADA;
  end
  else begin
    Tdbgrid(Sender).Canvas.Font.Color  := ClBlack;
    Tdbgrid(Sender).Canvas.Brush.Color := $00D9ECEC;
  end;

  if (State = [GdSelected]) or (State = [GdFocused]) or (State = [GdSelected, GdFocused]) then begin
    TDBGRID(SENDER).Canvas.Brush.Color := $00D2E6D2;
    TDBGRID(SENDER).Canvas.Font.Color  := ClBlack;
  end;

  TDBGRID(SENDER).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFCadRural.DBGrid8TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsTransf, dsTransf, Column);
end;

procedure TFCadRural.DBGrid9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_f2 then begin
    if (cdsCadastro.State in [dsInsert, dsEdit]) then begin
      Application.CreateForm(TFConsRRAreas, FConsRRAreas);
      FConsRRAreas.Tag := 0;

      if FormBackShowModal(FConsRRAreas) = mrOk then begin
        FConsRRAreas.cds.First;
        IncF2 := True;

        while not FConsRRAreas.cds.Eof do begin
          if cdsPasto.Locate('COD_TPPASTO_ARP', FConsRRAreas.cds.FieldValues['COD_PRO'], ([])) then
            cdsPasto.Edit
          else
            cdsPasto.Append;

          if cdsPasto.State = dsInsert then begin
            cdsPasto.FieldValues['COD_EMP_ARP']   := SIA_Empresa;
            cdsPasto.FieldValues['COD_ARP']       := idPST;
            cdsPasto.FieldValues['COD_RRR_ARP']   := cdsCadastro.FieldValues['COD_RRR'];
          end;

          cdsPasto.FieldValues['COD_TPPASTO_ARP']    := FConsRRAreas.cds.FieldValues['COD_PRO'];
          cdsPasto.FieldValues['DESCR_RTS']          := FConsRRAreas.cds.FieldValues['PRODUTO'];
          cdsPasto.FieldValues['AREA_UTIL_ARP']      := FConsRRAreas.cds.FieldValues['AREA'];
          cdsPasto.FieldValues['COD_INDRESTUSO_ARP'] := FConsRRAreas.cds.FieldValues['CODRES'];
          cdsPasto.FieldValues['DESCR_RIU']          := FConsRRAreas.cds.FieldValues['DRES'];
          cdsPasto.Post;

          inc(idPST);

          FConsRRAreas.cds.Next;
        end;
        IncF2 := False;
      end;
      FConsRRAreas.Free;
    end;
  end;

  if key = vk_f5 then begin
    if (Condicao = 'Incluindo') or (Condicao = 'Alterando') then
      cdsPasto.Delete;
  end;
end;

procedure TFCadRural.DBGrid9TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsPasto, dsPasto, Column);
end;

procedure TFCadRural.Documentos1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  Application.CreateForm(TFConsDocumentos, FConsDocumentos);

  with FConsDocumentos do begin
    CAMPO1 := cdsCadastro.FieldValues['COD_CNT_RRR'];
    CAMPO2 := cdsCadastro.FieldValues['NOME_CNT'];
    CAMPO3 := 4;
    CAMPO4 := cdsCadastro.FieldValues['COD_RRR'];

    cdsCons.Close;
    sqlCons.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
    sqlCons.Params.ParamValues['cadastro']:= cdsCadastro.FieldByName('cod_rrr').AsString;
    sqlCons.Params.ParamValues['modulo']  :=4;
    cdsCons.Open;
  end;

  FormBackShowModal(FConsDocumentos);
  FConsDocumentos.Free;
end;

procedure TFCadRural.dspAOutUsoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CADRR_AREAOUT', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspAOutUsoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;  var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CADRR_AREAOUT,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_AOT').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_AOT').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlAOutUso.Params.ParamValues['COD_RRR_AOT'] := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_AOT').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_AOT').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_AOT').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_AOT').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspAOutUsoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CADRR_AREAOUT';
end;

procedure TFCadRural.dspARestAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CADRR_AREAREST', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspARestBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CADRR_AREAREST,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_ART').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_ART').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlARest.Params.ParamValues['COD_RRR_ART'] := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_ART').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_ART').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_ART').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_ART').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspARestGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CADRR_AREAREST';
end;

procedure TFCadRural.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CAD_RURAL', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
var a : integer;
    _campo : string;
    _novo, _velho : variant;
begin
  if UpdateKind = ukInsert then begin
    sqlCadastro.Params.ParamValues['cod']         := DeltaDS.FieldByName('COD_RRR').NewValue;
    DeltaDS.FieldByName('LOGIN_INC_RRR').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RRR').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RRR').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RRR').NewValue   := DataBanco;

    for a := 0 to DeltaDs.Fields.Count - 1 do begin
      if not VarIsEmpty(DeltaDs.Fields[a].NewValue) then begin
        if (DeltaDs.Fields[a].NewValue = Null) or (VartoStr(DeltaDs.Fields[a].NewValue) = '') then begin
          _campo := RetornaNomeCampo('RUR', DeltaDs.Fields[a].FieldName, '');
          _velho := RetornaValorFormatado(DeltaDs.Fields[a].DataType, DeltaDs.Fields[a].OldValue);
          _novo  := 'Apagou';
        end
        else begin
          _campo := RetornaNomeCampo('RUR', DeltaDs.Fields[a].FieldName, '');
          _velho := RetornaValorFormatado(DeltaDs.Fields[a].DataType, DeltaDs.Fields[a].OldValue);
          _novo  := RetornaValorFormatado(DeltaDs.Fields[a].DataType, DeltaDs.Fields[a].NewValue);
        end;

        //-- Inserindo Campos Alterados
        if trim(_campo) = '' then
          _campo := DeltaDs.Fields[a].FieldName;

        Grava_RRHisAlteracao(SIA_Empresa,
                             SIA_Usuario,
                             cdsCadastro.FieldByName('COD_RRR').AsString,
                             (formatdatetime('DD.MM.YYYY', Date) +' '+ formatdatetime('HH:MM:SS', Time)),
                             _campo,
                             vartostr(_novo),
                             vartostr(_velho));
      end;
    end;
  end;
end;

procedure TFCadRural.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CAD_RURAL';
end;

procedure TFCadRural.dspCadastroUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  Tratar_Erro(E.Message);
end;

procedure TFCadRural.dspCRTAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_REL_CRT', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspCRTBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_REL_CRT,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_RR3').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    DeltaDS.FieldByName('COD_RRR_RR3').NewValue := sqlCadastro.Params.ParamValues['cod'];
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('LOGIN_INC_RR3').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RR3').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RR3').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RR3').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspCRTGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_REL_CRT';
end;

procedure TFCadRural.dspGranjAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CADRR_AREAGRAJ', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspGranjBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CADRR_AREAGRAJ,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_AGQ').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_AGQ').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlGranj.Params.ParamValues['COD_RRR_AGQ'] := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_AGQ').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_AGQ').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_AGQ').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_AGQ').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspGranjGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CADRR_AREAGRAJ';
end;

procedure TFCadRural.dspPastoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CADRR_AREAPASTO', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspPastoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CADRR_AREAPASTO,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_ARP').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_ARP').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlPasto.Params.ParamValues['COD_RRR_ARP'] := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_ARP').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_ARP').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_ARP').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_ARP').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspPastoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CADRR_AREAPASTO';
end;

procedure TFCadRural.dspPecuariaAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CADRR_PECUARIA', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspPecuariaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CADRR_PECUARIA,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_RPE').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_RPE').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlPecuaria.Params.ParamValues['COD_RRR_RPE'] := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_RPE').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RPE').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RPE').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RPE').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspPecuariaGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CADRR_PECUARIA';
end;

procedure TFCadRural.dspProdIsoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CADRR_AREAVEGISO', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspProdIsoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CADRR_AREAVEGISO,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_AVI').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_AVI').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlProdIso.Params.ParamValues['COD_RRR_AVI'] := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_AVI').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_AVI').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_AVI').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_AVI').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspProdIsoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CADRR_AREAVEGISO';
end;

procedure TFCadRural.dspProRotAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CADRR_AREAVEGROT', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspProRotBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CADRR_AREAVEGROT,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_AVR').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_AVR').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlProRot.Params.ParamValues['COD_RRR_AVR'] := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_AVR').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_AVR').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_AVR').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_AVR').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspProRotGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CADRR_AREAVEGROT';
end;

procedure TFCadRural.dspRecAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_REL_RECEITAS', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspRecBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_REL_RECEITAS,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_RCT').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('COD_RRR_RCT').NewValue := cdsCadastro.FieldByName('COD_RRR').Value;
    sqlRec.Params.ParamValues['COD_RRR_RCT']    := cdsCadastro.FieldByName('COD_RRR').Value;

    DeltaDS.FieldByName('LOGIN_INC_RCT').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RCT').NewValue   := DataBanco;
  end;
end;

procedure TFCadRural.dspRecGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_REL_RECEITAS';
end;

procedure TFCadRural.dspSociosAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CAD_SOCIOS', SIA_Modulo, UpperCase(FCadRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRural.dspSociosBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
var qtd           : integer;
    _campo        : string; //_detalhe
    _novo, _velho : variant;
begin
  if UpdateKind = ukInsert then begin
    DeltaDS.FieldByName('COD_RRR_SOC').NewValue := sqlCadastro.Params.ParamValues['cod'];

    _campo := 'INCLUSÃO DE SOCIOS';
    _novo  := '';
    _velho := 'Incluiu Sócio com Código: '+VarToStr(DeltaDs.FieldByName('COD_CNT_SOC').NewValue)+' - '+VarToStr(DeltaDs.FieldByName('NOME_CNT').NewValue);

    Grava_RRHisAlteracao(SIA_Empresa,
                         SIA_Usuario,
                         VarToStr(sqlCadastro.Params.ParamValues['cod']),
                         (formatdatetime('DD.MM.YYYY', Date) +' '+ formatdatetime('HH:MM:SS', Time)),
                         _campo,
                         vartostr(_novo),
                         vartostr(_velho));
  end;

  if UpdateKind = ukModify then begin
    for qtd := 0 to DeltaDs.Fields.Count - 1 do begin
      if not VarIsEmpty(DeltaDs.Fields[qtd].NewValue) then begin
        _campo := RetornaNomeCampo('SOCIORURAL', DeltaDs.Fields[qtd].FieldName, '');
        _velho := RetornaValorFormatado(DeltaDs.Fields[qtd].DataType, DeltaDs.Fields[qtd].OldValue);
        _novo  := RetornaValorFormatado(DeltaDs.Fields[qtd].DataType, DeltaDs.Fields[qtd].NewValue);

       if trim(_campo) = '' then
        _campo := DeltaDs.Fields[qtd].FieldName;

       Grava_RRHisAlteracao(SIA_Empresa,
                            SIA_Usuario,
                            cdsCadastro.FieldByName('COD_RRR').AsString,
                            (formatdatetime('DD.MM.YYYY', Date) +' '+ formatdatetime('HH:MM:SS', Time)),
                            _campo,
                            vartostr(_novo),
                            vartostr(_velho));
      end;
    end;
  end;

  If UpdateKind = ukDelete Then Begin
    _campo := 'EXCLUSÃO DE SÓCIOS';
    _novo  := '';
    _velho := 'Excluiu Sócio com Código: '+VarToStr(DeltaDs.FieldByName('COD_CNT_SOC').OldValue)+' - '+VarToStr(DeltaDs.FieldByName('NOME_CNT').OldValue);

    Grava_RRHisAlteracao(SIA_Empresa,
                         SIA_Usuario,
                         cdsCadastro.FieldByName('COD_RRR').AsString,
                         (formatdatetime('DD.MM.YYYY', Date) +' '+ formatdatetime('HH:MM:SS', Time)),
                         _campo,
                         vartostr(_novo),
                         vartostr(_velho));
  End;
end;

procedure TFCadRural.dspSociosGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_CAD_SOCIOS';
end;

procedure TFCadRural.dspSociosUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadRural.EmissodeCarne1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;

  ActiveMDIChild.Free;
  Application.CreateForm(TFRelGuiasRR, FRelGuiasRR);

  if dm.Permissao(FRelGuiasRR, 'RUR_FRelGuiasRR', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    SIA_Aplicacao := 'FRelGuiasRR';
    FRelGuiasRR.msk1.Text:=cdsCadastro.FieldByName('COD_RRR').AsString;
    FRelGuiasRR.msk2.Text:=cdsCadastro.FieldByName('COD_RRR').AsString;
    FRelGuiasRR.msk13.text:=Sia_Exercicio;
    FormBackShowModal(FRelGuiasRR);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FRelGuiasRR.Free;
end;

procedure TFCadRural.EmissodeCertides1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  Application.CreateForm(TFConsCert, FConsCert);

  with FConsCert do begin
   CAMPO1 := cdsCadastro.FieldValues['COD_CNT_RRR'];
   CAMPO2 := cdsCadastro.FieldValues['NOME_CNT'];
   CAMPO3 := 4;
   CAMPO4 := cdsCadastro.FieldValues['COD_RRR'];
  end;

  FormBackShowModal(FConsCert);
  FConsCert.Free;
end;

procedure TFCadRural.EstornaCancelamentodeDvida1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  Application.CreateForm(TFEstornaBaixaDividas, FEstornaBaixaDividas);

  if dm.Permissao(FEstornaBaixaDividas, 'FIN_FEstornaBaixaDividas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FEstornaBaixaDividas.cbModulo.Style   := csDropDown;
    FEstornaBaixaDividas.cbModulo.Text    := '4  IMOBILIÁRIO RURAL';
    FEstornaBaixaDividas.mkCadastro.Text  := cdsCadastro.FieldByName('COD_RRR').AsString;
    FEstornaBaixaDividas.cbModulo.Enabled := false;
    FEstornaBaixaDividas.mkData.text      := formatdatetime('dd/mm/yyyy', now);//data de refrencia
    FEstornaBaixaDividas.APLMestre        := 'AtendRURAL';
    FEstornaBaixaDividas.mkCadastroExit(Nil);
    FormBackShowModal(FEstornaBaixaDividas);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FEstornaBaixaDividas.Free;
end;

procedure TFCadRural.EstornaCompensaodeValores1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  Application.CreateForm(TFEstornaCompensaValores, FEstornaCompensaValores);

  if dm.Permissao(FEstornaCompensaValores, 'FIN_FEstornaCompensaValores', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FEstornaCompensaValores.cbModulo.Style:=csDropDown;
    FEstornaCompensaValores.cbModulo.Text:='4  IMOBILIÁRIO RURAL';
    FEstornaCompensaValores.mkCadastro.Text  := cdsCadastro.FieldByName('COD_RRR').AsString;
    FEstornaCompensaValores.cbModulo.Enabled:=false;
    FEstornaCompensaValores.mkData.text:=formatdatetime('dd/mm/yyyy', now);//data de refrencia
    FEstornaCompensaValores.mkCadastroExit(Nil);
    FormBackShowModal(FEstornaCompensaValores);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FEstornaCompensaValores.Free;
end;

procedure TFCadRural.EvDBNumEdit1Exit(Sender: TObject);
begin
  if (cdsCadastro.State in [dsEdit,dsInsert]) and (cdsCadastro.fieldByName('AREAE_RRR').AsCurrency>0) then begin
    cdsCadastro.fieldByName('AREAM_RRR').AsCurrency := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsCurrency * 10000,5);
    cdsCadastro.fieldByName('AREAH_RRR').AsCurrency := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsCurrency / vrALQHEC,5);
  end;
end;

procedure TFCadRural.EvDBNumEdit2Exit(Sender: TObject);
begin
  { foi combinado com cristiano de que estes campos seriam bloqueados e calculados automaticamente
  if (cdsCadastro.State in [dsEdit,dsInsert]) and (cdsCadastro.fieldByName('AREAH_RRR').AsCurrency > 0) then begin
    cdsCadastro.fieldByName('AREAM_RRR').AsCurrency := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsCurrency * (vrALQHEC * 10000), 5);
    cdsCadastro.fieldByName('AREAE_RRR').AsCurrency := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsCurrency * vrALQHEC, 5);
    //cdsCadastro.fieldByName('AREAE_RRR').AsCurrency := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsCurrency * vrALQHEC, 2); //tava assim porem cliente reclamou que arredondava as 5 casas decimanis digitadas qdo se alterava o registro de Hectares
  end;
  }
end;

procedure TFCadRural.EvDBNumEdit3Exit(Sender: TObject);
begin
  { foi combinado com cristiano de que estes campos seriam bloqueados e calculados automaticamente
  if (cdsCadastro.State in [dsEdit,dsInsert]) and (cdsCadastro.fieldByName('AREAM_RRR').AsCurrency > 0) then begin
     cdsCadastro.fieldByName('AREAH_RRR').AsCurrency := Arredonda(cdsCadastro.fieldByName('AREAM_RRR').AsCurrency / (vrALQHEC * 10000), 5);
    cdsCadastro.fieldByName('AREAE_RRR').AsCurrency := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsCurrency * vrALQHEC, 5);
     //cdsCadastro.fieldByName('AREAE_RRR').AsCurrency := Arredonda((cdsCadastro.fieldByName('AREAM_RRR').AsCurrency / 10000), 5); //tava assim porem cliente reclamou que arredondava as 5 casas decimanis digitadas qdo se alterava o registro de Hectares
  end;
  }
end;

procedure TFCadRural.EvDBNumEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13, ',', '.']) then key := #0;
  if key = '.' then key := ',';
end;

procedure TFCadRural.ExtratoCompleto1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  Application.CreateForm(TFRelExtrato,FRelExtrato);

  if dm.Permissao(FRelExtrato, 'FIN_FRelExtrato', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FRelExtrato.mkCadastro1.Text    := cdsCadastro.fieldByName('COD_RRR').AsString;
    FRelExtrato.mkReferencia.text   := formatdatetime('dd/mm/yyyy', now);;
    FRelExtrato.rdTipo.ItemIndex    := 0;
    FRelExtrato.comboModulo.Value   := '4'; //  IMOBILIARIO RURAL';
    FRelExtrato.comboModulo.Enabled := false;
    FRelExtrato.comboModuloExit(FRelExtrato);
    FormBackShowModal(FRelExtrato);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FRelExtrato.Free;
end;

procedure TFCadRural.ExtratoSimplificado1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  Application.CreateForm(TFRelExtrato,FRelExtrato);

  if dm.Permissao(FRelExtrato, 'FIN_FRelExtrato', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FRelExtrato.mkCadastro1.Text    := cdsCadastro.fieldByName('COD_RRR').AsString;
    FRelExtrato.mkReferencia.text   := formatdatetime('dd/mm/yyyy', now);;
    FRelExtrato.rdTipo.ItemIndex    := 1;
    FRelExtrato.comboModulo.Value   := '4'; //  IMOBILIARIO RURAL';
    FRelExtrato.comboModulo.Enabled := false;
    FRelExtrato.comboModuloExit(FRelExtrato);
    FormBackShowModal(FRelExtrato);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FRelExtrato.Free;
end;

procedure TFCadRural.FichaCadastral2Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;

  ActiveMDIChild.Free;
  Application.CreateForm(TFRelRolRR, FRelRolRR);

  if dm.Permissao(FRelRolRR, 'RUR_FRelRolRR', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    SIA_Aplicacao := 'FRelRolRR';
    FRelRolRR.msk1.Text:=cdsCadastro.FieldByName('COD_RRR').AsString;
    FRelRolRR.msk2.Text:=cdsCadastro.FieldByName('COD_RRR').AsString;
    FormBackShowModal(FRelRolRR);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FRelRolRR.Free;
end;

procedure TFCadRural.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fecha_todos_cds(FCadRural);
  Action := caFree;
end;

procedure TFCadRural.FormCreate(Sender: TObject);
begin
  cPrin := TGeral.Create;
end;

procedure TFCadRural.FormDestroy(Sender: TObject);
begin
  FreeAndNil(cPrin);
  FCadRural := Nil;
end;

procedure TFCadRural.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then begin
    if not BtnCancela.Enabled then
      BtnSair.Click;
  end;
end;

procedure TFCadRural.FormShow(Sender: TObject);
var Pesq : TPesq_ConfCalcRR;
    qrx : TSQLQuery;
begin
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text      := 'select count(*) as TOT from RR_CAD_RURAL';
  qrx.Open;
  Label1.Caption := 'Visualização Geral - [ '+ inttostr(qrx.FieldByName('TOT').AsInteger) +' ] Propriedades.';
  FreeAndNil(qrx);

  cPrin.VerConfig_PRIN(SIA_Empresa);

  Pg.ActivePageIndex       := 4;
  PGGeral.ActivePageIndex  := 0;
  PGImovel.ActivePageIndex := 0;
  PGCad.ActivePageIndex    := 0;

  desabilita(FCadRural);

  if btnTransfere.Visible then
    btnTransfere.Enabled := False;

  CodCancelado := 999;
  Pesq         := TPesq_ConfCalcRR.Create;
  Pesq.CarregaConfig;

  if trim(vartostr(Pesq.v07)) <> '' then
    CodCancelado := strtoint(vartostr(Pesq.v07));

  if trim(vartostr(Pesq.v09)) <> '' then
    vrALQHEC := StrToFloat(Replace(VarToStr(Pesq.v09),'.',',')) //iif(not IsNumero(OnlyDigit(VarToStr(Pesq.v09))), 2.42, Replace(VarToStr(Pesq.v09),'.',','));
  else
    vrALQHEC := 0;

  if vrALQHEC = 0 then begin
    dm.msg.MessageDlg('Atenção !!!' + #13#13 +
      'Necessário cadastrar as medidas padrões por alquere em Configurações de Calculo ' + #13 +
      ' -> Menu Tabelas Gerais > 1.9 Configurações > Quadro Medidas > Campo Hectare.', mtWarning, [mbok], 0);
    Close;
    Exit;
  end;

  FreeAndNil(Pesq);

  cdsVis.Close;
  sqlVis.commandText:= 'SELECT RR_CAD_RURAL.*, '+
                              'RR_CLASSIFICA.DESCR_RCL, '+
                              'GR_BANCO.NOME_BCO, '+
                              'RR_COBRANCA.DESCRI_COB, '+
                              'GR_CONTRIBUINTES.NOME_CNT, '+
                              'GR_CONTRIBUINTES.RG_CNT, '+
                              'GR_CONTRIBUINTES.CNPJ_CNT, '+
                              'GR_CONTRIBUINTES.FONE_CNT, '+
                              'GR_CONTRIBUINTES.EMAIL_CNT, '+
                              'LOGRA.NOME_LOG LOGRAPRO, '+
                              'TIPENT.NOM_TIP_CEP TPLOGRENT, '+
                              'TITENT.DESCR_TIT TTLOGRENT, '+
                              'LOGRAE.NOME_LOG LOGRAENT, '+
                              'BAIE.NOME_BAI BIRROENT, '+
                              'CIDE.NOME_CID CIDENT, '+
                              'TPZE.DESCR_RTZ, '+
                              'TPDI.DESCR_RDI, '+
                              'TPOL.DESCR_ROL, '+
                              'TPFO1.DESCR_RFO FOBTENCAO, '+
                              'TPFO2.DESCR_RFO FOBTENCAOJT, '+
                              'TPFO3.DESCR_RFO FOBTENCAOSO '+
                       'FROM RR_CAD_RURAL '+
                       //Richard 15/04/12 - Estava duplicando por causa da classificação, que e cadastrada por exercicio
                       //' LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR '+
                       'LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR AND EXERCICIO_RCL = '+ SIA_Exercicio +' '+
                       'LEFT JOIN GR_BANCO ON COD_EMP_BCO = COD_EMP_RRR AND COD_BCO = COD_BCO_RRR '+
                       'LEFT JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR '+
                       'LEFT JOIN GR_CONTRIBUINTES ON COD_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_CNT_RRR '+
                       'LEFT JOIN GR_LOGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP_RRR AND LOGRA.COD_LOG = COD_LOG_RRR '+
                       'LEFT JOIN CEP_TIPOLOGIA TIPENT ON TIPENT.COD_TIP_CEP = COD_TIPE_RRR '+
                       'LEFT JOIN CEP_TITULACAO TITENT ON TITENT.COD_TIT = COD_TITE_RRR '+
                       'LEFT JOIN GR_LOGRA LOGRAE ON LOGRAE.COD_EMP_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = COD_LOGE_RRR '+
                       'LEFT JOIN GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_EMP_RRR AND BAIE.COD_BAI = COD_BAIE_RRR '+
                       'LEFT JOIN GR_CIDADE CIDE ON CIDE.COD_CID = COD_CIDE_RRR '+
                       'LEFT JOIN RR_TPZONAESPECIAL TPZE ON TPZE.COD_EMP_RTZ = COD_EMP_RRR AND TPZE.COD_RTZ = COD_TPZONAESP_RRR '+
                       'LEFT JOIN RR_TPDESTIMV TPDI ON TPDI.COD_EMP_RDI = COD_EMP_RRR AND TPDI.COD_RDI = COD_DESTIMOV_RRR '+
                       'LEFT JOIN RR_TPORIGLITIGIO TPOL ON TPOL.COD_EMP_ROL = COD_EMP_RRR AND TPOL.COD_ROL = COD_ORIGLITIGIO_RRR '+
                       'LEFT JOIN RR_TPFORMAOB TPFO1 ON TPFO1.COD_EMP_RFO = COD_EMP_RRR AND TPFO1.COD_RFO = COD_FOBTENCAO_RRR '+
                       'LEFT JOIN RR_TPFORMAOB TPFO2 ON TPFO2.COD_EMP_RFO = COD_EMP_RRR AND TPFO2.COD_RFO = COD_FOBPOSSEJT_RRR '+
                       'LEFT JOIN RR_TPFORMAOB TPFO3 ON TPFO3.COD_EMP_RFO = COD_EMP_RRR AND TPFO3.COD_RFO = COD_FOBPOSSESO_RRR '+
                       'WHERE COD_EMP_RRR = '+ Sia_Empresa;
  cdsVis.Open;
  Condicao := '';

  if NovoAtend = 'NOVO' then
    BtnNovo.Click;
  if NovoAtend = 'Alterar' then
    DBGrid1DblClick(@Sender);
  if NovoAtend = 'Consulta' then
    ClicaGrid;
end;

procedure TFCadRural.ITBI1Click(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then Exit;
  Application.CreateForm(TFCadITBI, FCadITBI);
  if dm.Permissao(FCadITBI, 'DIV_FCadITBI', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadITBI.NovoAtend:= 'NOVO';
    FCadITBI.CAMPO1 := cdsCadastro.FieldValues['COD_CNT_RRR'];
    FCadITBI.CAMPO2 := cdsCadastro.FieldValues['NOME_CNT'];
    FCadITBI.CAMPO3 := 4;
    FCadITBI.CAMPO4 := cdsCadastro.FieldValues['COD_RRR'];
    FormBackShowModal(FCadITBI);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCadITBI.Free;
end;

procedure TFCadRural.btnADDcrtClick(Sender: TObject);
begin
  inherited;
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

  if (trim(mskCRT.Text) = '') then begin
    dm.msg.MessageDlg('Informe código de Característica.',mtInformation,[mbok],0);
    mskCRT.SetFocus;
    exit;
  end;

  if (trim(mskDCR.Text) = '') then begin
    dm.msg.MessageDlg('Informe código de Desdobramento da Característica.',mtInformation,[mbok],0);
    mskDCR.SetFocus;
    exit;
  end;

  if cdsCRT.Locate('COD_EMP_RR3;COD_CRT_RR3;COD_DCR_RR3',VarArrayOf([SIA_Empresa,mskCRT.Text,mskDCR.Text]),([])) then cdsCRT.Edit else cdsCRT.Append;
  cdsCRT.FieldValues['COD_RRR_RR3'] := cdsCadastro.FieldValues['COD_RRR'];
  cdsCRT.FieldValues['COD_CRT_RR3'] := mskCRT.Text;
  cdsCRT.FieldValues['COD_DCR_RR3'] := mskDCR.Text;
  cdsCRT.FieldValues['VALOR_RR3']   := mskVALOR.Text;
  cdsCRT.FieldValues['DESCRI_RR1']  := mskDCRT.Text;
  cdsCRT.FieldValues['DESCRI_RR2']  := mskDDESDO.Text;
  cdsCRT.Post;

  mskCRT.Clear;
  mskDCR.Clear;
  mskDCRT.Clear;
  mskDDESDO.Clear;
  mskVALOR.Clear;
end;

procedure TFCadRural.btnAlteraHisClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then exit;

  Application.CreateForm(TFCadHistoricos, FCadHistoricos);
  if dm.Permissao(FCadHistoricos, 'PRN_FCadHistoricos', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
    with FCadHistoricos do begin
      NovoAtend := 'Altera';
      CAMPO1 := 'RUR';
      CAMPO2 := FCadRural.cdsCadastro.fieldByName('COD_RRR').AsString;
      CAMPO3 := FCadRural.cdsHisto.FieldValues['COD_GHI'];
      CAMPO4 := '';
    end;
    FormBackShowModal(FCadHistoricos);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCadHistoricos.Free;

  cdsHisto.Close;
  sqlHisto.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlHisto.Params.ParamValues['cod']     := cdsCadastro.fieldByName('COD_RRR').AsString;
  cdsHisto.Open;
end;

procedure TFCadRural.BtnAlterarClick(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    PG.ActivePageIndex := 4;

  if cdsCadastro.IsEmpty then
    Exit;

  //Cajobi
  if (TiraCaracter(dm.cdsEmpresa.FieldByName('CNPJ_EMP').AsString) = '46614400000198') then
    EvDBNumEdit5.Tag := 1;

  PG.ActivePageIndex      := 0;
  PGGeral.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadRural);
  cdsCadastro.Edit;

  DBEdit25.Enabled     := False;
  btnContrib.Enabled   := False;
  btnTransfere.Enabled := btnTransfere.Visible;
  DBEdit6.SetFocus;
end;

procedure TFCadRural.btnAnexarClick(Sender: TObject);
var P: TPoint;
begin
  with TRzBitBtn(Sender) do begin
    P := ClientToScreen(Point(0, Height));
    popAnexo.Popup(P.x, p.y);
  end;
end;

procedure TFCadRural.AnexarFotos1Click(Sender: TObject);
var CArq   : TArquivos;
begin
  cArq := TArquivos.Create;
  CArq.AbrirAnexos(cdsCadastro, 'IMG', '', 'RR_CAD_RURAL', FCadRural);
  FreeAndNil(cArq);
end;

procedure TFCadRural.Documentos2Click(Sender: TObject);
var CArq   : TArquivos;
begin
  cArq := TArquivos.Create;
  CArq.AbrirAnexos(cdsCadastro, 'DOC', '', 'RR_CAD_RURAL', FCadRural);
  FreeAndNil(cArq);
end;

procedure TFCadRural.btnBai1Click(Sender: TObject);
var Pesq : TPesq_Bairro;
begin
  inherited;
  Pesq := TPesq_Bairro.Create;

  if Pesq.BotaoBairro then begin
    cdsCadastro.fieldbyname('COD_BAIE_RRR').Value := Pesq.CodBairro;
    cdsCadastro.fieldbyname('BAIRROE_RRR').Value  := Pesq.Bairro;
  end;

  FreeAndNil(Pesq);
end;

procedure TFCadRural.btnCobrancaClick(Sender: TObject);
var Pesq : TPesq_CobRural;
begin
  inherited;
  Pesq := TPesq_CobRural.Create;
  if Pesq.BotaoCobRural then begin
    TMaskEdit(sender).text := Pesq.Codigo;
    DBText2.Caption        := Pesq.Descricao;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.btnBancoClick(Sender: TObject);
var Pesq : TPesq_Banco;
begin
  inherited;
  Pesq := TPesq_Banco.Create;
  if Pesq.BotaoBanco then begin
    cdsCadastro.fieldbyname('COD_BCO_RRR').Value   := Pesq.Codigo;
    cdsCadastro.fieldbyname('COD_BANCO_RRR').Value := Pesq.Banco;
    cdsCadastro.fieldbyname('COD_AGEN_RRR').Value  := Pesq.Agencia;
    cdsCadastro.fieldbyname('COD_CONTA_RRR').Value := Pesq.Conta;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.BtnCancelaClick(Sender: TObject);
begin
  desabilita(FCadRural);

  if cdsSocios.State in [dsEdit, dsInsert] then
    cdsSocios.Cancel;

  if cdsSocios.ChangeCount > 0 then
    cdsSocios.CancelUpdates;

  if cdsCadastro.State in [dsEdit, dsInsert] then
    cdsCadastro.Cancel;

  if cdsCadastro.ChangeCount > 0 then
    cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then
    dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  PGGeral.ActivePageIndex  := 0;
  PGImovel.ActivePageIndex := 0;
  PGCad.ActivePageIndex := 0;
  cdsCadastro.Close;
  cdsRec.Close;
  cdsHisAlt.Close;
  cdsTransf.Close;
  cdsProdIso.Close;
  cdsProRot.Close;
  cdsPasto.Close;
  cdsPecuaria.Close;
  cdsGranj.Close;
  cdsAOutUso.Close;
  cdsARest.Close;
  cdsCRT.Close;
  cdsSocios.Close;

  btnTransfere.Enabled := (not btnTransfere.Visible);
  DBEdit33.Text := '';
  DBEdit27.Text := '';
  DBEdit32.Text := '';
  DBEdit34.Text := '';
  DBEdit31.Text := '';
end;

procedure TFCadRural.btnCid1Click(Sender: TObject);
var Pesq : TPesq_Cidade;
begin
  Pesq := TPesq_Cidade.Create;
  if Pesq.BotaoCidade then begin
    cdsCadastro.fieldbyname('COD_CIDE_RRR').Value := Pesq.CodCidade;
    cdsCadastro.fieldbyname('CIDENT').Value       := Pesq.Cidade;
    cdsCadastro.fieldbyname('UFE_RRR').Value      := Pesq.UF;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
    qrx : TSQLQuery;
    cod : Integer;
    Pesq : TPesq_ConfCalcRR;
    PCls : TPesq_Classificacao_RR;
    PZna : TPesq_ZonaFiscalValor_RR;
    vrALQ, vrHEQ : Variant;
begin
  Erros                   := 0;
  PG.ActivePageIndex      := 0;
  PGGeral.ActivePageIndex := 0;

  Pesq := TPesq_ConfCalcRR.Create;
  Pesq.CarregaConfig;

  if trim(vartostr(Pesq.v03)) = '' then begin
    dm.msg.MessageDlg('Atenção!!!'+#13+
                   'Para se efetuar um Cadastro é necessário que as Configurações para o Cálculo do Valor Venal estejam cadastradas.'+#13+
                   'Entrar em [TABELAS GERAIS] - [1.8 - Configurações]', mtWarning, [mbok], 0);
    FreeAndNil(Pesq);
    exit;
  end;

  if trim(DBEdit1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Cadastro é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit1.SetFocus;
    Exit;
  end;

  If cdsCadastro.State = dsInsert Then Begin
    QVerCod.Close;
    QVerCod.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
    QVerCod.Params.ParamByName('cod').AsString := DBEdit1.Text;
    QVerCod.Open;

    If QVerCod.FieldByName('TOT').AsInteger<>0 Then Begin
      showmessage('ATENÇÃO : Este Código já consta no Banco de Dados !');
      DBEdit1.SetFocus;
    End;

    QVerCod.Close;
  End;

  // Código Automático
  if (StrToFloat(TiraCaracter(DBEdit1.Text)) = 0) and (Condicao = 'Incluindo') then begin
     qrx := TSQLQuery.Create(self);
     qrx.SQLConnection := dm.Conexao;
     qrx.SQL.Text := 'SELECT MAX(COD_RRR) COD '+
                     'FROM RR_CAD_RURAL '+
                     'WHERE COD_EMP_RRR = '+ SIA_Empresa;
     qrx.Open;
     if not qrx.IsEmpty then begin
       cod := strtoint(TiraCaracter(qrx.FieldByName('COD').AsString));
       if not (cdsCadastro.State in [dsEdit, dsInsert]) then cdsCadastro.Edit;
       cdsCadastro.FieldByName('COD_RRR').AsString := MontaMascara(inttostr(cod + 1), 'RUR', SIA_Empresa);
     end
     else begin
        dm.msg.MessageDlg('O Código é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
        DBEdit1.SetFocus;
        FreeAndNil(qrx);
        Exit;
     end;

     FreeAndNil(qrx);
  end;

  if trim(DBEdit6.Text) = '' then begin
    dm.msg.MessageDlg('O campo Inscrição é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit6.SetFocus;
    Exit;
  end;

  PGImovel.ActivePageIndex := 0;

  if trim(DBEdit21.Text) = '' then begin
    dm.msg.MessageDlg('O campo Propriedade é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit21.SetFocus;
    Exit;
  end;

  PGImovel.ActivePageIndex := 1;

  // ((((Área Alqu. * indice Aum. * 1,50)/100)+PontDistância) * VrPonto
  if copy(vartostr(Pesq.v03),1,2) = '01' then begin
   if cdsCadastro.FieldByName('AREAH_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor do Alqueire é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit2.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;

   if cdsCadastro.FieldByName('DISTANCIA_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor da Distância é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit6.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // Valor do ponto * Nº do Pontos
  if copy(vartostr(Pesq.v03),1,2) = '02' then begin
   if cdsCadastro.FieldByName('PONTOS_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor dos Pontos é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit5.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // Valor Alqueire * Alqueire
  if copy(vartostr(Pesq.v03),1,2) = '03' then begin
   if cdsCadastro.FieldByName('AREAH_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor do Alqueire é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit2.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // (Valor do Ponto * Nponto) * (100-Valor TabDistancia)/100
  if copy(vartostr(Pesq.v03),1,2) = '04' then begin
   if cdsCadastro.FieldByName('PONTOS_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor dos Pontos é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit5.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;

   if cdsCadastro.FieldByName('DISTANCIA_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor da Distância é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit6.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // (Valor do Ponto * Nponto) * (Valor TabDistancia/100)
  if copy(vartostr(Pesq.v03),1,2) = '05' then begin
   if cdsCadastro.FieldByName('PONTOS_RRR').AsFloat <= 0 then begin
     dm.msg.MessageDlg('O valor dos Pontos é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit5.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;

   if cdsCadastro.FieldByName('DISTANCIA_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor da Distância é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit6.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // ((((Área Alqu. * indice Aum. * 1,35)/100)+PontDistância) * VrPonto
  if copy(vartostr(Pesq.v03),1,2) = '06' then begin
   if cdsCadastro.FieldByName('AREAH_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor do Alqueire é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit2.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;

   if cdsCadastro.FieldByName('DISTANCIA_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor da Distância é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit6.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // Indice * Area em Alqueire
  if copy(vartostr(Pesq.v03),1,2) = '07' then begin
   if cdsCadastro.FieldByName('AREAH_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor do Alqueire é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit2.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // Indice * Area em Equitare
  if copy(vartostr(Pesq.v03),1,2) = '08' then begin
   if cdsCadastro.FieldByName('AREAE_RRR').AsFloat < 0 then begin
     dm.msg.MessageDlg('O valor do Hequitáre é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit1.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // Area em Hectare * Valor Classificaão * Pontos
  if copy(vartostr(Pesq.v03),1,2) = '10' then begin
   if cdsCadastro.FieldByName('PONTOS_RRR').AsFloat <= 0 then begin
     dm.msg.MessageDlg('O valor dos Pontos é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit5.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;

   if cdsCadastro.FieldByName('AREAE_RRR').AsFloat <= 0 then begin
     dm.msg.MessageDlg('A Area em Hectare é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     EvDBNumEdit1.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;

   if trim(cdsCadastro.FieldByName('COD_CLASS_RRR').AsString) = '' then begin
     dm.msg.MessageDlg('A Classificação é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
     PGImovel.ActivePageIndex := 0;
     DBEdit3.SetFocus;
     FreeAndNil(Pesq);
     exit;
   end;
  end;

  // Area em Hectare * Classificação
  if copy(vartostr(Pesq.v03),1,2) = '12' then begin
    if cdsCadastro.FieldByName('AREAE_RRR').AsFloat <= 0 then begin
      dm.msg.MessageDlg('A Area em Hectare é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
      EvDBNumEdit1.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;

    if trim(cdsCadastro.FieldByName('COD_CLASS_RRR').AsString) = '' then begin
      dm.msg.MessageDlg('A Classificação é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
      PGImovel.ActivePageIndex := 0;
      DBEdit3.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;
  end;

  // Area em Alqueire * ZonaFiscal
  if copy(vartostr(Pesq.v03),1,2) = '13' then begin
    if cdsCadastro.FieldByName('AREAH_RRR').AsFloat <= 0 then begin
      dm.msg.MessageDlg('A Area em Alqueires é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
      EvDBNumEdit2.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;

    if trim(cdsCadastro.FieldByName('COD_ZNA_RRR').AsString) = '' then begin
      dm.msg.MessageDlg('A Zona Fiscal é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
      PGImovel.ActivePageIndex := 0;
      DBEdit69.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;
  end;

  // Area em Hectare * ZonaFiscal
  if copy(vartostr(Pesq.v03),1,2) = '14' then begin
    if cdsCadastro.FieldByName('AREAE_RRR').AsFloat <= 0 then begin
      dm.msg.MessageDlg('A Area em Hectare é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
      EvDBNumEdit1.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;

    if trim(cdsCadastro.FieldByName('COD_ZNA_RRR').AsString) = '' then begin
      dm.msg.MessageDlg('A Zona Fiscal é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
      PGImovel.ActivePageIndex := 0;
      DBEdit69.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;
  end;


  //Cajobi
  if (TiraCaracter(dm.cdsEmpresa.FieldByName('CNPJ_EMP').AsString) = '46614400000198') then begin
    if cdsCadastro.FieldByName('AREAH_RRR').AsFloat <= 0 then begin
      dm.msg.MessageDlg('O valor do Alqueire é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
      EvDBNumEdit2.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;

    cdsCadastro.FieldByName('PONTOS_RRR').AsFloat := cdsCadastro.FieldByName('AREAH_RRR').AsFloat / 30;
  end;

  //removi pois considerando a substituição da virgula por ponto... o calculo não fica exatamente o que tem que ser... pois o ponto é considerado um sinal de milhas
  //  vrALQ := iif(((trim(VarToStr(Pesq.v05)) = '') or (trim(VarToStr(Pesq.v05)) = '0')), 1, Replace(VarToStr(Pesq.v05),',','.'));
  //  vrHEQ := iif(((trim(VarToStr(Pesq.v06)) = '') or (trim(VarToStr(Pesq.v06)) = '0')), 1, Replace(VarToStr(Pesq.v06),',','.'));
  vrALQ := iif(((trim(VarToStr(Pesq.v05)) = '') or (trim(VarToStr(Pesq.v05)) = '0')), 1, VarToStr(Pesq.v05));
  vrHEQ := iif(((trim(VarToStr(Pesq.v06)) = '') or (trim(VarToStr(Pesq.v06)) = '0')), 1, VarToStr(Pesq.v06));

  if (copy(trim(vartostr(Pesq.v03)),1,2) = '01') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsFloat * vrALQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '02') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsFloat * vrHEQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '03') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsFloat * vrALQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '04') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsFloat * vrHEQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '05') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsFloat * vrHEQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '06') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsFloat * vrALQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '07') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsFloat * vrALQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '08') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsFloat * vrHEQ, 2)
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '09') then begin
    PCls := TPesq_Classificacao_RR.Create;
    PCls.PesquisaClassificacaoRR(cdsCadastro.FieldByName('COD_CLASS_RRR').AsString,Sia_Exercicio);
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsFloat * PCls.Valor, 2);
    FreeAndNil(PCls);
  end
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '10') then begin
    PCls := TPesq_Classificacao_RR.Create;
    PCls.PesquisaClassificacaoRR(cdsCadastro.FieldByName('COD_CLASS_RRR').AsString,Sia_Exercicio);
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsFloat * PCls.Valor * ((cdsCadastro.fieldByName('PONTOS_RRR').AsFloat/100)+1),2);
    FreeAndNil(PCls);
  end
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '11') then begin
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.FieldByName('VVENAL_RRR').AsFloat,2);
  end
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '12') then begin
    PCls := TPesq_Classificacao_RR.Create;
    PCls.PesquisaClassificacaoRR(cdsCadastro.FieldByName('COD_CLASS_RRR').AsString,Sia_Exercicio);
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsFloat * PCls.Valor, 2);
    FreeAndNil(PCls);
  end
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '13') then begin
    PZna := TPesq_ZonaFiscalValor_RR.Create;
    PZna.PesquisaRR_ZONA_VALOR(cdsCadastro.FieldByName('COD_ZNA_RRR').AsString, Sia_Exercicio);
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAH_RRR').AsFloat * PZna.VALOR_RZV, 2);
    FreeAndNil(PZna);
  end
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '14') then begin
    PZna := TPesq_ZonaFiscalValor_RR.Create;
    PZna.PesquisaRR_ZONA_VALOR(cdsCadastro.FieldByName('COD_ZNA_RRR').AsString, Sia_Exercicio);
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.fieldByName('AREAE_RRR').AsFloat * PZna.VALOR_RZV, 2);
    FreeAndNil(PZna);
  end
  else if (copy(trim(vartostr(Pesq.v03)),1,2) = '15') then
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.FieldByName('AREAE_RRR').AsFloat * vrHEQ,2)
  else
    cdsCadastro.FieldByName('VVENAL_RRR').AsFloat := Arredonda(cdsCadastro.FieldByName('AREAE_RRR').AsFloat * vrHEQ,2);

  FreeAndNil(Pesq);

  PGGeral.ActivePageIndex := 1;
  if trim(DBEdit25.Text) = '' then begin
    dm.msg.MessageDlg('O campo Proprietário é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit25.SetFocus;
    Exit;
  end;

  if not VerificaCamposObrigatorios then exit;
  VoltaObjetos;

  PG.ActivePageIndex := 0;
  PGGeral.ActivePageIndex := 0;
  PGImovel.ActivePageIndex := 0;
  PGCad.ActivePageIndex := 0;
  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if not cdsCadastro.FieldByName('CEPE_RRR').IsNull then begin
    if not (cdsCadastro.State in [dsEdit, dsInsert]) then cdsCadastro.Edit;
    cdsCadastro.FieldByName('CEPE_RRR').AsString := TiraCaracter(cdsCadastro.FieldByName('CEPE_RRR').AsString);
  end;

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Post;
  if cdsRec.State      in [dsEdit, dsInsert] then cdsRec.Post;
  if cdsProdIso.State  in [dsEdit, dsInsert] then cdsProdIso.Post;
  if cdsProRot.State   in [dsEdit, dsInsert] then cdsProRot.Post;
  if cdsPasto.State    in [dsEdit, dsInsert] then cdsPasto.Post;
  if cdsPecuaria.State in [dsEdit, dsInsert] then cdsPecuaria.Post;
  if cdsGranj.State    in [dsEdit, dsInsert] then cdsGranj.Post;
  if cdsAOutUso.State  in [dsEdit, dsInsert] then cdsAOutUso.Post;
  if cdsARest.State    in [dsEdit, dsInsert] then cdsARest.Post;
  if cdsCRT.State      in [dsEdit, dsInsert] then cdsCRT.Post;
  if cdsSocios.State   in [dsEdit, dsInsert] then cdsSocios.Post;

  if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);
  if cdsRec.ChangeCount > 0      then Erros := Erros + cdsRec.ApplyUpdates(-1);
  if cdsProdIso.ChangeCount > 0  then Erros := Erros + cdsProdIso.ApplyUpdates(-1);
  if cdsProRot.ChangeCount > 0   then Erros := Erros + cdsProRot.ApplyUpdates(-1);
  if cdsPasto.ChangeCount > 0    then Erros := Erros + cdsPasto.ApplyUpdates(-1);
  if cdsPecuaria.ChangeCount > 0 then Erros := Erros + cdsPecuaria.ApplyUpdates(-1);
  if cdsGranj.ChangeCount > 0    then Erros := Erros + cdsGranj.ApplyUpdates(-1);
  if cdsAOutUso.ChangeCount > 0  then Erros := Erros + cdsAOutUso.ApplyUpdates(-1);
  if cdsARest.ChangeCount > 0    then Erros := Erros + cdsARest.ApplyUpdates(-1);
  if cdsCRT.ChangeCount > 0      then Erros := Erros + cdsCRT.ApplyUpdates(-1);
  if cdsSocios.ChangeCount > 0   then Erros := Erros + cdsSocios.ApplyUpdates(-1);

  if Erros = 0 then
    dm.Conexao.Commit(TD)
  else begin
    dm.Conexao.Rollback(TD);
    exit;
    //mensagem de erro
    desabilita(FCadRural);
  end;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlCadastro.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  cdsCadastro.Open;

  cdsCRT.Close;
  cdsCRT.Open;

  cdsHisAlt.Close;
  sqlHisAlt.Params.ParamValues['empresa']  := sqlCadastro.Params.ParamValues['empresa'];
  sqlHisAlt.Params.ParamValues['rural']    := sqlCadastro.Params.ParamValues['cod'];
  cdsHisAlt.Open;

  cdsTransf.Close;
  sqlTransf.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlTransf.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  cdsTransf.Open;

  cdsSocios.Close;
  sqlSocios.Params.ParamValues['empresa']  := strtoint(SIA_Empresa);
  sqlSocios.Params.ParamValues['cod']      := sqlCadastro.Params.ParamValues['cod'];
  cdsSocios.Open;

  cdsRec.Close;
  cdsRec.Open;

  cdsProdIso.Close;
  cdsProdIso.Open;

  cdsProRot.Close;
  cdsProRot.Open;

  cdsPasto.Close;
  cdsPasto.Open;

  cdsPecuaria.Close;
  cdsPecuaria.Open;

  cdsGranj.Close;
  cdsGranj.Open;

  cdsAOutUso.Close;
  cdsAOutUso.Open;

  cdsARest.Close;
  cdsARest.Open;

  cdsCRT.Close;
  cdsCRT.Open;

  DBEdit33.Text := '';
  DBEdit27.Text := '';
  DBEdit32.Text := '';
  DBEdit34.Text := '';
  DBEdit31.Text := '';

  Book := cdsVis.GetBookmark;
  if Condicao <> 'Alterando' then begin
    cdsVis.Close;
    cdsVis.Open;
  end
  else cdsVis.Refresh;
  if not cdsVis.IsEmpty then
   if Book <> Nil then
    if cdsVis.BookmarkValid(Book) then cdsVis.GotoBookmark(Book);
  Book := Nil;

  desabilita(FCadRural);
  btnTransfere.Enabled := (not btnTransfere.Visible);

  if Condicao = 'Alterando' then
    dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadRural.btnContribClick(Sender: TObject);
var Pesq : TPesq_CNT;
begin
  inherited;

  if (cdsCadastro.State = dsEdit) then begin
    if btnTransfere.Visible then btnTransfere.SetFocus;
    exit;
  end;

  Pesq := TPesq_CNT.Create;
  if Pesq.BotaoCNT('') then begin
    cdsCadastro.FieldValues['COD_CNT_RRR'] := Pesq.Codigo;
    cdsCadastro.FieldValues['NOME_CNT']    := Pesq.Nome;
    cdsCadastro.FieldValues['RG_CNT']      := Pesq.Rgc;
    cdsCadastro.FieldValues['CNPJ_CNT']    := Pesq.Cnpj;
    cdsCadastro.FieldValues['FONE_CNT']    := Pesq.Fone;
    cdsCadastro.FieldValues['EMAIL_CNT']   := Pesq.Email;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.btnCRTClick(Sender: TObject);
var Pesq : TPesq_RR_CAD_DESDOCRT;
begin
  inherited;
  Pesq := TPesq_RR_CAD_DESDOCRT.Create;
  if Pesq.BotaoRR_CAD_DESDOCRT then begin
    mskCRT.Text    := vartostr(Pesq.COD_CRT_RR2);
    mskDCRT.Text   := vartostr(Pesq.DESCRI_CRT);
    mskDCR.Text    := vartostr(Pesq.COD_RR2);
    mskDDESDO.Text := vartostr(Pesq.DESCRI_RR2);
    mskVALOR.SetFocus;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadRural.btnDELcrtClick(Sender: TObject);
begin
  if not (cdsCadastro.State in [dsEdit, dsInsert]) then
    exit;

  if not cdsCRT.Active then
    exit;

  if cdsCRT.IsEmpty then
    exit;

  cdsCRT.Delete;

  mskCRT.Clear;
  mskDCR.Clear;
  mskDCRT.Clear;
  mskDDESDO.Clear;
  mskVALOR.Clear;
end;

procedure TFCadRural.btnEmailClick(Sender: TObject);
var Caminho, Arquivo, Extensao, Mensagem, Atachar, A_C : string;
begin
 inherited;
 if cdsCadastro.IsEmpty then exit;

 if cdsCadastro.FieldByName('EMAIL_CNT').IsNull then begin
   dm.msg.MessageDlg('É necessário cadastrar um Email.', mtWarning, [mbok], 0);
   DBEdit5.SetFocus;
   exit;
 end;
 if cdsCadastro.FieldByName('EMAIL_CNT').AsString = '' then begin
   dm.msg.MessageDlg('É necessário cadastrar um Email.', mtWarning, [mbok], 0);
   DBEdit5.SetFocus;
   exit;
 end;

 if not dm.cdsEmpresa.Active then dm.cdsEmpresa.Open;

 if dm.cdsEmpresa.FieldByName('EMAILENV_EMP').IsNull then begin
    dm.msg.MessageDlg('Cadastrar o Email de Envio em [Módulo Principal] - [Tabelas Gerais] - [08 - Empresa].',mtError, [mbOk], 0);
    exit;
 end;
 if dm.cdsEmpresa.FieldByName('SERVSMTP_EMP').IsNull then begin
    dm.msg.MessageDlg('Cadastrar o Servidor de Email (SMTP) em [Módulo Principal] - [Tabelas Gerais] - [08 - Empresa].',mtError, [mbOk], 0);
    exit;
 end;
 if dm.cdsEmpresa.FieldByName('AUTENTICA_EMP').AsString = 'S' then begin
   if dm.cdsEmpresa.FieldByName('USUEMAIL_EMP').IsNull then begin
      dm.msg.MessageDlg('Seu Servidor Requer Autenticação.'+#13+
                     'Cadastrar o Usuário de Autenticação em [Módulo Principal] - [Tabelas Gerais] - [08 - Empresa].',mtError, [mbOk], 0);
      exit;
   end;
   if dm.cdsEmpresa.FieldByName('SENHAEMAIL_EMP').IsNull then begin
      dm.msg.MessageDlg('Seu Servidor Requer Autenticação.'+#13+
                     'Cadastrar a Senha de Autenticação em [Módulo Principal] - [Tabelas Gerais] - [08 - Empresa].',mtError, [mbOk], 0);
      exit;
   end;
 end;

 caminho := ExtractFilePath(Application.ExeName) + 'Suporte\';
 if not DirectoryExists(caminho) then ForceDirectories(caminho);

 Application.CreateForm(TFEMail, FEMail);
 with FEMail do begin
  Serv  := vartostr(dm.cdsEmpresa.FieldValues['SERVSMTP_EMP']);
  Para  := cdsCadastro.FieldByName('EMAIL_CNT').AsString;
  De    := vartostr(dm.cdsEmpresa.FieldValues['EMAILENV_EMP']);
  Usu   := vartostr(dm.cdsEmpresa.FieldValues['USUEMAIL_EMP']);
  Senha := vartostr(dm.cdsEmpresa.FieldValues['SENHAEMAIL_EMP']);
  SMTPCript := vartostr(dm.cdsEmpresa.FieldValues['TIPOCRIPTEMAIL_EMP']);
  RequerAutentica := (vartostr(dm.cdsEmpresa.FieldValues['AUTENTICA_EMP']) = 'S');
  if dm.cdsEmpresa.FieldByName('PORTA_EMP').IsNull then Porta := 25
  else Porta := dm.cdsEmpresa.FieldByName('PORTA_EMP').AsInteger;

  EdPara.Text := Para;
  EdAssunto.Text := dm.cdsEmpresa.FieldByName('NOME_EMP').AsString;
//  if trim(Atachar) <> '' then begin
//    CbxAtachados.Items.Add(Atachar);
//    CbxAtachados.Text := Atachar;
//    TIdAttachmentFile.Create(IdMsgSend.MessageParts, Atachar);
//  end;
  cboPriority.ItemIndex := 2;

  A_C := '';
  A_C := ' A/C: '+ cdsCadastro.FieldByName('NOME_CNT').AsString;

  Mensagem.Text := 'De: '+ dm.cdsEmpresa.FieldByName('NOME_EMP').AsString +
                   #13#10 + #13#10 + A_C +#13#10 +
                   '_____________________________________________________________________'+
                   #13#10 +
                   'Assunto: (Escreva aqui o Assunto Referente)' +
                   #13#10 + #13#10 + #13#10 + #13#10 +
                   '_____________________________________________________________________';
 end;
 FormBackShowModal(FEMail);
 FEMail.Free;
end;

procedure TFCadRural.btnExcluiHisClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then exit;

  Application.CreateForm(TFCadHistoricos, FCadHistoricos);
  if dm.Permissao(FCadHistoricos, 'PRN_FCadHistoricos', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
    with FCadHistoricos do begin
      NovoAtend := 'Excluir';
      CAMPO1 := 'RUR';
      CAMPO2 := FCadRural.cdsCadastro.fieldByName('COD_RRR').AsString;
      CAMPO3 := FCadRural.cdsHisto.FieldValues['COD_GHI'];
      CAMPO4 := '';
    end;
    FCadHistoricos.BtnExcluir.Click;
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCadHistoricos.Free;

  cdsHisto.Close;
  sqlHisto.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlHisto.Params.ParamValues['cod']     := cdsCadastro.fieldByName('COD_RRR').AsString;
  cdsHisto.Open;
end;

procedure TFCadRural.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 4;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadRural);
  dm.msg.DefaultButton := mbNo;
  if not VerDividaRural(Sia_Empresa, cdsCadastro.FieldByName('COD_RRR').AsString) then begin
    if dm.msg.MessageDlg('Atenção !!!'+#13+
                      'Ao Excluir a Propriedade, todo seu cadastro de Histórico e de Alterações será Eliminado.'+#13+
                      'Deseja Continuar ?',mtWarning ,[mbyes,mbno] ,0) = mrno then exit;
  end
  else exit;

  if dm.msg.MessageDlg('Deseja Realmente Excluir o Registro ?',mtConfirmation ,[mbyes,mbno] ,0) = mryes then begin
    if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

    cdsCRT.First;
    while not cdsCRT.Eof do cdsCRT.Delete;

    cdsAOutUso.First;
    while not cdsAOutUso.Eof do cdsAOutUso.Delete;

    cdsARest.First;
    while not cdsARest.Eof do cdsARest.Delete;

    cdsRec.First;
    while not cdsRec.Eof do cdsRec.Delete;

    cdsHisAlt.First;
    while not cdsHisAlt.Eof do cdsHisAlt.Delete;

    cdsTransf.First;
    while not cdsTransf.Eof do cdsTransf.Delete;

    cdsGranj.First;
    while not cdsGranj.Eof do cdsGranj.Delete;

    cdsProdIso.First;
    while not cdsProdIso.Eof do cdsProdIso.Delete;

    cdsProRot.First;
    while not cdsProRot.Eof do cdsProRot.Delete;

    cdsPasto.First;
    while not cdsPasto.Eof do cdsPasto.Delete;

    cdsPecuaria.First;
    while not cdsPecuaria.Eof do cdsPecuaria.Delete;

    cdsSocios.First;
    while not cdsSocios.Eof do cdsSocios.Delete;

    cdsCadastro.Delete;

    if cdsCRT.ChangeCount > 0      then Erros := cdsCRT.ApplyUpdates(-1);
    if cdsAOutUso.ChangeCount > 0  then Erros := Erros + cdsAOutUso.ApplyUpdates(-1);
    if cdsARest.ChangeCount > 0    then Erros := Erros + cdsARest.ApplyUpdates(-1);
    if cdsRec.ChangeCount > 0      then Erros := Erros + cdsRec.ApplyUpdates(-1);
    if cdsHisAlt.ChangeCount > 0   then Erros := Erros + cdsHisAlt.ApplyUpdates(-1);
    if cdsTransf.ChangeCount > 0   then Erros := Erros + cdsTransf.ApplyUpdates(-1);
    if cdsGranj.ChangeCount > 0    then Erros := Erros + cdsGranj.ApplyUpdates(-1);
    if cdsProdIso.ChangeCount > 0  then Erros := Erros + cdsProdIso.ApplyUpdates(-1);
    if cdsSocios.ChangeCount > 0   then Erros := Erros + cdsSocios.ApplyUpdates(-1);
    if cdsProRot.ChangeCount > 0   then Erros := Erros + cdsProRot.ApplyUpdates(-1);
    if cdsPasto.ChangeCount > 0    then Erros := Erros + cdsPasto.ApplyUpdates(-1);
    if cdsPecuaria.ChangeCount > 0 then Erros := Erros + cdsPecuaria.ApplyUpdates(-1);
    if cdsCadastro.ChangeCount > 0 then Erros := Erros + cdsCadastro.ApplyUpdates(-1);

    if Erros = 0 then begin
      dm.Conexao.Commit(TD);
      cdsVis.Close;
      cdsVis.Open;
    end
    else
      dm.Conexao.RollBack(TD);
  end;
  desabilita(FCadRural);
  cdsCadastro.Close;
  cdsRec.Close;
  cdsHisAlt.Close;
  cdsTransf.Close;
  cdsProdIso.Close;
  cdsProRot.Close;
  cdsPasto.Close;
  cdsPecuaria.Close;
  cdsGranj.Close;
  cdsSocios.Close;
  cdsAOutUso.Close;
  cdsARest.Close;
  cdsCRT.Close;

  btnTransfere.Enabled := (not btnTransfere.Visible);
  DBEdit33.Text := '';
  DBEdit27.Text := '';
  DBEdit32.Text := '';
  DBEdit34.Text := '';
  DBEdit31.Text := '';

  PG.ActivePageIndex := 0;
  PGImovel.ActivePageIndex := 0;
  PGCad.ActivePageIndex := 0;
end;

procedure TFCadRural.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadRural.BtnFuncoesClick(Sender: TObject);
var P: TPoint;
begin
  with TRzBitBtn(Sender) do begin
    P := ClientToScreen(Point(0, Height));
    pop1.Popup(P.x, p.y);
  end;
end;

procedure TFCadRural.btnIEClick(Sender: TObject);
begin
  inherited;
  if trim(DBEdit48.Text) = '' then exit;

  Application.CreateForm(TFConsSite, FConsSite);
  If Length(TiraCaracter(DBEdit48.Text)) = 11 Then FConsSite.Consulta := 'CPF';
  If Length(TiraCaracter(DBEdit48.Text)) = 14 then FConsSite.Consulta := 'CNPJ';
  FormBackShowModal(FConsSite);
  FConsSite.Free;
end;

procedure TFCadRural.btnIMPcrtClick(Sender: TObject);
var qrx : TSQLQuery;
begin
  inherited;
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT RR_CAD_DESDOCRT.COD_EMP_RR2, '+
                         'RR_CAD_DESDOCRT.COD_CRT_RR2, '+
                         'RR_CAD_CRT.DESCRI_RR1, '+
                         'RR_CAD_DESDOCRT.COD_RR2, '+
                         'RR_CAD_DESDOCRT.DESCRI_RR2 '+
                  'FROM RR_CAD_DESDOCRT '+
                  'INNER JOIN RR_CAD_CRT ON RR_CAD_CRT.COD_EMP_RR1 = RR_CAD_DESDOCRT.COD_EMP_RR2 '+
                                      ' AND RR_CAD_CRT.COD_RR1 = RR_CAD_DESDOCRT.COD_CRT_RR2 '+
                  'WHERE RR_CAD_DESDOCRT.COD_EMP_RR2 = '+ SIA_Empresa +
                   ' AND RR_CAD_DESDOCRT.PADRAO_RR2 = ''S'' '+
                   ' AND RR_CAD_CRT.MOSTRAR_RR1 = ''S'' '+
                   ' AND NOT EXISTS (SELECT 1 FROM RR_REL_CRT '+
                                    'WHERE RR_REL_CRT.COD_EMP_RR3 = RR_CAD_DESDOCRT.COD_EMP_RR2 '+
                                     ' AND RR_REL_CRT.COD_CRT_RR3 = RR_CAD_DESDOCRT.COD_CRT_RR2 '+
                                     ' AND RR_REL_CRT.COD_DCR_RR3 = RR_CAD_DESDOCRT.COD_RR2 '+
                                     //' AND RR_REL_CRT.COD_RR3 = '+''''+ vartostr(cdsCadastro.FieldValues['COD_RRR']) +''''+')';
                                     ' AND RR_REL_CRT.COD_RRR_RR3 = '+''''+ vartostr(cdsCadastro.FieldValues['COD_RRR']) +''''+')';
  qrx.Open;
  if not qrx.IsEmpty then begin
    while not qrx.Eof do begin
      if cdsCRT.Locate('COD_EMP_RR3;COD_CRT_RR3;COD_DCR_RR3',VarArrayOf([qrx.FieldByName('COD_EMP_RR2').AsString,qrx.FieldByName('COD_CRT_RR2').AsString,qrx.FieldByName('COD_RR2').AsString]),([loPartialKey])) then cdsCRT.Edit else cdsCRT.Append;
      cdsCRT.FieldValues['COD_RRR_RR3'] := cdsCadastro.FieldValues['COD_RRR'];
      cdsCRT.FieldValues['COD_CRT_RR3']    := qrx.FieldValues['COD_CRT_RR2'];
      cdsCRT.FieldValues['COD_DCR_RR3']    := qrx.FieldValues['COD_RR2'];
      cdsCRT.FieldValues['VALOR_RR3']      := NULL;
      cdsCRT.FieldValues['DESCRI_RR1']     := qrx.FieldValues['DESCRI_RR1'];
      cdsCRT.FieldValues['DESCRI_RR2']     := qrx.FieldValues['DESCRI_RR2'];

      qrx.Next;
    end;
  end;
  FreeAndNil(qrx);
end;

procedure TFCadRural.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRelRolRR, FRelRolRR);
  SIA_Aplicacao := 'FRelRolRR';
  if cdsCadastro.Active then begin
    FRelRolRR.msk1.Text := cdsCadastro.FieldByName('COD_RRR').AsString;
    FRelRolRR.msk2.Text := cdsCadastro.FieldByName('COD_RRR').AsString;
    FRelRolRR.BtnConfirma.Click;
  end
  else FRelRolRR.ShowModal;
  FRelRolRR.Free;
end;

function TFCadRural.ArqvFOTOJaExiste(Arquivo : string) : boolean;
var qrx : TSQLQuery;
begin
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text :=
    'SELECT ' +
    '  FOT.*, '+
    '  CNT.NOME_CNT '+
    'FROM ' +
    '  RR_CAD_FOTOS FOT ' +
    '  INNER JOIN RR_CAD_RURAL RRR ON RRR.COD_EMP_RRR = FOT.COD_EMP_FOT AND RRR.COD_RRR = FOT.COD_RRR_FOT ' +
    '  INNER JOIN GR_CONTRIBUINTES CNT ON CNT.COD_EMP_CNT = RRR.COD_EMP_RRR AND CNT.COD_CNT = RRR.COD_CNT_RRR ' +
    'WHERE ' +
    '  FOT.COD_EMP_FOT = ' + SIA_Empresa +
    '  AND FOT.ARQUIVO_FOT = ' + QuotedSTR(trim(Arquivo));
  qrx.Open;

  if not qrx.IsEmpty then begin
    dm.msg.MessageDlg('Atenção !!!'+#13+
                   'Já existe um arquivo com o mesmo nome vinculado para este Cadastro. '+#13+
                   qrx.FieldByName('COD_RRR_FOT').AsString +' - '+ qrx.FieldByName('NOME_CNT').AsString +#13+
                   'Este arquivo foi viculado pelo usuário '+ qrx.FieldByName('LOGIN_INC_FOT').AsString +' em '+ qrx.FieldByName('DTA_INC_FOT').AsString +#13+
                   'Renomeio o arquivo para poder vinculá-lo.', mtWarning, [mbok], 0);
    Result := True;
  end
  else
    Result := False;

  FreeAndNil(qrx);
end;

function TFCadRural.ArqvANEXOJaExiste(Arquivo : string) : boolean;
var qrx : TSQLQuery;
begin
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text :=
    'SELECT ' +
    '  ANX.*, '+
    '  CNT.NOME_CNT '+
    'FROM ' +
    '  RR_ANEXOS ANX ' +
    '  INNER JOIN RR_CAD_RURAL RRR ON RRR.COD_EMP_RRR = ANX.COD_EMP_ANX AND RRR.COD_RRR = ANX.COD_RRR_ANX ' +
    '  INNER JOIN GR_CONTRIBUINTES CNT ON CNT.COD_EMP_CNT = RRR.COD_EMP_RRR AND CNT.COD_CNT = RRR.COD_CNT_RRR ' +
    'WHERE ' +
    '  ANX.COD_EMP_ANX = ' + SIA_Empresa +
    '  AND ANX.ARQUIVO_ANX = ' + QuotedSTR(trim(Arquivo));
  qrx.Open;

  if not qrx.IsEmpty then begin
    dm.msg.MessageDlg('Atenção !!!'+#13+
                   'Já existe um arquivo com o mesmo nome vinculado para este Cadastro. '+#13+
                   qrx.FieldByName('COD_RRR_ANX').AsString +' - '+ qrx.FieldByName('NOME_CNT').AsString +#13+
                   'Este arquivo foi viculado pelo usuário '+ qrx.FieldByName('LOGIN_INC_ANX').AsString +' em '+ qrx.FieldByName('DTA_INC_ANX').AsString +#13+
                   'Renomeio o arquivo para poder vinculá-lo.', mtWarning, [mbok], 0);
    Result := True;
  end
  else
    Result := False;

  FreeAndNil(qrx);
end;

procedure TFCadRural.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadRural.btnLogr1Click(Sender: TObject);
var Pesq : TPesq_Logra;
begin
  Pesq := TPesq_Logra.Create;

  if Pesq.BotaoLogra then begin
    cdsCadastro.fieldbyname('COD_LOGE_RRR').Value := Pesq.Codigo;
    cdsCadastro.fieldbyname('LOGRAE_RRR').Value   := Pesq.Descri;

    if varToStr(Pesq.CodTipo) <> '' then begin
      cdsCadastro.fieldbyname('COD_TIPE_RRR').Value := Pesq.CodTipo;
      cdsCadastro.fieldbyname('TIPOLOGE_RRR').Value := Pesq.AbrevTipo;
    end;

    if varToStr(Pesq.CodTitulo) <> '' then begin
      cdsCadastro.fieldbyname('COD_TITE_RRR').Value   := Pesq.CodTitulo;
      cdsCadastro.fieldbyname('TITULOLOGE_RRR').Value := Pesq.AbrevTitulo;
    end;

    if varToStr(Pesq.Cep) <> '' then
      cdsCadastro.fieldbyname('CEPE_RRR').Value := Pesq.Cep;

		if varToStr(Pesq.CodBairro) <> '' then begin
      cdsCadastro.fieldbyname('COD_BAIE_RRR').Value := Pesq.CodBairro;
      cdsCadastro.fieldbyname('BAIRROE_RRR').Value  := Pesq.Bairro;
    end;

    if varToStr(Pesq.CodCidade) <> '' then begin
      cdsCadastro.fieldbyname('COD_CIDE_RRR').Value := Pesq.CodCidade;
      cdsCadastro.fieldbyname('CIDENT').Value       := Pesq.Cidade;
      cdsCadastro.fieldbyname('UFE_RRR').Value      := Pesq.UF;
    end;

    IgnoraSegmento := True;
    DBEdit10.SetFocus;
  end;

  FreeAndNil(Pesq);
end;

procedure TFCadRural.btnLogrClick(Sender: TObject);
var Pesq : TPesq_Logra;
begin
  Pesq := TPesq_Logra.Create;

  if Pesq.BotaoLogra then begin
    cdsCadastro.fieldbyname('COD_LOG_RRR').Value := Pesq.Codigo;
    cdsCadastro.fieldbyname('LOGRA_RRR').Value   := Pesq.Descri;
    IgnoraSegmento := True;
    DBEdit42.SetFocus;
  end;

  FreeAndNil(Pesq);
end;

procedure TFCadRural.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadRural.BtnNovoClick(Sender: TObject);
begin
  Condicao := 'Incluindo';

  //Cajobi
  if (TiraCaracter(dm.cdsEmpresa.FieldByName('CNPJ_EMP').AsString) = '46614400000198') then
    EvDBNumEdit5.Tag := 1;

  DBEdit25.Tag := 0;
  btnContrib.Tag := 0;

  abilita(FCadRural);

  btnTransfere.Enabled := (not btnTransfere.Visible);
  DBEdit25.Enabled     := True;
  btnContrib.Enabled   := True;

  PG.ActivePageIndex := 0;
  PGImovel.ActivePageIndex := 0;
  PGCad.ActivePageIndex := 0;
  PGGeral.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := -1;
  cdsCadastro.Open;

  cdsSocios.Close;
  sqlSocios.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlSocios.Params.ParamValues['cod']     := '0';
  cdsSocios.Open;

  cdsRec.Close;
  cdsRec.Open;

  cdsProdIso.Close;
  cdsProdIso.Open;

  cdsProRot.Close;
  cdsProRot.Open;

  cdsPasto.Close;
  cdsPasto.Open;

  cdsPecuaria.Close;
  cdsPecuaria.Open;

  cdsGranj.Close;
  cdsGranj.Open;

  cdsAOutUso.Close;
  cdsAOutUso.Open;

  cdsARest.Close;
  cdsARest.Open;

  cdsCRT.Close;
  cdsCRT.Open;

  dm.cdsUF.Close;
  dm.cdsUF.Open;

  cdsCadastro.Append;

  DBEdit1.SetFocus;
end;

procedure TFCadRural.btnNovoHisClick(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    exit;

  Application.CreateForm(TFCadHistoricos, FCadHistoricos);

  if dm.Permissao(FCadHistoricos, 'PRN_FCadHistoricos', SIA_Empresa, SIA_Usuario, 'PRINCIPAL', SIA_Representante) then begin
    with FCadHistoricos do begin
      NovoAtend := 'NOVO';
      CAMPO1 := 'RUR';
      CAMPO2 := FCadRural.cdsCadastro.fieldByName('COD_RRR').AsString;
      CAMPO3 := '';
      CAMPO4 := '';
    end;
    FormBackShowModal(FCadHistoricos);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCadHistoricos.Free;

  cdsHisto.Close;
  sqlHisto.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlHisto.Params.ParamValues['cod'] := cdsCadastro.fieldByName('COD_RRR').AsString;
  cdsHisto.Open;
end;

procedure TFCadRural.btnPesqAvancadaClick(Sender: TObject);
begin
  PesqAvancado.Execute;
end;

procedure TFCadRural.btnPesquisaClick(Sender: TObject);
var SQL : string;
begin
  SQL := 'SELECT RR_CAD_RURAL.*, '+
                 'RR_CLASSIFICA.DESCR_RCL, '+
                 'GR_BANCO.NOME_BCO, '+
                 'RR_COBRANCA.DESCRI_COB, '+
                 'GR_CONTRIBUINTES.NOME_CNT, '+
                 'GR_CONTRIBUINTES.RG_CNT, '+
                 'GR_CONTRIBUINTES.CNPJ_CNT, '+
                 'GR_CONTRIBUINTES.FONE_CNT, '+
                 'GR_CONTRIBUINTES.EMAIL_CNT, '+
                 'LOGRA.NOME_LOG LOGRAPRO, '+
                 'TIPENT.NOM_TIP_CEP TPLOGRENT, '+
                 'TITENT.DESCR_TIT TTLOGRENT, '+
                 'LOGRAE.NOME_LOG LOGRAENT, '+
                 'BAIE.NOME_BAI BIRROENT, '+
                 'CIDE.NOME_CID CIDENT, '+
                 'TPZE.DESCR_RTZ, '+
                 'TPDI.DESCR_RDI, '+
                 'TPOL.DESCR_ROL, '+
                 'TPFO1.DESCR_RFO FOBTENCAO, '+
                 'TPFO2.DESCR_RFO FOBTENCAOJT, '+
                 'TPFO3.DESCR_RFO FOBTENCAOSO '+
          'FROM RR_CAD_RURAL '+
          //Richard 15/04/12 - Estava duplicando por causa da classificação, que e cadastrada por exercicio
          //'LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR '+
          ' LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR AND EXERCICIO_RCL = '+ SIA_Exercicio +
          ' LEFT JOIN GR_BANCO ON COD_EMP_BCO = COD_EMP_RRR AND COD_BCO = COD_BCO_RRR '+
          'LEFT JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR '+
          'LEFT JOIN GR_CONTRIBUINTES ON COD_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_CNT_RRR '+
          'LEFT JOIN GR_LOGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP_RRR AND LOGRA.COD_LOG = COD_LOG_RRR '+
          'LEFT JOIN CEP_TIPOLOGIA TIPENT ON TIPENT.COD_TIP_CEP = COD_TIPE_RRR '+
          'LEFT JOIN CEP_TITULACAO TITENT ON TITENT.COD_TIT = COD_TITE_RRR '+
          'LEFT JOIN GR_LOGRA LOGRAE ON LOGRAE.COD_EMP_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = COD_LOGE_RRR '+
          'LEFT JOIN GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_EMP_RRR AND BAIE.COD_BAI = COD_BAIE_RRR '+
          'LEFT JOIN GR_CIDADE CIDE ON CIDE.COD_CID = COD_CIDE_RRR '+
          'LEFT JOIN RR_TPZONAESPECIAL TPZE ON TPZE.COD_EMP_RTZ = COD_EMP_RRR AND TPZE.COD_RTZ = COD_TPZONAESP_RRR '+
          'LEFT JOIN RR_TPDESTIMV TPDI ON TPDI.COD_EMP_RDI = COD_EMP_RRR AND TPDI.COD_RDI = COD_DESTIMOV_RRR '+
          'LEFT JOIN RR_TPORIGLITIGIO TPOL ON TPOL.COD_EMP_ROL = COD_EMP_RRR AND TPOL.COD_ROL = COD_ORIGLITIGIO_RRR '+
          'LEFT JOIN RR_TPFORMAOB TPFO1 ON TPFO1.COD_EMP_RFO = COD_EMP_RRR AND TPFO1.COD_RFO = COD_FOBTENCAO_RRR '+
          'LEFT JOIN RR_TPFORMAOB TPFO2 ON TPFO2.COD_EMP_RFO = COD_EMP_RRR AND TPFO2.COD_RFO = COD_FOBPOSSEJT_RRR '+
          'LEFT JOIN RR_TPFORMAOB TPFO3 ON TPFO3.COD_EMP_RFO = COD_EMP_RRR AND TPFO3.COD_RFO = COD_FOBPOSSESO_RRR '+
          'WHERE RR_CAD_RURAL.COD_EMP_RRR = '+ Sia_Empresa;

  If trim(msk1.Text)<>''  Then SQL := SQL + ' AND COD_RRR = '+''''+ trim(msk1.Text) +'''';
  If trim(msk2.Text)<>''  Then SQL := SQL + ' AND MATRIC_RRR = '+''''+ trim(msk2.Text) +'''';
  If trim(mkIncra.Text)<>'' Then SQL := SQL +' AND INCRA_RRR = '+''''+ trim(mkIncra.Text) +'''';
  If trim(msk4.Text)<>''  Then SQL := SQL + ' AND COD_CNT_RRR = '+''''+ trim(msk4.Text) +'''';
  If trim(msk5.Text)<>''  Then SQL := SQL + ' AND UPPER(NOME_CNT) LIKE ' + QuotedSTR('%' + AnsiUpperCase(trim(msk5.Text)) + '%');
  If trim(msk6.Text)<>''  Then SQL := SQL + ' AND PROPRIEDADE_RRR LIKE '+'''%'+ trim(msk6.Text) +'%''';
  If trim(msk7.Text)<>''  Then SQL := SQL + ' AND RESPONSA_RRR LIKE '+'''%'+ trim(msk7.Text) +'%''';
  If trim(msk11.Text)<>'' Then SQL := SQL + ' AND COD_COB_RRR = '+ msk11.Text;
  If trim(msk12.Text)<>'' Then SQL := SQL + ' AND LOGRA_RRR LIKE '+'''%'+ msk12.Text +'%''';

  cdsVis.Close;
  sqlVis.CommandText := SQL;
  cdsVis.PacketRecords := -1;
  cdsVis.Open;

  Label1.Caption := 'Visualização Geral - [ '+ inttostr(cdsVis.RecordCount) +' ] Propriedades.';

  DBGrid1.SetFocus;
end;

procedure TFCadRural.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadRural.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFCadRural.btnSetVencClick(Sender: TObject);
var Pesq : TPesq_SetorRural;
begin
  Pesq := TPesq_SetorRural.Create;

  if Pesq.BotaoSetor then
    cdsCadastro.fieldbyname('COD_STR_RRR').Value := Pesq.Setor;

  FreeAndNil(Pesq);
end;

procedure TFCadRural.btnTransfereClick(Sender: TObject);
begin
  Application.CreateForm(TFCadTransfRR, FCadTransfRR);

  if dm.Permissao(FCadTransfRR, 'RUR_FCadTransfRR', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadTransfRR.CODRURAL := TiraCaracter(cdsCadastro.FieldValues['COD_RRR']);
    FormBackShowModal(FCadTransfRR);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FCadTransfRR.Free;
  cdsTransf.Close;
  cdsTransf.Open;
end;

procedure TFCadRural.CancelamentodeDvida1Click(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then
    Exit;

  Application.CreateForm(TFBaixaDividas, FBaixaDividas);

  if dm.Permissao(FBaixaDividas, 'FIN_FBaixaDividas', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FBaixaDividas.cbModulo.Style   := csDropDown;
    FBaixaDividas.cbModulo.Text    := '4 RURAL';
    FBaixaDividas.mkCadastro.Text  := cdsCadastro.FieldByName('COD_RRR').AsString;
    FBaixaDividas.cbModulo.Enabled := false;
    FBaixaDividas.mkData.text      := formatdatetime('dd/mm/yyyy', now);//data de refrencia
    FBaixaDividas.APLMestre        := 'AtendRURAL';
    FBaixaDividas.mkCadastroExit(Nil);
    FormBackShowModal(FBaixaDividas);
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar esta aplicação.',mtInformation,[mbok],0);

  FBaixaDividas.Free;
end;

procedure TFCadRural.cdsAOutUsoAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  idOUT := 0;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_AOT) as TOT '+
                  'FROM RR_CADRR_AREAOUT '+
                  'WHERE COD_EMP_AOT = '+ SIA_Empresa;
  qrx.Open;
  idOUT := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsARestAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  idRES := 0;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_ART) as TOT '+
                  'FROM RR_CADRR_AREAREST '+
                  'WHERE COD_EMP_ART = '+ SIA_Empresa;
  qrx.Open;
  idRES := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsCadastroNewRecord(DataSet: TDataSet);
var rec : string;
    i : integer;
    achou : boolean;
    qrx : TSQLQuery;
begin
  inherited;
  cdsCadastro.FieldValues['COD_EMP_RRR']   := strtoint(SIA_Empresa);
  cdsCadastro.FieldValues['COD_RRR']       := '0';
  cdsCadastro.FieldValues['DTCAD_RRR']     := Now;
  cdsCadastro.FieldValues['AREAH_RRR']     := 0;
  cdsCadastro.FieldValues['AREAE_RRR']     := 0;
  cdsCadastro.FieldValues['AREAM_RRR']     := 0;
  cdsCadastro.FieldValues['DISTANCIA_RRR'] := 0;
  cdsCadastro.FieldValues['PONTOS_RRR']    := 0;
  cdsCadastro.FieldValues['VVENAL_RRR']    := 0;

  achou := False;
  rec := VerMascara('RUR', SIA_Empresa);
  for i := 1 to length(rec) do begin
   if not IsNumero(rec) then begin
     achou := True;
     break;
   end;
  end;
  if achou = False then begin
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'select cast(max(COD_RRR) as double precision) cod from RR_CAD_RURAL';
    qrx.Open;
    cdsCadastro.FieldByName('COD_RRR').AsString := MontaMascara(floattostr(qrx.FieldByName('cod').AsFloat + 1), 'RUR', SIA_Empresa);
    FreeAndNil(qrx);
  end
  else cdsCadastro.FieldByName('COD_RRR').AsString := MontaMascara('0', 'RUR', SIA_Empresa);
end;

procedure TFCadRural.cdsCadastroReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if UpdateKind = ukDelete then
    Action := raCancel
  else
    Action := raCorrect;
end;

procedure TFCadRural.cdsCRTAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT GEN_ID(GEN_RR_REL_CRT,0) AS TOT FROM RDB$DATABASE';
  qrx.Open;
  ultCRT := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsCRTNewRecord(DataSet: TDataSet);
begin
  inc(ultCRT);
  cdsCRT.FieldValues['COD_EMP_RR3'] := SIA_Empresa;
  cdsCRT.FieldValues['COD_RR3'] := ultCRT;
end;

procedure TFCadRural.cdsGranjAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  idGRN := 0;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_AGQ) as TOT '+
                  'FROM RR_CADRR_AREAGRAJ '+
                  'WHERE COD_EMP_AGQ = '+ SIA_Empresa;
  qrx.Open;
  idGRN := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsPastoAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  idPST := 0;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_ARP) as TOT '+
                  'FROM RR_CADRR_AREAPASTO '+
                  'WHERE COD_EMP_ARP = '+ SIA_Empresa;
  qrx.Open;
  idPST := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsPecuariaAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  idANI := 0;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_RPE) as TOT '+
                  'FROM RR_CADRR_PECUARIA '+
                  'WHERE COD_EMP_RPE = '+ SIA_Empresa;
  qrx.Open;
  idANI := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsProdIsoAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  idISO := 0;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_AVI) as TOT '+
                  'FROM RR_CADRR_AREAVEGISO '+
                  'WHERE COD_EMP_AVI = '+ SIA_Empresa;
  qrx.Open;
  idISO := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsProRotAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  idROT := 0;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_AVR) as TOT '+
                  'FROM RR_CADRR_AREAVEGROT '+
                  'WHERE COD_EMP_AVR = '+ SIA_Empresa;
  qrx.Open;
  idROT := qrx.FieldByName('TOT').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsRecAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'select CAST(gen_id(GEN_RR_REL_RECEITAS,0) AS INTEGER) CODIGO from RDB$DATABASE';
  qrx.Open;
  UltRec := qrx.FieldByName('CODIGO').AsInteger;
  FreeAndNil(qrx);
end;

procedure TFCadRural.cdsSociosNewRecord(DataSet: TDataSet);
begin
  cdsSocios.FieldValues['COD_EMP_SOC'] := strtoint(SIA_Empresa);
  cdsSocios.FieldValues['COD_RRR_SOC'] := sqlCadastro.Params.ParamValues['cod'];
  cdsSocios.FieldValues['COD_CNT_SOC'] := '-1';
  cdsSocios.FieldValues['DTINI_SOC']   := Now;
  cdsSocios.FieldValues['DTFIM_SOC']   := Null;
end;

end.
