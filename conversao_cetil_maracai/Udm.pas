unit Udm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, Data.Win.ADODB, EChkCNPJ, EChkCPF;

type
  Tdm = class(TDataModule)
    Conexao_Destino: TSQLConnection;
    Atualiza: TSQLQuery;
    cdsCadcli: TClientDataSet;
    dspcadcli: TDataSetProvider;
    sqldscadcli: TSQLDataSet;
    cdsTabempresa: TClientDataSet;
    dspTabempresa: TDataSetProvider;
    sqldsTabempresa: TSQLDataSet;
    Localiza: TClientDataSet;
    dsplocaliza: TDataSetProvider;
    SQLDSlocaliza: TSQLDataSet;
    Localiza1: TClientDataSet;
    dsplocaliza1: TDataSetProvider;
    sqldsLocaliza1: TSQLDataSet;
    Localiza2: TClientDataSet;
    dsplocaliza2: TDataSetProvider;
    sqldslocaliza2: TSQLDataSet;
    Localiza3: TClientDataSet;
    dsplocaliza3: TDataSetProvider;
    sqldslocaliza3: TSQLDataSet;
    Localiza4: TClientDataSet;
    dsplocaliza4: TDataSetProvider;
    sqldslocaliza4: TSQLDataSet;
    Localiza5: TClientDataSet;
    dsplocaliza5: TDataSetProvider;
    sqldslocaliza5: TSQLDataSet;
    Localiza6: TClientDataSet;
    dsplocaliza6: TDataSetProvider;
    sqldsLocaliza6: TSQLDataSet;
    QDestino: TClientDataSet;
    dspdestino: TDataSetProvider;
    sqldestino: TSQLDataSet;
    QAux: TClientDataSet;
    dspqaux: TDataSetProvider;
    sqlqaux: TSQLDataSet;
    QAux2: TClientDataSet;
    dspQAux2: TDataSetProvider;
    sqldsQAux2: TSQLDataSet;
    QConta: TClientDataSet;
    dspqconta: TDataSetProvider;
    sqldsqconta: TSQLDataSet;
    DSPQORIGEM: TDataSetProvider;
    QOrigem: TClientDataSet;
    dspAtualizaOrigem: TDataSetProvider;
    AtualizaOrigem: TClientDataSet;
    dspcdsorigem: TDataSetProvider;
    cdsOrigem: TClientDataSet;
    dspLocalizaOrigem: TDataSetProvider;
    LocalizaOrigem: TClientDataSet;
    cdsFundo: TClientDataSet;
    dspFundo: TDataSetProvider;
    sqldsFundo: TSQLDataSet;
    CdsCodif: TClientDataSet;
    dspcodif: TDataSetProvider;
    sqldscodif: TSQLDataSet;
    cdsTemp: TClientDataSet;
    dsptemp: TDataSetProvider;
    sqldstemp: TSQLDataSet;
    SQL: TSQLQuery;
    qscpi: TClientDataSet;
    dspscpi: TDataSetProvider;
    sqldsscpi: TSQLDataSet;
    QSCPI2: TClientDataSet;
    dspQSCPI2: TDataSetProvider;
    SqlDsQSCPI2: TSQLDataSet;
    CdsDestino: TClientDataSet;
    dspCdsdestino: TDataSetProvider;
    SQLSDCDSDESTINO: TSQLDataSet;
    cdsTemp1: TClientDataSet;
    dsptemp1: TDataSetProvider;
    sqldstemp1: TSQLDataSet;
    Localiza7: TClientDataSet;
    dspLocaliza7: TDataSetProvider;
    sqldsLocaliza7: TSQLDataSet;
    Localiza8: TClientDataSet;
    dspLocaliza8: TDataSetProvider;
    sqldsLocaliza8: TSQLDataSet;
    CdsDes: TClientDataSet;
    dspCdDes: TDataSetProvider;
    sqldsCdDes: TSQLDataSet;
    CdsCaixa: TClientDataSet;
    dspcaixa: TDataSetProvider;
    sqldscaixa: TSQLDataSet;
    cdsDescon: TClientDataSet;
    dspDescon: TDataSetProvider;
    SQLDsDescon: TSQLDataSet;
    CdsRecDis: TClientDataSet;
    dspRecdis: TDataSetProvider;
    sqldsRecdis: TSQLDataSet;
    CdsDesDis: TClientDataSet;
    dspDesDis: TDataSetProvider;
    SQLDSDESDIS: TSQLDataSet;
    CdsExtra: TClientDataSet;
    dspExtra: TDataSetProvider;
    sqldsExtra: TSQLDataSet;
    cdsdesfor: TClientDataSet;
    dspdesfor: TDataSetProvider;
    sqldsdesfor: TSQLDataSet;
    EvCPF: TEvCheckCPF;
    EvCNPJ: TEvCheckCNPJ;
    cdsTipDocFinan: TClientDataSet;
    dspTipDocFinan: TDataSetProvider;
    sqldsTipDocFinan: TSQLDataSet;
    Conexao_Origem_: TSQLConnection;
    SQLDSQORIGEM__: TSQLDataSet;
    sqldscdsorigem__: TSQLDataSet;
    sqldsLocalizaORigem__: TSQLDataSet;
    sqldsAtualizaOrigem__: TSQLDataSet;
    SQLDSQORIGEM: TADODataSet;
    sqldscdsorigem: TADODataSet;
    sqldsLocalizaORigem: TADODataSet;
    sqldsLocalizaOrigem3: TADODataSet;
    cdsPoder: TClientDataSet;
    dspPoder: TDataSetProvider;
    SQLDsPoder: TSQLDataSet;
    cdsOrgao: TClientDataSet;
    dspOrgao: TDataSetProvider;
    SQLDSOrgao: TSQLDataSet;
    cdsUnidade: TClientDataSet;
    dspUnidade: TDataSetProvider;
    sqldsUnidade: TSQLDataSet;
    cdsVingrupo: TClientDataSet;
    dspVingrupo: TDataSetProvider;
    sqldsVingrupo: TSQLDataSet;
    cdsVinCodigo: TClientDataSet;
    dspVincodigo: TDataSetProvider;
    sqldsVincodigo: TSQLDataSet;
    LocalizaDestino: TClientDataSet;
    dspLocalizaDestino: TDataSetProvider;
    sqldsLocalizaDestino: TSQLDataSet;
    dspLocalizaOrigem2: TDataSetProvider;
    LocalizaOrigem2: TClientDataSet;
    sqldsLocalizaOrigem2__: TSQLDataSet;
    sqldsLocalizaDestino2: TSQLDataSet;
    dspLocalizaDestino2: TDataSetProvider;
    LocalizaDestino2: TClientDataSet;
    dspcdsOrigem2: TDataSetProvider;
    cdsOrigem2: TClientDataSet;
    sqldscdsOrigem2__: TSQLDataSet;
    sqldscdsOrigem2: TADODataSet;
    sqldsLocalizaOrigem2: TADODataSet;
    Conexao_Origem: TADOConnection;
    cdsFuncao: TClientDataSet;
    dspFuncao: TDataSetProvider;
    SQLDsFuncao: TSQLDataSet;
    cdsSubFuncao: TClientDataSet;
    dspSubFuncao: TDataSetProvider;
    sqldsSubFuncao: TSQLDataSet;
    cdsPrograma: TClientDataSet;
    dspPrograma: TDataSetProvider;
    sqldsPrograma: TSQLDataSet;
    cdsProjAtiv: TClientDataSet;
    dspProjAtiv: TDataSetProvider;
    sqldsProjAtiv: TSQLDataSet;
    cdsCategoria: TClientDataSet;
    dspCategoria: TDataSetProvider;
    sqldsCategoria: TSQLDataSet;
    cdsGrupo: TClientDataSet;
    dspGrupo: TDataSetProvider;
    sqldsGrupo: TSQLDataSet;
    cdsModalidade: TClientDataSet;
    dspModalidade: TDataSetProvider;
    sqldsModalidade: TSQLDataSet;
    cdsElemento: TClientDataSet;
    dspElemento: TDataSetProvider;
    sqldsElemento: TSQLDataSet;
    cdsCatec: TClientDataSet;
    dspCatec: TDataSetProvider;
    sqldsCatec: TSQLDataSet;
    cdsBanco: TClientDataSet;
    dspBanco: TDataSetProvider;
    sqldsBanco: TSQLDataSet;
    cdsAgencia: TClientDataSet;
    dspAgencia: TDataSetProvider;
    sqldsAgencia: TSQLDataSet;
    cdsConpla: TClientDataSet;
    dspConpla: TDataSetProvider;
    sqldsConpla: TSQLDataSet;
    cdsConplaSCPI: TClientDataSet;
    dspConplaSCPI: TDataSetProvider;
    sqldsConplaSCPI: TSQLDataSet;
    cdsRecTab: TClientDataSet;
    dspRecTab: TDataSetProvider;
    sqldsRecTab: TSQLDataSet;
    dspLocalizaOrigem3: TDataSetProvider;
    LocalizaOrigem3: TClientDataSet;
    sqldsLocalizaOrigem3__: TSQLDataSet;
    dspLocalizaOrigem4: TDataSetProvider;
    LocalizaOrigem4: TClientDataSet;
    sqldsLocalizaOrigem4__: TSQLDataSet;
    dspLocalizaOrigem5: TDataSetProvider;
    LocalizaOrigem5: TClientDataSet;
    sqldsLocalizaOrigem5__: TSQLDataSet;
    sqldsLocalizaOrigem4: TADODataSet;
    sqldsAtualizaOrigem: TADODataSet;
    sqldsLocalizaOrigem5: TADODataSet;
    AdoListaBco: TADODataSet;
    DspListaBco: TDataSetProvider;
    CdsListaBco: TClientDataSet;
    dspAuxOrigem: TDataSetProvider;
    AuxOrigem: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    sqldsauxOrigem: TADODataSet;
    cdsFongrupo: TClientDataSet;
    dspFongrupo: TDataSetProvider;
    SQLDSFongrupo: TSQLDataSet;
    cdsFonCodigo: TClientDataSet;
    dspFonCodigo: TDataSetProvider;
    SQLDSFonCodigo: TSQLDataSet;
    sqldsRecdis1: TSQLDataSet;
    dspRecdis1: TDataSetProvider;
    CdsRecDis1: TClientDataSet;
    cdsdesconD: TClientDataSet;
    dspdesconD: TDataSetProvider;
    sqldsdesconD: TSQLDataSet;
    procedure t(Sender: TObject);
    procedure QDestinoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    function TrazNivelReceita:string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses Uprincipal, Vcl.Dialogs;

{$R *.dfm}

procedure Tdm.t(Sender: TObject);
begin
//Conexao_Destino.Params.Values['Database'] := frmprincipal.edtdestino.Text + ':'+ frmprincipal.edtdestino.Text;

end;


function Tdm.TrazNivelReceita: string;
begin
  if not dm.cdsCadcli.Active then
    dm.cdsCadcli.Active := true;
  result := dm.cdsCadcli.FieldByName('nivel_receita').AsString;
end;

procedure Tdm.QDestinoReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Showmessage( E.Message );
end;

end.
