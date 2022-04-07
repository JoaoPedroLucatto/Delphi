unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ComCtrls, Data.DBXFirebird,
  Data.FMTBcd, Data.Win.ADODB, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, Vcl.DBCtrls, WideStrings,IdCoder, IdCoderMIME,System.StrUtils, System.Types,
  Web.HTTPApp, Web.DBWeb, Web.DBXpressWeb;

type
  TFPrincipal = class(TForm)
    ProgressBar1: TProgressBar;
    lbItem: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbTotal: TLabel;
    lbChave: TLabel;
    Button1: TButton;
    Conexao: TSQLConnection;
    QDestino: TSQLQuery;
    sqlDestino: TSQLDataSet;
    dspDestino: TDataSetProvider;
    cdsDestino: TClientDataSet;
    QVerifica: TSQLQuery;
    Label6: TLabel;
    QAuxiliar: TSQLQuery;
    QBaixa: TSQLQuery;
    sqlAtualiza: TSQLDataSet;
    dspAtualiza: TDataSetProvider;
    cdsAtualiza: TClientDataSet;
    dbOrigem: TSQLConnection;
    QOrigem: TSQLQuery;
    QEventos: TSQLQuery;
    QCadastro: TSQLQuery;
    QPagamentos: TSQLQuery;
    qrAtualiza: TSQLQuery;
    sqlReceitasDiferenca: TSQLDataSet;
    sqlReceitasDiferencaCOD_EMP_FRC: TIntegerField;
    sqlReceitasDiferencaCOD_DIV_FRC: TIntegerField;
    sqlReceitasDiferencaPARCELA_PAR_FRC: TIntegerField;
    sqlReceitasDiferencaTP_PAR_FRC: TIntegerField;
    sqlReceitasDiferencaCOD_REC_FRC: TIntegerField;
    sqlReceitasDiferencaANO_FRC: TStringField;
    sqlReceitasDiferencaSITUACAO_FRC: TIntegerField;
    sqlReceitasDiferencaCODORIGEM_FRC: TIntegerField;
    sqlReceitasDiferencaCODULTORI_FRC: TIntegerField;
    sqlReceitasDiferencaCOD_IND_FRC: TIntegerField;
    sqlReceitasDiferencaLVALOR_FRC: TFloatField;
    sqlReceitasDiferencaLVRCORRE_FRC: TFloatField;
    sqlReceitasDiferencaLVRMULTA_FRC: TFloatField;
    sqlReceitasDiferencaLVRJUROS_FRC: TFloatField;
    sqlReceitasDiferencaLISENTO_FRC: TFloatField;
    sqlReceitasDiferencaLDESCOVENCI_FRC: TFloatField;
    sqlReceitasDiferencaLDESCOR_FRC: TFloatField;
    sqlReceitasDiferencaLDESCOC_FRC: TFloatField;
    sqlReceitasDiferencaLDESCOM_FRC: TFloatField;
    sqlReceitasDiferencaLDESCOJ_FRC: TFloatField;
    sqlReceitasDiferencaLACRES_FRC: TFloatField;
    sqlReceitasDiferencaPVALOR_FRC: TFloatField;
    sqlReceitasDiferencaPVRCORRE_FRC: TFloatField;
    sqlReceitasDiferencaPVRMULTA_FRC: TFloatField;
    sqlReceitasDiferencaPVRJUROS_FRC: TFloatField;
    sqlReceitasDiferencaPISENTO_FRC: TFloatField;
    sqlReceitasDiferencaPDESCOVENCI_FRC: TFloatField;
    sqlReceitasDiferencaPDESDCO_FRC: TFloatField;
    sqlReceitasDiferencaLOGIN_INC_FRC: TStringField;
    sqlReceitasDiferencaDTA_INC_FRC: TSQLTimeStampField;
    sqlReceitasDiferencaLOGIN_ALT_FRC: TStringField;
    sqlReceitasDiferencaDTA_ALT_FRC: TSQLTimeStampField;
    sqlReceitasDiferencaOUTRAS_FRC: TStringField;
    sqlReceitasDiferencaPDESCOR_FRC: TFloatField;
    sqlReceitasDiferencaPDESCOC_FRC: TFloatField;
    sqlReceitasDiferencaPDESCOM_FRC: TFloatField;
    sqlReceitasDiferencaPDESCOJ_FRC: TFloatField;
    dspReceitasDiferenca: TDataSetProvider;
    cdsReceitasDiferenca: TClientDataSet;
    QVerificaDesconto: TSQLQuery;
    sqlParcelas: TSQLDataSet;
    sqlParcelasCOD_EMP_PAR: TIntegerField;
    sqlParcelasCOD_DIV_PAR: TIntegerField;
    sqlParcelasTP_PAR: TIntegerField;
    sqlParcelasPARCELA_PAR: TIntegerField;
    sqlParcelasDATAPAGTO_PAR: TDateField;
    sqlParcelasDATAMOVIM_PAR: TDateField;
    sqlParcelasLOTE_PAR: TIntegerField;
    sqlParcelasCOD_BCO_PAR: TIntegerField;
    sqlParcelasSITUACAO_PAR: TIntegerField;
    sqlParcelasUNICA_PAR: TStringField;
    sqlParcelasEXECUTADA_PAR: TStringField;
    sqlParcelasATIVA_PAR: TStringField;
    sqlParcelasSITUACAOANTIGA_PAR: TIntegerField;
    sqlParcelasLIVRO_PAR: TIntegerField;
    sqlParcelasFOLHA_PAR: TIntegerField;
    sqlParcelasINSCRI_PAR: TIntegerField;
    sqlParcelasDATAINSCRI_PAR: TDateField;
    sqlParcelasDATAVENCI: TDateField;
    sqlParcelasMOEDA_PAR: TStringField;
    sqlParcelasCOD_IND_PAR: TIntegerField;
    sqlParcelasDATAGERACAO_PAR: TDateField;
    sqlParcelasDATAEXEC_PARC: TDateField;
    sqlParcelasCANCELADO_PAR: TStringField;
    sqlParcelasPARCE_PAR: TStringField;
    sqlParcelasDATACANCELA_PAR: TDateField;
    sqlParcelasDATAPARCE_PAR: TDateField;
    sqlParcelasPROCESSO_PAR: TStringField;
    sqlParcelasNNUMERO_PAR: TFloatField;
    sqlParcelasVALOR_PAR: TFloatField;
    sqlParcelasLOGIN_INC_PAR: TStringField;
    sqlParcelasDTA_INC_PAR: TSQLTimeStampField;
    sqlParcelasLOGIN_ALT_PAR: TStringField;
    sqlParcelasDTA_ALT_PAR: TSQLTimeStampField;
    sqlParcelasDUPLICADA_PAR: TStringField;
    sqlParcelasREFLIVRO_PAR: TIntegerField;
    sqlParcelasFAIXANNUMERO_PAR: TIntegerField;
    dspParcelas: TDataSetProvider;
    cdsParcelas: TClientDataSet;
    sqlReceitas: TSQLDataSet;
    sqlReceitasCOD_EMP_FRC: TIntegerField;
    sqlReceitasCOD_DIV_FRC: TIntegerField;
    sqlReceitasPARCELA_PAR_FRC: TIntegerField;
    sqlReceitasTP_PAR_FRC: TIntegerField;
    sqlReceitasCOD_REC_FRC: TIntegerField;
    sqlReceitasANO_FRC: TStringField;
    sqlReceitasSITUACAO_FRC: TIntegerField;
    sqlReceitasCODORIGEM_FRC: TIntegerField;
    sqlReceitasCODULTORI_FRC: TIntegerField;
    sqlReceitasCOD_IND_FRC: TIntegerField;
    sqlReceitasLVALOR_FRC: TFloatField;
    sqlReceitasLVRCORRE_FRC: TFloatField;
    sqlReceitasLVRMULTA_FRC: TFloatField;
    sqlReceitasLVRJUROS_FRC: TFloatField;
    sqlReceitasLISENTO_FRC: TFloatField;
    sqlReceitasLDESCOVENCI_FRC: TFloatField;
    sqlReceitasLDESCOR_FRC: TFloatField;
    sqlReceitasLDESCOC_FRC: TFloatField;
    sqlReceitasLDESCOM_FRC: TFloatField;
    sqlReceitasLDESCOJ_FRC: TFloatField;
    sqlReceitasLACRES_FRC: TFloatField;
    sqlReceitasPVALOR_FRC: TFloatField;
    sqlReceitasPVRCORRE_FRC: TFloatField;
    sqlReceitasPVRMULTA_FRC: TFloatField;
    sqlReceitasPVRJUROS_FRC: TFloatField;
    sqlReceitasPISENTO_FRC: TFloatField;
    sqlReceitasPDESCOVENCI_FRC: TFloatField;
    sqlReceitasPDESDCO_FRC: TFloatField;
    sqlReceitasLOGIN_INC_FRC: TStringField;
    sqlReceitasDTA_INC_FRC: TSQLTimeStampField;
    sqlReceitasLOGIN_ALT_FRC: TStringField;
    sqlReceitasDTA_ALT_FRC: TSQLTimeStampField;
    sqlReceitasOUTRAS_FRC: TStringField;
    sqlReceitasPDESCOR_FRC: TFloatField;
    sqlReceitasPDESCOC_FRC: TFloatField;
    sqlReceitasPDESCOM_FRC: TFloatField;
    sqlReceitasPDESCOJ_FRC: TFloatField;
    dspReceitas: TDataSetProvider;
    cdsReceitas: TClientDataSet;
    lbFuncao: TLabel;
    QEndereco: TSQLQuery;
    sqlDestino1: TSQLDataSet;
    dspDestino1: TDataSetProvider;
    cdsDestino1: TClientDataSet;
    QContribuinte: TSQLQuery;
    adoOrigem: TADOConnection;
    QNOrigem: TADOQuery;
    QNCadastro: TADOQuery;
    QNitens: TADOQuery;
    sqlItens: TSQLDataSet;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    QNPagamentos: TADOQuery;
    DataSource1: TDataSource;
    DBRichEdit1: TDBRichEdit;
    QGenerator: TSQLQuery;
    dbArquivosOrigem: TSQLConnection;
    dbArquivoDestino: TSQLConnection;
    QImagemOrigem: TSQLQuery;
    sqlImagem: TSQLDataSet;
    dspImagem: TDataSetProvider;
    cdsImagem: TClientDataSet;
    QItens: TSQLQuery;
    SQLQueryTableProducer1: TSQLQueryTableProducer;
    procedure ReceitaPrincipal;
    procedure receitas;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure guias;
    procedure guiasParcelamento;
    procedure livrosDA;
    procedure parcelas;
    procedure parcelasParcelamentos;

    procedure outrasreceitas;
    procedure lancamentos;
    procedure Itens;
    procedure ItensCobranca;
    procedure lancamentosCobranca;
    Function TrataDadosFinanceiro(Valor : Variant) : string;
    procedure modulo;
    Function TiraCaracter(s: String): Variant;
    function cidade(nome,Estado:String):String;
    function logradouro(nome,cep:String):String;
    function Bairro(nome:String):String;
    function Contribuintes(nome,rg,cnpj,fone,fax,email,cid,uf,logra,numero,complemento,bai,cep:String):String;

    procedure AtualizaDados;
    procedure Generators;
    procedure Indices;
    procedure bancos;
    procedure lotes;
    procedure tipologia;
    procedure acertaLogradouro;
    function ContribuintesNota(nome,rg,cnpj,fone,fax,email,cid,uf,logra,numero,complemento,bai,cep:String):String;

     Function BaixaParcelasFinanceiro(empresa, divida, tipo, parcela: Integer; dtPagamento,
                                 dtMovimento, descontovenci, codbanco,
                                 lote: String; Correcao, Multa, Juros, ValorReceita,
                                 desconto,acrescimo,ValorPagamento: Currency;
                                 Usuario : String;
                                 Contabilizar : Integer; Situacao : Integer): Integer;

     Function DuplicarBaixaParcelas(empresa, divida,
                              tipo, parcela: Integer; dtPagamento,
                              dtMovimento, descontovenci, codbanco,
                              lote: String; Correcao, Multa, Juros,
                              ValorReceita,desconto,acrescimo,ValorPagamento: Currency;Usuario:String): Integer;


   procedure rateiacmjBaixa(var correcao:Currency;var multa:Currency;var juros:Currency;var desconto:Currency;var acrescimo:Currency;valorReceita:Currency);


   Function AlteraFinanceiroBaixa_FI_RECEITAS(COD_EMP_FRC, COD_DIV_FRC, PARCELA_PAR_FRC, TP_PAR_FRC,
                                           COD_REC_FRC, ANO_FRC, SITUACAO_FRC, CODORIGEM_FRC, CODULTORI_FRC,
                                           PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC,
                                           PISENTO_FRC, PDESCOVENCI_FRC, PDESDCO_FRC,PDESCOR_FRC,PDESCOC_FRC,
                                           PDESCOM_FRC,PDESCOJ_FRC,LOGIN_ALT_FRC, DTA_ALT_FRC,LVALOR_FRC : Variant): Integer;



  Function AlteraFinanceiroBaixa_FI_PARCELA(COD_EMP_PAR, COD_DIV_PAR, PARCELA_PAR, TP_PAR,
                                            DATAPAGTO_PAR, DATAMOVIM_PAR, LOTE_PAR, COD_BCO_PAR,
                                            SITUACAO_PAR,SITUACAOANTIGA_PAR,
                                            LOGIN_ALT_PAR, DTA_ALT_PAR,
                                            usu_baixa, codcxa, vlrcxa,
                                            CANCELADO_PAR, DATACANCELA_PAR: Variant): Integer;

 Function SalvaFinanceiroBaixa_FI_PARCELA(COD_EMP_PAR, COD_DIV_PAR, PARCELA_PAR, TP_PAR,
                                          REFLIVRO_PAR,LIVRO_PAR, FOLHA_PAR, INSCRI_PAR, DATAINSCRI_PAR, DATAPAGTO_PAR, DATAMOVIM_PAR,
                                          LOTE_PAR, COD_BCO_PAR, DATAVENCI, MOEDA_PAR, COD_IND_PAR, DATAGERACAO_PAR,
                                          DATAEXEC_PARC, SITUACAO_PAR, CANCELADO_PAR, ATIVA_PAR, EXECUTADA_PAR, PARCE_PAR,
                                          DATACANCELA_PAR, DATAPARCE_PAR, PROCESSO_PAR, UNICA_PAR, LOGIN_INC_PAR, DTA_INC_PAR,
                                           LOGIN_ALT_PAR, DTA_ALT_PAR,FAIXANNUMERO_PAR,NNUMERO_PAR,SITUACAOANTIGA_PAR,VALOR_PAR,DUPLICADA_PAR: Variant): Integer;


    Function AcertaDiferencaBaixaParcelasFinanceiro(empresa, divida, tipo, parcela: Integer; diferenca:Currency):Integer;

    Function AlteraFinanceiroBaixaDiferenca_FI_RECEITAS(COD_EMP_FRC, COD_DIV_FRC, PARCELA_PAR_FRC, TP_PAR_FRC,
                                          COD_REC_FRC, ANO_FRC, SITUACAO_FRC, CODORIGEM_FRC, CODULTORI_FRC,
                                          PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC: Variant): Integer;


    Function SalvaFinanceiroBaixa_FI_RECEITAS(COD_EMP_FRC, COD_DIV_FRC, PARCELA_PAR_FRC, TP_PAR_FRC,
                                     COD_REC_FRC, ANO_FRC, SITUACAO_FRC, CODORIGEM_FRC, CODULTORI_FRC,
                                     COD_IND_FRC, OUTRAS_FRC, LVALOR_FRC, LVRCORRE_FRC, LVRMULTA_FRC,
                                     LVRJUROS_FRC, LISENTO_FRC, LDESCOVENCI_FRC, LDESCOR_FRC, LDESCOC_FRC,
                                     LDESCOM_FRC, LDESCOJ_FRC, LACRES_FRC, PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC,
                                     PISENTO_FRC, PDESCOVENCI_FRC, PDESDCO_FRC,PDESCOR_FRC,PDESCOC_FRC,PDESCOM_FRC,PDESCOJ_FRC,LOGIN_INC_FRC, DTA_INC_FRC,
                                     LOGIN_ALT_FRC, DTA_ALT_FRC: Variant): Integer;


  function VerificaLote(codlote:String):String;
  function VerificaBanco(codBanco:String):String;
  procedure TramiteProcesso;
  procedure SituacaoProcesso;
  procedure Processos;
  procedure Processos1;
  procedure CertidaoProtesto;
  procedure AcertaBaixasparcelas;
  procedure AcertaBaixasparcelamento;


  procedure Cidades;
  procedure Bairros;
  procedure TipoLogradouro;
  function  RetornaEstCivil(codigo : String) : String;
  procedure Logradouros;
  procedure Feriados;
  procedure ContribuintesUnico;
  function VerificaNomeLogradouro(nomelog:String;var tipoLog :String;var codtipolog :String): String;
  function VerificaCodigoLogradouro(codlog:String;var tipoLog :String;var codtipolog :String): String;
  function VerificaNomeBairro(nomebai:String): String;
  function VerificaCodigoBairro(codbai:String): String;
  function VerificaNomeCidade(nomecid,ufcid:String): String;
  procedure HistoricosCadastros;
  procedure SociosContribuintes;
  procedure HistoricosAlteracoesContribuintes;


 // Conversao M�dulo Imobiliario //
  procedure SetorVencimento;
  procedure Distrito;
  procedure Loteamento;
  procedure TipoEntrega;
  procedure Condominios;
  procedure CodigoCobranca;
  procedure Imobiliaria;
  procedure Zoneamento;
  procedure TipodaEdificacao;
  procedure Secao;
  procedure Caracteristica;
  procedure ServicosUrbano;
  Procedure CadastroImovel;
  procedure Confrontantes;
  procedure ITBI;
  procedure CadAreaTerritorial;
  procedure CadAreaEdificada;
  procedure Historicovalorvenal;
  procedure SociosImoveis;
  procedure ImobiliarioCobranca;
  procedure AntigoProprietarios;
  procedure HistoricosAlteracoesImovel;
  procedure ValoresCaracteristicasTabela_II;
  procedure ValoresCaracteristicasOpcoes_Faixa;
  procedure ValoresCaracteristicasTabela_I;


  procedure CodigoCobrancaRural;
  procedure CaracteristicaRural;
  procedure CadastroImovelRural;


  procedure TipoCadastro;
  procedure TipoEmpresa;
  procedure Graficas;
  procedure Escritorios;
  procedure CodigoCobrancaMobiliario;
  procedure SetorVencimentoMobiliario;
  procedure TabeladeCalculo;
  procedure Atividades;
  procedure AtividadesCnae;
  procedure CaracteristicaMobiliario;
  procedure CadastroMobiliario;
  procedure CadastroMobiliarioISS;
  procedure SociosMobil;
  procedure HistoricosAlteracoesMobiliario;
  procedure SerieNota;
  procedure SerieNotaEletronica;
  procedure AIDF;

  function Tomadores(nome,rg,cnpj,fone,fax,email,cid,uf,logra,numero,complemento,bai,cep:String):String;
  procedure NotasFiscaisEletronica;
  function movimento(COD_EMP_MEC,COD_MOD_MEC,CADASTRO_MEC,COD_CNT_MEC,DATALANCA_MEC,TP_MEC,MES_MEC,ANO_MEC,
                     ORIGEM_MEC,TIPOESCRITURA_MEC,FECHADO_MEC,DATAFECHADO_MEC,LOGIN_INC_MEC,DTA_INC_MEC,LOGIN_ALT_MEC,
                     DTA_ALT_MEC,CODIGO_PRT_MEC :VARIANT ):String;
  function NotasCanceladas(COD_EMP_NCA,COD_NFE_NCA,DATACANCELA_NCA,DETALHEMOTIVO_NCA,
                             CODSUB_NFE_NCA,VALORCREDITO_NCA,LOGIN_INC_NCA,DTA_INC_NCA,
                             LOGIN_ALT_NCA,DTA_ALT_NCA: VARIANT ):String;

  function Guiasnota(COD_EMP_GIS,COD_MOD_GIS,CADASTRO_GIS,COD_CNT_GIS,DATAVENCI_GIS,
                   COBRAEXPEDIENTE_GIS,COD_DIV_GIS,PARCELA_PAR_GIS,TP_PAR_GIS,NNUMERO_GIS,
                   STATUS_GIS,COD_MEC_GIS,ORIGEM_GIS,LOGIN_INC_GIS,DTA_INC_GIS,LOGIN_ALT_GIS,DTA_ALT_GIS,NROGUIAAUX :VARIANT ):String;

  function ItensGuias(COD_EMP_GNO,COD_GIS_GNO,COD_NFS_GNO,LOGIN_INC_GNO,DTA_INC_GNO,
                        LOGIN_ALT_GNO,DTA_ALT_GNO: VARIANT ):String;

  Function criptSenha(Senha:String):String;
  procedure CadastraUsuarios;
  function InserePermissoesISSWEB(Empresa,Modulo,Cadastro,CodUsuario:String):Integer;
  function GeraValidadorNF : String;
  procedure Escrituracao;
  function TrataDescricao(campo:String):String;


  procedure definicampos;

  private
  codsetorvencimento,codsetorvencimentoMobil,codzoneamento,codedificacao,codcidade,ufcidade:String;
    function ConvertRTFToAsciiText(aString: string): string;
    procedure ConverteDesif;
    procedure PlanodeContas(cadastro, ano, codigo: String);
    procedure SetaGenerator;
    function TextFromHTML(s: string): string;
    procedure BancodeImagens;
    function SetIDImagem(id,tipo:String):String;
    procedure BancodeArquivos;
    procedure CertidaoCartorio;
    procedure guiasSimples;
    procedure parcelasSimples;
    procedure AcertaNotasFiscaisEletronica;
    procedure DividaCancelados;
    procedure MotivoCancelamento;
    procedure LogdeDividaCancelados;
    procedure ValoresCaracteristicasTabela_III;
    procedure NotasFiscaisAvulsa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;
  TD:TTransactionDesc;
  tipodabaixa:String;

implementation
uses UnitFuncoes;

{$R *.dfm}


procedure TFPrincipal.definicampos;
begin
   codsetorvencimento:='1';  //est� na tabela TRIVEN
   codzoneamento     :='89'; //SELECT * FROM TRICAR1
   codedificacao     :='53'; //SELECT * FROM TRICAR1
   codcidade         :='0004593';//SELECT * FROM  CNTI_MUNICIPIOS WHERE CNTI_A_MUN LIKE '%SIDRO%'
   ufcidade          :='PA';
   codsetorvencimentomobil:='0';
end;

function TFPrincipal.TrataDescricao(campo:String):String;
var auxcampo:String;
    i:Integer;
begin

  auxcampo:='';
  i:=1;
  while i<=Length(campo) do
  begin
   if campo[i]+campo[i+1]+campo[i+2]+campo[i+3]+campo[i+4]+campo[i+5]='&nbsp;' then
   begin
    i:=i+5;
    auxcampo:=auxcampo+'';
   end
   else
   if campo[i]+campo[i+1]+campo[i+2]+campo[i+3]+campo[i+4]+campo[i+5]='<br />' then
   begin
    i:=i+5;
    auxcampo:=auxcampo+chr(13);
   end
   else
   auxcampo:=auxcampo+campo[i];

   inc(i);
  end;

  result:=auxcampo;


end;


function TruncaSIA7(valor : Double) : Double;
var x : string;
    p : integer;
begin
 if valor = 0 then result := 0
 else begin //result := trunc(valor*100)/100;
   x := Replace(floattostr(valor*100),',','.');
   p := Pos('.',x); //posi��o da v�rgula
   if p > 0 then x := copy(x,1,p-1);
   result := strtofloat(x) / 100;
 end;
end;



function TFPrincipal.movimento(COD_EMP_MEC,COD_MOD_MEC,CADASTRO_MEC,COD_CNT_MEC,DATALANCA_MEC,TP_MEC,MES_MEC,ANO_MEC,
                               ORIGEM_MEC,TIPOESCRITURA_MEC,FECHADO_MEC,DATAFECHADO_MEC,LOGIN_INC_MEC,DTA_INC_MEC,LOGIN_ALT_MEC,
                               DTA_ALT_MEC,CODIGO_PRT_MEC :VARIANT ):String;
var COD_MEC:Integer;
begin


     if trim(CODIGO_PRT_MEC)='' then CODIGO_PRT_MEC:='0';


     QVerifica.close;
     QVerifica.sql.text:=' SELECT COD_MEC FROM LI_MOVIMENTOECO '+
                         ' WHERE COD_EMP_MEC='+VarToStr(COD_EMP_MEC)+
                         ' AND COD_MOD_MEC='+VarToStr(COD_MOD_MEC)+
                         ' AND CADASTRO_MEC='''+VarToStr(CADASTRO_MEC)+''' '+
                         ' AND MES_MEC='+VarToStr(MES_MEC)+
                         ' AND ANO_MEC='+VarToStr(ANO_MEC)+
                         ' AND ORIGEM_MEC='''+VarToStr(ORIGEM_MEC)+''' '+
                         ' AND TP_MEC='''+VarToStr(TP_MEC)+''' '+
                         ' AND CODIGO_PRT_MEC='+VarToStr(CODIGO_PRT_MEC);

     QVerifica.open;
     if QVerifica.IsEmpty then begin

      QGenerator.close;
      QGenerator.sql.text:='SELECT GEN_ID(GEN_LI_MOVIMENTOECO,1) as cod FROM RDB$DATABASE ';
      QGenerator.open;
      COD_MEC:=QGenerator.FieldByName('cod').AsInteger;


      QDestino.close;
      QDestino.SQL.Text :=' INSERT INTO LI_MOVIMENTOECO(COD_EMP_MEC,  '+
                                                    '  COD_MEC,'+
                                                    '  COD_MOD_MEC,'+
                                                    '  CADASTRO_MEC,'+
                                                    '  COD_CNT_MEC,'+
                                                    '  DATALANCA_MEC,'+
                                                    '  TP_MEC,'+
                                                    '  MES_MEC,'+
                                                    '  ANO_MEC,'+
                                                    '  ORIGEM_MEC,'+
                                                    '  TIPOESCRITURA_MEC,'+
                                                    '  FECHADO_MEC,'+
                                                    '  DATAFECHADO_MEC,'+
                                                    '  LOGIN_INC_MEC,'+
                                                    '  DTA_INC_MEC,'+
                                                    '  LOGIN_ALT_MEC,'+
                                                    '  DTA_ALT_MEC,'+
                                                    '  CODIGO_PRT_MEC '+
                                                    ') VALUES ('+
                                                              TrataDadosFinanceiro(COD_EMP_MEC)+','+
                                                              TrataDadosFinanceiro(COD_MEC)+','+
                                                              TrataDadosFinanceiro(COD_MOD_MEC)+','+
                                                              TrataDadosFinanceiro(CADASTRO_MEC)+','+
                                                              TrataDadosFinanceiro(COD_CNT_MEC)+','+
                                                              TrataDadosFinanceiro(DATALANCA_MEC)+','+
                                                              TrataDadosFinanceiro(TP_MEC)+','+
                                                              TrataDadosFinanceiro(MES_MEC)+','+
                                                              TrataDadosFinanceiro(ANO_MEC)+','+
                                                              TrataDadosFinanceiro(ORIGEM_MEC)+','+
                                                              TrataDadosFinanceiro(TIPOESCRITURA_MEC)+','+
                                                              TrataDadosFinanceiro(FECHADO_MEC)+','+
                                                              TrataDadosFinanceiro(DATAFECHADO_MEC)+','+
                                                              TrataDadosFinanceiro(LOGIN_INC_MEC)+','+
                                                              TrataDadosFinanceiro(DTA_INC_MEC)+','+
                                                              TrataDadosFinanceiro(LOGIN_ALT_MEC)+','+
                                                              TrataDadosFinanceiro(DTA_ALT_MEC)+','+
                                                              TrataDadosFinanceiro(CODIGO_PRT_MEC)+
                                                             ')';



      QDestino.execsql;
      result:=IntToStr(COD_MEC);
     end
     else
      result:=QVerifica.fieldByname('COD_MEC').AsString;

end;

Function TFPrincipal.NotasCanceladas(COD_EMP_NCA,COD_NFE_NCA,DATACANCELA_NCA,DETALHEMOTIVO_NCA,
                                     CODSUB_NFE_NCA,VALORCREDITO_NCA,LOGIN_INC_NCA,DTA_INC_NCA,
                                     LOGIN_ALT_NCA,DTA_ALT_NCA: VARIANT ):String;
begin

      DETALHEMOTIVO_NCA:=RetiraChar(RetiraChar(VarToSTr(DETALHEMOTIVO_NCA),''''),'"');
      try
      QDestino.close;
      QDestino.SQL.Text :=' INSERT INTO LI_NOTASUBCANCELADA(COD_EMP_NCA,  '+
                                                    '  COD_NFE_NCA,'+
                                                    '  DATACANCELA_NCA,'+
                                                    '  DETALHEMOTIVO_NCA,'+
                                                    '  CODSUB_NFE_NCA,'+
                                                    '  VALORCREDITO_NCA,'+
                                                    '  LOGIN_INC_NCA,'+
                                                    '  DTA_INC_NCA,'+
                                                    '  LOGIN_ALT_NCA,'+
                                                    '  DTA_ALT_NCA '+
                                                    ') VALUES ('+
                                                              TrataDadosFinanceiro(COD_EMP_NCA)+','+
                                                              TrataDadosFinanceiro(COD_NFE_NCA)+','+
                                                              TrataDadosFinanceiro(DATACANCELA_NCA)+','+
                                                              TrataDadosFinanceiro(DETALHEMOTIVO_NCA)+','+
                                                              TrataDadosFinanceiro(CODSUB_NFE_NCA)+','+
                                                              TrataDadosFinanceiro(VALORCREDITO_NCA)+','+
                                                              TrataDadosFinanceiro(LOGIN_INC_NCA)+','+
                                                              TrataDadosFinanceiro(DTA_INC_NCA)+','+
                                                              TrataDadosFinanceiro(LOGIN_ALT_NCA)+','+
                                                              TrataDadosFinanceiro(DTA_ALT_NCA)+
                                                             ')';



      QDestino.execsql;
      except

      end;

end;
function TFPrincipal.GuiasNota(COD_EMP_GIS,COD_MOD_GIS,CADASTRO_GIS,COD_CNT_GIS,DATAVENCI_GIS,
                           COBRAEXPEDIENTE_GIS,COD_DIV_GIS,PARCELA_PAR_GIS,TP_PAR_GIS,NNUMERO_GIS,STATUS_GIS,COD_MEC_GIS,ORIGEM_GIS,
                           LOGIN_INC_GIS,DTA_INC_GIS,LOGIN_ALT_GIS,DTA_ALT_GIS,NROGUIAAUX :VARIANT ):String;
var COD_GIS:Integer;
begin


    QVerifica.close;
    QVerifica.sql.text:='SELECT * '+
                           ' FROM LI_GUIASISS '+
                           ' WHERE COD_EMP_GIS=1 AND COD_GIS='''+VarToStr(NROGUIAAUX)+'''';
    QVerifica.open;
    if QVerifica.IsEmpty then begin
      COD_GIS:=NROGUIAAUX;
      result:=IntToStr(NROGUIAAUX);

      QDestino.close;
      QDestino.SQL.Text :=' INSERT INTO LI_GUIASISS(COD_EMP_GIS,  '+
                                                    '  COD_GIS,'+
                                                    '  COD_MOD_GIS,'+
                                                    '  CADASTRO_GIS,'+
                                                    '  COD_CNT_GIS,'+
                                                    '  DATAVENCI_GIS,'+
                                                    '  COBRAEXPEDIENTE_GIS,'+
                                                    '  COD_DIV_GIS,'+
                                                    '  PARCELA_PAR_GIS,'+
                                                    '  TP_PAR_GIS,'+
                                                    '  NNUMERO_GIS,'+
                                                    '  STATUS_GIS,'+
                                                    '  COD_MEC_DECPS_GIS,'+
                                                    '  ORIGEM_GIS, '+
                                                    '  LOGIN_INC_GIS,'+
                                                    '  DTA_INC_GIS,'+
                                                    '  LOGIN_ALT_GIS,'+
                                                    '  DTA_ALT_GIS '+
                                                    ') VALUES ('+
                                                              TrataDadosFinanceiro(COD_EMP_GIS)+','+
                                                              TrataDadosFinanceiro(COD_GIS)+','+
                                                              TrataDadosFinanceiro(COD_MOD_GIS)+','+
                                                              TrataDadosFinanceiro(CADASTRO_GIS)+','+
                                                              TrataDadosFinanceiro(COD_CNT_GIS)+','+
                                                              TrataDadosFinanceiro(DATAVENCI_GIS)+','+
                                                              TrataDadosFinanceiro(COBRAEXPEDIENTE_GIS)+','+
                                                              TrataDadosFinanceiro(COD_DIV_GIS)+','+
                                                              TrataDadosFinanceiro(PARCELA_PAR_GIS)+','+
                                                              TrataDadosFinanceiro(TP_PAR_GIS)+','+
                                                              TrataDadosFinanceiro(NNUMERO_GIS)+','+
                                                              TrataDadosFinanceiro(STATUS_GIS)+','+
                                                              TrataDadosFinanceiro(COD_MEC_GIS)+','+
                                                              TrataDadosFinanceiro(ORIGEM_GIS)+','+
                                                              TrataDadosFinanceiro(LOGIN_INC_GIS)+','+
                                                              TrataDadosFinanceiro(DTA_INC_GIS)+','+
                                                              TrataDadosFinanceiro(LOGIN_ALT_GIS)+','+
                                                              TrataDadosFinanceiro(DTA_ALT_GIS)+
                                                             ')';



      QDestino.execsql;
    end
    else
    result:=QVerifica.fieldByname('cod_gis').AsString;

END;


function TFPrincipal.ItensGuias(COD_EMP_GNO,COD_GIS_GNO,COD_NFS_GNO,LOGIN_INC_GNO,DTA_INC_GNO,
                                LOGIN_ALT_GNO,DTA_ALT_GNO: VARIANT ):String;
begin
      QDestino.close;
      QDestino.SQL.Text :=' INSERT INTO LI_GUIASISSNOTA(COD_EMP_GNO,  '+
                                                    '  COD_GIS_GNO,'+
                                                    '  COD_NFS_GNO,'+
                                                    '  LOGIN_INC_GNO,'+
                                                    '  DTA_INC_GNO,'+
                                                    '  LOGIN_ALT_GNO,'+
                                                    '  DTA_ALT_GNO '+
                                                    ') VALUES ('+
                                                              TrataDadosFinanceiro(COD_EMP_GNO)+','+
                                                              TrataDadosFinanceiro(COD_GIS_GNO)+','+
                                                              TrataDadosFinanceiro(COD_NFS_GNO)+','+
                                                              TrataDadosFinanceiro(LOGIN_INC_GNO)+','+
                                                              TrataDadosFinanceiro(DTA_INC_GNO)+','+
                                                              TrataDadosFinanceiro(LOGIN_ALT_GNO)+','+
                                                              TrataDadosFinanceiro(DTA_ALT_GNO)+
                                                             ')';



      QDestino.execsql;

END;


function TFPrincipal.GeraValidadorNF : String;
var i, nro : Integer;
const Numero = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
begin
  Result := '';
  for i := 1 to 9 do begin
    Randomize;
    nro := Random(36);
    if nro <= 0 then nro := 1;
    Result := Result + Trim(Numero[nro]);
  end;
end;


Function TFPrincipal.criptSenha(Senha:String):String;
var cont,tam : Integer;
    senhacrip : String;
    codasc : Integer;
begin
  cont := length(trim(senha));
  senhacrip := '';
  While cont>=1 do begin
    codasc := Ord(senha[cont]);
    senhaCrip := senhaCrip+ chr((codasc xor 4) );
    cont := cont - 1;
  end;
  result := senhacrip;
end;

function TFPrincipal.InserePermissoesISSWEB(Empresa,Modulo,Cadastro,CodUsuario:String):Integer;
var qrx : TSQLQuery;
begin
  try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := Conexao;
    qrx.Close;
    qrx.SQL.Text := ' INSERT INTO LI_CADOPCAOSISTEMA (COD_EMP_COS, CADASTRO_COS, COD_MOD_COS, COD_USR_COS, '+
                                                     'COD_OPS_COS, PEMITE_COS, LOGIN_INC_COS, DTA_INC_COS) '+
                    ' SELECT COD_EMP_OPS,'''+cadastro+''','+modulo+','+CodUsuario+',COD_OPS,''S'',''FGMAIS'',CURRENT_DATE '+
                    ' FROM LI_OPCAOSISTEMA '+
                    ' WHERE COD_EMP_OPS='+Empresa+' AND NOT GRUPO_OPS IS NULL';

    qrx.ExecSQL;
    FreeAndNil(qrx);
    Result:=0;
  Except
    Result:=1;
    FreeAndNil(qrx);
  end;
end;


function TFPrincipal.Tomadores(nome,rg,cnpj,fone,fax,email,cid,uf,logra,numero,complemento,bai,cep:String):String;
var
codigo,codmunicipio,codpais,fora:String;
begin
  NOME:=RetiraChar(NOME,'''');
  cid:=RetiraChar(cid,'''');
  uf:=RetiraChar(uf,'''');
  logra:=RetiraChar(logra,'''');
  numero:=RetiraChar(numero,'''');
  complemento:=RetiraChar(complemento,'''');
  bai:=RetiraChar(bai,'''');
  cep:=RetiraChar(cep,'''');


  QVerifica.close;
  QVerifica.sql.Clear;
  QVerifica.sql.add('SELECT * FROM GR_TOMADOR WHERE COD_EMP_TOM=1 AND CPF_CNPJ_TOM='''+cnpj+'''');
  QVerifica.Open;

  IF QVerifica.IsEmpty then
  begin

   QVerifica.close;
   QVerifica.sql.Clear;
   QVerifica.sql.add('select CAST(gen_id(GEN_GR_TOMADOR,1) AS INTEGER) CODIGO from RDB$DATABASE');
   QVerifica.Open;
   codigo:=IntToStr(QVerifica.fieldByName('CODIGO').AsInteger);


    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('SELECT * FROM MUNICIPIO WHERE UPPER(MUNICIPIO) LIKE '''+uppercase(trim(cid))+''' AND UF='''+uf+'''');
    QVerifica.open;
    if not QVerifica.IsEmpty then begin
     codmunicipio     :=QVerifica.fieldByName('CD_MUNICIPIO').AsString;
     fora            :='N';
     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
     QVerifica.open;
     codpais:=QVerifica.fieldByName('COD_BCE_EMP').value;

    end
    else
    begin
     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
     QVerifica.open;
     codpais:=QVerifica.fieldByName('COD_BCE_EMP').value;
     codmunicipio     :=QVerifica.fieldByName('CIDADE_IBGE').AsString;
     fora            :='N';
    end;




   QContribuinte.close;
   QContribuinte.sql.Clear;
   QContribuinte.sql.add('INSERT INTO GR_TOMADOR (COD_EMP_TOM, '+
                         ' COD_TOM, '+
                         ' NOME_RAZAOSOCIAL_TOM, '+
                         ' NOME_FANTASIA_TOM,'+
                         ' LOGRADOURO_TOM, '+
                         ' NUMERO_TOM, '+
                         ' COMPLEMENTO_TOM, '+
                         ' BAIRRO_TOM, '+
                         ' CD_PAISTOMADOR_TOM, '+
                         ' CD_MUNICIPIO_TOM, '+
                         ' FORAPAIS_TOM,'+
                         ' CEP_TOM, '+
                         ' CPF_CNPJ_TOM, '+
                         ' RG_INSCRE_TOM, '+
                         ' EMAIL_TOM, '+
                         ' FONE_TOM, '+
                         ' FAX_TOM) '+
                         ' VALUES ( '+
                                 '1,'+
                                 codigo+','+
                                 ''''+copy(retiraChar(NOME,''''),1,60)+''','+
                                 ''''+copy(retiraChar(NOME,''''),1,60)+''','+
                                 ''''+retiraChar(COPY(TRIM(logra),1,70),'''')+''','+
                                 ''''+copy(retiraChar(NUMERO,''''),1,10)+''','+
                                 ''''+copy(trim(retiraChar(COMPLEMENTO,'''')),1,30)+''','+
                                 ''''+retiraChar(COPY(TRIM(bai),1,50),'''')+''','+
                                 codpais+','+
                                 codmunicipio+','+
                                 ''''+retiraChar(TRIM(fora),'''')+''','+
                                 ''''+TiraCaracter(CEP)+''','+
                                  ''''+copy(TiraCaracter(CNPJ),1,14)+''','+
                                 ''''+TiraCaracter(copy(trim(RG),1,15))+''','+
                                 ''''+copy(trim(EMAIL),1,60)+''','+
                                 ''''+TiraCaracter(copy(trim(FONE),1,15))+''','+
                                 ''''+TiraCaracter(copy(trim(fax),1,15))+''' '+
                                 ')');
   QContribuinte.execsql;

  end
  else begin

    codigo:=QVerifica.fieldByName('COD_TOM').AsString;

    QVerifica.sql.clear;
    QVerifica.sql.add('SELECT * FROM MUNICIPIO WHERE UPPER(MUNICIPIO) LIKE '''+uppercase(trim(cid))+''' AND UF='''+uf+'''');
    QVerifica.open;
    if not QVerifica.IsEmpty then begin
     codmunicipio     :=QVerifica.fieldByName('CD_MUNICIPIO').AsString;
     fora            :='N';
     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
     QVerifica.open;
     codpais:=QVerifica.fieldByName('COD_BCE_EMP').value;

    end
    else
    begin
     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
     QVerifica.open;
     codpais:=QVerifica.fieldByName('COD_BCE_EMP').value;
     codmunicipio     :=QVerifica.fieldByName('CIDADE_IBGE').AsString;
     fora            :='N';
    end;





   QContribuinte.close;
   QContribuinte.sql.Clear;
   QContribuinte.sql.add('UPDATE GR_TOMADOR SET '+
                         ' NOME_RAZAOSOCIAL_TOM='''+copy(retiraChar(NOME,''''),1,60)+''' ,'+
                         ' NOME_FANTASIA_TOM='''+copy(retiraChar(NOME,''''),1,60)+''','+
                         ' LOGRADOURO_TOM='''+retiraChar(COPY(TRIM(logra),1,70),'''')+''','+
                         ' NUMERO_TOM='''+copy(retiraChar(NUMERO,''''),1,10)+''','+
                         ' COMPLEMENTO_TOM='''+copy(trim(retiraChar(COMPLEMENTO,'''')),1,30)+''','+
                         ' BAIRRO_TOM='''+retiraChar(COPY(TRIM(bai),1,50),'''')+''','+
                         ' CD_PAISTOMADOR_TOM='''+codpais+''','+
                         ' CD_MUNICIPIO_TOM='''+codmunicipio+''','+
                         ' FORAPAIS_TOM='''+retiraChar(TRIM(fora),'''')+''','+
                         ' CEP_TOM='''+TiraCaracter(CEP)+''','+
                         ' RG_INSCRE_TOM='''+TiraCaracter(COPY(trim(RG),1,15))+''','+
                         ' EMAIL_TOM='''+copy(trim(EMAIL),1,60)+''','+
                         ' FONE_TOM='''+TiraCaracter(copy(trim(FONE),1,15))+''','+
                         ' FAX_TOM='''+TiraCaracter(copy(trim(fax),1,15))+''' '+
                         ' WHERE COD_EMP_TOM=1 AND COD_TOM='+codigo);
   QContribuinte.execsql;


  end;

   result:=codigo;

end;


procedure TFPrincipal.SerieNotaEletronica;
begin

  if not Conexao.InTransaction then Conexao.StartTransaction(TD);
  QNOrigem.close;
  QNOrigem.sql.clear;
  QNOrigem.sql.add('select * from serienotas  ');
  QNOrigem.open;
  while not QNOrigem.Eof do
  begin
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_SERIENF WHERE COD_EMP_SNF=1 AND COD_SNF ='+QNOrigem.FieldByName('serientcodigo').AsString;
   cdsdestino.open;
   if cdsdestino.IsEmpty then
   begin
    cdsdestino.append;
    cdsdestino.fieldByName('cod_emp_snf').AsInteger:=1;
    cdsdestino.fieldByName('cod_snf').AsInteger:=QNOrigem.FieldByName('serientcodigo').AsInteger;
    cdsdestino.fieldByName('SERIE_SNF').AsString:=QNOrigem.FieldByName('serientdesc').AsString;
    cdsdestino.post;
    cdsdestino.ApplyUpdates(-1);
   end;



  QNOrigem.next;
  end;


  Conexao.Commit(TD);

end;


Function TFPrincipal.TextFromHTML(s: string):string;
//Extracts all the text between tags from an HTML string
var
  IsText: Boolean;
  i: Integer;
begin
  result := '';
  IsText := true;

  for i := 1 to Length(s) do begin

    if s[i] = '<' then
       IsText := false;

    if IsText then
      result := result + s[i];

    if s[i] = '>' then
      IsText := true;
  end;

  Result := StringReplace(Result, '&quot;', '"',  [rfReplaceAll]);
  Result := StringReplace(Result, '&apos;', '''', [rfReplaceAll]);
  Result := StringReplace(Result, '&gt;',   '>',  [rfReplaceAll]);
  Result := StringReplace(Result, '&lt;',   '<',  [rfReplaceAll]);
  Result := StringReplace(Result, '&amp;',  '&',  [rfReplaceAll]);
  Result := StringReplace(Result, '&nbsp;',  ' ',  [rfReplaceAll]);

end;


 procedure  TFPrincipal.SetaGenerator;
 var valor:Integer;
 begin
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_GIS) AS INTEGER) AS VALOR FROM LI_GUIASISS');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_GUIASISS TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_MEC) AS INTEGER) AS VALOR FROM LI_MOVIMENTOECO');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_MOVIMENTOECO TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_TOM) AS INTEGER) AS VALOR FROM GR_TOMADOR');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_GR_TOMADOR TO '+INTTOSTR(VALOR));
  QDestino.execsql;
 end;

procedure TFPrincipal.NotasFiscaisEletronica;
var cont,Erros,ncommit,item,codnfs:Integer;
cod_cntp,cadastro,modulo,codtom,codatv,codatd,descricao,codmovim,codguia,dataemissao,cnpjtom,ORIGEM_MEC,TIPONOTA,fechado,cnpj,rgtom,datacancelamento,auxtexto,nomecid,ufcid:String;
aliquota:Variant;
begin


  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('DELETE FROM LI_GUIASISS WHERE COD_EMP_GIS=1 AND ORIGEM_GIS=''N'' AND  LOGIN_INC_GIS=''@ISS''');
  QVerifica.EXECSQL;

  QVerifica.close;
  QVerifica.sql.Text:='DELETE FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND TIPONOTA_NFS IN (''C'',''P'') AND LOGIN_INC_NFS=''@ISS'' ';
  QVerifica.execsql;

  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('DELETE FROM LI_MOVIMENTOECO WHERE COD_EMP_MEC=1 AND ORIGEM_MEC IN (''NFSENORMAL'',''DECPC'') AND LOGIN_INC_MEC=''@ISS'' ');
  QVerifica.EXECSQL;

  SetaGenerator;

  QNOrigem.close;
  QNOrigem.sql.clear;
  QNOrigem.sql.add(' select  nfecodigo, nfemobcodigo,nullif(nfedata, ''0001-01-01'') as nfedata,nfesitntcodigo,nferegimeespecialtributacao,nfenumeroprocesso,nullif(nfedataemissao, ''0001-01-01'') as nfedataemissao,nfeconsupersimples, '+
                   '         nfesitntcodigo,nfemescomp,nfeanocomp,nfetomconcpfcnpj,nfetomconrgie,TO_ASCII(nfetomconnome,''LATIN1'') as nfetomconnome,nfetomemail,nfetomtelefone,nfetomconmundes,nfetomconmunuf, '+
                   '         nfetomconnumero,TO_ASCII(nfetomconcompl, ''LATIN1'') as nfetomconcompl,TO_ASCII(nfetomconbaidesc,''LATIN1'') as nfetomconbaidesc,nfetomconcep,nfeimposto,nfetomconmuncodibge,nfelocalserv,nfecodigoverificacao,nferetlote, '+
                   '         nferetido,nfeseriecodigo,entity2char(TO_ASCII(nfeobsservicos, ''LATIN1'')) as nfeobsservicos,nferetir,nfeir,nfebasecalc,nferetinss,nfeinss,nferetpis,nfepis,nferetcofins,nfecofins,nferetcsll, '+
                   '         nfecsll,nfeoutrostributos, nfeativcodigo,nullif(nfedatacancelamento, ''0001-01-01'') as nfedatacancelamento,entity2char(TO_ASCII(nfeobscancelamento,''LATIN1'')) as  nfeobscancelamento,nfeincentivofiscal, '+
                   '         TO_ASCII(nfetomconlogdesc,''LATIN1'') as  nfetomconlogdesc,nfealiquota,nfealiquotassimp,nfeativaliquota,sitntabrev,nfemuncodigo,nfeufcodigo '+
                   ' from notafiscaleletronica '+
                   ' left join sitnotas on sitntcodigo=nfesitntcodigo '+
                   ' order by nfemobcodigo, nfecodigo '
                   );
  QNOrigem.open;

  QNOrigem.RecordCount;




  cont:=1;


   cdsItens.close;
   sqlItens.CommandText:='SELECT * FROM LI_NOTAFISCAL_ITENS WHERE COD_EMP_NFI=1 AND COD_NFS_NFI=-1';
   cdsItens.open;
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_NFS IS NULL ';
   cdsdestino.open;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);


  ncommit:=0;
  while not QNOrigem.Eof do
  begin



     inc(ncommit);
     ProgressBar1.position:=cont;



     lbitem.caption:=inttostr(cont);
     lbitem.update;

     lbchave.caption:=QNOrigem.fieldByName('nfemobcodigo').AsString+'-'+QNOrigem.fieldByName('nfecodigo').AsString;
     lbchave.update;


       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add(' SELECT COD_MBL AS CADASTRO,COD_CNT_MBL AS CODCNT FROM LI_MOBIL '+
                         ' INNER JOIN GR_CONTRIBUINTES ON COD_EMP_CNT=COD_EMP_MBL AND COD_CNT=COD_CNT_MBL '+
                         ' WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QNOrigem.fieldByname('nfemobcodigo').AsString)+'''  '
                        );
       QVerifica.open;
       modulo:='2';



     if not QVerifica.IsEmpty then begin

          QGenerator.close;
          QGenerator.sql.text:='SELECT GEN_ID(GEN_LI_NOTAFISCAL,1) as cod FROM RDB$DATABASE ';
          QGenerator.open;
          codnfs:=QGenerator.FieldByName('cod').AsInteger;

          cdsdestino.append;
          cdsdestino.fieldByName('COD_EMP_NFS').value   :=1;
          cdsdestino.fieldByName('COD_NFS').value       :=codnfs;
          cdsdestino.fieldByName('COD_MOD_NFS').value   :=modulo;
          cdsdestino.fieldByName('CADASTRO_NFS').value  :=QVerifica.fieldByName('CADASTRO').value;
          cdsdestino.fieldByName('COD_CNT_NFS').value   :=QVerifica.fieldByName('CODCNT').value;

          cdsdestino.fieldByName('DATACOMPETE_NFS').value   :=QNOrigem.fieldByName('nfedata').value;
          cdsdestino.fieldByName('OPTANTESIMPLES_NFS').value        :='N';


          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='I' then
          cdsdestino.fieldByName('EXIGIBILIDADEISS_NFS').value      :='Isento'
          else
          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='D' then
          cdsdestino.fieldByName('EXIGIBILIDADEISS_NFS').value      :='N�o Incid�ncia'
          else
          cdsdestino.fieldByName('EXIGIBILIDADEISS_NFS').value      :='Exig�vel';

          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='N�o Possui';

          if (trim(QNOrigem.fieldByName('nfeconsupersimples').AsString)='S') then begin
            cdsdestino.fieldByName('OPTANTESIMPLES_NFS').AsString:='S';
            cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempres�rio e Empresa de Pequeno Porte (ME EPP)';
          end;



          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='S' then
          begin
              cdsdestino.fieldByName('OPTANTESIMPLES_NFS').AsString:='S';
              cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempres�rio e Empresa de Pequeno Porte (ME EPP)';
          end
          else
          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='F' then
          begin
              cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Estimativa';
              cdsdestino.fieldByName('TIPOISS_NFS').value      :='04 - Fixo'
          end
          else
          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='T' then
          begin
              cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Estimativa';
              cdsdestino.fieldByName('TIPOISS_NFS').value      :='02 - Estimativa'
          end
          else
          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='M' then
          begin
              cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempres�rio Individual (MEI)';
              cdsdestino.fieldByName('TIPOISS_NFS').value      :='04 - Fixo';
              cdsdestino.fieldByName('OPTANTESIMPLES_NFS').AsString:='S';
          end;


      {

          if (trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='0') or (trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='') then
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='N�o Possui'
          else
          if trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='1' then
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempresa municipal'
          else
          if trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='2' then
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Estimativa'
          else
          if trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='3' then
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Sociedade de Profissionais'
          else
          if trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='4' then
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Cooperativa'
          else
          if trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='5' then
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempres�rio Individual (MEI)'
          else
          if trim(QNOrigem.fieldByName('nferegimeespecialtributacao').AsString)='6' then
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempres�rio e Empresa de Pequeno Porte (ME EPP)';

          }
          cdsdestino.fieldByName('PROCESSOEXIGIBILIDADE_NFS').value :=QNOrigem.fieldByName('nfenumeroprocesso').AsString;

          if QNOrigem.FieldByName('nfeincentivofiscal').AsString='S' then
          cdsdestino.fieldByName('INCENTIVOFISCAL_NFS').value       :='S'
          else
          cdsdestino.fieldByName('INCENTIVOFISCAL_NFS').value       :='N';


          cdsdestino.fieldByName('LOGIN_INC_NFS').AsString:='@ISS';

          dataemissao:=copy(QNOrigem.fieldByName('nfedataemissao').AsString,1,10);





          origem_mec:='NFSENORMAL';
          tiponota:='C';

          fechado:='S';




          codmovim:=movimento(1,
                              MODULO,//COD_MOD_MEC
                              cdsdestino.fieldByName('CADASTRO_NFS').AsString,//CADASTRO_MEC,
                              cdsdestino.fieldByName('COD_CNT_NFS').value,//COD_CNT_MEC
                              StrToDate(dataemissao),//DATALANCA_MEC,
                              'P',//TP_MEC,
                              QNOrigem.FieldByName('nfemescomp').AsString,//MES_MEC,
                              QNOrigem.FieldByName('nfeanocomp').AsString,//ANO_MEC,
                              origem_mec,//ORIGEM_MEC
                              '01 - Normal',//TIPOESCRITURA_MEC
                              fechado,//FECHADO_MEC
                              StrToDate(dataemissao),//DATAFECHADO_MEC,
                              '@ISS',//LOGIN_INC_MEC,
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              '@ISS',
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              0
                              );




               cdsdestino.fieldByName('COD_MEC_NFS').value   :=codmovim;


               cnpjtom:=trim(copy(Tiracaracter(QNOrigem.FieldByName('nfetomconcpfcnpj').AsString),1,14));
               rgtom  :=Tiracaracter(QNOrigem.FieldByName('nfetomconrgie').AsString);

                codtom:=Tomadores(trim(QNOrigem.fieldByname('nfetomconnome').AsString),
                                       rgtom,
                                       TiraCaracter(cnpjtom),
                                       trim(QNOrigem.FieldByName('nfetomtelefone').AsString),
                                       trim(QNOrigem.FieldByName('nfetomtelefone').AsString),
                                       trim(QNOrigem.fieldByname('nfetomemail').AsString),
                                       trim(QNOrigem.fieldByname('nfetomconmundes').AsString),
                                       trim(QNOrigem.fieldByname('nfetomconmunuf').AsString),
                                       trim(QNOrigem.fieldByname('nfetomconlogdesc').AsString),
                                       trim(QNOrigem.fieldByname('nfetomconnumero').AsString),
                                       trim(QNOrigem.fieldByname('nfetomconcompl').AsString),
                                       trim(QNOrigem.fieldByname('nfetomconbaidesc').AsString),
                                       trim(QNOrigem.fieldByname('nfetomconcep').AsString)
                                       );

          cdsdestino.fieldByName('VALORISS_NFS').AsCurrency:=QNOrigem.fieldByName('nfeimposto').AsCurrency;

          cdsdestino.fieldByName('COD_TOM_NFS').value:=codtom;



          cdsdestino.fieldByName('NOME_RAZAOSOCIAL_NFS').value:=trim(QNOrigem.fieldByname('nfetomconnome').AsString);
          cdsdestino.fieldByName('NOME_FANTASIA_NFS').value   :=trim(QNOrigem.fieldByname('nfetomconnome').AsString);
          cdsdestino.fieldByName('LOGRADOURO_NFS').value      :=trim(QNOrigem.fieldByname('nfetomconlogdesc').AsString);
          cdsdestino.fieldByName('NUMERO_NFS').value          :=QNOrigem.fieldByname('nfetomconnumero').AsString;
          cdsdestino.fieldByName('COMPLEMENTO_NFS').value     :=QNOrigem.fieldByname('nfetomconcompl').AsString;
          cdsdestino.fieldByName('BAIRRO_NFS').value          :=QNOrigem.fieldByname('nfetomconbaidesc').AsString;

          cdsdestino.fieldByName('TOMADORFORAPAIS_NFS').value            :='N';
          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value:=QVerifica.fieldByName('COD_BCE_EMP').value;


          if (trim(QNOrigem.fieldByName('nfetomconmuncodibge').AsString)='0') or (trim(QNOrigem.fieldByName('nfetomconmuncodibge').AsString)='') then
          begin
           QAuxiliar.Close;
           QAuxiliar.sql.Text:='SELECT CD_MUNICIPIO FROM MUNICIPIO WHERE MUNICIPIO LIKE '''+retirachar(QNOrigem.fieldByname('nfetomconmundes').AsString,'''')+''' AND UF='''+retirachar(QNOrigem.fieldByname('nfetomconmunuf').AsString,'''')+'''';
           QAuxiliar.Open;
          end
          else
          begin
           QAuxiliar.Close;
           QAuxiliar.sql.Text:='SELECT CD_MUNICIPIO FROM MUNICIPIO WHERE CD_MUNICIPIO='''+ZeraEsquerda(7,QNOrigem.fieldByName('nfetomconmuncodibge').AsString)+''' ';
           QAuxiliar.Open;
          end;


          if not QAuxiliar.IsEmpty then
          cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QAuxiliar.fieldByName('CD_MUNICIPIO').value
          else
          begin
           QVerifica.close;
           QVerifica.sql.clear;
           QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
           QVerifica.open;
           cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          end;


          cdsdestino.fieldByName('CEP_NFS').value                :=TiraCaracter(QNOrigem.fieldByname('nfetomconcep').AsString);
          cdsdestino.fieldByName('CPF_CNPJ_NFS').value           :=TiraCaracter(TiraCaracter(trim(cnpjtom)));
          cdsdestino.fieldByName('RG_INSCRE_NFS').value          :=QNOrigem.fieldByname('nfetomconrgie').AsString;;
          cdsdestino.fieldByName('EMAIL_NFS').value              :=QNOrigem.fieldByname('nfetomemail').AsString;
          cdsdestino.fieldByName('FONE_NFS').value               :=QNOrigem.FieldByName('nfetomtelefone').AsString;
          cdsdestino.fieldByName('FAX_NFS').value                :=QNOrigem.FieldByName('nfetomtelefone').AsString;
          cdsdestino.fieldByName('INSCRM_NFS').value             :='';

          cdsdestino.fieldByName('EXPEDIENTE_NFS').value:='N';
          cdsdestino.fieldByName('VALOREXPED_NFS').value:=0;

          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value;

          cdsdestino.fieldByName('CD_PAISPRESTACAO_NFS').value           :=cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value;

          if QNOrigem.FieldByName('nfelocalserv').AsString='D' then
          cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          else
          cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value;



          if (trim(QNOrigem.FieldByName('nfemuncodigo').AsString)<>'') and (trim(QNOrigem.FieldByName('nfemuncodigo').AsString)<>'0')  then
          begin
           QVerifica.close;
           QVerifica.sql.clear;
           QVerifica.sql.add('SELECT NOME_CID,UF_CID,CD_MUNICIPIO_CID FROM GR_CIDADE WHERE COD_CID='''+ZeraEsquerda(7,QNOrigem.FieldByName('nfemuncodigo').AsString)+'''');
           QVerifica.open;
           if (trim(QVerifica.FieldByName('CD_MUNICIPIO_CID').AsString)<>'') and (trim(QVerifica.FieldByName('CD_MUNICIPIO_CID').AsString)<>'0') then
           cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CD_MUNICIPIO_CID').value
           else
           begin
            nomecid:=retirachar(QVerifica.FieldByName('nome_cid').AsString,'''');
            ufcid:=retirachar(QVerifica.FieldByName('uf_cid').AsString,'''');
            QVerifica.Close;
            QVerifica.sql.Text:='SELECT CD_MUNICIPIO FROM MUNICIPIO WHERE MUNICIPIO LIKE '''+retirachar(nomecid,'''')+''' AND UF='''+ufcid+'''';
            QVerifica.Open;
            if not QVerifica.IsEmpty then
             cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CD_MUNICIPIO').value
           end;
          end;





          if QNOrigem.FieldByName('nfesitntcodigo').AsString='6' then
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value;


          cdsdestino.fieldByName('NRNOTA_NFS').value     :=QNOrigem.fieldByName('nfecodigo').AsString;
          cdsdestino.fieldByName('DATAEMISSAO_NFS').value:=dataemissao;
          cdsdestino.fieldByName('HORAEMISSAO_NFS').value:='00:00:00';
          cdsdestino.fieldByName('TIPONOTA_NFS').value   :=tiponota;


         {
         if trim(QNOrigem.FieldByName('nfeimprps').AsString)<>'' then begin
         cdsdestino.fieldByName('DATAEMISSAORPS_NFS').value:=QNOrigem.fieldByName('nfedataemissao').value;
         cdsdestino.fieldByName('NUMERORPS_NFS').value:=QNOrigem.fieldByName('nfeimprps').value;
         cdsdestino.fieldByName('SERIERPS_NFS').value:=QNOrigem.fieldByName('nfetiporps').value;
         end;
         }






         if (trim(QNOrigem.fieldByName('sitntabrev').AsString)='C') or (trim(QNOrigem.fieldByName('sitntabrev').AsString)='X') or (trim(QNOrigem.fieldByName('sitntabrev').AsString)='Z') then
         cdsdestino.fieldByName('STATUS_NFS').value:='C'
         else
         cdsdestino.fieldByName('STATUS_NFS').value:='N';


         cdsdestino.fieldByName('CODIGOVERIFICACAO_NFS').value:=QNOrigem.FieldByName('nfecodigoverificacao').AsString;
         cdsdestino.fieldByName('CODSEGURANCA_NFS').value:=GeraValidadorNF;;


         cdsdestino.fieldByName('QTDIMPRESSOES_NFS').value:=QNOrigem.FieldByName('nferetlote').AsString;

         if trim(QNOrigem.fieldByname('nferetido').AsString)='S' then
         cdsdestino.fieldByName('IMPOSTORETIDO_NFS').value:='S'
         else
         cdsdestino.fieldByName('IMPOSTORETIDO_NFS').value:='N';

         cdsdestino.fieldByName('RESPONSAVELRETENCAO_NFS').value:='T';
         cdsdestino.fieldByName('ISSQNFORAMUNICIPIO_NFS').value:='N';


         cdsdestino.fieldByName('COD_SNF_NFS').value:=QNOrigem.FieldByName('nfeseriecodigo').Value;

         cdsdestino.fieldByName('COD_ENF_NFS').value:=1;
         auxtexto:=QnOrigem.FieldByName('nfeobsservicos').AsString;

         cdsdestino.fieldByName('OBS_NFS').AsString:=TextFromHTML(auxtexto);


         if QNOrigem.FieldByName('nferetir').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_IRRF_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTAIRRF_NFS').value:=0;
          cdsdestino.fieldByName('VALORIRRF_NFS').value:=QNOrigem.FieldByName('nfeir').AsCurrency;
          cdsdestino.fieldByName('BASECALCULOIRRF_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_IRRF_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTAIRRF_NFS').value:=0;
          cdsdestino.fieldByName('VALORIRRF_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOIRRF_NFS').value:=0;
         end;

         if QNOrigem.FieldByName('nferetinss').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_INSS_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTAINSS_NFS').value:=0;
          cdsdestino.fieldByName('VALORINSS_NFS').value:=QNOrigem.FieldByName('nfeinss').AsCurrency;
          cdsdestino.fieldByName('BASECALCULOINSS_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_INSS_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTAINSS_NFS').value:=0;
          cdsdestino.fieldByName('VALORINSS_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOINSS_NFS').value:=0;
         end;

         if QNOrigem.FieldByName('nferetpis').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_PIS_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTAPIS_NFS').value:=0;
          cdsdestino.fieldByName('VALORPIS_NFS').value:=QNOrigem.FieldByName('nfepis').AsCurrency;;
          cdsdestino.fieldByName('BASECALCULOPIS_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_PIS_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTAPIS_NFS').value:=0;
          cdsdestino.fieldByName('VALORPIS_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOPIS_NFS').value:=0;
         end;


         if QNOrigem.FieldByName('nferetcofins').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_COFINS_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTACOFINS_NFS').value:=0;
          cdsdestino.fieldByName('VALORCOFINS_NFS').value:=QNOrigem.FieldByName('nfecofins').AsCurrency;;
          cdsdestino.fieldByName('BASECALCULOCOFINS_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_COFINS_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTACOFINS_NFS').value:=0;
          cdsdestino.fieldByName('VALORCOFINS_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOCOFINS_NFS').value:=0;
         end;

         if QNOrigem.FieldByName('nferetcsll').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_CSLL_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTACSLL_NFS').value:=0;
          cdsdestino.fieldByName('VALORCSLL_NFS').value:=QNOrigem.FieldByName('nfecsll').AsCurrency;;;
          cdsdestino.fieldByName('BASECALCULOCSLL_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;;;
         end
         else
         begin
          cdsdestino.fieldByName('INCIDE_CSLL_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTACSLL_NFS').value:=0;
          cdsdestino.fieldByName('VALORCSLL_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOCSLL_NFS').value:=0;
         end;

        cdsdestino.fieldByName('OUTRASRETENCOES_NFS').value:=QNOrigem.fieldByName('nfeoutrostributos').AsCurrency;



        QVerifica.Close;
        QVerifica.SQL.Clear;
        QVerifica.SQL.Add('select * from LI_CNAE where COD_EMP_CNA=1 and COD_CNA='''+copy(QNOrigem.fieldByName('nfeativcodigo').AsString,4,7)+'''');
        QVerifica.Open;
        if not QVerifica.IsEmpty then
        cdsdestino.fieldByName('COD_CNA_NFS').value:=copy(QNOrigem.fieldByName('nfeativcodigo').AsString,4,7);




      cdsdestino.ApplyUpdates(-1);


      if (cdsdestino.fieldByName('STATUS_NFS').AsString='C') then begin

         if Trim(QNOrigem.FieldByName('nfedatacancelamento').AsString)<>'' then
         datacancelamento:=QNOrigem.FieldByName('nfedatacancelamento').AsString
         else
         datacancelamento:=dataemissao;

         auxtexto:=QNOrigem.FieldByName('nfeobscancelamento').AsString;

       NotasCanceladas(1,
                       cdsdestino.fieldByName('COD_NFS').value,
                       StrToDate(datacancelamento),
                       TextFromHTML(auxtexto),
                       NULL,
                       0,
                       '@ISS',
                       strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                       '@ISS',
                       strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao)))
                       );
      end;


      QNItens.Close;
      QNItens.SQL.Clear;
      QNItens.SQL.Add('select entity2char(TO_ASCII(servdescricao,''LATIN1'')) as servdescricao,servcodigo,nfeservqtde,nfeservvalorunit,nfeservdesconto  from notafiscaleletronicaservicos where nfemobcodigo='+QNOrigem.FieldByName('nfemobcodigo').AsString+' and nfecodigo='+QNOrigem.FieldByName('nfecodigo').AsString);
      QNItens.Open;
      item:=0;
      while not QNItens.Eof do begin


          inc(item);
          descricao:=QNItens.fieldByName('servdescricao').AsString;
          descricao:=TextFromHTML(descricao);

          if QNOrigem.fieldByName('nfealiquota').AsCurrency<>0 then
          aliquota:=QNOrigem.fieldByName('nfealiquota').AsCurrency
          else
          if (trim(QNOrigem.fieldByName('nfealiquotassimp').AsString)<>'') and (trim(QNOrigem.fieldByName('nfealiquotassimp').AsString)<>'0.00') and
             (trim(QNOrigem.fieldByName('nfealiquotassimp').AsString)<>'0') and (trim(QNOrigem.fieldByName('nfealiquotassimp').AsString)<>'0,00') then
          aliquota:=StrToCurr(subs_ponto_por_virgula(QNOrigem.fieldByName('nfealiquotassimp').AsString))
          else
          aliquota:=QNOrigem.fieldByName('nfeativaliquota').AsCurrency;



            QVerifica.close;
            QVerifica.sql.clear;
            QVerifica.sql.add('SELECT * FROM LI_ATIVDESDO '+
                             ' WHERE COD_EMP_ATD=1 AND CODLEI_ATD='''+ZeraEsquerda(5,QNOrigem.fieldByName('nfeativcodigo').AsString)+''' '
                             );
            QVerifica.Open;
            if not QVerifica.IsEmpty then begin
             codatv:=QVerifica.fieldByName('COD_ATV_ATD').value;
             codatd:=QVerifica.fieldByName('COD_ATD').value;
            end
            else
            begin
             codatv:='999999';
             codatd:='0000001';
            end;





        cdsItens.append;
        cdsItens.fieldByName('COD_EMP_NFI').value           :=1;
        cdsItens.fieldByName('COD_NFS_NFI').value           :=cdsdestino.fieldByName('COD_NFS').value;
        cdsItens.fieldByName('ITEM_NFI').value              :=QNItens.FieldByName('servcodigo').AsInteger;
        cdsItens.fieldByName('DESCRI_NFI').value            :=descricao;
        cdsItens.fieldByName('QUANTIDADE_NFI').value        :=QNItens.fieldByName('nfeservqtde').AsCurrency;
        cdsItens.fieldByName('MEDIDA_NFI').value            :='UN';

        cdsItens.fieldByName('VLR_UNITARIO_NFI').value      :=QNItens.fieldByName('nfeservvalorunit').AsCurrency;

        cdsItens.fieldByName('VALOR_NFI').value             :=QNItens.fieldByName('nfeservvalorunit').AsCurrency * QNItens.fieldByName('nfeservqtde').AsCurrency;

        cdsItens.fieldByName('ALIQUOTA_NFI').value          :=aliquota;

        cdsItens.fieldByName('DESCCONDICIONAL_NFI').value  :=QNItens.fieldByName('nfeservdesconto').AsCurrency;
        cdsItens.fieldByName('DESCINCONDICIONAL_NFI').value:=0;
        cdsItens.fieldByName('DEDUCAOBASE_NFI').value      :=0;

        cdsItens.fieldByName('VALORINCENTIVO_NFI').value      :=0;

        if trim(codatv)<>'' then begin
        cdsItens.fieldByName('COD_ATV_NFI').value           :=codatv;
        cdsItens.fieldByName('COD_ATD_NFI').value           :=codatd;
        end;
        cdsItens.fieldByName('LOGIN_INC_NFI').value         :='@ISS';
        cdsItens.fieldByName('DTA_INC_NFI').value           :=dataemissao;
        cdsItens.ApplyUpdates(-1);

      QNItens.Next;
      end;


        if trim(QNOrigem.FieldByName('nferetlote').AsString)<>'' then begin

         QPagamentos.close;
         QPagamentos.sql.clear;
         QPagamentos.sql.add('select a.PAR_N_SEQ,coalesce(b.PAR_S_NUM,1) as PAR_S_NUM,coalesce(b.PAR_I_SUB,0) as PAR_I_SUB '+
                             'from ASP02_ENCWEB a '+
                             'inner join ASP02_ENCWEB_NOTAS b on a.ENC_I_COD=b.ENC_I_COD '+
                             'where a.ENC_I_COD='+QNOrigem.FieldByName('nferetlote').AsString+' ROWS 1 '
                             );

         QPagamentos.open;
         if not QPagamentos.IsEmpty then begin

         QVerifica.Close;
         QVerifica.SQL.Clear;
         QVerifica.SQL.Add('select cod_div_par,parcela_par,tp_par from fi_parcela '+
         ' where cod_emp_par=1 and cod_div_par='+QPagamentos.fieldByName('PAR_N_SEQ').AsString+
         ' and parcela_par='+QPagamentos.fieldByName('PAR_S_NUM').AsString+
         ' and tp_par='+QPagamentos.fieldByName('PAR_I_SUB').AsString
         );
         QVerifica.Open;
         codguia:=GuiasNota(1,

                            cdsDestino.fieldByName('COD_MOD_NFS').value,
                            cdsDestino.fieldByName('CADASTRO_NFS').value,
                            cdsDestino.fieldByName('COD_CNT_NFS').value,
                            StrToDate(dataemissao),
                            'N',
                            QVerifica.fieldByName('cod_div_par').Value, // coddiv
                            QVerifica.fieldByName('parcela_par').Value,//PARCELA_PAR_GIS,
                            QVerifica.fieldByName('tp_par').Value,//TP_PAR_GIS,
                            null,
                            'N',
                            NULL,
                            'N',
                            '@ISS',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            '@ISS',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            QNOrigem.FieldByName('nferetlote').AsString
                           );


         ItensGuias(1,
                    codguia,
                    cdsdestino.fieldByName('COD_NFS').value,
                    '@ISS',
                    strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                    '@ISS',
                    strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao)))
                    );
         end;
        end;


     end;// encontrou no li_mobil

  if  ncommit=1000 then begin


   cdsItens.close;
   sqlItens.CommandText:='SELECT * FROM LI_NOTAFISCAL_ITENS WHERE COD_EMP_NFI=1 AND COD_NFS_NFI=-1';
   cdsItens.open;
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_NFS IS NULL ';
   cdsdestino.open;


   Conexao.Commit(TD);
   ncommit:=0;
   if not Conexao.InTransaction then Conexao.StartTransaction(TD);


   application.ProcessMessages;
  end;


  QNOrigem.Next
  end;

  Conexao.Commit(TD);

end;


procedure TFPrincipal.Escrituracao;
var cont,Erros,ncommit,item,codnfs:Integer;
cod_cntp,cadastro,modulo,codtom,codatv,codatd,descricao,codmovim,codguia,
dataemissao,cnpjtom,ORIGEM_MEC,TIPONOTA,fechado,cnpj,rgtom,datacancelamento,auxtexto:String;
aliquota:Variant;
begin


  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('DELETE FROM LI_GUIASISS WHERE COD_EMP_GIS=1 AND ORIGEM_GIS=''N'' AND  LOGIN_INC_GIS=''@EISS''');
  //QVerifica.EXECSQL;

  QVerifica.close;
  QVerifica.sql.Text:='DELETE FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND TIPONOTA_NFS IN (''T'',''P'') AND LOGIN_INC_NFS=''@EISS'' ';
 // QVerifica.execsql;

  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('DELETE FROM LI_MOVIMENTOECO WHERE COD_EMP_MEC=1 AND ORIGEM_MEC IN (''DECTC'',''DECPC'') AND LOGIN_INC_MEC=''@EISS'' ');
//  QVerifica.EXECSQL;

  QNOrigem.close;
  QNOrigem.sql.clear;
  QNOrigem.sql.add('select a.retcodigo,b.retlancamento,b.retmescomp,b.retanocomp,nullif(b.retdataencerra, ''0001-01-01'') as retdataencerra,b.retparlancamento,'+
                   ' b.retparnum,b.retparsubnum,b.retconcodigo,b.retmobcodigo,b.retencerrado,b.retconcpfcnpj,a.notcpfcnpj,a.notmobcodigo,a.notconcodigo, '+
                   ' b.rettipo,a.retlote,a.notseq,a.notnumeroinicial,a.notintervalo,a.ativcodigo,a.serientcodigo,a.sitntcodigo,a.notgeravalor,a.notaliquota,a.notnumero,nullif(a.notdata, ''0001-01-01'') as notdata ,a.notbasecalc,a.notretido,a.notlocalserv, '+
                   ' a.notvalor,a.notdeducao,a.notimposto,entity2char(TO_ASCII(a.notobs, ''LATIN1'')) as notobs,a.notaliquotassimp,a.notconmuncod,a.notstatus,a.notimpostodas,a.notbasecalcdas,a.notativretido,a.notativgeraprestdentro, '+
                   ' a.notativgeraprestfora,a.notativgeratomdentro,a.notativgeratomfora,a.notimpdevido,a.notimpostobruto,a.notmuncodigo,a.notativretidofora,entity2char(TO_ASCII(a.notobscancelado, ''LATIN1'')) as notobscancelado,d.sitntabrev '+
                   ' from retencaonotas a '+
                   ' inner join retencao b on  a.retlote=b.retlote '+
                   ' left join sitnotas d on d.sitntcodigo=a.sitntcodigo '+
                   ' inner join serienotas e on e.serientcodigo=a.serientcodigo '+
                   ' where ((b.rettipo=''P'' and e.serientabrev<>''N'') or (b.rettipo=''T'')) '+
                   ' order by a.retcodigo'

                   );
  QNOrigem.open;




  cont:=1;


   cdsItens.close;
   sqlItens.CommandText:='SELECT * FROM LI_NOTAFISCAL_ITENS WHERE COD_EMP_NFI=1 AND COD_NFS_NFI=-1';
   cdsItens.open;
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_NFS IS NULL ';
   cdsdestino.open;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);


  ncommit:=0;
  while not QNOrigem.Eof do
  begin



     inc(ncommit);
     ProgressBar1.position:=cont;



     lbitem.caption:=inttostr(cont);
     lbitem.update;

     lbchave.caption:=QNOrigem.fieldByName('retcodigo').AsString;
     lbchave.update;


     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add(' SELECT COD_MBL AS CADASTRO,COD_CNT_MBL AS CODCNT FROM LI_MOBIL '+
                         ' INNER JOIN GR_CONTRIBUINTES ON COD_EMP_CNT=COD_EMP_MBL AND COD_CNT=COD_CNT_MBL '+
                         ' WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QNOrigem.fieldByname('retmobcodigo').AsString)+'''  '
                        );
     QVerifica.open;
     if not QVerifica.IsEmpty then
     begin
       modulo:='2';
     end
     else
     begin
       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add(' SELECT COD_CNT AS CADASTRO,COD_CNT AS CODCNT FROM GR_CONTRIBUINTES '+
                         ' WHERE COD_EMP_CNT=1 AND COD_CNT='''+ZeraEsquerda(9,QNOrigem.fieldByname('retconcodigo').AsString)+'''  '
                          );
       QVerifica.open;
       modulo:='5';
     end;



     if not QVerifica.IsEmpty then begin


          cont:=cont+1;

          QGenerator.close;
          QGenerator.sql.text:='SELECT GEN_ID(GEN_LI_NOTAFISCAL,1) as cod FROM RDB$DATABASE ';
          QGenerator.open;
          codnfs:=QGenerator.FieldByName('cod').AsInteger;

          cdsdestino.append;
          cdsdestino.fieldByName('COD_EMP_NFS').value   :=1;
          cdsdestino.fieldByName('COD_NFS').value       :=codnfs;
          cdsdestino.fieldByName('COD_MOD_NFS').value   :=modulo;
          cdsdestino.fieldByName('CADASTRO_NFS').value  :=QVerifica.fieldByName('CADASTRO').value;
          cdsdestino.fieldByName('COD_CNT_NFS').value   :=QVerifica.fieldByName('CODCNT').value;

          //select sitntabrev from sitnotas

          cdsdestino.fieldByName('INCENTIVOFISCAL_NFS').value       :='N';
          cdsdestino.fieldByName('OPTANTESIMPLES_NFS').value        :='N';
          cdsdestino.fieldByName('LOGIN_INC_NFS').AsString:='@EISS';

          if trim(QNOrigem.fieldByName('notdata').AsString)='' then
          dataemissao:='01/'+ZeraEsquerda(2,QNOrigem.FieldByName('retmescomp').AsString)+'/'+QNOrigem.FieldByName('retanocomp').AsString
          else
          dataemissao:=copy(QNOrigem.fieldByName('notdata').AsString,1,10);


          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='I' then
          cdsdestino.fieldByName('EXIGIBILIDADEISS_NFS').value      :='Isento'
          else
          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='D' then
          cdsdestino.fieldByName('EXIGIBILIDADEISS_NFS').value      :='N�o Incid�ncia'
          else
          cdsdestino.fieldByName('EXIGIBILIDADEISS_NFS').value      :='Exig�vel';

          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='N�o Possui';


         if trim(QNOrigem.fieldByName('sitntabrev').AsString)='S' then
         begin
            cdsdestino.fieldByName('OPTANTESIMPLES_NFS').AsString:='S';
            cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempres�rio e Empresa de Pequeno Porte (ME EPP)';
         end
         else
         if trim(QNOrigem.fieldByName('sitntabrev').AsString)='F' then
         begin
            cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Estimativa';
            cdsdestino.fieldByName('TIPOISS_NFS').value      :='04 - Fixo'
         end
         else
         if trim(QNOrigem.fieldByName('sitntabrev').AsString)='T' then
         begin
            cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Estimativa';
            cdsdestino.fieldByName('TIPOISS_NFS').value      :='02 - Estimativa'
         end
         else
         if trim(QNOrigem.fieldByName('sitntabrev').AsString)='M' then
         begin
            cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='Microempres�rio Individual (MEI)';
            cdsdestino.fieldByName('TIPOISS_NFS').value      :='04 - Fixo';
            cdsdestino.fieldByName('OPTANTESIMPLES_NFS').AsString:='S';
         end;






          if QNOrigem.FieldByName('rettipo').AsString='T' then
          begin
           origem_mec:='DECTC';
           tiponota:='T';
          end
          else
          begin
           origem_mec:='DECPC';
           tiponota:='P';
          end;

          fechado:='S';




          codmovim:=movimento(1,
                              MODULO,//COD_MOD_MEC
                              cdsdestino.fieldByName('CADASTRO_NFS').AsString,//CADASTRO_MEC,
                              cdsdestino.fieldByName('COD_CNT_NFS').value,//COD_CNT_MEC
                              StrToDate(dataemissao),//DATALANCA_MEC,
                              tiponota,//TP_MEC,
                              QNOrigem.FieldByName('retmescomp').AsString,//MES_MEC,
                              QNOrigem.FieldByName('retanocomp').AsString,//ANO_MEC,
                              origem_mec,//ORIGEM_MEC
                              '01 - Normal',//TIPOESCRITURA_MEC
                              fechado,//FECHADO_MEC
                              StrToDate(dataemissao),//DATAFECHADO_MEC,
                              '@EISS',//LOGIN_INC_MEC,
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              '@EISS',
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              0
                              );




          cdsdestino.fieldByName('COD_MEC_NFS').value   :=codmovim;

          cdsdestino.fieldByName('VALORISS_NFS').AsCurrency:=QNOrigem.fieldByName('notimposto').AsCurrency;

          QAuxiliar.Close;
          QAuxiliar.SQL.Clear;
          QAuxiliar.SQL.Add('SELECT * FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1 AND COD_CNT='''+ZeraEsquerda(9,QNOrigem.fieldByName('notconcodigo').AsString)+'''');
          QAuxiliar.Open;
          cdsdestino.fieldByName('NOME_RAZAOSOCIAL_NFS').value:=QAuxiliar.fieldByName('NOME_CNT').value;
          cdsdestino.fieldByName('NOME_FANTASIA_NFS').value:=QAuxiliar.fieldByName('NOME_CNT').value;
          cdsdestino.fieldByName('LOGRADOURO_NFS').value:=QAuxiliar.fieldByName('NOM_LOG_CNT').value;
          cdsdestino.fieldByName('NUMERO_NFS').value:=QAuxiliar.fieldByName('NUMERO_CNT').value;
          cdsdestino.fieldByName('COMPLEMENTO_NFS').value:=QAuxiliar.fieldByName('COMPLE_CNT').value;
          cdsdestino.fieldByName('BAIRRO_NFS').value:=QAuxiliar.fieldByName('NOM_BAI_CNT').value;
          cdsdestino.fieldByName('TOMADORFORAPAIS_NFS').value            :='N';
          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value:=QVerifica.fieldByName('COD_BCE_EMP').value;


          QVerifica.Close;
          QVerifica.sql.Text:='SELECT CD_MUNICIPIO_CID FROM GR_CIDADE WHERE cod_cid='''+ZeraEsquerda(7,QAuxiliar.fieldByName('COD_CID_CNT').AsString)+''' ';
          QVerifica.Open;
          if QVerifica.fieldByName('CD_MUNICIPIO_CID').AsString<>'' then
           cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QVerifica.fieldByName('CD_MUNICIPIO_CID').value
          else
          begin
           QVerifica.close;
           QVerifica.sql.clear;
           QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
           QVerifica.open;
           cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          end;


          cdsdestino.fieldByName('CEP_NFS').value                :=QAuxiliar.fieldByName('CEP_CNT').value;
          cdsdestino.fieldByName('CPF_CNPJ_NFS').value           :=QAuxiliar.fieldByName('CNPJ_CNT').value;
          cdsdestino.fieldByName('RG_INSCRE_NFS').value          :=QAuxiliar.fieldByName('RG_CNT').value;
          cdsdestino.fieldByName('EMAIL_NFS').value              :=QAuxiliar.fieldByName('EMAIL_CNT').value;
          cdsdestino.fieldByName('FONE_NFS').value               :=QAuxiliar.fieldByName('FONE_CNT').value;
          cdsdestino.fieldByName('FAX_NFS').value                :=QAuxiliar.fieldByName('FAX_CNT').value;
          cdsdestino.fieldByName('INSCRM_NFS').value             :='';

          cdsdestino.fieldByName('EXPEDIENTE_NFS').value:='N';
          cdsdestino.fieldByName('VALOREXPED_NFS').value:=0;



          QVerifica.Close;
          QVerifica.sql.Text:='SELECT CD_MUNICIPIO_CID FROM GR_CIDADE WHERE cod_cid='''+ZeraEsquerda(7,QNOrigem.fieldByName('notmuncodigo').AsString)+''' ';
          QVerifica.Open;
          if QVerifica.fieldByName('CD_MUNICIPIO_CID').AsString<>'' then
          cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CD_MUNICIPIO_CID').value
          else
          begin
           QVerifica.close;
           QVerifica.sql.clear;
           QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
           QVerifica.open;
           cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          end;



          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value;

          cdsdestino.fieldByName('CD_PAISPRESTACAO_NFS').value           :=cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value;

          if QNOrigem.FieldByName('notlocalserv').AsString='D' then
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          else
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value;

          if trim(QNOrigem.fieldByName('sitntabrev').AsString)='E' then
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value;

          try
          cdsdestino.fieldByName('NRNOTA_NFS').value     :=QNOrigem.fieldByName('notnumero').value;
          except
          cdsdestino.fieldByName('NRNOTA_NFS').value     :=0;
          end;
          cdsdestino.fieldByName('DATAEMISSAO_NFS').value:=dataemissao;
          cdsdestino.fieldByName('HORAEMISSAO_NFS').value:='00:00:00';
          cdsdestino.fieldByName('TIPONOTA_NFS').value   :=tiponota;


         {
         if trim(QNOrigem.FieldByName('nfeimprps').AsString)<>'' then begin
         cdsdestino.fieldByName('DATAEMISSAORPS_NFS').value:=QNOrigem.fieldByName('nfedataemissao').value;
         cdsdestino.fieldByName('NUMERORPS_NFS').value:=QNOrigem.fieldByName('nfeimprps').value;
         cdsdestino.fieldByName('SERIERPS_NFS').value:=QNOrigem.fieldByName('nfetiporps').value;
         end;
         }


         if (trim(QNOrigem.fieldByName('sitntabrev').AsString)='C') then
         cdsdestino.fieldByName('STATUS_NFS').value:='C'
         else
         if (trim(QNOrigem.fieldByName('sitntabrev').AsString)='X') then
         cdsdestino.fieldByName('STATUS_NFS').value:='C'
         else
         if (trim(QNOrigem.fieldByName('sitntabrev').AsString)='Z') then
         cdsdestino.fieldByName('STATUS_NFS').value:='E'
         else
         cdsdestino.fieldByName('STATUS_NFS').value:='N';


         cdsdestino.fieldByName('CODSEGURANCA_NFS').value:=GeraValidadorNF;;


         cdsdestino.fieldByName('QTDIMPRESSOES_NFS').value:=QNOrigem.FieldByName('retcodigo').AsString;

         if (trim(QNOrigem.fieldByname('notretido').AsString)='S') then
         cdsdestino.fieldByName('IMPOSTORETIDO_NFS').value:='N'
          else
         cdsdestino.fieldByName('IMPOSTORETIDO_NFS').value:='S';

         cdsdestino.fieldByName('RESPONSAVELRETENCAO_NFS').value:='T';
         cdsdestino.fieldByName('ISSQNFORAMUNICIPIO_NFS').value:='N';


         cdsdestino.fieldByName('COD_SNF_NFS').value:=QNOrigem.FieldByName('serientcodigo').Value;

         cdsdestino.fieldByName('COD_ENF_NFS').value:=1;
         auxtexto:=QnOrigem.FieldByName('notobs').AsString;

         cdsdestino.fieldByName('OBS_NFS').value:=TextFromHTML(auxtexto);


         cdsdestino.fieldByName('INCIDE_IRRF_NFS').value:='N';
         cdsdestino.fieldByName('ALIQUOTAIRRF_NFS').value:=0;
         cdsdestino.fieldByName('VALORIRRF_NFS').value:=0;
         cdsdestino.fieldByName('BASECALCULOIRRF_NFS').value:=0;
         cdsdestino.fieldByName('INCIDE_INSS_NFS').value:='N';
         cdsdestino.fieldByName('ALIQUOTAINSS_NFS').value:=0;
         cdsdestino.fieldByName('VALORINSS_NFS').value:=0;
         cdsdestino.fieldByName('BASECALCULOINSS_NFS').value:=0;
         cdsdestino.fieldByName('INCIDE_PIS_NFS').value:='N';
         cdsdestino.fieldByName('ALIQUOTAPIS_NFS').value:=0;
         cdsdestino.fieldByName('VALORPIS_NFS').value:=0;
         cdsdestino.fieldByName('BASECALCULOPIS_NFS').value:=0;
         cdsdestino.fieldByName('INCIDE_COFINS_NFS').value:='N';
         cdsdestino.fieldByName('ALIQUOTACOFINS_NFS').value:=0;
         cdsdestino.fieldByName('VALORCOFINS_NFS').value:=0;
         cdsdestino.fieldByName('BASECALCULOCOFINS_NFS').value:=0;
         cdsdestino.fieldByName('INCIDE_CSLL_NFS').value:='N';
         cdsdestino.fieldByName('ALIQUOTACSLL_NFS').value:=0;
         cdsdestino.fieldByName('VALORCSLL_NFS').value:=0;
         cdsdestino.fieldByName('BASECALCULOCSLL_NFS').value:=0;


        cdsdestino.fieldByName('OUTRASRETENCOES_NFS').value:=0;



        QVerifica.Close;
        QVerifica.SQL.Clear;
        QVerifica.SQL.Add('select * from LI_CNAE where COD_EMP_CNA=1 and COD_CNA='''+copy(QNOrigem.fieldByName('ativcodigo').AsString,4,7)+'''');
        QVerifica.Open;
        if not QVerifica.IsEmpty then
        cdsdestino.fieldByName('COD_CNA_NFS').value:=copy(QNOrigem.fieldByName('ativcodigo').AsString,4,7);




      cdsdestino.ApplyUpdates(-1);


      if (cdsdestino.fieldByName('STATUS_NFS').AsString='C') then begin

       datacancelamento:=dataemissao;
       auxtexto:=QNOrigem.FieldByName('notobscancelado').AsString;

       NotasCanceladas(1,
                       cdsdestino.fieldByName('COD_NFS').value,
                       StrToDate(datacancelamento),
                       TextFromHTML(auxtexto),
                       NULL,
                       0,
                       '@EISS',
                       strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                       '@EISS',
                       strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao)))
                       );
      end;



      item:=0;



          inc(item);
          descricao:=QNOrigem.fieldByName('notobs').AsString;
          descricao:=TextFromHTML(descricao);

          if QNOrigem.fieldByName('notaliquota').AsCurrency<>0 then
          aliquota:=QNOrigem.fieldByName('notaliquota').AsCurrency
          else
          if (trim(QNOrigem.fieldByName('notaliquotassimp').AsString)<>'') and (trim(QNOrigem.fieldByName('notaliquotassimp').AsString)<>'0.00') and
             (trim(QNOrigem.fieldByName('notaliquotassimp').AsString)<>'0') and (trim(QNOrigem.fieldByName('notaliquotassimp').AsString)<>'0,00') then
          aliquota:=StrToCurr(subs_ponto_por_virgula(QNOrigem.fieldByName('notaliquotassimp').AsString))
          else
          aliquota:=QNOrigem.fieldByName('notaliquota').AsCurrency;



            QVerifica.close;
            QVerifica.sql.clear;
            QVerifica.sql.add('SELECT * FROM LI_ATIVDESDO '+
                             ' WHERE COD_EMP_ATD=1 AND CODLEI_ATD='''+ZeraEsquerda(5,QNOrigem.fieldByName('ativcodigo').AsString)+''' '
                             );
            QVerifica.Open;
            if not QVerifica.IsEmpty then begin
             codatv:=QVerifica.fieldByName('COD_ATV_ATD').value;
             codatd:=QVerifica.fieldByName('COD_ATD').value;
            end
            else
            begin
             codatv:='999999';
             codatd:='0000001';
            end;





        cdsItens.append;
        cdsItens.fieldByName('COD_EMP_NFI').value           :=1;
        cdsItens.fieldByName('COD_NFS_NFI').value           :=cdsdestino.fieldByName('COD_NFS').value;
        cdsItens.fieldByName('ITEM_NFI').value              :=item;
        cdsItens.fieldByName('DESCRI_NFI').value            :=descricao;
        cdsItens.fieldByName('QUANTIDADE_NFI').value        :=1;
        cdsItens.fieldByName('MEDIDA_NFI').value            :='UN';
        cdsItens.fieldByName('VLR_UNITARIO_NFI').value      :=QNOrigem.fieldByName('notvalor').AsCurrency;
        cdsItens.fieldByName('VALOR_NFI').value             :=QNOrigem.fieldByName('notvalor').AsCurrency;
        cdsItens.fieldByName('ALIQUOTA_NFI').value          :=aliquota;
        cdsItens.fieldByName('DESCCONDICIONAL_NFI').value  :=QNOrigem.fieldByName('notdeducao').AsCurrency;
        cdsItens.fieldByName('DESCINCONDICIONAL_NFI').value:=0;
        cdsItens.fieldByName('DEDUCAOBASE_NFI').value      :=0;
        cdsItens.fieldByName('VALORINCENTIVO_NFI').value      :=0;

        if trim(codatv)<>'' then begin
        cdsItens.fieldByName('COD_ATV_NFI').value           :=codatv;
        cdsItens.fieldByName('COD_ATD_NFI').value           :=codatd;
        end;
        cdsItens.fieldByName('LOGIN_INC_NFI').value         :='@EISS';
        cdsItens.fieldByName('DTA_INC_NFI').value           :=dataemissao;
        cdsItens.ApplyUpdates(-1);



        if trim(QNOrigem.FieldByName('retlote').AsString)<>'' then begin

         QPagamentos.close;
         QPagamentos.sql.clear;
         QPagamentos.sql.add('select coalesce(a.PAR_N_SEQ,0) as PAR_N_SEQ,coalesce(b.PAR_S_NUM,1) as PAR_S_NUM,coalesce(b.PAR_I_SUB,0) as PAR_I_SUB '+
                             'from ASP02_ENCWEB a '+
                             'inner join ASP02_ENCWEB_NOTAS b on a.ENC_I_COD=b.ENC_I_COD '+
                             'where a.ENC_I_COD='+QNOrigem.FieldByName('retlote').AsString+' ROWS 1 '
                             );

         QPagamentos.open;
         if not QPagamentos.IsEmpty then begin

         QVerifica.Close;
         QVerifica.SQL.Clear;
         QVerifica.SQL.Add('select cod_div_par,parcela_par,tp_par from fi_parcela '+
         ' where cod_emp_par=1 and cod_div_par='+QPagamentos.fieldByName('PAR_N_SEQ').AsString+
         ' and parcela_par='+QPagamentos.fieldByName('PAR_S_NUM').AsString+
         ' and tp_par='+QPagamentos.fieldByName('PAR_I_SUB').AsString
         );
         QVerifica.Open;
         codguia:=GuiasNota(1,

                            cdsDestino.fieldByName('COD_MOD_NFS').value,
                            cdsDestino.fieldByName('CADASTRO_NFS').value,
                            cdsDestino.fieldByName('COD_CNT_NFS').value,
                            StrToDate(dataemissao),
                            'N',
                            QVerifica.fieldByName('cod_div_par').Value, // coddiv
                            QVerifica.fieldByName('parcela_par').Value,//PARCELA_PAR_GIS,
                            QVerifica.fieldByName('tp_par').Value,//TP_PAR_GIS,
                            null,
                            'N',
                            NULL,
                            tiponota,
                            '@EISS',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            '@EISS',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            QNOrigem.FieldByName('retlote').AsString
                           );


         ItensGuias(1,
                    codguia,
                    cdsdestino.fieldByName('COD_NFS').value,
                    '@EISS',
                    strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                    '@EISS',
                    strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao)))
                    );
         end;
        end;


     end;// encontrou no li_mobil

  if  ncommit=1000 then begin
   cdsItens.close;
   sqlItens.CommandText:='SELECT * FROM LI_NOTAFISCAL_ITENS WHERE COD_EMP_NFI=1 AND COD_NFS_NFI=-1';
   cdsItens.open;
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_NFS IS NULL ';
   cdsdestino.open;


   Conexao.Commit(TD);
   ncommit:=0;
   if not Conexao.InTransaction then Conexao.StartTransaction(TD);

   application.ProcessMessages;
  end;


  QNOrigem.Next
  end;

  Conexao.Commit(TD);

end;

procedure TFPrincipal.Cidades;
var item: Integer;
begin

    lbFuncao.Caption:='Cidades';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * '+
                     'from CNTI_MUNICIPIOS ');
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;

        ProgressBar1.position:=item;


        cdsdestino.close;
        sqlDestino.commandText:='select * from GR_CIDADE where COD_CID='''+ZeraEsquerda(7,QOrigem.fieldByName('CNTI_I_IBGE').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_CID').AsString  :=ZeraEsquerda(7,QOrigem.fieldByname('CNTI_I_IBGE').AsString);
        cdsdestino.fieldByName('NOME_CID').AsString :=TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_MUN').AsString);
        cdsdestino.fieldByName('UF_CID').AsString   :=trim(uppercase(QOrigem.fieldByname('CNTI_A_UF').AsString));
        QVerifica.Close;
        QVerifica.SQL.Clear;
        QVerifica.sql.Add('SELECT * FROM MUNICIPIO WHERE CD_MUNICIPIO='''+ZeraEsquerda(7,QOrigem.fieldByname('CNTI_A_CODIBGE').AsString)+'''');
        QVerifica.open;
        cdsdestino.fieldByName('CD_MUNICIPIO_CID').value:=QVerifica.FieldByName('CD_MUNICIPIO').Value;
        cdsdestino.fieldByName('LOGIN_INC_CID').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_CID').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);

end;

procedure TFPrincipal.Bairros;
var item: Integer;
begin
    lbFuncao.Caption:='Bairros';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * '+
                    'from TRIBAI '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM GR_BAIRRO WHERE COD_EMP_BAI=1 AND COD_BAI='+trim(QOrigem.fieldByName('BAI_I_COD').AsString);
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_BAI').AsInteger  :=1;
        cdsdestino.fieldByName('COD_BAI').AsInteger      :=QOrigem.fieldByname('BAI_I_COD').AsInteger;
        cdsdestino.fieldByName('NOME_BAI').AsString      :=TrocaAspasSimples(QOrigem.fieldByname('BAI_A_NOM').AsString);
        cdsdestino.fieldByName('LOGIN_INC_BAI').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_BAI').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;


function TFPrincipal.RetornaEstCivil(codigo : String) : String;
begin
  Result := '';
  if codigo = '1' then Result := 'SOLTEIRO';
  if codigo = '2' then Result := 'CASADO';
  if codigo = '3' then Result := 'DIVORCIADO';
  if codigo = '4' then Result := 'VIUVO';
  if codigo = '5' then Result := 'CONCUBINATO';
  if codigo = '6' then Result := 'DESQUITADO';
  if codigo = '7' then Result := 'UNIAO ESTAVEL';
end;

procedure TFPrincipal.TipoLogradouro;
var item: Integer;
begin
    lbFuncao.Caption:='TipoLogradouro';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT TP.PRE_I_COD, '+
                    'TP.PRE_A_DES, '+
                    'CASE '+
                    'WHEN TP.PRE_A_RES IS NULL THEN SUBSTRING(TRIM(TP.PRE_A_DES) FROM 1 FOR 3) '+
                    ' ELSE TP.PRE_A_RES '+
                    'END ABRE '+
                    'FROM ASP02_PREFIXOS TP '
                    );
    QOrigem.Open;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM CEP_TIPOLOGIA WHERE COD_TIP_CEP='+trim(QOrigem.fieldByName('PRE_I_COD').AsString);
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_TIP_CEP').AsInteger    :=QOrigem.fieldByname('PRE_I_COD').AsInteger;
        cdsdestino.fieldByName('NOM_TIP_CEP').AsString     :=trim(QOrigem.fieldByname('PRE_A_DES').AsString);
        cdsdestino.fieldByName('ABRE_TIP_CEP').AsString    :=QOrigem.fieldByName('ABRE').AsString;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.Logradouros;
var item: Integer;
begin
    lbFuncao.Caption:='Logradouros';
    lbFuncao.update;



    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * from ASP02_LOGRADOURO ' );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin

        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM GR_LOGRA WHERE COD_EMP_LOG=1 AND COD_LOG='+trim(QOrigem.fieldByName('LOG_I_COD').AsString);
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_LOG').AsInteger  :=1;
        cdsdestino.fieldByName('COD_LOG').AsInteger      :=QOrigem.fieldByname('LOG_I_COD').AsInteger;
        cdsdestino.fieldByName('NOME_LOG').AsString      :=TrocaAspasSimples(QOrigem.fieldByname('LOG_A_NOM').AsString);
        cdsdestino.fieldByName('NOME_ANT_LOG').AsString  :=TrocaAspasSimples(QOrigem.fieldByname('LOG_A_NOA').AsString);
        cdsdestino.fieldByName('COD_TPL_LOG').value      :=QOrigem.fieldByname('PRE_I_COD').value;
        cdsdestino.fieldByName('LOGIN_INC_LOG').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_LOG').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.Feriados;
var item: Integer;
begin

    lbFuncao.Caption:='Feriados';
    lbFuncao.update;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * '+
                    'from TRIFER '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM GR_FERIADOS WHERE COD_EMP_FER=1 AND DIA_FER='''+InverteData(QOrigem.fieldByName('FER_D_DAT').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_FER').AsInteger  :=1;
        cdsdestino.fieldByName('DIA_FER').value         :=QOrigem.fieldByname('FER_D_DAT').value;
        cdsdestino.fieldByName('DESCRI_FER').AsString    :=trim(QOrigem.fieldByname('FER_A_DES').AsString);
        cdsdestino.fieldByName('LOGIN_INC_FER').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_FER').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



function TFPrincipal.VerificaNomeLogradouro(nomelog:String;var tipoLog :String;var codtipolog : String): String;
var qrx : TSQLQuery;
    codlog:String;
    Tipo,Logra,Numero,Complemento: Variant;
begin
  nomelog:=TrocaAspasSimples(nomelog);
  nomelog:=retirachar(nomelog,'"');

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.close;
  qrx.SQLConnection := Conexao;
  qrx.SQL.Text := ' SELECT COD_LOG,COD_TPL_LOG,ABRE_TIP_CEP '+
                  ' FROM GR_LOGRA '+
                  ' LEFT JOIN CEP_TIPOLOGIA ON COD_TIP_CEP=COD_TPL_LOG '+
                  ' WHERE COD_EMP_LOG=1 AND NOME_LOG = '''+nomelog+'''';
  qrx.Open;
  if qrx.IsEmpty then begin
    DesmontaLogra(nomelog,Tipo,Logra,Numero,Complemento);
    qrx.close;
    qrx.SQL.Text := ' SELECT COD_LOG,COD_TPL_LOG,ABRE_TIP_CEP '+
                    ' FROM GR_LOGRA '+
                    ' LEFT JOIN CEP_TIPOLOGIA ON COD_TIP_CEP=COD_TPL_LOG '+
                    ' WHERE COD_EMP_LOG=1 AND NOME_LOG = '''+Logra+'''';
    qrx.Open;

  end;


  if not qrx.IsEmpty then
  begin
   codtipolog:=qrx.FieldByName('COD_TPL_LOG').AsString;
   tipoLog   :=qrx.FieldByName('ABRE_TIP_CEP').AsString;
   codlog    :=qrx.FieldByName('COD_LOG').AsString;
  end
  else begin
   codtipolog:='';
   tipoLog   :='';
   codlog    :='-1';
  end;

  result:=codlog;
  FreeAndNil(qrx);

end;

function TFPrincipal.VerificaCodigoLogradouro(codlog:String;var tipoLog :String;var codtipolog :String ): String;
var qrx : TSQLQuery;
    nomelog:String;
begin
   if trim(codlog)<>'' then begin
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := Conexao;
    qrx.SQL.Text := ' SELECT COD_LOG,COD_TPL_LOG,ABRE_TIP_CEP,NOME_LOG '+
                    ' FROM GR_LOGRA '+
                    ' LEFT JOIN CEP_TIPOLOGIA ON COD_TIP_CEP=COD_TPL_LOG '+
                    ' WHERE COD_EMP_LOG=1 AND COD_LOG='+codlog;
    qrx.Open;
    if not qrx.IsEmpty then
    begin
     codtipolog:=qrx.FieldByName('COD_TPL_LOG').AsString;
     tipoLog   :=qrx.FieldByName('ABRE_TIP_CEP').AsString;
     nomelog    :=qrx.FieldByName('NOME_LOG').AsString;
    end
    else begin
     codtipolog:='';
     tipoLog   :='';
     nomelog    :='-1';
    end;

    result:=nomelog;
    FreeAndNil(qrx);
   end
   else
   result:='-1';

end;

function TFPrincipal.VerificaNomeBairro(nomebai:String): String;
var qrx : TSQLQuery;
    codbai:String;
begin
  nomebai:=TrocaAspasSimples(nomebai);
  nomebai:=retirachar(nomebai,'"');

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := Conexao;
  qrx.SQL.Text := ' SELECT COD_BAI '+
                  ' FROM GR_BAIRRO '+
                  ' WHERE COD_EMP_BAI=1 AND NOME_BAI = '''+nomebai+'''';
  qrx.Open;
  if not qrx.IsEmpty then
   codbai    :=qrx.FieldByName('COD_BAI').AsString
  else
   codbai    :='-1';
  result:=codbai;
  FreeAndNil(qrx);
end;

function TFPrincipal.VerificaCodigoBairro(codbai:String): String;
var qrx : TSQLQuery;
    nomebai:String;
begin
  if trim(codbai)<>'' then begin
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := Conexao;
    qrx.SQL.Text := ' SELECT NOME_BAI '+
                    ' FROM GR_BAIRRO '+
                    ' WHERE COD_EMP_BAI=1 AND COD_BAI='+codbai;
    qrx.Open;
    if not qrx.IsEmpty then
     nomebai    :=qrx.FieldByName('NOME_BAI').AsString
    else
     nomebai    :='-1';
    result:=nomebai;
    FreeAndNil(qrx);
  end
  else
  result:='-1';

end;

function TFPrincipal.VerificaNomeCidade(nomecid,ufcid:String): String;
var qrx : TSQLQuery;
    codbai:String;
begin
  nomecid:=TrocaAspasSimples(nomecid);
  nomecid:=retirachar(nomecid,'"');

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := Conexao;
  qrx.SQL.Text := ' SELECT COD_CID '+
                  ' FROM GR_CIDADE '+
                  ' WHERE  NOME_CID = '''+nomecid+''' '+iif(trim(ufcid)<>'',' AND UF_CID='''+ufcid+'''','');
  qrx.Open;
  if not qrx.IsEmpty then
   codbai    :=qrx.FieldByName('COD_CID').AsString
  else
   codbai    :='-1';
  result:=codbai;
  FreeAndNil(qrx);
end;

procedure TFPrincipal.ContribuintesUnico;
var
 codtipolog,nometipolog,codaux,filtroEnderecos:String;
 item:Integer;
begin
    lbFuncao.Caption:='Contribuintes';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select count(*) as qtd '+
                    'from CNTI_CONTRIBUINTES '
                    );
    QOrigem.Open;


    lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
    lbtotal.update;



    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * '+
                    'from CNTI_CONTRIBUINTES  ');
    QOrigem.Open;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        lbchave.Caption:=QOrigem.fieldByName('CNTI_I_CON').AsString;
        lbchave.update;


        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1 AND COD_CNT='''+ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_CNT').AsInteger  :=1;
        cdsdestino.fieldByName('COD_CNT').AsString       :=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_CON').AsString);
        cdsdestino.fieldByName('NOME_CNT').AsString      :=TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_NOM').AsString);

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.SQL.Add('SELECT CON_A_NUM FROM TRICONT WHERE CON_I_COD='+QOrigem.FieldByName('CNTI_I_CON').AsString+' and CON_A_TIPO=''5''');
        QCadastro.Open;
        cdsdestino.fieldByName('EMAIL_CNT').AsString     :=trim(QCadastro.fieldByname('CON_A_NUM').AsString);

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.SQL.Add('SELECT CON_A_NUM FROM TRICONT WHERE CON_I_COD='+QOrigem.FieldByName('CNTI_I_CON').AsString+' and CON_A_TIPO=''1''');
        QCadastro.Open;
        cdsdestino.fieldByName('FONE_CNT').AsString     :=trim(QCadastro.fieldByname('CON_A_NUM').AsString);

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.SQL.Add('SELECT CON_A_NUM FROM TRICONT WHERE CON_I_COD='+QOrigem.FieldByName('CNTI_I_CON').AsString+' and CON_A_TIPO=''3''');
        QCadastro.Open;
        cdsdestino.fieldByName('CELULAR_CNT').AsString     :=trim(QCadastro.fieldByname('CON_A_NUM').AsString);

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.SQL.Add('SELECT CON_A_NUM FROM TRICONT WHERE CON_I_COD='+QOrigem.FieldByName('CNTI_I_CON').AsString+' and CON_A_TIPO=''2''');
        QCadastro.Open;
        cdsdestino.fieldByName('FAX_CNT').AsString     :=trim(QCadastro.fieldByname('CON_A_NUM').AsString);

        //cdsdestino.fieldByName('CARGO_CNT').AsString        :=trim(QOrigem.fieldByname('desativado').AsString);


      if trim(QOrigem.fieldByname('CNTI_A_NAT').AsString)='J' then
      begin
        cdsdestino.fieldByName('CNPJ_CNT').AsString          :=ZeraEsquerda(14,trim(TiraCaracter(QOrigem.fieldByname('CNTI_A_CPFCGC').AsString)));
        cdsdestino.fieldByName('RG_CNT').AsString            :=trim(TiraCaracter(QOrigem.fieldByname('CNTI_A_RGIE').AsString));
        cdsdestino.fieldByName('FISICA_CNT').AsString        :='N';
      end
      else begin

        //cdsdestino.fieldByName('NOMEPAI_CNT').AsString        :=TrocaAspasSimples(QCadastro.fieldByname('nome_pai').AsString);
        //cdsdestino.fieldByName('NOMEMAE_CNT').AsString        :=TrocaAspasSimples(QCadastro.fieldByname('nome_mae').AsString);
        cdsdestino.fieldByName('DTNASC_CNT').value         :=QOrigem.fieldByname('CNTI_D_NASC').value;
        cdsdestino.fieldByName('RG_CNT').AsString             :=trim(TiraCaracter(QOrigem.fieldByname('CNTI_A_RGIE').AsString));

        if trim(QOrigem.fieldByname('CNTI_A_CPFCGC').AsString)<>'' then
        cdsdestino.fieldByName('CNPJ_CNT').AsString          :=ZeraEsquerda(11,trim(TiraCaracter(QOrigem.fieldByname('CNTI_A_CPFCGC').AsString)));

        if trim(QOrigem.fieldByname('CNTI_S_SEXO').AsString)='1' then
        cdsdestino.fieldByName('SEXO_CNT').AsString:='MASCULINO'
        else
        if trim(QOrigem.fieldByname('CNTI_S_SEXO').AsString)='2' then
        cdsdestino.fieldByName('SEXO_CNT').AsString:='FEMININO';

        //cdsdestino.fieldByName('ESTADOCIVIL_CNT').AsString:=RetornaEstCivil(QCadastro.FieldByName('estado_civil').AsString);
        cdsdestino.fieldByName('NACIONALIDADE_CNT').AsString:='BRASILEIRO';
        cdsdestino.fieldByName('FISICA_CNT').AsString:='S';

        cdsdestino.fieldByName('ORGEXPREG_CNT').AsString          :=trim(QOrigem.fieldByname('CNTI_A_ORG').AsString);

        {
        cdsdestino.fieldByName('RESERVISTA_CNT').AsString         :=trim(QCadastro.fieldByname('num_reservista').AsString);
        cdsdestino.fieldByName('NROCARTEIRATRAB_CNT').AsString    :=trim(QCadastro.fieldByname('carteira_prof').AsString);
        cdsdestino.fieldByName('SERIECARTEIRATRAB_CNT').AsString  :=trim(QCadastro.fieldByname('serie_cart').AsString);
        cdsdestino.fieldByName('UFCARTEIRATRAB_CNT').AsString     :=trim(QCadastro.fieldByname('uf_emis_carteira').AsString);
        cdsdestino.fieldByName('PISNIT_CNT').AsString             :=trim(QCadastro.fieldByname('num_pis').AsString);
        cdsdestino.fieldByName('NROHABILITACAO_CNT').AsString     :=trim(QCadastro.fieldByname('cnh').AsString);
        cdsdestino.fieldByName('DTVALIDHABILITACAO_CNT').AsString :=trim(QCadastro.fieldByname('dt_vencto_cnh').AsString);
        cdsdestino.fieldByName('CATEGHABILITACAO_CNT').AsString   :=trim(QCadastro.fieldByname('categoria_cnh').AsString);
        cdsdestino.fieldByName('ESCOLARIDADE_CNT').AsString       :=trim(QCadastro.fieldByname('grau_instrucao').AsString);
        cdsdestino.fieldByName('CUTIS_CNT').AsString              :=trim(QCadastro.fieldByname('raca').AsString);
        cdsdestino.fieldByName('TIPOSANGUINEO_CNT').AsString      :=trim(QCadastro.fieldByname('grupo_sanguineo').AsString);
        cdsdestino.fieldByName('FATORRH_CNT').AsString            :=trim(QCadastro.fieldByname('fator_rh').AsString);
        cdsdestino.fieldByName('INSCRELEITOR_CNT').AsString       :=trim(QCadastro.fieldByname('titulo_eleitor').AsString);
        cdsdestino.fieldByName('ZONAELEITOR_CNT').AsString        :=trim(QCadastro.fieldByname('zona_eleitoral').AsString);
        cdsdestino.fieldByName('SECAOELEITOR_CNT').AsString       :=trim(QCadastro.fieldByname('secao_eleitoral').AsString);
        }
      end;

      cdsdestino.fieldByName('NUMERO_CNT').AsString         :=TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_NUMR').AsString);
      cdsdestino.fieldByName('CEP_CNT').AsString            :=trim(QOrigem.fieldByname('CNTI_A_CEPR').AsString);
      cdsdestino.fieldByName('COMPLE_CNT').AsString         :=TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_COMR').AsString);

      if QOrigem.fieldByName('CNTI_A_APTOR').AsString<>'' then
      cdsdestino.fieldByName('COMPLE_CNT').AsString         :=cdsdestino.fieldByName('COMPLE_CNT').AsString+' Apto: '+TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_APTOR').AsString);

      {
      if trim(QEndereco.FieldByName('i_distritos').AsString)<>'' then
      cdsdestino.fieldByName('COD_DST_CNT').AsString:=ZeraEsquerda(4,QEndereco.fieldByName('i_distritos').AsString);

      if trim(QEndereco.FieldByName('i_loteamentos').AsString)<>'' then
      cdsdestino.fieldByName('COD_LTO_CNT').AsString:=ZeraEsquerda(4,QEndereco.fieldByName('i_loteamentos').AsString);
       }


      if trim(QOrigem.FieldByName('LOG_I_CODRES').AsString)='' then begin

       codaux:=VerificaNomeLogradouro(trim(QOrigem.fieldByname('CNTI_A_LOGR').AsString),nometipolog,codtipolog);
       if trim(codaux)<>'-1' then begin
        cdsdestino.fieldByName('COD_LOG_CNT').AsString        :=codaux;

        if trim(codtipolog)<>'' then
        cdsdestino.fieldByName('COD_TIP_CNT').value           :=codtipolog;
        if trim(nometipolog)<>'' then
        cdsdestino.fieldByName('TIPOLOG_CNT').AsString        :=nometipolog;
       end;

      end
      else begin
       codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_CODRES').AsString),nometipolog,codtipolog);

       if trim(codaux)<>'-1' then
       cdsdestino.fieldByName('COD_LOG_CNT').AsString        :=trim(QOrigem.fieldByname('LOG_I_CODRES').AsString);

       if trim(codtipolog)<>'' then
       cdsdestino.fieldByName('COD_TIP_CNT').value           :=codtipolog;
       if trim(nometipolog)<>'' then
       cdsdestino.fieldByName('TIPOLOG_CNT').AsString        :=nometipolog;

      end;

      cdsdestino.fieldByName('NOM_LOG_CNT').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_LOGR').AsString);


      if trim(QOrigem.FieldByName('BAI_I_CODRES').AsString)='' then begin
       codaux:=VerificaNomeBairro(trim(QOrigem.fieldByname('CNTI_A_BAIR').AsString));
       if trim(codaux)<>'-1' then
       cdsdestino.fieldByName('COD_BAI_CNT').AsString        :=codaux;
      end
      else begin
       codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_CODRES').AsString));
       if trim(codaux)<>'-1' then
       cdsdestino.fieldByName('COD_BAI_CNT').AsString       :=trim(QOrigem.fieldByname('BAI_I_CODRES').AsString);
      end;

      cdsdestino.fieldByName('NOM_BAI_CNT').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_BAIR').AsString);


      if trim(QOrigem.fieldByName('CNTI_I_IBGER').AsString)='' then begin
        codaux:=VerificaNomeCidade(QOrigem.fieldByname('CNTI_A_MUNR').AsString,QOrigem.fieldByname('CNTI_A_UFR').AsString);
        if trim(codaux)<>'-1' then
        cdsdestino.fieldByName('COD_CID_CNT').AsString        :=codaux;
      end
      else
      cdsdestino.fieldByName('COD_CID_CNT').AsString        :=ZeraEsquerda(7,trim(QOrigem.fieldByname('CNTI_I_IBGER').AsString));

      cdsdestino.fieldByName('NOM_CID_CNT').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('CNTI_A_MUNR').AsString);
      cdsdestino.fieldByName('UF_CNT').AsString             :=trim(QOrigem.fieldByname('CNTI_A_UFR').AsString);


      cdsdestino.fieldByName('ATIVO_CNT').AsString:='S';

      cdsdestino.fieldByName('LOGIN_INC_CNT').AsString:='CONVERSAO';
      cdsdestino.fieldByName('DTA_INC_CNT').value:=date;
      cdsdestino.post;
      cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.HistoricosCadastros;
var cont: Integer;
    codaux:String;

begin
    lbFuncao.Caption:='HistoricoCadastros';
    lbFuncao.update;

    QVerifica.close;
    QVerifica.sql.text:='delete from GR_HISTORICOS';
    QVerifica.execsql;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select count(*) as qtd '+
                    'from HISTORICOS '
                    );
    QOrigem.Open;
    lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
    lbtotal.update;
    ProgressBar1.max:=QOrigem.fieldByname('qtd').AsInteger;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * from HISTORICOS where his_a_tela in (''frmContribuintes'',''frmEconomico'',''frmImobiliario'',''frmContaCorrente'') ');
    QOrigem.Open;

    DataSource1.DataSet:=QOrigem;
    DBRichEdit1.DataSource:=DataSource1;
    DBRichEdit1.DataField:='HIS_B_HIS';

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM GR_HISTORICOS WHERE COD_EMP_GHI=1 AND COD_GHI=0 ';
    cdsdestino.open;
    cont:=1;

    while not QOrigem.Eof do
    begin
        inc(cont);
        lbItem.Caption:=IntToStr(cont);
        lbItem.update;
        ProgressBar1.position:=cont;

        cdsdestino.append;
        cdsdestino.fieldByName('COD_EMP_GHI').AsInteger  :=1;
        cdsdestino.fieldByName('COD_GHI').value         :=cont;
        cdsdestino.fieldByName('COD_ORIG_GHI').AsString :=ZeraEsquerda(9,trim(QOrigem.fieldByname('HIS_A_CHAVE').AsString));

        if trim(QOrigem.fieldByname('HIS_D_DATE').AsString)='' then
        cdsdestino.fieldByName('DTA_GHI').value         :='01/01/1990'
        else
        cdsdestino.fieldByName('DTA_GHI').value         :=QOrigem.fieldByname('HIS_D_DATE').value;

        cdsdestino.fieldByName('HISTORICO_GHI').AsString   :=QOrigem.fieldByname('HIS_A_TITULO').AsString+char(13)+DBRichEdit1.text;//RichtToStr(QOrigem.fieldByname('HIS_B_HIS').AsString);

        if QOrigem.FieldByName('his_a_tela').AsString='frmImobiliario' then
        cdsdestino.fieldByName('ORIGEM_GHI').AsString   :='IPT'
        else
        if QOrigem.FieldByName('his_a_tela').AsString='frmContaCorrente' then
        cdsdestino.fieldByName('ORIGEM_GHI').AsString   :='DIV'
        else
        if QOrigem.FieldByName('his_a_tela').AsString='frmContribuintes' then
        cdsdestino.fieldByName('ORIGEM_GHI').AsString   :='CNT'
        else
        if QOrigem.FieldByName('his_a_tela').AsString='frmEconomico' then
        cdsdestino.fieldByName('ORIGEM_GHI').AsString   :='MBL'
        else
        if QOrigem.FieldByName('his_a_tela').AsString='frmAgua' then
        cdsdestino.fieldByName('ORIGEM_GHI').AsString   :='AGU';

        cdsdestino.fieldByName('LOGIN_INC_GHI').AsString:=trim(QOrigem.fieldByname('USU_A_USU').AsString);

        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);

    DataSource1.DataSet:=nil;
    DBRichEdit1.DataSource:=nil;
    DBRichEdit1.DataField:='';


  {

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select count(*) as qtd '+
                    'from TRICOBAMIGAVEL2 '
                    );
    QOrigem.Open;
    lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
    lbtotal.update;
    ProgressBar1.max:=QOrigem.fieldByname('qtd').AsInteger;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT C2.CNTI_I_CON, C2.AMI_N_VAL, CA.AMI_A_DES, CA.AMI_D_LANC, CA.AMI_D_VEN, CA.AMI_B_OBSERVACAO, '+
                    'CASE WHEN F.USU_A_USU IS NULL THEN SUBSTRING(F.FUN_A_NOM FROM 1 FOR 10) ELSE F.USU_A_USU END LOGIN '+
                    'FROM TRICOBAMIGAVEL2 C2 '+
                    'INNER JOIN TRICOBAMIGAVEL CA ON CA.AMI_N_SEQ = C2.AMI_N_SEQ '+
                    'LEFT JOIN TRIFUN F ON F.FUN_I_COD = CA.FIL_I_COD ');
    QOrigem.Open;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM GR_HISTORICOS WHERE COD_EMP_GHI=1 AND COD_GHI=0 ';
    cdsdestino.open;
    cont:=0;

    while not QOrigem.Eof do
    begin
        inc(cont);
        lbItem.Caption:=IntToStr(cont);
        lbItem.update;
        ProgressBar1.position:=cont;

        cdsdestino.append;
        cdsdestino.fieldByName('COD_EMP_GHI').AsInteger  :=1;
        cdsdestino.fieldByName('COD_GHI').value         :=cont;
        cdsdestino.fieldByName('COD_ORIG_GHI').AsString :=ZeraEsquerda(9,trim(QOrigem.fieldByname('CNTI_I_CON').AsString));


       codaux := '..: Cobran�a Amig�vel :..'+#13+
                 'Data Lan�amento: '+ vartostr(QOrigem.FieldValues['AMI_D_LANC']) +#13+
                 'Data Vencimento: '+ vartostr(QOrigem.FieldValues['AMI_D_VEN']) +#13+
                 'Valor: '+ vartostr(QOrigem.FieldValues['AMI_N_VAL']) +#13+
                 'Observa��es: '+ iif(trim(vartostr(QOrigem.FieldValues['AMI_A_DES'])) <> '', vartostr(QOrigem.FieldValues['AMI_A_DES']) +#13, '') +
                                 iif(trim(vartostr(QOrigem.FieldValues['AMI_B_OBSERVACAO'])) <> '', RichtToStr(vartostr(QOrigem.FieldValues['AMI_B_OBSERVACAO'])), '');


        cdsdestino.fieldByName('DTA_GHI').value         :=QOrigem.fieldByname('AMI_D_LANC').value;
        cdsdestino.fieldByName('HISTORICO_GHI').value   :=codaux;
        cdsdestino.fieldByName('ORIGEM_GHI').AsString   :='CNT';
        cdsdestino.fieldByName('LOGIN_INC_GHI').AsString:=trim(QOrigem.fieldByname('LOGIN').AsString);

        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
   }
end;



procedure TFPrincipal.SociosContribuintes;
 var cont,erros,ncommit:Integer;
begin

  lbFuncao.Caption:='SociosContribuintes';
  lbFuncao.update;

  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add('select count(*) as qtd  from ASP02_SOCIOS ');
  QOrigem.Open;

  lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
  lbtotal.update;



  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add('select * from ASP02_SOCIOS ');
  QOrigem.Open;

  ncommit:=0;
  cont:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  while not QOrigem.Eof do
  begin
    lbchave.Caption:=QOrigem.FieldByName('CNTI_I_CONEMPR').AsString;
    lbchave.Update;

    inc(ncommit);

    inc(cont);
    lbitem.Caption:=InttoStr(cont);
    lbitem.Update;
    ProgressBar1.position:=cont;
    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM GR_CONTRIBSOC WHERE COD_EMP_CNS=1 AND COD_CNT_CNS='''+ZeraEsquerda(9,QOrigem.FieldByName('CNTI_I_CONEMPR').AsString)+''' '+
                            'and COD_CNTS_CNS='''+ZeraEsquerda(9,QOrigem.FieldByName('CNTI_I_CONSOC').AsString)+''' ';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.Edit;

    cdsdestino.fieldByName('COD_EMP_CNS').AsString      :='1';
    cdsdestino.fieldByName('COD_CNT_CNS').AsString      :=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_CONEMPR').AsString);
    cdsdestino.fieldByName('COD_CNTS_CNS').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_CONSOC').AsString);
    cdsdestino.fieldByName('PORCENTAGEM_CNS').value     :=QOrigem.fieldByname('SOC_N_PERC').value;
    cdsdestino.fieldByName('DATAENTRADA_CNS').value      :=QOrigem.fieldByname('SOC_D_INI').value;
    cdsdestino.fieldByName('DATASAIDA_CNS').value      :=QOrigem.fieldByname('SOC_D_FIM').value;

    cdsdestino.post;
    cdsdestino.ApplyUpdates(-1);


    if ncommit=1000 then begin
     ncommit:=0;
     Conexao.Commit(TD);
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;



   QOrigem.Next;
  end;
   Conexao.Commit(TD);
end;




procedure TFPrincipal.HistoricosAlteracoesContribuintes;
var cont,ncommit: Integer;
begin
    lbFuncao.Caption:='HistoricoAltera��esContribuintes';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add( 'SELECT CASE '+
                                 'WHEN TRIM(DF.DESCRIPTION) <> '''' THEN DF.DESCRIPTION '+
                                 'ELSE FI.FIELD_NAME '+
                               'END as CAMPO_IHA, '+
                               'TB.DATE_TIME as DTA_ALT_IHA, '+
                               'FI.OLD_VALUE as VALOR_ANT_IHA, '+
                               'FI.NEW_VALUE as VALOR_AUT_IHA, '+
                               'CASE '+
                                 'WHEN SUBSTRING(TB.USER_NAME FROM 1 FOR 6) = ''ASP02_'' THEN SUBSTRING(TB.USER_NAME FROM 7 FOR 10) '+
                                 'ELSE SUBSTRING(TB.USER_NAME FROM 1 FOR 10) '+
                               'END as LOGIN_ALT_IHA,TB.TABLE_KEY '+
                         'FROM ASP_LOGTABLES TB '+
                         'INNER JOIN ASP_LOGFIELDS FI ON FI.LOG_TABLES_ID = TB.ID '+
                         'LEFT JOIN ASP_LOGDICFIELD DF ON DF.TABLE_NAME = TB.TABLE_NAME AND DF.FIELD_NAME = FI.FIELD_NAME '+
                         'WHERE TB.TABLE_NAME = ''CNTI_CONTRIBUINTES'' ORDER BY TB.TABLE_KEY '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM GR_HIS_ALTERACOES_CNT WHERE COD_EMP_GHA=1 AND COD_GHA=0 ';
    cdsdestino.open;
    cont:=0;
    ncommit:=0;

    while not QOrigem.Eof do
    begin
        inc(cont);
        inc(ncommit);
        lbItem.Caption:=IntToStr(cont);
        lbItem.update;
        ProgressBar1.position:=cont;

        QVerifica.Close;
        QVerifica.SQL.Clear;
        QVerifica.SQL.Add('SELECT COD_CNT FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1 AND COD_CNT='''+ZeraEsquerda(9,trim(retirachar(QOrigem.fieldByname('TABLE_KEY').AsString,';')))+'''');
        QVerifica.Open;
        if not QVerifica.IsEmpty then begin
        cdsdestino.append;
        cdsdestino.fieldByName('COD_EMP_GHA').AsInteger :=1;
        cdsdestino.fieldByName('COD_GHA').value         :=cont;
        cdsdestino.fieldByName('COD_CNT_GHA').AsString  :=QVerifica.FieldByName('COD_CNT').AsString;
        cdsdestino.fieldByName('CAMPO_GHA').value       :=QOrigem.fieldByname('CAMPO_IHA').value;
        cdsdestino.fieldByName('VALOR_ANT_GHA').value   :=QOrigem.fieldByname('VALOR_ANT_IHA').value;
        cdsdestino.fieldByName('VALOR_ATU_GHA').value   :=QOrigem.fieldByname('VALOR_AUT_IHA').value;
//        cdsdestino.fieldByName('OBS_GHA').value         :='Tipo : '+ QOrigem.FieldByName('tipo').AsString;
        cdsdestino.fieldByName('LOGIN_ALT_GHA').AsString:=trim(QOrigem.fieldByname('LOGIN_ALT_IHA').AsString);
        cdsdestino.fieldByName('DTA_ALT_GHA').AsString  :=trim(QOrigem.fieldByname('DTA_ALT_IHA').AsString);
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
        end;


    if ncommit=10000 then begin
     ncommit:=0;
     Conexao.Commit(TD);
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;




procedure TFPrincipal.Imobiliaria;
var item: Integer;
begin
    lbFuncao.Caption:='Imobili�rias';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT DISTINCT CNTI_I_IMOBILIARIA '+
                    'FROM TRIIMO '+
                    'WHERE CNTI_I_IMOBILIARIA IS NOT NULL '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CAD_IMOBILIARIAS WHERE COD_EMP_IMB=1 AND COD_CNT_IMB='''+ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_IMOBILIARIA').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_IMB').AsInteger  :=1;
        cdsdestino.fieldByName('COD_CNT_IMB').AsString   :=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_IMOBILIARIA').AsString);
        cdsdestino.fieldByName('LOGIN_INC_IMB').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_IMB').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.CodigoCobranca;
var item: Integer;
    codcob:String;
begin

     lbFuncao.Caption:='CodigoCobran�as';
     lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT DISTINCT TRIISEN.ISE_A_TIPO, '+
                                            'CASE TRIISEN.ISE_A_TIPO '+
                                             ' WHEN ''0'' THEN ''N�O INFORMADO'' '+
                                             ' WHEN ''1'' THEN ''IMUNE'' '+
                                             ' WHEN ''2'' THEN ''REMIDO'' '+
                                             ' WHEN ''3'' THEN ''ISENTO TOTAL'' '+
                                             ' WHEN ''4'' THEN ''ISENTO IMPOSTO'' '+
                                             ' WHEN ''5'' THEN ''ISENTO TAXAS'' '+
                                             ' WHEN ''6'' THEN ''REDUCAO'' '+
                                             ' WHEN ''7'' THEN ''ANISTIA'' '+
                                             ' WHEN ''8'' THEN ''CREDITO PRESUMIDO'' '+
                                             ' WHEN ''9'' THEN ''SUBSIDIO'' '+
                                             ' WHEN ''A'' THEN ''REDU��O DE ALIQUOTA'' '+
                                             ' WHEN ''D'' THEN ''DEDU��O'' '+
                                            'END DESCRICAO '+
                           'FROM TRIISEN '+
                           'WHERE TRIISEN.ISE_A_TIPO <> ''0'' '+
                            ' AND TRIM(TRIISEN.ISE_A_TIPO) <> '''' AND NOT ISE_A_TIPO IS NULL '+
                           'UNION '+
                           'SELECT 0, ''NORMAL'' FROM RDB$DATABASE '+
                           'UNION '+
                           'SELECT 99, ''EXC. LOGICA'' FROM RDB$DATABASE '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0 ;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;


        if trim(QOrigem.fieldByname('ISE_A_TIPO').AsString)='A' then
        codcob         :='10'
        else
        if trim(QOrigem.fieldByname('ISE_A_TIPO').AsString)='D' then
        codcob         :='11'
        else
        codcob         :=QOrigem.fieldByname('ISE_A_TIPO').value;


        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_COBRANCA WHERE COD_EMP_COB=1 AND COD_COB='+codcob;
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_COB').AsInteger  :=1;
        cdsdestino.fieldByName('COD_COB').value         :=codcob;

        cdsdestino.fieldByName('DESCRI_COB').AsString   :=trim(QOrigem.fieldByname('DESCRICAO').AsString);
        cdsdestino.fieldByName('PERIODO_COB').AsString   :='9999';
        cdsdestino.fieldByName('LOGIN_INC_COB').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_COB').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * FROM TRIOCO where OCO_S_UTI=4 ');
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0 ;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_COBRANCA WHERE COD_EMP_COB=1 AND COD_COB='+QOrigem.fieldByName('OCO_S_COD').AsString;
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_COB').AsInteger  :=1;
        cdsdestino.fieldByName('COD_COB').value         :=QOrigem.fieldByname('OCO_S_COD').value;
        cdsdestino.fieldByName('DESCRI_COB').AsString   :=trim(QOrigem.fieldByname('OCO_A_DES').AsString);
        cdsdestino.fieldByName('PERIODO_COB').AsString   :='9999';
        cdsdestino.fieldByName('LOGIN_INC_COB').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_COB').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;






   Conexao.Commit(TD);
end;



procedure TFPrincipal.Loteamento;
var item: Integer;
begin
    lbFuncao.Caption:='Loteamentos';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT LOT_I_COD, LOT_A_NOME '+
                    'FROM TRILOTEAMENTO WHERE LOT_A_TIPO=''L'' '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_LOTEAMENTO WHERE COD_EMP_LTO=1 AND COD_LTO='''+ZeraEsquerda(4,QOrigem.fieldByName('LOT_I_COD').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_LTO').AsInteger  :=1;
        cdsdestino.fieldByName('COD_LTO').value         :=ZeraEsquerda(4,QOrigem.fieldByName('LOT_I_COD').AsString);
        cdsdestino.fieldByName('DESCRI_LTO').AsString   :=trim(QOrigem.fieldByname('LOT_A_NOME').AsString);
        cdsdestino.fieldByName('LOGIN_INC_LTO').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_LTO').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.TipoEntrega;
var item: Integer;
begin
    lbFuncao.Caption:='Tipo Entrega';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' SELECT DISTINCT END_A_TIP_ENT ' +
                    ' FROM TRIIMO '+
                    ' WHERE END_A_TIP_ENT IS NOT NULL AND TRIM(END_A_TIP_ENT)<>'''' ');

    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_TIPOENTG WHERE COD_EMP_TEG=1 AND COD_TEG='+QOrigem.fieldByName('END_A_TIP_ENT').AsString;
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_TEG').AsInteger:=1;
        cdsdestino.fieldByName('COD_TEG').value        :=QOrigem.fieldByName('END_A_TIP_ENT').AsString;
        if QOrigem.fieldByName('END_A_TIP_ENT').AsString='0' then
        cdsdestino.fieldByName('DESCR_TEG').AsString   :='Pr�prio Im�vel'
        else
        if QOrigem.fieldByName('END_A_TIP_ENT').AsString='1' then
        cdsdestino.fieldByName('DESCR_TEG').AsString   :='Propriet�rio'
        else
        if QOrigem.fieldByName('END_A_TIP_ENT').AsString='2' then
        cdsdestino.fieldByName('DESCR_TEG').AsString   :='Compromiss�rio'
        else
        if QOrigem.fieldByName('END_A_TIP_ENT').AsString='3' then
        cdsdestino.fieldByName('DESCR_TEG').AsString   :='Imobili�ria'
        else
        if QOrigem.fieldByName('END_A_TIP_ENT').AsString='4' then
        cdsdestino.fieldByName('DESCR_TEG').AsString   :='Outros';

        cdsdestino.fieldByName('LOGIN_INC_TEG').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_TEG').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.Condominios;
var item: Integer;
begin
    lbFuncao.Caption:='Condominios';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT LOT_I_COD, LOT_A_NOME '+
                    'FROM TRILOTEAMENTO WHERE LOT_A_TIPO=''C'' '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_EMPREENDIMENTOS WHERE COD_EMP_IEP=1 AND COD_IEP='+QOrigem.fieldByName('LOT_I_COD').AsString;
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_IEP').AsInteger  :=1;
        cdsdestino.fieldByName('COD_IEP').value         :=QOrigem.fieldByName('LOT_I_COD').AsString;
        cdsdestino.fieldByName('DESCR_IEP').AsString   :=trim(QOrigem.fieldByname('LOT_A_NOME').AsString);
        cdsdestino.fieldByName('LOGIN_INC_IEP').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_IEP').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;


procedure TFPrincipal.Distrito;
var item: Integer;
begin

    lbFuncao.Caption:='Distritos';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' SELECT DISTINCT coalesce(substring(IMO_A_INSCRICAO_01 from 1 for 2),0) as cod '+
                    ' FROM TRIIMO ');
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_DISTRITO WHERE COD_EMP_DST=1 AND COD_DST='''+ZeraEsquerda(4,QOrigem.fieldByName('cod').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_DST').AsInteger :=1;
        cdsdestino.fieldByName('COD_DST').AsString         :=ZeraEsquerda(4,QOrigem.fieldByname('cod').AsString);
        cdsdestino.fieldByName('DESCRI_DST').AsString   :='Distrito '+trim(QOrigem.fieldByname('cod').AsString);
        cdsdestino.fieldByName('LOGIN_INC_DST').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_DST').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.SetorVencimento;
var item:Integer;
begin

    lbFuncao.Caption:='SetorVencimentos';
    lbFuncao.update;

                            { SETORES NAS CARACTERISTICAS
                            'SELECT C2.CAR_S_OPC COD_STR, '+
                                  'C2.CAR_A_DES NOM_LANCA_STR, '+
                                  'EXTRACT(YEAR FROM C3.CAR_D_INI) ANO_STR, '+
                                  'C3.CAR_N_VALOR EXPED_STR '+
                           'FROM TRICAR2 C2 '+
                           'INNER JOIN TRICAR3 C3 ON C3.CAR_S_COD = C2.CAR_S_COD AND C3.CAR_S_OPC = C2.CAR_S_OPC '+
                           'WHERE c2.CAR_S_COD = 616 ';
                            }
    // setores //
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' SELECT DISTINCT 1 COD_STR, '+
                    ' ''VENCIMENTOS ''||TRIVEN.VEN_I_ANO NOM_LANCA_STR, '+
                    ' TRIVEN.VEN_I_ANO '+
                    ' FROM TRIVEN '+
                    ' INNER JOIN TRIVEN2 ON TRIVEN2.VEN_S_COD = TRIVEN.VEN_S_COD '+
                    ' WHERE TRIVEN.IMP_I_COD = '+codsetorvencimento
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_SETOR WHERE COD_EMP_STR=1 AND COD_STR='''+ZeraEsquerda(4,QOrigem.fieldByName('COD_STR').AsString)+''' AND ANO_STR='''+ZeraEsquerda(4,QOrigem.fieldByName('VEN_I_ANO').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_STR').AsInteger  :=1;
        cdsdestino.fieldByName('COD_STR').value         :=ZeraEsquerda(4,QOrigem.fieldByname('COD_STR').AsString);
        cdsdestino.fieldByName('ANO_STR').AsString      :=ZeraEsquerda(4,QOrigem.fieldByName('VEN_I_ANO').AsString);
        cdsdestino.fieldByName('COD_IND_STR').AsString  :='1';
        cdsdestino.fieldByName('NOM_LANCA_STR').AsString:='SETOR '+ZeraEsquerda(4,QOrigem.fieldByName('NOM_LANCA_STR').AsString);
        cdsdestino.fieldByName('LOGIN_INC_STR').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_STR').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);

  // vencimentos//
  QOrigem.Close;
  QOrigem.sql.Clear;
  QOrigem.sql.add('SELECT 1 as COD_STR_VEN, '+
                  'TRIVEN.VEN_I_ANO ANO_STR_VEN, '+
                  'TRIVEN4.VEN_S_PAR NRPARCE_VEN, '+
                  'MAX(TRIVEN4.CON_D_VEN) VENCI_VEN, '+
                  'IIF(TRIVEN4.VEN_S_PAR=0,''S'',''N'') UNICA_VEN '+
                  'FROM TRIVEN '+
                  'INNER JOIN TRIVEN2 ON TRIVEN2.VEN_S_COD = TRIVEN.VEN_S_COD '+
                  'INNER JOIN TRIVEN4 ON TRIVEN4.VEN_S_COD = TRIVEN.VEN_S_COD '+
                  'WHERE TRIVEN.IMP_I_COD =  '+codsetorvencimento+
                  'AND EXTRACT(YEAR FROM TRIVEN4.CON_D_VEN) = TRIVEN.VEN_I_ANO '+
                  'GROUP BY TRIVEN.IMP_I_COD, TRIVEN.VEN_I_ANO, TRIVEN4.VEN_S_PAR, TRIVEN4.VEN_S_PAR '
                  );
  QOrigem.Open;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  while not QOrigem.Eof do
  begin

      cdsdestino.close;
      sqlDestino.commandText:='SELECT * FROM IP_VENCIMENTOS '+
                              ' WHERE COD_EMP_VEN=1 AND COD_STR_VEN='''+ZeraEsquerda(4,QOrigem.fieldByName('COD_STR_VEN').AsString)+''' '+
                              ' AND ANO_STR_VEN='''+ZeraEsquerda(4,QOrigem.fieldByName('ANO_STR_VEN').AsString)+''' '+
                              ' AND NRPARCE_VEN='+QOrigem.fieldByName('NRPARCE_VEN').AsString;
      cdsdestino.open;
      if cdsdestino.IsEmpty then
       cdsdestino.append
      else
       cdsdestino.edit;

      cdsdestino.fieldByName('COD_EMP_VEN').AsInteger  :=1;
      cdsdestino.fieldByName('COD_STR_VEN').value         :=ZeraEsquerda(4,QOrigem.fieldByname('COD_STR_VEN').AsString);
      cdsdestino.fieldByName('ANO_STR_VEN').AsString      :=ZeraEsquerda(4,QOrigem.fieldByName('ANO_STR_VEN').AsString);
      cdsdestino.fieldByName('NRPARCE_VEN').AsString      :=QOrigem.fieldByName('NRPARCE_VEN').AsString;
      cdsdestino.fieldByName('VENCI_VEN').AsString        :=QOrigem.fieldByName('VENCI_VEN').AsString;
      cdsdestino.fieldByName('TIPO_VEN').AsString         :='I';

      cdsdestino.fieldByName('MENS1_VEN').value           :='';
      cdsdestino.fieldByName('UNICA_VEN').AsString        :=QOrigem.fieldByName('UNICA_VEN').AsString;
      cdsdestino.post;
      cdsdestino.ApplyUpdates(-1);

   QOrigem.Next;
  end;

 Conexao.Commit(TD);

end;



procedure TFPrincipal.TipodaEdificacao;
var item,i: integer;
begin

    lbFuncao.Caption:='TipodaEdificacao';
    lbFuncao.update;

   for i := 2020 to 2021 do
   begin

      QOrigem.Close;
      QOrigem.sql.Clear;
      QOrigem.sql.add('SELECT * FROM TRICAR2 WHERE CAR_S_COD='+codedificacao );
      QOrigem.Open;


      if not Conexao.InTransaction then Conexao.StartTransaction(TD);
      item:=0;

      while not QOrigem.Eof do
      begin


        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CAD_ZONAEDIF '+
                                ' WHERE COD_EMP_ZNA=1 AND COD_ZNA='''+ZeraEsquerda(5,QOrigem.FieldByName('CAR_S_OPC').AsString)+''' '+
                                ' AND EXERCICIO_ZNA='+IntToStr(i)+' AND TP_ZNA=''01 - Edificado''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         cdsdestino.append;
         inc(item);
        cdsdestino.fieldByName('COD_EMP_ZNA').AsInteger :=1;
        cdsdestino.fieldByName('COD_ZNA').value         :=ZeraEsquerda(5,QOrigem.FieldByName('CAR_S_OPC').AsString);
        cdsdestino.fieldByName('EXERCICIO_ZNA').AsString:=IntToStr(i);
        cdsdestino.fieldByName('DESCRI_ZNA').AsString   :=QOrigem.FieldByName('CAR_A_DES').AsString;
        cdsdestino.fieldByName('TP_ZNA').AsString       :='01 - Edificado';
        cdsdestino.fieldByName('LOGIN_INC_ZNA').AsString:='CONVERSAO';

        QEventos.close;
        QEventos.sql.clear;
        QEventos.sql.add('select CAR_N_VALOR '+
                         ' from tricar3 '+
                         ' where CAR_S_COD='+QOrigem.FieldByName('CAR_S_COD').AsString+' and CAR_S_OPC='+QOrigem.FieldByName('CAR_S_OPC').AsString+'  and extract(year from CAR_D_FIM)='+ IntToStr(i)
                         );
        QEventos.open;

        cdsdestino.fieldByName('VALORM_ZNA').AsCurrency   :=0;QEventos.FieldByName('CAR_N_VALOR').AsCurrency ;
        cdsdestino.fieldByName('VALORK_ZNA').AsCurrency   :=0;QEventos.FieldByName('CAR_N_VALOR').AsCurrency ;
        cdsdestino.fieldByName('DTA_INC_ZNA').value       :=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
        end;
      QOrigem.Next
      end;

      Conexao.Commit(TD);
   end;
end;



procedure TFPrincipal.ValoresCaracteristicasTabela_I;
var item,codcvr: Integer;
    exercicio,codzona:String;
begin
    lbFuncao.Caption:='Valor Caracteristica';
    lbFuncao.update;


    lbtotal.caption:=IntToStr(ProgressBar1.max);
    lbtotal.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * FROM TRICAR2 where CAR_S_COD in (44,33,34,35,36,37,38,39,40,41,42,43)' );
    QOrigem.Open;


     QVerifica.close;
     QVerifica.sql.Text:='SELECT MAX(COD_CVR) AS QTD FROM IP_VALORCRT ';

     QVerifica.open;
     codcvr:=QVerifica.fieldByName('qtd').AsInteger;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        exercicio:='2018';codzona:='00015';
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;


        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_VALORCRT '+
                                ' WHERE COD_EMP_CVR=1 AND ANO_CVR='''+exercicio+''''+
                                ' AND COD_CRT_CVR='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString)+''' '+
                                ' AND COD_ZNA_cvr='''+ZeraEsquerda(5,codzona)+''' '+
                                ' and COD_DCR_CVR='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString)+''''
                                ;
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         inc(codcvr);
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CVR').AsInteger  :=1;
         cdsdestino.fieldByName('COD_CVR').AsInteger      :=codcvr;

        end
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('ANO_CVR').AsString       :=exercicio;
        cdsdestino.fieldByName('COD_CRT_CVR').AsString   :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);
        cdsdestino.fieldByName('COD_DCR_CVR').AsString   :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString);
        cdsdestino.fieldByName('COD_ZNA_CVR').AsString   :=ZeraEsquerda(5,codzona);
        //cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='02 - Zoneamento';
        cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='01 - Edificado';
        cdsdestino.fieldByName('TIPO_CVR').AsString      :='01 - FATOR DE CORR. PREDIAL';
        //cdsdestino.fieldByName('TIPO_CVR').AsString      :='03 - PONTOS';
        //cdsdestino.fieldByName('TIPO_CVR').AsString      :='02 - FATOR DE CORR. TERRIT.';
        cdsdestino.fieldByName('LIMITEI_CVR').AsString   :='0';
        cdsdestino.fieldByName('LIMITEF_CVR').AsString   :='99999999';
        cdsdestino.fieldByName('VALOR_CVR').AsCurrency     :=QOrigem.fieldByname('CAR_N_VALOR').AsCurrency;
        cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='01 - MULTIPLICA FATORES';
        //cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='02 - SOMA FATORES';
        cdsdestino.fieldByName('LOGIN_INC_CVR').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_CVR').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.ValoresCaracteristicasOpcoes_Faixa;
var item,codcvr: Integer;
begin
    lbFuncao.Caption:='Valor Caracteristica';
    lbFuncao.update;


    lbtotal.caption:=IntToStr(ProgressBar1.max);
    lbtotal.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select valor_ini,valor_final,valor_ret,20 as grupo,1 as desdobro,2016 as exercicio,1 as zona '+
                    'from opcoes_faixas '+
                    'where i_faixas=1 '
                    );
    QOrigem.Open;


     QVerifica.close;
     QVerifica.sql.Text:='SELECT MAX(COD_CVR) AS QTD FROM IP_VALORCRT ';

     QVerifica.open;
     codcvr:=QVerifica.fieldByName('qtd').AsInteger;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;


        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_VALORCRT '+
                                ' WHERE COD_EMP_CVR=1 AND ANO_CVR='''+trim(QOrigem.fieldByName('exercicio').AsString)+''' '+
                                ' AND COD_CRT_CVR='''+ZeraEsquerda(4,QOrigem.fieldByName('grupo').AsString)+''' '+
                                ' AND COD_ZNA_cvr='''+ZeraEsquerda(5,QOrigem.fieldByName('zona').AsString)+''' '+
                                ' and COD_DCR_CVR='''+ZeraEsquerda(4,QOrigem.fieldByName('desdobro').AsString)+''' '+
                                ' and LIMITEI_CVR='+Subs_Virgula_Por_Ponto(CurrToSTr(QOrigem.fieldByName('valor_ini').AsCurrency))+
                                ' and LIMITEF_CVR='+Subs_Virgula_Por_Ponto(CurrToSTr(QOrigem.fieldByName('valor_final').AsCurrency))
                                ;
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         inc(codcvr);
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CVR').AsInteger  :=1;
         cdsdestino.fieldByName('COD_CVR').AsInteger      :=codcvr;

        end
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('ANO_CVR').AsString       :=QOrigem.fieldByname('exercicio').AsString;
        cdsdestino.fieldByName('COD_CRT_CVR').AsString   :=ZeraEsquerda(4,QOrigem.fieldByName('grupo').AsString);
        cdsdestino.fieldByName('COD_DCR_CVR').AsString   :=ZeraEsquerda(4,QOrigem.fieldByName('desdobro').AsString);
        cdsdestino.fieldByName('COD_ZNA_CVR').AsString   :=ZeraEsquerda(5,QOrigem.fieldByName('zona').AsString);
        cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='02 - Zoneamento';
        //cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='01 - Edificado';
        cdsdestino.fieldByName('TIPO_CVR').AsString      :='10 - TAXAS';
        cdsdestino.fieldByName('LIMITEI_CVR').AsCurrency :=QOrigem.fieldByName('valor_ini').AsCurrency;
        cdsdestino.fieldByName('LIMITEF_CVR').AsCurrency   :=QOrigem.fieldByName('valor_final').AsCurrency;
        cdsdestino.fieldByName('VALOR_CVR').AsCurrency   :=QOrigem.fieldByname('valor_ret').AsCurrency * 20.45;
        cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='08 - VALOR FIXO';
        cdsdestino.fieldByName('LOGIN_INC_CVR').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_CVR').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.ValoresCaracteristicasTabela_II;
var item,i,codcvr: Integer;
    codzna:String;
begin
    lbFuncao.Caption:='Valor Caracteristica';
    lbFuncao.update;


    lbtotal.caption:=IntToStr(ProgressBar1.max);
    lbtotal.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' select * '+
                    ' from tricar2'+
                    ' where CAR_S_COD=83 '
                    );
    QOrigem.Open;

     codzna:='00007';

     QVerifica.close;
     QVerifica.sql.Text:='SELECT MAX(COD_CVR) AS QTD FROM IP_VALORCRT ';

     QVerifica.open;
     codcvr:=QVerifica.fieldByName('qtd').AsInteger;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        for I := 2020 to 2021 do
        begin




        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_VALORCRT '+
                                ' WHERE COD_EMP_CVR=1 AND ANO_CVR='''+IntToSTr(i)+''''+
                                ' AND COD_CRT_CVR='''+ZeraEsquerda(4,'7777')+''' '+
                                ' AND COD_ZNA_cvr='''+ZeraEsquerda(5,QOrigem.fieldByName('CAR_S_OPC').AsString)+''' '+
                                ' AND COD_ZNAv_cvr='''+ZeraEsquerda(5,codzna)+''' '+
                                ' and COD_DCR_CVR='''+ZeraEsquerda(4,'1')+''''
                                ;
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         inc(codcvr);
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CVR').AsInteger  :=1;
         cdsdestino.fieldByName('COD_CVR').AsInteger      :=codcvr;

        end
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('ANO_CVR').AsInteger       :=i;
        cdsdestino.fieldByName('COD_CRT_CVR').AsString   :=ZeraEsquerda(4,'7777');
        cdsdestino.fieldByName('COD_DCR_CVR').AsString   :=ZeraEsquerda(4,'1');
        cdsdestino.fieldByName('COD_ZNA_CVR').AsString   :=ZeraEsquerda(5,QOrigem.fieldByName('CAR_S_OPC').AsString);
        //cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='02 - Zoneamento';
        cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='01 - Edificado';

        cdsdestino.fieldByName('COD_ZNAV_CVR').AsString   :=ZeraEsquerda(5,codzna);
        cdsdestino.fieldByName('TP_ZNAV_CVR').AsString    :='02 - Zoneamento';

        //cdsdestino.fieldByName('TIPO_CVR').AsString      :='01 - FATOR DE CORR. PREDIAL';
        cdsdestino.fieldByName('TIPO_CVR').AsString      :='13 - VALOR M� PREDIAL';
        //cdsdestino.fieldByName('TIPO_CVR').AsString      :='02 - FATOR DE CORR. TERRIT.';
        cdsdestino.fieldByName('LIMITEI_CVR').AsString   :='0';
        cdsdestino.fieldByName('LIMITEF_CVR').AsString   :='99999999';

        QEventos.close;
        QEventos.sql.clear;
        QEventos.sql.add('select CAR_N_VALOR '+
                         ' from tricar3 '+
                         ' where CAR_S_COD='+QOrigem.FieldByName('CAR_S_COD').AsString+' and CAR_S_OPC='+QOrigem.FieldByName('CAR_S_OPC').AsString+'  and extract(year from CAR_D_FIM)='+ IntToStr(i)
                         );
        QEventos.open;

        cdsdestino.fieldByName('VALOR_CVR').AsCurrency     :=QEventos.fieldByname('CAR_N_VALOR').AsCurrency;
        cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='01 - MULTIPLICA FATORES';
        //cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='02 - SOMA FATORES';
        //cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='03 - SOMA E DIVIDE POR 100';
        cdsdestino.fieldByName('LOGIN_INC_CVR').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_CVR').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
        end;

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.ValoresCaracteristicasTabela_III;
var item,i,codcvr: Integer;
    codzna:String;
begin
    lbFuncao.Caption:='Valor Caracteristica';
    lbFuncao.update;


    lbtotal.caption:=IntToStr(ProgressBar1.max);
    lbtotal.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * from tab_calculo_iptu');
    QOrigem.Open;



     QVerifica.close;
     QVerifica.sql.Text:='SELECT MAX(COD_CVR) AS QTD FROM IP_VALORCRT ';

     QVerifica.open;
     codcvr:=QVerifica.fieldByName('qtd').AsInteger;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        codzna:=ZeraEsquerda(5,QOrigem.fieldByName('COD_BAIRRO').AsString);

        for I := 2020 to 2021 do
        begin




        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_VALORCRT '+
                                ' WHERE COD_EMP_CVR=1 AND ANO_CVR='''+IntToSTr(i)+''''+
                                ' AND COD_CRT_CVR='''+ZeraEsquerda(4,'57')+''' '+
                                ' AND COD_ZNA_cvr='''+ZeraEsquerda(5,QOrigem.fieldByName('COD_TIPO').AsString)+''' '+
                                ' AND COD_ZNAv_cvr='''+ZeraEsquerda(5,codzna)+''' '+
                                ' and COD_DCR_CVR='''+ZeraEsquerda(4,QOrigem.fieldByName('COD_ESTRUTURA').AsString)+''''
                                ;
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         inc(codcvr);
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CVR').AsInteger  :=1;
         cdsdestino.fieldByName('COD_CVR').AsInteger      :=codcvr;

        end
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('ANO_CVR').AsInteger       :=i;
        cdsdestino.fieldByName('COD_CRT_CVR').AsString   :=ZeraEsquerda(4,'57');
        cdsdestino.fieldByName('COD_DCR_CVR').AsString   :=ZeraEsquerda(4,QOrigem.fieldByName('COD_ESTRUTURA').AsString);
        cdsdestino.fieldByName('COD_ZNA_CVR').AsString   :=ZeraEsquerda(5,QOrigem.fieldByName('COD_TIPO').AsString);
        //cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='02 - Zoneamento';
        cdsdestino.fieldByName('TP_ZNA_CVR').AsString    :='01 - Edificado';

        cdsdestino.fieldByName('COD_ZNAV_CVR').AsString   :=ZeraEsquerda(5,codzna);
        cdsdestino.fieldByName('TP_ZNAV_CVR').AsString    :='02 - Zoneamento';

        //cdsdestino.fieldByName('TIPO_CVR').AsString      :='01 - FATOR DE CORR. PREDIAL';
        cdsdestino.fieldByName('TIPO_CVR').AsString      :='13 - VALOR M� PREDIAL';
        //cdsdestino.fieldByName('TIPO_CVR').AsString      :='02 - FATOR DE CORR. TERRIT.';
        cdsdestino.fieldByName('LIMITEI_CVR').AsString   :='0';
        cdsdestino.fieldByName('LIMITEF_CVR').AsString   :='99999999';
        cdsdestino.fieldByName('VALOR_CVR').AsCurrency     :=QOrigem.fieldByname('VALOR').AsCurrency;
        cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='01 - MULTIPLICA FATORES';
        //cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='02 - SOMA FATORES';
        //cdsdestino.fieldByName('TPCALULO_CVR').AsString  :='03 - SOMA E DIVIDE POR 100';
        cdsdestino.fieldByName('LOGIN_INC_CVR').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_CVR').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
        end;

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;




procedure TFPrincipal.Zoneamento;
var item,i: integer;
begin

    lbFuncao.Caption:='Zoneamento';
    lbFuncao.update;

   for i := 2020 to 2021 do
   begin

      QOrigem.Close;
      QOrigem.sql.Clear;
      QOrigem.sql.add('SELECT * FROM TRICAR2 WHERE CAR_S_COD='+codzoneamento );
      QOrigem.Open;


      if not Conexao.InTransaction then Conexao.StartTransaction(TD);
      item:=0;

      while not QOrigem.Eof do
      begin


        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CAD_ZONAEDIF '+
                                ' WHERE COD_EMP_ZNA=1 AND COD_ZNA='''+ZeraEsquerda(5,QOrigem.FieldByName('CAR_S_OPC').AsString)+''' '+
                                ' AND EXERCICIO_ZNA='+IntToStr(i)+' AND TP_ZNA=''02 - Zoneamento''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         cdsdestino.append;
         inc(item);
        cdsdestino.fieldByName('COD_EMP_ZNA').AsInteger :=1;
        cdsdestino.fieldByName('COD_ZNA').value         :=ZeraEsquerda(5,QOrigem.FieldByName('CAR_S_OPC').AsString);
        cdsdestino.fieldByName('EXERCICIO_ZNA').AsString:=IntToStr(i);
        cdsdestino.fieldByName('DESCRI_ZNA').AsString   :=QOrigem.FieldByName('CAR_A_DES').AsString;
        cdsdestino.fieldByName('TP_ZNA').AsString       :='02 - Zoneamento';
        cdsdestino.fieldByName('LOGIN_INC_ZNA').AsString:='CONVERSAO';
      {
        QEventos.close;
        QEventos.sql.clear;
        QEventos.sql.add('select CAR_N_VALOR '+
                         ' from tricar3 '+
                         ' where CAR_S_COD='+QOrigem.FieldByName('CAR_S_COD').AsString+' and CAR_S_OPC='+QOrigem.FieldByName('CAR_S_OPC').AsString+'  and extract(year from CAR_D_FIM)='+ IntToStr(i)
                         );
        QEventos.open;


        cdsdestino.fieldByName('VALORM_ZNA').AsCurrency   :=QEventos.FieldByName('CAR_N_VALOR').AsCurrency ;
        cdsdestino.fieldByName('VALORK_ZNA').AsCurrency   :=QEventos.FieldByName('CAR_N_VALOR').AsCurrency ;
        }
        cdsdestino.fieldByName('VALORM_ZNA').AsCurrency   :=QOrigem.FieldByName('CAR_N_VALOR').AsCurrency ;
        cdsdestino.fieldByName('VALORK_ZNA').AsCurrency   :=QOrigem.FieldByName('CAR_N_VALOR').AsCurrency ;

        cdsdestino.fieldByName('DTA_INC_ZNA').value     :=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
        end;
      QOrigem.Next
      end;

      Conexao.Commit(TD);
   end;
     {
      QOrigem.Close;
      QOrigem.sql.Clear;
      QOrigem.sql.add('select * from TRIVALFAIXA where COB_S_COD=1' );
      QOrigem.Open;


      if not Conexao.InTransaction then Conexao.StartTransaction(TD);
      item:=0;

      while not QOrigem.Eof do
      begin


        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CAD_ZONAEDIF '+
                                ' WHERE COD_EMP_ZNA=1 AND COD_ZNA='''+ZeraEsquerda(5,QOrigem.FieldByName('COB_N_INI').AsString)+''' '+
                                ' AND EXERCICIO_ZNA='+copy(QOrigem.FieldByName('VFX_D_FINAL').AsString,7,4)+' AND TP_ZNA=''02 - Zoneamento''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         cdsdestino.append;
         inc(item);
        cdsdestino.fieldByName('COD_EMP_ZNA').AsInteger :=1;
        cdsdestino.fieldByName('COD_ZNA').value         :=ZeraEsquerda(5,QOrigem.FieldByName('COB_N_INI').AsString);
        cdsdestino.fieldByName('EXERCICIO_ZNA').AsString:=copy(QOrigem.FieldByName('VFX_D_FINAL').AsString,7,4);
        cdsdestino.fieldByName('DESCRI_ZNA').AsString   :=QOrigem.FieldByName('VFX_A_DESC').AsString;
        cdsdestino.fieldByName('TP_ZNA').AsString       :='02 - Zoneamento';
        cdsdestino.fieldByName('LOGIN_INC_ZNA').AsString:='CONVERSAO';
        cdsdestino.fieldByName('VALORM_ZNA').AsCurrency   :=QOrigem.FieldByName('VFX_N_VAL').AsCurrency;
        cdsdestino.fieldByName('VALORK_ZNA').AsCurrency   :=QOrigem.FieldByName('VFX_N_VAL').AsCurrency;
        cdsdestino.fieldByName('DTA_INC_ZNA').value     :=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
        end;
      QOrigem.Next
      end;

      Conexao.Commit(TD);
         }



end;

procedure TFPrincipal.Secao;
var item: Integer;
begin
    lbFuncao.Caption:='Secao';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT TRIVALFAIXA.COB_N_INI as COD_BAI_SCO, '+
                    'TRIVALFAIXA.VFX_A_DESC, '+
                    'TRIVALFAIXA.VFX_N_VAL as VALOR_SCO '+
                    'FROM TRIVALFAIXA '+
                    'WHERE TRIVALFAIXA.COB_S_COD = 1 '+
                    ' AND TRIVALFAIXA.VFX_D_FINAL > ''31.12.2011'''
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_SECAO WHERE COD_EMP_SCO=1 AND COD_SCO='+QOrigem.fieldByName('i_boletim').AsString;
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_SCO').AsInteger :=1;
        cdsdestino.fieldByName('COD_SCO').value         :=QOrigem.fieldByname('i_boletim').value;
        cdsdestino.fieldByName('ANO_STR_SCO').AsString  :=trim(QOrigem.fieldByname('ano').AsString);
        cdsdestino.fieldByName('CODD_SCO').AsString     :=ZeraEsquerda(6,trim(QOrigem.fieldByname('secao').AsString));

        if (QOrigem.fieldByName('lado').AsString='D') or (QOrigem.FieldByName('lado').AsString='P')  then
        cdsdestino.fieldByName('FACE_SCO').AsString      :='01 - Direita'
        else
        if (QOrigem.fieldByName('lado').AsString='E') or (QOrigem.FieldByName('lado').AsString='I')  then
        cdsdestino.fieldByName('FACE_SCO').AsString      :='02 - Esquerda'
        else
        cdsdestino.fieldByName('FACE_SCO').AsString      :='03 - Ambos';

       {
        if trim(QOrigem.fieldByname('i_distritos').AsString)<>'' then
        cdsdestino.fieldByName('COD_DST_SCO').AsString   :=ZeraEsquerda(4,trim(QOrigem.fieldByname('i_distritos').AsString));

        if trim(QOrigem.fieldByname('campo2').AsString)<>'' then begin
        cdsdestino.fieldByName('COD_STR_SCO').AsString   :=ZeraEsquerda(2,trim(QOrigem.fieldByname('campo2').AsString));
        cdsdestino.fieldByName('SETOR_SCO').AsString   :=ZeraEsquerda(2,trim(QOrigem.fieldByname('campo2').AsString));
        end;
        }
        if trim(QOrigem.fieldByname('campo2').AsString)<>'' then
        cdsdestino.fieldByName('QUADRA_SCO').AsString   :=ZeraEsquerda(4,trim(QOrigem.fieldByname('campo2').AsString));


        cdsdestino.fieldByName('COD_BAI_SCO').value      :=QOrigem.fieldByname('i_bairros').value;
        cdsdestino.fieldByName('COD_LOG_SCO').value      :=QOrigem.fieldByname('i_ruas').value;
        cdsdestino.fieldByName('VALOR_SCO').AsString     :=trim(QOrigem.fieldByname('valor_m2').AsString);


        cdsdestino.fieldByName('LOGIN_INC_SCO').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_SCO').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.Caracteristica;
var i,item:Integer;
    grupoante,padrao:String;
begin

    lbFuncao.Caption:='Caracteristica';
    lbFuncao.update;


    // grupos das caracteristicas //
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * FROM TRICAR1 WHERE CAR_S_TIP IN (1,2,3,6,7,11) AND NOT CAR_S_COD IN ('+codzoneamento+','+codedificacao+')' );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CAD_CRT WHERE COD_EMP_CRT=1 AND COD_CRT='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_CRT').AsInteger :=1;
        cdsdestino.fieldByName('COD_CRT').value         :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.SQL.Add('SELECT CAR_S_COD FROM TRIIPTUA2 WHERE CAR_S_COD='+QOrigem.FieldByName('CAR_S_COD').AsString);
        QCadastro.Open;
        if not QCadastro.IsEmpty then
        cdsdestino.fieldByName('TIPO_CRT').AsString     :='02 - EDIFICACAO'
        else
        cdsdestino.fieldByName('TIPO_CRT').AsString     :='01 - TERRENO';

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.SQL.Add('SELECT CAR_S_COD FROM TRICARTES WHERE CAR_S_COD='+QOrigem.FieldByName('CAR_S_COD').AsString);
        QCadastro.Open;
        if not QCadastro.IsEmpty then
        cdsdestino.fieldByName('TIPO_CRT').AsString     :='01 - TERRENO';


        cdsdestino.fieldByName('MOSTRAR_CRT').AsString  :='S';
        cdsdestino.fieldByName('ORDEM_CRT').AsString    :=trim(QOrigem.fieldByname('CAR_S_COD').AsString);
        cdsdestino.fieldByName('DESCRI_CRT').AsString   :=trim(QOrigem.fieldByname('CAR_A_DES').AsString);
        cdsdestino.fieldByName('LIMITE_CRT').AsString   :='N';
        cdsdestino.fieldByName('TPLIMITE_CRT').AsString :='';

        cdsdestino.fieldByName('LOGIN_INC_CRT').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_CRT').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);


    // Desdobro das caracteristicas //
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' SELECT TRICAR2.* '+
                    ' FROM TRICAR2 '+
                    ' INNER JOIN TRICAR1 ON TRICAR1.CAR_S_COD=TRICAR2.CAR_S_COD '+
                    ' WHERE TRICAR1.CAR_S_TIP IN (1,2,3,6,7,11) AND NOT TRICAR1.CAR_S_COD IN ('+codzoneamento+','+codedificacao+')'
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    i:=0;
    grupoante:='';
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        if grupoante<>ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString) then
        i:=0;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CAD_DESDOCRT '+
                                ' WHERE COD_EMP_DCR=1 AND COD_CRT_DCR='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString)+''' AND COD_DCR='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         inc(i);
         cdsdestino.append;
         cdsdestino.fieldByName('ORDEM_DCR').AsInteger   :=i;
         if i=1 then
         cdsdestino.fieldByName('PADRAO_DCR').AsString   :='S'
         else
         cdsdestino.fieldByName('PADRAO_DCR').AsString   :='N';
        end
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_DCR').AsInteger :=1;
        cdsdestino.fieldByName('COD_CRT_DCR').value     :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);
        cdsdestino.fieldByName('COD_DCR').value         :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString);
        cdsdestino.fieldByName('DESCRI_DCR').AsString   :=trim(QOrigem.fieldByname('CAR_A_DES').AsString);

        cdsdestino.fieldByName('LOGIN_INC_DCR').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_DCR').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

        grupoante:=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);

end;




procedure TFPrincipal.servicosurbano;
var item,posicaosecao: Integer;
    codaux,nometipolog,codtipolog:String;
begin
    lbFuncao.Caption:='Servi�osUrbano';
    lbFuncao.update;

    QVerifica.Close;
    QVerifica.SQL.Text:='DELETE FROM IP_SERVURBANOSCRT';
    QVerifica.execsql;
    QVerifica.Close;
    QVerifica.SQL.Text:='DELETE FROM IP_SERVURBANOS';
    QVerifica.execsql;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * FROM TRIFAC ');
    QOrigem.Open;
    ProgressBar1.max:=QOrigem.recordcount;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_SERVURBANOS  WHERE COD_EMP_ISU=1 AND COD_ISU='+IntToStr(item);
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_ISU').AsInteger :=1;
        cdsdestino.fieldByName('COD_ISU').value         :=item;

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.SQL.Add(' select substring(IMO_A_INSCRICAO_01 from 1 for 2) as distrito,substring(IMO_A_INSCRICAO_01 from 3 for 2) as Setor,substring(IMO_A_INSCRICAO_01 from 5 for 3) as quadra '+
                          ' from TRIIPTUF '+
                          ' inner join TRIIMO on TRIIPTUF.IMO_I_COD=TRIIMO.IMO_I_COD '+
                          ' where LOG_I_COD='+QOrigem.fieldByname('LOG_I_COD').AsString+' and FAC_I_COD='+QOrigem.fieldByname('FAC_I_COD').AsString+' and CON_S_TIP=1 '
                           );
        QCadastro.Open;
        cdsdestino.fieldByName('SETOR_ISU').AsString  :=trim(QCadastro.fieldByname('Setor').AsString);
        cdsdestino.fieldByName('QUADRA_ISU').AsString :=trim(QCadastro.fieldByname('quadra').AsString);


        cdsdestino.fieldByName('AREATMIN_ISU').value      :=0;
        cdsdestino.fieldByName('AREATMAX_ISU').value      :=0;
        cdsdestino.fieldByName('AREATPADRAO_ISU').value   :=0;
        cdsdestino.fieldByName('TESTADAMIN_ISU').value    :=0;
        cdsdestino.fieldByName('TESTADAMAX_ISU').value    :=0;
        cdsdestino.fieldByName('TESTADAPADRAO_ISU').value :=QOrigem.fieldByname('FAC_N_TES').value;
        cdsdestino.fieldByName('PROFMIN_ISU').value       :=0;
        cdsdestino.fieldByName('PROFMAX_ISU').value       :=0;
        cdsdestino.fieldByName('PROFPADRAO_ISU').value    :=QOrigem.fieldByname('FAC_N_PROF').value;
        cdsdestino.fieldByName('RORDGEN_ISU').value       :=0;
        cdsdestino.fieldByName('NRLOGINI_ISU').value      :=0;
        cdsdestino.fieldByName('NRLOGFIM_ISU').value      :=0;


        if (QOrigem.FieldByName('FAC_A_LADO').AsString='1') then begin
         cdsdestino.fieldByName('FACE_ISU').AsString   :='01 - Direita';
        end
        else
        if (QOrigem.FieldByName('FAC_A_LADO').AsString='2') then begin
         cdsdestino.fieldByName('FACE_ISU').AsString   :='02 - Esquerda';
        end
        else begin
         cdsdestino.fieldByName('FACE_ISU').AsString   :='03 - Ambos';
        end;

        cdsdestino.fieldByName('COD_SECAO_ISU').AsString  :=ZeraEsquerda(6,QOrigem.fieldByName('FAC_I_COD').AsString);


        codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD').AsString),nometipolog,codtipolog);
        if trim(codaux)<>'-1' then
        cdsdestino.fieldByName('COD_LOG_ISU').AsString        :=trim(QOrigem.fieldByname('LOG_I_COD').AsString);

        codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD').AsString));
        if trim(codaux)<>'-1' then
        cdsdestino.fieldByName('COD_BAI_ISU').AsString       :=codaux;

        cdsdestino.fieldByName('LOGIN_INC_ISU').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_ISU').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);



          QCadastro.Close;
          QCadastro.SQL.Text :=  ' select * '+
                                 ' from TRIFAC2 '+
                                 ' where LOG_I_COD='+QOrigem.fieldByName('LOG_I_COD').AsString+' and FAC_I_COD='+QOrigem.fieldByName('FAC_I_COD').AsString;


          QCadastro.Open;
          while not QCadastro.eof do begin

            /////////////////// caracteristicas dos imoveis/////////////////
            QVerifica.close;
            QVerifica.sql.text:='SELECT * FROM IP_CAD_DESDOCRT WHERE COD_EMP_DCR=1 AND COD_CRT_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_COD').AsString)+''' '+
                                ' AND COD_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_OPC').AsString)+'''';
            QVerifica.open;
            if not QVerifica.IsEmpty then
            begin
            cdsdestino1.close;
            sqlDestino1.commandText:='SELECT * FROM IP_SERVURBANOSCRT '+
                                     ' WHERE COD_EMP_ISC=1 AND COD_ISU_ISC='+IntToStr(item)+
                                     ' AND COD_CRT_ISC='''+ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_COD').AsString)+''' AND COD_DCR_ISC='''+ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString)+'''';
            cdsdestino1.open;
            if cdsdestino1.IsEmpty then
             cdsdestino1.append
            else
             cdsdestino1.edit;

            cdsdestino1.fieldByName('COD_EMP_ISC').AsString:='1';
            cdsdestino1.fieldByName('COD_ISU_ISC').Asinteger:=item;
            cdsdestino1.fieldByName('COD_CRT_ISC').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_COD').AsString);
            cdsdestino1.FieldByName('COD_DCR_ISC').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString);
            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);
            END;
          QCadastro.Next;
          end;




     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;





procedure TFPrincipal.ITBI;
var cont,erros:Integer;
begin

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    QVerifica.close;
    QVerifica.sql.Text:='DELETE FROM OU_ITBI ';
    QVerifica.execsql;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add( ' select ITBI.*,i_lanctos from bethadba.ITBI '+
                     ' left join bethadba.lanctos on lanctos.ano=itbi.ano and lanctos.i_itbis=itbi.i_itbis '
                    );
    QOrigem.Open;

    cdsdestino.close;
    sqlDestino.commandText:=' SELECT * FROM OU_ITBI '+
                                ' WHERE COD_EMP_OIT=1 '+
                                ' AND COD_OIT IS NULL ';
    cdsdestino.open;



    cont:=0;
    while not QOrigem.Eof do
    begin

     lbchave.Caption:=QOrigem.fieldByName('i_itbis').AsString;
     lbchave.update;

     inc(cont);
     lbitem.Caption:=IntToStr(cont);
     lbitem.update;

     QCadastro.Close;
     QCadastro.SQL.Text:='SELECT * FROM itbi_imoveis where i_itbis='+QOrigem.FieldByName('i_itbis').AsString+' and ano='+QOrigem.FieldByName('ano').AsString;
     QCadastro.Open;


     cdsdestino.append;
     cdsdestino.fieldByName('COD_EMP_OIT').AsString     :='1';
     cdsdestino.fieldByName('COD_OIT').AsInteger         :=cont;
     cdsdestino.fieldByName('DTACAD_OIT').value         :=QOrigem.fieldByName('data_itbi').value;
     cdsdestino.fieldByName('COD_CAD_OIT').value        :=ZeraEsquerda(9,QCadastro.fieldByName('i_imoveis').AsString);




     if QOrigem.FieldByName('itbi_rural').AsString='S' then
     cdsdestino.fieldByName('TIPO_IMVL_OIT').value      :='01 - RURAL'
     else
     cdsdestino.fieldByName('TIPO_IMVL_OIT').value      :='02 - URBANO';

     cdsdestino.fieldByName('LOCALIZACAO_OIT').value    :=QCadastro.fieldByName('localizacao').AsString;
     cdsdestino.fieldByName('NOME_PROPRI_OIT').value    :=QCadastro.fieldByName('denominacao').AsString;
     cdsdestino.fieldByName('INCRA_OIT').value          :=QCadastro.fieldByName('inscricao_incra').AsString;
     cdsdestino.fieldByName('COD_COMPR_OIT').value      :=ZeraEsquerda(9,QCadastro.fieldByName('i_compradores').AsString);
     cdsdestino.fieldByName('COD_CNT_OIT').value        :=ZeraEsquerda(9,QCadastro.fieldByName('i_vendedores').AsString);
     cdsdestino.fieldByName('NATUR_OPER_OIT').value     :='1';
     cdsdestino.fieldByName('DTA_OPER_OIT').value       :=QOrigem.fieldByName('data_transf').value;
     cdsdestino.fieldByName('VLR_OPER_OIT').value       :=QCadastro.fieldByName('valor_declarado').value;
     cdsdestino.fieldByName('VLR_MERCADO_OIT').value    :=QCadastro.fieldByName('valor_declarado').value;
     cdsdestino.fieldByName('ARETERRI_OIT').value       :=QCadastro.fieldByName('area_terr').value;
     cdsdestino.fieldByName('AREEDI_OIT').value         :=QCadastro.fieldByName('area_construcao').value;
     cdsdestino.fieldByName('VVTERRIT_OIT').value       :=QCadastro.fieldByName('valor_terr').value;
     cdsdestino.fieldByName('VVEDIFIC_OIT').value       :=QCadastro.fieldByName('valor_cons').value;
     cdsdestino.fieldByName('VFINANC_OIT').value        :=QCadastro.fieldByName('valor_Financ').value;
     cdsdestino.fieldByName('VNFINANC_OIT').value       :=QCadastro.fieldByName('valor_declarado').AsCurrency-QCadastro.fieldByName('valor_Financ').AsCurrency;
     cdsdestino.fieldByName('DTA_VENC_OIT').value       :=QOrigem.fieldByName('data_itbi').value;
     cdsdestino.fieldByName('NRO_PARC_OIT').value       :=1;
     cdsdestino.fieldByName('UNICA_OIT').value          :='N';

     cdsdestino.fieldByName('MENS_GUIA_OIT').value      :=QOrigem.fieldByName('comentario').AsString;
     cdsdestino.fieldByName('VALOR_OIT').value          :=QOrigem.fieldByName('itbi_final').AsString;
     cdsdestino.fieldByName('ALIQ_OPER_OIT').value      :=QOrigem.fieldByName('aliq_normal').AsString;
     cdsdestino.fieldByName('ALIQ_FINANC_OIT').value    :=QOrigem.fieldByName('aliq_financ').AsString;
     cdsdestino.fieldByName('ALIQ_NFINANC_OIT').value   :=QOrigem.fieldByName('aliq_normal').AsString;

     QVerifica.Close;
     QVerifica.SQL.Clear;
     QVerifica.SQL.Add('SELECT * FROM FI_BAIXACONVERSAO WHERE COD_EMP_CON=1 AND CODBARRA_CON='''+QOrigem.FieldByName('i_lanctos').AsString+''' AND ANO_CON='+QOrigem.FieldByName('ANO').AsString+' AND TIPO_CON=1');
     QVerifica.Open;
     if not QVerifica.IsEmpty then
     cdsdestino.fieldByName('COD_DIV_OIT').value        :=QVerifica.fieldByName('COD_DIV_CON').AsString;

     cdsdestino.fieldByName('PERCOPERACAO_OIT').value   :=QCadastro.fieldByName('perc_vendido').value;
     if (QCadastro.fieldByName('perc_vendido').AsCurrency>0) and (QCadastro.fieldByName('perc_vendido').AsCurrency<100) then
     cdsdestino.fieldByName('EHPARCIAL_OIT').value      :='S';

     cdsdestino.fieldByName('ISENTO_OIT').value         :='N';

     QVerifica.Close;
     QVerifica.SQL.Clear;
     QVerifica.SQL.Add('SELECT * FROM IP_CAD_IPTU WHERE COD_EMP_IPT=1 AND COD_IPT='''+ZeraEsquerda(9,QCadastro.fieldByName('i_imoveis').AsString)+'''');
     QVerifica.Open;
     cdsdestino.fieldByName('MATRICULA_OIT').value  :=QVerifica.fieldByName('MATRIC_IPT').value;
     cdsdestino.fieldByName('SETOR_OIT').value      :=QVerifica.fieldByName('SETOR_IPT').value;
     cdsdestino.fieldByName('QUADRA_OIT').value     :=QVerifica.fieldByName('QUADRA_IPT').value;
     cdsdestino.fieldByName('LOTE_OIT').value       :=QVerifica.fieldByName('LOTES_IPT').value;
     cdsdestino.fieldByName('UNIDADE_OIT').value    :=QVerifica.fieldByName('UNIDADE_IPT').value;
     cdsdestino.fieldByName('COD_TIP_OIT').value    :=QVerifica.fieldByName('COD_TIP_IPT').value;
     cdsdestino.fieldByName('COD_TIT_OIT').value    :=QVerifica.fieldByName('COD_TIT_IPT').value;
     cdsdestino.fieldByName('COD_LOG_OIT').value    :=QVerifica.fieldByName('COD_LOG_IPT').value;
     cdsdestino.fieldByName('NUMERO_OIT').value     :=QVerifica.fieldByName('NUMERO_IPT').value;
     cdsdestino.fieldByName('COMPLE_OIT').value     :=QVerifica.fieldByName('COMPLE_IPT').value;
     cdsdestino.fieldByName('CEP_OIT').value        :=QVerifica.fieldByName('CEP_IPT').value;
     cdsdestino.fieldByName('UF_OIT').value         :=QVerifica.fieldByName('UF_IPT').value;
     cdsdestino.fieldByName('COD_BAI_OIT').value    :=QVerifica.fieldByName('COD_BAI_IPT').value;
     cdsdestino.fieldByName('SETORL_OIT').value     :=QVerifica.fieldByName('SETORL_IPT').value;
     cdsdestino.fieldByName('QUADRAL_OIT').value    :=QVerifica.fieldByName('QUADRAL_IPT').value;
     cdsdestino.fieldByName('LOTEL_OIT').value      :=QVerifica.fieldByName('LOTEL_IPT').value;
     cdsdestino.fieldByName('UNIDADEL_OIT').value   :=QVerifica.fieldByName('UNIDADEL_IPT').value;
     cdsdestino.fieldByName('COD_LTO_OIT').value    :=QVerifica.fieldByName('COD_LTO_IPT').value;
     cdsdestino.ApplyUpdates(-1);





    QOrigem.Next;
    end;


    Conexao.Commit(TD);


end;



procedure TFPrincipal.CadastroImovel;
 var cont,erros,ncommit:Integer;
     codaux,codtipolog,nometipolog:String;
     auxvalor:Double;
begin


    lbFuncao.Caption:='CadastroImovel';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.sql.add('select count(*) as qtd from TRIIMO ');
    QOrigem.Open;
    lbtotal.Caption:=QOrigem.FieldByName('QTD').AsString;
    lbtotal.Update;
    ProgressBar1.max:=QOrigem.FieldByName('QTD').AsInteger;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * from TRIIMO  ');
    QOrigem.Open;



    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    cont:=0;
    while not QOrigem.Eof do
    begin
      lbchave.caption:=QOrigem.fieldByname('IMO_I_COD').AsString;
      lbchave.update;

      inc(cont);
      inc(ncommit);
      lbItem.Caption:=IntToStr(cont);
      lbItem.update;
      ProgressBar1.position:=cont;
      cdsdestino.close;
      sqlDestino.commandText:='SELECT * FROM IP_CAD_IPTU where cod_emp_ipt=1 and cod_IPT='''+ZeraEsquerda(9,QOrigem.fieldByname('IMO_I_COD').AsString)+'''';
      cdsdestino.open;
      if cdsdestino.IsEmpty then
      cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.fieldByName('COD_EMP_IPT').AsString:='1';
      cdsdestino.fieldByName('COD_STR_IPT').AsString:='0001';
      cdsdestino.fieldByName('LOGIN_INC_IPT').AsString:='CONVERSAO';
      cdsdestino.fieldByName('ANO_STR_IPT').AsString:=FormatDateTime('YYYY', now);
      cdsdestino.fieldByName('COD_IPT').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('IMO_I_COD').AsString);
      cdsdestino.fieldByName('MATRIC_IPT').AsString :=QOrigem.fieldByname('IMO_A_INSCRICAO_01').AsString;


      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add('SELECT * FROM PROPIMOV WHERE IMO_I_COD='+QOrigem.FieldByName('IMO_I_COD').AsString+' AND PRI_D_FIM IS NULL AND PRI_A_RES=''1'' ');
      QCadastro.Open;
      cdsdestino.fieldByName('COD_CNT_IPT').AsString:=ZeraEsquerda(9,QCadastro.fieldByname('CNTI_I_CON').AsString);

      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add('SELECT * FROM PROPIMOV WHERE IMO_I_COD='+QOrigem.FieldByName('IMO_I_COD').AsString+' AND PRI_D_FIM IS NULL AND PRI_A_RES=''3'' ');
      QCadastro.Open;
      if not QCadastro.IsEmpty then
      cdsdestino.fieldByName('COD_CNTC_IPT').AsString:=ZeraEsquerda(9,QCadastro.fieldByname('CNTI_I_CON').AsString);


      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add('SELECT * FROM PROPIMOV WHERE IMO_I_COD='+QOrigem.FieldByName('IMO_I_COD').AsString+' AND PRI_D_FIM IS NULL AND PRI_A_RES=''6'' ');
      QCadastro.Open;
      if not QCadastro.IsEmpty then
      cdsdestino.fieldByName('COD_CNTP_IPT').AsString:=ZeraEsquerda(9,QCadastro.fieldByname('CNTI_I_CON').AsString);


      if trim(QOrigem.fieldByname('CNTI_I_IMOBILIARIA').AsString)<>'' then
      cdsdestino.fieldByName('COD_IMOBILIARIA_IPT').AsString:=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_IMOBILIARIA').AsString);

       codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD').AsString),nometipolog,codtipolog);
       if trim(codaux)<>'-1' then
       cdsdestino.fieldByName('COD_LOG_IPT').AsString        :=trim(QOrigem.fieldByname('LOG_I_COD').AsString);
       if trim(codtipolog)<>'' then
       cdsdestino.fieldByName('COD_TIP_IPT').value           :=codtipolog;

       codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD').AsString));
       if trim(codaux)<>'-1' then
       cdsdestino.fieldByName('COD_BAI_IPT').AsString       :=trim(QOrigem.fieldByname('BAI_I_COD').AsString);

       cdsdestino.fieldByName('NUMERO_IPT').AsString:=QOrigem.fieldByname('IMO_A_NUM').AsString;

       codaux := '';
       if trim(QOrigem.FieldByName('IMO_A_AUX').AsString) <> '' then
        codaux := codaux +' '+ trim(QOrigem.FieldByName('IMO_A_AUX').AsString);

       if trim(QOrigem.FieldByName('IMO_A_BLOCO').AsString) <> '' then
        codaux := codaux +'Bloco '+ trim(QOrigem.FieldByName('IMO_A_BLOCO').AsString);

       if trim(QOrigem.FieldByName('IMO_A_ANDAR').AsString) <> '' then
        codaux := codaux +'Andar '+ trim(QOrigem.FieldByName('IMO_A_ANDAR').AsString);

       if trim(QOrigem.FieldByName('IMO_A_CONJ').AsString) <> '' then
        codaux := codaux +'Conjunto '+ trim(QOrigem.FieldByName('IMO_A_CONJ').AsString);

       if trim(QOrigem.FieldByName('IMO_A_SALA').AsString) <> '' then
        codaux := codaux +'Sala '+ trim(QOrigem.FieldByName('IMO_A_SALA').AsString);

       if trim(QOrigem.FieldByName('IMO_A_APT').AsString) <> '' then
        codaux := codaux +'Apto '+ trim(QOrigem.FieldByName('IMO_A_APT').AsString);

       cdsdestino.fieldByName('COMPLE_IPT').AsString:=codaux;
       cdsdestino.fieldByName('CEP_IPT').AsString   :=Tiracaracter(QOrigem.fieldByname('IMO_A_CEP').AsString);



        if trim(QOrigem.FieldByName('LOG_I_COD_ENT').AsString)='' then begin
         cdsdestino.fieldByName('LOGRA_IPT').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('IMO_A_LOGRADOURO_ENT').AsString);
         codaux:=VerificaNomeLogradouro(trim(QOrigem.fieldByname('IMO_A_LOGRADOURO_ENT').AsString),nometipolog,codtipolog);
         if trim(codaux)<>'-1' then begin
          cdsdestino.fieldByName('COD_LOGE_IPT').AsString        :=codaux;

          if trim(codtipolog)<>'' then
          cdsdestino.fieldByName('COD_TIPE_IPT').value           :=codtipolog;
          if trim(nometipolog)<>'' then
          cdsdestino.fieldByName('TIPOLOGE_IPT').AsString        :=nometipolog;
         end;
        end
        else begin
         codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD_ENT').AsString),nometipolog,codtipolog);

         if trim(codaux)<>'-1' then begin
         cdsdestino.fieldByName('COD_LOGE_IPT').AsString        :=trim(QOrigem.fieldByname('LOG_I_COD_ENT').AsString);
         cdsdestino.fieldByName('LOGRA_IPT').AsString           :=TrocaAspasSimples(codaux);
         end;

         if trim(codtipolog)<>'' then
         cdsdestino.fieldByName('COD_TIPE_IPT').value           :=codtipolog;
         if trim(nometipolog)<>'' then
         cdsdestino.fieldByName('TIPOLOGE_IPT').AsString        :=nometipolog;
        end;

        if trim(QOrigem.FieldByName('BAI_I_COD_ENT').AsString)='' then begin
         cdsdestino.fieldByName('BAIRRO_IPT').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('IMO_A_BAIRRO_ENT').AsString);
         codaux:=VerificaNomeBairro(trim(QOrigem.fieldByname('IMO_A_BAIRRO_ENT').AsString));
         if trim(codaux)<>'-1' then
         cdsdestino.fieldByName('COD_BAIE_IPT').AsString        :=codaux;
        end
        else begin
         codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD_ENT').AsString));
         if trim(codaux)<>'-1' then begin
         cdsdestino.fieldByName('COD_BAIE_IPT').AsString       :=trim(QOrigem.fieldByname('BAI_I_COD_ENT').AsString);
         cdsdestino.fieldByName('BAIRRO_IPT').AsString         :=codaux;
         end;
        end;


        if trim(QOrigem.FieldByName('LOG_I_COD_ENT').AsString) <> '' then begin
         QCadastro.Close;
         QCadastro.SQL.Clear;
         QCadastro.SQL.Add(' SELECT CNTI_I_IBGE '+
                          ' FROM ASP02_LOGRADOURO '+
                          ' WHERE LOG_I_COD='+QOrigem.FieldByName('LOG_I_COD_ENT').AsString
                          );
         QCadastro.Open;
        end
        else begin
         QCadastro.Close;
         QCadastro.SQL.Clear;
         QCadastro.SQL.Add(' SELECT CNTI_I_IBGE '+
                          ' FROM ASP02_LOGRADOURO '+
                          ' WHERE LOG_I_COD=-1'
                          );
         QCadastro.Open;
        end;

        if trim(QCadastro.fieldByName('CNTI_I_IBGE').AsString)='' then begin
          codaux:=VerificaNomeCidade(QOrigem.fieldByname('IMO_A_MUNICIPIO_ENT').AsString,QOrigem.fieldByname('IMO_A_UF_ENT').AsString);
          if trim(codaux)<>'-1' then
          cdsdestino.fieldByName('COD_CIDE_IPT').AsString        :=codaux;
        end
        else
        cdsdestino.fieldByName('COD_CIDE_IPT').AsString        :=ZeraEsquerda(7,trim(QCadastro.fieldByname('CNTI_I_IBGE').AsString));




         cdsdestino.fieldByName('NUMEROE_IPT').AsString:=QOrigem.fieldByname('IMO_A_NUM_ENT').AsString;

         codaux := '';
         if trim(QOrigem.FieldByName('IMO_A_AUX_ENT').AsString) <> '' then
          codaux := codaux +' '+ trim(QOrigem.FieldByName('IMO_A_AUX_ENT').AsString);

         if trim(QOrigem.FieldByName('IMO_A_BLOCO_ENT').AsString) <> '' then
          codaux := codaux +'Bloco '+ trim(QOrigem.FieldByName('IMO_A_BLOCO_ENT').AsString);

         if trim(QOrigem.FieldByName('IMO_A_APT_ENT').AsString) <> '' then
          codaux := codaux +'Apto '+ trim(QOrigem.FieldByName('IMO_A_APT_ENT').AsString);


         if trim(QOrigem.FieldByName('IMO_A_SALA_ENT').AsString) <> '' then
          codaux := codaux +'Sala '+ trim(QOrigem.FieldByName('IMO_A_SALA_ENT').AsString);

         if trim(QOrigem.FieldByName('IMO_A_ANDAR_ENT').AsString) <> '' then
          codaux := codaux +'Andar '+ trim(QOrigem.FieldByName('IMO_A_ANDAR_ENT').AsString);

         if trim(QOrigem.FieldByName('IMO_A_CONJ_ENT').AsString) <> '' then
          codaux := codaux +'Conjunto '+ trim(QOrigem.FieldByName('IMO_A_CONJ_ENT').AsString);

         cdsdestino.fieldByName('COMPLEE_IPT').AsString:=TrocaAspasSimples(codaux);
         cdsdestino.fieldByName('CEPE_IPT').AsString   :=Tiracaracter(QOrigem.fieldByname('IMO_A_CEP_ENT').AsString);


       if QOrigem.FieldByName('END_A_TIP_ENT').AsString='0' then begin
         codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD').AsString),nometipolog,codtipolog);
         if trim(codaux)<>'-1' then begin
         cdsdestino.fieldByName('TIPOLOGE_IPT').AsString:=nometipolog;
         cdsdestino.fieldByName('COD_TIPE_IPT').value:=cdsdestino.fieldByName('COD_TIP_IPT').value;
         cdsdestino.fieldByName('COD_LOGE_IPT').value:=cdsdestino.fieldByName('COD_LOG_IPT').value;
         cdsdestino.fieldByName('LOGRA_IPT').AsString   :=codaux;
         end;
         codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD').AsString));
         if trim(codaux)<>'-1' then begin
         cdsdestino.fieldByName('COD_BAIE_IPT').value:=cdsdestino.fieldByName('COD_BAI_IPT').value;
         cdsdestino.fieldByName('BAIRRO_IPT').AsString:=codaux;
         end;

         cdsdestino.fieldByName('NUMEROE_IPT').value:=cdsdestino.fieldByName('NUMERO_IPT').value;
         cdsdestino.fieldByName('CEPE_IPT').value   :=cdsdestino.fieldByName('CEP_IPT').value;
         cdsdestino.fieldByName('COMPLEE_IPT').value:=cdsdestino.fieldByName('COMPLE_IPT').value;
         cdsdestino.fieldByName('COD_CIDE_IPT').AsString        :=ZeraEsquerda(7,codcidade);
         cdsdestino.fieldByName('UFE_IPT').AsString             :=ufcidade;

       end
       else
       if (QOrigem.FieldByName('END_A_TIP_ENT').AsString='1') or (QOrigem.FieldByName('END_A_TIP_ENT').AsString='2') then begin
          QVerifica.Close;
          QVerifica.sql.Clear;
          QVerifica.sql.Add('SELECT COD_LOG_CNT,COD_TIP_CNT,TIPOLOG_CNT,NOM_LOG_CNT,COD_BAI_CNT,NOM_BAI_CNT,COD_CID_CNT,UF_CNT,NUMERO_CNT,COMPLE_CNT,CEP_CNT '+
                            'FROM GR_CONTRIBUINTES '+
                            ' WHERE COD_EMP_CNT=1 AND COD_CNT='''+cdsdestino.fieldByName('COD_CNT_IPT').AsString+''''
                            );
          QVerifica.open;
          cdsdestino.fieldByName('TIPOLOGE_IPT').value:=QVerifica.fieldByName('TIPOLOG_CNT').value;;
          cdsdestino.fieldByName('COD_TIPE_IPT').value   :=QVerifica.fieldByName('COD_TIP_CNT').value;
          cdsdestino.fieldByName('COD_LOGE_IPT').value   :=QVerifica.fieldByName('COD_LOG_CNT').value;
          cdsdestino.fieldByName('LOGRA_IPT').value      :=QVerifica.fieldByName('NOM_LOG_CNT').value;
          cdsdestino.fieldByName('COD_BAIE_IPT').value   :=QVerifica.fieldByName('COD_BAI_CNT').value;
          cdsdestino.fieldByName('BAIRRO_IPT').value     :=QVerifica.fieldByName('NOM_BAI_CNT').value;
          cdsdestino.fieldByName('NUMEROE_IPT').value    :=QVerifica.fieldByName('NUMERO_CNT').value;
          cdsdestino.fieldByName('CEPE_IPT').value       :=QVerifica.fieldByName('CEP_CNT').value;
          cdsdestino.fieldByName('COMPLEE_IPT').value    :=QVerifica.fieldByName('COMPLE_CNT').value;
          cdsdestino.fieldByName('COD_CIDE_IPT').value   :=QVerifica.fieldByName('COD_CID_CNT').value;
          cdsdestino.fieldByName('UFE_IPT').value        :=QVerifica.fieldByName('UF_CNT').value;
       end
       else
       if (QOrigem.FieldByName('END_A_TIP_ENT').AsString='3') or (QOrigem.FieldByName('END_A_TIP_ENT').AsString='4') then begin
          QVerifica.Close;
          QVerifica.sql.Clear;
          QVerifica.sql.Add('SELECT COD_LOG_CNT,COD_TIP_CNT,TIPOLOG_CNT,NOM_LOG_CNT,COD_BAI_CNT,NOM_BAI_CNT,COD_CID_CNT,UF_CNT,NUMERO_CNT,COMPLE_CNT,CEP_CNT '+
                            'FROM GR_CONTRIBUINTES '+
                            ' WHERE COD_EMP_CNT=1 AND COD_CNT='''+cdsdestino.fieldByName('COD_CNTC_IPT').AsString+''''
                            );
          QVerifica.open;
          cdsdestino.fieldByName('TIPOLOGE_IPT').value:=QVerifica.fieldByName('TIPOLOG_CNT').value;;
          cdsdestino.fieldByName('COD_TIPE_IPT').value   :=QVerifica.fieldByName('COD_TIP_CNT').value;
          cdsdestino.fieldByName('COD_LOGE_IPT').value   :=QVerifica.fieldByName('COD_LOG_CNT').value;
          cdsdestino.fieldByName('LOGRA_IPT').value   :=QVerifica.fieldByName('NOM_LOG_CNT').value;
          cdsdestino.fieldByName('COD_BAIE_IPT').value   :=QVerifica.fieldByName('COD_BAI_CNT').value;
          cdsdestino.fieldByName('BAIRRO_IPT').value  :=QVerifica.fieldByName('NOM_BAI_CNT').value;
          cdsdestino.fieldByName('NUMEROE_IPT').value    :=QVerifica.fieldByName('NUMERO_CNT').value;
          cdsdestino.fieldByName('CEPE_IPT').value       :=QVerifica.fieldByName('CEP_CNT').value;
          cdsdestino.fieldByName('COMPLEE_IPT').value    :=QVerifica.fieldByName('COMPLE_CNT').value;
          cdsdestino.fieldByName('COD_CIDE_IPT').value   :=QVerifica.fieldByName('COD_CID_CNT').value;
          cdsdestino.fieldByName('UFE_IPT').value        :=QVerifica.fieldByName('UF_CNT').value;
       end
       else
       if QOrigem.FieldByName('END_A_TIP_ENT').AsString='5' then begin
          QVerifica.Close;
          QVerifica.sql.Clear;
          QVerifica.sql.Add('SELECT COD_LOG_CNT,COD_TIP_CNT,TIPOLOG_CNT,NOM_LOG_CNT,COD_BAI_CNT,NOM_BAI_CNT,COD_CID_CNT,UF_CNT,NUMERO_CNT,COMPLE_CNT,CEP_CNT '+
                            'FROM GR_CONTRIBUINTES '+
                            ' WHERE COD_EMP_CNT=1 AND COD_CNT='''+cdsdestino.fieldByName('COD_IMOBILIARIA_IPT').AsString+''''
                            );
          QVerifica.open;
          cdsdestino.fieldByName('TIPOLOGE_IPT').value:=QVerifica.fieldByName('TIPOLOG_CNT').value;;
          cdsdestino.fieldByName('COD_TIPE_IPT').value   :=QVerifica.fieldByName('COD_TIP_CNT').value;
          cdsdestino.fieldByName('COD_LOGE_IPT').value   :=QVerifica.fieldByName('COD_LOG_CNT').value;
          cdsdestino.fieldByName('LOGRA_IPT').value   :=QVerifica.fieldByName('NOM_LOG_CNT').value;;
          cdsdestino.fieldByName('COD_BAIE_IPT').value   :=QVerifica.fieldByName('COD_BAI_CNT').value;
          cdsdestino.fieldByName('BAIRRO_IPT').value  :=QVerifica.fieldByName('NOM_BAI_CNT').value;
          cdsdestino.fieldByName('NUMEROE_IPT').value    :=QVerifica.fieldByName('NUMERO_CNT').value;
          cdsdestino.fieldByName('CEPE_IPT').value       :=QVerifica.fieldByName('CEP_CNT').value;
          cdsdestino.fieldByName('COMPLEE_IPT').value    :=QVerifica.fieldByName('COMPLE_CNT').value;
          cdsdestino.fieldByName('COD_CIDE_IPT').value   :=QVerifica.fieldByName('COD_CID_CNT').value;
          cdsdestino.fieldByName('UFE_IPT').value        :=QVerifica.fieldByName('UF_CNT').value;
       end;


       //se nao existir defini��o de endere�o de correspondencia jogo do imovel
       if (trim(cdsdestino.fieldByName('LOGRA_IPT').AsString)='') then begin
         codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD').AsString),nometipolog,codtipolog);
         if trim(codaux)<>'-1' then begin
         cdsdestino.fieldByName('TIPOLOGE_IPT').AsString:=nometipolog;
         cdsdestino.fieldByName('COD_TIPE_IPT').value:=cdsdestino.fieldByName('COD_TIP_IPT').value;
         cdsdestino.fieldByName('COD_LOGE_IPT').value:=cdsdestino.fieldByName('COD_LOG_IPT').value;
         cdsdestino.fieldByName('LOGRA_IPT').AsString   :=codaux;
         end;
         codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD').AsString));
         if trim(codaux)<>'-1' then begin
         cdsdestino.fieldByName('COD_BAIE_IPT').value:=cdsdestino.fieldByName('COD_BAI_IPT').value;
         cdsdestino.fieldByName('BAIRRO_IPT').AsString:=codaux;
         end;
         cdsdestino.fieldByName('NUMEROE_IPT').value:=cdsdestino.fieldByName('NUMERO_IPT').value;
         cdsdestino.fieldByName('CEPE_IPT').value   :=cdsdestino.fieldByName('CEP_IPT').value;
         cdsdestino.fieldByName('COMPLEE_IPT').value:=cdsdestino.fieldByName('COMPLE_IPT').value;
       end;


       //cdsdestino.fieldByName('RESPCORRESP_IPT').AsString             :=trim(QCadastro.fieldByname('nome').AsString);
       //cdsdestino.fieldByName('CNPJCORRESP_IPT').AsString             :=trim(QCadastro.fieldByname('cpf_cnpj').AsString);

      if trim(QOrigem.FieldByName('IMO_A_INSCRICAO_01').AsString)<>'' then
      cdsdestino.fieldByName('COD_DST_IPT').AsString:=ZeraEsquerda(4,copy(QOrigem.fieldByname('IMO_A_INSCRICAO_01').AsString,1,2));

      if trim(QOrigem.FieldByName('LOT_I_COD').AsString)<>'' then
      cdsdestino.fieldByName('COD_LTO_IPT').AsString:=ZeraEsquerda(4,QOrigem.fieldByName('LOT_I_COD').AsString);

      if trim(QOrigem.fieldByname('LOT_I_COD2').AsString)<>'' then
      cdsdestino.fieldByName('COD_IEP_IPT').AsString:=QOrigem.fieldByname('LOT_I_COD2').AsString;

      cdsdestino.fieldByName('SETOR_IPT').AsString  :=copy(QOrigem.fieldByname('IMO_A_INSCRICAO_01').AsString,3,2);
      cdsdestino.fieldByName('QUADRA_IPT').AsString :=copy(QOrigem.fieldByname('IMO_A_INSCRICAO_01').AsString,5,3);
      cdsdestino.fieldByName('LOTES_IPT').AsString  :=copy(QOrigem.fieldByname('IMO_A_INSCRICAO_01').AsString,8,4);
      cdsdestino.fieldByName('UNIDADE_IPT').AsString:=copy(QOrigem.fieldByname('IMO_A_INSCRICAO_01').AsString,12,3);

      cdsdestino.fieldByName('SETORL_IPT').AsString :=copy(QOrigem.fieldByname('IMO_A_INSCRICAO_01').AsString,3,2);
      cdsdestino.fieldByName('QUADRAL_IPT').AsString:=QOrigem.fieldByname('IMO_A_QUA').AsString;
      cdsdestino.fieldByName('LOTEL_IPT').AsString  :=QOrigem.fieldByname('IMO_A_LOT').AsString;

      //cdsdestino.fieldByName('LATITUDE_IPT').AsString :=QOrigem.fieldByname('latitude').AsString;
      //cdsdestino.fieldByName('LONGITUDE_IPT').AsString:=QOrigem.fieldByname('longitude').AsString;

      {
      if (QOrigem.FieldByName('lado').AsString='D') or (QOrigem.FieldByName('lado').AsString='P')  then
      cdsdestino.fieldByName('FACE_IPT').AsString   :='01 - Direita'
      else
      if (QOrigem.FieldByName('lado').AsString='E') or (QOrigem.FieldByName('lado').AsString='I')  then
      cdsdestino.fieldByName('FACE_IPT').AsString   :='02 - Esquerda'
      else
      }
      cdsdestino.fieldByName('FACE_IPT').AsString   :='03 - Ambos';

      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add(' SELECT FAC_I_COD FROM TRIIPTUF '+
                        ' WHERE IMO_I_COD='+QOrigem.FieldByName('imo_i_cod').AsString+' AND CON_S_TIP=1 '
                        );
      QCadastro.Open;
      if not QCadastro.IsEmpty then
      cdsdestino.fieldByName('SECAO_IPT').AsString  :=ZeraEsquerda(6,QCadastro.fieldByName('FAC_I_COD').AsString)
      else
      cdsdestino.fieldByName('SECAO_IPT').value  :=null;

      cdsdestino.fieldByName('MATRICULA_IPT').AsString  :=QOrigem.fieldByname('IMO_A_MAT_MAT').AsString;


      cdsdestino.fieldByName('DATA_IPT').AsString       :=QOrigem.fieldByname('IMO_D_TRANS_DAT').AsString;
      cdsdestino.fieldByName('FOLHAS_IPT').AsString     :=QOrigem.fieldByname('IMO_A_MAT_FLS').AsString;
      cdsdestino.fieldByName('LIVRO_IPT').AsString      :=QOrigem.fieldByname('IMO_A_MAT_LIV').AsString;
      cdsdestino.fieldByName('DTA_MATRIC_IPT').AsString :=QOrigem.fieldByname('IMO_D_MAT_DAT').AsString;
      cdsdestino.fieldByName('ESPECIE_IPT').AsString    :=QOrigem.fieldByname('IMO_A_TRANSCRICAO').AsString;
      cdsdestino.fieldByName('COD_ANTIGO_IPT').AsString :=QOrigem.fieldByname('IMO_A_MAT_REG').AsString;

      if QOrigem.FieldByName('IMO_S_ESC').AsString='1' then
      cdsdestino.fieldByName('ESCRITURADO_IPT').AsString :='S'
      else
      cdsdestino.fieldByName('ESCRITURADO_IPT').AsString :='N';




      //QCadastro.close;
      //QCadastro.SQL.Clear;
      //QCadastro.SQL.Add('SELECT OCO_A_PRD FROM TRIOCO where OCO_S_COD='+QOrigem.FieldByName('OCO_S_COD').AsString+' and OCO_S_UTI=4');
      //QCadastro.Open;

      if (QOrigem.FieldByName('OCO_S_COD').AsString<>'21') then
       cdsdestino.FieldByName('COD_COB_IPT').AsString:=QOrigem.FieldByName('OCO_S_COD').AsString
      else
      begin
        cdsdestino.FieldByName('COD_COB_IPT').AsString:='0';

        QCadastro.Close;
        QCadastro.SQL.Clear;
        QCadastro.sql.add(' SELECT ISE_A_TIPO,ISE_D_FIM,ISE_A_PROC '+
                         ' FROM TRIISEN '+
                         ' WHERE IMO_I_COD = '+QOrigem.fieldByName('IMO_I_COD').AsString+
                         ' AND (ISE_D_FIM IS NULL or ISE_D_FIM>='''+InverteData(DateToSTr(date))+''')'
                        );
        QCadastro.Open;
        if not QCadastro.IsEmpty then begin

        if QCadastro.fieldByName('ISE_A_TIPO').AsString='A' then
        cdsdestino.FieldByName('COD_COB_IPT').AsString:='10'
        else
        if QCadastro.fieldByName('ISE_A_TIPO').AsString='D' then
        cdsdestino.FieldByName('COD_COB_IPT').AsString:='11'
        else
        cdsdestino.FieldByName('COD_COB_IPT').AsString:=QCadastro.fieldByName('ISE_A_TIPO').AsString;

        cdsdestino.FieldByName('DATAISENCAO_IPT').value:=QCadastro.fieldByName('ISE_D_FIM').value;
        cdsdestino.FieldByName('PROCESSO_IPT').value  :=QCadastro.fieldByName('ISE_A_PROC').value;
        end;
      end;


      cdsdestino.fieldByName('DATACAD_IPT').value      :=QOrigem.FieldByName('IMO_D_CAD').value;
      cdsdestino.fieldByName('DATAALTE_IPT').value        :=QOrigem.FieldByName('IMO_D_ANO').value;
      cdsdestino.fieldByName('HISTO_IPT').value           :=QOrigem.FieldByName('IMO_M_DES').value;

      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add('select sum(CON_N_AREA) as area, sum(CON_N_FRACAO) as fracao '+
                        'from TRIIPTUA '+
                        'where imo_i_cod='+QOrigem.FieldByName('imo_i_cod').AsString
                        );
      QCadastro.Open;
      cdsdestino.fieldByName('TOTAREAS_EDIF_IPT').value   :=QCadastro.FieldByName('area').value;


      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add('select TOTAL_AREA_EDIFICADA from PR_AREA_EDIFICADA ('+QOrigem.FieldByName('imo_i_cod').AsString+') ');
      QCadastro.Open;
      if QCadastro.fieldByName('TOTAL_AREA_EDIFICADA').AsCurrency>0 then
      cdsdestino.fieldByName('TOTAREAS_EDIF_IPT').value   :=QCadastro.FieldByName('TOTAL_AREA_EDIFICADA').value;


      cdsdestino.fieldByName('FRACAOIDEAL_IPT').value     :=QOrigem.FieldByName('IMO_N_FRA').value;
      cdsdestino.fieldByName('VVTERRIT_IPT').value        :=QOrigem.FieldByName('IMO_N_VVT').value;
      cdsdestino.fieldByName('VVTEXEC_IPT').value         :=0;
      cdsdestino.fieldByName('VVEDIFIC_IPT').value        :=QOrigem.FieldByName('IMO_N_VVC').value;

      cdsdestino.ApplyUpdates(-1);

     if ncommit=1000 then begin
      Conexao.Commit(TD);
      if not Conexao.InTransaction then Conexao.StartTransaction(TD);
      ncommit:=0;
     end;

     QOrigem.Next;
    end;

    Conexao.Commit(TD);
end;


procedure TFPrincipal.Confrontantes;
var item: Integer;
begin
    lbFuncao.Caption:='Confrontantes ';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * '+
                    'FROM TRIIPTUL ');
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CADCONFRONTANTES '+
                                ' WHERE COD_EMP_IMB=1 AND COD_IPT_ICF='''+ZeraEsquerda(9,QOrigem.fieldByName('IMO_I_COD').AsString)+''' '+
                                ' AND COD_IPTC_ICF='''+ZeraEsquerda(9,QOrigem.fieldByName('IMO_I_IMO').AsString)+''' ';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_IFC').AsInteger  :=1;
        cdsdestino.fieldByName('COD_IPT_ICF').AsString   :=ZeraEsquerda(9,QOrigem.fieldByname('IMO_I_COD').AsString);
        cdsdestino.fieldByName('COD_IPTC_ICF').AsString   :=ZeraEsquerda(9,QOrigem.fieldByname('IMO_I_IMO').AsString);

        if QOrigem.FieldByName('CON_I_COD').AsString='1' then
        cdsdestino.fieldByName('COD_IPT_ICF').AsString   :='FRENTE'
        else
        if QOrigem.FieldByName('CON_I_COD').AsString='2' then
        cdsdestino.fieldByName('COD_IPT_ICF').AsString   :='DIREITA'
        else
        if QOrigem.FieldByName('CON_I_COD').AsString='3' then
        cdsdestino.fieldByName('COD_IPT_ICF').AsString   :='ESQUERDA'
        else
        if QOrigem.FieldByName('CON_I_COD').AsString='4' then
        cdsdestino.fieldByName('COD_IPT_ICF').AsString   :='FUNDOS';

        //'CURVA DIREITA';'CURVA ESQUERDA';


        cdsdestino.fieldByName('LOGIN_INC_ICF').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_ICF').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.CadAreaTerritorial;
 var cont,erros,codare,codrel,ncommit:Integer;
 receita,aux:String;
 area:Currency;
begin

    lbFuncao.Caption:='CadAreaTerritorial';
    lbFuncao.update;


    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('delete from IP_REL_AREAS where COD_EMP_REL=1 AND TP_ARE_REL=''T'' ');
    QVerifica.execsql;

    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('delete from IP_CAD_AREAS WHERE COD_EMP_ARE=1 AND TP_ARE=''T'' ');
    QVerifica.execsql;

    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.sql.add('select count(*) as qtd from TRIIMO ' );
    QOrigem.Open;

    lbTotal.caption:=QOrigem.fieldByname('qtd').AsString;
    lbTotal.update;
    ProgressBar1.max:=QOrigem.fieldByname('qtd').AsInteger;
    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.sql.add('select * from TRIIMO ');
    QOrigem.Open;


    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('select max(cod_are) as qtd from IP_CAD_AREAS ');
    QVerifica.Open;
    codare:=QVerifica.FieldByName('qtd').AsInteger;

    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('select max(cod_rel) as qtd from IP_REL_AREAS ');
    QVerifica.Open;
    codrel:=QVerifica.FieldByName('qtd').AsInteger;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    ncommit:=0;

    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM IP_CAD_AREAS WHERE COD_EMP_ARE=1 AND COD_ARE=-1';
    cdsdestino.open;

    cdsdestino1.close;
    sqlDestino1.commandText:='SELECT * FROM IP_REL_AREAS where cod_emp_rel=1 AND COD_rel=-1';
    cdsdestino1.open;


    cont:=0;
    while not QOrigem.Eof do
    begin
      lbchave.caption:=QOrigem.fieldByname('imo_i_cod').AsString;
      lbchave.update;
      inc(ncommit);
      ProgressBar1.position:=cont;
      inc(cont);
      lbItem.Caption:=IntToStr(cont);
      lbItem.update;


      cdsdestino.append;
      cdsdestino.fieldByName('COD_EMP_ARE').AsString   :='1';
      codare:=codare+1;
      cdsdestino.fieldByName('COD_ARE').Asinteger      :=codare;
      cdsdestino.fieldByName('TP_ARE').AsString        :='T';
      cdsdestino.fieldByName('COD_IPT_ARE').AsString   :=ZeraEsquerda(9,QOrigem.fieldByname('imo_i_cod').AsString);


      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add(' SELECT CAR_S_OPC FROM TRIIPTUC '+
                        ' WHERE IMO_I_COD='+QOrigem.FieldByName('imo_i_cod').AsString+' AND CAR_S_COD='+codzoneamento+' AND CAR_D_FIM IS NULL '
                        );
      QCadastro.Open;
      cdsdestino.fieldByName('COD_ZNA_ARE').AsString   :=ZeraEsquerda(5,QCadastro.FieldByName('CAR_S_OPC').AsString);
      cdsdestino.fieldByName('COD_ZNA_ARE').AsString   :=ZeraEsquerda(5,QOrigem.fieldByName('BAI_I_COD').AsString);


      cdsdestino.fieldByName('TP_ZNA_ARE').AsString    :='02 - Zoneamento';
      cdsdestino.fieldByName('DESCRI_ARE').AsString    :='Zona Fiscal Territorial';
      cdsdestino.fieldByName('PRINCIPAL_ARE').AsString :='S';

      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add(' SELECT * FROM TRIIPTUF '+
                        ' WHERE IMO_I_COD='+QOrigem.FieldByName('imo_i_cod').AsString+' AND CON_S_TIP=1 '
                        );
      QCadastro.Open;

      cdsdestino.fieldByName('MTESTADA_ARE').value    :=QCadastro.FieldByName('CON_N_VAL').value;
      cdsdestino.fieldByName('MTESTATAXA_ARE').value  :=QCadastro.FieldByName('CON_N_VAL').value;

      cdsdestino.fieldByName('ARETER_ARE').value      :=QOrigem.FieldByName('IMO_N_ARE').value;
      cdsdestino.fieldByName('PROFUND_ARE').value     :=QCadastro.FieldByName('CON_N_FUNDO').value;
      cdsdestino.FieldByName('LESQUERDA_ARE').value   :=QCadastro.FieldByName('CON_N_LESQUERDO').value;
      cdsdestino.FieldByName('LDIREITA_ARE').value    :=QCadastro.FieldByName('CON_N_LDIREITO').value;


      cdsdestino.post;
      cdsdestino.ApplyUpdates(-1);




          QCadastro.Close;
          QCadastro.SQL.Text := ' select * '+
                                ' from TRIIPTUC '+
                                ' where imo_i_cod='+QOrigem.FieldByName('imo_i_cod').AsString+' and not car_s_cod in ('+codzoneamento+','+codedificacao+') AND CAR_D_FIM IS NULL ';

          QCadastro.Open;

          while not QCadastro.eof do begin

            /////////////////// caracteristicas dos imoveis/////////////////
            QVerifica.close;
            QVerifica.sql.text:='SELECT * FROM IP_CAD_DESDOCRT WHERE COD_EMP_DCR=1 AND COD_CRT_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('car_s_cod').AsString)+''' '+
                                ' AND COD_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_OPC').AsString)+'''';
            QVerifica.open;
            if not QVerifica.IsEmpty then
            begin
            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('IMO_I_COD').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('car_s_cod').AsString);
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString);
            cdsdestino1.fieldByName('QTD_REL').AsString    :=QCadastro.FieldByName('CAR_N_QTD').AsString;
            cdsdestino1.fieldByName('DATA_REL').value      :=QCadastro.FieldByName('CAR_D_INI').value;
            cdsdestino1.fieldByName('OBS_REL').value       :=QCadastro.FieldByName('CAR_D_FIM').value;

            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);
            END;
          QCadastro.Next;
          end;




          QCadastro.Close;
          QCadastro.SQL.Text := ' select * '+
                                ' from TRICARTES '+
                                ' where imo_i_cod='+QOrigem.FieldByName('imo_i_cod').AsString+' AND CON_S_TIP=1 AND CRT_D_FIM IS NULL ';

          QCadastro.Open;

          while not QCadastro.eof do begin

            /////////////////// caracteristicas dos imoveis/////////////////
            QVerifica.close;
            QVerifica.sql.text:='SELECT * FROM IP_CAD_DESDOCRT WHERE COD_EMP_DCR=1 AND COD_CRT_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('car_s_cod').AsString)+''' '+
                                ' AND COD_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_OPC').AsString)+'''';
            QVerifica.open;
            if not QVerifica.IsEmpty then
            begin
            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('IMO_I_COD').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('car_s_cod').AsString);
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString);
            cdsdestino1.fieldByName('QTD_REL').AsString    :=QCadastro.FieldByName('CAR_N_QTD').AsString;
            cdsdestino1.fieldByName('DATA_REL').value      :=QCadastro.FieldByName('CRT_D_INI').value;
            cdsdestino1.fieldByName('OBS_REL').value       :=QCadastro.FieldByName('CRT_D_FIM').value;

            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);
            END;
          QCadastro.Next;
          end;


          QCadastro.Close;
          QCadastro.SQL.Text := 'select TRIFAC2.* '+
                                'from TRIIPTUF '+
                                'INNER JOIN TRIFAC2 ON TRIIPTUF.LOG_I_COD=TRIFAC2.LOG_I_COD AND TRIIPTUF.FAC_I_COD=TRIFAC2.FAC_I_COD '+
                                'where TRIIPTUF.IMO_I_COD='+QOrigem.FieldByName('imo_i_cod').AsString+' and TRIIPTUF.CON_S_TIP=1 AND TRIFAC2.FAC_D_FIM IS NULL ';

          QCadastro.Open;

          while not QCadastro.eof do begin

            /////////////////// caracteristicas dos imoveis/////////////////
            QVerifica.close;
            QVerifica.sql.text:='SELECT * FROM IP_CAD_DESDOCRT WHERE COD_EMP_DCR=1 AND COD_CRT_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('car_s_cod').AsString)+''' '+
                                ' AND COD_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_OPC').AsString)+'''';
            QVerifica.open;
            if not QVerifica.IsEmpty then
            begin
            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('IMO_I_COD').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('car_s_cod').AsString);
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString);
            cdsdestino1.fieldByName('QTD_REL').AsString    :=QCadastro.FieldByName('CAR_N_QTD').AsString;
            cdsdestino1.fieldByName('DATA_REL').value      :=QCadastro.FieldByName('FAC_D_EXE').value;
            cdsdestino1.fieldByName('OBS_REL').value       :=QCadastro.FieldByName('FAC_D_FIM').value;

            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);
            END;
          QCadastro.Next;
          end;


          {
            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('IMO_I_COD').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,'10');
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,QOrigem.FieldByName('IMO_S_IMP').AsString);

            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);

         }

       {
       area:=OpcaoBCI_Campo(QOrigem.FieldByName('i_imoveis').AsString, campoareaedificacao1 ,'valor');
       if area>0 then begin
            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('i_imoveis').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,'7000');
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,'0001');
            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);

            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('i_imoveis').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,'6000');
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,'0001');
            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);
       end
       else begin
            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('i_imoveis').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,'7000');
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,'2');
            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);

            cdsdestino1.append;
            cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
            codrel:=codrel+1;
            cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
            cdsdestino1.fieldByName('COD_REL').Asinteger:=codrel;
            cdsdestino1.fieldByName('TP_ARE_REL').AsString:='T';
            cdsdestino1.fieldByName('COD_IPT_REL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('i_imoveis').AsString);
            cdsdestino1.fieldByName('COD_CRT_REL').AsString:=ZeraEsquerda(4,'6000');
            cdsdestino1.FieldByName('COD_DCR_REL').AsString:=ZeraEsquerda(4,'2');
            cdsdestino1.post;
            cdsdestino1.ApplyUpdates(-1);
       end;

      }





      if ncommit=1000 then begin
       Conexao.Commit(TD);
       ncommit:=0;
       if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM IP_CAD_AREAS WHERE COD_EMP_ARE=1 AND COD_ARE=-1';
        cdsdestino.open;

        cdsdestino1.close;
        sqlDestino1.commandText:='SELECT * FROM IP_REL_AREAS where cod_emp_rel=1 AND COD_rel=-1';
        cdsdestino1.open;

      end;

    QOrigem.Next;

  end;

  Conexao.Commit(TD);
end;



procedure TFPrincipal.CadAreaEdificada;
 var cont,erros,codare,codrel,ncommit:Integer;
 receita,codaux:String;
 areaedificada: Double;
begin

    lbFuncao.Caption:='CadAreaEdificada';
    lbFuncao.update;

    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('delete from IP_REL_AREAS where COD_EMP_REL=1 AND TP_ARE_REL=''E'' ');
    QVerifica.execsql;

    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('delete from IP_CAD_AREAS WHERE COD_EMP_ARE=1 AND TP_ARE=''E'' ');
    QVerifica.execsql;

    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.sql.add('select count(*) as qtd from TRIIPTUA  ' );
    QOrigem.Open;

    lbtotal.caption:=QOrigem.fieldByname('qtd').AsString;
    lbtotal.update;
    ProgressBar1.max:=QOrigem.fieldByname('qtd').AsInteger;
    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.sql.add('select a.*,b.BAI_I_COD '+
                    ' from TRIIPTUA a '+
                    ' inner join TRIIMO b on a.IMO_I_COD=b.IMO_I_COD '
                    );
    QOrigem.Open;


    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('select max(cod_are) as qtd from IP_CAD_AREAS ');
    QVerifica.Open;
    codare:=QVerifica.FieldByName('qtd').AsInteger;

    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('select max(cod_rel) as qtd from IP_REL_AREAS ');
    QVerifica.Open;
    codrel:=QVerifica.FieldByName('qtd').AsInteger;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    ncommit:=0;

    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM IP_CAD_AREAS WHERE COD_EMP_ARE=1 AND COD_ARE=-1';
    cdsdestino.open;

    cdsdestino1.close;
    sqlDestino1.commandText:='SELECT * FROM IP_REL_AREAS where cod_emp_rel=1 AND COD_rel=-1';
    cdsdestino1.open;



    cont:=0;
    while not QOrigem.Eof do
    begin
      lbchave.caption:=QOrigem.fieldByname('IMO_I_COD').AsString;
      lbchave.update;
      inc(ncommit);
      ProgressBar1.position:=cont;
      inc(cont);
      lbItem.Caption:=IntToStr(cont);
      lbItem.update;

      areaedificada:=QOrigem.FieldByName('con_n_area').AsCurrency;

      if areaedificada>0 then begin
            cdsdestino.append;
            cdsdestino.fieldByName('COD_EMP_ARE').AsString   :='1';
            codare:=codare+1;
            cdsdestino.fieldByName('COD_ARE').Asinteger      :=codare;
            cdsdestino.fieldByName('TP_ARE').AsString        :='E';
            cdsdestino.fieldByName('COD_IPT_ARE').AsString   :=ZeraEsquerda(9,QOrigem.fieldByname('imo_i_cod').AsString);

            QCadastro.Close;
            QCadastro.SQL.Clear;
            QCadastro.SQL.Add(' select CAR_S_OPC '+
                              ' from TRIIPTUA2 '+
                              ' where imo_i_cod='+QOrigem.FieldByName('imo_i_cod').AsString+
                              ' and are_s_seq='+QOrigem.FieldByName('are_s_seq').AsString+' AND CAR_S_COD='+codedificacao+' and CAR_D_FIM is null '
                               );
            QCadastro.Open;
            if QCadastro.IsEmpty then
            begin
            QCadastro.Close;
            QCadastro.SQL.Clear;
            QCadastro.SQL.Add(' select CAR_S_OPC '+
                              ' from TRIIPTUA2 '+
                              ' where imo_i_cod='+QOrigem.FieldByName('imo_i_cod').AsString+
                              ' AND CAR_S_COD='+codedificacao+' and CAR_D_FIM is null '
                               );
            QCadastro.Open;

            end;


            cdsdestino.fieldByName('COD_ZNA_ARE').AsString   :=ZeraEsquerda(5,QCadastro.FieldByName('CAR_S_OPC').AsString);

            cdsdestino.fieldByName('TP_ZNA_ARE').AsString    :='01 - Edificado';
            cdsdestino.fieldByName('DESCRI_ARE').AsString    :='AREA EDIFICADA PRINCIPAL';
            cdsdestino.fieldByName('PRINCIPAL_ARE').AsString :='S';
            cdsdestino.fieldByName('MTESTADA_ARE').AsString  :='0';

            cdsdestino.fieldByName('MEDIDA_ARE').AsCurrency  :=areaEdificada;
            cdsdestino.fieldByName('AUTAREAE_ARE').AsCurrency:=cdsdestino.fieldByName('MEDIDA_ARE').AsCurrency;
            cdsdestino.fieldByName('NAUTAREAE_ARE').AsCurrency:=0;
            cdsdestino.fieldByName('UNIDCONST_ARE').AsString  :=QOrigem.FieldByName('ARE_S_SEQ').AsString;

            if trim(QOrigem.FieldByName('CON_S_ANO').AsString)<> '' then
            cdsdestino.fieldByName('DTA_CONSTRU_ARE').value       :='01/01/'+QOrigem.FieldByName('CON_S_ANO').AsString;

            cdsdestino.fieldByName('DTA_CONSTRU2_ARE').value      :=QOrigem.FieldByName('CON_D_HAB').Value;


            cdsdestino.post;
            cdsdestino.ApplyUpdates(-1);

                QCadastro.Close;
                QCadastro.SQL.Clear;
                QCadastro.SQL.Add(' select * '+
                                  ' from TRIIPTUA2 '+
                                  ' where imo_i_cod='+QOrigem.FieldByName('imo_i_cod').AsString+
                                  ' and are_s_seq='+QOrigem.FieldByName('are_s_seq').AsString+' AND not CAR_S_COD in ('+codedificacao+','+codzoneamento+') and CAR_D_FIM is null '
                                  );
                QCadastro.Open;
                while not QCadastro.eof do begin

                  /////////////////// caracteristicas dos imoveis/////////////////
                  QVerifica.close;
                  QVerifica.sql.text:='SELECT * FROM IP_CAD_DESDOCRT WHERE COD_EMP_DCR=1 AND COD_CRT_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_COD').AsString)+''' '+
                                      ' AND COD_DCR='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_OPC').AsString)+'''';
                  QVerifica.open;
                  if not QVerifica.IsEmpty then
                  begin
                  cdsdestino1.append;
                  cdsdestino1.fieldByName('COD_EMP_REL').AsString:='1';
                  codrel:=codrel+1;
                  cdsdestino1.fieldByName('COD_ARE_REL').Asinteger:=codare;
                  cdsdestino1.fieldByName('COD_REL').Asinteger    :=codrel;
                  cdsdestino1.fieldByName('TP_ARE_REL').AsString  :='E';
                  cdsdestino1.fieldByName('COD_IPT_REL').AsString :=ZeraEsquerda(9,QOrigem.FieldByName('imo_i_cod').AsString);
                  cdsdestino1.fieldByName('COD_CRT_REL').AsString :=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_COD').AsString);
                  cdsdestino1.FieldByName('COD_DCR_REL').AsString :=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString);
                  cdsdestino1.fieldByName('QTD_REL').AsString     :=QCadastro.FieldByName('CAR_N_QTD').AsString;
                  cdsdestino1.fieldByName('DATA_REL').value       :=QCadastro.FieldByName('CAR_D_INI').value;
                  cdsdestino1.fieldByName('OBS_REL').value        :=QCadastro.FieldByName('CAR_D_FIM').value;

                  cdsdestino1.post;
                  cdsdestino1.ApplyUpdates(-1);
                  END;
                QCadastro.Next;
                end;
      end;





            if ncommit=1000 then begin
             Conexao.Commit(TD);
             ncommit:=0;
             if not Conexao.InTransaction then Conexao.StartTransaction(TD);

             cdsdestino.close;
             sqlDestino.commandText:='SELECT * FROM IP_CAD_AREAS WHERE COD_EMP_ARE=1 AND COD_ARE=-1';
             cdsdestino.open;

             cdsdestino1.close;
             sqlDestino1.commandText:='SELECT * FROM IP_REL_AREAS where cod_emp_rel=1 AND COD_rel=-1';
             cdsdestino1.open;

            end;

    QOrigem.Next;

  end;

  Conexao.Commit(TD);
end;



procedure TFPrincipal.HistoricoValorVenal;
 var cont,erros,ncommit:Integer;
begin
    lbFuncao.Caption:='HistoricoValorVenal';
    lbFuncao.update;


  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add('SELECT * FROM TRIIMOCAL ORDER BY IMO_I_COD ');
  QOrigem.Open;


//  lbTotal.Caption:=IntToStr(QOrigem.recordcount);
 // lbTotal.Update;

  ncommit:=0;
  cont:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  while not QOrigem.Eof do
  begin
    lbChave.Caption:=QOrigem.FieldByName('imo_i_cod').AsString;
    lbChave.Update;

    inc(ncommit);

    inc(cont);
    lbItem.Caption:=IntToStr(cont);
    lbItem.update;
    ProgressBar1.position:=cont;
    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM IP_HIS_VVENAL WHERE COD_EMP_HVV=1 AND COD_IPT_HVV='''+ZeraEsquerda(9,QOrigem.FieldByName('IMO_I_COD').AsString)+''' '+
                            'and ANO_HVV='''+QOrigem.FieldByName('IMO_I_ANO').AsString+''' ';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.Edit;


    cdsdestino.fieldByName('COD_EMP_HVV').AsString    :='1';
    cdsdestino.fieldByName('COD_IPT_HVV').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('IMO_I_COD').AsString);
    cdsdestino.fieldByName('ANO_HVV').AsInteger       :=QOrigem.fieldByname('IMO_I_ANO').AsInteger;
    cdsdestino.fieldByName('STATUS_HVV').AsString     :='C';
    cdsdestino.fieldByName('DTCALC_HVV').AsString     :='01/01/'+QOrigem.FieldByName('IMO_I_ANO').AsString;
    cdsdestino.fieldByName('VVTERRIT_HVV').AsCurrency      :=QOrigem.fieldByname('IMO_N_VVT').AsCurrency;
    cdsdestino.fieldByName('VVEDIF_HVV').AsCurrency        :=QOrigem.fieldByname('IMO_N_VVC').AsCurrency;
    cdsdestino.fieldByName('VVEXEC_HVV').AsString     :='0';
    cdsdestino.fieldByName('FAT_TERRIT_HVV').AsString  :='1';
    cdsdestino.fieldByName('FAT_PREDIAL_HVV').AsString :='1';
    cdsdestino.fieldByName('FAT_EXEC_HVV').AsString    :='1';
    cdsdestino.fieldByName('PONTOS_TERRI_HVV').AsString:='0';
    cdsdestino.fieldByName('PONTOS_EDIF_HVV').AsString :='0';
    cdsdestino.fieldByName('TOT_AREAS_HVV').value      :=QOrigem.fieldByname('IMO_N_EDIF').value;



    cdsdestino.fieldByName('ARETERRI_HVV').AsCurrency    :=QOrigem.fieldByname('IMO_N_ARE').AsCurrency;
    cdsdestino.fieldByName('AREEDI_HVV').AsCurrency      :=QOrigem.fieldByname('IMO_N_EDIF').AsCurrency;
    cdsdestino.fieldByName('FRACAO_HVV').AsCurrency      :=QOrigem.fieldByname('IMO_N_FRA').AsCurrency;

    if cdsdestino.fieldByName('ARETERRI_HVV').AsCurrency>0 then
    cdsdestino.fieldByName('VRM_TERRIT_HVV').AsCurrency  :=cdsdestino.fieldByName('VVTERRIT_HVV').AsCurrency/cdsdestino.fieldByName('ARETERRI_HVV').AsCurrency;

    if cdsdestino.fieldByName('AREEDI_HVV').AsCurrency>0 then
    cdsdestino.fieldByName('VRM_EDIF_HVV').AsCurrency  :=cdsdestino.fieldByName('VVEDIF_HVV').AsCurrency/cdsdestino.fieldByName('AREEDI_HVV').AsCurrency;

    cdsdestino.fieldByName('VRM_EXEC_HVV').AsString      :='0';

    //cdsdestino.fieldByName('VRM_TERRIT_HVV').AsCurrency  :=QOrigem.fieldByName('IMO_N_VAL1').AsCurrency;
    //cdsdestino.fieldByName('VRM_EDIF_HVV').AsCurrency  :=QOrigem.fieldByName('IMO_N_VAL2').AsCurrency;



    if cdsdestino.fieldByName('FRACAO_HVV').AsString='0' then
    cdsdestino.fieldByName('FRACAO_HVV').AsString:='1';

    //verificar na procedure PR_FORMULA_IPTU_CALCULO insert into triimocal

    cdsdestino.fieldByName('TAXAS_HVV').AsCurrency       :=QOrigem.fieldByname('imo_n_val3').AsCurrency+QOrigem.fieldByname('imo_n_val4').AsCurrency;

    if cdsdestino.fieldByName('AREEDI_HVV').AsCurrency>0 then
    cdsdestino.fieldByName('IPU_HVV').AsCurrency    :=QOrigem.fieldByname('imo_n_val2').AsCurrency
    else
   cdsdestino.fieldByName('ITU_HVV').AsCurrency    :=QOrigem.fieldByname('imo_n_val2').AsCurrency;


    cdsdestino.fieldByName('ALIQEDIFICACAO_HVV').AsCurrency :=QOrigem.fieldByName('IMO_N_VAL1').AsCurrency;
    cdsdestino.fieldByName('ALIQTERRITORIAL_HVV').AsCurrency:=QOrigem.fieldByName('IMO_N_VAL1').AsCurrency;


    cdsdestino.fieldByName('IPTU_HVV').AsCurrency   :=cdsdestino.fieldByName('IPU_HVV').AsCurrency+cdsdestino.fieldByName('ITU_HVV').AsCurrency+cdsdestino.fieldByName('TAXAS_HVV').AsCurrency;

    cdsdestino.fieldByName('TESTADA_HVV').value        :=0;//QOrigem.fieldByName('IMO_N_VAL3').AsCurrency;

    cdsdestino.fieldByName('AREA_EXCED_HVV').AsString  :='0';
    cdsdestino.fieldByName('UNIDCONST_HVV').AsString   :='0';
    cdsdestino.fieldByName('FATORTESTADA_HVV').AsString:='1';
    cdsdestino.fieldByName('FATORZONA_HVV').AsString   :='1';
    cdsdestino.fieldByName('DESCONTOITU_HVV').AsString :='0';
    cdsdestino.fieldByName('DESCONTOIPU_HVV').AsString :='0';
    cdsdestino.fieldByName('DESCONTOTAXAS_HVV').AsString:='0';

    cdsdestino.fieldByName('AUTAREAE_HVV').AsString    :=cdsdestino.fieldByName('AREEDI_HVV').AsString;
    cdsdestino.fieldByName('NAUTAREAE_HVV').AsString   :='0';
    cdsdestino.fieldByName('VVEDIFATU_HVV').AsString   :=cdsdestino.fieldByName('VVEDIF_HVV').AsString;
    cdsdestino.fieldByName('VVEDIFNAOATU_HVV').AsString:='0';

    cdsdestino.fieldByName('VVTERRITREFER_HVV').AsString:=QOrigem.fieldByName('IMO_N_VVT_ITBI').AsString;
    cdsdestino.fieldByName('VVEDIFREFER_HVV').AsString  :=QOrigem.fieldByName('IMO_N_VVC_ITBI').AsString;


    cdsdestino.post;
    cdsdestino.ApplyUpdates(-1);



    if ncommit=1000 then begin
     ncommit:=0;
     Conexao.Commit(TD);
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;



   QOrigem.Next;
  end;
   Conexao.Commit(TD);
end;



procedure TFPrincipal.SociosImoveis;
 var cont,erros,ncommit:Integer;
begin

  lbFuncao.Caption:='SociosImoveis';
  lbFuncao.update;

  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add('select count(*) as qtd from PROPIMOV  ');
  QOrigem.Open;

  lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
  lbtotal.update;



  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add('SELECT TRIIMO.IMO_I_COD as COD_IPT_SOC, '+
                                   'PROPIMOV.CNTI_I_CON as COD_CNT_SOC, '+
                                   'PROPIMOV.PRI_D_DPR as DTINI_SOC, '+
                                   'PROPIMOV.PRI_D_FIM as DTFIM_SOC, '+
                                   'CASE '+
                                    ' WHEN PROPIMOV.PRI_A_RES = 1 THEN ''S�CIO RESPONS�VEL PELO IM�VEL'' '+
                                    ' WHEN PROPIMOV.PRI_A_RES = 2 THEN ''APENAS S�CIO'' '+
                                    ' WHEN PROPIMOV.PRI_A_RES = 3 THEN ''PROMISS�RIO / COMPROMISS�RIO'' '+
                                    ' WHEN PROPIMOV.PRI_A_RES = 4 THEN ''TUTOR'' '+
                                    ' WHEN PROPIMOV.PRI_A_RES = 5 THEN ''COMODAT�RIO'' '+
                                    ' WHEN PROPIMOV.PRI_A_RES = 6 THEN ''POSSEIRO'' '+
                                    ' WHEN PROPIMOV.PRI_A_RES = 7 THEN ''USUFRUTO'' '+
                                   'END AS TIPO, '+
                                   'TRIIMO.IMO_A_AUX,PRI_I_PPR,PRI_M_OBS '+
                            'FROM PROPIMOV '+
                            'INNER JOIN TRIIMO ON TRIIMO.IMO_I_COD = PROPIMOV.IMO_I_COD '
                 );
  QOrigem.Open;

  ncommit:=0;
  cont:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  while not QOrigem.Eof do
  begin
    lbchave.Caption:=QOrigem.FieldByName('COD_IPT_SOC').AsString;
    lbchave.Update;

    inc(ncommit);

    inc(cont);
    lbitem.Caption:=InttoStr(cont);
    lbitem.Update;
    ProgressBar1.position:=cont;
    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM IP_CAD_SOCIOS WHERE COD_EMP_SOC=1 AND COD_IPT_SOC='''+ZeraEsquerda(9,QOrigem.FieldByName('COD_IPT_SOC').AsString)+''' '+
                            'and COD_CNT_SOC='''+ZeraEsquerda(9,QOrigem.FieldByName('COD_CNT_SOC').AsString)+''' ';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.Edit;

    cdsdestino.fieldByName('COD_EMP_SOC').AsString    :='1';
    cdsdestino.fieldByName('COD_IPT_SOC').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('COD_IPT_SOC').AsString);
    cdsdestino.fieldByName('COD_CNT_SOC').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('COD_CNT_SOC').AsString);
    cdsdestino.fieldByName('DTINI_SOC').value         :=QOrigem.fieldByname('DTINI_SOC').value;
    cdsdestino.fieldByName('DTFIM_SOC').value         :=QOrigem.fieldByname('DTFIM_SOC').value;
    cdsdestino.fieldByName('QUALIFIC_SOC').AsString   :='Percentual: '+QOrigem.fieldByname('PRI_I_PPR').AsString+' % '+QOrigem.fieldByname('TIPO').AsString;

    cdsdestino.post;
    cdsdestino.ApplyUpdates(-1);


    if ncommit=1000 then begin
     ncommit:=0;
     Conexao.Commit(TD);
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;



   QOrigem.Next;
  end;
   Conexao.Commit(TD);
end;



procedure TFPrincipal.ImobiliarioCobranca;
 var cont,erros,ncommit:Integer;
begin

  lbFuncao.Caption:='Codigo de Cobran�a do Imobiliario';
  lbFuncao.update;

  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add('select count(*) as qtd from TRIISEN  ');
  QOrigem.Open;

  lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
  lbtotal.update;



  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.sql.add('select A.*,B.CNTI_A_NOM,B.CNTI_A_CPFCGC,B.CNTI_A_RGIE '+
                  'from TRIISEN A '+
                  'left join CNTI_CONTRIBUINTES B ON A.CNTI_I_REQUER=B.CNTI_I_CON '+
                  ' where not ISE_D_INI is null '
                  );
  QOrigem.Open;

  ncommit:=0;
  cont:=0;
  QVerifica.close;
  QVerifica.sql.Text:='DELETE FROM IP_COBRANCACADIPTU ';
  QVerifica.execsql;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);


  cdsdestino.close;
  sqlDestino.commandText:='SELECT * FROM IP_COBRANCACADIPTU WHERE COD_EMP_CCI=1 AND COD_IPT_CCI is null ';
  cdsdestino.open;


  while not QOrigem.Eof do
  begin
    lbchave.Caption:=QOrigem.FieldByName('IMO_I_COD').AsString;
    lbchave.Update;

    inc(ncommit);

    inc(cont);
    lbitem.Caption:=InttoStr(cont);
    lbitem.Update;
    ProgressBar1.position:=cont;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.Edit;

    cdsdestino.fieldByName('COD_EMP_CCI').AsString    :='1';
    cdsdestino.fieldByName('COD_IPT_CCI').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('IMO_I_COD').AsString);


    if QOrigem.fieldByName('ISE_A_TIPO').AsString='A' then
      cdsdestino.FieldByName('COD_COB_CCI').AsString:='10'
    else
    if QOrigem.fieldByName('ISE_A_TIPO').AsString='D' then
    cdsdestino.FieldByName('COD_COB_CCI').AsString:='11'
    else
    cdsdestino.FieldByName('COD_COB_CCI').AsString:=QOrigem.fieldByName('ISE_A_TIPO').AsString;

    cdsdestino.FieldByName('DTINICIAL_CCI').AsString:=copy(QOrigem.fieldByName('ISE_D_INI').AsString,1,10);
    if trim(QOrigem.fieldByName('ISE_D_FIM').AsString)<>'' then
    cdsdestino.FieldByName('DTFINAL_CCI').AsString:=copy(QOrigem.fieldByName('ISE_D_FIM').AsString,1,10)
    else
    cdsdestino.FieldByName('DTFINAL_CCI').value:='31/12/2099';


    cdsdestino.FieldByName('NROPROCESSO_CCI').AsString  :=soNumeros(QOrigem.fieldByName('ISE_A_PROC').AsString);

    if trim(QOrigem.fieldByName('ISE_D_PROC').AsString) <> '' then
    cdsdestino.FieldByName('ANOPROCESSO_CCI').AsString  :=copy(QOrigem.fieldByName('ISE_D_PROC').AsString,7,4);
    cdsdestino.FieldByName('OBSERVACAO_CCI').AsString  :=QOrigem.fieldByName('ISE_A_OBS').AsString;

    cdsdestino.FieldByName('OBSERVACAO_CCI').AsString:=cdsdestino.FieldByName('OBSERVACAO_CCI').AsString+char(13)+
    ' Requerente:' +QOrigem.fieldByName('CNTI_A_NOM').AsString+' CPF/CNPJ: '+QOrigem.fieldByName('CNTI_A_CPFCGC').AsString+' RG/IE: '+QOrigem.fieldByName('CNTI_A_RGIE').AsString;
    cdsdestino.post;
    cdsdestino.ApplyUpdates(-1);


    if ncommit=1000 then begin
     ncommit:=0;
     Conexao.Commit(TD);
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;

  QOrigem.next;

  end;
  Conexao.Commit(TD);
end;


procedure TFPrincipal.AntigoProprietarios;
 var cont,erros,ncommit:Integer;
begin

  lbFuncao.Caption:='Antigos Proprietarios';
  lbFuncao.update;

  QVerifica.close;
  QVerifica.sql.Text:='DELETE FROM IP_TRANSPROP';
  QVerifica.ExecSQL;


  QOrigem.Close;
  QOrigem.SQL.Text :=' SELECT TRIIMO.IMO_I_COD as COD_IPT_SOC, '+
                     '          A.CNTI_I_CON as COD_CNT_SOC, '+
                     '          A.PRI_D_DPR as DTINI_SOC, '+
                     '          A.PRI_D_FIM as DTFIM_SOC, '+
                     '          CASE '+
                     '            WHEN A.PRI_A_RES = 1 THEN ''S�CIO RESPONS�VEL PELO IM�VEL'''+
                     '            WHEN A.PRI_A_RES = 2 THEN ''APENAS S�CIO'''+
                     '            WHEN A.PRI_A_RES = 3 THEN ''PROMISS�RIO / COMPROMISS�RIO'''+
                     '            WHEN A.PRI_A_RES = 4 THEN ''TUTOR'''+
                     '            WHEN A.PRI_A_RES = 5 THEN ''COMODAT�RIO'''+
                     '            WHEN A.PRI_A_RES = 6 THEN ''POSSEIRO'''+
                     '            WHEN A.PRI_A_RES = 7 THEN ''USUFRUTO'''+
                      '         END AS TIPO, '+
                     '          TRIIMO.IMO_A_AUX,A.PRI_I_PPR,A.PRI_M_OBS, '+
                     '          (SELECT FIRST 1 B.CNTI_I_CON FROM PROPIMOV B WHERE A.IMO_I_COD=B.IMO_I_COD AND A.PRI_A_RES=B.PRI_A_RES AND B.PRI_D_DPR>=A.PRI_D_FIM ORDER BY PRI_D_DPR ) AS NOVO '+
                     '   FROM PROPIMOV A '+
                     '   INNER JOIN TRIIMO ON TRIIMO.IMO_I_COD = A.IMO_I_COD '+
                     '   WHERE A.PRI_A_RES=1 AND NOT A.PRI_D_FIM IS NULL ';

  QOrigem.Open;

  ncommit:=0;
  cont:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  while not QOrigem.Eof do
  begin
    lbchave.Caption:=QOrigem.FieldByName('COD_IPT_SOC').AsString;
    lbchave.Update;

    inc(ncommit);

    if QOrigem.FieldByName('novo').AsString <>'' then begin


    inc(cont);
    lbitem.Caption:=InttoStr(cont);
    lbitem.Update;
    ProgressBar1.position:=cont;
    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM IP_TRANSPROP WHERE COD_EMP_ITP=1 AND COD_ITP=-1';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.Edit;

    cdsdestino.fieldByName('COD_EMP_ITP').AsString    :='1';
    cdsdestino.fieldByName('COD_ITP').AsINteger       :=CONT;
    cdsdestino.fieldByName('MOTIVO_ITP').AsString     :=QOrigem.fieldByname('PRI_M_OBS').AsString;
    cdsdestino.fieldByName('OBS_ITP').AsString        :=QOrigem.fieldByname('PRI_M_OBS').AsString;
    cdsdestino.fieldByName('STATUS_ITP').AsString     :='AT';
    cdsdestino.fieldByName('COD_IPT_ANT_ITP').AsString:=ZeraEsquerda(9,QOrigem.fieldByname('COD_IPT_SOC').AsString);
    cdsdestino.fieldByName('COD_CNTV_ITP').AsString   :=ZeraEsquerda(9,QOrigem.fieldByname('COD_CNT_SOC').AsString);
    cdsdestino.fieldByName('COD_CNTN_ITP').AsString   :=ZeraEsquerda(9,QOrigem.fieldByname('NOVO').AsString);
    cdsdestino.fieldByName('DTA_TRANSF_ITP').AsString :=QOrigem.fieldByname('DTFIM_SOC').AsString;

    cdsdestino.post;
    cdsdestino.ApplyUpdates(-1);
    end;

    if ncommit=1000 then begin
     ncommit:=0;
     Conexao.Commit(TD);
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;



   QOrigem.Next;
  end;
   Conexao.Commit(TD);
end;


procedure TFPrincipal.HistoricosAlteracoesImovel;
var cont: Integer;
begin
    lbFuncao.Caption:='HistoricoAlteracoesImovel';
    lbFuncao.update;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add( 'SELECT CASE '+
                                 'WHEN TRIM(DF.DESCRIPTION) <> '''' THEN DF.DESCRIPTION '+
                                 'ELSE FI.FIELD_NAME '+
                               'END as CAMPO_IHA, '+
                               'TB.DATE_TIME as DTA_ALT_IHA, '+
                               'FI.OLD_VALUE as VALOR_ANT_IHA, '+
                               'FI.NEW_VALUE as VALOR_AUT_IHA, '+
                               'CASE '+
                                 'WHEN SUBSTRING(TB.USER_NAME FROM 1 FOR 6) = ''ASP02_'' THEN SUBSTRING(TB.USER_NAME FROM 7 FOR 10) '+
                                 'ELSE SUBSTRING(TB.USER_NAME FROM 1 FOR 10) '+
                               'END as LOGIN_ALT_IHA,TB.TABLE_KEY '+
                         'FROM ASP_LOGTABLES TB '+
                         'INNER JOIN ASP_LOGFIELDS FI ON FI.LOG_TABLES_ID = TB.ID '+
                         'LEFT JOIN ASP_LOGDICFIELD DF ON DF.TABLE_NAME = TB.TABLE_NAME AND DF.FIELD_NAME = FI.FIELD_NAME '+
                         'WHERE TB.TABLE_NAME = ''TRIIMO'' '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM IP_HIS_ALTERACOES WHERE COD_EMP_IHA=1 AND COD_IHA=0 ';
    cdsdestino.open;
    cont:=0;

    while not QOrigem.Eof do
    begin
        inc(cont);

       lbchave.Caption:=QOrigem.fieldByname('TABLE_KEY').AsString;
       lbchave.update;

       lbItem.Caption:=IntToStr(cont);
       lbItem.update;
       ProgressBar1.position:=cont;
       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add('SELECT COD_IPT FROM IP_CAD_IPTU WHERE COD_EMP_IPT=1 AND COD_iPT='''+ZeraEsquerda(9,retirachar(trim(QOrigem.fieldByname('TABLE_KEY').AsString),';'))+'''');
       QVerifica.open;
       if not QVerifica.IsEmpty then begin

        cdsdestino.append;
        cdsdestino.fieldByName('COD_EMP_IHA').AsInteger :=1;
        cdsdestino.fieldByName('COD_IHA').value         :=cont;
        cdsdestino.fieldByName('COD_IPT_IHA').AsString  :=QVerifica.fieldBYName('cod_ipt').AsString;
        cdsdestino.fieldByName('CAMPO_IHA').value       :=QOrigem.fieldByname('CAMPO_IHA').value;
        cdsdestino.fieldByName('VALOR_ANT_IHA').value   :=QOrigem.fieldByname('VALOR_ANT_IHA').value;
        cdsdestino.fieldByName('VALOR_AUT_IHA').value   :=QOrigem.fieldByname('VALOR_AUT_IHA').value;
        //cdsdestino.fieldByName('OBS_IHA').value         :='Tipo : '+ QOrigem.FieldByName('tipo').AsString ;

        cdsdestino.fieldByName('LOGIN_ALT_IHA').AsString:=trim(QOrigem.fieldByname('LOGIN_ALT_IHA').AsString);
        cdsdestino.fieldByName('DTA_ALT_IHA').AsString  :=trim(QOrigem.fieldByname('DTA_ALT_IHA').AsString);

        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
       end;

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;

procedure TFPrincipal.CodigoCobrancaRural;
var item:INteger;
begin

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * FROM TRIOCO where OCO_S_UTI=7 ');
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0 ;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM RR_COBRANCA WHERE COD_EMP_COB=1 AND COD_COB='+QOrigem.fieldByName('OCO_S_COD').AsString;
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_COB').AsInteger  :=1;
        cdsdestino.fieldByName('COD_COB').value         :=QOrigem.fieldByname('OCO_S_COD').value;
        cdsdestino.fieldByName('DESCRI_COB').AsString   :=trim(QOrigem.fieldByname('OCO_A_DES').AsString);
        cdsdestino.fieldByName('PERIODO_COB').AsString   :='9999';
        cdsdestino.fieldByName('LOGIN_INC_COB').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_COB').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;


procedure TFPrincipal.CaracteristicaRural;
var i,item:Integer;
    grupoante,padrao:String;
begin

    lbFuncao.Caption:='Caracteristica';
    lbFuncao.update;


    // grupos das caracteristicas //
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * FROM TRICAR1 WHERE CAR_S_TIP IN (10) ');
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM RR_CAD_CRT WHERE COD_EMP_RR1=1 AND COD_RR1='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_RR1').AsInteger :=1;
        cdsdestino.fieldByName('COD_RR1').value         :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);


        cdsdestino.fieldByName('MOSTRAR_RR1').AsString  :='S';
        cdsdestino.fieldByName('ORDEM_RR1').AsString    :=trim(QOrigem.fieldByname('CAR_S_COD').AsString);
        cdsdestino.fieldByName('DESCRI_RR1').AsString   :=trim(QOrigem.fieldByname('CAR_A_DES').AsString);
        cdsdestino.fieldByName('LOGIN_INC_RR1').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_RR1').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);


    // Desdobro das caracteristicas //
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' SELECT TRICAR2.* '+
                    ' FROM TRICAR2 '+
                    ' INNER JOIN TRICAR1 ON TRICAR1.CAR_S_COD=TRICAR2.CAR_S_COD '+
                    ' WHERE TRICAR1.CAR_S_TIP IN (10) '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    i:=0;
    grupoante:='';
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        if grupoante<>ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString) then
        i:=0;

        cdsdestino.close;
        sqlDestino.commandText:=' SELECT * FROM RR_CAD_DESDOCRT '+
                                ' WHERE COD_EMP_RR2=1 AND COD_CRT_RR2='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString)+''' AND COD_RR2='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         inc(i);
         cdsdestino.append;
         cdsdestino.fieldByName('ORDEM_RR2').AsInteger   :=i;
         if i=1 then
         cdsdestino.fieldByName('PADRAO_RR2').AsString   :='S'
         else
         cdsdestino.fieldByName('PADRAO_RR2').AsString   :='N';
        end
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_RR2').AsInteger :=1;
        cdsdestino.fieldByName('COD_CRT_RR2').value     :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);
        cdsdestino.fieldByName('COD_RR2').value         :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString);
        cdsdestino.fieldByName('DESCRI_RR2').AsString   :=trim(QOrigem.fieldByname('CAR_A_DES').AsString);
        cdsdestino.fieldByName('LOGIN_INC_RR2').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_RR2').value     :=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

        grupoante:=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);

end;


procedure TFPrincipal.CadastroImovelRural;
 var cont,erros,ncommit,codrel:Integer;
     codaux,codtipolog,nometipolog:String;
     auxvalor:Double;
begin


    lbFuncao.Caption:='CadastroImovelRural';
    lbFuncao.update;


    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.sql.add('select count(*) as qtd from TRIRUR  ');
    QOrigem.Open;
    lbtotal.Caption:=QOrigem.FieldByName('QTD').AsString;
    lbtotal.Update;
    ProgressBar1.max:=QOrigem.FieldByName('QTD').AsInteger;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' select * from TRIRUR ');
    QOrigem.Open;


    codrel:=0;
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    cont:=0;
    while not QOrigem.Eof do
    begin
      lbchave.caption:=QOrigem.fieldByname('RUR_I_INSC').AsString;
      lbchave.update;

      inc(cont);
      inc(ncommit);
      lbItem.Caption:=IntToStr(cont);
      lbItem.update;
      ProgressBar1.position:=cont;
      cdsdestino.close;
      sqlDestino.commandText:='SELECT * FROM RR_CAD_RURAL where cod_emp_rrr=1 and cod_rrr='''+ZeraEsquerda(9,QOrigem.fieldByname('RUR_I_INSC').AsString)+'''';
      cdsdestino.open;
      if cdsdestino.IsEmpty then
      cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.fieldByName('COD_EMP_RRR').AsString:='1';
      cdsdestino.fieldByName('COD_STR_RRR').AsString:='0001';
      cdsdestino.fieldByName('COD_RRR').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('RUR_I_INSC').AsString);
      cdsdestino.fieldByName('MATRIC_RRR').AsString :=QOrigem.fieldByname('RUR_A_INSCRICAO_01').AsString;

      QCadastro.close;
      QCadastro.sql.Clear;
      QCadastro.SQL.Add('SELECT CNTI_I_CON FROM PROPIMORUR WHERE RUR_I_INSC='+QOrigem.fieldByname('RUR_I_INSC').AsString+' AND PRI_A_RES=1 ');
      QCadastro.Open;
      if not QCadastro.IsEmpty  then
      cdsdestino.fieldByName('COD_CNT_RRR').AsString:=ZeraEsquerda(9,QCadastro.fieldByname('CNTI_I_CON').AsString)
      else
      cdsdestino.fieldByName('COD_CNT_RRR').AsString:=ZeraEsquerda(9,'0');




    if trim(QOrigem.FieldByName('LOG_I_COD_ENT').AsString)='' then begin
     cdsdestino.fieldByName('LOGRAE_RRR').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('RUR_A_LOGRADOURO_ENT').AsString);
     codaux:=VerificaNomeLogradouro(trim(QOrigem.fieldByname('RUR_A_LOGRADOURO_ENT').AsString),nometipolog,codtipolog);
     if trim(codaux)<>'-1' then begin
      cdsdestino.fieldByName('COD_LOGE_RRR').AsString        :=codaux;

      if trim(codtipolog)<>'' then
      cdsdestino.fieldByName('COD_TIPE_RRR').value           :=codtipolog;
      if trim(nometipolog)<>'' then
      cdsdestino.fieldByName('TIPOLOGE_RRR').AsString        :=nometipolog;
     end;
    end
    else begin
     codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD_ENT').AsString),nometipolog,codtipolog);

     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('COD_LOGE_RRR').AsString        :=trim(QOrigem.fieldByname('LOG_I_COD_ENT').AsString);
     cdsdestino.fieldByName('LOGRAE_RRR').AsString           :=TrocaAspasSimples(codaux);
     end;

     if trim(codtipolog)<>'' then
     cdsdestino.fieldByName('COD_TIPE_RRR').value           :=codtipolog;
     if trim(nometipolog)<>'' then
     cdsdestino.fieldByName('TIPOLOGE_RRR').AsString        :=nometipolog;
    end;

    if trim(QOrigem.FieldByName('BAI_I_COD_ENT').AsString)='' then begin
     cdsdestino.fieldByName('BAIRROE_RRR').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('RUR_A_BAIRRO_ENT').AsString);
     codaux:=VerificaNomeBairro(trim(QOrigem.fieldByname('RUR_A_BAIRRO_ENT').AsString));
     if trim(codaux)<>'-1' then
     cdsdestino.fieldByName('COD_BAIE_RRR').AsString        :=codaux;
    end
    else begin
     codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD_ENT').AsString));
     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('COD_BAIE_RRR').AsString       :=trim(QOrigem.fieldByname('BAI_I_COD_ENT').AsString);
     cdsdestino.fieldByName('BAIRROE_RRR').AsString         :=codaux;
     end;
    end;


    if trim(QOrigem.FieldByName('LOG_I_COD_ENT').AsString) <> '' then begin
     QCadastro.Close;
     QCadastro.SQL.Clear;
     QCadastro.SQL.Add(' SELECT CNTI_I_IBGE '+
                      ' FROM ASP02_LOGRADOURO '+
                      ' WHERE LOG_I_COD='+QOrigem.FieldByName('LOG_I_COD_ENT').AsString
                      );
     QCadastro.Open;
    end
    else begin
     QCadastro.Close;
     QCadastro.SQL.Clear;
     QCadastro.SQL.Add(' SELECT CNTI_I_IBGE '+
                      ' FROM ASP02_LOGRADOURO '+
                      ' WHERE LOG_I_COD=-1'
                      );
     QCadastro.Open;
    end;

    if trim(QCadastro.fieldByName('CNTI_I_IBGE').AsString)='' then begin
      codaux:=VerificaNomeCidade(QOrigem.fieldByname('RUR_A_MUNICIPIO_ENT').AsString,QOrigem.fieldByname('RUR_A_UF_ENT').AsString);
      if trim(codaux)<>'-1' then
      cdsdestino.fieldByName('COD_CIDE_RRR').AsString        :=codaux;
    end
    else
    cdsdestino.fieldByName('COD_CIDE_RRR').AsString        :=ZeraEsquerda(7,trim(QCadastro.fieldByname('CNTI_I_IBGE').AsString));



     cdsdestino.fieldByName('NUMEROE_RRR').AsString:=QOrigem.fieldByname('RUR_A_NUM_ENT').AsString;

     codaux := '';
     if trim(QOrigem.FieldByName('RUR_A_COM_ENT').AsString) <> '' then
      codaux := codaux +' '+ trim(QOrigem.FieldByName('RUR_A_COM_ENT').AsString);

     if trim(QOrigem.FieldByName('RUR_A_APT_ENT').AsString) <> '' then
      codaux := codaux +'Apto '+ trim(QOrigem.FieldByName('RUR_A_APT_ENT').AsString);



     cdsdestino.fieldByName('COMPLEE_RRR').AsString:=TrocaAspasSimples(codaux);
     cdsdestino.fieldByName('CEPE_RRR').AsString   :=Tiracaracter(QOrigem.fieldByname('RUR_A_CEP_ENT').AsString);



      cdsdestino.FieldByName('COD_COB_RRR').value       :=QOrigem.FieldByName('OCO_S_COD').Value;
      cdsdestino.fieldByName('DTCAD_RRR').value         :=QOrigem.FieldByName('CON_D_DAT').value;
      cdsdestino.fieldByName('HISTO_RRR').value         :=QOrigem.FieldByName('CON_M_OBS').value;
      cdsdestino.fieldByName('INCRA_RRR').value         :=QOrigem.FieldByName('CON_A_INCR').value;
      cdsdestino.fieldByName('VTOTBENF_RRR').value      :=0;
      cdsdestino.fieldByName('VTOTIMOVEL_RRR').value    :=QOrigem.FieldByName('CON_N_VVP').value;
      cdsdestino.fieldByName('VVENAL_RRR').value        :=QOrigem.FieldByName('CON_N_VVP').value;

      cdsdestino.fieldByName('PROPRIEDADE_RRR').value   :=QOrigem.FieldByName('CON_A_DEN').value;


      if QOrigem.FieldByName('TPA_I_COD').AsString='36' then //acre
      cdsdestino.fieldByName('AREAE_RRR').value        :=QOrigem.FieldByName('CON_N_ARE').value * 2.72
      else
      if QOrigem.FieldByName('TPA_I_COD').AsString='37' then// alqueire mineiro
      cdsdestino.fieldByName('AREAE_RRR').value        :=QOrigem.FieldByName('CON_N_ARE').value   * 4.84
      else
      if QOrigem.FieldByName('TPA_I_COD').AsString='38' then // alqueire paulista
      cdsdestino.fieldByName('AREAE_RRR').value        :=QOrigem.FieldByName('CON_N_ARE').value * 2.42
      else
      if QOrigem.FieldByName('TPA_I_COD').AsString='39' then//hequitare
      cdsdestino.fieldByName('AREAE_RRR').value        :=QOrigem.FieldByName('CON_N_ARE').value
      else
      if QOrigem.FieldByName('TPA_I_COD').AsString='40' then //m2
      cdsdestino.fieldByName('AREAE_RRR').value        :=QOrigem.FieldByName('CON_N_ARE').value/10000
      else
      cdsdestino.fieldByName('AREAE_RRR').value        :=QOrigem.FieldByName('CON_N_ARE').value;

      cdsdestino.fieldByName('AREAH_RRR').value        :=cdsdestino.FieldByName('AREAE_RRR').AsCurrency / 2.42;
      cdsdestino.fieldByName('AREAM_RRR').value        :=cdsdestino.FieldByName('AREAE_RRR').AsCurrency * 10000;
      {
      cdsdestino.fieldByName('INSCRP_RRR').value        :=QOrigem.FieldByName('IMR_INSC_ESTADUAL').value;
      cdsdestino.fieldByName('REGISTRO_RRR').value      :=QOrigem.FieldByName('IMR_MATRICULA_REG').value;
      cdsdestino.fieldByName('MATRICULA_RRR').value     :=QOrigem.FieldByName('IMR_MATRICULA').value;
      cdsdestino.fieldByName('PONTOS_RRR').value        :=QCadastro.FieldByName('ITE_PERCENTUAL_MELHORIA').value;
      cdsdestino.fieldByName('COD_ZNA_RRR').value       :=QCadastro.FieldByName('REG_CODIGO').value;
      cdsdestino.fieldByName('OBSLOGRA_RRR').value      :=QOrigem.FieldByName('IMR_ENDERECO').value;
      cdsdestino.fieldByName('NIRF_RRR').value          :=QOrigem.FieldByName('IMR_NIRF').value;
      }

     if trim(cdsdestino.fieldByName('LOGRAE_RRR').AsString)='' then begin
          QVerifica.Close;
          QVerifica.sql.Clear;
          QVerifica.sql.Add('SELECT COD_LOG_CNT,COD_TIP_CNT,TIPOLOG_CNT,NOM_LOG_CNT,COD_BAI_CNT,NOM_BAI_CNT,COD_CID_CNT,UF_CNT,NUMERO_CNT,COMPLE_CNT,CEP_CNT '+
                            'FROM GR_CONTRIBUINTES '+
                            ' WHERE COD_EMP_CNT=1 AND COD_CNT='''+cdsdestino.fieldByName('COD_CNT_RRR').AsString+''''
                            );
          QVerifica.open;
          cdsdestino.fieldByName('TIPOLOGE_RRR').value   :=QVerifica.fieldByName('TIPOLOG_CNT').value;;
          cdsdestino.fieldByName('COD_TIPE_RRR').value   :=QVerifica.fieldByName('COD_TIP_CNT').value;
          cdsdestino.fieldByName('COD_LOGE_RRR').value   :=QVerifica.fieldByName('COD_LOG_CNT').value;
          cdsdestino.fieldByName('LOGRAE_RRR').AsString   :=QVerifica.fieldByName('NOM_LOG_CNT').value;;
          cdsdestino.fieldByName('COD_BAIE_RRR').value   :=QVerifica.fieldByName('COD_BAI_CNT').value;
          cdsdestino.fieldByName('BAIRROE_RRR').AsString  :=QVerifica.fieldByName('NOM_BAI_CNT').value;;
          cdsdestino.fieldByName('NUMEROE_RRR').value    :=QVerifica.fieldByName('NUMERO_CNT').value;
          cdsdestino.fieldByName('CEPE_RRR').value       :=QVerifica.fieldByName('CEP_CNT').value;
          cdsdestino.fieldByName('COMPLEE_RRR').value    :=QVerifica.fieldByName('COMPLE_CNT').value;
          cdsdestino.fieldByName('COD_CIDE_RRR').value   :=QVerifica.fieldByName('COD_CID_CNT').value;
          cdsdestino.fieldByName('UFE_RRR').value        :=QVerifica.fieldByName('UF_CNT').value;
     end;


      cdsdestino.ApplyUpdates(-1);


      QCadastro.Close;
      QCadastro.SQL.Clear;
      QCadastro.SQL.Add(' SELECT * FROM TRIRURCAR WHERE RUR_I_INSC='+QOrigem.FieldByName('RUR_I_INSC').AsString+' and CAR_D_FIM IS NULL ');
      QCadastro.Open;
      while not QCadastro.eof do begin

        /////////////////// caracteristicas dos imoveis/////////////////
        QVerifica.close;
        QVerifica.sql.text:='SELECT * FROM RR_CAD_DESDOCR WHERE COD_EMP_RR2=1 AND COD_CRT_RR2='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_COD').AsString)+''' '+
                            ' AND COD_RR2='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_OPC').AsString)+'''';
        QVerifica.open;
        if not QVerifica.IsEmpty then
        begin
        cdsdestino1.close;
        sqlDestino1.commandText:='SELECT * FROM IP_REL_AREAS where COD_EMP_RR3=1 AND COD_RRR_RR3='''+ZeraEsquerda(9,QOrigem.FieldByName('RUR_I_INSC').AsString)+''' '+
                                 ' AND COD_CRT_RR3='''+ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_COD').AsString)+''' AND COD_DCR_RR3='''+ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString)+''' ';
        cdsdestino1.open;
        if cdsdestino1.IsEmpty then begin
        cdsdestino1.append;
        cdsdestino1.fieldByName('COD_EMP_RR3').AsString:='1';
        codrel:=codrel+1;
        cdsdestino1.fieldByName('COD_RR3').Asinteger    :=codrel;
        end
        else
        cdsDestino1.Edit;


        cdsdestino1.fieldByName('COD_RRR_RR3').AsString :=ZeraEsquerda(9,QOrigem.FieldByName('RUR_I_INSC').AsString);
        cdsdestino1.fieldByName('COD_CRT_RR3').AsString :=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_COD').AsString);
        cdsdestino1.FieldByName('COD_DCR_RR3').AsString :=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString);
        cdsdestino1.fieldByName('VALOR_RR3').AsString     :=QCadastro.FieldByName('CAR_N_QTD').AsString;

        cdsdestino1.post;
        cdsdestino1.ApplyUpdates(-1);
        END;
      QCadastro.Next;
      end;


     if ncommit=1000 then begin
      Conexao.Commit(TD);
      if not Conexao.InTransaction then Conexao.StartTransaction(TD);
      ncommit:=0;
     end;

     QOrigem.Next;
    end;

    Conexao.Commit(TD);
end;


procedure TFPrincipal.TabeladeCalculo;
 var cont,erros:Integer;
 codrec,recdesdo,codrecprincipal:String;
begin



    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT TRICAR2.* FROM TRICAR2 '+
                    'INNER JOIN TRICAR1 ON TRICAR1.CAR_S_COD=TRICAR2.CAR_S_COD '+
                    'WHERE TRICAR1.CAR_S_COD IN (85) and CAR_N_VALOR>0 ');


    QOrigem.Open;
    cont:=0;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);



    while not QOrigem.Eof do
    begin

       codrec         :='19';
       codrecprincipal:='5';


      cdsdestino.close;
      sqlDestino.commandText:='select * from LI_CALCULO '+
                              ' where COD_EMP_CAL=1 and COD_REC_CAL='+codrec+' AND RECDESDO_CAL = '''+ZeraEsquerda(6,QOrigem.fieldByname('CAR_S_OPC').AsString)+'''';

      cdsdestino.open;
      if cdsdestino.IsEmpty then
      cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.fieldByName('COD_EMP_CAL').AsString:='1';
      cdsdestino.fieldByName('COD_REC_CAL').AsString:=codrec;
      cdsdestino.fieldByName('RECDESDO_CAL').AsString:=ZeraEsquerda(6,QOrigem.fieldByname('CAR_S_OPC').AsString);
      cdsdestino.fieldByName('ABREVATIV_CAL').AsString:=QOrigem.fieldByname('CAR_A_DES').AsString;
      cdsdestino.fieldByName('DESCRICAO_CAL').AsString:=QOrigem.fieldByname('CAR_A_DES').AsString;
      cdsdestino.Post;
      cdsdestino.ApplyUpdates(-1);


          cdsdestino.close;
          sqlDestino.commandText:='select * from LI_VALORCALCULO where COD_EMP_VRC=1 and cod_rec_vrc='+codrec+' and RECDESDO_VRC='''+ZeraEsquerda(6,QOrigem.fieldByname('CAR_S_OPC').AsString)+'''';
          cdsdestino.open;
          if cdsdestino.IsEmpty then
          cdsdestino.append
          else
          cdsdestino.edit;

          cdsdestino.fieldByName('COD_EMP_VRC').AsString:='1';
          cdsdestino.fieldByName('COD_SEQ_VRC').AsString:='1';
          cdsdestino.fieldByName('VINCULAREGIAO_VRC').AsString:='N';


          cdsdestino.fieldByName('EXERCICIO_VRC').AsString:='2021';
          cdsdestino.fieldByName('LIMITEI_VRC').AsString:='0';
          cdsdestino.fieldByName('LIMITEF_VRC').AsString:='9999999999';

          cdsdestino.fieldByName('TIPCALC_VRC').AsString:='01 - Valor Fixo';
          cdsdestino.fieldByName('TIPVALOR_VRC').AsString:='04 - % da UFM';

          //cdsdestino.fieldByName('TIPVALOR_VRC').AsString:='07 - % da Taxa de Licen�a';
          //cdsdestino.fieldByName('TIPVALOR_VRC').AsString:='02 - QTD x Valor';
          //cdsdestino.fieldByName('VALOR_VRC').AsCurrency :=QOrigem.FieldByName('CAR_N_ALIQ').AsCurrency;
          cdsdestino.fieldByName('VALOR_VRC').AsCurrency :=QOrigem.FieldByName('CAR_N_VALOR').AsCurrency;



          cdsdestino.fieldByName('COD_REC_VRC').AsString:=codrec;
          cdsdestino.fieldByName('RECDESDO_VRC').AsString:=ZeraEsquerda(6,QOrigem.fieldByname('CAR_S_OPC').AsString);
          cdsdestino.fieldByName('ISS_VRC').AsString:='N';
          cdsdestino.fieldByName('TXL_VRC').AsString:='S';
          cdsdestino.fieldByName('ANUAL_VRC').AsString:='S';
          cdsdestino.fieldByName('MENSAL_VRC').AsString:='N';
          cdsdestino.fieldByName('APDTABERT_VRC').AsString:='S';
          cdsdestino.fieldByName('COBABERT_VRC').AsString:='N';
          cdsdestino.fieldByName('BASETIPOCALCPORCE_VRC').AsString:='N';
          cdsdestino.fieldByName('cod_mod_VRC').AsString:='2';
          cdsdestino.fieldByName('cod_rep_VRC').AsString:=codrecprincipal;
          cdsdestino.fieldByName('LOGIN_INC_VRC').AsString:='CONVERSAO';
          cdsdestino.fieldByName('DTA_INC_VRC').value:=date;
          cdsdestino.ApplyUpdates(-1);




     QOrigem.Next
     end;

     Conexao.Commit(TD);




   {
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * from opcoes_bce where i_item=9899 and valor>0 ');
    QOrigem.Open;
    cont:=0;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);


    codrec:='501';
    while not QOrigem.Eof do
    begin
      cdsdestino.close;
      sqlDestino.commandText:='select * from LI_CALCULO '+
                              ' where COD_EMP_CAL=1 and COD_REC_CAL='+codrec+' AND CODAUX_CAL = '''+ZeraEsquerda(15,QOrigem.fieldByname('valor').AsString)+'''';

      cdsdestino.open;
      if cdsdestino.IsEmpty then begin
      cdsdestino.append;
      QVerifica.close;
      QVerifica.sql.clear;
      QVerifica.sql.add('SELECT coalesce(MAX(RECDESDO_CAL),0) AS COD FROM LI_CALCULO WHERE COD_EMP_CAL=1 AND COD_REC_CAL='+codrec);
      QVerifica.open;
      recdesdo:=ZeraEsquerda(6,IntToSTr(QVerifica.fieldByName('cod').AsInteger+1));
      cdsdestino.fieldByName('COD_REC_CAL').AsString:=codrec;
      cdsdestino.fieldByName('RECDESDO_CAL').AsString:=recdesdo;
      cdsdestino.fieldByName('codaux_CAL').AsString:=ZeraEsquerda(15,QOrigem.fieldByname('valor').AsString);
      end
      else begin
      cdsdestino.edit;
      recdesdo:=cdsdestino.fieldByName('RECDESDO_CAL').AsString;
      end;




      cdsdestino.fieldByName('COD_EMP_CAL').AsString:='1';
      cdsdestino.fieldByName('ABREVATIV_CAL').AsString:='Licen�a e Fiscaliza��o '+ QOrigem.fieldByname('valor').AsString+' UFM ';
      cdsdestino.fieldByName('DESCRICAO_CAL').AsString:='Licen�a e Fiscaliza��o '+ QOrigem.fieldByname('valor').AsString+' UFM ';

      cdsdestino.Post;
      cdsdestino.ApplyUpdates(-1);

          cdsdestino.close;
          sqlDestino.commandText:='select * from LI_VALORCALCULO where COD_EMP_VRC=1 and cod_rec_vrc='+codrec+' and RECDESDO_VRC='''+recdesdo+'''';
          cdsdestino.open;
          if cdsdestino.IsEmpty then
          cdsdestino.append
          else
          cdsdestino.edit;

          cdsdestino.fieldByName('COD_EMP_VRC').AsString:='1';
          cdsdestino.fieldByName('COD_SEQ_VRC').AsString:='1';
          cdsdestino.fieldByName('VINCULAREGIAO_VRC').AsString:='N';


          cdsdestino.fieldByName('EXERCICIO_VRC').AsString:='2017';
          cdsdestino.fieldByName('LIMITEI_VRC').AsString:='0';
          cdsdestino.fieldByName('LIMITEF_VRC').AsString:='9999999999';
          cdsdestino.fieldByName('TIPCALC_VRC').AsString:='01 - Valor Fixo';
          cdsdestino.fieldByName('TIPVALOR_VRC').AsString:='03 - UFM';
          cdsdestino.fieldByName('VALOR_VRC').AsCurrency :=QOrigem.FieldByName('valor').AsCurrency;



          cdsdestino.fieldByName('COD_REC_VRC').AsString:=codrec;
          cdsdestino.fieldByName('RECDESDO_VRC').AsString:=recdesdo;
          cdsdestino.fieldByName('ISS_VRC').AsString:='N';
          cdsdestino.fieldByName('TXL_VRC').AsString:='S';
          cdsdestino.fieldByName('ANUAL_VRC').AsString:='S';
          cdsdestino.fieldByName('MENSAL_VRC').AsString:='N';
          cdsdestino.fieldByName('APDTABERT_VRC').AsString:='S';
          cdsdestino.fieldByName('COBABERT_VRC').AsString:='N';
          cdsdestino.fieldByName('cod_mod_VRC').AsString:='2';
          cdsdestino.fieldByName('cod_rep_VRC').AsString:='500';
          cdsdestino.fieldByName('LOGIN_INC_VRC').AsString:='CONVERSAO';
          cdsdestino.fieldByName('DTA_INC_VRC').value:=date;
          cdsdestino.ApplyUpdates(-1);




     QOrigem.Next
     end;

     Conexao.Commit(TD);
    }

end;



procedure TFPrincipal.TipoEmpresa;
 var cont,modulo,erros:Integer;
begin

    cdsdestino.close;
    sqlDestino.commandText:='select * from LI_TIPOEMPRESA WHERE COD_EMP_TEM=1 AND COD_TEM=0';
    cdsdestino.open;
    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.edit;

    cdsdestino.FieldByName('COD_EMP_TEM').AsInteger:=1;
    cdsdestino.FieldByName('COD_TEM').AsInteger:=0;
    cdsdestino.FieldByName('DESCRI_TEM').AsString:='N�o classificada';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_TEM').AsInteger:=1;
    cdsdestino.FieldByName('COD_TEM').AsInteger:=1;
    cdsdestino.FieldByName('DESCRI_TEM').AsString:='Microempresa (ME)';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_TEM').AsInteger:=1;
    cdsdestino.FieldByName('COD_TEM').AsInteger:=2;
    cdsdestino.FieldByName('DESCRI_TEM').AsString:='Empresa de pequeno porte (EPP)';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_TEM').AsInteger:=1;
    cdsdestino.FieldByName('COD_TEM').AsInteger:=3;
    cdsdestino.FieldByName('DESCRI_TEM').AsString:='Empresa de m�dio porte (EMP)';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_TEM').AsInteger:=1;
    cdsdestino.FieldByName('COD_TEM').AsInteger:=4;
    cdsdestino.FieldByName('DESCRI_TEM').AsString:='Empresa de Grande porte (EGP)';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_TEM').AsInteger:=1;
    cdsdestino.FieldByName('COD_TEM').AsInteger:=5;
    cdsdestino.FieldByName('DESCRI_TEM').AsString:='Microempreendedor Individual (MEI)';
    cdsDestino.post;




    Erros:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
    if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

    if Erros = 0 then Conexao.Commit(TD)
    else begin
      Conexao.Rollback(TD);
      exit;
    end;



end;



procedure TFPrincipal.TipoCadastro;
 var cont,modulo,erros:Integer;
begin



    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.SQL.Add('select * from TRIISSCLAS  ');
    QOrigem.Open;
    while not QOrigem.Eof do begin

        cdsdestino.close;
        sqlDestino.commandText:='select * from LI_TIPOCADASTRO WHERE COD_EMP_TPC=1 and COD_TPC='+IntToStr(QOrigem.FieldByName('CLA_I_COD').AsInteger);
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('COD_EMP_TPC').AsInteger:=1;
        cdsdestino.FieldByName('COD_TPC').AsInteger:=QOrigem.FieldByName('CLA_I_COD').AsInteger;
        cdsdestino.FieldByName('DESCRICAO_TPC').AsString:=QOrigem.FieldByName('CLA_A_DES').AsString;

        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;

    QOrigem.Next;
    end;
    {


    // apenas jacutinga
    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.SQL.Add(' select distinct byte_substr(bce.i_item,-3,-4)  as grupo,bce.descricao,byte_substr(bce.i_item,-1,-2) as desdobro '+
                    ' from bethadba.bce '+
                    ' where byte_substr(bce.i_item,-1,-2) <> ''00'' and byte_substr(bce.i_item,-3,-4)=2 '
                    );
    QOrigem.Open;
    while not QOrigem.Eof do begin

        cdsdestino.close;
        sqlDestino.commandText:='select * from LI_TIPOCADASTRO WHERE COD_EMP_TPC=1 and COD_TPC='+IntToStr(QOrigem.FieldByName('desdobro').AsInteger);
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('COD_EMP_TPC').AsInteger:=1;
        cdsdestino.FieldByName('COD_TPC').AsInteger:=QOrigem.FieldByName('desdobro').AsInteger;
        cdsdestino.FieldByName('DESCRICAO_TPC').AsString:=QOrigem.FieldByName('descricao').AsString;

        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;

    QOrigem.Next;
    end;
     }

end;


procedure TFPrincipal.Graficas;
var Cadastro,codcnt:String;
    cont,Erros:Integer;
begin
        lbFuncao.caption:='Graficas';
        lbFuncao.update;

        QVerifica.close;
        QVerifica.sql.Text:=' delete FROM LI_GRAFICAS ';
        QVerifica.execsql;


        cdsdestino.close;
        sqlDestino.commandText:=' SELECT * FROM LI_GRAFICAS '+
                                ' WHERE COD_EMP_GRA=1 AND COD_GRA=0 ';
        cdsdestino.open;

        if cdsdestino.IsEmpty then begin
            cdsdestino.append;
            cdsdestino.fieldByName('COD_EMP_GRA').AsString:='1';
            cdsdestino.fieldByName('COD_GRA').AsString:='0';
            QVerifica.close;
            QVerifica.sql.clear;
            QVerifica.sql.add('SELECT CODCNTPREF_EMP FROM GR_CAD_EMPRESA ');
            QVerifica.open;

            cdsdestino.fieldByName('COD_CNT_GRA').AsString:=QVerifica.fieldByName('CODCNTPREF_EMP').AsString;
            cdsdestino.fieldByName('NOMEFANTASIA_GRA').AsString:='PREFEITURA MUNICIPAL';
            cdsdestino.fieldByName('INSCRE_GRA').AsString:='0';


            Erros:=0;
            if not Conexao.InTransaction then Conexao.StartTransaction(TD);


            if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
            if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

            if Erros = 0 then Conexao.Commit(TD)
            else begin
              Conexao.Rollback(TD);
            end;
        end;


    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * from TRIGRA ');
    QOrigem.Open;

    cont:=0;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    while not QOrigem.Eof do
    begin
     inc(cont);
     lbitem.caption:=inttostr(cont);
     lbitem.update;

     lbchave.caption:=QOrigem.fieldByname('CNTI_I_CON').AsString;
     lbchave.update;

      cdsdestino.close;
      sqlDestino.commandText:=' SELECT * FROM LI_GRAFICAS '+
                            ' WHERE COD_EMP_GRA=1 AND COD_CNT_GRA='''+ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString)+''' ';
      cdsdestino.open;
      if cdsdestino.IsEmpty then
        cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.fieldByName('COD_EMP_GRA').AsString:='1';
      cdsdestino.fieldByName('COD_GRA').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString);
      cdsdestino.fieldByName('COD_CNT_GRA').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString);
      cdsdestino.fieldByName('NOMEFANTASIA_GRA').AsString:=QOrigem.fieldByName('GRA_A_NOM').AsString;
      cdsdestino.fieldByName('INSCRE_GRA').AsString:='';
      cdsdestino.Post;
      cdsdestino.ApplyUpdates(-1);

    QOrigem.Next;
    end;

    Conexao.Commit(TD);

end;


procedure TFPrincipal.Escritorios;
var Cadastro,codcnt:String;
    cont,Erros:Integer;
begin
    lbFuncao.caption:='Escritorios';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('SELECT * '+
                    'FROM ASP02_CONTADOR '
                    );

    QOrigem.Open;

    cont:=0;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    while not QOrigem.Eof do
    begin
     inc(cont);
     lbitem.caption:=inttostr(cont);
     lbitem.update;

     lbchave.caption:=QOrigem.fieldByname('CNTI_I_CON').AsString;
     lbchave.update;

      cdsdestino.close;
      sqlDestino.commandText:=' SELECT * FROM LI_ESCRITORIO '+
                              ' WHERE COD_EMP_ESC=1 AND COD_CNT_ESC='''+ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString)+''' ';
      cdsdestino.open;
      if cdsdestino.IsEmpty then
        cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.fieldByName('COD_EMP_ESC').AsString:='1';
      cdsdestino.fieldByName('COD_ESC').AsString         :=ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString);
      cdsdestino.fieldByName('COD_CNT_ESC').AsString     :=ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString);
      cdsdestino.fieldByName('NOMEFANTASIA_ESC').AsString:=QOrigem.fieldByName('CON_A_ESCRITORIO').AsString;
      cdsdestino.fieldByName('CRC_ESC').AsString         :=QOrigem.fieldByName('CONT_A_CRC').AsString;
      cdsdestino.Post;
      cdsdestino.ApplyUpdates(-1);

    QOrigem.Next;
    end;

    Conexao.Commit(TD);

end;


procedure TFPrincipal.CodigoCobrancaMobiliario;
 var cont,modulo,erros:Integer;
begin

    cdsdestino.close;
    sqlDestino.commandText:='select * from LI_COBRANCA WHERE COD_EMP_COB=1';
    cdsdestino.open;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=1;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='NORMAL';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=2;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='ISENTO LICENCA';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=3;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='ISENTO ISSQN';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=4;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='SUSPENSA';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=5;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='ISENTO TOTAL';
    cdsDestino.post;

    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=6;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='CANCELADA';
    cdsDestino.post;


    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=7;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='IMUNE';
    cdsDestino.post;


    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_COB').AsInteger:=1;
    cdsdestino.FieldByName('COD_COB').AsInteger:=8;
    cdsdestino.FieldByName('PERIODO_COB').AsInteger:=9999;
    cdsdestino.FieldByName('DESCRI_COB').AsString:='REMIDO';
    cdsDestino.post;



    Erros:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
    if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

    if Erros = 0 then Conexao.Commit(TD)
    else begin
      Conexao.Rollback(TD);
      exit;
    end;

end;


procedure TFPrincipal.SetorVencimentoMobiliario;
 var cont,erros:Integer;
begin

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    cdsdestino.close;
    sqlDestino.commandText:='select * from LI_SETOR WHERE COD_EMP_STR=1 and COD_STR=''0001'' AND EXERCICIO_STR='+FormatDateTime('YYYY', now);
    cdsdestino.open;
    if cdsdestino.IsEmpty then begin
    cdsdestino.append;
    cdsdestino.FieldByName('COD_EMP_STR').AsInteger:=1;
    cdsdestino.FieldByName('COD_STR').AsString:='0001';
    cdsdestino.FieldByName('EXERCICIO_STR').AsString:=FormatDateTime('YYYY', now);
    cdsdestino.FieldByName('COD_IND_STR').AsString:='1';
    cdsdestino.FieldByName('LI_RESPONSA_STR').AsString:='SETOR �NICO';
    cdsDestino.post;
    cdsdestino.ApplyUpdates(-1);
    end;


  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.sql.add('SELECT TRIVEN.IMP_I_COD , '+
                                  'TRIVEN4.VEN_S_PAR NRPARCE_VEN, '+
                                  'MAX(TRIVEN4.CON_D_VEN) VENCI_VEN, '+
                                  'IIF(TRIVEN4.VEN_S_PAR=0,''S'',''N'') UNICA_VEN '+
                           'FROM TRIVEN '+
                           'INNER JOIN TRIVEN2 ON TRIVEN2.VEN_S_COD = TRIVEN.VEN_S_COD '+
                           'INNER JOIN TRIVEN4 ON TRIVEN4.VEN_S_COD = TRIVEN.VEN_S_COD '+
                           'WHERE TRIVEN.IMP_I_COD in ('+codsetorvencimentomobil+') AND TRIVEN.VEN_I_ANO='+FormatDateTime('YYYY', now)+
                           ' AND EXTRACT(YEAR FROM TRIVEN4.CON_D_VEN) = TRIVEN.VEN_I_ANO '+
                           'GROUP BY TRIVEN.IMP_I_COD, TRIVEN4.VEN_S_PAR, TRIVEN4.VEN_S_PAR'
                  );
  QOrigem.Open;

  while not QOrigem.Eof do begin

    cdsdestino.close;
    sqlDestino.commandText:='select * from LI_VENCIMENTOS '+
                            ' WHERE COD_EMP_VEN=1 and COD_STR_VEN=''0001'' AND EXERCICIO_VEN='+FormatDateTime('YYYY', now)+
                            ' AND COD_REP_VEN='+QOrigem.FieldByName('IMP_I_COD').AsString+' AND NRPARCE_VEN='+QOrigem.FieldByName('NRPARCE_VEN').AsString+' AND COD_MOD_VEN=2 ';
    cdsdestino.open;
    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.edit;

    cdsdestino.FieldByName('COD_EMP_VEN').AsInteger:=1;
    cdsdestino.FieldByName('COD_STR_VEN').AsString:='0001';
    cdsdestino.FieldByName('EXERCICIO_VEN').AsString:=FormatDateTime('YYYY', now);

    cdsdestino.FieldByName('NRPARCE_VEN').AsString:=QOrigem.FieldByName('NRPARCE_VEN').AsString;
    cdsdestino.FieldByName('COD_MOD_VEN').AsString:='2';
    cdsdestino.FieldByName('COD_REP_VEN').AsString:=QOrigem.FieldByName('IMP_I_COD').AsString;
    cdsdestino.FieldByName('VENCI_VEN').AsString  :=QOrigem.FieldByName('VENCI_VEN').AsString;
    cdsdestino.FieldByName('UNICA_VEN').AsString  :=QOrigem.FieldByName('UNICA_VEN').AsString;

    cdsDestino.post;
    cdsdestino.ApplyUpdates(-1);




  QOrigem.Next;
  end;

  Conexao.Commit(TD);
end;

procedure TFPrincipal.CaracteristicaMobiliario;
var i,item:Integer;
    grupoante,padrao:String;
begin

    lbFuncao.Caption:='Caracteristica';
    lbFuncao.update;


    // grupos das caracteristicas //
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select * from TRICAR1 WHERE CAR_S_TIP in (8,21,22,9) ');
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM LI_CAD_CRT WHERE COD_EMP_MC1=1 AND COD_MC1='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_MC1').AsInteger :=1;
        cdsdestino.fieldByName('COD_MC1').value         :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);
        cdsdestino.fieldByName('MOSTRAR_MC1').AsString  :='S';
        cdsdestino.fieldByName('ORDEM_MC1').AsString    :=trim(QOrigem.fieldByname('CAR_S_COD').AsString);
        cdsdestino.fieldByName('DESCRI_MC1').AsString   :=trim(QOrigem.fieldByname('CAR_A_DES').AsString);
        cdsdestino.fieldByName('LOGIN_INC_MC1').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_MC1').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);


    // Desdobro das caracteristicas //
    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add('select TRICAR2.* from TRICAR2 '+
                    'INNER JOIN TRICAR1 ON TRICAR1.CAR_S_COD=TRICAR2.CAR_S_COD '+
                    'WHERE TRICAR1.CAR_S_TIP in (8,21,22,9)  '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    i:=0;
    grupoante:='';
    item:=0;
    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;
        if grupoante<>ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString) then
        i:=0;



        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM LI_CAD_DESDOCRT '+
                                ' WHERE COD_EMP_MC2=1 AND COD_CRT_MC2='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString)+''' AND COD_MC2='''+ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString)+'''';
        cdsdestino.open;
        if cdsdestino.IsEmpty then begin
         inc(i);
         cdsdestino.append;
         cdsdestino.fieldByName('ORDEM_MC2').AsInteger   :=i;
         if i=1 then
         cdsdestino.fieldByName('PADRAO_MC2').AsString   :='S'
         else
         cdsdestino.fieldByName('PADRAO_MC2').AsString   :='N';
        end
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_MC2').AsInteger :=1;
        cdsdestino.fieldByName('COD_CRT_MC2').value     :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);
        cdsdestino.fieldByName('COD_MC2').value         :=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_OPC').AsString);
        cdsdestino.fieldByName('DESCRI_MC2').AsString   :=trim(QOrigem.fieldByname('CAR_A_DES').AsString);

        cdsdestino.fieldByName('LOGIN_INC_MC2').AsString:='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_MC2').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

        grupoante:=ZeraEsquerda(4,QOrigem.fieldByName('CAR_S_COD').AsString);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.Atividades;
 var cont,erros:Integer;
 codatv,codatd,codaux,codlei,exercicio:String;
begin


    exercicio:='2021';

    lbFuncao.Caption:='Atividades';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.SQL.Text := 'select count(*) as qtd from ASP02_ATIVIDADES '+
                        'where CHAR_LENGTH(CBO_A_COD)<>7 ';

    QOrigem.Open;

    lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
    lbtotal.update;
    ProgressBar1.max:=QOrigem.fieldByname('qtd').AsInteger;


    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('DELETE FROM LI_VALORATIVIDADE ');
    //QVerifica.ExecSQL;


    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('DELETE FROM LI_ATIVDESDO ');
    //QVerifica.ExecSQL;

    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('DELETE FROM LI_ATIVIDADE ');
    //QVerifica.ExecSQL;

    QOrigem.Close;
    QOrigem.SQL.Text := 'select * from ASP02_ATIVIDADES '+
                        'where CHAR_LENGTH(CBO_A_COD)<>7 ';
    QOrigem.Open;

    cont:=0;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);


    while not QOrigem.Eof do
    begin

        inc(cont);
        lbchave.caption:=QOrigem.FieldByName('CBO_A_COD').AsString;
        lbchave.update;

        ProgressBar1.position:=cont;

        if (QOrigem.FieldByName('CBO_A_COD').AsString>='-1') and (QOrigem.FieldByName('CBO_A_COD').AsString<='-1') then begin
         codaux:=ZeraEsquerda(5,trim(QOrigem.FieldByName('CBO_A_COD').AsString));
         codlei:=copy(codaux,1,2)+'.'+copy(codaux,4,2);
         codatv:=ZeraEsquerda(6,copy(codaux,1,2));
         codatd:=ZeraEsquerda(7,copy(codaux,4,2));
        end
        else begin

          codlei:='';
          cdsdestino.close;
          sqlDestino.commandText:='select * from LI_ATIVIDADE '+
                                 ' where COD_EMP_ATV=1 AND CODAUX_ATV='''+ZeraEsquerda(10,QOrigem.FieldByName('CBO_A_COD').AsString)+'''';

          cdsdestino.open;
          if cdsdestino.IsEmpty then begin
            cdsdestino.append;
            cdsdestino.fieldByName('COD_EMP_ATV').AsString:='1';

            QVerifica.Close;
            QVerifica.SQL.Clear;
            QVerifica.SQL.Add('SELECT COALESCE(MAX(COD_ATV),0) as cod FROM LI_ATIVIDADE where cod_atv<''999999'' ');
            QVerifica.open;


            codatv:=ZeraEsquerda(6,IntToSTr(QVerifica.FieldByName('cod').AsInteger+1));

            //codatv:=ZeraEsquerda(6,QOrigem.FieldByName('CBO_A_COD').AsString);

            cdsdestino.fieldByName('COD_ATV').AsString          :=codatv;
            cdsdestino.fieldByName('ATIVIDADE_ATV').AsString    :=QOrigem.FieldByName('CBO_A_DES').AsString;
            cdsdestino.fieldByName('CODAUX_ATV').AsString       :=ZeraEsquerda(10,QOrigem.FieldByName('CBO_A_COD').AsString);
            {
            if QOrigem.FieldByName('cdGrupoAtividade').AsString='4' then
             cdsdestino.fieldByName('TIPOATIVIDADE_ATV').AsString:='01 - Presta��o de Servi�o'
            else
            if QOrigem.FieldByName('cdGrupoAtividade').AsString='3' then
             cdsdestino.fieldByName('TIPOATIVIDADE_ATV').AsString:='01 - Presta��o de Servi�o'
            else
             cdsdestino.fieldByName('TIPOATIVIDADE_ATV').AsString:='02 - Licen�a';
             }
             cdsdestino.fieldByName('TIPOATIVIDADE_ATV').AsString:='02 - Licen�a';


            cdsdestino.Post;
            cdsdestino.ApplyUpdates(-1);
          end
          else
          codatv:=cdsDestino.FieldByName('COD_ATV').AsString;

          QVerifica.Close;
          QVerifica.SQL.Clear;
          QVerifica.SQL.Add('SELECT COALESCE(MAX(COD_ATD),0) as cod FROM LI_ATIVDESDO WHERE COD_EMP_ATD=1 AND COD_ATV_ATD='''+codatv+'''');
          QVerifica.open;
          codatd:=ZeraEsquerda(7,IntToSTr(QVerifica.FieldByName('cod').AsInteger+1));
        end;


{
01 - Presta��o de Servi�o
02 - Licen�a
03 - Ambulante
04 - Hor�rio Especial
05 - Publicidade
06 - Vigil�ncia Sanit�ria
07 - Ocupa��o
08 - Outros
09 - Informativo
}

        cdsdestino.close;
        sqlDestino.commandText:='select * from LI_ATIVDESDO '+
                               ' where COD_EMP_ATD=1 AND CODAUX_ATD='''+ZeraEsquerda(10,QOrigem.FieldByName('CBO_A_COD').AsString)+'''';

        cdsdestino.open;
        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_ATD').AsString:='1';
        cdsdestino.fieldByName('COD_ATD').AsString:=codatd;
        cdsdestino.fieldByName('COD_ATV_ATD').AsString:=codatv;
        cdsdestino.fieldByName('ABREVATIV_ATD').AsString:=QOrigem.fieldByname('CBO_A_DES').AsString;
        cdsdestino.fieldByName('DESCATIV_ATD').AsString:=QOrigem.fieldByname('CBO_A_DES').AsString;
        cdsdestino.fieldByName('CODAUX_ATD').AsString:=ZeraEsquerda(10,QOrigem.fieldByname('CBO_A_COD').AsString);

        if trim(codlei)<>'' then
        cdsdestino.fieldByName('CODLEI_ATD').AsString:=codlei;

        cdsdestino.Post;
        cdsdestino.ApplyUpdates(0);




       cdsdestino.close;
       sqlDestino.commandText:='select * from LI_VALORATIVIDADE '+
                                      ' where COD_EMP_VRA=1 AND COD_ATV_VRA IS NULL ';

       cdsdestino.open;

         QEventos.sql.Clear;
         QEventos.sql.clear;
         QEventos.sql.add('select ASP02_ATIVIDADES_VALOR.*,ASP02_ATIVIDFORMAS.imp_i_cod from ASP02_ATIVIDADES_VALOR '+
                          ' inner join ASP02_ATIVIDFORMAS on ASP02_ATIVIDFORMAS.FOR_I_COD=ASP02_ATIVIDADES_VALOR.FOR_I_COD '+
                          ' where cbo_a_cod='''+QOrigem.FieldByName('CBO_A_COD').AsString+''' and CBO_D_FIM is null and ASP02_ATIVIDADES_VALOR.FOR_I_COD=3 '
                          );
         QEventos.Open;
         while not QEventos.eof do begin
              //SELECT * FROM TRIVALFAIXA


{
COMMENT ON COLUMN ASP02_ATIVIDADES_VALOR.CBO_A_TIPO IS
'Tipo do valor da alíquota:
1-Quantidade
2-Valor Financeiro
3-Fator
4-Percentual
5-Não possui valor.';

COMMENT ON COLUMN ASP02_ATIVIDADES_VALOR.CBO_I_TIPO IS
'Tipo do valor da alíquota.';
}

                if (QEventos.fieldByName('FOR_I_COD').AsString='1') then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRA').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRA').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRA').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRA').AsCurrency:=QEventos.fieldByname('CBO_N_ALIQ').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRA').AsString:='04 - Sobre o Faturamento';
                  cdsdestino.fieldByName('TIPVALOR_VRA').AsString:='02 - Porcentagem';
                  cdsdestino.fieldByName('COD_mod_VRA').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRA').AsString:='S';
                  cdsdestino.fieldByName('TXL_VRA').AsString:='N';
                  cdsdestino.fieldByName('COD_REP_VRA').AsString:='86';
                  cdsdestino.fieldByName('COD_REC_VRA').AsString:='5';
                  cdsdestino.fieldByName('ANUAL_VRA').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRA').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRA').AsString:='S';
                  cdsdestino.fieldByName('COBABERT_VRA').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRA').AsString:=exercicio;
                  cdsdestino.fieldByName('LIMITEI_VRA').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRA').AsString:='99999999';
                  cdsdestino.fieldByName('COD_ATV_VRA').AsString:=ZeraEsquerda(6,codatv);
                  cdsdestino.fieldByName('COD_ATD_VRA').AsString:=ZeraEsquerda(7,codatd);
                  cdsdestino.fieldByName('LOGIN_INC_VRA').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRA').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;

              if (QEventos.fieldByName('FOR_I_COD').AsString='3') then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRA').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRA').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRA').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRA').AsCurrency:=QEventos.fieldByname('CBO_N_VALOR').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRA').AsString:='01 - Valor Fixo';
                  cdsdestino.fieldByName('TIPVALOR_VRA').AsString:='04  - % da UFM';
                  cdsdestino.fieldByName('COD_mod_VRA').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRA').AsString:='S';
                  cdsdestino.fieldByName('TXL_VRA').AsString:='N';
                  cdsdestino.fieldByName('COD_REP_VRA').AsString:=QEventos.fieldByName('imp_i_cod').AsString;
                  cdsdestino.fieldByName('COD_REC_VRA').AsString:='11';
                  cdsdestino.fieldByName('ANUAL_VRA').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRA').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRA').AsString:='S';
                  cdsdestino.fieldByName('COBABERT_VRA').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRA').AsString:=exercicio;
                  cdsdestino.fieldByName('LIMITEI_VRA').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRA').AsString:='99999999';
                  cdsdestino.fieldByName('COD_ATV_VRA').AsString:=ZeraEsquerda(6,codatv);
                  cdsdestino.fieldByName('COD_ATD_VRA').AsString:=ZeraEsquerda(7,codatd);
                  cdsdestino.fieldByName('LOGIN_INC_VRA').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRA').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;



              if (QEventos.fieldByName('FOR_I_COD').AsString='6')  then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRA').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRA').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRA').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRA').AsCurrency:=QEventos.fieldByname('CBO_N_VALOR').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRA').AsString:='01 - Valor Fixo';
                  cdsdestino.fieldByName('TIPVALOR_VRA').AsString:='03 - UFM';
                  cdsdestino.fieldByName('COD_mod_VRA').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRA').AsString:='N';
                  cdsdestino.fieldByName('TXL_VRA').AsString:='S';
                  cdsdestino.fieldByName('COD_REP_VRA').AsString:=QEventos.fieldByName('imp_i_cod').AsString;;
                  cdsdestino.fieldByName('COD_REC_VRA').AsString:='53';
                  cdsdestino.fieldByName('ANUAL_VRA').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRA').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRA').AsString:='S';
                  cdsdestino.fieldByName('BASETIPOCALCPORCE_VRA').AsString:='S';
                  cdsdestino.fieldByName('COBABERT_VRA').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRA').AsString:=exercicio;
                  cdsdestino.fieldByName('LIMITEI_VRA').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRA').AsString:='99999999';
                  cdsdestino.fieldByName('COD_ATV_VRA').AsString:=ZeraEsquerda(6,codatv);
                  cdsdestino.fieldByName('COD_ATD_VRA').AsString:=ZeraEsquerda(7,codatd);
                  cdsdestino.fieldByName('LOGIN_INC_VRA').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRA').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;



              if (QEventos.fieldByName('FOR_I_COD').AsString='7')  then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRA').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRA').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRA').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRA').AsCurrency:=QEventos.fieldByname('CBO_N_VALOR').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRA').AsString:='01 - Valor Fixo';
                  cdsdestino.fieldByName('TIPVALOR_VRA').AsString:='03 - UFM';
                  cdsdestino.fieldByName('COD_mod_VRA').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRA').AsString:='N';
                  cdsdestino.fieldByName('TXL_VRA').AsString:='S';
                  cdsdestino.fieldByName('COD_REP_VRA').AsString:=QEventos.fieldByName('imp_i_cod').AsString;;
                  cdsdestino.fieldByName('COD_REC_VRA').AsString:='70';
                  cdsdestino.fieldByName('ANUAL_VRA').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRA').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRA').AsString:='S';
                  cdsdestino.fieldByName('BASETIPOCALCPORCE_VRA').AsString:='N';
                  cdsdestino.fieldByName('COBABERT_VRA').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRA').AsString:=exercicio;
                  cdsdestino.fieldByName('LIMITEI_VRA').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRA').AsString:='99999999';
                  cdsdestino.fieldByName('COD_ATV_VRA').AsString:=ZeraEsquerda(6,codatv);
                  cdsdestino.fieldByName('COD_ATD_VRA').AsString:=ZeraEsquerda(7,codatd);
                  cdsdestino.fieldByName('LOGIN_INC_VRA').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRA').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;



              if (QEventos.fieldByName('FOR_I_COD').AsString='8')  then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRA').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRA').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRA').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRA').AsCurrency:=QEventos.fieldByname('CBO_N_VALOR').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRA').AsString:='01 - Valor Fixo';
                  cdsdestino.fieldByName('TIPVALOR_VRA').AsString:='03 - UFM';
                  cdsdestino.fieldByName('COD_mod_VRA').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRA').AsString:='N';
                  cdsdestino.fieldByName('TXL_VRA').AsString:='S';
                  cdsdestino.fieldByName('COD_REP_VRA').AsString:=QEventos.fieldByName('imp_i_cod').AsString;;
                  cdsdestino.fieldByName('COD_REC_VRA').AsString:='86';
                  cdsdestino.fieldByName('ANUAL_VRA').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRA').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRA').AsString:='S';
                  cdsdestino.fieldByName('BASETIPOCALCPORCE_VRA').AsString:='N';
                  cdsdestino.fieldByName('COBABERT_VRA').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRA').AsString:=exercicio;
                  cdsdestino.fieldByName('LIMITEI_VRA').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRA').AsString:='99999999';
                  cdsdestino.fieldByName('COD_ATV_VRA').AsString:=ZeraEsquerda(6,codatv);
                  cdsdestino.fieldByName('COD_ATD_VRA').AsString:=ZeraEsquerda(7,codatd);
                  cdsdestino.fieldByName('LOGIN_INC_VRA').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRA').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;



              if (QEventos.fieldByName('FOR_I_COD').AsString='11')  then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRA').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRA').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRA').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRA').AsCurrency:=QEventos.fieldByname('CBO_N_VALOR').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRA').AsString:='01 - Valor Fixo';
                  cdsdestino.fieldByName('TIPVALOR_VRA').AsString:='03 - UFM';
                  cdsdestino.fieldByName('COD_mod_VRA').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRA').AsString:='N';
                  cdsdestino.fieldByName('TXL_VRA').AsString:='S';
                  cdsdestino.fieldByName('COD_REP_VRA').AsString:=QEventos.fieldByName('imp_i_cod').AsString;;
                  cdsdestino.fieldByName('COD_REC_VRA').AsString:='105';
                  cdsdestino.fieldByName('ANUAL_VRA').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRA').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRA').AsString:='S';
                  cdsdestino.fieldByName('BASETIPOCALCPORCE_VRA').AsString:='N';
                  cdsdestino.fieldByName('COBABERT_VRA').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRA').AsString:=exercicio;
                  cdsdestino.fieldByName('LIMITEI_VRA').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRA').AsString:='99999999';
                  cdsdestino.fieldByName('COD_ATV_VRA').AsString:=ZeraEsquerda(6,codatv);
                  cdsdestino.fieldByName('COD_ATD_VRA').AsString:=ZeraEsquerda(7,codatd);
                  cdsdestino.fieldByName('LOGIN_INC_VRA').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRA').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;


         QEventos.Next;
         end;






     QOrigem.Next
     end;

     Conexao.Commit(TD);

end;




procedure TFPrincipal.AtividadesCnae;
 var cont,erros:Integer;
 codatv,codatd,codaux,codcna:String;
begin


    lbFuncao.Caption:='Atividades CNAE';
    lbFuncao.update;


    QOrigem.Close;
    QOrigem.SQL.Text := 'select count(*) as qtd from ASP02_ATIVIDADES '+
                        'where CHAR_LENGTH(CBO_A_COD)=7';

    QOrigem.Open;

    QOrigem.Open;
    lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
    lbtotal.update;
    ProgressBar1.max:=QOrigem.fieldByname('qtd').AsInteger;


    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('DELETE FROM LI_VALORCNAE ');
    QVerifica.ExecSQL;




    QVerifica.Close;
    QVerifica.SQL.Clear;
    QVerifica.SQL.Add('DELETE FROM LI_CNAE ');
   // QVerifica.ExecSQL;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);



    QOrigem.Close;
    QOrigem.SQL.Text := 'select * from ASP02_ATIVIDADES '+
                        'where CHAR_LENGTH(CBO_A_COD)=7 ';


    QOrigem.Open;

    cont:=0;

    if not Conexao.InTransaction then Conexao.StartTransaction(TD);


    while not QOrigem.Eof do
    begin

     try
        inc(cont);
        lbchave.caption:=QOrigem.FieldByName('cbo_a_cod').AsString;
        lbchave.update;

        ProgressBar1.position:=cont;

          codcna:=QOrigem.FieldByName('cbo_a_cod').AsString;



          cdsdestino.close;
          sqlDestino.commandText:=' select * from LI_CNAE '+
                                  ' where COD_EMP_CNA=1 AND COD_CNA='''+codcna+''' ';

          cdsdestino.open;
          if cdsdestino.IsEmpty then begin
            cdsdestino.append;
            cdsdestino.fieldByName('COD_EMP_CNA').AsString:='1';
            cdsdestino.fieldByName('COD_CNA').AsString          :=codcna;
            cdsdestino.fieldByName('DESCRICAO_CNA').AsString    :=QOrigem.FieldByName('cbo_a_des').AsString;

            if QOrigem.fieldByName('CBO_S_ATIVO').AsString='0' then begin
             cdsdestino.fieldByName('TITULO_CNA').AsString      :='S';
             cdsdestino.fieldByName('NIVEL_CNA').AsString       :='1';
            end
            else begin
             cdsdestino.fieldByName('TITULO_CNA').AsString      :='N';
             cdsdestino.fieldByName('NIVEL_CNA').AsString       :='4';
            end;

            cdsdestino.Post;
            cdsdestino.ApplyUpdates(-1);
          end;

       {


       cdsdestino.close;
       sqlDestino.commandText:='select * from LI_VALORCNAE '+
                                      ' where COD_EMP_VRC=1 AND COD_EMP_VRC IS NULL ';

       cdsdestino.open;


         QEventos.sql.Clear;
         QEventos.sql.clear;
         QEventos.sql.add('select * from ASP02_ATIVIDADES_VALOR where cbo_a_cod='''+QOrigem.FieldByName('cbo_a_cod').AsString+''' and cbo_d_fim is null ');
         QEventos.Open;
         while not QEventos.eof do begin



              if (QEventos.fieldByName('FOR_I_COD').AsString='1') and (QEventos.fieldByname('CBO_N_VALOR').AsCurrency>0)  then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRC').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRC').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRC').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRC').AsCurrency:=QEventos.fieldByname('CBO_N_VALOR').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRC').AsString:='01 - Valor Fixo';
                  cdsdestino.fieldByName('TIPVALOR_VRC').AsString:='03 - UFM';
                  cdsdestino.fieldByName('COD_mod_VRC').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRC').AsString:='S';
                  cdsdestino.fieldByName('TXL_VRC').AsString:='N';
                  cdsdestino.fieldByName('COD_REP_VRC').AsString:='58';
                  cdsdestino.fieldByName('COD_REC_VRC').AsString:='76';
                  cdsdestino.fieldByName('ANUAL_VRC').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRC').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRC').AsString:='S';
                  cdsdestino.fieldByName('COBABERT_VRC').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRC').AsString:='2017';
                  cdsdestino.fieldByName('LIMITEI_VRC').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRC').AsString:='99999999';
                  cdsdestino.fieldByName('COD_CNAE_VRC').AsString:=codcna;
                  cdsdestino.fieldByName('LOGIN_INC_VRC').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRC').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;



              if (QEventos.fieldByName('FOR_I_COD').AsString='2')  and (QEventos.fieldByname('CBO_N_VALOR').AsCurrency>0) then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRC').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRC').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRC').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRC').AsCurrency:=QEventos.fieldByname('CBO_N_VALOR').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRC').AsString:='01 - Valor Fixo';
                  cdsdestino.fieldByName('TIPVALOR_VRC').AsString:='03 - UFM';
                  cdsdestino.fieldByName('COD_mod_VRC').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRC').AsString:='N';
                  cdsdestino.fieldByName('TXL_VRC').AsString:='S';
                  cdsdestino.fieldByName('COD_REP_VRC').AsString:='18';
                  cdsdestino.fieldByName('COD_REC_VRC').AsString:='28';
                  cdsdestino.fieldByName('ANUAL_VRC').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRC').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRC').AsString:='S';
                  cdsdestino.fieldByName('BASETIPOCALCPORCE_VRC').AsString:='S';
                  cdsdestino.fieldByName('COBABERT_VRC').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRC').AsString:='2017';
                  cdsdestino.fieldByName('LIMITEI_VRC').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRC').AsString:='99999999';
                  cdsdestino.fieldByName('COD_CNAE_VRC').AsString:=codcna;
                  cdsdestino.fieldByName('LOGIN_INC_VRC').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRC').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;



              if (QEventos.fieldByName('FOR_I_COD').AsString='3') and (QEventos.fieldByname('CBO_N_ALIQ').AsCurrency>0) then begin
                  cdsdestino.append;
                  cdsdestino.fieldByName('COD_EMP_VRC').AsString:='1';
                  cdsdestino.fieldByName('COD_SEQ_VRC').AsString:='1';
                  cdsdestino.fieldByName('VINCULAREGIAO_VRC').AsString:='N';
                  cdsdestino.fieldByName('VALOR_VRC').AsCurrency:=QEventos.fieldByname('CBO_N_ALIQ').AsCurrency;
                  cdsdestino.fieldByName('TIPCALC_VRC').AsString:='04 - Sobre o Faturamento';
                  cdsdestino.fieldByName('TIPVALOR_VRC').AsString:='02 - Porcentagem';
                  cdsdestino.fieldByName('COD_mod_VRC').AsString:='2';
                  cdsdestino.fieldByName('ISS_VRC').AsString:='N';
                  cdsdestino.fieldByName('TXL_VRC').AsString:='S';
                  cdsdestino.fieldByName('COD_REP_VRC').AsString:='20';
                  cdsdestino.fieldByName('COD_REC_VRC').AsString:='31';
                  cdsdestino.fieldByName('ANUAL_VRC').AsString:='S';
                  cdsdestino.fieldByName('MENSAL_VRC').AsString:='N';
                  cdsdestino.fieldByName('APDTABERT_VRC').AsString:='S';
                  cdsdestino.fieldByName('BASETIPOCALCPORCE_VRC').AsString:='N';
                  cdsdestino.fieldByName('COBABERT_VRC').AsString:='N';
                  cdsdestino.fieldByName('EXERCICIO_VRC').AsString:='2017';
                  cdsdestino.fieldByName('LIMITEI_VRC').AsString:='0';
                  cdsdestino.fieldByName('LIMITEF_VRC').AsString:='99999999';
                  cdsdestino.fieldByName('COD_CNAE_VRC').AsString:=codcna;
                  cdsdestino.fieldByName('LOGIN_INC_VRC').AsString:='CONVERSAO';
                  cdsdestino.fieldByName('DTA_INC_VRC').value:=date;
                  cdsdestino.Post;
                  cdsdestino.ApplyUpdates(-1);

              end;




         QEventos.Next;
         end;

         }


     except
     ShowMessage(QOrigem.FieldByName('cbo_a_cod').AsString);

     end;


     QOrigem.Next
     end;

     Conexao.Commit(TD);

end;



procedure TFPrincipal.SociosMobil;
 var cont,erros,ncommit:Integer;
begin

  lbFuncao.Caption:='SociosMobil';
  lbFuncao.update;

  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add('select COUNT(*) AS QTD from PROPISS ');
  QOrigem.Open;

  lbtotal.Caption:=QOrigem.fieldByname('qtd').AsString;
  lbtotal.update;



  QOrigem.Close;
  QOrigem.SQL.Clear;
  QOrigem.SQL.Add(' SELECT TRIISS.CON_I_ISSQN,ASP02_SOCIOS.CNTI_I_CONSOC,ASP02_SOCIOS.SOC_N_PERC, TRITIPT.TIP_A_DES,ASP02_SOCIOS.SOC_D_FIM,ASP02_SOCIOS.SOC_D_INI '+
                  ' FROM ASP02_SOCIOS '+
                  ' INNER JOIN TRIISS             ON TRIISS.CNTI_I_CON             = ASP02_SOCIOS.CNTI_I_CONEMPR '+
                  ' LEFT JOIN CNTI_CONTRIBUINTES ON CNTI_CONTRIBUINTES.CNTI_I_CON = TRIISS.CNTI_I_CON '+
                  ' LEFT JOIN TRITIPT            ON TRITIPT.TIP_S_COD             = ASP02_SOCIOS.TIP_S_COD AND TRITIPT.TIP_S_APL = ''S'' '+
                  ' LEFT JOIN ASP02_PREFIXOS     ON ASP02_PREFIXOS.PRE_I_COD      = CNTI_CONTRIBUINTES.PRE_I_CODR '
                  );

  QOrigem.Open;

  ncommit:=0;
  cont:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  while not QOrigem.Eof do
  begin
    lbchave.Caption:=QOrigem.FieldByName('CON_I_ISSQN').AsString;
    lbchave.Update;

    inc(ncommit);

    inc(cont);
    lbitem.Caption:=InttoStr(cont);
    lbitem.Update;
    ProgressBar1.position:=cont;
    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM LI_SOCIOS WHERE COD_EMP_SOC=1 AND COD_MBL_SOC='''+ZeraEsquerda(9,QOrigem.FieldByName('CON_I_ISSQN').AsString)+''' '+
                            'and COD_CNT_SOC='''+ZeraEsquerda(9,QOrigem.FieldByName('CNTI_I_CONSOC').AsString)+''' ';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.Edit;

    cdsdestino.fieldByName('COD_EMP_SOC').AsString    :='1';
    cdsdestino.fieldByName('COD_MBL_SOC').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('CON_I_ISSQN').AsString);
    cdsdestino.fieldByName('COD_CNT_SOC').AsString    :=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_CONSOC').AsString);
    cdsdestino.fieldByName('QUALIFIC_SOC').AsString   :=QOrigem.fieldByname('TIP_A_DES').AsString+ 'Percentual: '+QOrigem.fieldByname('SOC_N_PERC').AsString+' % ';

    cdsdestino.fieldByName('DATAENTRADA_SOC').value   :=QOrigem.fieldByname('SOC_D_INI').value;
    cdsdestino.fieldByName('DATASAIDA_SOC').value     :=QOrigem.fieldByname('SOC_D_FIM').value;
    cdsdestino.post;
    cdsdestino.ApplyUpdates(-1);


    if ncommit=1000 then begin
     ncommit:=0;
     Conexao.Commit(TD);
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;



   QOrigem.Next;
  end;
   Conexao.Commit(TD);
end;


procedure TFPrincipal.CadastroMobiliario;
var codcalc,codaux,codcob,codtipolog,nometipolog,comple,auxisento,cobrataxa,codativprincipal:String;
    Situacao,dtAbertura, dtEncer, dtAlteracao, protAB, protBX: Variant;
    item,codrel:Integer;
    auxvalor1,auxvalor2,auxvalor3:Currency;
begin


  QVerifica.Close;
  QVerifica.SQL.Clear;
  QVerifica.SQL.add('DELETE FROM LI_CADATIV');
  QVerifica.execsql;

  QVerifica.Close;
  QVerifica.SQL.Clear;
  QVerifica.SQL.add('DELETE FROM LI_CADRECEITAS');
  QVerifica.execsql;

  QVerifica.Close;
  QVerifica.SQL.Clear;
  QVerifica.SQL.add('DELETE FROM LI_REL_CRT');
  QVerifica.execsql;


  lbFuncao.Caption:='CadastroMobiliario';
  lbFuncao.update;

  QOrigem.close;
  QOrigem.sql.clear;
  QOrigem.sql.add('select * from TRIISS  ');
  QOrigem.open;

  lbtotal.Caption:=IntToStr(ProgressBar1.max);
  lbtotal.Update;

  cdsdestino1.close;
  sqlDestino1.commandText:='SELECT * FROM LI_REL_CRT where COD_EMP_MC3=1 AND COD_MC3=-1';
  cdsdestino1.open;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);
  item:=0;
  codrel:=0;




  while not QOrigem.eof do
  begin
  codcalc:='0';

  inc(item);
  lbItem.Caption:=IntToStr(item);
  lbitem.Update;
  ProgressBar1.position:=item;

  lbchave.Caption:=QOrigem.fieldByName('CON_I_ISSQN').AsString;
  lbchave.Update;

  cdsdestino.close;
  sqlDestino.commandText:='SELECT * FROM LI_MOBIL WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QOrigem.fieldByName('CON_I_ISSQN').AsString)+'''';
  cdsdestino.open;
  if cdsdestino.IsEmpty then
   cdsdestino.append
  else
   cdsdestino.edit;

   cdsDestino.FieldByName('COD_EMP_MBL').AsInteger:=1;
   cdsDestino.FieldByName('COD_MBL').AsString    :=ZeraEsquerda(9,QOrigem.FieldByName('CON_I_ISSQN').AsString);
   cdsDestino.FieldByName('COD_CNT_MBL').AsString:=ZeraEsquerda(9,QOrigem.FieldByName('CNTI_I_CON').AsString);
   cdsDestino.FieldByName('COD_STR_MBL').AsString:='0001';
   cdsDestino.FieldByName('NOMEF_MBL').AsString  :=trim(QOrigem.FieldByName('CNTI_A_FAN').AsString);
   cdsDestino.FieldByName('INSCRM_MBL').AsString :=trim(QOrigem.FieldByName('ISS_A_INSCRICAO_01').AsString);
   cdsDestino.FieldByName('COD_ESC_MBL').value   :=QOrigem.FieldByName('CNTI_I_CONTADOR').value;

   //cdsDestino.FieldByName('INSCRE_MBL').AsString :=trim(QOrigem.FieldByName('inscricao_estadual').AsString);
   //cdsDestino.FieldByName('JUNTA_MBL').AsString  :=trim(QOrigem.FieldByName('num_junta_responsavel').AsString);
   //cdsDestino.FieldByName('DJUNTA_MBL').AsString :=trim(QOrigem.FieldByName('dt_reg_junta').AsString);
   //cdsDestino.FieldByName('JURID_MBL').AsString  :=trim(QOrigem.FieldByName('num_registro_cvm').AsString);
   //cdsDestino.FieldByName('COD_DST_MBL').value  :=QOrigem.FieldByName('i_distritos').value;

   if trim(QOrigem.FieldByName('IMO_I_COD').AsString) <> '' then
   cdsDestino.FieldByName('CAD_IPTU_MBL').AsString  :=ZeraEsquerda(9,trim(QOrigem.FieldByName('IMO_I_COD').AsString));



   comple:='';
   if QOrigem.fieldByname('LOG_I_COD').AsString<>'' then begin
     codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD').AsString),nometipolog,codtipolog);
     if trim(codaux)<>'-1' then
     cdsdestino.fieldByName('COD_LOG_MBL').AsString        :=trim(QOrigem.fieldByname('LOG_I_COD').AsString);
     if trim(codtipolog)<>'' then
     cdsdestino.fieldByName('COD_TIP_MBL').value           :=codtipolog;
   end
   else begin
     codaux:=VerificaNomeLogradouro(trim(QOrigem.fieldByname('END_A_LOGRADOURO').AsString),nometipolog,codtipolog);
     if trim(codaux)<>'-1' then
     cdsdestino.fieldByName('COD_LOG_MBL').AsString        :=codaux
     else
       comple:=Retirachar(trim(QOrigem.fieldByname('END_A_LOGRADOURO').AsString),'''');

     if trim(codtipolog)<>'' then
     cdsdestino.fieldByName('COD_TIP_MBL').value           :=codtipolog;

   end;

   if QOrigem.fieldByname('BAI_I_COD').AsString<>'' then begin
    codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD').AsString));
    if trim(codaux)<>'-1' then
    cdsdestino.fieldByName('COD_BAI_MBL').AsString       :=trim(QOrigem.fieldByname('BAI_I_COD').AsString);
   end
   else begin
    codaux:=VerificaNomeBairro(trim(QOrigem.fieldByname('END_A_BAIRRO').AsString));
    if trim(codaux)<>'-1' then
    cdsdestino.fieldByName('COD_BAI_MBL').AsString       :=codaux;
   end;


   cdsdestino.fieldByName('NUMERO_MBL').AsString:=QOrigem.fieldByname('END_A_NUM').AsString;
   codaux := comple;
   if trim(QOrigem.FieldByName('END_A_COM').AsString) <> '' then
    codaux := codaux +' '+ trim(QOrigem.FieldByName('END_A_COM').AsString);



   if trim(QOrigem.FieldByName('ISS_A_SALA').AsString) <> '' then
    codaux := codaux +'Sala '+ trim(QOrigem.FieldByName('ISS_A_SALA').AsString);

   if trim(QOrigem.FieldByName('ISS_A_CONJ').AsString) <> '' then
    codaux := codaux +'Conjunto '+ trim(QOrigem.FieldByName('ISS_A_CONJ').AsString);

   if trim(QOrigem.FieldByName('ISS_A_BLOCO').AsString) <> '' then
    codaux := codaux +'Bloco '+ trim(QOrigem.FieldByName('ISS_A_BLOCO').AsString);


   if trim(QOrigem.FieldByName('ISS_A_ANDAR').AsString) <> '' then
    codaux := codaux +'Andar '+ trim(QOrigem.FieldByName('ISS_A_ANDAR').AsString);

   if trim(QOrigem.FieldByName('ISS_A_APT').AsString) <> '' then
    codaux := codaux +'Apto '+ trim(QOrigem.FieldByName('ISS_A_APT').AsString);

   cdsdestino.fieldByName('COMPLE_MBL').AsString:=codaux;
   cdsdestino.fieldByName('CEPI_MBL').AsString   :=Tiracaracter(QOrigem.fieldByname('END_A_CEP').AsString);


   // correspondencia//

    if trim(QOrigem.FieldByName('LOG_I_COD_ENT').AsString)='' then begin
     cdsdestino.fieldByName('LOGRA_MBL').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('END_A_LOGRADOURO_ENT').AsString);
     codaux:=VerificaNomeLogradouro(trim(QOrigem.fieldByname('END_A_LOGRADOURO_ENT').AsString),nometipolog,codtipolog);
     if trim(codaux)<>'-1' then begin
      cdsdestino.fieldByName('COD_LOGE_MBL').AsString        :=codaux;

      if trim(codtipolog)<>'' then
      cdsdestino.fieldByName('COD_TIPE_MBL').value           :=codtipolog;
      if trim(nometipolog)<>'' then
      cdsdestino.fieldByName('TIPOLOGE_MBL').AsString        :=nometipolog;
     end;
    end
    else begin
     codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD_ENT').AsString),nometipolog,codtipolog);

     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('COD_LOGE_MBL').AsString        :=trim(QOrigem.fieldByname('LOG_I_COD_ENT').AsString);
     cdsdestino.fieldByName('LOGRA_MBL').AsString           :=TrocaAspasSimples(codaux);
     end;

     if trim(codtipolog)<>'' then
     cdsdestino.fieldByName('COD_TIPE_MBL').value           :=codtipolog;
     if trim(nometipolog)<>'' then
     cdsdestino.fieldByName('TIPOLOGE_MBL').AsString        :=nometipolog;
    end;

    if trim(QOrigem.FieldByName('BAI_I_COD_ENT').AsString)='' then begin
     cdsdestino.fieldByName('BAIRRO_MBL').AsString        :=TrocaAspasSimples(QOrigem.fieldByname('END_A_BAIRRO_ENT').AsString);
     codaux:=VerificaNomeBairro(trim(QOrigem.fieldByname('END_A_BAIRRO_ENT').AsString));
     if trim(codaux)<>'-1' then
     cdsdestino.fieldByName('COD_BAIE_MBL').AsString        :=codaux;
    end
    else begin
     codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD_ENT').AsString));
     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('COD_BAIE_MBL').AsString       :=trim(QOrigem.fieldByname('BAI_I_COD_ENT').AsString);
     cdsdestino.fieldByName('BAIRRO_MBL').AsString         :=codaux;
     end;
    end;


    if trim(QOrigem.FieldByName('LOG_I_COD_ENT').AsString) <> '' then begin
     QCadastro.Close;
     QCadastro.SQL.Clear;
     QCadastro.SQL.Add(' SELECT CNTI_I_IBGE '+
                      ' FROM ASP02_LOGRADOURO '+
                      ' WHERE LOG_I_COD='+QOrigem.FieldByName('LOG_I_COD_ENT').AsString
                      );
     QCadastro.Open;
    end
    else begin
     QCadastro.Close;
     QCadastro.SQL.Clear;
     QCadastro.SQL.Add(' SELECT CNTI_I_IBGE '+
                      ' FROM ASP02_LOGRADOURO '+
                      ' WHERE LOG_I_COD=-1'
                      );
     QCadastro.Open;
    end;

    if trim(QCadastro.fieldByName('CNTI_I_IBGE').AsString)='' then begin
      codaux:=VerificaNomeCidade(QOrigem.fieldByname('END_A_MUNICIPIO_ENT').AsString,QOrigem.fieldByname('END_A_UF_ENT').AsString);
      if trim(codaux)<>'-1' then
      cdsdestino.fieldByName('COD_CID_MBL').AsString        :=codaux;
    end
    else
    cdsdestino.fieldByName('COD_CID_MBL').AsString        :=ZeraEsquerda(7,trim(QCadastro.fieldByname('CNTI_I_IBGE').AsString));



     cdsdestino.fieldByName('NUMEROE_MBL').AsString:=QOrigem.fieldByname('ISS_A_NUM_ENT').AsString;

     codaux := '';
     if trim(QOrigem.FieldByName('ISS_A_COM_ENT').AsString) <> '' then
      codaux := codaux +' '+ trim(QOrigem.FieldByName('ISS_A_COM_ENT').AsString);

     if trim(QOrigem.FieldByName('ISS_A_BLOCO_ENT').AsString) <> '' then
      codaux := codaux +'Bloco '+ trim(QOrigem.FieldByName('ISS_A_BLOCO_ENT').AsString);

     if trim(QOrigem.FieldByName('ISS_A_APT_ENT').AsString) <> '' then
      codaux := codaux +'Apto '+ trim(QOrigem.FieldByName('ISS_A_APT_ENT').AsString);


     if trim(QOrigem.FieldByName('ISS_A_SALA_ENT').AsString) <> '' then
      codaux := codaux +'Sala '+ trim(QOrigem.FieldByName('ISS_A_SALA_ENT').AsString);

     if trim(QOrigem.FieldByName('ISS_A_ANDAR_ENT').AsString) <> '' then
      codaux := codaux +'Andar '+ trim(QOrigem.FieldByName('ISS_A_ANDAR_ENT').AsString);

     if trim(QOrigem.FieldByName('ISS_A_CONJ_ENT').AsString) <> '' then
      codaux := codaux +'Conjunto '+ trim(QOrigem.FieldByName('ISS_A_CONJ_ENT').AsString);

     cdsdestino.fieldByName('COMPLEE_MBL').AsString:=TrocaAspasSimples(codaux);
     cdsdestino.fieldByName('CEPE_MBL').AsString   :=Tiracaracter(QOrigem.fieldByname('ISS_A_CEP_ENT').AsString);




   if QOrigem.FieldByName('ISS_END_A_TIP').AsString='0' then begin

     codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD').AsString),nometipolog,codtipolog);
     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('TIPOLOGE_MBL').AsString:=nometipolog;
     cdsdestino.fieldByName('COD_TIPE_MBL').value:=cdsdestino.fieldByName('COD_TIP_MBL').value;
     cdsdestino.fieldByName('COD_LOGE_MBL').value:=cdsdestino.fieldByName('COD_LOG_MBL').value;
     cdsdestino.fieldByName('LOGRA_MBL').AsString   :=codaux;
     end;

     codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD').AsString));
     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('COD_BAIE_MBL').value:=cdsdestino.fieldByName('COD_BAI_MBL').value;
     cdsdestino.fieldByName('BAIRRO_MBL').AsString:=codaux;
     end;

     if trim(QOrigem.fieldByname('BAI_I_COD').AsString)='' then
     cdsdestino.fieldByName('BAIRRO_MBL').AsString:=trim(QOrigem.fieldByname('END_A_BAIRRO').AsString);

     if trim(QOrigem.fieldByname('LOG_I_COD').AsString)='' then
     cdsdestino.fieldByName('LOGRA_MBL').AsString:=trim(QOrigem.fieldByname('END_A_LOGRADOURO').AsString);


     cdsdestino.fieldByName('NUMEROE_MBL').value:=cdsdestino.fieldByName('NUMERO_MBL').value;
     cdsdestino.fieldByName('CEPE_MBL').value   :=cdsdestino.fieldByName('CEPI_MBL').value;
     cdsdestino.fieldByName('COMPLEE_MBL').value:=cdsdestino.fieldByName('COMPLE_MBL').value;
     if trim(QOrigem.FieldByName('CNTI_I_IBGE').AsString) <>'' then
     cdsdestino.fieldByName('COD_CID_MBL').value:=ZeraEsquerda(7,QOrigem.FieldByName('CNTI_I_IBGE').AsString)
     else
     cdsdestino.fieldByName('COD_CID_MBL').value:=ZeraEsquerda(7,codcidade);

   end
   else
   if QOrigem.FieldByName('ISS_END_A_TIP').AsString='1' then begin
      QVerifica.Close;
      QVerifica.sql.Clear;
      QVerifica.sql.Add('SELECT COD_LOG_CNT,COD_TIP_CNT,TIPOLOG_CNT,NOM_LOG_CNT,COD_BAI_CNT,NOM_BAI_CNT,COD_CID_CNT,UF_CNT,NUMERO_CNT,COMPLE_CNT,CEP_CNT '+
                        'FROM GR_CONTRIBUINTES '+
                        ' WHERE COD_EMP_CNT=1 AND COD_CNT='''+cdsdestino.fieldByName('COD_CNT_MBL').AsString+''''
                        );
      QVerifica.open;
      cdsdestino.fieldByName('TIPOLOGE_MBL').value   :=QVerifica.fieldByName('TIPOLOG_CNT').value;;
      cdsdestino.fieldByName('COD_TIPE_MBL').value   :=QVerifica.fieldByName('COD_TIP_CNT').value;
      cdsdestino.fieldByName('COD_LOGE_MBL').value   :=QVerifica.fieldByName('COD_LOG_CNT').value;
      cdsdestino.fieldByName('LOGRA_MBL').value      :=QVerifica.fieldByName('NOM_LOG_CNT').value;;
      cdsdestino.fieldByName('COD_BAIE_MBL').value   :=QVerifica.fieldByName('COD_BAI_CNT').value;
      cdsdestino.fieldByName('BAIRRO_MBL').value     :=QVerifica.fieldByName('NOM_BAI_CNT').value;;
      cdsdestino.fieldByName('NUMEROE_MBL').value    :=QVerifica.fieldByName('NUMERO_CNT').value;
      cdsdestino.fieldByName('CEPE_MBL').value       :=QVerifica.fieldByName('CEP_CNT').value;
      cdsdestino.fieldByName('COMPLEE_MBL').value    :=QVerifica.fieldByName('COMPLE_CNT').value;
      cdsdestino.fieldByName('COD_CID_MBL').value    :=QVerifica.fieldByName('COD_CID_CNT').value;
   end;


   //se nao existir defini��o de endere�o de correspondencia jogo do imovel
   if (trim(cdsdestino.fieldByName('LOGRA_MBL').AsString)='') then begin
     codaux:=VerificaCodigoLogradouro(trim(QOrigem.fieldByname('LOG_I_COD').AsString),nometipolog,codtipolog);
     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('TIPOLOGE_MBL').AsString:=nometipolog;
     cdsdestino.fieldByName('COD_TIPE_MBL').value:=cdsdestino.fieldByName('COD_TIP_MBL').value;
     cdsdestino.fieldByName('COD_LOGE_MBL').value:=cdsdestino.fieldByName('COD_LOG_MBL').value;
     cdsdestino.fieldByName('LOGRA_MBL').AsString   :=codaux;
     end;
     codaux:=VerificaCodigoBairro(trim(QOrigem.fieldByname('BAI_I_COD').AsString));
     if trim(codaux)<>'-1' then begin
     cdsdestino.fieldByName('COD_BAIE_MBL').value:=cdsdestino.fieldByName('COD_BAI_MBL').value;
     cdsdestino.fieldByName('BAIRRO_MBL').AsString:=codaux;
     end;
     cdsdestino.fieldByName('NUMEROE_MBL').value:=cdsdestino.fieldByName('NUMERO_MBL').value;
     cdsdestino.fieldByName('CEPE_MBL').value   :=cdsdestino.fieldByName('CEPI_MBL').value;
     cdsdestino.fieldByName('COMPLEE_MBL').value:=cdsdestino.fieldByName('COMPLE_MBL').value;
     cdsdestino.fieldByName('COD_CID_MBL').value:=codcidade;
   end;



    cdsdestino.fieldByName('RESTRICAOHORARIO_MBL').value:=QOrigem.fieldByName('CON_M_HORFUN').Value;

   // cdsdestino.fieldByName('HORI_MBL').value := QCadastro.FieldByName('entrada').AsString;
   // cdsdestino.fieldByName('HORF_MBL').value := QCadastro.FieldByName('saida').AsString;


   //select * from TRIOCO where OCO_S_UTI=5


    situacao:='01 - Ativo';

    if QOrigem.FieldByName('CON_A_TIPO').AsString='I' then
    Situacao := '04 - Inativo'
    else
    if QOrigem.FieldByName('OCO_S_COD').AsString='24' then
    Situacao := '01 - Ativo'
    else
    if QOrigem.FieldByName('OCO_S_COD').AsString='25' then
    Situacao := '02 - Suspenso'
    else
    if QOrigem.FieldByName('OCO_S_COD').AsString='26' then
    Situacao := '03 - Baixado'
    else
    if QOrigem.FieldByName('OCO_S_COD').AsString='27' then
    Situacao := '08 - Cancelado'
    else
    if QOrigem.FieldByName('OCO_S_COD').AsString='43' then
    Situacao := '04 - Inativo'
    else
    if QOrigem.FieldByName('OCO_S_COD').AsString='77' then
    Situacao := '13 - Ativo Provis�rio';






    //if QOrigem.FieldByName('desativado').AsString='S' then
   // Situacao := '99 - Exclus�o L�gica';



   cdsDestino.FieldByName('SITUACAO_MBL').AsString :=situacao;
   cdsDestino.FieldByName('DTABER_MBL').value      :=QOrigem.FieldByName('CON_D_INI').Value;
   cdsDestino.FieldByName('PROTABER_MBL').value    :=QOrigem.FieldByName('CON_A_ABR').Value;;
   cdsDestino.FieldByName('DTENCE_MBL').value      :=QOrigem.FieldByName('CON_D_BAI').Value;;
   cdsDestino.FieldByName('PROTENCE_MBL').value    :=QOrigem.FieldByName('CON_A_BAI').Value;;
   {
   QCadastro.Close;
   QCadastro.sql.Clear;
   QCadastro.sql.Add('SELECT * FROM TRIISS_FEIRA WHERE CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' AND FEI_D_DATA_FIM IS NULL');
   QCadastro.Open;
   cdsDestino.FieldByName('MEDID_MBL').value       :=QCadastro.FieldByName('FEI_N_AREA').Value;
   }

   QCadastro.Close;
   QCadastro.sql.Clear;
   QCadastro.sql.Add('SELECT CAR_N_QTD '+
                     'FROM TRIISSC '+
                     ' WHERE CON_I_ISSQN = '+QOrigem.FieldByName('CON_I_ISSQN').AsString+
                     ' AND CAR_S_COD = 55 '+
                     ' AND CAR_D_FIM IS NULL ');
   QCadastro.Open;
   cdsDestino.FieldByName('MEDID_MBL').value       :=QCadastro.FieldByName('CAR_N_QTD').Value;



   cdsDestino.FieldByName('CAPIT_MBL').value       :=QOrigem.FieldByName('CON_A_CAP').Value;
   cdsDestino.FieldByName('HISTO1_MBL').value       :=QOrigem.FieldByName('CON_M_DES').Value;



    QCadastro.Close;
    QCadastro.sql.Clear;
    QCadastro.sql.Add(' SELECT FIRST 1 CAR_N_QTD '+
                      ' FROM TRIISSC '+
                      ' WHERE CON_I_ISSQN = '+QOrigem.FieldByName('CON_I_ISSQN').AsString+' and CAR_S_COD=26 AND CAR_D_FIM IS NULL  ');
    QCadastro.Open;
    cdsDestino.FieldByName('NEMPRE_MBL').value      :=QCadastro.FieldByName('CAR_N_QTD').Value;


   { QCadastro.Close;
    QCadastro.sql.Clear;
    QCadastro.sql.Add(' SELECT FIRST 1 TRIISSC.CAR_N_QTD '+
                      ' FROM TRIISSC '+
                      ' WHERE TRIISSC.CON_I_ISSQN = '+QOrigem.FieldByName('CON_I_ISSQN').AsString+' and CAR_S_COD=40 AND CAR_D_FIM IS NULL');
    QCadastro.Open;
    cdsDestino.FieldByName('NEMPREHABILIT_MBL').value      :=QCadastro.FieldByName('CAR_N_QTD').Value;
  }


   //cdsDestino.FieldByName('VALORESTIMA_MBL').AsCurrency:=QOrigem.FieldByName('i_economicos').AsString;
   //cdsDestino.FieldByName('REGIAO_MBL').AsString       :=QOrigem.FieldByName('i_economicos').AsString;
   //cdsDestino.FieldByName('ATIVIDADELIVRE_MBL').value  :=QOrigem.FieldByName('i_economicos').AsString;

   //cdsDestino.FieldByName('ATIVIDADELIVRE_MBL').value:=QEventos.FieldByName('descricao_atividade').AsString;



   //cdsDestino.FieldByName('REQUERALVBOMB_MBL').AsString:='S'
   //cdsDestino.FieldByName('REQUERALVBOMB_MBL').AsString:='N';
   //cdsDestino.FieldByName('DTBOMBEIRO_MBL').value:=OpcaoBCE_Campo(QOrigem.FieldByName('i_economicos').AsString,campovalidadealvarabombeiro,'data');


   cdsDestino.FieldByName('REQUERALVARA_MBL').AsString:='S';
   cdsDestino.FieldByName('DTALVARA_MBL').value:=QOrigem.FieldByName('CON_D_DTALV').Value;
   cdsDestino.FieldByName('NROALVARA_MBL').value:=QOrigem.FieldByName('CON_A_PROALV').Value;

   if QOrigem.FieldByName('CON_D_VENALV').AsString<>'' then
   cdsDestino.FieldByName('REQUERALVVIG_MBL').AsString:='S'
   else
   cdsDestino.FieldByName('REQUERALVVIG_MBL').AsString:='N';

   //cdsDestino.FieldByName('DATAEALVARAVIG_MBL').value:=QOrigem.FieldByName('CON_A_PROALV').Value;
   cdsDestino.FieldByName('NROALVARAVIG_MBL').value:=QOrigem.FieldByName('CON_A_PROALV').Value;

   cdsDestino.FieldByName('OPTANTESIMPLES_MBL').AsString:='N';
   cdsDestino.FieldByName('REGIMEESPECIALTRIB_MBL').AsString:='N�o Possui';
   cdsDestino.FieldByName('TIPOISS_MBL').AsString:='01 - N�o Possui';


   QCadastro.close;
   QCadastro.sql.clear;
   QCadastro.sql.add(' SELECT TRIISSSIMPLESSTATUS.CON_I_TIP AS TIPO,TRIISSSIMPLESSTATUS.CON_D_EFE,TRIISSSIMPLESSTATUS.CON_I_SIT '+
                     ' FROM TRIISSSIMPLESSTATUS '+
                     ' INNER JOIN TRIISSSIMPLES ON TRIISSSIMPLESSTATUS.CNTI_A_CPFCGC=TRIISSSIMPLES.CNTI_A_CPFCGC '+
                     ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' AND TRIISSSIMPLESSTATUS.CON_I_SIT=0 '+
                     ' ORDER BY CON_D_SOL DESC,CON_I_SEQ DESC,CON_I_SIT'
                     );
   QCadastro.open;
   if QCadastro.FieldByName('CON_I_SIT').AsString='0' then
   begin
    cdsDestino.FieldByName('OPTANTESIMPLES_MBL').AsString    :='S';
    cdsDestino.FieldByName('REGIMEESPECIALTRIB_MBL').AsString:='Microempres�rio (ME)';
    cdsDestino.FieldByName('DATAOPCAO_MBL').AsString         :=QCadastro.fieldByName('CON_D_EFE').AsString;
    cdsDestino.FieldByName('DATAREGIMEESPECIALTRIB_MBL').AsString:=QCadastro.fieldByName('CON_D_EFE').AsString;
    if QCadastro.FieldByName('TIPO').AsString='1' then
    cdsDestino.FieldByName('REGIMEESPECIALTRIB_MBL').AsString:='Microempres�rio Individual (MEI)';
   end;

   cdsDestino.FieldByName('COD_TEM_MBL').AsString:='0';
   if QOrigem.fieldByName('CLA_I_COD').AsString<>'' then
   cdsDestino.FieldByName('COD_TPC_MBL').value:=QOrigem.fieldByName('CLA_I_COD').value;

    QCadastro.Close;
    QCadastro.SQL.Text :=  'SELECT * FROM TRIISSC '+
                           ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' and CAR_S_COD=29 AND CAR_D_FIM IS NULL ';
    QCadastro.Open;
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='1')  then
    begin
     cdsDestino.FieldByName('OPTANTESIMPLES_MBL').AsString    :='S';
     cdsDestino.FieldByName('REGIMEESPECIALTRIB_MBL').AsString:='Microempres�rio (ME)';
    end;

    QCadastro.Close;
    QCadastro.SQL.Text :=  'SELECT * FROM TRIISSC '+
                           ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' and CAR_S_COD=30 AND CAR_D_FIM IS NULL ';
    QCadastro.Open;
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='1')  then
    begin
     cdsDestino.FieldByName('OPTANTESIMPLES_MBL').AsString    :='S';
     cdsDestino.FieldByName('REGIMEESPECIALTRIB_MBL').AsString:='Microempres�rio Individual (MEI)';
    end;





//    select * from TRICAR1 a
//    inner join tricar2 b on a.CAR_S_COD=b.CAR_S_COD
//    where CAR_S_TIP=8 and b.CAR_S_COD=42
   {
    QCadastro.Close;
    QCadastro.SQL.Text :=  'SELECT TRIISSC.*,CAR_A_DES FROM TRIISSC '+
                           ' inner join tricar2 on tricar2.CAR_S_COD=TRIISSC.CAR_S_COD and tricar2.CAR_S_OPC=TRIISSC.CAR_S_OPC '+
                           ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' and TRIISSC.CAR_S_COD=42 AND TRIISSC.CAR_D_FIM IS NULL ';
    QCadastro.Open;
    cdsdestino.fieldByName('RESTRICAOHORARIO_MBL').value:=QCadastro.fieldByName('CAR_A_DES').value;
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='1') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '08:00';
    cdsdestino.fieldByName('HORF_MBL').value := '18:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='2') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '08:00';
    cdsdestino.fieldByName('HORF_MBL').value := '24:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='3') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '00:00';
    cdsdestino.fieldByName('HORF_MBL').value := '24:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='4') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '08:00';
    cdsdestino.fieldByName('HORF_MBL').value := '22:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='5') then
    begin
    cdsdestino.fieldByName('SABADOINICIAL_MBL').value := '08:00';
    cdsdestino.fieldByName('SABADOFINAL_MBL').value := '18:00';
    cdsdestino.fieldByName('DOMINGOINICIAL_MBL').value := '08:00';
    cdsdestino.fieldByName('DOMINGOFINAL_MBL').value := '12:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='6') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '11:00';
    cdsdestino.fieldByName('HORF_MBL').value := '17:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='7') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '19:00';
    cdsdestino.fieldByName('HORF_MBL').value := '22:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='8') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '08:00';
    cdsdestino.fieldByName('HORF_MBL').value := '21:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='9') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '07:00';
    cdsdestino.fieldByName('HORF_MBL').value := '17:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='10') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '18:00';
    cdsdestino.fieldByName('HORF_MBL').value := '05:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='11') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '07:00';
    cdsdestino.fieldByName('HORF_MBL').value := '23:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='12') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '16:00';
    cdsdestino.fieldByName('HORF_MBL').value := '06:00';
    end
    else
    if (QCadastro.fieldByName('CAR_S_OPC').AsString='13') then
    begin
    cdsdestino.fieldByName('HORI_MBL').value := '18:00';
    cdsdestino.fieldByName('HORF_MBL').value := '24:00';
    cdsdestino.fieldByName('SABADOINICIAL_MBL').value := '18:00';
    cdsdestino.fieldByName('SABADOFINAL_MBL').value := '24:00';
    cdsdestino.fieldByName('DOMINGOINICIAL_MBL').value := '18:00';
    cdsdestino.fieldByName('DOMINGOFINAL_MBL').value := '24:00';
    end;
   }

   QCadastro.Close;
   QCadastro.SQL.Text := ' SELECT FIRST 1 1 AS V_VALIDA_CLASSIFICACAO '+
                         ' FROM TRIISS '+
                         ' LEFT JOIN ASP02_ISSATIVIDADES ON ASP02_ISSATIVIDADES.CON_I_ISSQN = TRIISS.CON_I_ISSQN '+
                         ' WHERE TRIISS.CON_I_ISSQN ='+QOrigem.FieldByName('CON_I_ISSQN').AsString+
                         ' AND TRIISS.CLA_I_COD IN (200, 201, 202, 203, 69) '+
                         ' AND ASP02_ISSATIVIDADES.FOR_I_COD = 4 ';
   QCadastro.Open;
   if (QCadastro.fieldByName('V_VALIDA_CLASSIFICACAO').AsString='1') then
   begin
   cdsDestino.FieldByName('TIPOISS_MBL').AsString:='04 - Fixo';
   cdsDestino.FieldByName('EXIGIBILIDADEISS_MBL').AsString:='Exig�vel';
   end;


   QCadastro.Close;
   QCadastro.SQL.Text :=  'SELECT * FROM TRIISSC '+
                           ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' and CAR_S_COD=33 AND CAR_D_FIM IS NULL ';
   QCadastro.Open;
   if (QCadastro.fieldByName('CAR_S_OPC').AsString='1')  then
   begin
   cdsDestino.FieldByName('TIPOISS_MBL').AsString:='03 - Sobre Faturamento';
   cdsDestino.FieldByName('EXIGIBILIDADEISS_MBL').AsString:='Exig�vel';
   end;




   QCadastro.Close;
   QCadastro.SQL.Clear;
   QCadastro.SQL.Add('select FOR_I_COD from ASP02_ISSATIVIDADES '+
                     ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' AND FOR_I_COD in (2,5,6) AND ATI_D_FIM IS NULL order by FOR_I_COD '
                      );
   QCadastro.Open;
   if not QCadastro.IsEmpty then
   begin
    if QCadastro.fieldByName('FOR_I_COD').AsString='5' then
    begin
     cdsDestino.FieldByName('EXIGIBILIDADEISS_MBL').AsString:='Exig�vel';
     cdsDestino.FieldByName('TIPOISS_MBL').AsString:='03 - Sobre Faturamento';
    end
    else
    if QCadastro.fieldByName('FOR_I_COD').AsString='4' then
    begin
     cdsDestino.FieldByName('EXIGIBILIDADEISS_MBL').AsString:='Exig�vel';
     cdsDestino.FieldByName('TIPOISS_MBL').AsString:='04 - Fixo';
    end
    else
    if QCadastro.fieldByName('FOR_I_COD').AsString='2' then
    begin
     cdsDestino.FieldByName('EXIGIBILIDADEISS_MBL').AsString:='Exig�vel';
     cdsDestino.FieldByName('TIPOISS_MBL').AsString:='04 - Fixo';
    end;

   end;



    QCadastro.Close;
   QCadastro.SQL.Text := ' SELECT FIRST 1 1 AS V_VALIDA_CLASSIFICACAO '+
                         ' FROM TRIISS '+
                         ' LEFT JOIN ASP02_ISSATIVIDADES ON ASP02_ISSATIVIDADES.CON_I_ISSQN = TRIISS.CON_I_ISSQN '+
                         ' WHERE TRIISS.CON_I_ISSQN ='+QOrigem.FieldByName('CON_I_ISSQN').AsString+
                         ' AND TRIISS.CLA_I_COD IN (200, 201, 202, 203, 69) '+
                         ' AND ASP02_ISSATIVIDADES.FOR_I_COD = 4 ';
   QCadastro.Open;
   if (QCadastro.fieldByName('V_VALIDA_CLASSIFICACAO').AsString='1') then
   begin
   cdsDestino.FieldByName('TIPOISS_MBL').AsString:='04 - Fixo';
   cdsDestino.FieldByName('EXIGIBILIDADEISS_MBL').AsString:='Exig�vel';
   end;







   //cdsDestino.FieldByName('EXIGIBILIDADEISS_MBL').AsString:='Exig�vel';
   //cdsDestino.FieldByName('TIPOISS_MBL').AsString:='03 - Sobre Faturamento';
   //cdsDestino.FieldByName('TIPOISS_MBL').AsString:='04 - Fixo';
   //cdsDestino.FieldByName('TIPOISS_MBL').AsString:='01 - N�o Possui ISSQN';


   cdsDestino.FieldByName('REGINCENTIVO_MBL').AsString:='N';
   cdsDestino.FieldByName('DATAREGIME_MBL').value  :=dtAbertura;
   cdsDestino.FieldByName('RESPONSA_TRI_MBL').AsString:='N';
   cdsDestino.FieldByName('PERMITERPS_MBL').AsString  :='N';

   cdsdestino.post;
   cdsdestino.ApplyUpdates(-1);

{
'Tipo de Isenção:
1-Imune
2-Remido
3-Isenção Total
4-Isento de Impostos
5-Isento de Taxas
6-Redução
7-Anistia
8-Crédito Presumido
9-Subsídio';
 }

   codcob:='1';
   QCadastro.Close;
   QCadastro.SQL.Text:='SELECT ISE_A_TIPO '+
                       'FROM TRIISENISS '+
                       'WHERE TRIISENISS.CON_I_ISSQN = '+QOrigem.FieldByName('CON_I_ISSQN').AsString+' AND ISE_D_FIM IS NULL ';
   QCadastro.Open;
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='1' then
   codcob:='7'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='2' then
   codcob:='8'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='3' then
   codcob:='5'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='4' then
   codcob:='3'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='5' then
   codcob:='2'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='6' then
   codcob:='5'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='7' then
   codcob:='5'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='8' then
   codcob:='5'
   else
   if QCadastro.FieldByName('ISE_A_TIPO').AsString='9' then
   codcob:='5';


     QEventos.Close;
     QEventos.SQL.Clear;
     QEventos.SQL.Add('select * from ASP02_ISSATIVIDADES '+
                      ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString
                      );
     QEventos.Open;
     while not QEventos.eof do begin
            QAuxiliar.Close;
            QAuxiliar.sql.Clear;
            QAuxiliar.SQL.Add(' SELECT COD_ATD,COD_ATV_ATD FROM LI_ATIVDESDO '+
                              ' WHERE COD_EMP_ATD=1 AND CODAUX_ATD='''+ZeraEsquerda(10,QEventos.FieldByName('CBO_A_COD').AsString)+''' '
                             );
            QAuxiliar.Open;
            if not QAuxiliar.IsEmpty then begin
              cdsdestino.close;
              sqlDestino.commandText:='SELECT * FROM LI_CADATIV '+
                                      ' WHERE COD_EMP_CTV=1 AND COD_MBL_CTV='''+ZeraEsquerda(9,QOrigem.FieldByName('CON_I_ISSQN').AsString)+''' '+
                                      ' AND COD_ATV_CTV='''+QAuxiliar.FieldByName('COD_ATV_ATD').AsString+''' '+
                                      ' AND COD_ATD_CTV='''+QAuxiliar.FieldByName('COD_ATD').AsString+'''';
              cdsdestino.open;
              if cdsdestino.IsEmpty then begin
                cdsdestino.append;
                cdsdestino.fieldByName('COD_EMP_CTV').AsString:='1';
                cdsdestino.fieldByName('COD_MBL_CTV').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CON_I_ISSQN').AsString);
                cdsdestino.fieldByName('COD_ATV_CTV').AsString:=QAuxiliar.FieldByName('COD_ATV_ATD').AsString;
                cdsdestino.fieldByName('COD_ATD_CTV').AsString:=QAuxiliar.FieldByName('COD_ATD').AsString;

                cdsdestino.fieldByName('DATAINICIO_CTV').value:=QEventos.FieldByName('ATI_D_INI').value;
                cdsdestino.fieldByName('DATAFIM_CTV').value   :=QEventos.FieldByName('ATI_D_FIM').value;
                cdsdestino.fieldByName('TXL_QTDE_CTV').value   :=QEventos.FieldByName('ATI_N_QTDE').value;
                cdsdestino.fieldByName('ISS_QTDE_CTV').value   :=QEventos.FieldByName('ATI_N_VALOR').value;

                if QEventos.FieldByName('ATI_A_PRI').AsString='S' then
                cdsdestino.fieldByName('COD_COB_CTV').AsString:=codcob
                else
                cdsdestino.fieldByName('COD_COB_CTV').AsString:='5';

              end;


                cdsdestino.ApplyUpdates(-1);
              end;
     QEventos.next;
     end;



     QEventos.Close;
     QEventos.SQL.Clear;
     QEventos.SQL.Add('select * from ASP02_ISSATIVIDADES '+
                      ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString
                      );
     QEventos.Open;
     while not QEventos.eof do begin


          codaux:=QEventos.FieldByName('cbo_a_cod').AsString;


            QAuxiliar.Close;
            QAuxiliar.sql.Clear;
            QAuxiliar.SQL.Add(' SELECT COD_CNA FROM LI_CNAE '+
                              ' WHERE COD_EMP_CNA=1 AND COD_CNA='''+codaux+''' '
                             );
            QAuxiliar.Open;
            if not QAuxiliar.IsEmpty then begin
              cdsdestino.close;
              sqlDestino.commandText:='SELECT * FROM LI_CADCNAE '+
                                      ' WHERE COD_EMP_CCE=1 AND COD_MBL_CCE='''+ZeraEsquerda(9,QOrigem.FieldByName('CON_I_ISSQN').AsString)+''' '+
                                      ' AND COD_CNA_CCE='''+QAuxiliar.FieldByName('COD_CNA').AsString+''' ';
              cdsdestino.open;
              if cdsdestino.IsEmpty then begin
                cdsdestino.append;
                cdsdestino.fieldByName('COD_EMP_CCE').AsString:='1';
                cdsdestino.fieldByName('COD_MBL_CCE').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CON_I_ISSQN').AsString);
                cdsdestino.fieldByName('COD_CNA_CCE').AsString:=QAuxiliar.FieldByName('COD_CNA').AsString;
                cdsdestino.fieldByName('QTD_CCE').value  :=QEventos.FieldByName('ATI_N_QTDE').value;
                cdsdestino.fieldByName('PRINCIPAL_CCE').value :=QEventos.FieldByName('ATI_A_PRI').AsString;
                if QEventos.FieldByName('ATI_A_PRI').AsString='S' then
                cdsdestino.fieldByName('COD_COB_CCE').AsString:=codcob
                else
                cdsdestino.fieldByName('COD_COB_CCE').AsString:='5';

              end;


                cdsdestino.ApplyUpdates(-1);
              end;
     QEventos.next;
     end;


     cdsdestino.close;
     sqlDestino.commandText:='select * from LI_CADRECEITAS where cod_emp_CRA is null';
     cdsdestino.open;



   {
    QCadastro.Close;
    QCadastro.SQL.Text :=  'SELECT * FROM TRIISSC '+
                           ' where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+' and CAR_S_COD in (38,40) AND CAR_D_FIM IS NULL ';
    QCadastro.Open;

    while not QCadastro.eof do begin

     if QCadastro.fieldByName('CAR_S_COD').AsString='223' then
     codaux:='29'
     else
     if QCadastro.fieldByName('CAR_S_COD').AsString='238' then
     codaux:='30';

       QVerifica.Close;
       QVerifica.SQL.Clear;
       QVerifica.SQL.Add('SELECT * FROM LI_CALCULO WHERE COD_EMP_CAL=1 AND COD_REC_CAL='+codaux+' AND RECDESDO_CAL='''+ZeraEsquerda(6,QCadastro.FieldByName('CAR_S_OPC').AsString)+'''');
       QVerifica.Open;
       if not QVerifica.IsEmpty then begin
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CRA').AsString:='1';
         cdsdestino.fieldByName('COD_MBL_CRA').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CON_I_ISSQN').AsString);
         cdsdestino.fieldByName('COD_REC_CRA').AsString:=QVerifica.fieldByName('COD_REC_CAL').AsString;
         cdsdestino.fieldByName('RECDESDO_CRA').AsString:=QVerifica.fieldByName('RECDESDO_CAL').AsString;
         cdsdestino.fieldByName('RECDESDO_CRA').AsString:=QVerifica.fieldByName('RECDESDO_CAL').AsString;
         cdsdestino.fieldByName('QTDE').AsString        :=QCadastro.fieldByName('CAR_N_QTD').AsString;
         cdsdestino.fieldByName('COD_COB_CRA').AsString:=codcob;
         cdsdestino.post;
         cdsdestino.ApplyUpdates(-1);
       end;

    QCadastro.next;
    end;


    }

    QCadastro.close;
    QCadastro.sql.clear;
    QCadastro.sql.add('  SELECT FIRST 1 TRIISSC.CAR_S_OPC '+
                      '  FROM TRIISSC '+
                      ' WHERE TRIISSC.CON_I_ISSQN = '+QOrigem.FieldByName('CON_I_ISSQN').AsString+
                      '   AND TRIISSC.CAR_S_COD = 21 '+
                      '   AND TRIISSC.CAR_D_FIM IS NULL '
                     );
    QCadastro.open;
    auxvalor1:=QCadastro.fieldByName('CAR_S_OPC').AsCurrency;//horarios especial

    QCadastro.close;
    QCadastro.sql.clear;
    QCadastro.sql.add('  SELECT FIRST 1 TRIISSC.CAR_N_QTD '+
                      '  FROM TRIISSC '+
                      ' WHERE TRIISSC.CON_I_ISSQN = '+QOrigem.FieldByName('CON_I_ISSQN').AsString+
                      '   AND TRIISSC.CAR_S_COD = 56 '+
                      '   AND TRIISSC.CAR_D_FIM IS NULL '
                     );
    QCadastro.open;
    auxvalor2:=QCadastro.fieldByName('CAR_N_QTD').AsCurrency;//publicidade


    QCadastro.close;
    QCadastro.sql.clear;
    QCadastro.sql.add('  SELECT FIRST 1 TRICAR2.CAR_N_VALOR,TRIISSC.CAR_S_OPC '+
                      '  FROM TRIISSC '+
                      '  inner JOIN TRICAR2 ON TRICAR2.CAR_S_COD = TRIISSC.CAR_S_COD AND TRICAR2.CAR_S_OPC = TRIISSC.CAR_S_OPC '+
                      '  WHERE TRIISSC.CON_I_ISSQN = '+QOrigem.FieldByName('CON_I_ISSQN').AsString+
                      '   AND TRIISSC.CAR_S_COD = 85 '+
                      '   AND TRIISSC.CAR_D_FIM IS NULL '
                     );
    QCadastro.open;
    auxvalor3:=QCadastro.fieldByName('CAR_N_VALOR').AsCurrency;//ISS Fixo


        if auxvalor1=1 then
        begin
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CRA').AsString:='1';
         cdsdestino.fieldByName('COD_MBL_CRA').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CON_I_ISSQN').AsString);
         cdsdestino.fieldByName('COD_REC_CRA').AsString:='12';
         cdsdestino.fieldByName('RECDESDO_CRA').AsString:='000001';
         cdsdestino.fieldByName('QTDE').AsCurrency        :=1;
         cdsdestino.fieldByName('COD_COB_CRA').AsString:=codcob;
         cdsdestino.post;
         cdsdestino.ApplyUpdates(-1);
        end;

        if auxvalor2>0 then
        begin
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CRA').AsString:='1';
         cdsdestino.fieldByName('COD_MBL_CRA').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CON_I_ISSQN').AsString);
         cdsdestino.fieldByName('COD_REC_CRA').AsString:='14';
         cdsdestino.fieldByName('RECDESDO_CRA').AsString:=ZeraEsquerda(6,'1');
         cdsdestino.fieldByName('QTDE').AsCurrency        := auxvalor2;
         cdsdestino.fieldByName('COD_COB_CRA').AsString:=codcob;
         cdsdestino.post;
         cdsdestino.ApplyUpdates(-1);
        end;


        if (auxvalor3>0)  then
        begin
         cdsdestino.append;
         cdsdestino.fieldByName('COD_EMP_CRA').AsString:='1';
         cdsdestino.fieldByName('COD_MBL_CRA').AsString:=ZeraEsquerda(9,QOrigem.fieldByName('CON_I_ISSQN').AsString);
         cdsdestino.fieldByName('COD_REC_CRA').AsString:='19';
         cdsdestino.fieldByName('RECDESDO_CRA').AsString:=ZeraEsquerda(6,QCadastro.fieldByName('CAR_S_OPC').AsString);;
         cdsdestino.fieldByName('QTDE').AsCurrency        :=1;
         cdsdestino.fieldByName('COD_COB_CRA').AsString:=codcob;
         cdsdestino.post;
         cdsdestino.ApplyUpdates(-1);
        end;



      QCadastro.Close;
      QCadastro.SQL.Text :=  'SELECT * FROM TRIISSC where CON_I_ISSQN='+QOrigem.FieldByName('CON_I_ISSQN').AsString+'  AND CAR_D_FIM IS NULL ';
      QCadastro.Open;

      while not QCadastro.eof do begin
        /////////////////// caracteristicas dos economicos/////////////////
        QVerifica.close;
        QVerifica.sql.text:='SELECT * FROM LI_CAD_DESDOCRT WHERE COD_EMP_MC2=1 AND COD_CRT_MC2='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_COD').AsString)+''' '+
                            ' AND COD_MC2='''+ZeraEsquerda(4,QCadastro.fieldByname('CAR_S_OPC').AsString)+'''';
        QVerifica.open;
        if not QVerifica.IsEmpty then
        begin
        cdsdestino1.append;
        cdsdestino1.fieldByName('COD_EMP_MC3').AsString:='1';
        codrel:=codrel+1;
        cdsdestino1.fieldByName('COD_MC3').Asinteger     :=codrel;
        cdsdestino1.fieldByName('COD_MBL_MC3').AsString  :=ZeraEsquerda(9,QOrigem.FieldByName('CON_I_ISSQN').AsString);
        cdsdestino1.fieldByName('COD_CRT_MC3').AsString  :=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_COD').AsString);
        cdsdestino1.FieldByName('COD_DCR_MC3').AsString  :=ZeraEsquerda(4,QCadastro.FieldByName('CAR_S_OPC').AsString);
        cdsdestino1.fieldByName('VALOR_MC3').value       :=QCadastro.FieldByName('CAR_N_QTD').value;
        cdsdestino1.fieldByName('DATA_CRT_MC3').value    :=QCadastro.FieldByName('CAR_D_INI').value;
        cdsdestino1.fieldByName('OBS_CRT_MC3').value     :=QCadastro.FieldByName('CAR_A_VAL').value;

        cdsdestino1.post;
        cdsdestino1.ApplyUpdates(-1);
        END;
      QCadastro.Next;
      end;







{Exig�vel
N�o Incid�ncia
Isen��o
Exporta��o
Imunidade
Exigibilidade Suspensa por Decis�o Judicial
Exigibilidade Suspensa por Processo Administrativo
}
{
N�o Possui
Microempresa municipal
Estimativa
Sociedade de Profissionais
Cooperativa
Microempres�rio Individual (MEI)
Microempres�rio (ME)
Empresa de Pequeno Porte (EPP)
}
{
01 - N�o Possui ISSQN
02 - Estimativa
03 - Sobre Faturamento
04 - Fixo
}
   QOrigem.next;
  end;

Conexao.Commit(TD);

end;





procedure TFPrincipal.CadastroMobiliarioISS;
var codcalc,codaux,codcob,codtipolog,nometipolog,comple,auxisento,cobrataxa,codativprincipal:String;
    Situacao,dtAbertura, dtEncer, dtAlteracao, protAB, protBX: Variant;
    item,codrel:Integer;
    auxvalor1,auxvalor2,auxvalor3:Currency;
begin




  lbFuncao.Caption:='CadastroMobiliario';
  lbFuncao.update;

  QNOrigem.close;
  QNOrigem.sql.clear;
  QNOrigem.sql.add(' select empid,empcpfcnpj,empnomefant,empemail,empestabelecido,empregimetributario,empmobcodigo '+
                   ' from empresa '+
                   ' where empestabelecido=''S'' and empmobcodigo<>0 '
                   );
  QNOrigem.open;

  lbtotal.Caption:=IntToStr(ProgressBar1.max);
  lbtotal.Update;



  if not Conexao.InTransaction then Conexao.StartTransaction(TD);
  item:=0;
  codrel:=0;




  while not QNOrigem.eof do
  begin
  codcalc:='0';

  inc(item);
  lbItem.Caption:=IntToStr(item);
  lbitem.Update;
  ProgressBar1.position:=item;

  lbchave.Caption:=QNOrigem.fieldByName('empmobcodigo').AsString;
  lbchave.Update;

  cdsdestino.close;
  sqlDestino.commandText:='SELECT * FROM LI_MOBIL WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QNOrigem.fieldByName('empmobcodigo').AsString)+'''';
  cdsdestino.open;
  if cdsdestino.IsEmpty then
   cdsdestino.append
  else
   cdsdestino.edit;

  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('UPDATE GR_CONTRIBUINTES SET EMAIL_CNT='''+QNOrigem.fieldByName('empemail').AsString+''' WHERE COD_EMP_CNT=1 AND COD_CNT='''+cdsdestino.fieldByName('COD_CNT_MBL').AsString+'''');
  QVerifica.execsql;

  cdsdestino.post;
  cdsdestino.ApplyUpdates(-1);

   codcob:='1';


     QNItens.Close;
     QNItens.SQL.Clear;
     QNItens.SQL.Add('select * from empresadadosativ '+
                      ' where empid='+QNOrigem.FieldByName('empid').AsString
                      );
     QNItens.Open;
     while not QNItens.eof do begin
            QAuxiliar.Close;
            QAuxiliar.sql.Clear;
            QAuxiliar.SQL.Add(' SELECT COD_ATD,COD_ATV_ATD FROM LI_ATIVDESDO '+
                              ' WHERE COD_EMP_ATD=1 AND CODAUX_ATD='''+ZeraEsquerda(10,QNItens.FieldByName('ativcodigo').AsString)+''' '
                             );
            QAuxiliar.Open;
            if not QAuxiliar.IsEmpty then begin
              cdsdestino.close;
              sqlDestino.commandText:='SELECT * FROM LI_CADATIV '+
                                      ' WHERE COD_EMP_CTV=1 AND COD_MBL_CTV='''+ZeraEsquerda(9,QNOrigem.FieldByName('empmobcodigo').AsString)+''' '+
                                      ' AND COD_ATV_CTV='''+QAuxiliar.FieldByName('COD_ATV_ATD').AsString+''' '+
                                      ' AND COD_ATD_CTV='''+QAuxiliar.FieldByName('COD_ATD').AsString+'''';
              cdsdestino.open;
              if cdsdestino.IsEmpty then begin
                cdsdestino.append;
                cdsdestino.fieldByName('COD_EMP_CTV').AsString:='1';
                cdsdestino.fieldByName('COD_MBL_CTV').AsString:=ZeraEsquerda(9,QNOrigem.fieldByName('empmobcodigo').AsString);
                cdsdestino.fieldByName('COD_ATV_CTV').AsString:=QAuxiliar.FieldByName('COD_ATV_ATD').AsString;
                cdsdestino.fieldByName('COD_ATD_CTV').AsString:=QAuxiliar.FieldByName('COD_ATD').AsString;
                cdsdestino.fieldByName('COD_COB_CTV').AsString:=codcob
              end;


                cdsdestino.ApplyUpdates(-1);
              end;
     QNItens.next;
     end;







{Exig�vel
N�o Incid�ncia
Isen��o
Exporta��o
Imunidade
Exigibilidade Suspensa por Decis�o Judicial
Exigibilidade Suspensa por Processo Administrativo
}
{
N�o Possui
Microempresa municipal
Estimativa
Sociedade de Profissionais
Cooperativa
Microempres�rio Individual (MEI)
Microempres�rio (ME)
Empresa de Pequeno Porte (EPP)
}
{
01 - N�o Possui ISSQN
02 - Estimativa
03 - Sobre Faturamento
04 - Fixo
}
   QNOrigem.next;
  end;

Conexao.Commit(TD);

end;


procedure TFPrincipal.HistoricosAlteracoesMobiliario;
var cont: Integer;
begin
    lbFuncao.Caption:='HistoricoAlteracoesMobiliario';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add( 'SELECT CASE '+
                                 'WHEN TRIM(DF.DESCRIPTION) <> '''' THEN DF.DESCRIPTION '+
                                 'ELSE FI.FIELD_NAME '+
                               'END as CAMPO_IHA, '+
                               'TB.DATE_TIME as DTA_ALT_IHA, '+
                               'FI.OLD_VALUE as VALOR_ANT_IHA, '+
                               'FI.NEW_VALUE as VALOR_AUT_IHA, '+
                               'CASE '+
                                 'WHEN SUBSTRING(TB.USER_NAME FROM 1 FOR 6) = ''ASP02_'' THEN SUBSTRING(TB.USER_NAME FROM 7 FOR 10) '+
                                 'ELSE SUBSTRING(TB.USER_NAME FROM 1 FOR 10) '+
                               'END as LOGIN_ALT_IHA,TB.TABLE_KEY '+
                         'FROM ASP_LOGTABLES TB '+
                         'INNER JOIN ASP_LOGFIELDS FI ON FI.LOG_TABLES_ID = TB.ID '+
                         'LEFT JOIN ASP_LOGDICFIELD DF ON DF.TABLE_NAME = TB.TABLE_NAME AND DF.FIELD_NAME = FI.FIELD_NAME '+
                         'WHERE TB.TABLE_NAME = ''TRIISS'' '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    cdsdestino.close;
    sqlDestino.commandText:='SELECT * FROM LI_HIS_ALTERACOES WHERE COD_EMP_IHL=1 AND COD_IHL=0 ';
    cdsdestino.open;


    cont:=0;

    while not QOrigem.Eof do
    begin
        inc(cont);

       lbchave.Caption:=QOrigem.fieldByname('TABLE_KEY').AsString;
       lbchave.update;

       lbItem.Caption:=IntToStr(cont);
       lbItem.update;
       ProgressBar1.position:=cont;

       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add('select cod_mbl from LI_MOBIL WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,trim(retirachar(QOrigem.fieldByname('TABLE_KEY').AsString,';')))+'''');
       QVerifica.open;
       if not QVerifica.IsEmpty then begin
        cdsdestino.append;
        cdsdestino.fieldByName('COD_EMP_IHL').AsInteger :=1;
        cdsdestino.fieldByName('COD_IHL').value         :=cont;
        cdsdestino.fieldByName('COD_MBL_IHL').AsString  :=QVerifica.fieldByName('COD_MBL').AsString;
        cdsdestino.fieldByName('CAMPO_IHL').value       :=QOrigem.fieldByname('CAMPO_IHA').value;
        cdsdestino.fieldByName('VALOR_ANT_IHL').value   :=QOrigem.fieldByname('VALOR_ANT_IHA').value;
        cdsdestino.fieldByName('VALOR_AUT_IHL').value   :=QOrigem.fieldByname('VALOR_AUT_IHA').value;
//        cdsdestino.fieldByName('OBS_IHL').value         :='Tipo : '+ QOrigem.FieldByName('tipo').AsString +#13+
//                                                          'Processo : '+ QOrigem.FieldByName('processo').AsString;

        cdsdestino.fieldByName('LOGIN_ALT_IHL').AsString:=trim(QOrigem.fieldByname('LOGIN_ALT_IHA').AsString);
        cdsdestino.fieldByName('DTA_ALT_IHL').AsString  :=trim(QOrigem.fieldByname('DTA_ALT_IHA').AsString);

        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);
       end;

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;




procedure TFPrincipal.SerieNota;
var cont:INteger;
begin
    lbFuncao.Caption:='HistoricoAlteracoesMobiliario';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add( 'SELECT * FROM TRISERIENF '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);



    cont:=0;

    while not QOrigem.Eof do
    begin
        inc(cont);

       lbchave.Caption:=QOrigem.fieldByname('SRE_I_COD').AsString;
       lbchave.update;

       lbItem.Caption:=IntToStr(cont);
       lbItem.update;
       ProgressBar1.position:=cont;

       cdsdestino.close;
       sqlDestino.commandText:='SELECT * FROM LI_SERIENF WHERE COD_EMP_SNF=1 AND COD_SNF='+QOrigem.fieldByname('SRE_I_COD').AsString;
       cdsdestino.open;
       if cdsdestino.IsEmpty then
        cdsdestino.append
       else
       cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_SNF').AsInteger :=1;
        cdsdestino.fieldByName('COD_SNF').AsString  :=ZeraEsquerda(9,trim(QOrigem.fieldByname('SRE_I_COD').AsString));
        cdsdestino.fieldByName('SERIE_SNF').value       :=QOrigem.fieldByname('SRE_A_DES').value;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);

     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.AIDF;
var cont,erros:Integer;
begin


    QVerifica.close;
    QVerifica.sql.Text:='DELETE FROM LI_AIDF ';
    QVerifica.execsql;

    QVerifica.close;
    QVerifica.sql.Text:='DELETE FROM LI_AIDFITENS ';
    QVerifica.execsql;




    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add( ' select * from TRIISSN ');
    QOrigem.Open;

    cont:=0;
    while not QOrigem.Eof do
    begin

     lbchave.Caption:=QOrigem.fieldByName('CON_I_ISSQN').AsString;
     lbchave.update;

     inc(cont);
     lbitem.Caption:=IntToStr(cont);
     lbitem.update;

     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add(' SELECT LI_MOBIL.* FROM LI_MOBIL '+
                       ' INNER JOIN GR_CONTRIBUINTES ON COD_EMP_CNT=COD_EMP_MBL AND COD_CNT=COD_CNT_MBL '+
                       ' WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QOrigem.fieldByname('CON_I_ISSQN').AsString)+''' '
                      );
     QVerifica.open;

     if not QVerifica.IsEmpty then begin

        cdsdestino.close;
        sqlDestino.commandText:=' SELECT * FROM LI_AIDF '+
                                ' WHERE COD_EMP_AID=1 '+
                                ' AND COD_AID IS NULL ';
        cdsdestino.open;

        cdsdestino.append;
        cdsdestino.fieldByName('COD_EMP_AID').AsString     :='1';
        cdsdestino.fieldByName('COD_AID').AsString         :=ZeraEsquerda(10,IntToStr(cont));
        cdsdestino.fieldByName('COD_MBL_AID').value        :=QVerifica.fieldByName('COD_MBL').value;


        cdsdestino.fieldByName('NAUTORIZA_AID').value      :=cont;
        cdsdestino.fieldByName('EXERCICIO_AID').value      :=copy(QOrigem.fieldByName('CON_D_DAT').AsString,7,4);
        QVerifica.close;

        cdsdestino.fieldByName('DATA_AID').value        :=QOrigem.fieldByName('CON_D_DAT').value;
        cdsdestino.fieldByName('MOTIVO_AID').value      :=QOrigem.fieldByName('CON_M_OBS').value;
        cdsdestino.fieldByName('COD_GRA_AID').value     :='170';

        cdsdestino.fieldByName('OBS_AID').value         :=QOrigem.fieldByName('CON_M_OBS').AsString;

 
        if (QOrigem.FieldByName('OCO_S_COD').AsString='53')  then
        cdsdestino.fieldByName('STATUS_AID').value         :='C'
        else
        if (QOrigem.FieldByName('OCO_S_COD').AsString='51')  then
        cdsdestino.fieldByName('STATUS_AID').value         :='S'
        else
        cdsdestino.fieldByName('STATUS_AID').value         :='A';

        cdsdestino.fieldByName('DATAAUTORIZACAO_AID').value:=QOrigem.fieldByName('CON_D_AUTOREJ').value;


        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        Conexao.Commit(TD);



            cdsdestino.close;
            sqlDestino.commandText:=' SELECT * FROM LI_AIDFITENS '+
                                      ' WHERE COD_EMP_AII=1 AND COD_AID_AII IS NULL ';
            cdsdestino.open;
            cdsdestino.append;
            cdsdestino.fieldByName('COD_EMP_AII').AsString     :='1';
            cdsdestino.fieldByName('COD_AID_AII').AsString     :=ZeraEsquerda(10,IntToStr(cont));

            cdsdestino.fieldByName('COD_SNF_AII').value        :=QOrigem.fieldByName('SRE_I_COD').value;;;
            cdsdestino.fieldByName('COD_ENF_AII').value        :=1;

            cdsdestino.fieldByName('NTALOES_AII').value     := QOrigem.fieldByName('CON_I_BLOCOSAUT').value;;
            cdsdestino.fieldByName('NUMERONOTAS_AII').value := QOrigem.fieldByName('CON_I_FINAUT').value-QOrigem.fieldByName('CON_I_INIAUT').value+1;
            cdsdestino.fieldByName('DATAVENCI_AII').value   := QOrigem.fieldByName('CON_D_VALIDADE').value;
            cdsdestino.fieldByName('NVIAS_AII').value       := QOrigem.fieldByName('CON_I_VIASAUT').value;;
            cdsdestino.fieldByName('NUMEROI_AII').value     := QOrigem.fieldByName('CON_I_INIAUT').value;
            cdsdestino.fieldByName('NUMEROF_AII').value     := QOrigem.fieldByName('CON_I_FINAUT').value;
            cdsdestino.fieldByName('LOGIN_INC_AII').value   := '@ISS';


            Erros:=0;
            if not Conexao.InTransaction then Conexao.StartTransaction(TD);

            if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
            if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

            Conexao.Commit(TD);
     end;



    QOrigem.Next;
    end;


end;




function TFPrincipal.VerificaLote(codlote:String):String;
begin
  codlote:=SoNUmeros(codlote);
  if trim(codlote)<>'' then begin
   try
    QAuxiliar.close;
    QAuxiliar.sql.clear;
    QAuxiliar.sql.add('SELECT * FROM FI_LOTE WHERE COD_EMP_LTE=1 AND COD_LTE='+codlote);
    QAuxiliar.open;
    if QAuxiliar.IsEmpty then
     result:='1'
    else
     result:=QAuxiliar.fieldByName('COD_LTE').AsString;
   except
    result:='1'
   end;

  end
  else
  result:='1';

end;


function TFPrincipal.VerificaBanco(codBanco:String):String;
begin

  if trim(codBanco)<>'' then begin
    QAuxiliar.close;
    QAuxiliar.sql.clear;
    QAuxiliar.sql.add('SELECT * FROM GR_BANCO WHERE COD_EMP_BCO=1 AND BANCO_BCO='''+ZeraEsquerda(3,trim(codBanco))+''' ');
    QAuxiliar.open;
    if QAuxiliar.IsEmpty then
     result:='999'
    else
     result:=QAuxiliar.fieldByName('COD_BCO').AsString;
  end
  else
  result:='999';

end;


procedure TFPrincipal.rateiacmjBaixa(var correcao:Currency;var multa:Currency;var juros:Currency;var desconto:Currency;var acrescimo:Currency;valorReceita:Currency);
var
  deduzcorrecao,deduzmulta,deduzjuros,diferenca,AuxDesconto,AuxAcrescimo:Double;
begin

 if (desconto>0) and ((correcao+multa+juros)>0) then
 begin

   if desconto>(correcao+multa+juros) then
   begin
     desconto:=desconto-(correcao+multa+juros);
     Correcao:=0;
     Juros:=0;
     MUlta:=0;
   end
   else
   begin

       deduzcorrecao:=correcao * (desconto/(correcao+multa+juros));
       deduzmulta:=multa * (desconto/(correcao+multa+juros));
       deduzjuros:=juros * (desconto/(correcao+multa+juros));

       deduzcorrecao:=TruncaSia7(deduzcorrecao);
       deduzmulta:=TruncaSia7(deduzmulta);
       deduzjuros:=TruncaSia7(deduzjuros);

       diferenca:=desconto-(deduzcorrecao+deduzmulta+deduzjuros);

       correcao:=correcao-deduzCorrecao;
       multa:=multa-deduzMulta;
       juros:=juros-deduzjuros;

      if (diferenca>0) then
      begin
       if (juros>=diferenca) then
       begin
        juros:=juros-diferenca;
        diferenca:=0;
       end
       else
       begin
        diferenca:=diferenca-juros;
        juros:=0;
       end;
      end;

      if (diferenca>0) then
      begin
       if (multa>=diferenca) then
       begin
        multa:=multa-diferenca;
        diferenca:=0;
       end
       else
       begin
        diferenca:=diferenca-multa;
        multa:=0;
       end;
      end;

      if (diferenca>0) then
      begin
       if (correcao>=diferenca) then
       begin
        correcao:=correcao-diferenca;
        diferenca:=0;
       end;
      end;
      desconto:=0;
   end;

 end;///desconto>0


  if (Acrescimo>0) then
    if ((correcao+multa+juros)>0) and (valorReceita>0) then
    begin
       deduzcorrecao:=correcao * (Acrescimo/(correcao+multa+juros));
       deduzmulta:=multa * (Acrescimo/(correcao+multa+juros));
       deduzjuros:=juros * (Acrescimo/(correcao+multa+juros));

       deduzcorrecao:=TruncaSia7(deduzcorrecao);
       deduzmulta:=TruncaSia7(deduzmulta);
       deduzjuros:=TruncaSia7(deduzjuros);

       diferenca:=Acrescimo-(deduzcorrecao+deduzmulta+deduzjuros);

       correcao:=correcao+deduzCorrecao;
       multa:=multa+deduzMulta;
       juros:=juros+deduzjuros;

       juros:=juros+diferenca;
       diferenca:=0;
    end
    else
     juros:=acrescimo;


end;


Function TFPrincipal.SalvaFinanceiroBaixa_FI_PARCELA(COD_EMP_PAR, COD_DIV_PAR, PARCELA_PAR, TP_PAR,
                                         REFLIVRO_PAR,LIVRO_PAR, FOLHA_PAR, INSCRI_PAR, DATAINSCRI_PAR, DATAPAGTO_PAR, DATAMOVIM_PAR,
                                         LOTE_PAR, COD_BCO_PAR, DATAVENCI, MOEDA_PAR, COD_IND_PAR, DATAGERACAO_PAR,
                                         DATAEXEC_PARC, SITUACAO_PAR, CANCELADO_PAR, ATIVA_PAR, EXECUTADA_PAR, PARCE_PAR,
                                         DATACANCELA_PAR, DATAPARCE_PAR, PROCESSO_PAR, UNICA_PAR, LOGIN_INC_PAR, DTA_INC_PAR,
                                         LOGIN_ALT_PAR, DTA_ALT_PAR,FAIXANNUMERO_PAR,NNUMERO_PAR,SITUACAOANTIGA_PAR,VALOR_PAR,DUPLICADA_PAR: Variant): Integer;
Var qrx: TSQLQuery;
Begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := Conexao;
    qrx.sql.text := 'Insert into FI_PARCELA(COD_EMP_PAR, COD_DIV_PAR, PARCELA_PAR, TP_PAR, '+
                                    'REFLIVRO_PAR,LIVRO_PAR, FOLHA_PAR, INSCRI_PAR, DATAINSCRI_PAR, DATAPAGTO_PAR, DATAMOVIM_PAR, '+
                                    'LOTE_PAR, COD_BCO_PAR, DATAVENCI, MOEDA_PAR, COD_IND_PAR, DATAGERACAO_PAR, '+
                                    'DATAEXEC_PARC, SITUACAO_PAR, CANCELADO_PAR, ATIVA_PAR, EXECUTADA_PAR, PARCE_PAR, '+
                                    'DATACANCELA_PAR, DATAPARCE_PAR, PROCESSO_PAR, UNICA_PAR, LOGIN_INC_PAR, DTA_INC_PAR, '+
                                    'LOGIN_ALT_PAR, DTA_ALT_PAR,FAIXANNUMERO_PAR,NNUMERO_PAR,SITUACAOANTIGA_PAR,VALOR_PAR,DUPLICADA_PAR) Values('+
                    TrataDadosFinanceiro(COD_EMP_PAR)    +','+
                    TrataDadosFinanceiro(COD_DIV_PAR)    +','+
                    TrataDadosFinanceiro(PARCELA_PAR)    +','+
                    TrataDadosFinanceiro(TP_PAR)         +','+
                    TrataDadosFinanceiro(REFLIVRO_PAR)      +','+
                    TrataDadosFinanceiro(LIVRO_PAR)      +','+
                    TrataDadosFinanceiro(FOLHA_PAR)      +','+
                    TrataDadosFinanceiro(INSCRI_PAR)     +','+
                    TrataDadosFinanceiro(DATAINSCRI_PAR) +','+
                    TrataDadosFinanceiro(DATAPAGTO_PAR)  +','+
                    TrataDadosFinanceiro(DATAMOVIM_PAR)  +','+
                    TrataDadosFinanceiro(LOTE_PAR)       +','+
                    TrataDadosFinanceiro(COD_BCO_PAR)    +','+
                    TrataDadosFinanceiro(DATAVENCI)      +','+
                    TrataDadosFinanceiro(MOEDA_PAR)      +','+
                    TrataDadosFinanceiro(COD_IND_PAR)    +','+
                    TrataDadosFinanceiro(DATAGERACAO_PAR)+','+
                    TrataDadosFinanceiro(DATAEXEC_PARC)  +','+
                    TrataDadosFinanceiro(SITUACAO_PAR)   +','+
                    TrataDadosFinanceiro(CANCELADO_PAR)  +','+
                    TrataDadosFinanceiro(ATIVA_PAR)      +','+
                    TrataDadosFinanceiro(EXECUTADA_PAR)  +','+
                    TrataDadosFinanceiro(PARCE_PAR)      +','+
                    TrataDadosFinanceiro(DATACANCELA_PAR)+','+
                    TrataDadosFinanceiro(DATAPARCE_PAR)  +','+
                    TrataDadosFinanceiro(PROCESSO_PAR)   +','+
                    TrataDadosFinanceiro(UNICA_PAR)      +','+
                    TrataDadosFinanceiro(LOGIN_INC_PAR)  +','+
                    TrataDadosFinanceiro(DTA_INC_PAR)    +','+
                    TrataDadosFinanceiro(LOGIN_ALT_PAR)  +','+
                    TrataDadosFinanceiro(DTA_ALT_PAR)    +','+
                    TrataDadosFinanceiro(FAIXANNUMERO_PAR)    +','+
                    TrataDadosFinanceiro(NNUMERO_PAR)    +','+
                    TrataDadosFinanceiro(SITUACAOANTIGA_PAR)    +','+
                    TrataDadosFinanceiro(VALOR_PAR)     +','+
                    TrataDadosFinanceiro(DUPLICADA_PAR)    +')';
    qrx.ExecSQL;
    FreeAndNil(qrx);
    Result := 0;
 except
   on E: Exception do begin
     ShowMessage(E.Message);
     FreeAndNil(qrx);
     Result := -1;
   end;
 end;
End;


Function TFPrincipal.SalvaFinanceiroBaixa_FI_RECEITAS(COD_EMP_FRC, COD_DIV_FRC, PARCELA_PAR_FRC, TP_PAR_FRC,
                                     COD_REC_FRC, ANO_FRC, SITUACAO_FRC, CODORIGEM_FRC, CODULTORI_FRC,
                                     COD_IND_FRC, OUTRAS_FRC, LVALOR_FRC, LVRCORRE_FRC, LVRMULTA_FRC,
                                     LVRJUROS_FRC, LISENTO_FRC, LDESCOVENCI_FRC, LDESCOR_FRC, LDESCOC_FRC,
                                     LDESCOM_FRC, LDESCOJ_FRC, LACRES_FRC, PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC,
                                     PISENTO_FRC, PDESCOVENCI_FRC, PDESDCO_FRC,PDESCOR_FRC,PDESCOC_FRC,PDESCOM_FRC,PDESCOJ_FRC, LOGIN_INC_FRC, DTA_INC_FRC,
                                     LOGIN_ALT_FRC, DTA_ALT_FRC: Variant): Integer;
Var qrx: TSQLQuery;

Begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := Conexao;
    qrx.sql.text := 'Insert into FI_RECEITAS(COD_EMP_FRC, COD_DIV_FRC, PARCELA_PAR_FRC, TP_PAR_FRC, '+
                                     'COD_REC_FRC, ANO_FRC, SITUACAO_FRC, CODORIGEM_FRC, CODULTORI_FRC, '+
                                     'COD_IND_FRC, OUTRAS_FRC, LVALOR_FRC, LVRCORRE_FRC, LVRMULTA_FRC, '+
                                     'LVRJUROS_FRC, LISENTO_FRC, LDESCOVENCI_FRC, LDESCOR_FRC, LDESCOC_FRC, '+
                                     'LDESCOM_FRC, LDESCOJ_FRC, LACRES_FRC, PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC, '+
                                     'PISENTO_FRC, PDESCOVENCI_FRC, PDESDCO_FRC,PDESCOR_FRC,PDESCOC_FRC,PDESCOM_FRC,PDESCOJ_FRC,LOGIN_INC_FRC, DTA_INC_FRC, '+
                                     'LOGIN_ALT_FRC, DTA_ALT_FRC) Values('+
                    TrataDadosFinanceiro(COD_EMP_FRC)     +','+
                    TrataDadosFinanceiro(COD_DIV_FRC)     +','+
                    TrataDadosFinanceiro(PARCELA_PAR_FRC) +','+
                    TrataDadosFinanceiro(TP_PAR_FRC)      +','+
                    TrataDadosFinanceiro(COD_REC_FRC)     +','+
                    TrataDadosFinanceiro(ANO_FRC)         +','+
                    TrataDadosFinanceiro(SITUACAO_FRC)    +','+
                    TrataDadosFinanceiro(CODORIGEM_FRC)   +','+
                    TrataDadosFinanceiro(CODULTORI_FRC)   +','+
                    TrataDadosFinanceiro(COD_IND_FRC)     +','+
                    TrataDadosFinanceiro(OUTRAS_FRC)      +','+
                    TrataDadosFinanceiro(LVALOR_FRC)      +','+
                    TrataDadosFinanceiro(LVRCORRE_FRC)    +','+
                    TrataDadosFinanceiro(LVRMULTA_FRC)    +','+
                    TrataDadosFinanceiro(LVRJUROS_FRC)    +','+
                    TrataDadosFinanceiro(LISENTO_FRC)     +','+
                    TrataDadosFinanceiro(LDESCOVENCI_FRC) +','+
                    TrataDadosFinanceiro(LDESCOR_FRC)     +','+
                    TrataDadosFinanceiro(LDESCOC_FRC)     +','+
                    TrataDadosFinanceiro(LDESCOM_FRC)     +','+
                    TrataDadosFinanceiro(LDESCOJ_FRC)     +','+
                    TrataDadosFinanceiro(LACRES_FRC)      +','+
                    TrataDadosFinanceiro(PVALOR_FRC)      +','+
                    TrataDadosFinanceiro(PVRCORRE_FRC)    +','+
                    TrataDadosFinanceiro(PVRMULTA_FRC)    +','+
                    TrataDadosFinanceiro(PVRJUROS_FRC)    +','+
                    TrataDadosFinanceiro(PISENTO_FRC)     +','+
                    TrataDadosFinanceiro(PDESCOVENCI_FRC) +','+
                    TrataDadosFinanceiro(PDESDCO_FRC)     +','+
                    TrataDadosFinanceiro(PDESCOR_FRC)     +','+
                    TrataDadosFinanceiro(PDESCOC_FRC)     +','+
                    TrataDadosFinanceiro(PDESCOM_FRC)     +','+
                    TrataDadosFinanceiro(PDESCOJ_FRC)     +','+
                    TrataDadosFinanceiro(LOGIN_INC_FRC)   +','+
                    TrataDadosFinanceiro(DTA_INC_FRC)     +','+
                    TrataDadosFinanceiro(LOGIN_ALT_FRC)   +','+
                    TrataDadosFinanceiro(DTA_ALT_FRC)     +')';
    qrx.ExecSQL;
    FreeAndNil(qrx);
    Result := 0;
 except
   on E: Exception do begin
     ShowMessage(E.Message);
     FreeAndNil(qrx);
     Result := 1;
   end;
 end;
End;


Function TFPrincipal.AcertaDiferencaBaixaParcelasFinanceiro(empresa, divida, tipo, parcela: Integer; diferenca:Currency):Integer;
var
  pvalor_frc,pvrcorre_frc,pvrmulta_frc,pvrjuros_frc:Currency;
  flag:Boolean;
begin
      cdsReceitasDiferenca.close;
      sqlReceitasDiferenca.Params.ParamValues['empresa'] := empresa;
      sqlReceitasDiferenca.Params.ParamValues['divida']  := divida;
      sqlReceitasDiferenca.Params.ParamValues['tipo']    := tipo;
      sqlReceitasDiferenca.Params.ParamValues['parcela'] := parcela;
      cdsReceitasDiferenca.Open;
      flag:=false;
      while (not cdsReceitasDiferenca.eof) and (not flag) do
      begin

         pvalor_frc:=cdsReceitasDiferenca.fieldByName('pvalor_frc').AsCurrency;
         pvrcorre_frc:=cdsReceitasDiferenca.fieldByName('pvrcorre_frc').AsCurrency;
         pvrmulta_frc:=cdsReceitasDiferenca.fieldByName('pvrmulta_frc').AsCurrency;
         pvrjuros_frc:=cdsReceitasDiferenca.fieldByName('pvrjuros_frc').AsCurrency;

         if (pvrjuros_frc>=diferenca) and (diferenca>0) then
         begin
           pvrjuros_frc:=pvrjuros_frc-diferenca;
           flag:=true;
         end
         else if (pvrmulta_frc>=diferenca) and (diferenca>0) then begin
           pvrmulta_frc:=pvrmulta_frc-diferenca;
           flag:=true;
         end
         else if (pvrcorre_frc>=diferenca) and (diferenca>0) then begin
           pvrcorre_frc:=pvrcorre_frc-diferenca;
           flag:=true;
         end
         else if (pvalor_frc>=diferenca) and (diferenca>0) then begin
           pvalor_frc:=pvalor_frc-diferenca;
           flag:=true;
         end;

         if flag then
         AlteraFinanceiroBaixaDiferenca_FI_RECEITAS(cdsReceitasDiferenca.fieldByName('COD_EMP_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('COD_DIV_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('PARCELA_PAR_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('TP_PAR_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('COD_REC_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('ANO_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('SITUACAO_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('CODORIGEM_FRC').Value,
                                                    cdsReceitasDiferenca.fieldByName('CODULTORI_FRC').Value,
                                                    PVALOR_FRC,
                                                    PVRCORRE_FRC,
                                                    PVRMULTA_FRC,
                                                    PVRJUROS_FRC
                                                    );

       cdsReceitasDiferenca.next;
      end;


end;


Function TFPrincipal.AlteraFinanceiroBaixaDiferenca_FI_RECEITAS(COD_EMP_FRC, COD_DIV_FRC, PARCELA_PAR_FRC, TP_PAR_FRC,
                                          COD_REC_FRC, ANO_FRC, SITUACAO_FRC, CODORIGEM_FRC, CODULTORI_FRC,
                                          PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC:Variant): Integer;
Var qrx: TSQLQuery;

Begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := Conexao;
    qrx.sql.text := ' UPDATE FI_RECEITAS SET '+
                         ' PVALOR_FRC='+TrataDadosFinanceiro(PVALOR_FRC)+','+
                         ' PVRCORRE_FRC='+TrataDadosFinanceiro(PVRCORRE_FRC)+','+
                         ' PVRMULTA_FRC='+TrataDadosFinanceiro(PVRMULTA_FRC)+','+
                         ' PVRJUROS_FRC='+TrataDadosFinanceiro(PVRJUROS_FRC)+
                    ' WHERE COD_EMP_FRC='+TrataDadosFinanceiro(COD_EMP_FRC)+
                      ' AND COD_DIV_FRC='+TrataDadosFinanceiro(COD_DIV_FRC)+
                      ' AND PARCELA_PAR_FRC='+TrataDadosFinanceiro(PARCELA_PAR_FRC)+
                      ' AND TP_PAR_FRC='+TrataDadosFinanceiro(TP_PAR_FRC)+
                      ' AND COD_REC_FRC='+TrataDadosFinanceiro(COD_REC_FRC)+
                      ' AND ANO_FRC='+TrataDadosFinanceiro(ANO_FRC)+
                      ' AND SITUACAO_FRC='+TrataDadosFinanceiro(SITUACAO_FRC)+
                      ' AND CODORIGEM_FRC='+TrataDadosFinanceiro(CODORIGEM_FRC)+
                      ' AND CODULTORI_FRC='+TrataDadosFinanceiro(CODULTORI_FRC);
    qrx.ExecSQL;
    FreeAndNil(qrx);
    Result := 0;
 except
   on E: Exception do begin
    ShowMessage(E.Message);
    FreeAndNil(qrx);
    Result := 1;
   end;
 end;
End;


Function TFPrincipal.BaixaParcelasFinanceiro(empresa, divida, tipo, parcela: Integer; dtPagamento,
                                 dtMovimento, descontovenci, codbanco,
                                 lote: String; Correcao, Multa, Juros, ValorReceita,
                                 desconto,acrescimo,ValorPagamento: Currency;
                                 Usuario : String;
                                 Contabilizar : Integer; Situacao : Integer): Integer;
Var Erros,ja,numerodereceitas,contReceitas: Integer;
    vrCorrecao, VrMulta, vrJuros,difercorrecao,diferjuros,difermulta,vrDesconto,
    diferDesconto,diferPagto,acerto,totReceita,totMulta,totJuros,totCorrecao,
    DifertotReceita,DifertotMulta,DifertotJuros,DifertotCorrecao: Currency;
    PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC,
    PISENTO_FRC, PDESCOVENCI_FRC, PDESDCO_FRC,PDESCOR_FRC,PDESCOC_FRC,
    PDESCOM_FRC,PDESCOJ_FRC,LOGIN_ALT_FRC,DTA_ALT_FRC,LVALOR_FRC,
    SITUACAO_PAR,SITUACAOANTIGA_PAR,LOGIN_ALT_PAR,DTA_ALT_PAR,CANCELADO_PAR,DATACANCELA_PAR : Variant;
    flgDesconto:String;
Begin

  vrCorrecao:=0;VrMulta:=0;vrJuros:=0;difercorrecao:=0;
  diferjuros:=0;difermulta:=0;vrDesconto:=0;diferDesconto:=0;
  diferPagto:=0;acerto:=0;
  PVALOR_FRC:=0;PVRCORRE_FRC:=0;PVRMULTA_FRC:=0; PVRJUROS_FRC:=0;
  PISENTO_FRC:=0; PDESCOVENCI_FRC:=0; PDESDCO_FRC:=0;PDESCOR_FRC:=0;PDESCOC_FRC:=0;
  PDESCOM_FRC:=0;PDESCOJ_FRC:=0;LVALOR_FRC:=0;
  totMulta:=0;totJuros:=0;totCorrecao:=0;
  DifertotReceita:=0;DifertotMulta:=0;DifertotJuros:=0;DifertotCorrecao:=0;

  flgDesconto:='N';
  result := 1;
  rateiacmjBaixa(correcao, multa, juros, desconto, acrescimo, ValorReceita);

  if trim(dtmovimento) = '' then dtmovimento := DateToStr(date);
  if trim(dtpagamento) = '' then dtpagamento := DateToStr(date);

  cdsParcelas.Close;
  sqlParcelas.Params.ParamValues['empresa'] := empresa;
  sqlParcelas.Params.ParamValues['divida']  := divida;
  sqlParcelas.Params.ParamValues['tipo']    := tipo;
  sqlParcelas.Params.ParamValues['parcela'] := parcela;
  cdsParcelas.Open;


  If Not cdsParcelas.IsEmpty Then Begin

     if  (cdsParcelas.FieldByName('SITUACAO_PAR').value >= 0) and
         (cdsParcelas.FieldByName('SITUACAO_PAR').value <= 999) then begin


            if (cdsParcelas.fieldByName('UNICA_PAR').AsString='S') and (desconto>0) then begin
              QVerificaDesconto.close;
              QVerificaDesconto.sql.clear;
              QVerificaDesconto.sql.add('SELECT SUM(COALESCE(LDESCOVENCI_FRC,0)) AS DESCONTO '+
                                           'FROM FI_RECEITAS '+
                                           'WHERE COD_EMP_FRC='+cdsParcelas.FieldByName('COD_EMP_PAR').AsString+
                                            ' AND COD_DIV_FRC='+cdsParcelas.FieldByName('COD_DIV_PAR').AsString+
                                            ' AND PARCELA_PAR_FRC='+cdsParcelas.FieldByName('PARCELA_PAR').AsString+
                                            ' AND TP_PAR_FRC='+cdsParcelas.FieldByName('TP_PAR').AsString);
              QVerificaDesconto.open;
              if ((Arredonda(QVerificaDesconto.fieldByName('desconto').AsCurrency,2)=Arredonda(desconto,2)) or (TruncaSia7(QVerificaDesconto.fieldByName('desconto').AsCurrency)=TruncaSia7(desconto)) )and (desconto>0) then
                flgDesconto := 'S';

              QVerificaDesconto.close;
            end;

            cdsReceitas.Close;
            sqlReceitas.Params.ParamValues['empresa'] := empresa;
            sqlReceitas.Params.ParamValues['divida']  := divida;
            sqlReceitas.Params.ParamValues['tipo']    := tipo;
            sqlReceitas.Params.ParamValues['parcela'] := parcela;
            cdsReceitas.Open;

            numerodereceitas := cdsReceitas.recordcount;
            contreceitas := 1;

            LOGIN_ALT_FRC := Usuario;
            DTA_ALT_FRC   := DATETOSTR(DATE);

            While Not cdsReceitas.Eof Do Begin
              // Rolo
              if ValorReceita = 0 then begin
                ValorReceita := Juros;
                juros        := 0;
                lvalor_frc   := ValorReceita;
              end
              else
              begin
               if cdsReceitas.fieldByName('lvalor_frc').IsNull then
               lvalor_frc := 0
               else
               lvalor_frc := cdsReceitas.fieldByName('lvalor_frc').Value;
              end;

              if (flgDesconto='N') then begin
                  if ValorReceita = 0 then
                    vrDesconto := (lvalor_frc -
                                   cdsReceitas.fieldByName('ldescor_frc').value -
                                   cdsReceitas.fieldByName('lisento_frc').value)
                  else
                    vrDesconto := (lvalor_frc -
                                   cdsReceitas.fieldByName('ldescor_frc').value -
                                   cdsReceitas.fieldByName('lisento_frc').value) *
                                   (desconto / ValorReceita);
              end
              else vrDesconto := cdsReceitas.fieldByName('ldescovenci_frc').value;


              pvalor_frc := lvalor_frc -
                            cdsReceitas.fieldByName('ldescor_frc').Value -
                            cdsReceitas.fieldByName('lisento_frc').value -
                            vrDesconto;

              vrDesconto    := Arredonda(vrDesconto,2);
              diferDesconto := diferDesconto + vrDesconto;

              pdescor_frc :=(lvalor_frc-cdsReceitas.fieldByName('lisento_frc').value)-pvalor_frc;

              pdescovenci_frc := 0;

              if ValorReceita>0 then begin
                vrCorrecao := pvalor_frc * (correcao / ValorReceita);
                vrMulta    := pvalor_frc * (Multa / ValorReceita);
                vrJuros    := pvalor_frc * (Juros / ValorReceita);
              end
              else begin
                vrCorrecao := 0;
                vrMulta    := 0;
                vrJuros    := 0;
              end;

              vrCorrecao := Arredonda(vrCorrecao,2);
              vrMulta    := Arredonda(vrMulta,2);
              vrJuros    := Arredonda(vrJuros,2);

              diferCorrecao := diferCorrecao + vrCorrecao;
              diferMulta    := diferMulta + vrMulta;
              diferJuros    := diferJuros + vrJuros;

              pvrcorre_frc := cdsReceitas.fieldByName('lvrcorre_frc').Value - cdsReceitas.fieldByName('ldescoc_frc').Value + vrCorrecao;
              pvrmulta_frc := cdsReceitas.fieldByName('lvrmulta_frc').Value - cdsReceitas.fieldByName('ldescom_frc').Value + vrMulta;
              pvrjuros_frc := cdsReceitas.fieldByName('lvrjuros_frc').Value - cdsReceitas.fieldByName('ldescoj_frc').Value + cdsReceitas.fieldByName('lacres_frc').Value + vrJuros;

              pdescoc_frc := cdsReceitas.fieldByName('ldescoc_frc').Value;
              pdescom_frc := cdsReceitas.fieldByName('ldescom_frc').Value;
              pdescoj_frc := cdsReceitas.fieldByName('ldescoj_frc').Value;

              pisento_frc := cdsReceitas.fieldByName('lisento_frc').Value;
              pdesdco_frc := cdsReceitas.fieldByName('ldescoc_frc').Value + cdsReceitas.fieldByName('ldescom_frc').Value + cdsReceitas.fieldByName('ldescoj_frc').Value + cdsReceitas.fieldByName('ldescor_frc').Value;

              if contreceitas=numerodereceitas then begin // acerta valores das diferen�as
                pvalor_frc   := pvalor_frc - (desconto - diferdesconto) ;
                pdescor_frc  := pdescor_frc + (desconto - diferdesconto) ;
                pvrcorre_frc := pvrcorre_frc + (correcao - difercorrecao) ;
                pvrmulta_frc := pvrmulta_frc + (multa - difermulta) ;
                pvrjuros_frc := pvrjuros_frc + (juros - diferjuros);
              end;

              totReceita:=totReceita+pvalor_frc;
              totCorrecao:=totCorrecao+pvrcorre_frc;
              totMulta:=totMulta+pvrmulta_frc;
              totJuros:=totJuros+pvrjuros_frc;

              pvalor_frc   := Arredonda(pvalor_frc,2) ;
              pdescor_frc  := Arredonda(pdescor_frc,2);
              pvrcorre_frc := Arredonda(pvrcorre_frc,2);
              pvrmulta_frc := Arredonda(pvrmulta_frc,2);
              pvrjuros_frc := Arredonda(pvrjuros_frc,2);

              DifertotReceita:=DifertotReceita+pvalor_frc;
              DifertotCorrecao:=DifertotCorrecao+pvrcorre_frc;
              DifertotMulta:=DifertotMulta+pvrmulta_frc;
              DifertotJuros:=DifertotJuros+pvrjuros_frc;

              diferPagto := diferPagto + pvalor_frc + pvrcorre_frc + pvrmulta_frc + pvrjuros_frc;

              if numerodereceitas=contreceitas then begin // acerta as diferen�as no ultimo registro com pagamento

                 if diferPagto<valorPagamento then
                   pvrjuros_frc:=pvrjuros_frc+(valorPagamento-diferPagto)
                 else if diferPagto>valorPagamento then begin
                   acerto:=diferPagto-valorPagamento;
                   if (pvrjuros_frc>=acerto) and (acerto>0) then
                     pvrjuros_frc:=pvrjuros_frc-acerto
                   else if (pvrmulta_frc>=acerto) and (acerto>0) then
                     pvrmulta_frc:=pvrmulta_frc-acerto
                   else if (pvrcorre_frc>=acerto) and (acerto>0) then
                     pvrcorre_frc:=pvrcorre_frc-acerto
                   else if (pvalor_frc>=acerto) and (acerto>0) then
                     pvalor_frc:=pvalor_frc-acerto
                   else if acerto>0 then
                     AcertaDiferencaBaixaParcelasFinanceiro(cdsReceitas.fieldByName('COD_EMP_FRC').value,
                                                            cdsReceitas.fieldByName('COD_DIV_FRC').value,
                                                            cdsReceitas.fieldByName('TP_PAR_FRC').value,
                                                            cdsReceitas.fieldByName('PARCELA_PAR_FRC').value,
                                                            acerto);
                 end;
              end;

              AlteraFinanceiroBaixa_FI_RECEITAS(cdsReceitas.fieldByName('COD_EMP_FRC').value,
                                                cdsReceitas.fieldByName('COD_DIV_FRC').value,
                                                cdsReceitas.fieldByName('PARCELA_PAR_FRC').value,
                                                cdsReceitas.fieldByName('TP_PAR_FRC').value,
                                                cdsReceitas.fieldByName('COD_REC_FRC').value,
                                                cdsReceitas.fieldByName('ANO_FRC').value,
                                                cdsReceitas.fieldByName('SITUACAO_FRC').value,
                                                cdsReceitas.fieldByName('CODORIGEM_FRC').value,
                                                cdsReceitas.fieldByName('CODULTORI_FRC').value,
                                                PVALOR_FRC,
                                                PVRCORRE_FRC,
                                                PVRMULTA_FRC,
                                                PVRJUROS_FRC,
                                                PISENTO_FRC,
                                                PDESCOVENCI_FRC,
                                                PDESDCO_FRC,
                                                PDESCOR_FRC,
                                                PDESCOC_FRC,
                                                PDESCOM_FRC,
                                                PDESCOJ_FRC,
                                                LOGIN_ALT_FRC,
                                                StrToDateTime(DTA_ALT_FRC),
                                                LVALOR_FRC
                                                );
              contreceitas := contreceitas + 1;
              cdsReceitas.next;
            End;


            SITUACAOANTIGA_PAR := cdsParcelas.FieldByName('SITUACAO_PAR').AsInteger;
            CANCELADO_PAR:='N';
            DATACANCELA_PAR:='';

            if contabilizar=1 then begin
              if cdsParcelas.fieldByName('executada_par').AsString  = 'S' then SITUACAO_PAR := 8
              else if cdsParcelas.fieldByName('ativa_par').AsString = 'S' then SITUACAO_PAR := 7
              else SITUACAO_PAR := 6;
            end
            else if contabilizar=2 then
              SITUACAO_PAR := 25
            else if contabilizar=3 then begin
              SITUACAO_PAR := situacao;
              CANCELADO_PAR:='S';
              DATACANCELA_PAR:=StrToDateTime(dtMovimento);
            end;

            LOGIN_ALT_PAR := Usuario;
            DTA_ALT_PAR   := DATETOSTR(DATE);

            AlteraFinanceiroBaixa_FI_PARCELA(cdsParcelas.fieldByName('COD_EMP_PAR').value,
                                             cdsParcelas.fieldByName('COD_DIV_PAR').value,
                                             cdsParcelas.fieldByName('PARCELA_PAR').value,
                                             cdsParcelas.fieldByName('TP_PAR').value,
                                             StrToDateTime(dtPagamento),
                                             StrToDateTime(dtMovimento),
                                             strToInt(lote),
                                             strToInt(codbanco),
                                             SITUACAO_PAR,
                                             SITUACAOANTIGA_PAR,
                                             LOGIN_ALT_PAR,
                                             strtoDateTime(DTA_ALT_PAR),
                                             '',
                                             '',
                                             ValorPagamento, //Valor Recebido
                                             CANCELADO_PAR,
                                             DATACANCELA_PAR);



      If (cdsParcelas.fieldByName('unica_par').AsString = 'S') OR (cdsParcelas.fieldByName('PARCELA_PAR').value=0) Then Begin
         sqlAtualiza.Close;
         sqlAtualiza.commandText := 'UPDATE FI_PARCELA SET SITUACAO_PAR=0 ' +
                                       ' WHERE COD_EMP_PAR = ' + INTTOSTR(EMPRESA) +
                                       ' AND COD_DIV_PAR=' + INTTOSTR(DIVIDA) +
                                       ' AND TP_PAR=' + INTTOSTR(TIPO) +
                                       ' AND PARCELA_PAR<>' + INTTOSTR(parcela) +
                                       ' AND (SITUACAO_PAR=1 OR SITUACAO_PAR=2 OR SITUACAO_PAR=3)';
         sqlAtualiza.execsql;
      End;

       result := 2;
     end
     else result := 3;
  End; //N�o � vazio o cdsParcelas
End;


Function TFPrincipal.DuplicarBaixaParcelas(empresa, divida,tipo, parcela: Integer; dtPagamento,dtMovimento, descontovenci, codbanco,lote: String; Correcao, Multa, Juros,
                                           ValorReceita,desconto,acrescimo,ValorPagamento: Currency;Usuario:String): Integer;
Var
  Erros,ja,numerodereceitas,contreceitas,tp_par: Integer;
  vrCorrecao, VrMulta, vrJuros,difercorrecao,diferjuros,difermulta,vrDesconto,diferDesconto,diferPagto,acerto: Currency;

  LVALOR_FRC, LVRCORRE_FRC, LVRMULTA_FRC,LVRJUROS_FRC, LISENTO_FRC, LDESCOVENCI_FRC,
  LDESCOR_FRC, LDESCOC_FRC,LDESCOM_FRC, LDESCOJ_FRC, LACRES_FRC, PVALOR_FRC, PVRCORRE_FRC,
  PVRMULTA_FRC, PVRJUROS_FRC,PISENTO_FRC, PDESCOVENCI_FRC,PDESCOR_FRC,PDESCOC_FRC,PDESCOM_FRC,PDESCOJ_FRC,pdesdco_frc,
  LOGIN_INC_FRC, DTA_INC_FRC,LOGIN_ALT_FRC, DTA_ALT_FRC,NNUMERO_PAR: Variant;


Begin
  rateiacmjBaixa(correcao,multa,juros,desconto,acrescimo,valorReceita);
  result:=1;

  cdsParcelas.Close;
  sqlParcelas.Params.ParamValues['empresa'] := empresa;
  sqlParcelas.Params.ParamValues['divida']  := divida;
  sqlParcelas.Params.ParamValues['tipo']    := tipo;
  sqlParcelas.Params.ParamValues['parcela'] := parcela;
  cdsParcelas.Open;

  difercorrecao:=0;diferjuros:=0;difermulta:=0;acerto:=0;diferPagto:=0;
  If Not cdsParcelas.IsEmpty Then Begin

   qrAtualiza.close;
   qrAtualiza.sql.clear;
   qrAtualiza.sql.Add(' SELECT CAST(MAX(TP_PAR) AS INTEGER) AS COD '+
                         ' FROM FI_PARCELA WHERE COD_EMP_PAR='+IntToStr(empresa)+' AND COD_DIV_PAR='+cdsParcelas.fieldByName('COD_DIV_PAR').AsString+
                         ' AND PARCELA_PAR='+cdsParcelas.fieldByName('PARCELA_PAR').AsString);
   qrAtualiza.open;
   tp_Par := qrAtualiza.fieldByName('cod').AsInteger+1;

   if tp_Par<20 then
   tp_Par:=20;

  ///////////////////////////////// insere nova parcela/////////////////////////
  qrAtualiza.Close;
  qrAtualiza.SQL.TEXT := 'SELECT CAST(gen_id(GEN_FINNUMERO,1) AS INTEGER) CODIGO from RDB$DATABASE';
  qrAtualiza.Open;
  NNUMERO_PAR:=qrAtualiza.fieldByName('CODIGO').AsInteger;
  qrAtualiza.Close;


  SalvaFinanceiroBaixa_FI_PARCELA(cdsParcelas.fieldByName('COD_EMP_PAR').Value,
                             cdsParcelas.fieldByName('COD_DIV_PAR').value,
                             cdsParcelas.fieldByName('PARCELA_PAR').value,
                             TP_PAR,
                             NULL,
                             NULL,            //LIVRO_PAR
                             NULL,            //FOLHA_PAR
                             NULL,            //INSCRI_PAR
                             NULL,            //DATAINSCRI_PAR
                             StrToDate(dtPagamento),
                             StrToDate(dtMovimento),
                             StrToInt(lote),
                             StrToInt(codbanco),
                             cdsParcelas.fieldByName('DATAVENCI').value,
                             cdsParcelas.fieldByName('MOEDA_PAR').value,
                             cdsParcelas.fieldByName('COD_IND_PAR').value,
                             DATE,
                             NULL,             //DATAEXEC_PARC
                             '6',
                             'N',             //CANCELADO_PAR
                             'N',             //ATIVA_PAR
                             'N',             //EXECUTADA_PAR
                             cdsParcelas.fieldByName('PARCE_PAR').value,
                             NULL,            //DATACANCELA_PAR
                             cdsParcelas.fieldByName('DATAPARCE_PAR').value,
                             cdsParcelas.fieldByName('PROCESSO_PAR').value,
                             'N',             //UNICA PAR
                             Usuario,     //LOGIN_INC_PAR
                             strtodatetime(formatdatetime('DD/MM/YYYY', Date) + formatdatetime('HH:MM:SS', Time)),
                             Usuario,
                             strtodatetime(formatdatetime('DD/MM/YYYY', Date) + formatdatetime('HH:MM:SS', Time)),
                             cdsParcelas.fieldByName('FAIXANNUMERO_PAR').value,
                             NNUMERO_PAR,
                             cdsParcelas.fieldByName('SITUACAO_PAR').value,
                             cdsParcelas.fieldByName('VALOR_PAR').value,
                             'S'
                             );



    cdsReceitas.Close;
    sqlReceitas.Params.ParamValues['empresa'] := empresa;
    sqlReceitas.Params.ParamValues['divida']  := divida;
    sqlReceitas.Params.ParamValues['tipo']    := tipo;
    sqlReceitas.Params.ParamValues['parcela'] := parcela;
    cdsReceitas.Open;
    numerodereceitas := cdsReceitas.recordcount;
    contreceitas := 1;

    LVALOR_FRC:=0; LVRCORRE_FRC:=0; LVRMULTA_FRC:=0;LVRJUROS_FRC:=0; LISENTO_FRC:=0; LDESCOVENCI_FRC:=0;
    LDESCOR_FRC:=0; LDESCOC_FRC:=0;LDESCOM_FRC:=0;LDESCOJ_FRC:=0; LACRES_FRC:=0;
    LOGIN_ALT_FRC:=NULL; DTA_ALT_FRC:=NULL;

    LOGIN_INC_FRC:='';//VERIFICA
    DTA_INC_FRC:=DATE;//VERIFICAR
    While Not cdsReceitas.Eof Do Begin

      vrDesconto := (cdsReceitas.fieldByName('lvalor_frc').AsCurrency-
                     cdsReceitas.fieldByName('ldescor_frc').AsCurrency-
                     cdsReceitas.fieldByName('lisento_frc').AsCurrency) * (desconto/ValorReceita);

      vrDesconto := TruncaSIA7(vrDesconto);
      diferDesconto := diferDesconto + vrDesconto;

      pdescor_frc:=vrDesconto;

      pvalor_frc := cdsReceitas.fieldByName('lvalor_frc').AsCurrency -
                    cdsReceitas.fieldByName('ldescor_frc').AsCurrency -
                    cdsReceitas.fieldByName('lisento_frc').AsCurrency -
                    pdescor_frc;

      If descontovenci = 'SNN' Then Begin
        pvalor_frc:= pvalor_frc - cdsReceitas.fieldByName('ldescovenci_frc').AsCurrency;
        pdescovenci_frc := cdsReceitas.fieldByName('ldescovenci_frc').AsCurrency;
      End
      Else pdescovenci_frc := 0;

      vrCorrecao := pvalor_frc * (correcao / ValorReceita);
      vrMulta := pvalor_frc * (Multa / ValorReceita);
      vrJuros := pvalor_frc * (Juros / ValorReceita);

      vrCorrecao := Arredonda(vrCorrecao,2);
      vrMulta := Arredonda(vrMulta,2);
      vrJuros := Arredonda(vrJuros,2);

      diferCorrecao:=diferCorrecao+vrCorrecao;
      diferMulta:=diferMulta+vrMulta;
      diferJuros:=diferJuros+vrJuros;

      pvrcorre_frc := cdsReceitas.fieldByName('lvrcorre_frc').AsCurrency - cdsReceitas.fieldByName('ldescoc_frc').AsCurrency + vrCorrecao;
      pvrmulta_frc := cdsReceitas.fieldByName('lvrmulta_frc').AsCurrency - cdsReceitas.fieldByName('ldescom_frc').AsCurrency + vrMulta;
      pvrjuros_frc := cdsReceitas.fieldByName('lvrjuros_frc').AsCurrency - cdsReceitas.fieldByName('ldescoj_frc').AsCurrency + cdsReceitas.fieldByName('lacres_frc').Value + vrJuros;

      pdescoc_frc := cdsReceitas.fieldByName('ldescoc_frc').AsCurrency;
      pdescom_frc := cdsReceitas.fieldByName('ldescom_frc').AsCurrency;
      pdescoj_frc := cdsReceitas.fieldByName('ldescoj_frc').AsCurrency;


      pisento_frc:= cdsReceitas.fieldByName('lisento_frc').AsCurrency;
      pdesdco_frc :=cdsReceitas.fieldByName('ldescoc_frc').AsCurrency + cdsReceitas.fieldByName('ldescom_frc').AsCurrency + cdsReceitas.fieldByName('ldescoj_frc').AsCurrency + cdsReceitas.fieldByName('ldescor_frc').AsCurrency;


      if numerodereceitas=contreceitas then begin // acerta as diferen�as no ultimo registro
        pvalor_frc   := pvalor_frc - (desconto-diferdesconto) ;
        pdescor_frc  := pdescor_frc + (desconto-diferdesconto) ;
        pvrcorre_frc := pvrcorre_frc + (correcao-difercorrecao) ;
        pvrmulta_frc := pvrmulta_frc + (multa-difermulta) ;
        pvrjuros_frc := pvrjuros_frc + (juros-diferjuros);
      end;



       pvalor_frc   := Arredonda(pvalor_frc,2) ;
       pdescor_frc  := Arredonda(pdescor_frc,2);
       pvrcorre_frc := Arredonda(pvrcorre_frc,2);
       pvrmulta_frc := Arredonda(pvrmulta_frc,2);
       pvrjuros_frc := Arredonda(pvrjuros_frc,2);

       diferPagto := diferPagto + pvalor_frc + pvrcorre_frc + pvrmulta_frc + pvrjuros_frc;




       if numerodereceitas=contreceitas then begin // acerta as diferen�as no ultimo registro com pagamento

                 if diferPagto<valorPagamento then
                 pvrjuros_frc:=pvrjuros_frc+(valorPagamento-diferPagto)
                 else
                 if diferPagto>valorPagamento then
                 begin
                   acerto:=diferPagto-valorPagamento;
                   if (pvrjuros_frc>=acerto) and (acerto>0) then
                     pvrjuros_frc:=pvrjuros_frc-acerto
                   else
                   if (pvrmulta_frc>=acerto) and (acerto>0) then
                     pvrmulta_frc:=pvrmulta_frc-acerto
                   else
                   if (pvrcorre_frc>=acerto) and (acerto>0) then
                     pvrcorre_frc:=pvrcorre_frc-acerto
                   else
                   if (pvalor_frc>=acerto) and (acerto>0) then
                     pvalor_frc:=pvalor_frc-acerto
                   else
                   if acerto>0 then
                     AcertaDiferencaBaixaParcelasFinanceiro(cdsReceitas.fieldByName('COD_EMP_FRC').value,
                                                            cdsReceitas.fieldByName('COD_DIV_FRC').value,
                                                            cdsReceitas.fieldByName('TP_PAR_FRC').value,
                                                            cdsReceitas.fieldByName('PARCELA_PAR_FRC').value,
                                                            acerto);

                 end;

       end;

            ////////////////////////////////// pagamento das receitas//////////////////////////////////////

      SalvaFinanceiroBaixa_FI_RECEITAS(cdsReceitas.fieldByName('COD_EMP_FRC').Value,
                                       cdsReceitas.fieldByName('COD_DIV_FRC').value,
                                       cdsReceitas.fieldByName('PARCELA_PAR_FRC').value,
                                       TP_PAR,
                                       cdsReceitas.fieldByName('COD_REC_FRC').value,
                                       cdsReceitas.fieldByName('ANO_FRC').value,
                                       cdsReceitas.fieldByName('SITUACAO_FRC').value,
                                       cdsReceitas.fieldByName('CODORIGEM_FRC').value,
                                       cdsReceitas.fieldByName('CODULTORI_FRC').value,
                                       cdsReceitas.fieldByName('COD_IND_FRC').value,
                                       cdsReceitas.fieldByName('OUTRAS_FRC').value,
                                       cdsReceitas.fieldByName('LVALOR_FRC').value,
                                       cdsReceitas.fieldByName('LVRCORRE_FRC').value,
                                       cdsReceitas.fieldByName('LVRMULTA_FRC').value,
                                       cdsReceitas.fieldByName('LVRJUROS_FRC').value,
                                       cdsReceitas.fieldByName('LISENTO_FRC').value,
                                       cdsReceitas.fieldByName('LDESCOVENCI_FRC').value,
                                       cdsReceitas.fieldByName('LDESCOR_FRC').value,
                                       cdsReceitas.fieldByName('LDESCOC_FRC').value,
                                       cdsReceitas.fieldByName('LDESCOM_FRC').value,
                                       cdsReceitas.fieldByName('LDESCOJ_FRC').value,
                                       cdsReceitas.fieldByName('LACRES_FRC').value,
                                       PVALOR_FRC,
                                       PVRCORRE_FRC,
                                       PVRMULTA_FRC,
                                       PVRJUROS_FRC,
                                       PISENTO_FRC,
                                       PDESCOVENCI_FRC,
                                       PDESDCO_FRC,
                                       PDESCOR_FRC,
                                       PDESCOC_FRC,
                                       PDESCOM_FRC,
                                       PDESCOJ_FRC,
                                       Usuario,
                                       strtodatetime(formatdatetime('DD/MM/YYYY', Date) + formatdatetime('HH:MM:SS', Time)),
                                       Usuario,
                                       strtodatetime(formatdatetime('DD/MM/YYYY', Date) + formatdatetime('HH:MM:SS', Time)));

      contreceitas:=contReceitas+1;
      cdsReceitas.next;
    End;

  End; //N�o � vazio o cdsParcelas
End;



Function TFPrincipal.AlteraFinanceiroBaixa_FI_RECEITAS(COD_EMP_FRC, COD_DIV_FRC, PARCELA_PAR_FRC, TP_PAR_FRC,
                                           COD_REC_FRC, ANO_FRC, SITUACAO_FRC, CODORIGEM_FRC, CODULTORI_FRC,
                                           PVALOR_FRC, PVRCORRE_FRC, PVRMULTA_FRC, PVRJUROS_FRC,
                                           PISENTO_FRC, PDESCOVENCI_FRC, PDESDCO_FRC,PDESCOR_FRC,PDESCOC_FRC,
                                           PDESCOM_FRC,PDESCOJ_FRC,LOGIN_ALT_FRC, DTA_ALT_FRC,LVALOR_FRC
                                            : Variant): Integer;
Var qrx: TSQLQuery;

Begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := Conexao;
    qrx.sql.text := ' UPDATE FI_RECEITAS SET '+
                         ' PVALOR_FRC='+TrataDadosFinanceiro(PVALOR_FRC)+','+
                         ' PVRCORRE_FRC='+TrataDadosFinanceiro(PVRCORRE_FRC)+','+
                         ' PVRMULTA_FRC='+TrataDadosFinanceiro(PVRMULTA_FRC)+','+
                         ' PVRJUROS_FRC='+TrataDadosFinanceiro(PVRJUROS_FRC)+','+
                         ' PISENTO_FRC='+TrataDadosFinanceiro(PISENTO_FRC)+','+
                         ' PDESCOVENCI_FRC='+TrataDadosFinanceiro(PDESCOVENCI_FRC)+','+
                         ' PDESDCO_FRC='+TrataDadosFinanceiro(PDESDCO_FRC)+','+
                         ' PDESCOR_FRC='+TrataDadosFinanceiro(PDESCOR_FRC)+','+
                         ' PDESCOC_FRC='+TrataDadosFinanceiro(PDESCOC_FRC)+','+
                         ' PDESCOM_FRC='+TrataDadosFinanceiro(PDESCOM_FRC)+','+
                         ' PDESCOJ_FRC='+TrataDadosFinanceiro(PDESCOJ_FRC)+','+
                         ' LVALOR_FRC='+TrataDadosFinanceiro(LVALOR_FRC)+
                    ' WHERE COD_EMP_FRC='+TrataDadosFinanceiro(COD_EMP_FRC)+
                      ' AND COD_DIV_FRC='+TrataDadosFinanceiro(COD_DIV_FRC)+
                      ' AND PARCELA_PAR_FRC='+TrataDadosFinanceiro(PARCELA_PAR_FRC)+
                      ' AND TP_PAR_FRC='+TrataDadosFinanceiro(TP_PAR_FRC)+
                      ' AND COD_REC_FRC='+TrataDadosFinanceiro(COD_REC_FRC)+
                      ' AND ANO_FRC='+TrataDadosFinanceiro(ANO_FRC)+
                      ' AND SITUACAO_FRC='+TrataDadosFinanceiro(SITUACAO_FRC)+
                      ' AND CODORIGEM_FRC='+TrataDadosFinanceiro(CODORIGEM_FRC)+
                      ' AND CODULTORI_FRC='+TrataDadosFinanceiro(CODULTORI_FRC);
    qrx.ExecSQL;

    qrx.Close;
    qrx.Free;
    Result := 0;
 except
   on E: Exception do begin
    ShowMessage(E.Message);
    qrx.Close;
    qrx.Free;
    Result := 1;
   end;
 end;
End;



Function TFPrincipal.AlteraFinanceiroBaixa_FI_PARCELA(COD_EMP_PAR, COD_DIV_PAR, PARCELA_PAR, TP_PAR,
                                          DATAPAGTO_PAR, DATAMOVIM_PAR, LOTE_PAR, COD_BCO_PAR,
                                          SITUACAO_PAR,SITUACAOANTIGA_PAR,LOGIN_ALT_PAR,
                                          DTA_ALT_PAR, usu_baixa, codcxa, vlrcxa,
                                          CANCELADO_PAR, DATACANCELA_PAR : Variant ): Integer;
Var qrx: TSQLQuery;
Begin
 try
   qrx := TSQLQuery.Create(Application.Owner);
   qrx.SQLConnection := Conexao;
   qrx.sql.text := 'UPDATE FI_PARCELA SET '+
                      ' DATAPAGTO_PAR = '+ TrataDadosFinanceiro(DATAPAGTO_PAR)  +','+
                      ' DATAMOVIM_PAR = '+ TrataDadosFinanceiro(DATAMOVIM_PAR)  +','+
                      ' LOTE_PAR = '+ TrataDadosFinanceiro(LOTE_PAR)       +','+
                      ' COD_BCO_PAR = '+ TrataDadosFinanceiro(COD_BCO_PAR)    +','+
                      ' SITUACAO_PAR = '+ TrataDadosFinanceiro(SITUACAO_PAR)    +','+
                      ' LOGIN_INC_PAR = '+ TrataDadosFinanceiro(LOGIN_ALT_PAR)  +','+
                      ' DTA_INC_PAR = '+ TrataDadosFinanceiro(DTA_ALT_PAR) +','+
                      ' LOGIN_ALT_PAR = '+ TrataDadosFinanceiro(usu_baixa)  +','+
                      ' DTA_ALT_PAR = '+ TrataDadosFinanceiro(DTA_ALT_PAR)  +','+
                      ' COD_CXA_PAR = '+ TrataDadosFinanceiro(codcxa) +','+
                      ' VLR_CXA_PAR = '+ TrataDadosFinanceiro(vlrcxa) +','+
                      ' CANCELADO_PAR = '+ TrataDadosFinanceiro(CANCELADO_PAR) +','+
                      ' DATACANCELA_PAR = '+ TrataDadosFinanceiro(DATACANCELA_PAR) +
                    ' WHERE COD_EMP_PAR = '+TrataDadosFinanceiro(COD_EMP_PAR)+
                      ' AND COD_DIV_PAR = '+TrataDadosFinanceiro(COD_DIV_PAR)+
                      ' AND PARCELA_PAR = '+TrataDadosFinanceiro(PARCELA_PAR)+
                      ' AND TP_PAR = '+TrataDadosFinanceiro(TP_PAR);

   qrx.ExecSQL;
   FreeAndNil(qrx);
   Result := 0;
 except
   on E: Exception do begin
     ShowMessage(E.Message);
     FreeAndNil(qrx);
     Result := -1;
   end;
 end;
End;









procedure TFPrincipal.NotasFiscaisAvulsa;
var cont,Erros,ncommit,item,codnfs:Integer;
cod_cntp,cadastro,modulo,codtom,codatv,codatd,descricao,codmovim,codguia,dataemissao,cnpjtom,ORIGEM_MEC,TIPONOTA,fechado,cnpj,rgtom,datacancelamento,auxtexto,nomecid,ufcid:String;
aliquota:Variant;
begin


  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('DELETE FROM LI_GUIASISS WHERE COD_EMP_GIS=1 AND ORIGEM_GIS=''N'' AND  LOGIN_INC_GIS=''@ISSA''');
  QVerifica.EXECSQL;

  QVerifica.close;
  QVerifica.sql.Text:='DELETE FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND TIPONOTA_NFS IN (''A'') AND LOGIN_INC_NFS=''@ISSA'' ';
  QVerifica.execsql;

  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('DELETE FROM LI_MOVIMENTOECO WHERE COD_EMP_MEC=1 AND ORIGEM_MEC IN (''NFSEAVULSA'') AND LOGIN_INC_MEC=''@ISSA'' ');
  QVerifica.EXECSQL;

  SetaGenerator;

  QOrigem.close;
  QOrigem.sql.clear;
  QOrigem.sql.add(' select * from ASP02_NOTAFISCAL A '+
                  ' INNER JOIN CNTI_CONTRIBUINTES B ON A.CNTI_I_CON=B.CNTI_I_CON '+
                  ' LEFT JOIN CNTI_MUNICIPIOS c on b.CNTI_I_IBGER=c.CNTI_I_IBGE '+
                  ' order by A.NF_I_SEQ '
                  );
  QOrigem.open;






  cont:=1;


   cdsItens.close;
   sqlItens.CommandText:='SELECT * FROM LI_NOTAFISCAL_ITENS WHERE COD_EMP_NFI=1 AND COD_NFS_NFI=-1';
   cdsItens.open;
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_NFS IS NULL ';
   cdsdestino.open;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);


  ncommit:=0;
  while not QOrigem.Eof do
  begin



     inc(ncommit);
     ProgressBar1.position:=cont;



     lbitem.caption:=inttostr(cont);
     lbitem.update;

     lbchave.caption:=QOrigem.fieldByName('NF_I_SEQ').AsString;
     lbchave.update;


     if QOrigem.FieldByName('IMP_A_NAT').AsString='4' then begin
      QVerifica.close;
      QVerifica.sql.clear;
      QVerifica.sql.add('SELECT COD_CNT as codcnt FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1 AND COD_CNT='''+ZeraEsquerda(9,QOrigem.fieldByName('INSCRICAO').AsString)+'''');
      QVerifica.open;
     end
     else
     begin
      QVerifica.close;
      QVerifica.sql.clear;
      QVerifica.sql.add('SELECT COD_CNT_MBL as codcnt FROM LI_MOBIL WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QOrigem.fieldByName('INSCRICAO').AsString)+'''');
      QVerifica.open;
     end;
     modulo:='5';


     if not QVerifica.IsEmpty then begin

          QGenerator.close;
          QGenerator.sql.text:='SELECT GEN_ID(GEN_LI_NOTAFISCAL,1) as cod FROM RDB$DATABASE ';
          QGenerator.open;
          codnfs:=QGenerator.FieldByName('cod').AsInteger;

          cdsdestino.append;
          cdsdestino.fieldByName('COD_EMP_NFS').value   :=1;
          cdsdestino.fieldByName('COD_NFS').value       :=codnfs;
          cdsdestino.fieldByName('COD_MOD_NFS').value   :=modulo;
          cdsdestino.fieldByName('CADASTRO_NFS').value  :=QVerifica.fieldByName('CODCNT').value;
          cdsdestino.fieldByName('COD_CNT_NFS').value   :=QVerifica.fieldByName('CODCNT').value;

          cdsdestino.fieldByName('DATACOMPETE_NFS').value   :=QOrigem.fieldByName('NF_D_EMI').value;
          cdsdestino.fieldByName('OPTANTESIMPLES_NFS').value        :='N';
          cdsdestino.fieldByName('TIPOISS_NFS').value      :='03 - Sobre o Faturamento';
          cdsdestino.fieldByName('EXIGIBILIDADEISS_NFS').value      :='Exig�vel';
          cdsdestino.fieldByName('REGIMEESPECIALTRIB_NFS').value      :='N�o Possui';

          cdsdestino.fieldByName('INCENTIVOFISCAL_NFS').value       :='N';
          cdsdestino.fieldByName('LOGIN_INC_NFS').AsString:='@ISSA';
          dataemissao:=copy(QOrigem.fieldByName('NF_D_EMI').AsString,1,10);





          origem_mec:='NFSEAVULSA';
          tiponota:='A';

          fechado:='S';




          codmovim:=movimento(1,
                              MODULO,//COD_MOD_MEC
                              cdsdestino.fieldByName('CADASTRO_NFS').AsString,//CADASTRO_MEC,
                              cdsdestino.fieldByName('COD_CNT_NFS').value,//COD_CNT_MEC
                              StrToDate(dataemissao),//DATALANCA_MEC,
                              'P',//TP_MEC,
                              copy(dataemissao,4,2),//MES_MEC,
                              copy(dataemissao,7,4),//ANO_MEC,
                              origem_mec,//ORIGEM_MEC
                              '01 - Normal',//TIPOESCRITURA_MEC
                              fechado,//FECHADO_MEC
                              StrToDate(dataemissao),//DATAFECHADO_MEC,
                              '@ISSA',//LOGIN_INC_MEC,
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              '@ISSA',
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              0
                              );




               cdsdestino.fieldByName('COD_MEC_NFS').value   :=codmovim;




               cnpjtom:=trim(copy(Tiracaracter(QOrigem.FieldByName('CNTI_A_CPFCGC').AsString),1,14));
               rgtom  :=Tiracaracter(QOrigem.FieldByName('CNTI_A_RGIE').AsString);

                codtom:=Tomadores(trim(QOrigem.fieldByname('CNTI_A_NOM').AsString),
                                       rgtom,
                                       TiraCaracter(cnpjtom),
                                       '',
                                       '',
                                       '',
                                       trim(QOrigem.fieldByname('CNTI_A_MUN').AsString),
                                       trim(QOrigem.fieldByname('CNTI_A_UF').AsString),
                                       trim(QOrigem.fieldByname('CNTI_A_LOGR').AsString),
                                       trim(QOrigem.fieldByname('CNTI_A_NUMR').AsString),
                                       trim(QOrigem.fieldByname('CNTI_A_COMR').AsString),
                                       trim(QOrigem.fieldByname('CNTI_A_BAIR').AsString),
                                       trim(QOrigem.fieldByname('CNTI_A_CEPR').AsString)
                                       );

          cdsdestino.fieldByName('VALORISS_NFS').AsCurrency:=QOrigem.fieldByName('nf_n_viss').AsCurrency;

          cdsdestino.fieldByName('COD_TOM_NFS').value:=codtom;



          cdsdestino.fieldByName('NOME_RAZAOSOCIAL_NFS').value:=trim(QOrigem.fieldByname('CNTI_A_NOM').AsString);
          cdsdestino.fieldByName('NOME_FANTASIA_NFS').value   :=trim(QOrigem.fieldByname('cnti_a_fan').AsString);
          cdsdestino.fieldByName('LOGRADOURO_NFS').value      :=trim(QOrigem.fieldByname('CNTI_A_LOGR').AsString);
          cdsdestino.fieldByName('NUMERO_NFS').value          :=QOrigem.fieldByname('CNTI_A_NUMR').AsString;
          cdsdestino.fieldByName('COMPLEMENTO_NFS').value     :=QOrigem.fieldByname('CNTI_A_COMR').AsString;
          cdsdestino.fieldByName('BAIRRO_NFS').value          :=QOrigem.fieldByname('CNTI_A_BAIR').AsString;

          cdsdestino.fieldByName('TOMADORFORAPAIS_NFS').value            :='N';
          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value:=QVerifica.fieldByName('COD_BCE_EMP').value;

          QAuxiliar.Close;
          QAuxiliar.sql.Text:='SELECT CD_MUNICIPIO FROM MUNICIPIO WHERE MUNICIPIO LIKE '''+retirachar(QOrigem.fieldByname('CNTI_A_MUN').AsString,'''')+''' AND UF='''+retirachar(QOrigem.fieldByname('CNTI_A_UF').AsString,'''')+'''';
          QAuxiliar.Open;
          if not QAuxiliar.IsEmpty then
          cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QAuxiliar.fieldByName('CD_MUNICIPIO').value
          else
          begin
           QVerifica.close;
           QVerifica.sql.clear;
           QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
           QVerifica.open;
           cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          end;


          cdsdestino.fieldByName('CEP_NFS').value                :=TiraCaracter(QOrigem.fieldByname('CNTI_A_CEPR').AsString);
          cdsdestino.fieldByName('CPF_CNPJ_NFS').value           :=TiraCaracter(TiraCaracter(trim(cnpjtom)));
          cdsdestino.fieldByName('RG_INSCRE_NFS').value          :=rgtom;
          cdsdestino.fieldByName('EMAIL_NFS').value              :='';
          cdsdestino.fieldByName('FONE_NFS').value               :='';
          cdsdestino.fieldByName('FAX_NFS').value                :='';
          cdsdestino.fieldByName('INSCRM_NFS').value             :='';

          cdsdestino.fieldByName('EXPEDIENTE_NFS').value:='N';
          cdsdestino.fieldByName('VALOREXPED_NFS').value:=0;

          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value;

          cdsdestino.fieldByName('CD_PAISPRESTACAO_NFS').value           :=cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value;
          cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value;
           cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value;


          cdsdestino.fieldByName('NRNOTA_NFS').value     :=QOrigem.fieldByName('nf_i_seq').AsString;
          cdsdestino.fieldByName('DATAEMISSAO_NFS').value:=dataemissao;
          cdsdestino.fieldByName('HORAEMISSAO_NFS').value:='00:00:00';
          cdsdestino.fieldByName('TIPONOTA_NFS').value   :=tiponota;


         {
         if trim(QNOrigem.FieldByName('nfeimprps').AsString)<>'' then begin
         cdsdestino.fieldByName('DATAEMISSAORPS_NFS').value:=QNOrigem.fieldByName('nfedataemissao').value;
         cdsdestino.fieldByName('NUMERORPS_NFS').value:=QNOrigem.fieldByName('nfeimprps').value;
         cdsdestino.fieldByName('SERIERPS_NFS').value:=QNOrigem.fieldByName('nfetiporps').value;
         end;
         }

         cdsdestino.fieldByName('STATUS_NFS').value:='N';


         //cdsdestino.fieldByName('CODIGOVERIFICACAO_NFS').value:=
         cdsdestino.fieldByName('CODSEGURANCA_NFS').value:=GeraValidadorNF;;


         cdsdestino.fieldByName('IMPOSTORETIDO_NFS').value:='N';

         cdsdestino.fieldByName('RESPONSAVELRETENCAO_NFS').value:='T';
         cdsdestino.fieldByName('ISSQNFORAMUNICIPIO_NFS').value:='N';


         cdsdestino.fieldByName('COD_SNF_NFS').value:=1;

         cdsdestino.fieldByName('COD_ENF_NFS').value:=1;
         auxtexto:=QOrigem.FieldByName('NF_M_OBS').AsString;

         cdsdestino.fieldByName('OBS_NFS').AsString:=TextFromHTML(auxtexto);

        {
         if QNOrigem.FieldByName('nferetir').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_IRRF_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTAIRRF_NFS').value:=0;
          cdsdestino.fieldByName('VALORIRRF_NFS').value:=QNOrigem.FieldByName('nfeir').AsCurrency;
          cdsdestino.fieldByName('BASECALCULOIRRF_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_IRRF_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTAIRRF_NFS').value:=0;
          cdsdestino.fieldByName('VALORIRRF_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOIRRF_NFS').value:=0;
         end;

         if QNOrigem.FieldByName('nferetinss').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_INSS_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTAINSS_NFS').value:=0;
          cdsdestino.fieldByName('VALORINSS_NFS').value:=QNOrigem.FieldByName('nfeinss').AsCurrency;
          cdsdestino.fieldByName('BASECALCULOINSS_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_INSS_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTAINSS_NFS').value:=0;
          cdsdestino.fieldByName('VALORINSS_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOINSS_NFS').value:=0;
         end;

         if QNOrigem.FieldByName('nferetpis').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_PIS_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTAPIS_NFS').value:=0;
          cdsdestino.fieldByName('VALORPIS_NFS').value:=QNOrigem.FieldByName('nfepis').AsCurrency;;
          cdsdestino.fieldByName('BASECALCULOPIS_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_PIS_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTAPIS_NFS').value:=0;
          cdsdestino.fieldByName('VALORPIS_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOPIS_NFS').value:=0;
         end;


         if QNOrigem.FieldByName('nferetcofins').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_COFINS_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTACOFINS_NFS').value:=0;
          cdsdestino.fieldByName('VALORCOFINS_NFS').value:=QNOrigem.FieldByName('nfecofins').AsCurrency;;
          cdsdestino.fieldByName('BASECALCULOCOFINS_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;;
         end
         else begin
          cdsdestino.fieldByName('INCIDE_COFINS_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTACOFINS_NFS').value:=0;
          cdsdestino.fieldByName('VALORCOFINS_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOCOFINS_NFS').value:=0;
         end;

         if QNOrigem.FieldByName('nferetcsll').AsString='S' then begin
          cdsdestino.fieldByName('INCIDE_CSLL_NFS').value:='S';
          cdsdestino.fieldByName('ALIQUOTACSLL_NFS').value:=0;
          cdsdestino.fieldByName('VALORCSLL_NFS').value:=QNOrigem.FieldByName('nfecsll').AsCurrency;;;
          cdsdestino.fieldByName('BASECALCULOCSLL_NFS').value:=QNOrigem.FieldByName('nfebasecalc').AsCurrency;;;
         end
         else
         begin
          cdsdestino.fieldByName('INCIDE_CSLL_NFS').value:='N';
          cdsdestino.fieldByName('ALIQUOTACSLL_NFS').value:=0;
          cdsdestino.fieldByName('VALORCSLL_NFS').value:=0;
          cdsdestino.fieldByName('BASECALCULOCSLL_NFS').value:=0;
         end;
          }
        cdsdestino.fieldByName('OUTRASRETENCOES_NFS').value:=0;






      cdsdestino.ApplyUpdates(-1);


      if (cdsdestino.fieldByName('STATUS_NFS').AsString='C') then begin

       datacancelamento:=dataemissao;

       auxtexto:='';

       NotasCanceladas(1,
                       cdsdestino.fieldByName('COD_NFS').value,
                       StrToDate(datacancelamento),
                       TextFromHTML(auxtexto),
                       NULL,
                       0,
                       '@ISS',
                       strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                       '@ISS',
                       strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao)))
                       );
      end;



      QItens.Close;
      QItens.SQL.Clear;
      QItens.SQL.Add('select * from ASP02_ITENSNF where NF_I_SEQ='+QOrigem.FieldByName('NF_I_SEQ').AsString);
      QItens.Open;
      item:=0;
      while not QItens.Eof do begin

          descricao:=DBRichEdit1.TEXT;

          inc(item);
          aliquota:=QOrigem.fieldByName('NF_N_ALIQ').AsCurrency;
          codatv:='999999';
          codatd:='0000001';


        cdsItens.append;
        cdsItens.fieldByName('COD_EMP_NFI').value           :=1;
        cdsItens.fieldByName('COD_NFS_NFI').value           :=cdsdestino.fieldByName('COD_NFS').value;
        cdsItens.fieldByName('ITEM_NFI').value              :=QItens.FieldByName('ITEM_I_NUM').AsInteger;
        cdsItens.fieldByName('DESCRI_NFI').value            :=descricao;
        cdsItens.fieldByName('QUANTIDADE_NFI').value        :=QItens.fieldByName('ITEM_N_QTDE').AsCurrency;
        cdsItens.fieldByName('MEDIDA_NFI').value            :=QItens.fieldByName('ITEM_A_UNI').value;


        cdsItens.fieldByName('VLR_UNITARIO_NFI').value      :=QItens.fieldByName('ITEM_N_VUNI').AsCurrency;

        cdsItens.fieldByName('VALOR_NFI').value             :=QItens.fieldByName('ITEM_N_TOTAL').AsCurrency;

        cdsItens.fieldByName('ALIQUOTA_NFI').value          :=aliquota;

        cdsItens.fieldByName('DESCCONDICIONAL_NFI').value  :=0;
        cdsItens.fieldByName('DESCINCONDICIONAL_NFI').value:=0;
        cdsItens.fieldByName('DEDUCAOBASE_NFI').value      :=0;

        cdsItens.fieldByName('VALORINCENTIVO_NFI').value      :=0;

        if trim(codatv)<>'' then begin
        cdsItens.fieldByName('COD_ATV_NFI').value           :=codatv;
        cdsItens.fieldByName('COD_ATD_NFI').value           :=codatd;
        end;
        cdsItens.fieldByName('LOGIN_INC_NFI').value         :='@ISS';
        cdsItens.fieldByName('DTA_INC_NFI').value           :=dataemissao;
        cdsItens.ApplyUpdates(-1);

      QItens.Next;
      end;


        if trim(QOrigem.FieldByName('PAR_N_SEQ').AsString)<>'' then begin

         QVerifica.Close;
         QVerifica.SQL.Clear;
         QVerifica.SQL.Add('select cod_div_par,parcela_par,tp_par from fi_parcela '+
         ' where cod_emp_par=1 and cod_div_par='+QOrigem.fieldByName('PAR_N_SEQ').AsString
         );
         QVerifica.Open;
         codguia:=GuiasNota(1,

                            cdsDestino.fieldByName('COD_MOD_NFS').value,
                            cdsDestino.fieldByName('CADASTRO_NFS').value,
                            cdsDestino.fieldByName('COD_CNT_NFS').value,
                            StrToDate(dataemissao),
                            'N',
                            QVerifica.fieldByName('cod_div_par').Value, // coddiv
                            QVerifica.fieldByName('parcela_par').Value,//PARCELA_PAR_GIS,
                            QVerifica.fieldByName('tp_par').Value,//TP_PAR_GIS,
                            null,
                            'N',
                            NULL,
                            'N',
                            '@ISSA',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            '@ISSA',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            QOrigem.FieldByName('PAR_N_SEQ').AsString
                           );


         ItensGuias(1,
                    codguia,
                    cdsdestino.fieldByName('COD_NFS').value,
                    '@ISSA',
                    strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                    '@ISSA',
                    strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao)))
                    );
        end;


     end;// encontrou no li_mobil

  if  ncommit=1000 then begin


   cdsItens.close;
   sqlItens.CommandText:='SELECT * FROM LI_NOTAFISCAL_ITENS WHERE COD_EMP_NFI=1 AND COD_NFS_NFI=-1';
   cdsItens.open;
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_NFS IS NULL ';
   cdsdestino.open;


   Conexao.Commit(TD);
   ncommit:=0;
   if not Conexao.InTransaction then Conexao.StartTransaction(TD);


   application.ProcessMessages;
  end;


  QOrigem.Next
  end;

  Conexao.Commit(TD);

end;







procedure TFPrincipal.acertaLogradouro;
var cont,Erros:Integer;
begin

  QOrigem.close;
  QOrigem.sql.clear;
  QOrigem.sql.add('select * from posicaologradouro');
  QOrigem.open;



  cont:=1;
  while not QOrigem.Eof do
  begin
        TRY
            cdsdestino.close;
            sqlDestino.commandText:='SELECT * FROM GR_LOGRA WHERE COD_EMP_LOG=1 AND COD_LOG='+QOrigem.fieldByName('cdLogradouro').AsString;
            cdsdestino.open;
            if NOT cdsDestino.IsEmpty then
            BEGIN

                cdsDestino.edit;

                cdsDestino.fieldByName('COD_TPL_LOG').AsString:=QOrigem.fieldByName('cdTipoLograd').value;
                cdsDestino.fieldByName('CEP_LOG').value:=QOrigem.fieldByName('cdcep').value;
//                cdsDestino.fieldByName('COD_BAIR_LOG').value:=QOrigem.fieldByName('cdBairro').value;

                cont:=cont+1;

                Erros:=0;

                if not Conexao.InTransaction then Conexao.StartTransaction(TD);

                if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
                if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

                if Erros = 0 then Conexao.Commit(TD)
                else begin
                  Conexao.Rollback(TD);
                end;
            END;

        EXCEPT
        END;
   QOrigem.Next
  end;



end;



procedure TFPrincipal.tipologia;
var cont,Erros:Integer;
begin

  QOrigem.close;
  QOrigem.sql.clear;
  QOrigem.sql.add('select * from tipologradouro');
  QOrigem.open;



  cont:=1;
  while not QOrigem.Eof do
  begin

            cdsdestino.close;
            sqlDestino.commandText:='SELECT * FROM CEP_TIPOLOGIA WHERE COD_TIP_CEP='+QOrigem.fieldByName('cdTpLogradouro').AsString;
            cdsdestino.open;
            if cdsDestino.IsEmpty then
            cdsDestino.append
            else
            cdsDestino.edit;

                cdsDestino.fieldByName('COD_TIP_CEP').AsString:=QOrigem.fieldByName('cdTpLogradouro').value;
                cdsDestino.fieldByName('NOM_TIP_CEP').value:=QOrigem.fieldByName('nmTpLogradouro').value;
                cdsDestino.fieldByName('ABRE_TIP_CEP').value:=QOrigem.fieldByName('naTpLogradouro').value;

                cont:=cont+1;

                Erros:=0;

                if not Conexao.InTransaction then Conexao.StartTransaction(TD);

                if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
                if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

                if Erros = 0 then Conexao.Commit(TD)
                else begin
                  Conexao.Rollback(TD);
                  exit;
                end;

   QOrigem.Next
  end;



end;








procedure TFPrincipal.Generators;
var
  valor:Integer;
  cod:String;
begin


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_REC) AS INTEGER) AS VALOR FROM GR_RECEITA');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_RECEITAS TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_GVR) AS INTEGER) AS VALOR FROM GR_VALORCERTIDAO');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_GR_VLRCERT TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_LOG) AS INTEGER) AS VALOR FROM GR_LOGRA');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LOGRA TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_BAI) AS INTEGER) AS VALOR FROM GR_BAIRRO');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_BAIRROS TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_CNT) AS INTEGER) AS VALOR FROM GR_CONTRIBUINTES');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_GR_CONTRIBUINTES TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_CID) AS INTEGER) AS VALOR FROM GR_CIDADE');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_CIDADES TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_BCO) AS INTEGER) AS VALOR FROM GR_BANCO');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_BANCO TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_REC) AS INTEGER) AS VALOR FROM GR_RECEITA');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_RECEITAS TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_BCO) AS INTEGER) AS VALOR FROM GR_BANCO');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_BANCO TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_DIV) AS INTEGER) AS VALOR FROM FI_DIVIDA');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_CODDIV TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_LAN) AS INTEGER) AS VALOR FROM FI_LANCAMENTO WHERE TP_LAN=1');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_CODLANG TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_LAN) AS INTEGER) AS VALOR FROM FI_LANCAMENTO WHERE TP_LAN=2');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_CODLANP TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(NNUMERO_PAR) AS INTEGER) AS VALOR FROM FI_PARCELA ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_FINNUMERO TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_ATV) AS INTEGER) AS VALOR FROM LI_ATIVIDADE ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_ATIVIDADE TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_CAR) AS INTEGER) AS VALOR FROM GR_CARTORIOS ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_CARTORIOS TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_COB) AS INTEGER) AS VALOR FROM LI_COBRANCA ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_COBRANCA TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_ESC) AS INTEGER) AS VALOR FROM LI_ESCRITORIO ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_ESCRITORIO TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_GRA) AS INTEGER) AS VALOR FROM LI_GRAFICAS ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_GRAFICAS TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_DPR) AS INTEGER) AS VALOR FROM LI_DECLARACAO ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_DECLARACAO TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  {QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_MBL) AS INTEGER) AS VALOR FROM LI_MOBIL ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_MOBIL TO '+INTTOSTR(VALOR));
  QDestino.execsql;
   }

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(NAUTORI_TLS) AS INTEGER) AS VALOR FROM LI_TALOES ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_TALOES TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(NAUTORI_TLS) AS INTEGER) AS VALOR FROM LI_TALOES ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_TALOES TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_SEQ_VRA) AS INTEGER) AS VALOR FROM LI_VALORATIVIDADE ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_VALORATIVIDADE TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_SEQ_VRC) AS INTEGER) AS VALOR FROM LI_VALORCALCULO ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_LI_VALORCALCULO TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_TXT) AS INTEGER) AS VALOR FROM GR_TEXTO ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_MENSAGEM TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_TXT) AS INTEGER) AS VALOR FROM GR_TEXTO ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_MENSAGEM TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_HEA) AS INTEGER) AS VALOR FROM DA_HEADER ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_HEADER TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_RET) AS INTEGER) AS VALOR FROM DA_RETORNO ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_RETORNO TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_TPB) AS INTEGER) AS VALOR FROM DA_RETORNOTIPOB ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_RETORNOTIPOB TO '+INTTOSTR(VALOR));
  QDestino.execsql;

  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_TPB) AS INTEGER) AS VALOR FROM DA_RETORNOTIPOB ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_RETORNOTIPOB TO '+INTTOSTR(VALOR));
  QDestino.execsql;


  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SELECT CAST(MAX(COD_EMP) AS INTEGER) AS VALOR FROM GR_CAD_EMPRESA ');
  QDestino.open;
  Valor:=QDestino.fieldByName('valor').AsInteger;
  QDestino.close;
  QDestino.sql.clear;
  QDestino.sql.add('SET GENERATOR GEN_EMPRESA TO '+INTTOSTR(VALOR));
  QDestino.execsql;



end;


procedure TFPrincipal.AtualizaDados;
var cont,ncommit:Integer;

begin

      cdsDestino.close;
      sqlDestino.commandText:='SELECT * FROM FI_DIVIDA WHERE COD_EMP_DIV=1  ';
      cdsDestino.open;

      ProgressBar1.Max:=cdsDestino.recordcount;

      lbTotal.caption:=IntToStr(ProgressBar1.Max);
      lbTotal.update;

      ncommit:=0;
      if not Conexao.InTransaction then Conexao.StartTransaction(TD);
      cont:=0;
      while not cdsDestino.eof do
      begin
       TRY
       cont:=cont+1;
       inc(ncommit);
       ProgressBar1.position:=cont;
       lbChave.caption:=cdsDestino.fieldByName('cod_cad_div').AsString;
       lbChave.update;

       lbItem.caption:=IntToStr(cont);
       lbItem.update;

       if cdsDestino.fieldByName('cod_mod_div').AsInteger=1 then
       begin
        QAuxiliar.close;
        QAuxiliar.sql.clear;
        QAuxiliar.sql.add(' SELECT COD_EMP_IPT,COD_IPT,COD_BAI_IPT,COD_LOG_IPT,NUMERO_IPT,COMPLE_IPT,'+
                          ' CEP_IPT,SETOR_IPT,QUADRA_IPT,LOTES_IPT,UNIDADE_IPT,FACE_IPT,SECAO_IPT, '+
                          ' COD_CNT_IPT,COD_CNTC_IPT,MATRIC_IPT,COD_BAIE_IPT,BAIRRO_IPT,COD_LOGE_IPT,'+
                          ' LOGRA_IPT,NUMEROE_IPT,CEPE_IPT,COMPLEE_IPT,COD_CIDE_IPT,UFE_IPT '+
                          ' FROM IP_CAD_IPTU WHERE COD_EMP_IPT=1 AND COD_IPT='''+cdsDestino.fieldByName('cod_cad_div').AsString+'''');
        QAuxiliar.open;
        if not QAuxiliar.IsEmpty then
        begin
               QVerifica.close;
               QVerifica.sql.clear;
               QVerifica.sql.add(' UPDATE FI_DIVIDA SET '+
                                 ' COD_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNT_IPT').Value)+','+
                                 ' COD_BAI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAI_IPT').Value)+','+
                                 ' COD_LOG_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOG_IPT').Value)+','+
                                 ' NUMERO_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('NUMERO_IPT').Value)+','+
                                 ' COMPLE_DIV = '+TrataDadosFinanceiro(copy(RetiraChar(QAuxiliar.fieldByName('COMPLE_IPT').AsString,''''),1,40))+','+
                                 ' CEPI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('CEP_IPT').Value)+','+
                                 ' SETOR_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('SETOR_IPT').Value)+','+
                                 ' QUADRA_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('QUADRA_IPT').Value)+','+
                                 ' LOTE_DIV = '+TrataDadosFinanceiro(copy(QAuxiliar.fieldByName('LOTES_IPT').AsString,1,10))+','+
                                 ' UNIDADE_DIV = '+TrataDadosFinanceiro(copy(QAuxiliar.fieldByName('UNIDADE_IPT').AsString,1,10))+','+
                                 ' FACE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('FACE_IPT').Value)+','+
                                 ' SECAO_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('SECAO_IPT').Value)+','+
                                 ' CODC_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNTC_IPT').Value)+','+
                                 ' COD_BAIE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAIE_IPT').Value)+','+
                                 ' BAIRRO_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('BAIRRO_IPT').AsString,''''))+','+
                                 ' COD_LOGE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOGE_IPT').Value)+','+
                                 ' LOGRA_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('LOGRA_IPT').AsString,''''))+','+
                                 ' NUMEROE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('NUMEROE_IPT').Value)+','+
                                 ' CEPE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('CEPE_IPT').Value)+','+
                                 ' COMPLEE_DIV = '+TrataDadosFinanceiro(copy(RetiraChar(QAuxiliar.fieldByName('COMPLEE_IPT').AsString,''''),1,40))+','+
                                 ' COD_CID_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CIDE_IPT').Value)+
                                 ' WHERE COD_EMP_DIV=1 AND COD_DIV='+cdsDestino.fieldByName('COD_DIV').AsString
                                 );
               QVerifica.ExecSQL();

        end;

       end
       else
       if cdsDestino.fieldByName('cod_mod_div').AsInteger=2 then
       begin

        QAuxiliar.close;
        QAuxiliar.sql.clear;
        QAuxiliar.sql.add(' SELECT COD_EMP_MBL,COD_MBL,COD_BAI_MBL,COD_LOG_MBL,NUMERO_MBL,COMPLE_MBL,'+
                          ' CEPI_MBL,COD_CNT_MBL,INSCRM_MBL,COD_BAIE_MBL,BAIRRO_MBL,COD_LOGE_MBL,'+
                          ' LOGRA_MBL,NUMEROE_MBL,CEPE_MBL,COMPLEE_MBL,COD_CID_MBL '+
                          ' FROM LI_MOBIL WHERE COD_EMP_MBL=1 AND COD_MBL='''+cdsDestino.fieldByName('cod_cad_div').AsString+'''');
        QAuxiliar.open;
        if not QAuxiliar.IsEmpty then
        begin
               QVerifica.close;
               QVerifica.sql.clear;
               QVerifica.sql.add(' UPDATE FI_DIVIDA SET '+
                                 ' COD_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNT_MBL').Value)+','+
                                 ' COD_BAI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAI_MBL').Value)+','+
                                 ' COD_LOG_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOG_MBL').Value)+','+
                                 ' NUMERO_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('NUMERO_MBL').Value)+','+
                                 ' COMPLE_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('COMPLE_MBL').AsString,''''))+','+
                                 ' CEPI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('CEPI_MBL').Value)+','+
                                 ' CODC_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNT_MBL').Value)+','+
                                 ' COD_BAIE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAIE_MBL').Value)+','+
                                 ' BAIRRO_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('BAIRRO_MBL').AsString,''''))+','+
                                 ' COD_LOGE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOGE_MBL').Value)+','+
                                 ' LOGRA_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('LOGRA_MBL').AsString,''''))+','+
                                 ' NUMEROE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('NUMEROE_MBL').Value)+','+
                                 ' CEPE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('CEPE_MBL').Value)+','+
                                 ' COMPLEE_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('COMPLEE_MBL').AsString,''''))+','+
                                 ' COD_CID_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CID_MBL').Value)+
                                 ' WHERE COD_EMP_DIV=1 AND COD_DIV='+cdsDestino.fieldByName('COD_DIV').AsString
                                 );
               QVerifica.ExecSQL();

        end;


       end
       else
       if cdsDestino.fieldByName('cod_mod_div').AsInteger=4 then
       begin

        QAuxiliar.close;
        QAuxiliar.sql.clear;
        QAuxiliar.sql.add(' SELECT * '+
                          ' FROM RR_CAD_RURAL WHERE COD_EMP_RRR=1 AND COD_RRR='''+cdsDestino.fieldByName('cod_cad_div').AsString+'''');
        QAuxiliar.open;
        if not QAuxiliar.IsEmpty then
        begin
               QVerifica.close;
               QVerifica.sql.clear;
               QVerifica.sql.add(' UPDATE FI_DIVIDA SET '+
                                 ' COD_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNT_RRR').Value)+','+
                                 ' COD_BAI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAIE_RRR').Value)+','+
                                 ' COD_LOG_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOG_RRR').Value)+','+
                                 ' NUMERO_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('NUMEROE_RRR').Value)+','+
                                 ' COMPLE_DIV = '+TrataDadosFinanceiro(RetiraChar(COPY(QAuxiliar.fieldByName('OBSLOGRA_RRR').AsString,1,40),''''))+','+
                                 ' CEPI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('CEPE_RRR').Value)+','+
                                 ' CODC_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNT_RRR').Value)+','+
                                 ' COD_BAIE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAIE_RRR').Value)+','+
                                 ' BAIRRO_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('BAIRROE_RRR').AsString,''''))+','+
                                 ' COD_LOGE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOGE_RRR').Value)+','+
                                 ' LOGRA_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('LOGRAE_RRR').AsString,''''))+','+
                                 ' NUMEROE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('NUMEROE_RRR').Value)+','+
                                 ' CEPE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('CEPE_RRR').Value)+','+
                                 ' COMPLEE_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('COMPLEE_RRR').AsString,''''))+','+
                                 ' COD_CID_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CIDE_RRR').Value)+
                                 ' WHERE COD_EMP_DIV=1 AND COD_DIV='+cdsDestino.fieldByName('COD_DIV').AsString
                                 );
               QVerifica.ExecSQL();

        end;
       end
       else
       if cdsDestino.fieldByName('cod_mod_div').AsInteger=55 then
       begin

        QAuxiliar.close;
        QAuxiliar.sql.clear;
        QAuxiliar.sql.add(' SELECT COD_EMP_cnt,COD_CNT,COD_BAI_CNT,COD_LOG_CNT,NUMERO_CNT,COMPLE_CNT,'+
                          ' CEP_CNT,RG_CNT,NOM_BAI_CNT,NOM_LOG_CNT,'+
                          ' COD_CID_CNT '+
                          ' FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1 AND COD_CNT='''+cdsDestino.fieldByName('cod_cad_div').AsString+'''');
        QAuxiliar.open;
        if not QAuxiliar.IsEmpty then
        begin
               QVerifica.close;
               QVerifica.sql.clear;
               QVerifica.sql.add(' UPDATE FI_DIVIDA SET '+
                               //  ' COD_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNT').Value)+','+
                               //  ' COD_BAI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAI_CNT').Value)+','+
                               //  ' COD_LOG_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOG_CNT').Value)+','+
                               //  ' NUMERO_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('NUMERO_CNT').Value)+','+
                               //  ' COMPLE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COMPLE_CNT').Value)+','+
                               // ' CEPI_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('CEP_CNT').Value)+','+
                               // ' CODC_CNT_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CNT').Value)+','+
                                 ' COD_BAIE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_BAI_CNT').Value)+','+
                                 ' BAIRRO_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('NOM_BAI_CNT').AsString,''''))+','+
                                 ' COD_LOGE_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_LOG_CNT').Value)+','+
                                 ' LOGRA_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('NOM_LOG_CNT').AsString,''''))+','+
                                 ' NUMEROE_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('NUMERO_CNT').Value,''''))+','+
                                 ' CEPE_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('CEP_CNT').Value,''''))+','+
                                 ' COMPLEE_DIV = '+TrataDadosFinanceiro(RetiraChar(QAuxiliar.fieldByName('COMPLE_CNT').AsString,''''))+','+
                                 ' COD_CID_DIV = '+TrataDadosFinanceiro(QAuxiliar.fieldByName('COD_CID_CNT').Value)+
                                 ' WHERE COD_EMP_DIV=1 AND COD_DIV='+cdsDestino.fieldByName('COD_DIV').AsString
                                 );
               QVerifica.ExecSQL();

        end;


       end;


       EXCEPT
       END;

        if ncommit=1000 then begin
         ncommit:=0;
         Conexao.Commit(TD);
         if not Conexao.InTransaction then Conexao.StartTransaction(TD);
        end;


       cdsDestino.next;
      end;
      Conexao.Commit(TD);

end;





function TFPrincipal.cidade(nome,Estado:String):String;
var codigo:Integer;
begin
  QVerifica.close;
  QVerifica.sql.Clear;
  QVerifica.sql.add('SELECT * FROM GR_CIDADE WHERE UPPER(NOME_CID) LIKE '''+UPPERCASE(NOME)+'''');
  QVerifica.Open;
  IF QVerifica.IsEmpty then
  begin
   QVerifica.close;
   QVerifica.sql.Clear;
   QVerifica.sql.add('SELECT COALESCE(MAX(COD_CID),0) AS CODIGO FROM GR_CIDADE ');
   QVerifica.Open;
   codigo:=QVerifica.fieldByName('CODIGO').AsInteger+1;

   QDestino.close;
   QDestino.sql.Clear;
   QDestino.sql.add('INSERT INTO GR_CIDADE (COD_CID,NOME_CID,LOGIN_INC_CID,DTA_INC_CID) VALUES ('+
                     ''''+ZeraEsquerda(7,IntToStr(codigo))+''','+
                     ''''+NOME+''','+
                     '''CONVERSAO'','+
                     ''''+FormatDateTime('mm/dd/yyyy',date)+''''+
                    ')');
   QDestino.execsql;
  end
  else
  begin
  codigo:=QVerifica.fieldByName('COD_CID').AsInteger;
  end;

  result:=ZeraEsquerda(7,IntToStr(codigo));

end;


function TFPrincipal.logradouro(nome,cep:String):String;
var codigo:Integer;
begin

  QVerifica.close;
  QVerifica.sql.Clear;
  QVerifica.sql.add('SELECT * FROM GR_LOGRA WHERE UPPER(NOME_LOG) LIKE ''%'+UPPERCASE(RETIRACHAR(NOME,''''))+'%''');
  QVerifica.Open;
  IF NOT QVerifica.IsEmpty then
  result:=QVerifica.fieldByName('COD_LOG').AsString
  else
  result:='';

end;

function TFPrincipal.bairro(nome:String):String;
var codigo:Integer;
begin

  QVerifica.close;
  QVerifica.sql.Clear;
  QVerifica.sql.add('SELECT * FROM GR_BAIRRO WHERE UPPER(NOME_BAI) LIKE ''%'+UPPERCASE(RETIRACHAR(NOME,''''))+'%''');
  QVerifica.Open;
  IF NOT QVerifica.IsEmpty then
  result:=QVerifica.fieldByName('COD_BAI').AsString
  ELSE
  result:='';

end;


function TFPrincipal.ContribuintesNota(nome,rg,cnpj,fone,fax,email,cid,uf,logra,numero,complemento,bai,cep:String):String;
var
codcid,codigo:String;
codlog,codbai:variant;

begin

  NOME:=RetiraChar(NOME,'''');
  QVerifica.close;
  QVerifica.sql.Clear;
  QVerifica.sql.add('SELECT * FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1 AND UPPER(NOME_CNT) = '''+UPPERCASE(NOME)+''' AND CNPJ_CNT='''+cnpj+'''');
  QVerifica.Open;
  IF QVerifica.IsEmpty then
  begin
   QVerifica.close;
   QVerifica.sql.Clear;
   QVerifica.sql.add('select CAST(MAX(COD_CNT) AS INTEGER) CODIGO FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1');
   QVerifica.Open;
   codigo:=IntToStr(QVerifica.fieldByName('CODIGO').AsInteger+1);


   codlog:=logradouro(logra,'');
   if trim(codlog)='' then
   codlog:='NULL';

   codbai:=Bairro(bai);
   if trim(codbai)='' then
   codbai:='NULL';


   if trim(cep)='' then
   cep:='77980000';

   if trim(cid)='' then
   BEGIN
    cid:='SAMPAIO';
    UF:='TO';
   END;

   codcid:=cidade(cid,uf);

   QDestino.close;
   QDestino.sql.Clear;
   QDestino.sql.add('INSERT INTO GR_CONTRIBUINTES (COD_EMP_CNT,COD_CNT,NOME_CNT,RG_CNT,CNPJ_CNT, '+
   ' FAX_CNT,FONE_CNT,EMAIL_CNT,COD_LOG_CNT,COD_BAI_CNT,COD_CID_CNT,NUMERO_CNT,CEP_CNT,COMPLE_CNT, '+
   ' LOGIN_INC_CNT,DTA_INC_CNT,NOM_LOG_CNT,NOM_BAI_CNT) VALUES ('+
                     '1,'+
                     ''''+ZeraEsquerda(9,codigo)+''','+
                     ''''+copy(NOME,1,60)+''','+
                     ''''+TiraCaracter(RG)+''','+
                     ''''+TiraCaracter(CNPJ)+''','+
                     ''''+TiraCaracter(FAX)+''','+
                     ''''+TiraCaracter(FONE)+''','+
                     ''''+EMAIL+''','+
                     codlog+','+
                     codbai+','+
                     ''''+codcid+''','+
                     ''''+NUMERO+''','+
                     ''''+TiraCaracter(CEP)+''','+
                     ''''+copy(trim(RetiraChar(COMPLEMENTO,'''')),1,30)+''','+
                     '''CONVERSAO'','+
                     ''''+FormatDateTime('mm/dd/yyyy',date)+''','+
                     ''''+COPY(TRIM(RetiraChar(logra,'''')),1,60)+''','+
                     ''''+COPY(TRIM(RetiraChar(bai,'''')),1,60)+''''+
                    ')');
   QDestino.execsql;

  end
  else
  begin
   codigo:=QVerifica.fieldByName('COD_CNT').AsString;
  end;

   result:=ZeraEsquerda(9,codigo);

end;


function TFPrincipal.Contribuintes(nome,rg,cnpj,fone,fax,email,cid,uf,logra,numero,complemento,bai,cep:String):String;
var
codcid,codigo:String;
codlog,codbai:variant;

begin

  NOME:=RetiraChar(NOME,'''');
  QVerifica.close;
  QVerifica.sql.Clear;
  QVerifica.sql.add('SELECT * FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1 AND UPPER(NOME_CNT) = '''+UPPERCASE(NOME)+'''');
  QVerifica.Open;
  IF QVerifica.IsEmpty then
  begin
   QVerifica.close;
   QVerifica.sql.Clear;
   QVerifica.sql.add('select CAST(MAX(COD_CNT) AS INTEGER) CODIGO FROM GR_CONTRIBUINTES WHERE COD_EMP_CNT=1');
   QVerifica.Open;
   codigo:=IntToStr(QVerifica.fieldByName('CODIGO').AsInteger+1);



   if trim(logra)<>'' then
   begin
    QVerifica.close;
    QVerifica.sql.Clear;
    QVerifica.sql.add('SELECT * FROM GR_LOGRA WHERE COD_EMP_LOG=1 AND COD_LOG='+logra);
    QVerifica.Open;
    if not QVerifica.IsEmpty then
    begin
    codlog:=QVerifica.fieldByName('cod_log').AsString;
    logra:=QVerifica.fieldByName('nome_log').AsString;
    end
    else
    begin
    codlog:='0';
    logra:='';
    end;

   end
   else
   begin
   codlog:='0';
   logra:='';
   end;



   if trim(bai)<>'' then
   begin
    QVerifica.close;
    QVerifica.sql.Clear;
    QVerifica.sql.add('SELECT * FROM GR_BAIRRO WHERE COD_EMP_BAI=1 AND COD_BAI='+bai);
    QVerifica.Open;
    if not QVerifica.IsEmpty then
    begin
    codbai:=QVerifica.fieldByName('cod_bai').AsString;
    bai:=QVerifica.fieldByName('nome_bai').AsString;
    end
    else
    begin
    codbai:='0';
    bai:='';
    end;

   end
   else
   begin
   codbai:='0';
   bai:='';
   end;

   if trim(cep)='' then
   cep:='68900000';

   if trim(cid)='' then
   BEGIN
    cid:='MACAPA';
    UF:='AP';
   END;

   codcid:=cidade(cid,uf);

   QDestino.close;
   QDestino.sql.Clear;
   QDestino.sql.add('INSERT INTO GR_CONTRIBUINTES (COD_EMP_CNT,COD_CNT,NOME_CNT,RG_CNT,CNPJ_CNT, '+
   ' FAX_CNT,FONE_CNT,EMAIL_CNT,COD_LOG_CNT,COD_BAI_CNT,COD_CID_CNT,NUMERO_CNT,CEP_CNT,COMPLE_CNT, '+
   ' LOGIN_INC_CNT,DTA_INC_CNT,NOM_LOG_CNT,NOM_BAI_CNT) VALUES ('+
                     '1,'+
                     ''''+ZeraEsquerda(9,codigo)+''','+
                     ''''+copy(NOME,1,60)+''','+
                     ''''+TiraCaracter(RG)+''','+
                     ''''+TiraCaracter(CNPJ)+''','+
                     ''''+TiraCaracter(FAX)+''','+
                     ''''+TiraCaracter(FONE)+''','+
                     ''''+EMAIL+''','+
                     codlog+','+
                     codbai+','+
                     ''''+codcid+''','+
                     ''''+NUMERO+''','+
                     ''''+TiraCaracter(CEP)+''','+
                     ''''+copy(trim(RetiraChar(COMPLEMENTO,'''')),1,30)+''','+
                     '''CONVERSAO'','+
                     ''''+FormatDateTime('mm/dd/yyyy',date)+''','+
                     ''''+COPY(TRIM(RetiraChar(logra,'''')),1,60)+''','+
                     ''''+COPY(TRIM(RetiraChar(bai,'''')),1,60)+''''+
                    ')');
   QDestino.execsql;

  end
  else
  begin
   codigo:=QVerifica.fieldByName('COD_CNT').AsString;
  end;

   result:=ZeraEsquerda(9,codigo);

end;


Function TFPrincipal.TiraCaracter(s: String): variant;
{ Filtra uma string qualquer, convertendo as suas partes
  num�ricas para sua representa��o decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
Var
  i: Integer;
  t: String;
  SeenDecimal, SeenSgn: Boolean;
Begin
  t := '';
  SeenDecimal := False;
  SeenSgn := False;
  if Length(s) <= 0 then
  begin
  result:='';
  exit;
  end;

  {Percorre os caracteres da string:}
  For i := Length(s) Downto 0 Do
  {Filtra a string, aceitando somente n�meros e separador decimal:}
    If (s[i] In ['0'..'9', '-', '+', DecimalSeparator]) Then Begin
      If (s[i] = DecimalSeparator) And (Not SeenDecimal) Then Begin
        t := s[i] + t;
        SeenDecimal := True;
      End
      Else If (s[i] In ['+', '-']) And (Not SeenSgn) And (i = 1) Then Begin
        t := s[i] + t;
        SeenSgn := True;
      End
      Else If s[i] In ['0'..'9'] Then Begin
        t := s[i] + t;
      End;
    End;
  Result := t;
End;





Function TFPrincipal.TrataDadosFinanceiro(Valor : Variant) : string;
var rec : string;
begin

 rec := vartostr(Valor);
 if (VarType(Valor) = varDate)  then
 rec := formatdatetime('DD.MM.YYYY',Valor);

 if (VarType(Valor) = varDouble) or (VarType(Valor) = varCurrency) then rec := replace(Valor,',','.');
 if trim(rec) = '' then rec := 'NULL'
 else rec := ''''+ rec +'''';

 Result := rec;
end;




procedure TFPrincipal.Indices;
 var cont,erros:Integer;
begin


    QOrigem.close;
    QOrigem.sql.clear;
    QOrigem.sql.add('select * from TRIUFM');
    QOrigem.open;

    while not QOrigem.eof do
    begin

        cdsdestino.close;
        sqlDestino.commandText:='select * from GR_INDICE WHERE COD_IND='+QOrigem.fieldByName('UFM_S_TIP').AsString;
        cdsdestino.open;

        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.FieldByName('COD_EMP_IND').AsInteger:=1;
        cdsdestino.FieldByName('COD_IND').AsInteger:=QOrigem.fieldByName('UFM_S_TIP').AsInteger;
        cdsdestino.FieldByName('DESCRI_IND').AsString:=QOrigem.fieldByName('UFM_A_DES').AsString;

        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;
    QOrigem.next;
    end;

    QOrigem.close;
    QOrigem.sql.clear;
    QOrigem.sql.add('select * from TRIUFM2');
    QOrigem.open;
    while not QOrigem.eof do
    begin

        cdsdestino.close;
        sqlDestino.commandText:='select * from GR_INDICEDESDO '+
        ' WHERE COD_IND_IDO='+QOrigem.fieldByName('UFM_S_TIP').AsString+' AND DATA_IDO='''+InverteData(QOrigem.fieldByName('UFM_D_REF').AsString)+'''';
        cdsdestino.open;

        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.FieldByName('COD_EMP_IDO').AsInteger:=1;
        cdsdestino.FieldByName('COD_IND_IDO').AsInteger:=QOrigem.fieldByName('UFM_S_TIP').AsInteger;
        cdsdestino.FieldByName('VRINDICE_IDO').AsCurrency:=QOrigem.fieldByName('UFM_N_VAL').AsCurrency;
        cdsdestino.FieldByName('DATA_IDO').AsString:=QOrigem.fieldByName('UFM_D_REF').AsString;

        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;

    QOrigem.next;
    end;


end;





procedure TFPrincipal.modulo;
 var cont,modulo,erros:Integer;
begin


        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_MODULO where cod_mod=1';
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('cod_emp_mod').AsInteger:=1;
        cdsdestino.FieldByName('cod_mod').AsInteger:=1;
        cdsdestino.FieldByName('descricao_mod').AsString:='IMOBILI�RIO';


        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;



        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_MODULO where cod_mod=2';
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('cod_emp_mod').AsInteger:=1;
        cdsdestino.FieldByName('cod_mod').AsInteger:=2;
        cdsdestino.FieldByName('descricao_mod').AsString:='MOBILI�RIO';


        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;

        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_MODULO where cod_mod=3';
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('cod_emp_mod').AsInteger:=1;
        cdsdestino.FieldByName('cod_mod').AsInteger:=3;
        cdsdestino.FieldByName('descricao_mod').AsString:='AGUA E ESGOTO';


        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;


        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_MODULO where cod_mod=5';
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('cod_emp_mod').AsInteger:=1;
        cdsdestino.FieldByName('cod_mod').AsInteger:=5;
        cdsdestino.FieldByName('descricao_mod').AsString:='CONTRIBUINTES';


        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;

        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_MODULO where cod_mod=4';
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('cod_emp_mod').AsInteger:=1;
        cdsdestino.FieldByName('cod_mod').AsInteger:=4;
        cdsdestino.FieldByName('descricao_mod').AsString:='IMOBILI�RIO RURAL';


        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;


end;


procedure TFPrincipal.bancos;
 var cont,nbanco,erros:Integer;
begin

    QOrigem.Close;
    QOrigem.sql.clear;
    QOrigem.SQL.add('select * from ASP02_TRIBAN ');
    QOrigem.open;

    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('SELECT CAST(MAX(COD_BCO) AS INTEGER) as cod FROM GR_BANCO ');
    QVerifica.Open;
    nBanco:=QVerifica.fieldByName('cod').AsInteger+1;


    while not QOrigem.eof do
    begin

        cdsdestino.close;
        sqlDestino.commandText:='select * from GR_BANCO where COD_EMP_BCO=1 AND COD_bco='+ZeraEsquerda(3,QOrigem.fieldByName('BAN_I_COD').AsString);
        cdsdestino.open;
        if cdsdestino.IsEmpty then
        begin
        cdsdestino.append;
        cdsdestino.FieldByName('COD_bco').AsString:=ZeraEsquerda(3,QOrigem.fieldByName('BAN_I_COD').AsString);
        nbanco:=nbanco+1;
        end
        else
        cdsdestino.edit;
        cdsdestino.FieldByName('cod_emp_bco').AsInteger:=1;
        cdsdestino.FieldByName('banco_bco').AsString:=ZeraEsquerda(3,QOrigem.fieldByName('BAN_I_COD').AsString);
        cdsdestino.FieldByName('nome_bco').AsString:=QOrigem.fieldByName('BAN_A_NOM').AsString;
        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;


     QOrigem.Next;
    end;




end;


procedure TFPrincipal.lotes;
 var cont,nbanco,erros:Integer;
begin

    QOrigem.Close;
    QOrigem.sql.clear;
    QOrigem.SQL.add('SELECT DISTINCT LOT_A_NUM FROM TRILOTE ');
    QOrigem.open;
    nBanco:=1;
    while not QOrigem.eof do
    begin

       if trim(QOrigem.fieldByName('LOT_A_NUM').AsString)<>'' then begin
      try
        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_LOTE where COD_LTE='+SoNumeros(trim(QOrigem.fieldByName('LOT_A_NUM').AsString));
        cdsdestino.open;
        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;
        cdsdestino.FieldByName('COD_EMP_LTE').AsInteger:=1;
        cdsdestino.FieldByName('COD_LTE').AsString:=SoNumeros(QOrigem.fieldByName('LOT_A_NUM').AsString);
        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;
      except

      end;
    end;

     QOrigem.Next;
    end;




end;








procedure TFPrincipal.receitaprincipal;
 var cont,modulo,princ,erros:Integer;
begin

    QOrigem.close;
    QOrigem.sql.clear;
    QOrigem.sql.add(' SELECT DISTINCT A.imp_i_cod,B.IMP_A_DES,A.IMP_A_NAT '+
                    ' FROM TRILANCA A '+
                    ' LEFT JOIN TRIIMP B ON A.IMP_I_COD=B.IMP_I_COD '
                    );
    QOrigem.open;
    while not QOrigem.eof do
    begin

     if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
     modulo:=1
     else
     if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
     modulo:=4
     else
     if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
     modulo:=2
     else
     modulo:=5;




    TRY

      cdsdestino.close;
      sqlDestino.commandText:='select * from FI_RECPRINCIPAL where cod_mod_rep='+IntToStr(modulo)+' and cod_rep='+QOrigem.fieldByName('IMP_I_COD').AsString;
      cdsdestino.open;
      if cdsdestino.IsEmpty then
      cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.FieldByName('cod_emp_rep').AsInteger:=1;
      cdsdestino.FieldByName('cod_mod_rep').AsInteger:=modulo;
      cdsdestino.FieldByName('cod_rep').AsInteger:=QOrigem.fieldByName('imp_i_cod').AsInteger;
      cdsdestino.FieldByName('descricao_rep').AsString:=QOrigem.fieldByName('IMP_A_DES').AsString;
      Erros:=0;
      if not Conexao.InTransaction then Conexao.StartTransaction(TD);

      if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
      if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

      if Erros = 0 then Conexao.Commit(TD)
      else begin
        Conexao.Rollback(TD);
        exit;
      end;
    EXCEPT
    cdsdestino.CancelUpdates;
    END;


    QOrigem.Next;
    end;


    QOrigem.close;
    QOrigem.sql.clear;
    QOrigem.sql.add(' SELECT DISTINCT A.imp_i_cod,B.IMP_A_DES,A.IMP_A_NAT '+
                    ' FROM TRILANCA_REPARCELAMENTO A '+
                    ' LEFT JOIN TRIIMP B ON A.IMP_I_COD=B.IMP_I_COD '
                    );
    QOrigem.open;
    while not QOrigem.eof do
    begin

     if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
     modulo:=1
     else
     if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
     modulo:=4
     else
     if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
     modulo:=2
     else
     modulo:=5;




    TRY

      cdsdestino.close;
      sqlDestino.commandText:='select * from FI_RECPRINCIPAL where cod_mod_rep='+IntToStr(modulo)+' and cod_rep='+QOrigem.fieldByName('IMP_I_COD').AsString;
      cdsdestino.open;
      if cdsdestino.IsEmpty then
      cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.FieldByName('cod_emp_rep').AsInteger:=1;
      cdsdestino.FieldByName('cod_mod_rep').AsInteger:=modulo;
      cdsdestino.FieldByName('cod_rep').AsInteger:=QOrigem.fieldByName('imp_i_cod').AsInteger;
      cdsdestino.FieldByName('descricao_rep').AsString:=QOrigem.fieldByName('IMP_A_DES').AsString;
      Erros:=0;
      if not Conexao.InTransaction then Conexao.StartTransaction(TD);

      if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
      if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

      if Erros = 0 then Conexao.Commit(TD)
      else begin
        Conexao.Rollback(TD);
        exit;
      end;
    EXCEPT
    cdsdestino.CancelUpdates;
    END;


    QOrigem.Next;
    end;






end;










procedure TFPrincipal.receitas;
 var cont,modulo,erros:Integer;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('select * from TRITAX ');
 QOrigem.open;

 cont:=1;
  while not QOrigem.eof do
  begin

    cdsdestino.close;
    sqlDestino.commandText:='select * from GR_RECEITA where cod_rec='+QOrigem.fieldByName('TAX_I_COD').AsString;
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.edit;

    cdsdestino.FieldByName('cod_emp_rec').AsInteger:=1;
    cdsdestino.FieldByName('cod_rec').AsString:=QOrigem.fieldByName('TAX_I_COD').AsString;
    cdsdestino.FieldByName('descri_rec').AsString:=QOrigem.FieldByName('TAX_A_DES').AsString;
    cdsdestino.FieldByName('abrev_rec').AsString:=QOrigem.FieldByName('TAX_A_ABR').AsString;
    Erros:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
    if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

    if Erros = 0 then Conexao.Commit(TD)
    else begin
      Conexao.Rollback(TD);
      exit;
    end;

   cont:=cont+1;
   QOrigem.next;
  end;

   {

    cdsdestino.close;
    sqlDestino.commandText:='select * from GR_RECEITA where cod_rec=15';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.edit;

    cdsdestino.FieldByName('cod_emp_rec').AsInteger:=1;
    cdsdestino.FieldByName('cod_rec').AsString:='15';
    cdsdestino.FieldByName('descri_rec').AsString:='';
    cdsdestino.FieldByName('abrev_rec').AsString:='';
    cdsdestino.FieldByName('sigla_rec').AsString:='';

    Erros:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
    if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

    if Erros = 0 then Conexao.Commit(TD)
    else begin
      Conexao.Rollback(TD);
      exit;
    end;

    cdsdestino.close;
    sqlDestino.commandText:='select * from GR_RECEITA where cod_rec=13';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.edit;

    cdsdestino.FieldByName('cod_emp_rec').AsInteger:=1;
    cdsdestino.FieldByName('cod_rec').AsString:='13';
    cdsdestino.FieldByName('descri_rec').AsString:='';
    cdsdestino.FieldByName('abrev_rec').AsString:='';
    cdsdestino.FieldByName('sigla_rec').AsString:='';

    Erros:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
    if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

    if Erros = 0 then Conexao.Commit(TD)
    else begin
      Conexao.Rollback(TD);
      exit;
    end;


    cdsdestino.close;
    sqlDestino.commandText:='select * from GR_RECEITA where cod_rec=148';
    cdsdestino.open;

    if cdsdestino.IsEmpty then
    cdsdestino.append
    else
    cdsdestino.edit;

    cdsdestino.FieldByName('cod_emp_rec').AsInteger:=1;
    cdsdestino.FieldByName('cod_rec').AsString:='148';
    cdsdestino.FieldByName('descri_rec').AsString:='';
    cdsdestino.FieldByName('abrev_rec').AsString:='';
    cdsdestino.FieldByName('sigla_rec').AsString:='';

    Erros:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
    if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

    if Erros = 0 then Conexao.Commit(TD)
    else begin
      Conexao.Rollback(TD);
      exit;
    end;

    }


end;


procedure TFPrincipal.outrasreceitas;
 var cont,modulo,erros:Integer;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('select * from receita');
 QOrigem.open;

 cont:=1;
  while not QOrigem.eof do
  begin

    cdsdestino.close;
    sqlDestino.commandText:='select * from FI_OUTRASRECEITAS WHERE COD_EMP_CUS IS NULL';
    cdsdestino.open;

    cdsdestino.append;
    cdsdestino.FieldByName('cod_emp_cus').AsInteger:=1;
    cdsdestino.FieldByName('cod_rec_cus').AsInteger:=QOrigem.fieldByName('cod_rec').AsInteger;
    cdsdestino.FieldByName('incmulta_cus').AsString:=QOrigem.FieldByName('incmulta').AsString;
    cdsdestino.FieldByName('incjuros_cus').AsString:=QOrigem.FieldByName('incjuros').AsString;
    cdsdestino.FieldByName('inccorre_cus').AsString:=QOrigem.FieldByName('inccorre').AsString;
    cdsdestino.FieldByName('tpcalculo_cus').AsString:='01 - Porcentagem';
    cdsdestino.FieldByName('valor_cus').AsString:=QOrigem.FieldByName('di_valor').AsString;
    cdsdestino.FieldByName('tpcobranca_cus').AsString:='01 - Apenas nas D�vida Executada';
    cdsdestino.FieldByName('tp_cus').AsString:='01 - Honor�rios';
    cdsdestino.FieldByName('ondecobra_cus').AsString:='';
    cdsdestino.FieldByName('LOGIN_INC_CUS').AsString:='CONVERSAO';
    cdsdestino.FieldByName('DTA_INC_CUS').value:=date;


    cdsdestino.append;
    cdsdestino.FieldByName('cod_emp_cus').AsInteger:=1;
    cdsdestino.FieldByName('cod_rec_cus').AsInteger:=QOrigem.fieldByName('cod_rec1').AsInteger;
    cdsdestino.FieldByName('incmulta_cus').AsString:=QOrigem.FieldByName('incmulta').AsString;
    cdsdestino.FieldByName('incjuros_cus').AsString:=QOrigem.FieldByName('incjuros').AsString;
    cdsdestino.FieldByName('inccorre_cus').AsString:=QOrigem.FieldByName('inccorre').AsString;
    cdsdestino.FieldByName('tpcalculo_cus').AsString:='02 - Valor Fixo';
    cdsdestino.FieldByName('valor_cus').AsString:='1';
    cdsdestino.FieldByName('tpcobranca_cus').AsString:='01 - Apenas nas D�vida Executada';
    cdsdestino.FieldByName('tp_cus').AsString:='02 - Outras Custas';
    cdsdestino.FieldByName('ondecobra_cus').AsString:='';
    cdsdestino.FieldByName('LOGIN_INC_CUS').AsString:='CONVERSAO';
    cdsdestino.FieldByName('DTA_INC_CUS').value:=date;


    Erros:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
    if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

    if Erros = 0 then Conexao.Commit(TD)
    else begin
      Conexao.Rollback(TD);
      exit;
    end;



   cont:=cont+1;
   QOrigem.next;
  end;

end;

procedure TFPrincipal.guiasSimples;
 var cont,modulo,erros,recprincipal,coddiv,ncommit:Integer;
 origem,cadastro,contrib,cadpesquisa,cgc,parcelamento,codcompro:String;
 matricula,dtcadastro,codruae,codbaie,crreodlog,codbai:Variant;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM TRIBAIXA_SIMPLES ');
 QOrigem.open;
 //progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;

  ncommit:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

 cont:=1;
  QVerifica.close;
  QVerifica.sql.clear;
  Qverifica.sql.add('SELECT MAX(COD_DIV) AS COD FROM FI_DIVIDA ');
  QVerifica.open;

  coddiv:=QVerifica.fieldByName('cod').AsInteger;
  while not QOrigem.eof do
  begin
  inc(ncommit);
  lbItem.Caption:=IntToStr(cont);
  lbItem.Update;

  ProgressBar1.Position:=cont;

   lbChave.Caption:=QOrigem.fieldByName('LOT_A_CPFCNPJ').value;
   lbChave.Update;



   QVerifica.close;
   QVerifica.sql.text:='SELECT COD_CNT,COD_MBL '+
                       ' FROM GR_CONTRIBUINTES '+
                       ' INNER JOIN LI_MOBIL ON COD_EMP_MBL=COD_EMP_CNT AND COD_CNT=COD_CNT_MBL '+
                       ' WHERE COD_EMP_CNT=1 AND CNPJ_CNT='''+QOrigem.fieldByName('LOT_A_CPFCNPJ').AsString+''' ORDER BY SITUACAO_MBL';
   QVerifica.open;
   if not QVerifica.IsEmpty then
   begin
     modulo:=2;
     cadastro:=QVerifica.fieldByName('COD_MBL').AsString;
     contrib:=QVerifica.fieldByName('COD_CNT').AsString;
   end
   else begin
     QVerifica.close;
     QVerifica.sql.text:='SELECT COD_CNT '+
                         ' FROM GR_CONTRIBUINTES '+
                         ' WHERE COD_EMP_CNT=1 AND CNPJ_CNT='''+QOrigem.fieldByName('LOT_A_CPFCNPJ').AsString+''' ';
     QVerifica.open;
     if not QVerifica.IsEmpty then
     begin
      modulo:=5;
      cadastro:=QVerifica.fieldByName('COD_CNT').AsString;
      contrib:=QVerifica.fieldByName('COD_CNT').AsString;
     end
     else begin

           modulo:=5;

           QVerifica.close;
           QVerifica.sql.Clear;
           QVerifica.sql.add('SELECT GEN_ID(GEN_GR_CONTRIBUINTES,1) AS COD FROM RDB$DATABASE '                           );
           QVerifica.open;
           contrib:=ZeraEsquerda(9,QVerifica.fieldByName('COD').AsString);
           cadastro:=ZeraEsquerda(9,QVerifica.fieldByName('COD').AsString);

           QDestino.close;
           QDestino.sql.Clear;
           QDestino.sql.add('INSERT INTO GR_CONTRIBUINTES (COD_EMP_CNT,COD_CNT,NOME_CNT,CNPJ_CNT) VALUES ('+
                             '1,'+
                             ''''+ZeraEsquerda(9,contrib)+''','+
                             '''N�O INFORMADO'','+
                             ''''+TiraCaracter(QOrigem.fieldByName('LOT_A_CPFCNPJ').AsString)+''' '+
                            ')'
                            );
           QDestino.execsql;

     end;

   end;


   parcelamento:='N';
   if copy(QOrigem.fieldByName('LOT_A_CODSERPRO').AsString,1,4)='0718' then
   recprincipal:=41
   else
   recprincipal:=40;

   codcompro:=contrib;

   Origem:='01 - D�vida do Exerc�cio' ;


   QVerifica.close;
   QVerifica.sql.clear;
   Qverifica.sql.add('SELECT COD_DIV FROM FI_DIVIDA '+
                     ' WHERE COD_EMP_DIV=1 AND COD_MOD_DIV='+IntToStr(modulo)+
                     ' AND COD_REP_DIV='+IntToStr(recprincipal)+
                     ' AND COD_CAD_DIV='''+cadastro+''' AND ANO_DIV='''+QOrigem.fieldByName('LOT_I_ANO').AsString+''' AND LOGIN_INC_DIV=''SIMPLES'' ');
   QVerifica.open;
   if QVerifica.IsEmpty then
   begin
     inc(coddiv);
     matricula:=cadastro;
     codruae:=null;
     codbaie:=null;
     try
     QDestino.close;
     QDestino.sql.clear;
     QDestino.sql.text:='INSERT INTO FI_DIVIDA(COD_EMP_DIV,COD_DIV,COD_MOD_DIV, '+
                        ' COD_REP_DIV,ANO_DIV,ANOREF_DIV,DATACADAST_DIV,ORIGEM_DIV, '+
                        ' COD_CNT_DIV,CODC_CNT_DIV,COD_CAD_DIV,MATRICULA_DIV,'+
                        ' LOGIN_INC_DIV,DTA_INC_DIV '+
                        ') '+
                        'VALUES( '+
                        '1,'+
                        IntToStr(coddiv)+','+
                        IntToStr(modulo)+','+
                        IntToStr(recprincipal)+','+
                        ''''+QOrigem.fieldByName('LOT_I_ANO').AsString+''','+
                        ''''+QOrigem.fieldByName('LOT_I_ANO').AsString+''','+
                        ''''+formatDateTime('mm/dd/YYYY',QOrigem.fieldByName('LOT_D_DATA').AsDateTime)+''','+
                        ''''+Origem+''','+
                        TrataDadosFinanceiro(contrib)+','+
                        TrataDadosFinanceiro(codcompro)+','+
                        ''''+cadastro+''','+
                        TrataDadosFinanceiro(matricula)+','+
                        '''SIMPLES'','+
                        ''''+formatDateTime('mm/dd/YYYY',DATE)+''''+
                        ')';

     QDestino.ExecSQL();
     except
     end;
   end;

   if ncommit=1000 then begin
    Conexao.Commit(TD);
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   end;



   cont:=cont+1;
   QOrigem.next;
  end;


  Conexao.Commit(TD);

end;


procedure TFPrincipal.guias;
 var cont,modulo,erros,recprincipal,coddiv,ncommit:Integer;
 origem,cadastro,contrib,cadpesquisa,cgc,parcelamento,codcompro:String;
 matricula,dtcadastro,codruae,codbaie,crreodlog,codbai:Variant;
begin
   {
      "1" imobiliario
      "2" rural
      "3" economico
      "4" contribuinte

    }

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM TRILANCA ORDER BY PAR_N_SEQ ');
 QOrigem.open;
 //progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;

  ncommit:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

 cont:=1;
 coddiv:=0;
  while not QOrigem.eof do
  begin
  inc(ncommit);
  lbItem.Caption:=IntToStr(cont);
  lbItem.Update;

  ProgressBar1.Position:=cont;

   lbChave.Caption:=QOrigem.fieldByName('inscricao').value;
   lbChave.Update;

   if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
    modulo:=1
   else
   if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
    modulo:=2
   else
   if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
    modulo:=4
   else
    modulo:=5;


   contrib:=ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString);
   parcelamento:='N';
   recprincipal:=QOrigem.fieldByName('IMP_I_COD').AsInteger;
   {
   if trim(QOrigem.fieldByName('CNTI_I_CON_ALUNO').AsString)<>'' then
   codcompro:=ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON_ALUNO').AsString)
   else
   }
   codcompro:=contrib;

   if parcelamento='S' then
     Origem:='03 - D�vida Parcelada'
   else
   begin
     if QOrigem.fieldByName('par_s_ano').AsString='2014' then
     Origem:='01 - D�vida do Exerc�cio'
     else
     Origem:='02 - D�vida Ativa';
   end;

   cadastro:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);
   coddiv:=QOrigem.fieldByName('par_n_seq').AsInteger;
   matricula:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);
   codruae:=null;
   codbaie:=null;
   try
   QDestino.close;
   QDestino.sql.clear;
   QDestino.sql.text:='INSERT INTO FI_DIVIDA(COD_EMP_DIV,COD_DIV,COD_MOD_DIV, '+
                      ' COD_REP_DIV,ANO_DIV,ANOREF_DIV,DATACADAST_DIV,ORIGEM_DIV, '+
                      ' COD_CNT_DIV,CODC_CNT_DIV,COD_CAD_DIV,MATRICULA_DIV,'+
                      ' LOGIN_INC_DIV,DTA_INC_DIV '+
                      ') '+
                      'VALUES( '+
                      '1,'+
                      IntToStr(coddiv)+','+
                      IntToStr(modulo)+','+
                      IntToStr(recprincipal)+','+
                      ''''+QOrigem.fieldByName('par_s_ano').AsString+''','+
                      ''''+QOrigem.fieldByName('par_s_ano').AsString+''','+
                      ''''+formatDateTime('mm/dd/YYYY',QOrigem.fieldByName('par_d_lan').AsDateTime)+''','+
                      ''''+Origem+''','+
                      TrataDadosFinanceiro(contrib)+','+
                      TrataDadosFinanceiro(codcompro)+','+
                      ''''+cadastro+''','+
                      TrataDadosFinanceiro(matricula)+','+
                      '''DIVIDA'','+
                      ''''+formatDateTime('mm/dd/YYYY',DATE)+''''+
                      ')';

   QDestino.ExecSQL();
   except

   end;


   if ncommit=1000 then begin
    Conexao.Commit(TD);
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   end;



   cont:=cont+1;
   QOrigem.next;
  end;


  Conexao.Commit(TD);

end;




procedure TFPrincipal.guiasParcelamento;
 var cont,modulo,erros,recprincipal,coddiv:Integer;
 origem,cadastro,contrib,cadpesquisa,cgc,parcelamento:String;
 matricula,dtcadastro,codruae,codbaie,codlog,codbai:Variant;
begin


 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM TRILANCA_REPARCELAMENTO ORDER BY rep_n_cod ');
 QOrigem.open;
 //progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;


  cont:=1;

  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('SELECT MAX(CAST(COD_DIV AS INTEGER)) COD FROM FI_DIVIDA');
  QVerifica.open;
  coddiv:=QVerifica.fieldByName('cod').AsInteger;



  while not QOrigem.eof do
  begin

  lbItem.Caption:=IntToStr(cont);
  lbItem.Update;

  ProgressBar1.Position:=cont;



   lbChave.Caption:=QOrigem.fieldByName('inscricao').value;
   lbChave.Update;


   if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
    modulo:=1
   else
   if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
    modulo:=2
   else
   if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
    modulo:=4
   else
    modulo:=5;


   contrib:=ZeraEsquerda(9,QOrigem.fieldByName('CNTI_I_CON').AsString);
   parcelamento:='S';
   recprincipal:=QOrigem.fieldByName('IMP_I_COD').AsInteger;
   Origem:='03 - D�vida Parcelada';

   cadastro:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);
   coddiv:=coddiv+1;
   matricula:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);
   codruae:=null;
   codbaie:=null;
   QDestino.close;
   QDestino.sql.clear;
   QDestino.sql.add('INSERT INTO FI_DIVIDA(COD_EMP_DIV,COD_DIV,COD_MOD_DIV, '+
                    ' COD_REP_DIV,ANO_DIV,ANOREF_DIV,DATACADAST_DIV,ORIGEM_DIV, '+
                    ' COD_CNT_DIV,CODC_CNT_DIV,COD_CAD_DIV,MATRICULA_DIV,ANO_STR_DIV,'+
                    ' LOGIN_INC_DIV,DTA_INC_DIV '+
                    ') '+
                    'VALUES( '+
                    '1,'+
                    IntToStr(coddiv)+','+
                    IntToStr(modulo)+','+
                    IntToStr(recprincipal)+','+
                    ''''+QOrigem.fieldByName('par_s_ano').AsString+''','+
                    ''''+QOrigem.fieldByName('par_s_ano').AsString+''','+
                    ''''+formatDateTime('mm/dd/YYYY',QOrigem.fieldByName('par_d_lan').AsDateTime)+''','+
                    ''''+Origem+''','+
                    TrataDadosFinanceiro(contrib)+','+
                    TrataDadosFinanceiro(contrib)+','+
                    ''''+cadastro+''','+
                    TrataDadosFinanceiro(matricula)+','+
                    TrataDadosFinanceiro(QOrigem.fieldByName('rep_n_cod').AsString)+','+
                    '''PARCE'','+
                    ''''+formatDateTime('mm/dd/YYYY',DATE)+''''+
                    ')'
                    );
   QDestino.ExecSQL();




   cont:=cont+1;
   QOrigem.next;
  end;

end;








procedure TFPrincipal.livrosDA;
 var cont,modulo,princ,erros:Integer;
begin

    QOrigem.close;
    QOrigem.sql.clear;
    QOrigem.sql.add('select * FROM TRILIVRO ');
    QOrigem.open;
    while not QOrigem.eof do
    begin
     try
      cdsdestino.close;
      sqlDestino.commandText:=' SELECT * FROM FI_LIVROSDA '+
                              ' WHERE COD_EMP_LDA=1 AND LIVRO_LDA='+QOrigem.FieldByName('LIV_I_COD').AsString+' AND REFER_LDA='+QOrigem.fieldByname('LIV_S_ANO').AsString;
      cdsdestino.open;
      if cdsdestino.IsEmpty then
      cdsdestino.append
      else
      cdsdestino.edit;

      cdsdestino.FieldByName('COD_EMP_LDA').AsInteger:=1;
      cdsdestino.FieldByName('LIVRO_LDA').AsInteger:=QOrigem.fieldByname('LIV_I_COD').AsInteger;
      cdsdestino.FieldByName('DESCR_LDA').AsString:=QOrigem.fieldByname('LIV_A_DES').AsString;
      cdsdestino.FieldByName('REFER_LDA').AsInteger:=QOrigem.fieldByname('LIV_S_ANO').AsInteger;
      cdsdestino.FieldByName('STATUS_LDA').AsString:='FX';

      Erros:=0;
      if not Conexao.InTransaction then Conexao.StartTransaction(TD);

      if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
      if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

      if Erros = 0 then Conexao.Commit(TD)
      else begin
        Conexao.Rollback(TD);
        exit;
      end;
     except

     end;
    QOrigem.Next;
    end;





end;


procedure TFPrincipal.parcelas;
 var cont,erros,tppar,nnumero,i,coddiv,ncommit:Integer;
 origem,cadastro,situacao,executada,unica,parce,ativa,
 codbanco,cancelado,rece,banco,livro,folha,inscricao,dtinscricao,dtparce,situacaofrc,idCorrecao,
 codrec,datavencimento,datalancamento,datapagamento,datamovimento,lote,pg,reflivro,datacancela:String;
 valorReceita,valor,desconto,acrescimos,valorPago:Currency;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add(' SELECT B.INSCRICAO,B.PAR_D_LAN,B.PAR_S_ANO,B.PAR_A_SIMUL,A.* '+
                 ' FROM TRIPAR A '+
                 ' INNER JOIN TRILANCA B ON A.PAR_N_SEQ=B.PAR_N_SEQ '+
                 ' WHERE A.SIT_I_COD<>5 AND A.SIT_I_COD<>41  '+
                 ' ORDER BY A.PAR_N_SEQ '
                 );
 QOrigem.open;

// progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;
 ncommit:=0;

 QVerifica.Close;
 QVerifica.sql.Clear;
 QVerifica.SQL.Add('select max(nnumero_par) as cod from fi_parcela ');
 QVerifica.Open;

 nnumero:=QVerifica.FieldByName('cod').AsInteger;

 if not Conexao.InTransaction then Conexao.StartTransaction(TD);

 cont:=1;
  while not QOrigem.eof do
  begin
   inc(nnumero);
   inc(ncommit);

   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

   ProgressBar1.Position:=cont;



   lbChave.Caption:=QOrigem.fieldByName('PAR_N_SEQ').AsString;
   lbChave.Update;
   label6.Caption:=QOrigem.fieldByName('PAR_N_SEQ').AsString;
   label6.Update;

   dtinscricao:='31/01/'+QOrigem.fieldByName('PAR_S_ANO').AsString;
   datacancela:='null';

   QCadastro.close;
   QCadastro.sql.clear;
   QCadastro.sql.add('SELECT first 1 A.LIV_I_COD,B.CER_I_PAG,C.LIV_S_ANO,b.inscricao,cer_i_num,b.cer_d_data FROM TRIPARCELACERTIDAO A '+
                     ' INNER JOIN TRICERTIDAO B ON A.LIV_I_COD=B.LIV_I_COD AND A.CER_I_COD=B.CER_I_COD '+
                     ' INNER JOIN TRILIVRO C ON C.LIV_I_COD=A.LIV_I_COD '+
                     ' WHERE A.PAR_N_SEQ='+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                     ' AND A.PAR_I_SUB<='+QOrigem.fieldByName('PAR_I_SUB').AsString+
                     ' AND A.PAR_S_NUM='+QOrigem.fieldByName('PAR_S_NUM').AsString+'  ORDER BY 1 DESC '
                     );
   QCadastro.open;

   if not QCadastro.IsEmpty then
   begin
    livro:=QCadastro.fieldByName('liv_i_cod').AsString;
    folha:=QCadastro.fieldByName('CER_I_PAG').AsString;
    inscricao:=QCadastro.fieldByName('inscricao').AsString;
    reflivro:=QCadastro.fieldByName('LIV_S_ANO').AsString;
    dtinscricao:=''''+InverteData(copy(QCadastro.fieldByName('cer_d_data').AsString,1,10))+'''';

    if trim(QCadastro.fieldByName('cer_d_data').AsString)='' then
    dtinscricao:='NULL';

    ativa:='S';
   end
   else
   begin
    ativa:='N';
    livro:='NULL';
    folha:='NULL';
    inscricao:='NULL';
    reflivro:='NULL';
    dtinscricao:='NULL';
   end;

   QCadastro.close;


   if trim(livro)='' then
   livro:='NULL';

   if trim(folha)='' then
   folha:='NULL';

   if trim(inscricao)='' then
   inscricao:='NULL';

   if trim(reflivro)='' then
   reflivro:='NULL';

   if trim(dtinscricao)='' then
   dtinscricao:='NULL';

   QCadastro.close;
   QCadastro.sql.clear;
   QCadastro.sql.add('SELECT * FROM TRILANPROC '+
                     ' WHERE PAR_N_SEQ='+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                     ' AND PAR_I_SUB='+QOrigem.fieldByName('PAR_I_SUB').AsString+
                     ' AND PAR_S_NUM='+QOrigem.fieldByName('PAR_S_NUM').AsString
                     );
   QCadastro.open;

   if not QCadastro.IsEmpty then
   executada:='S'
   else
   executada:='N';

   QCadastro.close;

   pg:='N';
   coddiv:=QOrigem.fieldByName('PAR_N_SEQ').AsInteger;

   tpPar:=QOrigem.fieldByName('PAR_I_SUB').AsInteger;

   unica:=QOrigem.fieldByName('PAR_A_UNICA').AsString;

   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=1)  then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';              //divida do exercicio
    situacao:='1';
    ativa:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=2) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=3)
   or (QOrigem.fieldByName('SIT_I_COD').AsInteger=4) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=29)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';

     if executada='S' then
     situacaofrc:='3';

     if situacaofrc='1' then
     situacao:='6'
     else
     if situacaofrc='2' then
     situacao:='7'
     else
     if situacaofrc='3' then
     situacao:='8';

     cancelado:='N';
     parce:='N';
     pg:='S';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=6) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=11) then
   begin
    situacaofrc:='2';
    cancelado:='N';
    executada:='N';
    situacao:='2';            //divida ativa
    ativa:='S';
    unica:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=7) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=15)  then
   begin
    situacaofrc:='3';
    cancelado:='N';
    executada:='S';
    situacao:='3';            //executada
    ativa:='S';
    unica:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=13) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=14) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=26) then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';         //parcelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='5';
     cancelado:='N';
     parce:='N';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=8)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';           //cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=9)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                //Prescrito

     if executada='S' then
     situacaofrc:='3';

     situacao:='11';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=10)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //Suspenso

     if executada='S' then
     situacaofrc:='3';

     situacao:='9';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=20)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //remido

     if executada='S' then
     situacaofrc:='3';

     situacao:='10';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=27 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';
    situacao:='0';
    ativa:='N';
   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=28 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';
    situacao:='0';
    ativa:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=41)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //Parcela Excluida

     if executada='S' then
     situacaofrc:='3';

     situacao:='15';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   begin
     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                      //Cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';
   end;


   parce:='N';

   if (QOrigem.FieldByName('PAR_A_SIMUL').AsString='S') and (situacao='1') then begin
     situacao:='44';
     cancelado:='S';
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('PAR_D_VEN').AsString,1,10))+''''
   end;

   try

   if trim(QOrigem.fieldByName('UFM_S_TIP').AsString)<>'' then
   idCorrecao:=QOrigem.fieldByName('UFM_S_TIP').AsString
   else
   idCorrecao:='1';

   datavencimento:=copy(QOrigem.fieldByName('PAR_D_VEN').AsString,1,10);

   if trim(datavencimento)='' then
   datavencimento:='31/12/'+QOrigem.fieldByName('PAR_S_ANO').AsString;

   if trim(QOrigem.fieldByName('PAR_D_LAN').AsString)='' then
   datalancamento:='01/01/'+QOrigem.fieldByName('PAR_S_ANO').AsString
   else
   datalancamento:=copy(QOrigem.fieldByName('PAR_D_LAN').AsString,1,10);

   if unica='S' then
   situacao:='0';


   QDestino.close;
   QDestino.sql.clear;
   QDestino.sql.add(' INSERT INTO FI_PARCELA(COD_EMP_PAR,COD_DIV_PAR,TP_PAR, '+
                    ' DATAVENCI,MOEDA_PAR,COD_IND_PAR,DATAGERACAO_PAR,SITUACAO_PAR,SITUACAOANTIGA_PAR,'+
                    ' CANCELADO_PAR,DATACANCELA_PAR,PARCE_PAR,UNICA_PAR,ATIVA_PAR,EXECUTADA_PAR,NNUMERO_PAR,FAIXANNUMERO_PAR, '+
                    ' PARCELA_PAR,DATAPARCE_PAR,VALOR_PAR,LIVRO_PAR,FOLHA_PAR,INSCRI_PAR,REFLIVRO_PAR,'+
                    ' DATAINSCRI_PAR,LOGIN_INC_PAR,DTA_INC_PAR) '+
                    ' VALUES( '+
                    '1,'+
                    IntToStr(coddiv)+','+
                    IntToStr(tppar)+','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datavencimento))+''','+
                    '''1'','+
                    ''''+QOrigem.fieldByName('UFM_S_TIP').AsString+''','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datalancamento))+''','+
                    ''''+situacao+''','+
                    ''''+QOrigem.fieldByName('SIT_I_COD').AsString+''','+
                    ''''+cancelado+''','+
                    datacancela+','+
                    ''''+parce+''','+
                    ''''+unica+''','+
                    ''''+ativa+''','+
                    ''''+executada+''','+
                    IntToStr(nnumero)+','+
                    '2,'+
                    trim(QOrigem.fieldByName('par_s_num').AsString)+','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datalancamento))+''','+
                    Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('par_n_val').AsCurrency))+','+
                    livro+','+
                    folha+','+
                    inscricao+','+
                    reflivro+','+
                    dtinscricao+','+
                    '''DIVIDA'','+
                    ''''+formatDateTime('mm/dd/YYYY',date)+''''+
                    ')'
                    );

   QDestino.ExecSQL();

   except

   end;


   if trim(QOrigem.FieldByName('ARR_N_COD_CARNE').AsString)<>'' then begin
     try
     QDestino.close;
     QDestino.sql.clear;
     QDestino.sql.add('INSERT INTO FI_BAIXACONVERSAO( COD_EMP_CON,COD_DIV_CON,PARCELA_PAR_CON, '+
                                                     ' TP_PAR_CON,CODIGO_CON,TIPO_CON) '+
                        'VALUES( '+
                        '1,'+
                        IntToStr(coddiv)+','+
                        QOrigem.fieldByName('par_s_num').AsString+','+
                        IntToStr(tppar)+','+
                        trim(QOrigem.FieldByName('ARR_N_COD_CARNE').AsString)+','+
                        '1'+
                        ')'
                        );
      QDestino.ExecSQL();

     except
     end;
   end;


   ///////////////////////////////Eventos////////////////////////////////////

   QEventos.close;
   QEventos.sql.clear;
   QEventos.sql.add('SELECT * FROM TRIPAR1 WHERE PAR_N_SEQ='+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                    ' AND PAR_S_NUM='''+QOrigem.fieldByName('PAR_S_NUM').AsString+''' AND PAR_I_SUB='+QOrigem.fieldByName('PAR_I_SUB').AsString
                    );
   QEventos.open;
   valorreceita:=0;
   while not QEventos.eof do
   begin

       codrec:=QEventos.fieldByName('TAX_I_COD').AsString;
       valorreceita:=valorreceita+QEventos.fieldByName('PAR_N_VAL').AsCurrency;
       try
       QDestino.close;
       QDestino.sql.clear;
       QDestino.sql.add('INSERT INTO FI_RECEITAS(COD_EMP_FRC,COD_DIV_FRC,TP_PAR_FRC,COD_REC_FRC,ANO_FRC,'+
                        ' SITUACAO_FRC,CODORIGEM_FRC,CODULTORI_FRC,COD_IND_FRC,PARCELA_PAR_FRC,OUTRAS_FRC,LVALOR_FRC ) '+
                        'VALUES( '+
                        '1,'+
                        IntToStr(coddiv)+','+
                        IntToStr(tppar)+','+
                        codrec+','+
                        ''''+QOrigem.fieldByName('PAR_S_ANO').AsString+''','+
                        ''''+situacaofrc+''','+
                        IntToStr(coddiv)+','+
                        IntToStr(coddiv)+','+
                        '1,'+
                        QEventos.fieldByName('PAR_S_NUM').AsString+','+
                        '''N'','+
                        Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('PAR_N_VAL').AsCurrency))+
                        ')'
                        );
       QDestino.ExecSQL();
       except
       end;
   QEventos.next;
   end;


     if pg='S' then
     begin



                  QPagamentos.Close;
                  QPagamentos.SQL.Clear;
                  QPagamentos.SQL.Add('select a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                      'a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                      'a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa, '+
                                      'min(a.sit_i_codestorno) as sit_i_codestorno,a.par_d_pagto,a.par_d_credito, '+
                                      'sum(coalesce(a.par_n_val,0)) as par_n_val,'+
                                      'sum(coalesce(a.par_n_jur_rep,0)) as par_n_jur_rep, '+
                                      'sum(coalesce(a.par_n_mul_rep,0)) as par_n_mul_rep, '+
                                      'sum(coalesce(a.par_n_cor_rep,0)) as par_n_cor_rep, '+
                                      'sum(coalesce(a.par_n_jur,0)) as par_n_jur, '+
                                      'sum(coalesce(a.par_n_mul,0)) as par_n_mul, '+
                                      'sum(coalesce(a.par_n_cor,0)) as par_n_cor, '+
                                      'sum(coalesce(a.par_n_valpago,0)) as par_n_valpago, '+
                                      'sum(coalesce(a.par_n_valdif,0)) as par_n_valdif '+
                                   ' from tripar_lote a '+
                                   ' where a.PAR_N_SEQ = '+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                                   '   and a.par_s_num ='+QOrigem.fieldByName('par_s_num').AsString+
                                   '   and a.par_i_sub ='+QOrigem.fieldByName('par_i_sub').AsString+
                                   '   and a.tax_i_cod > -999 '+
                                   ' group by '+
                                   '   a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                   '   a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                   '   a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa,a.par_d_pagto,a.par_d_credito '+
                                   ' order by lot_d_data '
                                   );
                  QPagamentos.Open;

                  if QPagamentos.IsEmpty then begin

                        valor:=valorreceita+
                               QOrigem.fieldByName('par_n_cor').AsCurrency+
                               QOrigem.fieldByName('par_n_mul').AsCurrency+
                               QOrigem.fieldByName('par_n_jur').AsCurrency;

                        valorPago:=QOrigem.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;



                        datapagamento:=copy(QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString,1,10);
                        dataMovimento:=copy(QOrigem.fieldByName('LOT_D_DATA').AsString,1,10);
                        lote:=QOrigem.fieldByName('LOT_A_NUM').AsString;
                        banco:=VerificaBanco(QOrigem.fieldByName('BAN_I_COD').AsString);

                        try

                        QPagamentos.Close;
                        QPagamentos.sql.clear;
                        QPagamentos.sql.add('SELECT LOT_D_CONTABIL FROM TRILOTE where LOT_A_NUM='''+QOrigem.fieldByName('LOT_A_NUM').AsString+''' AND BAN_I_COD='+QOrigem.fieldByName('BAN_I_COD').AsString+' AND LOT_D_DATA='''+InverteData(QOrigem.fieldByName('LOT_D_DATA').AsString)+'''');
                        QPagamentos.Open;
                        if not QPagamentos.IsEmpty then
                        dataMovimento:=copy(QPagamentos.fieldByName('LOT_D_CONTABIL').AsString,1,10);

                        except

                        end;


                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='999';


                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);


                        if trim(datamovimento)='' then
                        datamovimento:=QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString;


                        BaixaParcelasFinanceiro(1, QOrigem.fieldByName('PAR_N_SEQ').AsInteger,
                                                tppar, QOrigem.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                datamovimento, 'N', BANCO,
                                                LOTE, QOrigem.fieldByName('par_n_cor').AsCurrency,
                                                QOrigem.fieldByName('par_n_mul').AsCurrency, QOrigem.fieldByName('par_n_jur').AsCurrency,
                                                valorreceita,desconto,acrescimos,QOrigem.fieldByName('par_n_valpago').AsCurrency,'DIVIDA',1,6);
                  end
                  else begin
                    while not QPagamentos.Eof do begin

                        valor:=valorreceita+
                               QPagamentos.fieldByName('par_n_cor').AsCurrency+
                               QPagamentos.fieldByName('par_n_mul').AsCurrency+
                               QPagamentos.fieldByName('par_n_jur').AsCurrency;


                        valorPago:=QPagamentos.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;


                        datapagamento:=copy(QPagamentos.fieldByName('par_d_pagto').AsString,1,10);
                        dataMovimento:=copy(QPagamentos.fieldByName('par_d_credito').AsString,1,10);
                        lote         :=QPagamentos.fieldByName('LOT_A_NUM').AsString;
                        banco        :=QPagamentos.fieldByName('BAN_I_COD').AsString;


                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='999';

                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);

                        if trim(datamovimento)='' then
                        datamovimento:=QPagamentos.fieldByName('par_d_pagto').AsString;

                        if QPagamentos.FieldByName('sit_i_codbaixa').AsString<>'29' then // pagamento duplicado
                        begin
                          BaixaParcelasFinanceiro(1, coddiv,
                                                  tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                  datamovimento, 'N', BANCO,
                                                  LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                                  QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                                  valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'DIVIDA',1,6);
                        end
                        else
                        begin
                          DuplicarBaixaParcelas(1, coddiv,
                                               tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                               datamovimento, 'N', BANCO,
                                               LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                               QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                               valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'DIVIDA'
                                               );

                        end;




                    QPagamentos.Next
                    end;
                  end;





     end;

     cont:=cont+1;

   if ncommit=1000 then begin
    Conexao.Commit(TD);
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   end;

   QOrigem.next;
  end;

  Conexao.Commit(TD);

end;






procedure TFPrincipal.parcelasSimples;
 var cont,erros,tppar,nnumero,i,coddiv,ncommit,recprincipal,modulo:Integer;
 origem,cadastro,situacao,executada,unica,parce,ativa,
 codbanco,cancelado,rece,banco,livro,folha,inscricao,dtinscricao,dtparce,situacaofrc,idCorrecao,
 codrec,datavencimento,datalancamento,datapagamento,datamovimento,lote,pg,reflivro,datacancela,contrib:String;
 valorReceita,valor,desconto,acrescimos,valorPago:Currency;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add(' SELECT * '+
                 ' FROM TRIBAIXA_SIMPLES '
                 );
 QOrigem.open;


 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;
 ncommit:=0;

 QVerifica.Close;
 QVerifica.sql.Clear;
 QVerifica.SQL.Add('select max(nnumero_par) as cod from fi_parcela ');
 QVerifica.Open;

 nnumero:=QVerifica.FieldByName('cod').AsInteger;

 if not Conexao.InTransaction then Conexao.StartTransaction(TD);

 cont:=1;
  while not QOrigem.eof do
  begin
   inc(nnumero);
   inc(ncommit);

   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

   ProgressBar1.Position:=cont;



   lbChave.Caption:=QOrigem.fieldByName('LOT_A_CPFCNPJ').AsString;
   lbChave.Update;
   label6.Caption:=QOrigem.fieldByName('LOT_A_CPFCNPJ').AsString;
   label6.Update;

   dtinscricao:='31/01/'+QOrigem.fieldByName('LOT_I_ANO').AsString;
   datacancela:='null';


   QVerifica.close;
   QVerifica.sql.text:='SELECT COD_CNT,COD_MBL '+
                       ' FROM GR_CONTRIBUINTES '+
                       ' INNER JOIN LI_MOBIL ON COD_EMP_MBL=COD_EMP_CNT AND COD_CNT=COD_CNT_MBL '+
                       ' WHERE COD_EMP_CNT=1 AND CNPJ_CNT='''+QOrigem.fieldByName('LOT_A_CPFCNPJ').AsString+''' ORDER BY SITUACAO_MBL';
   QVerifica.open;
   if not QVerifica.IsEmpty then
   begin
     modulo:=2;
     cadastro:=QVerifica.fieldByName('COD_MBL').AsString;
     contrib:=QVerifica.fieldByName('COD_CNT').AsString;
   end
   else begin
     QVerifica.close;
     QVerifica.sql.text:='SELECT COD_CNT '+
                         ' FROM GR_CONTRIBUINTES '+
                         ' WHERE COD_EMP_CNT=1 AND CNPJ_CNT='''+QOrigem.fieldByName('LOT_A_CPFCNPJ').AsString+''' ';
     QVerifica.open;
     if not QVerifica.IsEmpty then
     begin
      modulo:=5;
      cadastro:=QVerifica.fieldByName('COD_CNT').AsString;
      contrib:=QVerifica.fieldByName('COD_CNT').AsString;
     end;
   end;


   if copy(QOrigem.fieldByName('LOT_A_CODSERPRO').AsString,1,4)='0718' then
   recprincipal:=41
   else
   recprincipal:=40;


   QVerifica.close;
   QVerifica.sql.clear;
   Qverifica.sql.add('SELECT COD_DIV FROM FI_DIVIDA '+
                     ' WHERE COD_EMP_DIV=1 AND COD_MOD_DIV='+IntToStr(modulo)+
                     ' AND COD_REP_DIV='+IntToStr(recprincipal)+
                     ' AND COD_CAD_DIV='''+cadastro+''' AND ANO_DIV='''+QOrigem.fieldByName('LOT_I_ANO').AsString+''' AND LOGIN_INC_DIV=''SIMPLES'' ');
   QVerifica.open;

   coddiv:=QVerifica.fieldByName('COD_DIV').AsInteger;


   ativa:='N';
   livro:='NULL';
   folha:='NULL';
   inscricao:='NULL';
   reflivro:='NULL';
   dtinscricao:='NULL';


   if trim(livro)='' then
   livro:='NULL';

   if trim(folha)='' then
   folha:='NULL';

   if trim(inscricao)='' then
   inscricao:='NULL';

   if trim(reflivro)='' then
   reflivro:='NULL';

   if trim(dtinscricao)='' then
   dtinscricao:='NULL';

   executada:='N';


   pg:='S';
   tpPar:=1;
   unica:='N';

   situacaofrc:='1';
   cancelado:='N';
   executada:='N';              //divida do exercicio
   situacao:='1';
   ativa:='N';
   parce:='N';


   try


   QVerifica.Close;
   QVerifica.sql.text:='select max(tp_par) as cod from fi_parcela where cod_emp_par=1 and cod_div_par='+IntToSTr(coddiv)+' and parcela_par='+ trim(QOrigem.fieldByName('LOT_I_MES').AsString);
   QVerifica.Open;
   tppar:=QVerifica.FieldByName('cod').AsInteger+1;


   idCorrecao:='1';
   datavencimento:=copy(QOrigem.fieldByName('LOT_D_VENCIMENTO').AsString,1,10);
   datalancamento:=copy(QOrigem.fieldByName('LOT_D_VENCIMENTO').AsString,1,10);

   QDestino.close;
   QDestino.sql.clear;
   QDestino.sql.add(' INSERT INTO FI_PARCELA(COD_EMP_PAR,COD_DIV_PAR,TP_PAR, '+
                    ' DATAVENCI,MOEDA_PAR,COD_IND_PAR,DATAGERACAO_PAR,SITUACAO_PAR,'+
                    ' CANCELADO_PAR,DATACANCELA_PAR,PARCE_PAR,UNICA_PAR,ATIVA_PAR,EXECUTADA_PAR,NNUMERO_PAR,FAIXANNUMERO_PAR, '+
                    ' PARCELA_PAR,DATAPARCE_PAR,VALOR_PAR,LIVRO_PAR,FOLHA_PAR,INSCRI_PAR,REFLIVRO_PAR,'+
                    ' DATAINSCRI_PAR,LOGIN_INC_PAR,DTA_INC_PAR) '+
                    ' VALUES( '+
                    '1,'+
                    IntToStr(coddiv)+','+
                    IntToStr(tppar)+','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datavencimento))+''','+
                    '''1'','+
                    '''1'','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datalancamento))+''','+
                    ''''+situacao+''','+
                    ''''+cancelado+''','+
                    datacancela+','+
                    ''''+parce+''','+
                    ''''+unica+''','+
                    ''''+ativa+''','+
                    ''''+executada+''','+
                    IntToStr(nnumero)+','+
                    '2,'+
                    trim(QOrigem.fieldByName('LOT_I_MES').AsString)+','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datalancamento))+''','+
                    Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('LOT_N_VLR').AsCurrency))+','+
                    livro+','+
                    folha+','+
                    inscricao+','+
                    reflivro+','+
                    dtinscricao+','+
                    '''SIMPLES'','+
                    ''''+formatDateTime('mm/dd/YYYY',date)+''''+
                    ')'
                    );

   QDestino.ExecSQL();

   except

   end;

       codrec:='211';
       valorreceita:=QOrigem.fieldByName('LOT_N_VLR').AsCurrency;
       try
       QDestino.close;
       QDestino.sql.clear;
       QDestino.sql.add('INSERT INTO FI_RECEITAS(COD_EMP_FRC,COD_DIV_FRC,TP_PAR_FRC,COD_REC_FRC,ANO_FRC,'+
                        ' SITUACAO_FRC,CODORIGEM_FRC,CODULTORI_FRC,COD_IND_FRC,PARCELA_PAR_FRC,OUTRAS_FRC,LVALOR_FRC ) '+
                        'VALUES( '+
                        '1,'+
                        IntToStr(coddiv)+','+
                        IntToStr(tppar)+','+
                        codrec+','+
                        ''''+QOrigem.fieldByName('LOT_I_ANO').AsString+''','+
                        ''''+situacaofrc+''','+
                        IntToStr(coddiv)+','+
                        IntToStr(coddiv)+','+
                        '1,'+
                        QOrigem.fieldByName('LOT_I_MES').AsString+','+
                        '''N'','+
                        Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('LOT_N_VLR').AsCurrency))+
                        ')'
                        );
       QDestino.ExecSQL();
       except
       end;


     if pg='S' then
     begin





                  QPagamentos.Close;
                  QPagamentos.SQL.Clear;
                  QPagamentos.SQL.Add('select * from TRILOTE_SIMPLES '+
                                      'where BAN_I_COD='+QOrigem.fieldByName('BAN_I_COD').AsString+' and LOT_A_NUM='''+QOrigem.fieldByName('LOT_A_NUM').AsString+''' and LOT_D_DATA='''+InverteData(QOrigem.fieldByName('LOT_D_DATA').AsString)+''''
                                     );
                  QPagamentos.Open;

                  if not QPagamentos.IsEmpty then
                  dataMovimento:=copy(QPagamentos.fieldByName('LOT_D_CONTABIL').AsString,1,10)
                  else
                  dataMovimento:='';

                        valor:=valorreceita+
                               QOrigem.fieldByName('LOT_N_MUL').AsCurrency+
                               QOrigem.fieldByName('LOT_N_JUR').AsCurrency;


                        valorPago:=valor;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;



                        datapagamento:=copy(QOrigem.fieldByName('LOT_D_DATA').AsString,1,10);

                        lote:='1';
                        banco:='2';


                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='999';


                        if trim(datamovimento)='' then
                        datamovimento:=QOrigem.fieldByName('LOT_D_DATA').AsString;


                        BaixaParcelasFinanceiro(1, coddiv,
                                                tppar, QOrigem.fieldByName('LOT_I_MES').AsInteger,datapagamento,
                                                datamovimento, 'N', BANCO,
                                                LOTE, 0,
                                                QOrigem.fieldByName('LOT_N_MUL').AsCurrency, QOrigem.fieldByName('LOT_N_JUR').AsCurrency,
                                                valorreceita,desconto,acrescimos,valorPago,'SIMPLES',1,6);





     end;

     cont:=cont+1;

   if ncommit=1000 then begin
    Conexao.Commit(TD);
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   end;

   QOrigem.next;
  end;

  Conexao.Commit(TD);

end;





procedure TFPrincipal.AcertaBaixasparcelas;
 var cont,erros,tppar,nnumero,i,coddiv,ncommit:Integer;
 origem,cadastro,situacao,executada,unica,parce,ativa,
 codbanco,cancelado,rece,banco,livro,folha,inscricao,dtinscricao,dtparce,situacaofrc,idCorrecao,
 codrec,datavencimento,datalancamento,datapagamento,datamovimento,lote,pg,reflivro,datacancela:String;
 valorReceita,valor,desconto,acrescimos,valorPago:Currency;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add(' SELECT B.INSCRICAO,B.PAR_D_LAN,B.PAR_S_ANO,A.* '+
                 ' FROM TRIPAR A '+
                 ' INNER JOIN TRILANCA B ON A.PAR_N_SEQ=B.PAR_N_SEQ '+
                 ' WHERE A.SIT_I_COD<>5 AND A.SIT_I_COD<>41 ORDER BY A.PAR_N_SEQ '
                 );
 QOrigem.open;

// progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;
 ncommit:=0;


 if not Conexao.InTransaction then Conexao.StartTransaction(TD);

 cont:=1;
  while not QOrigem.eof do
  begin
   nnumero:=cont;
   inc(ncommit);

   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

   ProgressBar1.Position:=cont;

   lbChave.Caption:=QOrigem.fieldByName('PAR_N_SEQ').AsString;
   lbChave.Update;
   label6.Caption:=QOrigem.fieldByName('PAR_N_SEQ').AsString;
   label6.Update;

   dtinscricao:='31/01/'+QOrigem.fieldByName('PAR_S_ANO').AsString;
   datacancela:='null';


   pg:='N';
   coddiv:=QOrigem.fieldByName('PAR_N_SEQ').AsInteger;

   tpPar:=QOrigem.fieldByName('PAR_I_SUB').AsInteger;

   unica:=QOrigem.fieldByName('PAR_A_UNICA').AsString;

   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=1)  then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';              //divida do exercicio
    situacao:='1';
    ativa:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=2) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=3)
   or (QOrigem.fieldByName('SIT_I_COD').AsInteger=4) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=29)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';

     if executada='S' then
     situacaofrc:='3';

     if situacaofrc='1' then
     situacao:='6'
     else
     if situacaofrc='2' then
     situacao:='7'
     else
     if situacaofrc='3' then
     situacao:='8';

     cancelado:='N';
     parce:='N';
     pg:='S';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=6) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=11) then
   begin
    situacaofrc:='2';
    cancelado:='N';
    executada:='N';
    situacao:='2';            //divida ativa
    ativa:='S';
    unica:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=7) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=15)  then
   begin
    situacaofrc:='3';
    cancelado:='N';
    executada:='S';
    situacao:='3';            //executada
    ativa:='S';
    unica:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=13) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=14) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=26) then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';         //parcelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='5';
     cancelado:='N';
     parce:='N';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=8)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';           //cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=9)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                //Prescrito

     if executada='S' then
     situacaofrc:='3';

     situacao:='11';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=10)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //Suspenso

     if executada='S' then
     situacaofrc:='3';

     situacao:='9';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=20)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //remido

     if executada='S' then
     situacaofrc:='3';

     situacao:='10';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=27 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';
    situacao:='0';
    ativa:='N';
   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=28 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';
    situacao:='0';
    ativa:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=41)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //Parcela Excluida

     if executada='S' then
     situacaofrc:='3';

     situacao:='15';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   begin
     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                      //Cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';
   end;


   parce:='N';


   ///////////////////////////////Eventos////////////////////////////////////


     if pg='S' then
     begin

             QEventos.close;
             QEventos.sql.clear;
             QEventos.sql.add('SELECT * FROM TRIPAR1 WHERE PAR_N_SEQ='+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                              ' AND PAR_S_NUM='''+QOrigem.fieldByName('PAR_S_NUM').AsString+''' AND PAR_I_SUB='+QOrigem.fieldByName('PAR_I_SUB').AsString
                              );
             QEventos.open;
             valorreceita:=0;
             while not QEventos.eof do
             begin
                 codrec:=QEventos.fieldByName('TAX_I_COD').AsString;
                 valorreceita:=valorreceita+QEventos.fieldByName('PAR_N_VAL').AsCurrency;
             QEventos.next;
             end;



                  QPagamentos.Close;
                  QPagamentos.SQL.Clear;
                  QPagamentos.SQL.Add('select a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                      'a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                      'a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa, '+
                                      'min(a.sit_i_codestorno) as sit_i_codestorno,a.par_d_pagto,a.par_d_credito, '+
                                      'sum(coalesce(a.par_n_val,0)) as par_n_val,'+
                                      'sum(coalesce(a.par_n_jur_rep,0)) as par_n_jur_rep, '+
                                      'sum(coalesce(a.par_n_mul_rep,0)) as par_n_mul_rep, '+
                                      'sum(coalesce(a.par_n_cor_rep,0)) as par_n_cor_rep, '+
                                      'sum(coalesce(a.par_n_jur,0)) as par_n_jur, '+
                                      'sum(coalesce(a.par_n_mul,0)) as par_n_mul, '+
                                      'sum(coalesce(a.par_n_cor,0)) as par_n_cor, '+
                                      'sum(coalesce(a.par_n_valpago,0)) as par_n_valpago, '+
                                      'sum(coalesce(a.par_n_valdif,0)) as par_n_valdif '+
                                   ' from tripar_lote a '+
                                   ' where a.PAR_N_SEQ = '+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                                   '   and a.par_s_num ='+QOrigem.fieldByName('par_s_num').AsString+
                                   '   and a.par_i_sub ='+QOrigem.fieldByName('par_i_sub').AsString+
                                   '   and a.tax_i_cod > -999 '+
                                   ' group by '+
                                   '   a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                   '   a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                   '   a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa,a.par_d_pagto,a.par_d_credito '
                                   );
                  QPagamentos.Open;

                  if QPagamentos.IsEmpty then begin

                        valor:=valorreceita+
                               QOrigem.fieldByName('par_n_cor').AsCurrency+
                               QOrigem.fieldByName('par_n_mul').AsCurrency+
                               QOrigem.fieldByName('par_n_jur').AsCurrency;

                        valorPago:=QOrigem.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;



                        datapagamento:=QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString;
                        dataMovimento:=QOrigem.fieldByName('LOT_D_DATA').AsString;
                        lote:=QOrigem.fieldByName('LOT_A_NUM').AsString;
                        banco:=VerificaBanco(QOrigem.fieldByName('BAN_I_COD').AsString);

                        try

                        QPagamentos.Close;
                        QPagamentos.sql.clear;
                        QPagamentos.sql.add('SELECT LOT_D_CONTABIL FROM TRILOTE where LOT_A_NUM='''+QOrigem.fieldByName('LOT_A_NUM').AsString+''' AND BAN_I_COD='+QOrigem.fieldByName('BAN_I_COD').AsString+' AND LOT_D_DATA='''+InverteData(QOrigem.fieldByName('LOT_D_DATA').AsString)+'''');
                        QPagamentos.Open;
                        if not QPagamentos.IsEmpty then
                        dataMovimento:=QPagamentos.fieldByName('LOT_D_CONTABIL').AsString;

                        except

                        end;


                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='1';


                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);


                        if trim(datamovimento)='' then
                        datamovimento:=QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString;


                        BaixaParcelasFinanceiro(1, QOrigem.fieldByName('PAR_N_SEQ').AsInteger,
                                                tppar, QOrigem.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                datamovimento, 'N', BANCO,
                                                LOTE, QOrigem.fieldByName('par_n_cor').AsCurrency,
                                                QOrigem.fieldByName('par_n_mul').AsCurrency, QOrigem.fieldByName('par_n_jur').AsCurrency,
                                                valorreceita,desconto,acrescimos,QOrigem.fieldByName('par_n_valpago').AsCurrency,'DIVIDA',1,6);
                  end
                  else begin
                    while not QPagamentos.Eof do begin

                        valor:=valorreceita+
                               QPagamentos.fieldByName('par_n_cor').AsCurrency+
                               QPagamentos.fieldByName('par_n_mul').AsCurrency+
                               QPagamentos.fieldByName('par_n_jur').AsCurrency;


                        valorPago:=QPagamentos.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;


                        datapagamento:=QPagamentos.fieldByName('par_d_pagto').AsString;
                        dataMovimento:=QPagamentos.fieldByName('par_d_credito').AsString;
                        lote         :=QPagamentos.fieldByName('LOT_A_NUM').AsString;
                        banco        :=QPagamentos.fieldByName('BAN_I_COD').AsString;


                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='1';

                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);

                        if trim(datamovimento)='' then
                        datamovimento:=QPagamentos.fieldByName('par_d_pagto').AsString;

                        if QPagamentos.FieldByName('sit_i_codbaixa').AsString<>'29' then // pagamento duplicado
                        begin
                          BaixaParcelasFinanceiro(1, coddiv,
                                                  tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                  datamovimento, 'N', BANCO,
                                                  LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                                  QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                                  valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'DIVIDA',1,6);
                        end
                        else
                        begin
                          DuplicarBaixaParcelas(1, coddiv,
                                               tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                               datamovimento, 'N', BANCO,
                                               LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                               QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                               valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'DIVIDA'
                                               );

                        end;




                    QPagamentos.Next
                    end;
                  end;





     end;

     cont:=cont+1;

   if ncommit=1000 then begin
    Conexao.Commit(TD);
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   end;

   QOrigem.next;
  end;

  Conexao.Commit(TD);

end;


procedure TFPrincipal.AcertaBaixasparcelamento;
 var cont,erros,tppar,nnumero,i,coddiv,ncommit:Integer;
 origem,cadastro,situacao,executada,unica,parce,ativa,
 codbanco,cancelado,rece,banco,livro,folha,inscricao,dtinscricao,dtparce,situacaofrc,idCorrecao,
 codrec,datavencimento,datalancamento,datapagamento,datamovimento,lote,pg,reflivro,datacancela:String;
 valorReceita,valor,desconto,acrescimos,valorPago,correcaop,multap,jurosp:Currency;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add(' SELECT B.INSCRICAO,B.PAR_D_LAN,B.PAR_S_ANO,A.* '+
                 ' FROM TRIPAR_REPARCELAMENTO A '+
                 ' INNER JOIN TRILANCA_REPARCELAMENTO B ON A.REP_N_COD=B.REP_N_COD '+
                 ' WHERE SIT_I_COD<>5 AND SIT_I_COD<>41 AND A.REP_N_COD>=9394  ORDER BY A.REP_N_COD '
                 );
 QOrigem.open;

// progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;
 ncommit:=0;


 if not Conexao.InTransaction then Conexao.StartTransaction(TD);

 cont:=1;
  while not QOrigem.eof do
  begin
   nnumero:=cont;
   inc(ncommit);

   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

   ProgressBar1.Position:=cont;

   lbChave.Caption:=QOrigem.fieldByName('REP_N_COD').AsString;
   lbChave.Update;
   label6.Caption:=QOrigem.fieldByName('REP_N_COD').AsString;
   label6.Update;

   dtinscricao:='31/01/'+QOrigem.fieldByName('PAR_S_ANO').AsString;
   datacancela:='null';


   pg:='N';
   QVerifica.close;
   QVerifica.sql.clear;
   QVerifica.sql.add(' SELECT COD_DIV FROM FI_DIVIDA '+
                     ' WHERE COD_EMP_DIV=1 AND COD_CAD_DIV='''+ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString)+''' '+
                     ' AND ANO_DIV='''+QOrigem.fieldByName('PAR_S_ANO').AsString+''' '+
                     ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                     ' AND LOGIN_INC_DIV=''PARCE'' '
                     );

   QVerifica.open;
   coddiv:=QVerifica.fieldByName('cod_div').AsInteger;

   tpPar:=QOrigem.fieldByName('PAR_I_SUB').AsInteger;

   unica:='N';

   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=1)  then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';              //divida do exercicio
    situacao:='1';
    ativa:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=2) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=3)
   or (QOrigem.fieldByName('SIT_I_COD').AsInteger=4) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=29)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';

     if executada='S' then
     situacaofrc:='3';

     if situacaofrc='1' then
     situacao:='6'
     else
     if situacaofrc='2' then
     situacao:='7'
     else
     if situacaofrc='3' then
     situacao:='8';

     cancelado:='N';
     parce:='N';
     pg:='S';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=6) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=11) then
   begin
    situacaofrc:='2';
    cancelado:='N';
    executada:='N';
    situacao:='2';            //divida ativa
    ativa:='S';
    unica:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=7) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=15)  then
   begin
    situacaofrc:='3';
    cancelado:='N';
    executada:='S';
    situacao:='3';            //executada
    ativa:='S';
    unica:='N';
    parce:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=13) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=14) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=26) then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';         //parcelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='5';
     cancelado:='N';
     parce:='N';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=8)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';           //cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=9)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                //Prescrito

     if executada='S' then
     situacaofrc:='3';

     situacao:='11';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=10)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //Suspenso

     if executada='S' then
     situacaofrc:='3';

     situacao:='9';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=20)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //remido

     if executada='S' then
     situacaofrc:='3';

     situacao:='10';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=27 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';
    situacao:='0';
    ativa:='N';
   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=28 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';
    situacao:='0';
    ativa:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=41)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //Parcela Excluida

     if executada='S' then
     situacaofrc:='3';

     situacao:='15';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   begin
     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                      //Cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';
     parce:='N';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';
   end;


   parce:='N';


   ///////////////////////////////Eventos////////////////////////////////////


     if pg='S' then
     begin

           QEventos.close;
           QEventos.sql.clear;
           QEventos.sql.add('SELECT * FROM TRIPAR1_REPARCELAMENTO WHERE REP_N_COD='+QOrigem.fieldByName('REP_N_COD').AsString+
                            ' AND PAR_S_NUM='''+QOrigem.fieldByName('PAR_S_NUM').AsString+''' AND PAR_I_SUB='+QOrigem.fieldByName('PAR_I_SUB').AsString
                            );
           QEventos.open;
           valorreceita:=0;
           correcaop:=0;
           multap:=0;
           jurosp:=0;
           while not QEventos.eof do
           begin

               codrec:=QEventos.fieldByName('TAX_I_COD').AsString;
               valorreceita:=valorreceita+QEventos.fieldByName('PAR_N_VAL').AsCurrency;
               correcaop:=correcaop+QEventos.fieldByName('PAR_N_COR_REP').AsCurrency;
               multap:=multap+QEventos.fieldByName('PAR_N_MUL_REP').AsCurrency;
               jurosp:=jurosp+QEventos.fieldByName('PAR_N_JUR_REP').AsCurrency;

           QEventos.next;
           end;

                  QPagamentos.Close;
                  QPagamentos.SQL.Clear;
                  QPagamentos.SQL.Add('select a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                      'a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                      'a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa, '+
                                      'min(a.sit_i_codestorno) as sit_i_codestorno,a.par_d_pagto,a.par_d_credito, '+
                                      'sum(coalesce(a.par_n_val,0)) as par_n_val,'+
                                      'sum(coalesce(a.par_n_jur_rep,0)) as par_n_jur_rep, '+
                                      'sum(coalesce(a.par_n_mul_rep,0)) as par_n_mul_rep, '+
                                      'sum(coalesce(a.par_n_cor_rep,0)) as par_n_cor_rep, '+
                                      'sum(coalesce(a.par_n_jur,0)) as par_n_jur, '+
                                      'sum(coalesce(a.par_n_mul,0)) as par_n_mul, '+
                                      'sum(coalesce(a.par_n_cor,0)) as par_n_cor, '+
                                      'sum(coalesce(a.par_n_valpago,0)) as par_n_valpago, '+
                                      'sum(coalesce(a.par_n_valdif,0)) as par_n_valdif '+
                                   ' from tripar_lote a '+
                                   ' where a.rep_n_cod = '+QOrigem.fieldByName('rep_n_cod').AsString+
                                   '   and a.par_s_num ='+QOrigem.fieldByName('par_s_num').AsString+
                                   '   and a.par_i_sub ='+QOrigem.fieldByName('par_i_sub').AsString+
                                   '   and a.tax_i_cod > -999 '+
                                   ' group by '+
                                   '   a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                   '   a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                   '   a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa,a.par_d_pagto,a.par_d_credito '
                                   );
                  QPagamentos.Open;

                  if QPagamentos.IsEmpty then begin

                        valor:=valorreceita+
                               QOrigem.fieldByName('par_n_correcao').AsCurrency+
                               QOrigem.fieldByName('par_n_multa').AsCurrency+
                               QOrigem.fieldByName('par_n_juros').AsCurrency+
                               correcaop+
                               multap+
                               jurosp;


                        valorPago:=QOrigem.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;


                        datapagamento:=QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString;
                        dataMovimento:=QOrigem.fieldByName('LOT_D_DATA').AsString;
                        lote         :=QOrigem.fieldByName('LOT_A_NUM').AsString;
                        banco        :=QOrigem.fieldByName('BAN_I_COD').AsString;

                        try
                        QPagamentos.Close;
                        QPagamentos.sql.clear;
                        QPagamentos.sql.add('SELECT LOT_D_CONTABIL FROM TRILOTE where LOT_A_NUM='''+QOrigem.fieldByName('LOT_A_NUM').AsString+''' AND BAN_I_COD='+QOrigem.fieldByName('BAN_I_COD').AsString+' AND LOT_D_DATA='''+InverteData(QOrigem.fieldByName('LOT_D_DATA').AsString)+'''');
                        QPagamentos.Open;
                        if not QPagamentos.IsEmpty then
                         dataMovimento:=QPagamentos.fieldByName('LOT_D_CONTABIL').AsString;
                        except
                        end;



                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='1';

                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);

                        if trim(datamovimento)='' then
                        datamovimento:=QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString;


                        BaixaParcelasFinanceiro(1, coddiv,
                                                tppar, QOrigem.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                datamovimento, 'N', BANCO,
                                                LOTE, QOrigem.fieldByName('par_n_correcao').AsCurrency,
                                                QOrigem.fieldByName('par_n_multa').AsCurrency, QOrigem.fieldByName('par_n_juros').AsCurrency,
                                                valorreceita,desconto,acrescimos,QOrigem.fieldByName('par_n_valpago').AsCurrency,'PARCE',1,7);
                  end
                  else begin
                    while not QPagamentos.Eof do begin

                        valor:=valorreceita+
                               QPagamentos.fieldByName('par_n_cor').AsCurrency+
                               QPagamentos.fieldByName('par_n_mul').AsCurrency+
                               QPagamentos.fieldByName('par_n_jur').AsCurrency+
                               correcaop+
                               multap+
                               jurosp;


                        valorPago:=QPagamentos.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;


                        datapagamento:=QPagamentos.fieldByName('par_d_pagto').AsString;
                        dataMovimento:=QPagamentos.fieldByName('par_d_credito').AsString;
                        lote         :=QPagamentos.fieldByName('LOT_A_NUM').AsString;
                        banco        :=QPagamentos.fieldByName('BAN_I_COD').AsString;


                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='1';

                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);

                        if trim(datamovimento)='' then
                        datamovimento:=QPagamentos.fieldByName('par_d_pagto').AsString;

                        if QPagamentos.FieldByName('sit_i_codbaixa').AsString<>'29' then // pagamento duplicado
                        begin
                          BaixaParcelasFinanceiro(1, coddiv,
                                                  tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                  datamovimento, 'N', BANCO,
                                                  LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                                  QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                                  valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'PARCE',1,7);
                        end
                        else
                        begin
                          DuplicarBaixaParcelas(1, coddiv,
                                               tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                               datamovimento, 'N', BANCO,
                                               LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                               QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                               valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'PARCE'
                                               );

                        end;




                    QPagamentos.Next
                    end;
                  end;
     end;

     cont:=cont+1;

   if ncommit=1000 then begin
    Conexao.Commit(TD);
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   end;

   QOrigem.next;
  end;

  Conexao.Commit(TD);

end;





procedure TFPrincipal.parcelasParcelamentos;
 var cont,erros,tppar,nnumero,i,coddiv,ncommit:Integer;
 origem,cadastro,situacao,executada,unica,parce,ativa,
 codbanco,cancelado,rece,banco,livro,folha,inscricao,dtinscricao,dtparce,situacaofrc,idCorrecao,
 codrec,datavencimento,datalancamento,datapagamento,datamovimento,lote,pg,reflivro,datacancela:String;
 valorReceita,valor,desconto,acrescimos,valorPago,correcaop,multap,jurosp:Currency;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add(' SELECT B.INSCRICAO,B.PAR_D_LAN,B.PAR_S_ANO,A.* '+
                 ' FROM TRIPAR_REPARCELAMENTO A '+
                 ' INNER JOIN TRILANCA_REPARCELAMENTO B ON A.REP_N_COD=B.REP_N_COD '+
                 ' WHERE SIT_I_COD<>5 AND SIT_I_COD<>41 ORDER BY A.REP_N_COD '
                 );
 QOrigem.open;

 //progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;

 QVerifica.Close;
 QVerifica.sql.Clear;
 QVerifica.SQL.Add('select max(nnumero_par) as cod from fi_parcela ');
 QVerifica.Open;

 nnumero:=QVerifica.FieldByName('cod').AsInteger;

 ncommit:=0;
 if not Conexao.InTransaction then Conexao.StartTransaction(TD);



 cont:=1;
  while not QOrigem.eof do
  begin
   inc(nnumero);
   inc(ncommit);

   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

   ProgressBar1.Position:=cont;

   lbChave.Caption:=QOrigem.fieldByName('REP_N_COD').AsString;
   lbChave.Update;
   label6.Caption:=QOrigem.fieldByName('REP_N_COD').AsString;
   label6.Update;



   dtinscricao:='NULL';
   datacancela:='NULL';

   QVerifica.close;
   QVerifica.sql.clear;
   QVerifica.sql.add(' SELECT COD_DIV FROM FI_DIVIDA '+
                     ' WHERE COD_EMP_DIV=1 AND COD_CAD_DIV='''+ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString)+''' '+
                     ' AND ANO_DIV='''+QOrigem.fieldByName('PAR_S_ANO').AsString+''' '+
                     ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                     ' AND LOGIN_INC_DIV=''PARCE'' '
                     );

   QVerifica.open;
   coddiv:=QVerifica.fieldByName('cod_div').AsInteger;

   pg:='N';

   tpPar:=QOrigem.fieldByName('PAR_I_SUB').AsInteger;

   unica:='N';
   ativa:='S';
   executada:='N';
   parce:='S';


   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=1)  then
   begin
    situacaofrc:='2';
    cancelado:='N';
    executada:='N';              //divida do exercicio
    situacao:='2';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=2) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=3)
   or (QOrigem.fieldByName('SIT_I_COD').AsInteger=4) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=29)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';

     if executada='S' then
     situacaofrc:='3';

     if situacaofrc='1' then
     situacao:='6'
     else
     if situacaofrc='2' then
     situacao:='7'
     else
     if situacaofrc='3' then
     situacao:='8';

     cancelado:='N';
     pg:='S';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=6) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=11) then
   begin
    situacaofrc:='2';
    cancelado:='N';
    executada:='N';
    situacao:='2';            //divida ativa
    unica:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=7) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=15)  then
   begin
    situacaofrc:='3';
    cancelado:='N';
    executada:='S';
    situacao:='3';            //executada
    ativa:='S';
    unica:='N';
   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=13) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=14) or (QOrigem.fieldByName('SIT_I_COD').AsInteger=26) then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';         //parcelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='5';
     cancelado:='N';

   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=8)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';           //cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=9)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                //Prescrito

     if executada='S' then
     situacaofrc:='3';

     situacao:='11';
     cancelado:='S';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if (QOrigem.fieldByName('SIT_I_COD').AsInteger=10)  then
   begin

     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                 //Suspenso

     if executada='S' then
     situacaofrc:='3';

     situacao:='9';
     cancelado:='S';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=27 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='N';
    situacao:='0';
    ativa:='N';
   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=28 then
   begin
    situacaofrc:='1';
    cancelado:='N';
    executada:='S';
    situacao:='0';
    ativa:='N';
   end
   else
   if QOrigem.fieldByName('SIT_I_COD').AsInteger=37 then
   begin
    situacaofrc:='2';
    cancelado:='S';
    executada:='N';
    situacao:='26';
    ativa:='S';
   end
   else
   begin
     if ativa='S' then
     situacaofrc:='2'
     else
     if ativa='N' then
     situacaofrc:='1';                      //Cancelado

     if executada='S' then
     situacaofrc:='3';

     situacao:='4';
     cancelado:='S';

     if trim(QOrigem.FieldByName('par_d_can').AsString)<>'' then
     datacancela:=''''+InverteData(copy(QOrigem.FieldByName('par_d_can').AsString,1,10))+''''
     else
     datacancela:='null';


   end;


   parce:='S';


   livro:='NULL';
   folha:='NULL';
   inscricao:='NULL';
   reflivro:='null';



   try

   if trim(QOrigem.fieldByName('UFM_S_TIP').AsString)<>'' then
   idCorrecao:=QOrigem.fieldByName('UFM_S_TIP').AsString
   else
   idCorrecao:='1';

   datavencimento:=copy(QOrigem.fieldByName('PAR_D_VEN').AsString,1,10);

   if trim(datavencimento)='' then
   datavencimento:='31/12/'+QOrigem.fieldByName('PAR_S_ANO').AsString;

   if trim(QOrigem.fieldByName('PAR_D_LAN').AsString)='' then
   datalancamento:='01/01/'+QOrigem.fieldByName('PAR_S_ANO').AsString
   else
   datalancamento:=QOrigem.fieldByName('PAR_D_LAN').AsString;

   QDestino.close;
   QDestino.sql.clear;
   QDestino.sql.add(' INSERT INTO FI_PARCELA(COD_EMP_PAR,COD_DIV_PAR,TP_PAR, '+
                    ' DATAVENCI,MOEDA_PAR,COD_IND_PAR,DATAGERACAO_PAR,SITUACAO_PAR,SITUACAOANTIGA_PAR,'+
                    ' DATACANCELA_PAR,CANCELADO_PAR,PARCE_PAR,UNICA_PAR,ATIVA_PAR,EXECUTADA_PAR,NNUMERO_PAR,FAIXANNUMERO_PAR, '+
                    ' PARCELA_PAR,DATAPARCE_PAR,VALOR_PAR,LIVRO_PAR,FOLHA_PAR,INSCRI_PAR,REFLIVRO_PAR,'+
                    ' DATAINSCRI_PAR,LOGIN_INC_PAR,DTA_INC_PAR) '+
                    ' VALUES( '+
                    '1,'+
                    IntToStr(coddiv)+','+
                    IntToStr(tppar)+','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datavencimento))+''','+
                    '''1'','+
                    ''''+QOrigem.fieldByName('UFM_S_TIP').AsString+''','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datalancamento))+''','+
                    ''''+situacao+''','+
                    ''''+QOrigem.fieldByName('SIT_I_COD').AsString+''','+
                    datacancela+','+
                    ''''+cancelado+''','+
                    ''''+parce+''','+
                    ''''+unica+''','+
                    ''''+ativa+''','+
                    ''''+executada+''','+
                    IntToStr(nnumero)+','+
                    '2,'+
                    QOrigem.fieldByName('par_s_num').AsString+','+
                    ''''+formatDateTime('mm/dd/YYYY',StrToDate(datalancamento))+''','+
                    Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('par_n_val').AsCurrency))+','+
                    livro+','+
                    folha+','+
                    inscricao+','+
                    reflivro+','+
                    dtinscricao+','+
                    '''PARCE'','+
                    ''''+formatDateTime('mm/dd/YYYY',date)+''''+
                    ')'
                    );

   QDestino.ExecSQL();

   except

   end;

   if trim(QOrigem.FieldByName('ARR_N_COD_CARNE').AsString)<>'' then begin
     try
     QDestino.close;
     QDestino.sql.clear;
     QDestino.sql.add('INSERT INTO FI_BAIXACONVERSAO( COD_EMP_CON,COD_DIV_CON,PARCELA_PAR_CON, '+
                                                     ' TP_PAR_CON,CODIGO_CON,TIPO_CON) '+
                        'VALUES( '+
                        '1,'+
                        IntToStr(coddiv)+','+
                        QOrigem.fieldByName('par_s_num').AsString+','+
                        IntToStr(tppar)+','+
                        trim(QOrigem.FieldByName('ARR_N_COD_CARNE').AsString)+','+
                        '1'+
                        ')'
                        );
      QDestino.ExecSQL();

     except
     end;
   end;

   ///////////////////////////////Eventos////////////////////////////////////

   QEventos.close;
   QEventos.sql.clear;
   QEventos.sql.add('SELECT * FROM TRIPAR1_REPARCELAMENTO WHERE REP_N_COD='+QOrigem.fieldByName('REP_N_COD').AsString+
                    ' AND PAR_S_NUM='''+QOrigem.fieldByName('PAR_S_NUM').AsString+''' AND PAR_I_SUB='+QOrigem.fieldByName('PAR_I_SUB').AsString
                    );
   QEventos.open;
   valorreceita:=0;
   correcaop:=0;
   multap:=0;
   jurosp:=0;
   while not QEventos.eof do
   begin

       codrec:=QEventos.fieldByName('TAX_I_COD').AsString;
       valorreceita:=valorreceita+QEventos.fieldByName('PAR_N_VAL').AsCurrency;
       correcaop:=correcaop+QEventos.fieldByName('PAR_N_COR_REP').AsCurrency;
       multap:=multap+QEventos.fieldByName('PAR_N_MUL_REP').AsCurrency;
       jurosp:=jurosp+QEventos.fieldByName('PAR_N_JUR_REP').AsCurrency;
       try
       QDestino.close;
       QDestino.sql.clear;
       QDestino.sql.add('INSERT INTO FI_RECEITAS(COD_EMP_FRC,COD_DIV_FRC,TP_PAR_FRC,COD_REC_FRC,ANO_FRC,'+
                        ' SITUACAO_FRC,CODORIGEM_FRC,CODULTORI_FRC,COD_IND_FRC,PARCELA_PAR_FRC,OUTRAS_FRC, '+
                        ' LVALOR_FRC,LVRCORRE_FRC,LVRMULTA_FRC,LVRJUROS_FRC ) '+
                        'VALUES( '+
                        '1,'+
                        IntToStr(coddiv)+','+
                        IntToStr(tppar)+','+
                        codrec+','+
                        ''''+QOrigem.fieldByName('PAR_S_ANO').AsString+''','+
                        ''''+situacaofrc+''','+
                        IntToStr(coddiv)+','+
                        IntToStr(coddiv)+','+
                        '1,'+
                        QEventos.fieldByName('PAR_S_NUM').AsString+','+
                        '''N'','+
                        Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('PAR_N_VAL').AsCurrency))+','+
                        Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('PAR_N_COR_REP').AsCurrency))+','+
                        Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('PAR_N_MUL_REP').AsCurrency))+','+
                        Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('PAR_N_JUR_REP').AsCurrency))+
                        ')'
                        );
       QDestino.ExecSQL();
       except
       end;
   QEventos.next;
   end;


     if pg='S' then
     begin


                  QPagamentos.Close;
                  QPagamentos.SQL.Clear;
                  QPagamentos.SQL.Add('select a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                      'a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                      'a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa, '+
                                      'min(a.sit_i_codestorno) as sit_i_codestorno,a.par_d_pagto,a.par_d_credito, '+
                                      'sum(coalesce(a.par_n_val,0)) as par_n_val,'+
                                      'sum(coalesce(a.par_n_jur_rep,0)) as par_n_jur_rep, '+
                                      'sum(coalesce(a.par_n_mul_rep,0)) as par_n_mul_rep, '+
                                      'sum(coalesce(a.par_n_cor_rep,0)) as par_n_cor_rep, '+
                                      'sum(coalesce(a.par_n_jur,0)) as par_n_jur, '+
                                      'sum(coalesce(a.par_n_mul,0)) as par_n_mul, '+
                                      'sum(coalesce(a.par_n_cor,0)) as par_n_cor, '+
                                      'sum(coalesce(a.par_n_valpago,0)) as par_n_valpago, '+
                                      'sum(coalesce(a.par_n_valdif,0)) as par_n_valdif '+
                                   ' from tripar_lote a '+
                                   ' where a.rep_n_cod = '+QOrigem.fieldByName('rep_n_cod').AsString+
                                   '   and a.par_s_num ='+QOrigem.fieldByName('par_s_num').AsString+
                                   '   and a.par_i_sub ='+QOrigem.fieldByName('par_i_sub').AsString+
                                   '   and a.tax_i_cod > -999 '+
                                   ' group by '+
                                   '   a.ban_i_cod, a.lot_a_num, a.lot_d_data, a.par_i_linha, '+
                                   '   a.arr_n_cod, a.par_n_seq, a.rep_n_cod, a.par_s_num, a.par_i_sub, '+
                                   '   a.par_d_ven, a.ufm_s_tip, a.cor_i_cod, a.sit_i_cod, a.sit_i_codbaixa,a.par_d_pagto,a.par_d_credito '
                                   );
                  QPagamentos.Open;

                  if QPagamentos.IsEmpty then begin

                        valor:=valorreceita+
                               QOrigem.fieldByName('par_n_correcao').AsCurrency+
                               QOrigem.fieldByName('par_n_multa').AsCurrency+
                               QOrigem.fieldByName('par_n_juros').AsCurrency+
                               correcaop+
                               multap+
                               jurosp;


                        valorPago:=QOrigem.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;


                        datapagamento:=copy(QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString,1,10);
                        dataMovimento:=copy(QOrigem.fieldByName('LOT_D_DATA').AsString,1,10);
                        lote         :=QOrigem.fieldByName('LOT_A_NUM').AsString;
                        banco        :=QOrigem.fieldByName('BAN_I_COD').AsString;

                        try
                        QPagamentos.Close;
                        QPagamentos.sql.clear;
                        QPagamentos.sql.add('SELECT LOT_D_CONTABIL FROM TRILOTE where LOT_A_NUM='''+QOrigem.fieldByName('LOT_A_NUM').AsString+''' AND BAN_I_COD='+QOrigem.fieldByName('BAN_I_COD').AsString+' AND LOT_D_DATA='''+InverteData(QOrigem.fieldByName('LOT_D_DATA').AsString)+'''');
                        QPagamentos.Open;
                        if not QPagamentos.IsEmpty then
                         dataMovimento:=QPagamentos.fieldByName('LOT_D_CONTABIL').AsString;
                        except
                        end;



                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='999';

                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);

                        if trim(datamovimento)='' then
                        datamovimento:=QOrigem.fieldByName('PAR_D_DATAPAGTO').AsString;


                        BaixaParcelasFinanceiro(1, coddiv,
                                                tppar, QOrigem.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                datamovimento, 'N', BANCO,
                                                LOTE, QOrigem.fieldByName('par_n_correcao').AsCurrency,
                                                QOrigem.fieldByName('par_n_multa').AsCurrency, QOrigem.fieldByName('par_n_juros').AsCurrency,
                                                valorreceita,desconto,acrescimos,QOrigem.fieldByName('par_n_valpago').AsCurrency,'PARCE',1,7);
                  end
                  else begin
                    while not QPagamentos.Eof do begin

                        valor:=valorreceita+
                               QPagamentos.fieldByName('par_n_cor').AsCurrency+
                               QPagamentos.fieldByName('par_n_mul').AsCurrency+
                               QPagamentos.fieldByName('par_n_jur').AsCurrency+
                               correcaop+
                               multap+
                               jurosp;


                        valorPago:=QPagamentos.fieldByName('par_n_valpago').AsCurrency;

                        if valorPago=0 then
                        valorPago:=valor;

                        desconto:=0;
                        acrescimos:=0;

                        if  valor>valorpago then
                        desconto:=valor-valorpago
                        else
                        desconto:=0;

                        if valor<valorpago then
                        Acrescimos:=valorpago-valor
                        else
                        acrescimos:=0;


                        datapagamento:=copy(QPagamentos.fieldByName('par_d_pagto').AsString,1,10);
                        dataMovimento:=copy(QPagamentos.fieldByName('par_d_credito').AsString,1,10);
                        lote         :=QPagamentos.fieldByName('LOT_A_NUM').AsString;
                        banco        :=QPagamentos.fieldByName('BAN_I_COD').AsString;


                        if trim(lote)='' then lote:='1';
                        if trim(banco)='' then banco:='999';

                        lote:=VerificaLote(lote);
                        banco:=VerificaBanco(Banco);

                        if trim(datamovimento)='' then
                        datamovimento:=QPagamentos.fieldByName('par_d_pagto').AsString;

                        if QPagamentos.FieldByName('sit_i_codbaixa').AsString<>'29' then // pagamento duplicado
                        begin
                          BaixaParcelasFinanceiro(1, coddiv,
                                                  tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                                  datamovimento, 'N', BANCO,
                                                  LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                                  QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                                  valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'PARCE',1,7);
                        end
                        else
                        begin
                          DuplicarBaixaParcelas(1, coddiv,
                                               tppar, QPagamentos.fieldByName('PAR_S_NUM').AsInteger,datapagamento,
                                               datamovimento, 'N', BANCO,
                                               LOTE, QPagamentos.fieldByName('par_n_cor').AsCurrency,
                                               QPagamentos.fieldByName('par_n_mul').AsCurrency, QPagamentos.fieldByName('par_n_jur').AsCurrency,
                                               valorreceita,desconto,acrescimos,QPagamentos.fieldByName('par_n_valpago').AsCurrency,'PARCE'
                                               );

                        end;




                    QPagamentos.Next
                    end;
                  end;
     end;

     cont:=cont+1;


   if ncommit=1000 then begin
    Conexao.Commit(TD);
    ncommit:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   end;

   QOrigem.next;
  end;

  Conexao.Commit(TD);

end;








procedure TFPrincipal.lancamentos;
 var cont,erros,nparcela,numero,coddivida:Integer;
 origem,modulo,cadastro,situacao,dtassinatura,dtreferencia,codcid:String;
begin

   QOrigem.close;
   QOrigem.sql.clear;
   QOrigem.sql.add('SELECT * FROM TRILANCA_REPARCELAMENTO ORDER BY REP_N_COD ');
   QOrigem.open;
   numero:=1;
   //ProgressBar1.max:=QOrigem.recordcount;
   cont:=1;

   while not QOrigem.eof do
   begin
       ProgressBar1.position:=cont;
       cont:=cont+1;
       numero:=numero+1;

    lbChave.caption:=QOrigem.fieldByName('REP_N_COD').AsString;
    lbChave.Update;

    if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
     modulo:='1'
    else
    if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
     modulo:='2'
    else
    if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
     modulo:='4'
    else
     modulo:='5';


       if trim(QOrigem.fieldByName('rep_d_can').AsString)<>'' then
       situacao:='S'
       else
       situacao:='N';

      codcid:='NULL';


       dtassinatura:=QOrigem.fieldByName('PAR_D_LAN').AsString;
       dtreferencia:=QOrigem.fieldByName('PAR_D_LAN').AsString;

       if trim(dtreferencia)='' then
       dtreferencia:=dtassinatura;

       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add('SELECT COD_DIV,COD_CNT_DIV FROM FI_DIVIDA '+
                         ' WHERE COD_EMP_DIV=1 AND COD_CAD_DIV='''+ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString)+''' '+
                         ' AND ANO_DIV='''+QOrigem.fieldByName('PAR_S_ANO').AsString+''' '+
                         ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                         ' AND LOGIN_INC_DIV=''PARCE'' '
                         );

       QVerifica.open;
       coddivida:=QVerifica.fieldByName('cod_div').AsInteger;



       if trim(QOrigem.fieldByName('CNTI_I_CON_REQUER').AsString)<>'' then
       begin
       QCadastro.close;
       QCadastro.sql.clear;
       QCadastro.sql.add(' SELECT * FROM CNTI_CONTRIBUINTES '+
                         ' WHERE CNTI_I_CON='''+QOrigem.fieldByName('CNTI_I_CON_REQUER').AsString+''' '
                         );

       QCadastro.open;

       if (trim(QCadastro.fieldByName('CNTI_I_IBGEC').AsString)<>'') and (trim(QCadastro.fieldByName('CNTI_I_IBGEC').AsString)<>'0')  then
        codcid:=''''+ZeraEsquerda(7,QCadastro.fieldByName('CNTI_I_IBGEC').AsString)+'''';

       end
       else
       begin
        if trim(QOrigem.fieldByName('CNTI_I_CON').AsString)<>'' then
        begin
         QCadastro.close;
         QCadastro.sql.clear;
         QCadastro.sql.add(' SELECT * FROM CNTI_CONTRIBUINTES '+
                           ' WHERE CNTI_I_CON='''+QOrigem.fieldByName('CNTI_I_CON').AsString+''' '
                         );

         QCadastro.open;
         if (trim(QCadastro.fieldByName('CNTI_I_IBGEC').AsString)<>'') and (trim(QCadastro.fieldByName('CNTI_I_IBGEC').AsString)<>'0')  then
          codcid:=''''+ZeraEsquerda(7,QCadastro.fieldByName('CNTI_I_IBGEC').AsString)+'''';

        end
        else
        begin
         QCadastro.close;
         QCadastro.sql.clear;
         QCadastro.sql.add(' SELECT * FROM CNTI_CONTRIBUINTES '+
                           ' WHERE CNTI_I_CON='+QVerifica.fieldByName('cod_cnt_div').AsString
                         );

         QCadastro.open;
         if (trim(QCadastro.fieldByName('CNTI_I_IBGEC').AsString)<>'') and (trim(QCadastro.fieldByName('CNTI_I_IBGEC').AsString)<>'0')  then
         codcid:=''''+ZeraEsquerda(7,QCadastro.fieldByName('CNTI_I_IBGEC').AsString)+'''';
       end;

       end;

      try
       QDestino.close;
       QDestino.sql.clear;
       QDestino.sql.add('INSERT INTO FI_LANCAMENTO(COD_EMP_LAN,COD_LAN,TP_LAN,VENCI_LAN, '+
                          ' DATA_LAN,NPARCE_LAN,TPCALC_LAN,COD_CAD_LAN,PROCESSO_LAN,DATAPROCESSO_LAN,'+
                          ' COD_DIV_LAN,COD_MOD_LAN,ESTORNADO_LAN,REQUE_LAN,LOGRA_LAN,BAIRRO_LAN,CEPE_LAN,'+
                          ' CNPJ_LAN,NUMEROE_LAN,RG_LAN,COD_CID_LAN) '+
                          'VALUES( '+
                          '1,'+
                          QOrigem.fieldByName('REP_N_COD').AsString+','+
                          '2,'+
                          ''''+formatDateTime('mm/dd/YYYY',StrTodate(dtassinatura))+''','+
                          ''''+formatDateTime('mm/dd/YYYY',StrTodate(dtreferencia))+''','+
                          QOrigem.fieldByName('PAR_S_LAN').AsString+','+
                          '''01 - Parcelas Iguais'','+
                          ''''+ZeraEsquerda(9,QOrigem.fieldByName('Inscricao').AsString)+''','+
                          ''''+QOrigem.fieldByName('rep_a_processo').AsString+''','+
                          ''''+formatDateTime('mm/dd/YYYY',QOrigem.fieldByName('PAR_D_LAN').value)+''','+
                          ''''+IntToStr(coddivida)+''','+
                           modulo+','+
                          ''''+Situacao+''','+
                          ''''+copy(RetiraChar(QCadastro.fieldByName('CNTI_A_NOM').AsString,''''),1,60)+''','+
                          ''''+copy(RetiraChar(QCadastro.fieldByName('CNTI_A_LOGR').AsString,''''),1,60)+''','+
                          ''''+copy(RetiraChar(QCadastro.fieldByName('CNTI_A_BAIR').AsString,''''),1,60)+''','+
                          ''''+RetiraChar(QCadastro.fieldByName('CNTI_A_CEPR').AsString,'''')+''','+
                          ''''+RetiraChar(QCadastro.fieldByName('CNTI_A_CPFCGC').AsString,'''')+''','+
                          ''''+copy(RetiraChar(QCadastro.fieldByName('CNTI_A_NUMR').AsString,''''),1,8)+''','+
                          ''''+RetiraChar(QCadastro.fieldByName('CNTI_A_RGIE').AsString,'''')+''','+
                          'NULL'+
                          ')'
                          );
       QDestino.ExecSQL();
      except

      end;

   QOrigem.next;
   end;


end;




procedure TFPrincipal.Itens;
 var cont,erros,coddivida,ncommit:Integer;
 origem,cadastro,modulo,tppar,situacao,ano,nparcela:String;
 desconto,acrescimos:Currency;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add(' SELECT A.*,B.PAR_N_VAL '+
                 ' FROM SEQUENCIAS_REPARCELAMENTO A '+
                 ' INNER JOIN TRIPAR B ON A.PAR_N_SEQ=B.PAR_N_SEQ AND A.PAR_S_NUM=B.PAR_S_NUM '+
                 ' AND B.PAR_I_SUB=A.PAR_I_SUB '+
                 ' ORDER BY REP_N_COD '
                 );
 QOrigem.open;

 ncommit:=0;
 if not Conexao.InTransaction then Conexao.StartTransaction(TD);



  cont:=1;
  while not QOrigem.eof do
  begin
  inc(ncommit);

  lbChave.caption:=QOrigem.fieldByName('REP_N_COD').AsString;
  lbChave.update;

     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add('SELECT COD_LAN,TP_LAN FROM FI_LANCAMENTO WHERE COD_EMP_LAN=1 AND TP_LAN=2 AND COD_lan='+QOrigem.fieldByName('REP_N_COD').AsString);
     QVerifica.open;
     if not QVerifica.IsEmpty then
     begin

                 desconto:=0;
                 acrescimos:=0;
                 QAuxiliar.close;
                 QAuxiliar.sql.clear;
                 QAuxiliar.sql.add('SELECT ativa_par,executada_par,cod_mod_div,ano_div FROM FI_PARCELA '+
                 ' INNER JOIN FI_DIVIDA ON COD_EMP_DIV=COD_EMP_PAR AND COD_DIV=COD_DIV_PAR '+
                 ' WHERE COD_EMP_PAR=1 AND COD_DIV_PAR='+QOrigem.fieldByName('par_n_seq').AsString+' AND PARCELA_PAR='+QOrigem.fieldByName('par_s_num').AsString+
                 ' AND TP_PAR='+QOrigem.fieldByName('PAR_I_SUB').AsString
                 );
                 QAuxiliar.open;
                 if not QAuxiliar.IsEmpty then
                 begin
                 if QAuxiliar.fieldByName('ativa_par').AsString='S' then
                 situacao:='2';

                 if QAuxiliar.fieldByName('ativa_par').AsString='N' then
                 situacao:='1';

                 if QAuxiliar.fieldByName('executada_par').AsString='S' then
                 situacao:='3';






                 QDestino.close;
                 QDestino.sql.clear;
                 QDestino.sql.add('INSERT INTO FI_ITENS(COD_EMP_ITS,COD_DIV_ITS,COD_LAN_ITS,TP_LAN_ITS,PARCELA_ITS,TP_ITS, '+
                                  ' VALOR_ITS,CORRE_ITS,JUROS_ITS,MULTA_ITS,DESCOR_ITS,DESCOC_ITS,DESCOM_ITS,DESCOJ_ITS,'+
                                  ' DESCO_ITS,ACRE_ITS,CUSTA_ITS,TP_PAR_TS,'+
                                  ' ANO_ITS,COD_MOD_ITS,SITUACAO_ITS) '+
                                  'VALUES( '+
                                  '1,'+
                                  QOrigem.fieldByName('par_n_seq').AsString+','+
                                  QVerifica.fieldByName('cod_lan').AsString+','+
                                  '2,'+
                                  QOrigem.fieldByName('PAR_S_NUM').AsString+','+
                                  QOrigem.fieldByName('PAR_I_SUB').AsString+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_VAL').AsCurrency))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(0))+','+//correcao
                                  Subs_Virgula_por_Ponto(CurrToStr(0))+','+//juros
                                  Subs_Virgula_por_Ponto(CurrToStr(0))+','+//multa
                                  Subs_Virgula_por_Ponto(CurrToStr(0))+','+//desconto receita
                                  Subs_Virgula_por_Ponto(CurrToStr(0 ))+','+//desconto correcao
                                  Subs_Virgula_por_Ponto(CurrToStr( 0))+','+//desconto multa
                                  Subs_Virgula_por_Ponto(CurrToStr( 0))+','+//desconto juros
                                  Subs_Virgula_por_Ponto(CurrToStr(desconto))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(Acrescimos))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(0))+','+
                                  QOrigem.fieldByName('PAR_I_SUB').AsString+','+
                                  QAuxiliar.fieldByName('ano_div').AsString+','+
                                  QAuxiliar.fieldByName('cod_mod_div').AsString+','+
                                  situacao+
                                  ')'
                                  );
                 QDestino.ExecSQL();
                end;
      end;


    if ncommit=1000 then begin
     Conexao.Commit(TD);
     ncommit:=0;
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;


    cont:=cont+1;
   QOrigem.next;
  end;

  Conexao.Commit(TD);

end;






procedure TFPrincipal.lancamentosCobranca;
 var cont,erros,nparcela,ncommit:Integer;
 origem,cadastro,modulo,coddivida,tipo:String;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM ASP02_ARRECADACAO ');
 QOrigem.open;

 //progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;



  ncommit:=0;
  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  cont:=1;
  while not QOrigem.eof do
  begin
         inc(ncommit);
         lbItem.Caption:=IntToStr(cont);
         lbItem.Update;

         ProgressBar1.Position:=cont;

         nparcela:=1;
         coddivida:='0';

       application.ProcessMessages;

       if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
        modulo:='1'
       else
       if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
        modulo:='2'
       else
       if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
        modulo:='4'
       else
        modulo:='5';

      try
         QDestino.close;
         QDestino.sql.clear;
         QDestino.sql.add('INSERT INTO FI_LANCAMENTO(COD_EMP_LAN,COD_LAN,TP_LAN,VENCI_LAN, '+
                          ' DATA_LAN,NPARCE_LAN,TPCALC_LAN,COD_CAD_LAN, '+
                          ' COD_DIV_LAN,COD_MOD_LAN,ESTORNADO_LAN, '+
                          ' ENTRADA_LAN,CUSTAS_LAN,DESCONTO_LAN,ACRESCIMO_LAN,NNUMERO_LAN) '+
                          ' VALUES( '+
                          '1,'+
                          QOrigem.fieldByName('ARR_N_COD').AsString+','+
                          '1,'+
                          ''''+formatDateTime('mm/dd/YYYY',QOrigem.fieldByName('ARR_D_VALIDADE').value)+''','+
                          ''''+formatDateTime('mm/dd/YYYY',QOrigem.fieldByName('ARR_D_DATAEMIS').value)+''','+
                          IntToStr(nparcela)+','+
                          '''01 - Parcelas Iguais'','+
                          ''''+ZeraEsquerda(9,QOrigem.fieldByName('INSCRICAO').AsString)+''','+
                          ''''+coddivida+''','+
                           modulo+','+
                          '''N'','+
                          Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_VRLAN').AsCurrency+
                                                           QOrigem.fieldByName('PAR_N_MUL').AsCurrency+
                                                           QOrigem.fieldByName('PAR_N_JUR').AsCurrency+
                                                           QOrigem.fieldByName('PAR_N_COR').AsCurrency-
                                                           QOrigem.fieldByName('PAR_N_DES').AsCurrency
                                                           ))+','+
                          Subs_Virgula_por_Ponto(CurrToStr(0))+','+
                          Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_DES').AsCurrency))+','+
                          '0,'+
                          QOrigem.fieldByName('ARR_N_COD').AsString+
                          ')'
                          );
         QDestino.ExecSQL();
      except

      end;


    if ncommit=1000 then begin
     Conexao.Commit(TD);
     ncommit:=0;
     if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    end;


   cont:=cont+1;
   QOrigem.next;
  end;
  Conexao.Commit(TD);
end;





procedure TFPrincipal.ItensCobranca;
 var cont,erros,totreceitas,nreceitas,coddivida,ncommit:Integer;
 origem,cadastro,modulo,tppar,situacao,ano,nparcela,codlan,tipo:String;
 totDescontoRec,TotDescontoAtualiza,vrCorrecao,vrMulta,vrJuros,vrDesconto,
 vrReceitas,DiferCorrecao,DiferMulta,DiferJuros,DiferDesconto,DiferReceitas,
 vrDescoR,vrDescoC,vrDescoM,vrDescoJ,ValorDescontoCorrecao,ValorDescontoMulta,ValorDescontoJuros,ValorDescontoReceita,
 diferDescontoCorrecao,diferDescontoMulta,diferDescontoJuros,diferDescontoReceita:Double;
 vrParcela,Desconto:Double;
begin

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM ASP02_ARRECAD_PARCELA   ORDER BY ARR_N_COD ' );
 QOrigem.open;
 //progressBar1.Max:=QOrigem.RecordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;

 ncommit:=0;
 if not Conexao.InTransaction then Conexao.StartTransaction(TD);



 cont:=1;
  while not QOrigem.eof do
  begin
  inc(ncommit);
  lbItem.Caption:=IntToStr(cont);
  lbItem.Update;

  ProgressBar1.Position:=cont;



   lbChave.Caption:=QOrigem.fieldByName('ARR_N_COD').value;
   lbChave.Update;

   application.ProcessMessages;
   QVerifica.close;
   QVerifica.sql.clear;
   QVerifica.sql.add('SELECT * FROM FI_LANCAMENTO WHERE COD_EMP_LAN=1 AND TP_LAN=1 AND COD_LAN='+QOrigem.fieldByName('ARR_N_COD').AsString);
   QVerifica.open;
   if not QVerifica.IsEmpty then
   begin
         codlan:=QVerifica.fieldByName('cod_lan').AsString;

         if trim(QOrigem.fieldByName('REP_N_COD').AsString)<>'0' then
         begin

             QVerifica.close;
             QVerifica.sql.clear;
             QVerifica.sql.add(' SELECT COD_DIV FROM FI_DIVIDA '+
                               ' WHERE COD_EMP_DIV=1 '+
                               ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                               ' AND LOGIN_INC_DIV=''PARCE'' '
                               );

             QVerifica.open;
             coddivida:=QVerifica.fieldByName('cod_div').AsInteger;

         end
         else
         coddivida:=QOrigem.fieldByName('par_n_seq').AsInteger;

         QVerifica.close;
         QVerifica.sql.clear;
         QVerifica.sql.add(' SELECT PARCELA_PAR,COD_DIV_PAR,COD_MOD_DIV,ANO_DIV,TP_PAR,ATIVA_PAR,EXECUTADA_PAR FROM FI_PARCELA '+
                           ' INNER JOIN FI_DIVIDA ON COD_DIV=COD_DIV_PAR AND COD_EMP_PAR=COD_EMP_DIV '+
                           ' WHERE COD_EMP_PAR=1 AND COD_DIV_PAR='+IntToStr(coddivida)+' AND PARCELA_PAR='+QOrigem.fieldByName('PAR_S_NUM').AsString+
                           ' AND TP_PAR='+QOrigem.fieldByName('PAR_I_SUB').AsString
                           );
         QVerifica.open;

         if not QVerifica.IsEmpty then
         begin

           ano:=QVerifica.fieldByName('ano_div').AsString;
           coddivida:=QVerifica.fieldByName('cod_div_par').AsInteger;
           nparcela:=QVerifica.fieldByName('parcela_par').AsString;
           modulo:=QVerifica.fieldByName('cod_mod_div').AsString;
           tppar:=QVerifica.fieldByName('tp_par').AsString;


           if copy(QVerifica.fieldByName('EXECUTADA_PAR').AsString,1,1)='S' then
           situacao:='3'
           else
           if copy(QVerifica.fieldByName('ATIVA_PAR').AsString,1,1)='S' then
           situacao:='2'
           else
           situacao:='1';



           vrParcela:=QOrigem.fieldByName('PAR_N_VAL').AsCurrency;




           vrCorrecao:=0;vrMulta:=0;vrJuros:=0;
           vrDesconto:=0;vrReceitas:=0;DiferCorrecao:=0;
           DiferMulta:=0;DiferJuros:=0;DiferDesconto:=0;DiferReceitas:=0;

           vrDescoR:=0;vrDescoC:=0;vrDescoM:=0;vrDescoJ:=0;
           ValorDescontoCorrecao:=0;ValorDescontoMulta:=0;
           ValorDescontoJuros:=0;ValorDescontoReceita:=0;

           diferDescontoCorrecao:=0;diferDescontoMulta:=0;
           diferDescontoJuros:=0;diferDescontoReceita:=0;


           ValorDescontoCorrecao:=0;
           ValorDescontoMulta:=0;
           ValorDescontoJuros:=0;

          try
           QDestino.close;
           QDestino.sql.clear;
           QDestino.sql.add('INSERT INTO FI_ITENS(COD_EMP_ITS,COD_DIV_ITS,COD_LAN_ITS,TP_LAN_ITS,PARCELA_ITS,TP_ITS, '+
                            ' VALOR_ITS,CORRE_ITS,JUROS_ITS,MULTA_ITS,DESCO_ITS,ACRE_ITS,CUSTA_ITS,TP_PAR_TS,'+
                            ' ANO_ITS,COD_MOD_ITS,SITUACAO_ITS) '+
                            'VALUES( '+
                            '1,'+
                            IntToStr(coddivida)+','+
                            codlan+','+
                            '1,'+
                            nparcela+','+
                            tppar+','+
                            Subs_Virgula_por_Ponto(CurrToStr(vrParcela))+','+
                            Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_COR_REP').AsCurrency+QOrigem.fieldByName('PAR_N_COR').AsCurrency))+','+
                            Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_JUR_REP').AsCurrency+QOrigem.fieldByName('PAR_N_JUR').AsCurrency))+','+
                            Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_MUL_REP').AsCurrency+QOrigem.fieldByName('PAR_N_MUL').AsCurrency))+','+
                            Subs_Virgula_por_Ponto(CurrToStr(ValorDescontoCorrecao+ValorDescontoMulta+ValorDescontoJuros))+','+
                            '0,'+
                            Subs_Virgula_por_Ponto('0')+','+
                            tppar+','+
                            Ano+','+
                            modulo+','+
                            situacao+
                            ')'
                            );
           QDestino.ExecSQL();
          except
          end;



         QEventos.close;
         QEventos.sql.clear;
         QEventos.sql.add(' SELECT * FROM  ASP02_ARRECAD_RECEITAS '+
                          ' WHERE ARR_N_COD='+QOrigem.fieldByName('ARR_N_COD').AsString+
                          ' AND PAR_N_SEQ='+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                          ' AND REP_N_COD='+QOrigem.fieldByName('REP_N_COD').AsString+
                          ' AND PAR_S_NUM='+QOrigem.fieldByName('PAR_S_NUM').AsString+
                          ' AND PAR_I_SUB='+QOrigem.fieldByName('PAR_I_SUB').AsString
                          );
         QEventos.open;


         while not QEventos.eof do
         begin

            vrCorrecao:=QEventos.fieldByName('PAR_N_COR_REP').AsCurrency+QEventos.fieldByName('PAR_N_COR').AsCurrency;
            vrMulta:=QEventos.fieldByName('PAR_N_MUL_REP').AsCurrency+QEventos.fieldByName('PAR_N_MUL').AsCurrency;
            vrJuros:=QEventos.fieldByName('PAR_N_JUR_REP').AsCurrency+QEventos.fieldByName('PAR_N_JUR').AsCurrency;

            vrDescoC := 0;
            vrDescoM := 0;
            vrDescoJ := 0;
            vrDescoR := QEventos.fieldByName('PAR_N_DES').AsCurrency;




            QVerifica.close;
            QVerifica.sql.clear;
            QVerifica.sql.add('SELECT * FROM FI_RECEITAS WHERE COD_EMP_FRC=1 '+
            ' AND COD_DIV_FRC='+IntToStr(coddivida)+' AND PARCELA_PAR_FRC='+nparcela+
            ' AND TP_PAR_FRC='+tppar+' AND COD_REC_FRC='+QEventos.fieldByName('tax_i_cod').AsString);
            QVerifica.Open;
            if not QVerifica.IsEmpty then
            begin
               vrCorrecao:=QEventos.fieldByName('PAR_N_COR_REP').AsCurrency+QEventos.fieldByName('PAR_N_COR').AsCurrency;
               vrMulta:=QEventos.fieldByName('PAR_N_MUL_REP').AsCurrency+QEventos.fieldByName('PAR_N_MUL').AsCurrency;
               vrJuros:=QEventos.fieldByName('PAR_N_JUR_REP').AsCurrency+QEventos.fieldByName('PAR_N_JUR').AsCurrency;

               vrDescoC := 0;
               vrDescoM := 0;
               vrDescoJ := 0;
               vrDescoR := 0;

               if QVerifica.fieldByName('lvalor_frc').AsCurrency>QEventos.fieldByName('PAR_N_VAL').AsCurrency then
               vrDescoR:=QVerifica.fieldByName('lvalor_frc').AsCurrency-QEventos.fieldByName('PAR_N_VAL').AsCurrency;

               if QVerifica.fieldByName('lvrcorre_frc').AsCurrency>vrCorrecao then
               vrDescoC:=QVerifica.fieldByName('lvrcorre_frc').AsCurrency-vrCorrecao;

               if QVerifica.fieldByName('lvrmulta_frc').AsCurrency>vrMulta then
               vrDescoM:=QVerifica.fieldByName('lvrmulta_frc').AsCurrency-vrMulta;

               if QVerifica.fieldByName('lvrJuros_frc').AsCurrency>vrJuros then
               vrDescoJ:=QVerifica.fieldByName('lvrJuros_frc').AsCurrency-vrJuros;


               try
                 QDestino.close;
                 QDestino.sql.clear;
                 QDestino.sql.add('INSERT INTO FI_ITENSRECEITAS(COD_EMP_IRE,COD_LAN_IRE,TP_LAN_IRE,COD_DIV_IRE,TP_PAR_IRE,COD_REC_IRE,ANO_IRE, '+
                                  ' SITUACAO_IRE,CODORIGEM_IRE,CODULTORI_IRE,PARCELA_PAR_IRE,OUTRA_IRE,LVALOR_IRE, '+
                                  'LVRCORRE_IRE,LVRMULTA_IRE,LVRJUROS_IRE,LDESCOR_IRE,LDESCOC_IRE,LDESCOM_IRE,LDESCOJ_IRE,LACRES_IRE '+
                                  ' ) '+
                                  'VALUES( '+
                                  '1,'+
                                  codlan+','+
                                  '1,'+
                                  QVerifica.fieldByName('cod_div_frc').AsString+','+
                                  QVerifica.fieldByName('tp_par_frc').AsString+','+
                                  QVerifica.fieldByName('cod_rec_frc').AsString+','+
                                  ''''+QVerifica.fieldByName('ano_frc').AsString+''','+
                                  ''''+QVerifica.fieldByName('situacao_frc').AsString+''','+
                                  QVerifica.fieldByName('codorigem_frc').AsString+','+
                                  QVerifica.fieldByName('codultori_frc').AsString+','+
                                  QVerifica.fieldByName('parcela_par_frc').AsString+','+
                                  '''N'','+
                                  Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('PAR_N_VAL').AsCurrency))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(vrCorrecao))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(vrMulta))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(vrJuros))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(vrDescoR))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(vrDescoC))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(vrDescoM))+','+
                                  Subs_Virgula_por_Ponto(CurrToStr(vrDescoJ))+','+
                                  '0'+
                                  ')'
                                  );
                 QDestino.ExecSQL();
               except
               end;
            end;


         QEventos.next;
         end;//la�o do fi receitas


         end;//verifica se existe a parcela

   end;//localizou no fi_lancamento


     if ncommit=1000 then begin
      Conexao.Commit(TD);
      ncommit:=0;
      if not Conexao.InTransaction then Conexao.StartTransaction(TD);
     end;


    cont:=cont+1;
   QOrigem.next;
  end;

  Conexao.Commit(TD);

end;





procedure TFPrincipal.SituacaoProcesso;
 var cont,modulo,erros:Integer;
begin

        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_DVAT_SITUACAO WHERE COD_FDS=1';
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('COD_EMP_FDS').AsInteger:=1;
        cdsdestino.FieldByName('COD_FDS').AsInteger:=1;
        cdsdestino.FieldByName('DESCR_FDS').AsString:='COLOCAR A DESCRI��O CORRETA';

        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;


    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.SQL.Add('SELECT distinct AND_I_SITUACAO FROM TRIANDPROC');
    QOrigem.Open;
    while not QOrigem.Eof do begin

        cdsdestino.close;
        sqlDestino.commandText:='select * from FI_DVAT_SITUACAO WHERE COD_FDS='+QOrigem.FieldByName('AND_I_SITUACAO').AsString;
        cdsdestino.open;

        if cdsdestino.IsEmpty then
        cdsdestino.append
        else
        cdsdestino.edit;

        cdsdestino.FieldByName('COD_EMP_FDS').AsInteger:=1;
        cdsdestino.FieldByName('COD_FDS').AsInteger:=QOrigem.FieldByName('AND_I_SITUACAO').AsInteger;
        cdsdestino.FieldByName('DESCR_FDS').AsString:='COLOCAR A DESCRI��O CORRETA';

        Erros:=0;
        if not Conexao.InTransaction then Conexao.StartTransaction(TD);

        if cdsdestino.State in [dsEdit, dsInsert] then cdsdestino.Post;
        if cdsdestino.ChangeCount > 0 then Erros := cdsdestino.ApplyUpdates(-1);

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;

    QOrigem.Next;
    end;



end;


procedure TFPrincipal.TramiteProcesso;
 var cont,modulo,erros:Integer;
begin

    QOrigem.Close;
    QOrigem.SQL.Clear;
    QOrigem.SQL.Add('SELECT * FROM TRIANDPROC ORDER BY TPJ_I_NUMERO,AND_D_DATA ');
    QOrigem.Open;
    cont:=0;
    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    cdsdestino.close;
    sqlDestino.commandText:='select * from FI_DVAT_TRAMITE WHERE COD_EMP_FTR=1 AND COD_FTR IS NULL';
    cdsdestino.open;

    while not QOrigem.Eof do begin

      QVerifica.Close;
      QVerifica.SQL.Clear;
      QVerifica.SQL.Add('SELECT COD_PRO_FDT,ANO_PRO_FDT FROM FI_DVAT_PROCESSO '+
                        ' WHERE COD_EMP_FDT=1 AND COD_PRO_FDT='+QOrigem.fieldByName('TPJ_I_NUMERO').AsString
                        );
      QVerifica.Open;
      if not QVerifica.IsEmpty then begin
        inc(cont);
        cdsdestino.append;
        cdsdestino.FieldByName('COD_EMP_FTR').AsInteger:=1;
        cdsdestino.FieldByName('COD_FTR').AsInteger:=CONT;
        if trim(QOrigem.FieldByName('AND_I_SITUACAO').AsString)='' then
        cdsdestino.FieldByName('COD_SITU_FTR').AsInteger:=1
        else
        cdsdestino.FieldByName('COD_SITU_FTR').AsInteger:=QOrigem.FieldByName('AND_I_SITUACAO').AsInteger;
        cdsdestino.FieldByName('COD_PRO_FTR').AsString:=QVerifica.fieldByName('COD_PRO_FDT').AsString;
        cdsdestino.FieldByName('ANO_PRO_FTR').AsString:=QVerifica.fieldByName('ANO_PRO_FDT').AsString;
        cdsdestino.FieldByName('DTA_FTR').AsString:=COPY(QOrigem.FieldByName('AND_D_DATA').AsString,1,10);
        cdsdestino.FieldByName('OBS_FTR').AsString:=DBRichEdit1.TEXT;
        QOrigem.FieldByName('AND_B_DESCR').AsString;
        cdsdestino.Post;
        cdsdestino.ApplyUpdates(-1);


        QAuxiliar.Close;
        QAuxiliar.sql.Clear;
        QAuxiliar.sql.add('UPDATE FI_DVAT_PROCESSO SET COD_SITU_FDT='+QOrigem.FieldByName('AND_I_SITUACAO').AsString+
                        ' WHERE COD_EMP_FDT=1 AND COD_PRO_FDT='+QOrigem.fieldByName('TPJ_I_NUMERO').AsString
                        );

        QAuxiliar.ExecSQL;




      end;


    QOrigem.Next;
    end;
        Erros:=0;

        if Erros = 0 then Conexao.Commit(TD)
        else begin
          Conexao.Rollback(TD);
          exit;
        end;



end;


procedure TFPrincipal.Processos;
var cont:Integer;
    codcaddiv,codmoddiv,coddiv,tppar,codsituacao,codcnt,dataajuizamento,codvara,datadistribuicao,cnj:String;
begin


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_PARCELAS_CERT');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_REL_CERT_PROC');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_CERTIDAO');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_PROCESSO');
 QDestino.execsql;


 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM TRIPROJUD  ORDER by TPJ_I_NUMERO ');
 QOrigem.open;

 progressBar1.Max:=QOrigem.recordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;


  cont:=1;
  while not QOrigem.eof do
  begin
   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

          lbChave.caption:=QOrigem.fieldByname('TPJ_I_NUMERO').AsString;
          lbChave.update;

          if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
            codmoddiv:='1'
          else
          if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
            codmoddiv:='2'
          else
          if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
            codmoddiv:='4'
          else
            codmoddiv:='5';

          codcaddiv:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);
          codcnt:=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_CON_REQUERIDO').AsString);
          codsituacao:='1';
          dataajuizamento:=copy(QOrigem.fieldByName('TPJ_D_DATA').AsString,1,10);
          datadistribuicao:=dataajuizamento;

          codvara:=trim(QOrigem.fieldByName('TPJ_A_VARA').AsString);
//9999999-99.9999.9.99.9999
          cnj:=copy(QOrigem.fieldByName('TPJ_A_NUM_ANO_PROCESSO').AsString,1,7)+'-'+
               copy(QOrigem.fieldByName('TPJ_A_NUM_ANO_PROCESSO').AsString,8,2)+'.'+
               copy(QOrigem.fieldByName('TPJ_A_NUM_ANO_PROCESSO').AsString,10,4)+'.'+
               copy(QOrigem.fieldByName('TPJ_A_NUM_ANO_PROCESSO').AsString,14,1)+'.'+
               copy(QOrigem.fieldByName('TPJ_A_NUM_ANO_PROCESSO').AsString,15,2)+'.'+
               copy(QOrigem.fieldByName('TPJ_A_NUM_ANO_PROCESSO').AsString,17,4);


          TRY
          QVerifica.Close;
          QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_PROCESSO(COD_EMP_FDT, COD_PRO_FDT, ANO_PRO_FDT,'+
                                                             'DTA_PRO_FDT, COD_CNT_FDT, NRO_PRO_FORUM_FDT, ANO_PRO_FORUM_FDT,CONTROLE_FDT,NPROCESSOCNJ_FDT, '+
                                                             'DTA_PRO_FORUM_FDT, COD_SITU_FDT, DTA_SITU_FDT, DTA_DISTR_FDT, '+
                                                             'NOMEVARA_FDT, COD_MODANT_FDT, COD_CADANT_FDT) VALUES ( '+
                                                '1,'+
                                                QOrigem.fieldByName('TPJ_I_NUMERO').AsString +','+
                                                QOrigem.fieldByName('TPJ_I_ANO').AsString +','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(dataajuizamento)) +''','+
                                                ''''+codcnt +''','+
                                                ''''+trim(QOrigem.fieldByName('TPJ_A_NUM').AsString) +''','+
                                                ''''+trim(QOrigem.fieldByName('TPJ_I_ANO').AsString) +''','+
                                                ''''+trim(QOrigem.fieldByName('TPJ_I_NUMERO').AsString) +''','+
                                                ''''+cnj+''','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                codsituacao +','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(dataajuizamento)) +''','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                ''''+trim(codvara) +''','+
                                                ''''+ codmoddiv +''','+
                                                ''''+ codcaddiv +''' '+
                                                ')';
          QVerifica.ExecSQL;
          EXCEPT
          END;














          QEventos.close;
          QEventos.sql.clear;
          QEventos.sql.add(' SELECT TRILANPROC.PAR_N_SEQ,TRILANPROC.PAR_S_NUM,TRILANPROC.PAR_I_SUB,TRIPARCELACERTIDAO.CER_I_COD,TRILIVRO.LIV_S_ANO,tricertidao.cer_i_num,TRIPARCELACERTIDAO.liv_i_cod, '+
                           ' SUM(coalesce(PAR_N_VAL,0)+coalesce(PAR_N_MUL,0)+coalesce(PAR_N_JUR,0)+coalesce(PAR_N_COR,0)) AS VALOR '+
                           ' FROM TRILANPROC '+
                           ' INNER JOIN TRIPARCELACERTIDAO ON TRIPARCELACERTIDAO.PAR_N_SEQ=TRILANPROC.PAR_N_SEQ AND TRIPARCELACERTIDAO.PAR_S_NUM=TRILANPROC.PAR_S_NUM '+
                           ' INNER JOIN TRILIVRO ON TRILIVRO.LIV_I_COD=TRIPARCELACERTIDAO.LIV_I_COD '+
                           ' INNER JOIN tricertidao ON tricertidao.liv_i_cod=TRIPARCELACERTIDAO.liv_i_cod AND tricertidao.cer_i_cod=TRIPARCELACERTIDAO.cer_i_cod '+
                           ' WHERE TPJ_I_NUMERO='+QOrigem.fieldByName('TPJ_I_NUMERO').AsString+
                           ' GROUP BY TRILANPROC.PAR_N_SEQ,TRILANPROC.PAR_S_NUM,TRILANPROC.PAR_I_SUB,TRIPARCELACERTIDAO.CER_I_COD,TRILIVRO.LIV_S_ANO,tricertidao.cer_i_num,TRIPARCELACERTIDAO.liv_i_cod '
                           );
          QEventos.open;
          while not QEventos.eof do
          begin

             QVerifica.Close;
             QVerifica.sql.Clear;
             QVerifica.sql.Add('SELECT * FROM FI_DVAT_CERTIDAO '+
                               ' WHERE COD_EMP_FDC=1 AND COD_FDC='+QEventos.fieldByName('cer_i_num').AsString+
                               ' AND ANO_FDC='+QEventos.fieldByName('LIV_S_ANO').AsString+
                               ' AND SEQ_FDC='+QEventos.fieldByName('liv_i_cod').AsString);
             QVerifica.open;
             if QVerifica.IsEmpty then begin

                try
                 QVerifica.Close;
                 QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_CERTIDAO(COD_EMP_FDC,COD_FDC,ANO_FDC,SEQ_FDC,'+
                                                                   'DTA_FDC, COD_MOD_FDC,CADASTRO_FDC,COD_CNT_FDC,VALOR_FDC '+
                                                                   ') VALUES ( '+
                                                      '1,'+
                                                      QEventos.fieldByName('cer_i_num').AsString +','+
                                                      QEventos.fieldByName('LIV_S_ANO').AsString +','+
                                                      QEventos.fieldByName('liv_i_cod').AsString+','+
                                                      ''''+ formatdatetime('dd.mm.yyyy', strtodate(dataajuizamento)) +''','+
                                                      codmoddiv +','+
                                                      ''''+codcaddiv +''','+
                                                      ''''+codcnt +''', '+
                                                      Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('VALOR').AsCurrency))+
                                                      ')';
                 QVerifica.ExecSQL;


                 QVerifica.Close;
                 QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_REL_CERT_PROC(COD_EMP_DCP,COD_PRO_DCP,ANO_PRO_DCP,COD_CERT_DCP,ANO_CERT_DCP,SEQ_CERT_DCP '+
                                       ') VALUES ( '+
                                                '1,'+
                                                 QOrigem.fieldByName('TPJ_I_NUMERO').AsString +','+
                                                 QOrigem.fieldByName('TPJ_I_ANO').AsString+','+
                                                 QEventos.fieldByName('cer_i_num').AsString +','+
                                                 QEventos.fieldByName('LIV_S_ANO').AsString +','+
                                                 QEventos.fieldByName('liv_i_cod').AsString +
                                                 ')';
                 QVerifica.ExecSQL;

                except
                end;

             end
             else begin
             QVerifica.Close;
             QVerifica.sql.Clear;
             QVerifica.sql.Add('UPDATE FI_DVAT_CERTIDAO SET VALOR_FDC=VALOR_FDC+'+Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('VALOR').AsCurrency))+
                               ' WHERE COD_EMP_FDC=1 AND COD_FDC='+QEventos.fieldByName('cer_i_num').AsString+
                               ' AND ANO_FDC='+QEventos.fieldByName('LIV_S_ANO').AsString+
                               ' AND SEQ_FDC='+QEventos.fieldByName('liv_i_cod').AsString);
             QVerifica.execsql;
             end;



              TRY
              QVerifica.Close;
              QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_PARCELAS_CERT(COD_EMP_FPC,COD_FPC,COD_DIV_FPC,PARCELA_FPC,TP_PAR_FPC,STATUS_FPC,COD_CERT_FPC,'+
                                                                 'ANO_CERT_FPC,SEQ_CERT_FPC, COD_INDANT_FPC,COD_INDEX_FPC '+
                                                                 ') VALUES ( '+
                                                    '1,'+
                                                    'GEN_ID(GEN_FI_DVAT_PARCELAS_CERT,1),'+
                                                    QEventos.fieldByName('PAR_N_SEQ').AsString+','+
                                                    QEventos.fieldByName('PAR_S_NUM').AsString+','+
                                                    QEventos.fieldByName('PAR_I_SUB').AsString+','+
                                                    '''AT'','+
                                                    QEventos.fieldByName('cer_i_num').AsString +','+
                                                    QEventos.fieldByName('LIV_S_ANO').AsString +','+
                                                    QEventos.fieldByName('liv_i_cod').AsString +','+
                                                    '1,'+
                                                    '1 '+
                                                    ')';
              QVerifica.ExecSQL;

              EXCEPT
              END;

          QEventos.next;
          end;




  QOrigem.next;
  end;

end;




procedure TFPrincipal.Processos1;
var cont:Integer;
    codcaddiv,codmoddiv,coddiv,tppar,codsituacao,codcnt,dataajuizamento,codvara,datadistribuicao,ncert:String;
begin


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_PARCELAS_CERT');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_REL_CERT_PROC');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_CERTIDAO');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_PROCESSO');
 QDestino.execsql;


 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM TRIPROJUD  ORDER by TPJ_I_NUMERO ');
 QOrigem.open;

 progressBar1.Max:=QOrigem.recordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;


  cont:=1;
  while not QOrigem.eof do
  begin
   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

          lbChave.caption:=QOrigem.fieldByname('TPJ_I_NUMERO').AsString;
          lbChave.update;

          if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
            codmoddiv:='1'
          else
          if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
            codmoddiv:='2'
          else
          if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
            codmoddiv:='4'
          else
            codmoddiv:='5';

          codcaddiv:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);
          codcnt:=ZeraEsquerda(9,QOrigem.fieldByname('CNTI_I_CON_REQUERIDO').AsString);
          codsituacao:='1';
          dataajuizamento:=copy(QOrigem.fieldByName('TPJ_D_DATA').AsString,1,10);
          datadistribuicao:=dataajuizamento;

          codvara:=trim(QOrigem.fieldByName('TPJ_A_VARA').AsString);


          TRY
          QVerifica.Close;
          QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_PROCESSO(COD_EMP_FDT, COD_PRO_FDT, ANO_PRO_FDT,'+
                                                             'DTA_PRO_FDT, COD_CNT_FDT, NRO_PRO_FORUM_FDT, ANO_PRO_FORUM_FDT,CONTROLE_FDT, '+
                                                             'DTA_PRO_FORUM_FDT, COD_SITU_FDT, DTA_SITU_FDT, DTA_DISTR_FDT, '+
                                                             'NOMEVARA_FDT, COD_MODANT_FDT, COD_CADANT_FDT) VALUES ( '+
                                                '1,'+
                                                QOrigem.fieldByName('TPJ_I_NUMERO').AsString +','+
                                                QOrigem.fieldByName('TPJ_I_ANO').AsString +','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(dataajuizamento)) +''','+
                                                ''''+codcnt +''','+
                                                ''''+trim(QOrigem.fieldByName('TPJ_A_NUM').AsString) +''','+
                                                ''''+trim(QOrigem.fieldByName('TPJ_I_ANO').AsString) +''','+
                                                ''''+trim(QOrigem.fieldByName('TPJ_I_NUMERO').AsString) +''','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                codsituacao +','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(dataajuizamento)) +''','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                ''''+trim(codvara) +''','+
                                                ''''+ codmoddiv +''','+
                                                ''''+ codcaddiv +''' '+
                                                ')';
          QVerifica.ExecSQL;
          EXCEPT
          END;














          QEventos.close;
          QEventos.sql.clear;
          QEventos.sql.add(' SELECT TRILANPROC.PAR_N_SEQ,TRILANPROC.PAR_S_NUM,TRILANPROC.PAR_I_SUB,TRIPARCELACERTIDAO.CER_I_COD,TRILIVRO.LIV_S_ANO,tricertidao.cer_i_num,TRIPARCELACERTIDAO.liv_i_cod, '+
                           ' SUM(coalesce(PAR_N_VAL,0)+coalesce(PAR_N_MUL,0)+coalesce(PAR_N_JUR,0)+coalesce(PAR_N_COR,0)) AS VALOR '+
                           ' FROM TRILANPROC '+
                           ' INNER JOIN TRIPARCELACERTIDAO ON TRIPARCELACERTIDAO.PAR_N_SEQ=TRILANPROC.PAR_N_SEQ AND TRIPARCELACERTIDAO.PAR_S_NUM=TRILANPROC.PAR_S_NUM '+
                           ' INNER JOIN TRILIVRO ON TRILIVRO.LIV_I_COD=TRIPARCELACERTIDAO.LIV_I_COD '+
                           ' INNER JOIN tricertidao ON tricertidao.liv_i_cod=TRIPARCELACERTIDAO.liv_i_cod AND tricertidao.cer_i_cod=TRIPARCELACERTIDAO.cer_i_cod '+
                           ' WHERE TPJ_I_NUMERO='+QOrigem.fieldByName('TPJ_I_NUMERO').AsString+
                           ' GROUP BY TRILANPROC.PAR_N_SEQ,TRILANPROC.PAR_S_NUM,TRILANPROC.PAR_I_SUB,TRIPARCELACERTIDAO.CER_I_COD,TRILIVRO.LIV_S_ANO,tricertidao.cer_i_num,TRIPARCELACERTIDAO.liv_i_cod '
                           );
          QEventos.open;
          while not QEventos.eof do
          begin

             ncert:=ZeraEsquerda(2,QEventos.fieldByName('liv_i_cod').AsString)+ZeraEsquerda(4,QEventos.fieldByName('cer_i_num').AsString);
             QVerifica.Close;
             QVerifica.sql.Clear;
             QVerifica.sql.Add('SELECT * FROM FI_DVAT_CERTIDAO '+
                               ' WHERE COD_EMP_FDC=1 AND COD_FDC='+ncert+
                               ' AND ANO_FDC='+QEventos.fieldByName('LIV_S_ANO').AsString
                               );
             QVerifica.open;
             if QVerifica.IsEmpty then begin

                try
                 QVerifica.Close;
                 QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_CERTIDAO(COD_EMP_FDC,COD_FDC,ANO_FDC,'+
                                                                   'DTA_FDC, COD_MOD_FDC,CADASTRO_FDC,COD_CNT_FDC,VALOR_FDC '+
                                                                   ') VALUES ( '+
                                                      '1,'+
                                                      ncert +','+
                                                      QEventos.fieldByName('LIV_S_ANO').AsString +','+
                                                      ''''+ formatdatetime('dd.mm.yyyy', strtodate(dataajuizamento)) +''','+
                                                      codmoddiv +','+
                                                      ''''+codcaddiv +''','+
                                                      ''''+codcnt +''', '+
                                                      Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('VALOR').AsCurrency))+
                                                      ')';
                 QVerifica.ExecSQL;


                 QVerifica.Close;
                 QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_REL_CERT_PROC(COD_EMP_DCP,COD_PRO_DCP,ANO_PRO_DCP,COD_CERT_DCP,ANO_CERT_DCP '+
                                       ') VALUES ( '+
                                                '1,'+
                                                 QOrigem.fieldByName('TPJ_I_NUMERO').AsString +','+
                                                 QOrigem.fieldByName('TPJ_I_ANO').AsString+','+
                                                 ncert +','+
                                                 QEventos.fieldByName('LIV_S_ANO').AsString +
                                                 ')';
                 QVerifica.ExecSQL;

                except
                end;

             end
             else begin
             QVerifica.Close;
             QVerifica.sql.Clear;
             QVerifica.sql.Add('UPDATE FI_DVAT_CERTIDAO SET VALOR_FDC=VALOR_FDC+'+Subs_Virgula_por_Ponto(CurrToStr(QEventos.fieldByName('VALOR').AsCurrency))+
                               ' WHERE COD_EMP_FDC=1 AND COD_FDC='+ncert+
                               ' AND ANO_FDC='+QEventos.fieldByName('LIV_S_ANO').AsString
                               );
             QVerifica.execsql;
             end;



              TRY
              QVerifica.Close;
              QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_PARCELAS_CERT(COD_EMP_FPC,COD_FPC,COD_DIV_FPC,PARCELA_FPC,TP_PAR_FPC,STATUS_FPC,COD_CERT_FPC,'+
                                                                 'ANO_CERT_FPC, COD_INDANT_FPC,COD_INDEX_FPC '+
                                                                 ') VALUES ( '+
                                                    '1,'+
                                                    'GEN_ID(GEN_FI_DVAT_PARCELAS_CERT,1),'+
                                                    QEventos.fieldByName('PAR_N_SEQ').AsString+','+
                                                    QEventos.fieldByName('PAR_S_NUM').AsString+','+
                                                    QEventos.fieldByName('PAR_I_SUB').AsString+','+
                                                    '''AT'','+
                                                    ncert +','+
                                                    QEventos.fieldByName('LIV_S_ANO').AsString +','+
                                                    '1,'+
                                                    '1 '+
                                                    ')';
              QVerifica.ExecSQL;

              EXCEPT
              END;

          QEventos.next;
          end;




  QOrigem.next;
  end;

end;





procedure TFPrincipal.CertidaoProtesto;
var cont,codcertidao,anocertidao:Integer;
    codcaddiv,codmoddiv,coddiv,tppar,codcnt,datadistribuicao,status,tipo,forma,protestado:String;
begin


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_PARCELAS_CERT');
// QDestino.execsql;


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_CERTIDAO');
// QDestino.execsql;


 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT * FROM TRINEGATIVACAO_PARCELAS  ORDER by NATUREZA,INSCRICAO ');
 QOrigem.open;

 progressBar1.Max:=QOrigem.recordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;


  cont:=0;
  while not QOrigem.eof do
  begin
   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

          inc(cont);
          lbChave.caption:=QOrigem.fieldByname('INSCRICAO').AsString;
          lbChave.update;

          if QOrigem.fieldByName('NATUREZA').AsString='1' then
            codmoddiv:='1'
          else
          if QOrigem.fieldByName('NATUREZA').AsString='3' then
            codmoddiv:='2'
          else
          if QOrigem.fieldByName('NATUREZA').AsString='2' then
            codmoddiv:='4'
          else
            codmoddiv:='5';




         if trim(QOrigem.fieldByName('REP_N_COD').AsString)<>'0' then
         begin
          QAuxiliar.close;
          QAuxiliar.sql.clear;
          QAuxiliar.sql.add(' SELECT COD_CNT_DIV FROM FI_DIVIDA '+
                             ' WHERE COD_EMP_DIV=1 '+
                             ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                             ' AND LOGIN_INC_DIV=''PARCE'' '
                             );

          QAuxiliar.open;
          codcnt:=QAuxiliar.fieldByname('COD_CNT_DIV').AsString;
         end
         else begin
          QAuxiliar.close;
          QAuxiliar.sql.clear;
          QAuxiliar.sql.add(' SELECT COD_CNT_DIV FROM FI_DIVIDA '+
                           ' WHERE COD_EMP_DIV=1 AND COD_DIV='+QOrigem.fieldByName('par_n_seq').AsString);
          QAuxiliar.open;
          codcnt:=QAuxiliar.fieldByname('COD_CNT_DIV').AsString;
         end;

          codcaddiv:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);

          datadistribuicao:=copy(QOrigem.fieldByName('NEG_D_INSCRICAO').AsString,1,10);
          anocertidao:=StrToInt(copy(datadistribuicao,7,4));


          QAuxiliar.close;
          QAuxiliar.sql.clear;
          QAuxiliar.sql.add('SELECT * FROM FI_DVAT_CERTIDAO '+
                            'WHERE COD_EMP_FDC=1 AND COD_MOD_FDC='+codmoddiv+' AND CADASTRO_FDC='''+codcaddiv+''' '+
                            ' AND DTA_FDC='''+InverteData(datadistribuicao)+''''
                            );
          QAuxiliar.open;
          if QAuxiliar.IsEmpty then begin

           QAuxiliar.close;
           QAuxiliar.sql.clear;
           QAuxiliar.sql.text:='SELECT MAX(COD_FDC) AS COD FROM FI_DVAT_CERTIDAO '+
                               ' WHERE COD_EMP_FDC=1 AND ANO_FDC='+IntToSTr(anocertidao);
           QAuxiliar.open;

           codcertidao:=QAuxiliar.fieldByName('cod').AsInteger+1;


           if QOrigem.fieldByName('NEG_I_TIPO').AsString='1' then // serasa
           begin
            status:='P';
            tipo:='C';
            forma:='SERASA';
           end
           else
           if QOrigem.fieldByName('NEG_I_TIPO').AsString='2' then // Protesto
           begin
            status:='P';
            tipo:='C';
            forma:='CARTORIO';
           end;

           protestado:='S';
           if QOrigem.fieldByName('NEG_D_EXCLUSAO').AsString<>'' then begin
           status:='C';
           protestado:='N'
           end;



           QVerifica.Close;
           QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_CERTIDAO(COD_EMP_FDC,COD_FDC,ANO_FDC,SEQ_FDC,'+
                                                             'DTA_FDC, COD_MOD_FDC,CADASTRO_FDC,COD_CNT_FDC, '+
                                                             'VALOR_FDC,TIPO_FDC,STATUS_FDC,DTPROTESTADA_FDC,DTCOBRADA_FDC, '+
                                                             'ENVIO_FDC,FORMA_FDC'+
                                                             ') VALUES ( '+
                                                '1,'+
                                                IntToStr(codcertidao) +','+
                                                IntToStr(anocertidao) +','+
                                                '1,'+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                codmoddiv +','+
                                                ''''+codcaddiv +''','+
                                                ''''+codcnt +''', '+
                                                  Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_VAL').AsCurrency+
                                                                                   QOrigem.fieldByName('PAR_N_COR').AsCurrency+
                                                                                   QOrigem.fieldByName('PAR_N_MUL').AsCurrency+
                                                                                   QOrigem.fieldByName('PAR_N_JUR').AsCurrency-
                                                                                   QOrigem.fieldByName('DES_N_VAL').AsCurrency-
                                                                                   QOrigem.fieldByName('DES_N_COR').AsCurrency-
                                                                                   QOrigem.fieldByName('DES_N_MUL').AsCurrency-
                                                                                   QOrigem.fieldByName('DES_N_JUR').AsCurrency
                                                                                   )
                                                                         )+','+
                                                 '''C'','+
                                                 ''''+status+''','+
                                                 ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                 ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                 '''M'','+
                                                 ''''+forma+''' '+
                                                ')';
           QVerifica.ExecSQL;
          end
          else
          begin
           codcertidao:=QAuxiliar.fieldByName('COD_FDC').AsInteger;
           anocertidao:=QAuxiliar.fieldByName('ANO_FDC').AsInteger;

           QVerifica.Close;
           QVerifica.SQL.Text := 'UPDATE FI_DVAT_CERTIDAO SET VALOR_FDC=VALOR_FDC+'+Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_VAL').AsCurrency+
                                                                                                                     QOrigem.fieldByName('PAR_N_COR').AsCurrency+
                                                                                                                     QOrigem.fieldByName('PAR_N_MUL').AsCurrency+
                                                                                                                     QOrigem.fieldByName('PAR_N_JUR').AsCurrency-
                                                                                                                     QOrigem.fieldByName('DES_N_VAL').AsCurrency-
                                                                                                                     QOrigem.fieldByName('DES_N_COR').AsCurrency-
                                                                                                                     QOrigem.fieldByName('DES_N_MUL').AsCurrency-
                                                                                                                     QOrigem.fieldByName('DES_N_JUR').AsCurrency
                                                                                                                     )
                                                                                                           )+
                                 'WHERE COD_EMP_FDC=1 AND COD_FDC='+IntToStr(codcertidao)+' AND ANO_FDC='+IntToStr(anocertidao);
           QVerifica.ExecSQL;

          end;






         if trim(QOrigem.fieldByName('REP_N_COD').AsString)<>'0' then
         begin

             QAuxiliar.close;
             QAuxiliar.sql.clear;
             QAuxiliar.sql.add(' SELECT COD_DIV FROM FI_DIVIDA '+
                               ' WHERE COD_EMP_DIV=1 '+
                               ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                               ' AND LOGIN_INC_DIV=''PARCE'' '
                               );

             QAuxiliar.open;
             coddiv:=QAuxiliar.fieldByName('cod_div').AsString;

         end
         else
         coddiv:=QOrigem.fieldByName('par_n_seq').AsString;

         QAuxiliar.close;
         QAuxiliar.sql.clear;
         QAuxiliar.sql.add(' SELECT PARCELA_PAR,COD_DIV_PAR,COD_MOD_DIV,ANO_DIV,TP_PAR,ATIVA_PAR,EXECUTADA_PAR FROM FI_PARCELA '+
                           ' INNER JOIN FI_DIVIDA ON COD_DIV=COD_DIV_PAR AND COD_EMP_PAR=COD_EMP_DIV '+
                           ' WHERE COD_EMP_PAR=1 AND COD_DIV_PAR='+coddiv+' AND PARCELA_PAR='+QOrigem.fieldByName('PAR_S_NUM').AsString+
                           ' AND TP_PAR='+QOrigem.fieldByName('PAR_I_SUB').AsString
                           );
         QAuxiliar.open;
         if not QAuxiliar.IsEmpty then begin
         try
          QVerifica.Close;
          QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_PARCELAS_CERT(COD_EMP_FPC,COD_FPC,COD_DIV_FPC,PARCELA_FPC,TP_PAR_FPC,STATUS_FPC,COD_CERT_FPC,'+
                                                             'ANO_CERT_FPC, SEQ_CERT_FPC, COD_INDANT_FPC,COD_INDEX_FPC '+
                                                             ') VALUES ( '+
                                                '1,'+
                                                'GEN_ID(GEN_FI_DVAT_PARCELAS_CERT,1),'+
                                                QAuxiliar.fieldByName('COD_DIV_PAR').AsString+','+
                                                QAuxiliar.fieldByName('PARCELA_PAR').AsString+','+
                                                QAuxiliar.fieldByName('TP_PAR').AsString+','+
                                                '''AT'','+
                                                IntToStr(codcertidao) +','+
                                                IntToStr(anocertidao) +','+
                                                '1,'+
                                                '1,'+
                                                '1 '+
                                                ')';
          QVerifica.ExecSQL;
         except

         end;




           if QOrigem.fieldByName('NEG_I_TIPO').AsString='1' then // serasa
           begin
              QVerifica.Close;
              QVerifica.SQL.Text := 'UPDATE FI_PARCELA SET PROTESTADO_PAR='''+protestado+''',GEROUCOBRANCA_PAR='''+protestado+''',COBROU_PAR=''S'',TPGEROUCOB_PAR=2,DTPROTESTO_PAR='''+formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao))+''' '+
                                     'WHERE COD_EMP_PAR=1 AND '+
                                     ' COD_DIV_PAR='+QAuxiliar.fieldByName('COD_DIV_PAR').AsString+' AND '+
                                     ' PARCELA_PAR='+QAuxiliar.fieldByName('PARCELA_PAR').AsString+' AND '+
                                     ' TP_PAR='+QAuxiliar.fieldByName('TP_PAR').AsString;
              QVerifica.ExecSQL;
           end
           else
           if QOrigem.fieldByName('NEG_I_TIPO').AsString='2' then // Protesto
           begin
              QVerifica.Close;
              QVerifica.SQL.Text := 'UPDATE FI_PARCELA SET PROTESTADO_PAR='''+protestado+''',GEROUCOBRANCA_PAR='''+protestado+''',COBROU_PAR=''S'',TPGEROUCOB_PAR=1,DTPROTESTO_PAR='''+formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao))+''' '+
                                     'WHERE COD_EMP_PAR=1 AND '+
                                     ' COD_DIV_PAR='+QAuxiliar.fieldByName('COD_DIV_PAR').AsString+' AND '+
                                     ' PARCELA_PAR='+QAuxiliar.fieldByName('PARCELA_PAR').AsString+' AND '+
                                     ' TP_PAR='+QAuxiliar.fieldByName('TP_PAR').AsString;
              QVerifica.ExecSQL;
           end;

         end;


  QOrigem.next;
  end;

end;



procedure TFPrincipal.CertidaoCartorio;
var cont,codcertidao,anocertidao,seqcertidao:Integer;
    codcaddiv,codmoddiv,coddiv,tppar,codcnt,datadistribuicao,status,tipo,forma,protestado,
      COD_LAN_FDC,TP_LAN_FDC,PROTOCOLORES_FDC,DTPROTOCOLORES_FDC,CARTORIOPROTESTO_FDC:String;
begin


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_PARCELAS_CERT WHERE EXISTS (SELECT 1 FROM FI_DVAT_CERTIDAO WHERE COD_EMP_FDC=COD_EMP_FPC AND COD_FDC=COD_CERT_FPC AND ANO_FDC=ANO_CERT_FPC AND SEQ_FDC=SEQ_CERT_FPC AND TIPO_FDC=''C'')');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_PARTES WHERE EXISTS (SELECT 1 FROM FI_DVAT_CERTIDAO WHERE COD_EMP_FDC=COD_EMP_FDP AND COD_FDC=COD_CERT_FDP AND ANO_FDC=ANO_CERT_FDP AND SEQ_FDC=SEQ_CERT_FDP AND TIPO_FDC=''C'')');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_DVAT_CERTIDAO WHERE COD_EMP_FDC=1 AND TIPO_FDC=''C'' ');
 QDestino.execsql;

 QOrigem.close;
 QOrigem.sql.clear;
 QOrigem.sql.add('SELECT A.*,B.LIV_S_ANO FROM TRIPROTESTO_CARTORIO_PARCELAS A '+
                ' INNER JOIN TRILIVRO B ON B.LIV_I_COD=A.LIV_I_COD '
                );
 QOrigem.open;




 progressBar1.Max:=QOrigem.recordCount;

 lbTotal.Caption:=IntToStr(ProgressBar1.max);
 lbTotal.Update;


  cont:=0;
  while not QOrigem.eof do
  begin
   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;

          inc(cont);
          lbChave.caption:=QOrigem.fieldByname('INSCRICAO').AsString;
          lbChave.update;

          if QOrigem.fieldByName('IMP_A_NAT').AsString='1' then
            codmoddiv:='1'
          else
          if QOrigem.fieldByName('IMP_A_NAT').AsString='3' then
            codmoddiv:='2'
          else
          if QOrigem.fieldByName('IMP_A_NAT').AsString='2' then
            codmoddiv:='4'
          else
            codmoddiv:='5';




         if trim(QOrigem.fieldByName('REP_N_COD').AsString)<>'0' then
         begin
          QAuxiliar.close;
          QAuxiliar.sql.clear;
          QAuxiliar.sql.add(' SELECT COD_CNT_DIV FROM FI_DIVIDA '+
                             ' WHERE COD_EMP_DIV=1 '+
                             ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                             ' AND LOGIN_INC_DIV=''PARCE'' '
                             );

          QAuxiliar.open;
          codcnt:=QAuxiliar.fieldByname('COD_CNT_DIV').AsString;
         end
         else begin
          QAuxiliar.close;
          QAuxiliar.sql.clear;
          QAuxiliar.sql.add(' SELECT COD_CNT_DIV FROM FI_DIVIDA '+
                           ' WHERE COD_EMP_DIV=1 AND COD_DIV='+QOrigem.fieldByName('par_n_seq').AsString);
          QAuxiliar.open;
          codcnt:=QAuxiliar.fieldByname('COD_CNT_DIV').AsString;
         end;

          codcaddiv:=ZeraEsquerda(9,QOrigem.fieldByName('inscricao').AsString);

          datadistribuicao:=copy(QOrigem.fieldByName('PROT_D_INCLUSAO').AsString,1,10);
          anocertidao:=QOrigem.FieldByName('LIV_S_ANO').AsInteger;
          codcertidao:=StrToInt('1'+ZeraEsquerda(8,QOrigem.fieldByName('CER_I_NUM').AsString));
          seqcertidao:=QOrigem.fieldByName('LIV_I_COD').AsInteger;


          QAuxiliar.close;
          QAuxiliar.sql.clear;
          QAuxiliar.sql.add('SELECT * FROM FI_DVAT_CERTIDAO '+
                            'WHERE COD_EMP_FDC=1 AND COD_FDC='+IntToStr(codcertidao)+' AND ANO_FDC='+IntToStr(anocertidao)+' AND SEQ_FDC='+IntToSTr(seqcertidao)
                            );
          QAuxiliar.open;
          if QAuxiliar.IsEmpty then begin




           tipo:='C';
           forma:='CARTORIO';
           protestado:='N';



           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='1' then  //1 - Marcada
           begin
             status:='P';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='2' then //2 - Gerado
           begin
              status:='G';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='3' then//3 - Confirmada
           begin
             status:='B';
             protestado:='S';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='4' then //4 - Protestada
           begin
             status:='R';
             protestado:='S';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='5' then//5 - Inconsistente
           begin
             status:='C';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='6' then //6 - Liquidação - Cheque
           begin
             status:='Q';
             protestado:='S';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='7' then//7 - Paga
           begin
              status:='Q';
              protestado:='S';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='8' then//9 - Excluída do Protesto
           begin
             status:='D';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='10' then//10 - Excluída do Protesto
           begin
             status:='D';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='11' then//11 - Gerado Cancelamento
           begin
             status:='C';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='12' then//12 - Desistência Confirmada
           begin
             status:='D';
           end
           else
           if QOrigem.FieldByName('PROT_S_SITUACAO').AsString='13' then//13 - Cancelamento Confirmado';
           begin
             status:='C';
           end;



           QEventos.Close;
           QEventos.SQL.Clear;
           QEventos.SQL.Add('SELECT PROT_D_ACAO,PROT_A_PROTOCOLO,ARR_N_COD FROM TRIPROTESTO_CARTORIO_PARCELAMOV '+
           ' WHERE SEQUENCIAL='+QOrigem.FieldByName('sequencial').AsString+' AND PROT_S_TIPO=2');
           QEventos.open;
           if (trim(QEventos.fieldByName('ARR_N_COD').AsString)<>'') and (trim(QEventos.fieldByName('ARR_N_COD').AsString)<>'0') then
           begin
            COD_LAN_FDC:=QEventos.fieldByName('ARR_N_COD').AsString;
            TP_LAN_FDC:='1';
           end
           else
           begin
             COD_LAN_FDC:='NULL';
             TP_LAN_FDC:='NULL';
           end;



           QEventos.Close;
           QEventos.SQL.Clear;
           QEventos.SQL.Add('SELECT PROT_D_ACAO,PROT_A_PROTOCOLO,ARR_N_COD,PROT_A_CARTORIO FROM TRIPROTESTO_CARTORIO_PARCELAMOV '+
           ' WHERE SEQUENCIAL='+QOrigem.FieldByName('sequencial').AsString+' AND PROT_S_TIPO=3');
           QEventos.open;

           if COD_LAN_FDC='NULL' then
           begin
             if (trim(QEventos.fieldByName('ARR_N_COD').AsString)<>'') and (trim(QEventos.fieldByName('ARR_N_COD').AsString)<>'0') then
             begin
              COD_LAN_FDC:=QEventos.fieldByName('ARR_N_COD').AsString;
              TP_LAN_FDC:='1';
             end
             else
             begin
               COD_LAN_FDC:='NULL';
               TP_LAN_FDC:='NULL';
             end;
           end;


           if (trim(QEventos.fieldByName('PROT_A_PROTOCOLO').AsString)<>'') then
           begin
            PROTOCOLORES_FDC:=''''+QEventos.fieldByName('PROT_A_PROTOCOLO').AsString+'''';
            DTPROTOCOLORES_FDC:=''''+InverteData(QEventos.fieldByName('PROT_D_ACAO').AsString)+'''';
            CARTORIOPROTESTO_FDC:=''''+QEventos.fieldByName('PROT_A_CARTORIO').AsString+'''';

           end
           else
           begin
             PROTOCOLORES_FDC:='NULL';
             DTPROTOCOLORES_FDC:='NULL';
             CARTORIOPROTESTO_FDC:='NULL';
           end;


           QVerifica.Close;
           QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_CERTIDAO(COD_EMP_FDC,COD_FDC,ANO_FDC,SEQ_FDC,'+
                                                             'DTA_FDC, COD_MOD_FDC,CADASTRO_FDC,COD_CNT_FDC, '+
                                                             'VALOR_FDC,TIPO_FDC,STATUS_FDC,DTPROTESTADA_FDC,DTCOBRADA_FDC, '+
                                                             'ENVIO_FDC,FORMA_FDC,COD_LAN_FDC,TP_LAN_FDC,PROTOCOLORES_FDC,DTPROTOCOLORES_FDC,CARTORIOPROTESTO_FDC'+
                                                             ') VALUES ( '+
                                                '1,'+
                                                IntToStr(codcertidao) +','+
                                                IntToStr(anocertidao) +','+
                                                IntToStr(seqcertidao)+','+
                                                ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                codmoddiv +','+
                                                ''''+codcaddiv +''','+
                                                ''''+codcnt +''', '+
                                                  Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_VAL').AsCurrency+
                                                                                   QOrigem.fieldByName('PAR_N_COR').AsCurrency+
                                                                                   QOrigem.fieldByName('PAR_N_MUL').AsCurrency+
                                                                                   QOrigem.fieldByName('PAR_N_JUR').AsCurrency-
                                                                                   QOrigem.fieldByName('PAR_N_DES').AsCurrency
                                                                                   )
                                                                         )+','+
                                                 '''C'','+
                                                 ''''+status+''','+
                                                 ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                 ''''+ formatdatetime('dd.mm.yyyy', strtodate(datadistribuicao)) +''','+
                                                 '''M'','+
                                                 ''''+forma+''', '+
                                                 COD_LAN_FDC+','+
                                                 TP_LAN_FDC+','+
                                                 PROTOCOLORES_FDC+','+
                                                 DTPROTOCOLORES_FDC+','+
                                                 CARTORIOPROTESTO_FDC+
                                                ')';
           QVerifica.ExecSQL;
          end
          else
          begin

           QVerifica.Close;
           QVerifica.SQL.Text := 'UPDATE FI_DVAT_CERTIDAO SET VALOR_FDC=VALOR_FDC+'+Subs_Virgula_por_Ponto(CurrToStr(QOrigem.fieldByName('PAR_N_VAL').AsCurrency+
                                                                                                                     QOrigem.fieldByName('PAR_N_COR').AsCurrency+
                                                                                                                     QOrigem.fieldByName('PAR_N_MUL').AsCurrency+
                                                                                                                     QOrigem.fieldByName('PAR_N_JUR').AsCurrency-
                                                                                                                     QOrigem.fieldByName('PAR_N_DES').AsCurrency
                                                                                                                     )
                                                                                                           )+
                                 ' WHERE COD_EMP_FDC=1 AND COD_FDC='+IntToStr(codcertidao)+' AND ANO_FDC='+IntToStr(anocertidao)+' AND SEQ_FDC='+IntToSTr(seqcertidao);
           QVerifica.ExecSQL;

          end;






         if trim(QOrigem.fieldByName('REP_N_COD').AsString)<>'0' then
         begin

             QAuxiliar.close;
             QAuxiliar.sql.clear;
             QAuxiliar.sql.add(' SELECT COD_DIV FROM FI_DIVIDA '+
                               ' WHERE COD_EMP_DIV=1 '+
                               ' AND ANO_STR_DIV='+QOrigem.fieldByName('REP_N_COD').AsString+
                               ' AND LOGIN_INC_DIV=''PARCE'' '
                               );

             QAuxiliar.open;
             coddiv:=QAuxiliar.fieldByName('cod_div').AsString;

         end
         else
         coddiv:=QOrigem.fieldByName('par_n_seq').AsString;

         QAuxiliar.close;
         QAuxiliar.sql.clear;
         QAuxiliar.sql.add(' SELECT PARCELA_PAR,COD_DIV_PAR,COD_MOD_DIV,ANO_DIV,TP_PAR,ATIVA_PAR,EXECUTADA_PAR FROM FI_PARCELA '+
                           ' INNER JOIN FI_DIVIDA ON COD_DIV=COD_DIV_PAR AND COD_EMP_PAR=COD_EMP_DIV '+
                           ' WHERE COD_EMP_PAR=1 AND COD_DIV_PAR='+coddiv+' AND PARCELA_PAR='+QOrigem.fieldByName('PAR_S_NUM').AsString+
                           ' AND TP_PAR='+QOrigem.fieldByName('PAR_I_SUB').AsString
                           );
         QAuxiliar.open;
         if not QAuxiliar.IsEmpty then begin
           try
            QVerifica.Close;
            QVerifica.SQL.Text := 'INSERT INTO FI_DVAT_PARCELAS_CERT(COD_EMP_FPC,COD_FPC,COD_DIV_FPC,PARCELA_FPC,TP_PAR_FPC,STATUS_FPC,COD_CERT_FPC,'+
                                                               'ANO_CERT_FPC, SEQ_CERT_FPC, COD_INDANT_FPC,COD_INDEX_FPC '+
                                                               ') VALUES ( '+
                                                  '1,'+
                                                  'GEN_ID(GEN_FI_DVAT_PARCELAS_CERT,1),'+
                                                  QAuxiliar.fieldByName('COD_DIV_PAR').AsString+','+
                                                  QAuxiliar.fieldByName('PARCELA_PAR').AsString+','+
                                                  QAuxiliar.fieldByName('TP_PAR').AsString+','+
                                                  '''AT'','+
                                                  IntToStr(codcertidao) +','+
                                                  IntToStr(anocertidao) +','+
                                                  IntToStr(seqcertidao) +','+
                                                  '1,'+
                                                  '1 '+
                                                  ')';
            QVerifica.ExecSQL;
           except

           end;



           if protestado='S' then
           begin
             QVerifica.Close;
             QVerifica.SQL.Text := 'UPDATE FI_PARCELA SET PROTESTADO_PAR='''+protestado+''',GEROUCOBRANCA_PAR='''+protestado+''',COBROU_PAR=''S'',TPGEROUCOB_PAR=1,DTPROTESTO_PAR='+DTPROTOCOLORES_FDC+
                                         ' WHERE COD_EMP_PAR=1 AND '+
                                         ' COD_DIV_PAR='+QAuxiliar.fieldByName('COD_DIV_PAR').AsString+' AND '+
                                         ' PARCELA_PAR='+QAuxiliar.fieldByName('PARCELA_PAR').AsString+' AND '+
                                         ' TP_PAR='+QAuxiliar.fieldByName('TP_PAR').AsString;
             QVerifica.ExecSQL;
           end;
         end;




  QOrigem.next;
  end;

end;




function TFPrincipal.ConvertRTFToAsciiText(aString:string):string;
var
  ss:tstringstream;
  rich:TRichEdit;
begin
  rich:=TRichEdit.Create(owner);

  try
    rich.PlainText := false;
    rich.Lines.Text:=aString;
    rich.PlainText:=true;
    Result := rich.Text;
  finally
    rich.Free;
  end;

end;




procedure TFPrincipal.CadastraUsuarios;
var cont,codusr:Integer;
    cnpj:String;
begin

    QVerifica.close;
    QVerifica.sql.Text:='DELETE FROM LI_CADOPCAOSISTEMA';
    QVerifica.execsql;

    QVerifica.close;
    QVerifica.sql.Text:='DELETE FROM LI_CADUSUARIO';
    QVerifica.execsql;


    QVerifica.close;
    QVerifica.sql.Text:='DELETE FROM LI_USUARIOITENS';
    QVerifica.execsql;



    QVerifica.close;
    QVerifica.sql.Text:='DELETE FROM LI_USUARIO';
    QVerifica.execsql;

    QNOrigem.Close;
    QNOrigem.sql.Clear;
    QNOrigem.sql.add('select distinct nfemobcodigo,nfeconcpfcnpj '+
                    ' from notafiscaleletronica '
                    );
    QNOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);

    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('SELECT MAX(COD_USR) AS QTD FROM LI_USUARIO');
    QVerifica.open;

    cont:=QVerifica.fieldByName('qtd').AsInteger;
    while not QNOrigem.Eof do
    begin
     lbitem.caption:=inttostr(cont);
     lbitem.update;
     lbchave.caption:=QNOrigem.fieldByname('nfemobcodigo').AsString;
     lbchave.update;

     QVerifica.close;
     QVerifica.sql.clear;
     QVerifica.sql.add(' SELECT COD_MBL as CADASTRO,COD_CNT_MBL AS CODCNT,CNPJ_CNT, '+
                       ' NOME_CNT,NOM_LOG_CNT,CEP_CNT,NUMERO_CNT,COMPLE_CNT,NOM_BAI_CNT,EMAIL_CNT,FONE_CNT '+
                       ' FROM LI_MOBIL '+
                       ' INNER JOIN GR_CONTRIBUINTES ON COD_EMP_CNT=COD_EMP_MBL AND COD_CNT=COD_CNT_MBL '+
                       ' WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9, QNOrigem.FieldByName('nfemobcodigo').AsString)+''' ORDER BY SITUACAO_MBL '
                      );
     QVerifica.open;
     if QVerifica.IsEmpty then begin
         QVerifica.close;
         QVerifica.sql.clear;
         QVerifica.sql.add(' SELECT COD_MBL as CADASTRO,COD_CNT_MBL AS CODCNT,CNPJ_CNT, '+
                           ' NOME_CNT,NOM_LOG_CNT,CEP_CNT,NUMERO_CNT,COMPLE_CNT,NOM_BAI_CNT,EMAIL_CNT,FONE_CNT '+
                           ' FROM LI_MOBIL '+
                           ' INNER JOIN GR_CONTRIBUINTES ON COD_EMP_CNT=COD_EMP_MBL AND COD_CNT=COD_CNT_MBL '+
                           ' WHERE COD_EMP_MBL=1 AND CNPJ_CNT='''+TiraCaracter(QNOrigem.FieldByName('nfeconcpfcnpj').AsString)+''' ORDER BY SITUACAO_MBL'
                          );
         QVerifica.open;
     end;

     if not QVerifica.IsEmpty then begin

        inc(cont);
        cdsdestino.close;
        sqlDestino.commandText:=' SELECT * '+
                                ' FROM LI_USUARIO '+
                                ' WHERE COD_EMP_USR=1 AND CNPJCPF_USR='''+QVerifica.FieldByName('cnpj_cnt').AsString+'''';
        cdsdestino.open;
        if cdsDestino.IsEmpty then begin
            cdsdestino.append;
            cdsdestino.fieldByName('COD_EMP_USR').value       :=1;
            cdsdestino.fieldByName('COD_USR').value           :=cont;
            cdsdestino.fieldByName('DATASOLICITA_USR').value  :=DATE;
            cdsdestino.fieldByName('STATUS_USR').value        :='A';
            cdsdestino.fieldByName('TIPO_USR').value:='C';

            cnpj:=TiraCaracter(QVerifica.FieldByName('cnpj_cnt').AsString);

            cdsdestino.fieldByName('DATAAUTORIZA_USR').value  :=DATE;
            cdsdestino.fieldByName('CNPJCPF_USR').value       :=cnpj;
            cdsdestino.fieldByName('SENHA_USR').value         :=criptSenha(copy(cnpj,1,8));
            cdsdestino.fieldByName('NOME_USR').value          :=trim(QVerifica.fieldByName('NOME_CNT').AsString);
            cdsdestino.fieldByName('NOME_LOG_USR').value      :=trim(QVerifica.fieldByName('NOM_LOG_CNT').AsString);
            cdsdestino.fieldByName('NUMERO_USR').value        :=trim(QVerifica.fieldByName('NUMERO_CNT').AsString);
            cdsdestino.fieldByName('COMPLE_USR').value        :=trim(QVerifica.fieldByName('COMPLE_CNT').AsString);
            cdsdestino.fieldByName('NOME_BAI_USR').value      :=trim(QVerifica.fieldByName('NOM_BAI_CNT').AsString);
            cdsdestino.fieldByName('CEP_USR').value           :=TiraCaracter(trim(QVerifica.fieldByName('CEP_CNT').AsString));
            cdsdestino.fieldByName('RG_USR').value            :='';
            cdsdestino.fieldByName('EMAIL_USR').value         :=trim(QVerifica.fieldByName('EMAIL_CNT').AsString);
            cdsdestino.fieldByName('FONE_USR').value          :=trim(QVerifica.fieldByName('FONE_CNT').AsString);
            cdsdestino.fieldByName('FAX_USR').value           :=trim(QVerifica.fieldByName('FONE_CNT').AsString);
            cdsdestino.fieldByName('SENHA_PADRAO_USR').value  :='S';
            QAuxiliar.close;
            QAuxiliar.sql.clear;
            QAuxiliar.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
            QAuxiliar.open;
            cdsdestino.fieldByName('CD_MUNICIPIO_USR').value:=QAuxiliar.fieldByName('CIDADE_IBGE').value;

            cdsdestino.fieldByName('LOGIN_INC_USR').value       :='@ISS';
            cdsdestino.fieldByName('DTA_INC_USR').value         :=DATE;
            cdsdestino.ApplyUpdates(-1);


            cdsdestino.close;
            sqlDestino.commandText:=' SELECT * '+
                                    ' FROM LI_CADUSUARIO '+
                                    ' WHERE COD_EMP_RDE=1 AND COD_USR_RDE=-1 ';
            cdsdestino.open;
            cdsdestino.append;
            cdsdestino.fieldByName('COD_EMP_RDE').value  :=1;
            cdsdestino.fieldByName('COD_USR_RDE').value  :=cont;
            cdsdestino.fieldByName('COD_MOD_RDE').value  :=2;
            cdsdestino.fieldByName('UTILIZAISS_RDE').value  :='S';
            cdsdestino.fieldByName('CADASTRO_RDE').value :=QVerifica.fieldByName('CADASTRO').value;
            cdsdestino.fieldByName('COD_CNT_RDE').value  :=QVerifica.fieldByName('CODCNT').value;
            cdsdestino.fieldByName('LOGIN_INC_RDE').value:='@ISS';
            cdsdestino.fieldByName('DTA_INC_RDE').value  :=date;
            cdsdestino.ApplyUpdates(-1);

            InserePermissoesISSWEB('1','2',QVerifica.fieldByName('CADASTRO').AsString,IntToStr(cont));
        end;


     end;


    QNOrigem.Next;
    end;

    Conexao.Commit(TD);




end;





procedure TFPrincipal.PlanodeContas(cadastro,ano,codigo:String);
begin
  cdsItens.close;
  sqlItens.commandText:=' SELECT * FROM LI_PLANOCONTASGERAL '+
                          ' WHERE COD_EMP_PCG=1 AND CODINTERNO_PCG='''+codigo+''' AND COD_MBL_PCG='''+cadastro+''' AND EXERCICIO_PCG='+ano;
  cdsItens.open;
  if cdsItens.IsEmpty then
  begin
    cdsItens.append;
    cdsItens.fieldByName('COD_EMP_PCG').AsInteger:=1;
    cdsItens.fieldByName('CODINTERNO_PCG').AsString:=codigo;
    cdsItens.fieldByName('COD_MBL_PCG').AsString:=cadastro;
    cdsItens.fieldByName('EXERCICIO_PCG').AsString:=ano;

    QNCadastro.close;
    QNCadastro.sql.text:='select bancontadesc,bancontacoddesc from planocontas '+
                         'where bancontacod='''+codigo+''' and mobcodigo='+cadastro;

    QNCadastro.open;

    cdsItens.fieldByName('DESCRICAO_PCG').AsString:=QNCadastro.fieldByName('bancontadesc').AsString;
    cdsItens.fieldByName('DETALHE_PCG').AsString:=QNCadastro.fieldByName('bancontacoddesc').AsString;
    cdsItens.fieldByName('ATIVO_PCG').AsString:='S';
    cdsItens.fieldByName('COD_TDE_PCG').AsString:='150100001';

    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add('select CONTA_CSI from LI_COSIF where COD_EMP_CSI=1 and CONTA_CSI like '''+copy(codigo,1,7)+'%''');
    QVerifica.open;
    if not QVerifica.IsEmpty then
    cdsItens.fieldByName('CONTA_CSI_PCG').AsString:=QVerifica.fieldByName('CONTA_CSI').AsString
    else
    cdsItens.fieldByName('CONTA_CSI_PCG').AsString:='71310901';


    cdsItens.post;
    cdsItens.ApplyUpdates(-1);
  end;


end;



procedure TFPrincipal.ConverteDesif;
var Cadastro,codcnt,cnpj,dataemissao,origem_mec,fechado,codmovim:String;
    cont,modulo:Integer;
begin
 try

  if not Conexao.InTransaction then Conexao.StartTransaction(TD);


  QNOrigem.Close;
  QNOrigem.SQL.Text:=' select a.retlote, a.bandata,a.banaliquota,a.banvalor,a.banbasecalc,a.banimposto,a.bancontacod,a.banimpincidente,r.retlancamento,r.retmescomp,r.retanocomp,r.retmobcodigo,r.retparnum,r.retparsubnum,r.retparlancamento '+
                     ' from retencaobancos a '+
                     ' inner join retencao r on a.retlote=r.retlote '+
                     ' where a.banexcluido=''N''';
  QNOrigem.Open;

  while (not QNOrigem.Eof) do
  begin

      lbitem.caption:=inttostr(cont);
      lbitem.update;
      lbchave.caption:=QNOrigem.FieldByName('retmobcodigo').AsString;
      lbchave.update;

      cadastro:=ZeraEsquerda(9,QNOrigem.FieldByName('retmobcodigo').AsString);

      QAuxiliar.close;
      QAuxiliar.sql.clear;
      QAuxiliar.sql.add(' SELECT COD_MBL AS CADASTRO,COD_CNT_MBL AS CODCNT FROM LI_MOBIL '+
                        ' INNER JOIN GR_CONTRIBUINTES ON COD_EMP_CNT=COD_EMP_MBL AND COD_CNT=COD_CNT_MBL '+
                        ' WHERE COD_EMP_MBL=1 AND COD_MBL='''+cadastro+'''  ORDER BY SITUACAO_MBL '
                        );
      QAuxiliar.open;
      modulo:=2;

     if not QAuxiliar.IsEmpty then begin

          cont:=cont+1;

          modulo  :=2;
          codcnt  :=QAuxiliar.fieldByName('CODCNT').AsString;
          dataemissao:=copy(QNOrigem.FieldByName('bandata').AsString,1,10);
          origem_mec:='DESIF';
          fechado:='N';


          codmovim:=movimento(1,
                              MODULO,//COD_MOD_MEC
                              QAuxiliar.fieldByName('CADASTRO').AsString,//CADASTRO_MEC,
                              QAuxiliar.fieldByName('CODCNT').value,//COD_CNT_MEC
                              StrToDate(dataemissao),//DATALANCA_MEC,
                              'I',//TP_MEC,
                              QNOrigem.FieldByName('retmescomp').AsString,//MES_MEC,
                              QNOrigem.FieldByName('retanocomp').AsString,//ANO_MEC,
                              origem_mec,//ORIGEM_MEC
                              '01 - Normal',//TIPOESCRITURA_MEC
                              fechado,//FECHADO_MEC
                              StrToDate(dataemissao),//DATAFECHADO_MEC,
                              '@ISS',//LOGIN_INC_MEC,
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              '@ISS',
                              strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                              ''
                              );

          PlanodeContas(cadastro,trim(QNOrigem.FieldByName('retanocomp').AsString),trim(QNOrigem.FieldByName('bancontacod').AsString));
          cdsdestino.close;
          sqlDestino.commandText:=' SELECT * FROM LI_MOVIMENTOIFIN '+
                                  ' WHERE COD_EMP_MIF=1 AND COD_MBL_MIF='''+QAuxiliar.fieldByName('CADASTRO').AsString+''' AND COD_MEC_MIF='+codmovim+
                                  ' and EXERCICIO_MIF='+trim(QNOrigem.FieldByName('retanocomp').AsString)+' AND CODINTERNO_PCG_MIF='''+trim(QNOrigem.FieldByName('bancontacod').AsString)+'''';
          cdsdestino.open;
          if cdsdestino.IsEmpty then
          begin
          cdsdestino.append;
          cdsdestino.fieldByName('COD_EMP_MIF').value          :=1;
          cdsdestino.fieldByName('CODINTERNO_PCG_MIF').AsString:=trim(QNOrigem.FieldByName('bancontacod').AsString);
          cdsdestino.fieldByName('COD_MBL_MIF').value          :=QAuxiliar.fieldByName('CADASTRO').value;
          cdsdestino.fieldByName('EXERCICIO_MIF').value        :=QNOrigem.FieldByName('retanocomp').AsString;
          cdsdestino.fieldByName('COD_MEC_MIF').value   :=codmovim;
          end
          else
          cdsdestino.edit;

          cdsdestino.fieldByName('VRTRIBUTAVEL_MIF').AsCurrency     :=QNOrigem.FieldByName('banbasecalc').AsCurrency;
          cdsdestino.fieldByName('ALIQUOTA_MIF').AsCurrency         :=QNOrigem.FieldByName('banaliquota').AsCurrency;
          cdsdestino.fieldByName('IMPOSTO_MIF').AsCurrency          :=QNOrigem.FieldByName('banimposto').AsCurrency;
          cdsdestino.fieldByName('LOGIN_INC_MIF').AsString        :='@ISS';





         cdsdestino.post;
         cdsdestino.ApplyUpdates(-1);



        if trim(QNOrigem.FieldByName('retlote').AsString)<>'' then begin

         QPagamentos.close;
         QPagamentos.sql.clear;
         QPagamentos.sql.add('select a.PAR_N_SEQ,coalesce(b.PAR_S_NUM,1) as PAR_S_NUM,coalesce(b.PAR_I_SUB,0) as PAR_I_SUB '+
                             'from ASP02_ENCWEB a '+
                             'inner join ASP02_ENCWEB_NOTAS b on a.ENC_I_COD=b.ENC_I_COD '+
                             'where a.ENC_I_COD='+QNOrigem.FieldByName('retlote').AsString+' ROWS 1 '
                             );

         QPagamentos.open;
         if not QPagamentos.IsEmpty then begin

         QVerifica.Close;
         QVerifica.SQL.Clear;
         QVerifica.SQL.Add('select cod_div_par,parcela_par,tp_par from fi_parcela '+
         ' where cod_emp_par=1 and cod_div_par='+QPagamentos.fieldByName('PAR_N_SEQ').AsString+
         ' and parcela_par='+QPagamentos.fieldByName('PAR_S_NUM').AsString+
         ' and tp_par='+QPagamentos.fieldByName('PAR_I_SUB').AsString
         );
         QVerifica.Open;
         GuiasNota(1,

                            modulo,
                            QAuxiliar.fieldByName('CADASTRO').value,
                            QAuxiliar.fieldByName('CODCNT').value,
                            StrToDate(dataemissao),
                            'N',
                            QVerifica.fieldByName('cod_div_par').Value, // coddiv
                            QVerifica.fieldByName('parcela_par').Value,//PARCELA_PAR_GIS,
                            QVerifica.fieldByName('tp_par').Value,//TP_PAR_GIS,
                            null,
                            'N',
                            codmovim,
                            'I',
                            '@ISS',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            '@ISS',
                            strtodatetime(formatdatetime('DD/MM/YYYY HH:MM:SS',StrToDate(dataemissao))),
                            QNOrigem.FieldByName('retlote').AsString
                           );
         end;
        end;





     end;// encontrou no li_mobil



  QNOrigem.Next;
  end;
 finally
  Conexao.Commit(TD);
 end;

end;



function TFPrincipal.SetIDImagem(id,tipo:String):String;
begin

  result:='';
  QOrigem.close;
  QOrigem.sql.text:='SELECT IMO_I_COD as cod FROM TRIIMO WHERE ID_DIGITALIZACAO='+id;
  QOrigem.open;
  if not QOrigem.IsEmpty then
  begin
    QDestino.close;
    QDestino.sql.text:='UPDATE IP_CAD_IPTU SET INDICE_'+tipo+'_IPT='+ID+' WHERE COD_EMP_IPT=1 AND COD_IPT='''+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString)+'''';
    QDestino.execsql;
    result:='1|'+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString);
  end
  else
  begin
      QOrigem.close;
      QOrigem.sql.text:='SELECT CON_I_ISSQN as cod FROM TRIISS WHERE ID_DIGITALIZACAO='+id;
      QOrigem.open;
      if not QOrigem.IsEmpty then
      begin
        QDestino.close;
        QDestino.sql.text:='UPDATE LI_MOBIL SET INDICE_'+tipo+'_MBL='+ID+' WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString)+'''';
        QDestino.execsql;
        result:='1|'+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString);
      end
      else
      begin

          QOrigem.close;
          QOrigem.sql.text:='SELECT CNTI_I_CON as cod FROM CNTI_CONTRIBUINTES WHERE ID_DIGITALIZACAO='+id;
          QOrigem.open;
          if not QOrigem.IsEmpty then
          begin
            QDestino.close;
            QDestino.sql.text:='UPDATE GR_CONTRIBUINTES SET INDICE_'+tipo+'_CNT='+ID+' WHERE COD_EMP_CNT=1 AND COD_CNT='''+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString)+'''';
            QDestino.execsql;
            result:='1|'+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString);
          end
          else
          begin
            QOrigem.close;
            QOrigem.sql.text:='SELECT RUR_I_INSC as cod FROM TRIRUR WHERE ID_DIGITALIZACAO='+id;
            QOrigem.open;
            if not QOrigem.IsEmpty then
            begin
              QDestino.close;
              QDestino.sql.text:='UPDATE RR_CAD_RURAL SET INDICE_'+tipo+'_RRR='+ID+' WHERE COD_EMP_RRR=1 AND COD_RRR='''+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString)+'''';
              QDestino.execsql;
              result:='1|'+ZeraEsquerda(9,QOrigem.fieldByName('cod').AsString);
            end
            else
            begin
              QOrigem.close;
              QOrigem.sql.text:='SELECT a.TPJ_I_NUMERO as cod,a.ESAJ_A_PROCESSO as processo,b.TPJ_I_ANO '+
                                ' FROM TRIPROJUD_ANEXO a '+
                                ' inner join TRIPROJUD b on a.TPJ_I_NUMERO=b.TPJ_I_NUMERO '+
                                ' WHERE a.ID_DIGITALIZACAO='+id;
              QOrigem.open;
              if not QOrigem.IsEmpty then
              begin
                QDestino.close;
                QDestino.sql.text:='UPDATE FI_DVAT_PROCESSO SET INDICE_'+tipo+'_FDT='+ID+' WHERE COD_EMP_FDT=1 AND COD_PRO_FDT='+QOrigem.fieldByName('cod').AsString+' AND ANO_PRO_FDT='+QOrigem.fieldByName('TPJ_I_ANO').AsString;
                QDestino.execsql;
                result:='1|'+QOrigem.fieldByName('cod').AsString+'|'+QOrigem.fieldByName('TPJ_I_ANO').AsString;
              end;
            end;

          end;




      end;

  end;





end;



procedure TFPrincipal.BancodeImagens;
var cont,ncommit: Integer;
    codaux:String;

begin
    lbFuncao.Caption:='Banco de Imagens';
    lbFuncao.update;



    QImagemOrigem.Close;
    QImagemOrigem.sql.Clear;
    QImagemOrigem.sql.add('select count(*) as qtd '+
                          'from ASP_DIGITALIZACAO '
                    );
    QImagemOrigem.Open;
    lbtotal.Caption:=QImagemOrigem.fieldByname('qtd').AsString;
    lbtotal.update;
    ProgressBar1.max:=QImagemOrigem.fieldByname('qtd').AsInteger;


    QImagemOrigem.Close;
    QImagemOrigem.sql.Clear;
    QImagemOrigem.sql.add('SELECT * FROM ASP_DIGITALIZACAO '+
                          ' WHERE SISTEMA=2 AND TIPO<=26 '+
                          ' AND SUBSTRING(UPPER(NOME_ARQUIVO) FROM CHAR_LENGTH(TRIM(NOME_ARQUIVO))-3 FOR 4) IN (''.DWG'',''.JPG'',''.PNG'',''JPEG'') '
                          );
    QImagemOrigem.Open;




    if not dbArquivoDestino.InTransaction then dbArquivoDestino.StartTransaction(TD);

    cdsImagem.close;
    sqlImagem.commandText:='SELECT * FROM FT_IMAGENS WHERE INDICE_IMG=0 AND SEQ_IMG=0 ';
    cdsImagem.open;
    cont:=0;
    ncommit:=0;
    while not QImagemOrigem.Eof do
    begin
        inc(cont);
        inc(ncommit);
        lbItem.Caption:=IntToStr(cont);
        lbItem.update;

        lbChave.Caption:=QImagemOrigem.fieldByname('ID').AsString;
        lbChave.update;


        ProgressBar1.position:=cont;

        cdsImagem.append;
        cdsImagem.fieldByName('INDICE_IMG').AsInteger :=QImagemOrigem.fieldByname('ID').AsInteger;
        cdsImagem.fieldByName('SEQ_IMG').AsInteger    :=QImagemOrigem.fieldByname('SUB_ID').AsInteger;
        cdsImagem.fieldByName('IMAGEM_IMG').value     :=QImagemOrigem.fieldByname('DOCUMENTO').value;
        cdsImagem.fieldByName('DESCRICAO_IMG').value  :=QImagemOrigem.fieldByname('NOME_ARQUIVO').value;
        cdsImagem.fieldByName('NOME_ARQ_IMG').value   :=QImagemOrigem.fieldByname('NOME_ARQUIVO').value;
        cdsImagem.fieldByName('EXTENSAO_IMG').value   :=trim(copy(QImagemOrigem.fieldByname('NOME_ARQUIVO').AsString,pos('.',QImagemOrigem.fieldByname('NOME_ARQUIVO').AsString),10));
        cdsImagem.fieldByName('TIPODOC_IMG').value    :=QImagemOrigem.fieldByname('TIPO').value;
        cdsImagem.fieldByName('DTA_ENVIO_IMG').value  :=QImagemOrigem.fieldByname('DATA').value;
        codaux:=SetIDImagem(QImagemOrigem.fieldByname('ID').AsString,'IMG');
        if trim(codaux)<>'' then
        cdsImagem.fieldByName('CHAVE_SIA_IMG').value  :=codaux
        else
        cdsImagem.fieldByName('CHAVE_SIA_IMG').value  :='0';





        cdsImagem.post;
        cdsImagem.ApplyUpdates(-1);


      codaux:=SetIDImagem(QImagemOrigem.fieldByname('ID').AsString,'IMG');

      if ncommit=1000 then
      begin

       dbArquivoDestino.Commit(TD);

       cdsImagem.close;
       sqlImagem.commandText:='SELECT * FROM FT_IMAGENS WHERE INDICE_IMG=0 AND SEQ_IMG=0 ';
       cdsImagem.open;
       if not dbArquivoDestino.InTransaction then dbArquivoDestino.StartTransaction(TD);
       ncommit:=0;

      end;

     QImagemOrigem.Next;
    end;

   dbArquivoDestino.Commit(TD);


end;


Function base64Decode(const Text : ansiString): ansiString;
var
  Decoder : TIdDecoderMime;
begin
  Decoder := TIdDecoderMime.Create(nil);
  try
    Result := Decoder.DecodeString(Text);
  finally
    FreeAndNil(Decoder)
  end
end;

procedure TFPrincipal.BancodeArquivos;
var cont,ncommit: Integer;
    codaux:String;

begin
    lbFuncao.Caption:='Banco de Documentos';
    lbFuncao.update;



    QImagemOrigem.Close;
    QImagemOrigem.sql.Clear;
    QImagemOrigem.sql.add('select count(*) as qtd '+
                          'from ASP_DIGITALIZACAO '+
                          ' WHERE SISTEMA=2 AND TIPO<=26 '+
                          ' AND not (SUBSTRING(UPPER(NOME_ARQUIVO) FROM CHAR_LENGTH(TRIM(NOME_ARQUIVO))-3 FOR 4) IN (''.DWG'',''.JPG'',''.PNG'',''JPEG''))   '

                    );
    QImagemOrigem.Open;
    lbtotal.Caption:=QImagemOrigem.fieldByname('qtd').AsString;
    lbtotal.update;
    ProgressBar1.max:=QImagemOrigem.fieldByname('qtd').AsInteger;


    QImagemOrigem.Close;
    QImagemOrigem.sql.Clear;
    QImagemOrigem.sql.add('SELECT * FROM ASP_DIGITALIZACAO '+
                          ' WHERE SISTEMA=2 AND TIPO<=26 '+
                          ' AND not (SUBSTRING(UPPER(NOME_ARQUIVO) FROM CHAR_LENGTH(TRIM(NOME_ARQUIVO))-3 FOR 4) IN (''.DWG'',''.JPG'',''.PNG'',''JPEG''))  order by ID '
                          );
    QImagemOrigem.Open;




    if not dbArquivoDestino.InTransaction then dbArquivoDestino.StartTransaction(TD);

   // cdsImagem.close;
    //sqlImagem.commandText:='SELECT * FROM FT_DOCUMENTOS WHERE INDICE_DOC=0 AND SEQ_DOC=0 ';
   // cdsImagem.open;
    cont:=0;
    ncommit:=0;
    while not QImagemOrigem.Eof do
    begin
        inc(cont);
        inc(ncommit);
        lbItem.Caption:=IntToStr(cont);
        lbItem.update;

        lbChave.Caption:=QImagemOrigem.fieldByname('ID').AsString;
        lbChave.update;


        ProgressBar1.position:=cont;
        {
        try

        cdsImagem.append;
        cdsImagem.fieldByName('INDICE_DOC').AsInteger :=QImagemOrigem.fieldByname('ID').AsInteger;
        cdsImagem.fieldByName('SEQ_DOC').AsInteger    :=QImagemOrigem.fieldByname('SUB_ID').AsInteger;
        cdsImagem.fieldByName('DOCUMENTO_DOC').value     :=QImagemOrigem.fieldByname('DOCUMENTO').value;
        cdsImagem.fieldByName('OBSERV_DOC').value  :=QImagemOrigem.fieldByname('NOME_ARQUIVO').value;
        cdsImagem.fieldByName('NOME_ARQ_DOC').value   :=QImagemOrigem.fieldByname('NOME_ARQUIVO').value;
        cdsImagem.fieldByName('EXTENSAO_DOC').value   :=trim(copy(QImagemOrigem.fieldByname('NOME_ARQUIVO').AsString,pos('.',QImagemOrigem.fieldByname('NOME_ARQUIVO').AsString),10));
        cdsImagem.fieldByName('TIPODOC_DOC').value    :=QImagemOrigem.fieldByname('TIPO').value;
        cdsImagem.fieldByName('DTA_ENVIO_DOC').value  :=QImagemOrigem.fieldByname('DATA').value;
        codaux:=SetIDImagem(QImagemOrigem.fieldByname('ID').AsString,'DOC');
        if trim(codaux)<>'' then
        cdsImagem.fieldByName('CHAVE_SIA_DOC').value  :=codaux
        else
        cdsImagem.fieldByName('CHAVE_SIA_DOC').value  :='0';

        if cdsImagem.fieldByName('EXTENSAO_DOC').AsString='.zip.b64' then
        begin
        cdsImagem.fieldByName('COMPACTA_DOC').value  :='S';
        cdsImagem.fieldByName('DOCUMENTO_DOC').value:=   base64Decode(cdsImagem.fieldByName('DOCUMENTO_DOC').value);
        end
        else
        if cdsImagem.fieldByName('EXTENSAO_DOC').AsString='.zip' then
        cdsImagem.fieldByName('COMPACTA_DOC').value  :='S';

        cdsImagem.post;
        cdsImagem.ApplyUpdates(-1);
        except

        end;
        }

      codaux:=SetIDImagem(QImagemOrigem.fieldByname('ID').AsString,'DOC');
      if ncommit=200 then
      begin

       dbArquivoDestino.Commit(TD);

      // cdsImagem.close;
      // sqlImagem.commandText:='SELECT * FROM FT_DOCUMENTOS WHERE INDICE_DOC=0 AND SEQ_DOC=0 ';
       //cdsImagem.open;
       if not dbArquivoDestino.InTransaction then dbArquivoDestino.StartTransaction(TD);
       ncommit:=0;

      end;

     QImagemOrigem.Next;
    end;

   dbArquivoDestino.Commit(TD);


end;



procedure TFPrincipal.AcertaNotasFiscaisEletronica;
var cont,Erros,ncommit,item,codnfs:Integer;
cod_cntp,cadastro,modulo,codtom,codatv,codatd,descricao,codmovim,codguia,dataemissao,cnpjtom,ORIGEM_MEC,TIPONOTA,fechado,cnpj,rgtom,datacancelamento,auxtexto,nomecid,ufcid:String;
aliquota:Variant;
begin



  QNOrigem.close;
  QNOrigem.sql.clear;
  QNOrigem.sql.add(' select  nfecodigo, nfemobcodigo,nullif(nfedata, ''0001-01-01'') as nfedata,nfesitntcodigo,nferegimeespecialtributacao,nfenumeroprocesso,nullif(nfedataemissao, ''0001-01-01'') as nfedataemissao,nfeconsupersimples, '+
                   '         nfesitntcodigo,nfemescomp,nfeanocomp,nfetomconcpfcnpj,nfetomconrgie,TO_ASCII(nfetomconnome,''LATIN1'') as nfetomconnome,nfetomemail,nfetomtelefone,nfetomconmundes,nfetomconmunuf, '+
                   '         nfetomconnumero,TO_ASCII(nfetomconcompl, ''LATIN1'') as nfetomconcompl,TO_ASCII(nfetomconbaidesc,''LATIN1'') as nfetomconbaidesc,nfetomconcep,nfeimposto,nfetomconmuncodibge,nfelocalserv,nfecodigoverificacao,nferetlote, '+
                   '         nferetido,nfeseriecodigo,entity2char(TO_ASCII(nfeobsservicos, ''LATIN1'')) as nfeobsservicos,nferetir,nfeir,nfebasecalc,nferetinss,nfeinss,nferetpis,nfepis,nferetcofins,nfecofins,nferetcsll, '+
                   '         nfecsll,nfeoutrostributos, nfeativcodigo,nullif(nfedatacancelamento, ''0001-01-01'') as nfedatacancelamento,entity2char(TO_ASCII(nfeobscancelamento,''LATIN1'')) as  nfeobscancelamento,nfeincentivofiscal, '+
                   '         TO_ASCII(nfetomconlogdesc,''LATIN1'') as  nfetomconlogdesc,nfealiquota,nfealiquotassimp,nfeativaliquota,sitntabrev,nfemuncodigo,nfeufcodigo '+
                   ' from notafiscaleletronica '+
                   ' left join sitnotas on sitntcodigo=nfesitntcodigo '+
                   ' where nfemobcodigo=7735'+
                   ' order by nfemobcodigo, nfecodigo '
                   );
  QNOrigem.open;

  QNOrigem.RecordCount;




  cont:=1;




  if not Conexao.InTransaction then Conexao.StartTransaction(TD);


  ncommit:=0;
  while not QNOrigem.Eof do
  begin



     inc(ncommit);
     ProgressBar1.position:=cont;



     lbitem.caption:=inttostr(cont);
     lbitem.update;

     lbchave.caption:=QNOrigem.fieldByName('nfemobcodigo').AsString+'-'+QNOrigem.fieldByName('nfecodigo').AsString;
     lbchave.update;


       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add(' SELECT COD_MBL AS CADASTRO,COD_CNT_MBL AS CODCNT FROM LI_MOBIL '+
                         ' INNER JOIN GR_CONTRIBUINTES ON COD_EMP_CNT=COD_EMP_MBL AND COD_CNT=COD_CNT_MBL '+
                         ' WHERE COD_EMP_MBL=1 AND COD_MBL='''+ZeraEsquerda(9,QNOrigem.fieldByname('nfemobcodigo').AsString)+'''  '
                        );
       QVerifica.open;
       modulo:='2';



     if not QVerifica.IsEmpty then begin
        dataemissao:=copy(QNOrigem.fieldByName('nfedataemissao').AsString,1,10);

        cdsdestino.close;
        sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_MOD_NFS='+modulo+' AND CADASTRO_NFS='''+QVerifica.fieldByName('CADASTRO').AsString+''' '+
        ' AND NRNOTA_NFS='+QNOrigem.fieldByName('nfecodigo').AsString+' AND tiponota_nfs=''C'' ';
        cdsdestino.open;

        if not cdsdestino.IsEmpty then
        begin
          cdsdestino.edit;
          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value:=QVerifica.fieldByName('COD_BCE_EMP').value;


          if (trim(QNOrigem.fieldByName('nfetomconmuncodibge').AsString)='0') or (trim(QNOrigem.fieldByName('nfetomconmuncodibge').AsString)='') then
          begin
           QAuxiliar.Close;
           QAuxiliar.sql.Text:='SELECT CD_MUNICIPIO FROM MUNICIPIO WHERE MUNICIPIO LIKE '''+retirachar(QNOrigem.fieldByname('nfetomconmundes').AsString,'''')+''' AND UF='''+QNOrigem.fieldByname('nfetomconmunuf').AsString+'''';
           QAuxiliar.Open;
          end
          else
          begin
           QAuxiliar.Close;
           QAuxiliar.sql.Text:='SELECT CD_MUNICIPIO FROM MUNICIPIO WHERE CD_MUNICIPIO='''+ZeraEsquerda(7,QNOrigem.fieldByName('nfetomconmuncodibge').AsString)+''' ';
           QAuxiliar.Open;
          end;


          if not QAuxiliar.IsEmpty then
          cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QAuxiliar.fieldByName('CD_MUNICIPIO').value
          else
          begin
           QVerifica.close;
           QVerifica.sql.clear;
           QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
           QVerifica.open;
           cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          end;


          QVerifica.close;
          QVerifica.sql.clear;
          QVerifica.sql.add('SELECT CIDADE_IBGE,COD_BCE_EMP FROM GR_CAD_EMPRESA');
          QVerifica.open;
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value;

          cdsdestino.fieldByName('CD_PAISPRESTACAO_NFS').value           :=cdsdestino.fieldByName('CD_PAISTOMADOR_NFS').value;

          if QNOrigem.FieldByName('nfelocalserv').AsString='D' then
          cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CIDADE_IBGE').value
          else
          cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=cdsdestino.fieldByName('CD_MUNICIPIOTOMADOR_NFS').value;



          if (trim(QNOrigem.FieldByName('nfemuncodigo').AsString)<>'') and (trim(QNOrigem.FieldByName('nfemuncodigo').AsString)<>'0')  then
          begin
           QVerifica.close;
           QVerifica.sql.clear;
           QVerifica.sql.add('SELECT NOME_CID,UF_CID,CD_MUNICIPIO_CID FROM GR_CIDADE WHERE COD_CID='''+ZeraEsquerda(7,QNOrigem.FieldByName('nfemuncodigo').AsString)+'''');
           QVerifica.open;
           if (trim(QVerifica.FieldByName('CD_MUNICIPIO_CID').AsString)<>'') and (trim(QVerifica.FieldByName('CD_MUNICIPIO_CID').AsString)<>'0') then
           cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CD_MUNICIPIO_CID').value
           else
           begin
            nomecid:=QVerifica.FieldByName('nome_cid').AsString;
            ufcid:=QVerifica.FieldByName('uf_cid').AsString;
            QVerifica.Close;
            QVerifica.sql.Text:='SELECT CD_MUNICIPIO FROM MUNICIPIO WHERE MUNICIPIO LIKE '''+retirachar(nomecid,'''')+''' AND UF='''+ufcid+'''';
            QVerifica.Open;
            if not QVerifica.IsEmpty then
             cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value  :=QVerifica.fieldByName('CD_MUNICIPIO').value
           end;
          end;





          if QNOrigem.FieldByName('nfesitntcodigo').AsString='6' then
          cdsdestino.fieldByName('CD_MUNICIPIOINCIDENCIAISS_NFS').value  :=cdsdestino.fieldByName('CD_MUNICIPIOPRESTACAO_NFS').value;




         cdsdestino.ApplyUpdates(-1);

        end;


     end;// encontrou no li_mobil

  if  ncommit=1000 then begin


   cdsItens.close;
   sqlItens.CommandText:='SELECT * FROM LI_NOTAFISCAL_ITENS WHERE COD_EMP_NFI=1 AND COD_NFS_NFI=-1';
   cdsItens.open;
   cdsdestino.close;
   sqlDestino.commandText:=' SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS=1 AND COD_NFS IS NULL ';
   cdsdestino.open;


   Conexao.Commit(TD);
   ncommit:=0;
   if not Conexao.InTransaction then Conexao.StartTransaction(TD);


   application.ProcessMessages;
  end;


  QNOrigem.Next
  end;

  Conexao.Commit(TD);

end;





procedure TFPrincipal.MotivoCancelamento;
var item: Integer;
begin
    lbFuncao.Caption:='Motivo de Cancelamento';
    lbFuncao.update;

    QOrigem.Close;
    QOrigem.sql.Clear;
    QOrigem.sql.add(' SELECT distinct COALESCE(A.PAR_I_SIT_CAN,99) AS PAR_I_SIT_CAN,B.SIT_A_DESC '+
                    ' FROM TRIPAR A '+
                    ' LEFT JOIN TRISITPAR B ON B.SIT_I_COD=A.PAR_I_SIT_CAN '+
                    ' WHERE NOT A.PAR_D_CAN IS NULL '+
                    ' union '+
                    ' SELECT distinct COALESCE(A.PAR_I_SIT_CAN,99) AS PAR_I_SIT_CAN,B.SIT_A_DESC '+
                    ' FROM TRIPAR_REPARCELAMENTO A '+
                    ' LEFT JOIN TRISITPAR B ON B.SIT_I_COD=A.PAR_I_SIT_CAN '+
                    ' WHERE NOT A.PAR_D_CAN IS NULL '
                    );
    QOrigem.Open;


    if not Conexao.InTransaction then Conexao.StartTransaction(TD);
    item:=0;

    while not QOrigem.Eof do
    begin
        inc(item);
        lbItem.Caption:=IntToStr(item);
        lbItem.update;
        ProgressBar1.position:=item;

        cdsdestino.close;
        sqlDestino.commandText:='SELECT * FROM FI_MOTIVOCANCELA WHERE COD_EMP_MOT=1 AND COD_MOT='+trim(QOrigem.fieldByName('PAR_I_SIT_CAN').AsString);
        cdsdestino.open;
        if cdsdestino.IsEmpty then
         cdsdestino.append
        else
         cdsdestino.edit;

        cdsdestino.fieldByName('COD_EMP_MOT').AsInteger  :=1;
        cdsdestino.fieldByName('COD_MOT').AsInteger      :=QOrigem.fieldByname('PAR_I_SIT_CAN').AsInteger;
        cdsdestino.fieldByName('DESCRICAO_MOT').AsString :=TrocaAspasSimples(QOrigem.fieldByname('SIT_A_DESC').AsString);
        cdsdestino.fieldByName('LOGIN_INC_MOT').AsString :='CONVERSAO';
        cdsdestino.fieldByName('DTA_INC_MOT').value:=date;
        cdsdestino.post;
        cdsdestino.ApplyUpdates(-1);


     QOrigem.Next;
    end;

   Conexao.Commit(TD);
end;



procedure TFPrincipal.DividaCancelados;
var cont,coddivida:Integer;
    ncommit:INteger;
begin

  QVerifica.close;
  QVerifica.sql.clear;
  QVerifica.sql.add('DELETE FROM FI_CANCELA ' );
  QVerifica.execsql;

  QOrigem.close;
  QOrigem.sql.clear;
  QOrigem.sql.add(' SELECT 1 AS TIPO, A.PAR_N_SEQ,A.PAR_S_NUM,A.PAR_I_SUB,coalesce(A.PAR_I_SIT_CAN,99) as PAR_I_SIT_CAN,B.SIT_A_DESC,A.PAR_A_OBS,A.PAR_D_CAN,A.PAR_D_PROCESSO,A.PAR_A_PROCESSO '+
                  ' FROM TRIPAR A '+
                  ' LEFT JOIN TRISITPAR B ON B.SIT_I_COD=A.PAR_I_SIT_CAN '+
                  ' WHERE (NOT A.PAR_D_CAN IS NULL) AND ((NOT A.PAR_I_SIT_CAN IS NULL) or (NOT A.PAR_A_OBS IS NULL))  AND A.SIT_I_COD<>5 AND A.SIT_I_COD<>41 '+
                  ' UNION ALL '+
                  ' SELECT 2 AS TIPO,A.REP_N_COD,A.PAR_S_NUM,A.PAR_I_SUB,coalesce(A.PAR_I_SIT_CAN,99) as PAR_I_SIT_CAN,B.SIT_A_DESC,A.PAR_A_OBS,A.PAR_D_CAN,A.PAR_D_PROCESSO,A.PAR_A_PROCESSO '+
                  ' FROM TRIPAR_REPARCELAMENTO A '+
                  ' LEFT JOIN TRISITPAR B ON B.SIT_I_COD=A.PAR_I_SIT_CAN '+
                  ' WHERE (NOT A.PAR_D_CAN IS NULL) AND ((NOT A.PAR_I_SIT_CAN IS NULL) or (NOT A.PAR_A_OBS IS NULL)) '
                  );
  QOrigem.open;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  ncommit:=0;
  cont:=0;
  while not QOrigem.eof do
  begin
   cont:=cont+1;
   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;
   ProgressBar1.Position:=cont;
   lbChave.Caption:=QOrigem.fieldByName('PAR_N_SEQ').AsString;
   lbChave.Update;



   if trim(QOrigem.fieldByName('TIPO').AsString)='2' then
   begin
       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add(' SELECT COD_DIV FROM FI_DIVIDA '+
                         ' WHERE COD_EMP_DIV=1 '+
                         ' AND ANO_STR_DIV='+QOrigem.fieldByName('PAR_N_SEQ').AsString+
                         ' AND LOGIN_INC_DIV=''PARCE'' '
                         );

       QVerifica.open;
       coddivida:=QVerifica.fieldByName('cod_div').AsInteger;

   end
   else
   coddivida:=QOrigem.fieldByName('par_n_seq').AsInteger;


    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add(' SELECT PARCELA_PAR,COD_DIV_PAR,TP_PAR '+
                      ' FROM FI_PARCELA '+
                      ' WHERE COD_EMP_PAR=1 AND COD_DIV_PAR='+IntToStr(coddivida)+' AND PARCELA_PAR='+QOrigem.fieldByName('PAR_S_NUM').AsString+
                      ' AND TP_PAR='+QOrigem.fieldByName('PAR_I_SUB').AsString
                      );
    QVerifica.open;

    if not QVerifica.Isempty then begin
         try
         QDestino.close;
         QDestino.sql.clear;
         QDestino.sql.add('INSERT INTO FI_CANCELA(COD_EMP_CAN,COD_DIV_CAN,PARCELA_PAR_CAN,TP_PAR_CAN,COD_MOT_CAN,PROCESSO_CAN,JUSTIFICA_CAN,DTA_INC_CAN) '+
                            'VALUES( '+
                            '1,'+
                            QVerifica.fieldByName('cod_div_par').AsString+','+
                            QVerifica.fieldByName('parcela_par').AsString+','+
                            QVerifica.fieldByName('tp_par').AsString+','+
                            QOrigem.fieldByName('PAR_I_SIT_CAN').AsString+','+
                            ''''+copy(trim(retirachar(QOrigem.fieldByName('PAR_A_PROCESSO').AsString,'''')),1,20)+''','+
                            ''''+retiraChar(copy(trim(retirachar(QOrigem.fieldByName('PAR_A_OBS').AsString,'''')),1,255),'''')+''', '+
                            ''''+InverteData(copy(QOrigem.fieldByName('PAR_D_CAN').AsString,1,10))+''''+
                            ')'
                            );
          QDestino.ExecSQL();
          except
          end;


   end;



   if ncommit=20000 then
   begin
   Conexao.Commit(TD);
   if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   ncommit:=0;

   end;


   QOrigem.next;
  end;

  Conexao.Commit(TD);
end;


procedure TFPrincipal.LogdeDividaCancelados;
var cont,coddivida:Integer;
    ncommit:INteger;
    keytable:  TStringDynArray;
begin



  QOrigem.close;
  QOrigem.sql.clear;
  QOrigem.sql.add(' SELECT B.TABLE_NAME,B.USER_NAME,B.OPERATION,B.TABLE_KEY '+
                  ' FROM ASP_LOGFIELDS A '+
                  ' INNER JOIN ASP_LOGTABLES B ON B.ID=A.LOG_TABLES_ID '+
                  ' WHERE A.FIELD_NAME=''PAR_D_CAN'' '
                  );
  QOrigem.open;


  if not Conexao.InTransaction then Conexao.StartTransaction(TD);

  ncommit:=0;
  cont:=0;
  while not QOrigem.eof do
  begin
   cont:=cont+1;
   lbItem.Caption:=IntToStr(cont);
   lbItem.Update;
   ProgressBar1.Position:=cont;
   lbChave.Caption:=QOrigem.fieldByName('TABLE_KEY').AsString;
   lbChave.Update;

   keytable:=splitString(QOrigem.fieldByName('TABLE_KEY').AsString,';');

   if trim(QOrigem.fieldByName('TABLE_NAME').AsString)='TRIPAR_REPARCELAMENTO' then
   begin
       QVerifica.close;
       QVerifica.sql.clear;
       QVerifica.sql.add(' SELECT COD_DIV FROM FI_DIVIDA '+
                         ' WHERE COD_EMP_DIV=1 '+
                         ' AND ANO_STR_DIV='+keytable[0]+
                         ' AND LOGIN_INC_DIV=''PARCE'' '
                         );

       QVerifica.open;
       coddivida:=QVerifica.fieldByName('cod_div').AsInteger;

   end
   else
   coddivida:=StrToInt(keytable[0]);


    QVerifica.close;
    QVerifica.sql.clear;
    QVerifica.sql.add(' SELECT PARCELA_PAR,COD_DIV_PAR,TP_PAR  FROM FI_PARCELA '+
                      ' WHERE COD_EMP_PAR=1 AND COD_DIV_PAR='+IntToStr(coddivida)+' AND PARCELA_PAR='+keytable[1]+
                      ' AND TP_PAR='+keytable[2]
                      );
    QVerifica.open;

    if not QVerifica.Isempty then begin
         try
         QDestino.close;
         QDestino.sql.clear;
         QDestino.sql.add('UPDATE FI_CANCELA SET LOGIN_INC_CAN='''+QOrigem.fieldByName('USER_NAME').AsString+''' '+
                          ' WHERE COD_EMP_CAN=1 AND '+
                          ' COD_DIV_CAN ='+ QVerifica.fieldByName('cod_div_par').AsString+' AND '+
                          ' PARCELA_PAR_CAN='+QVerifica.fieldByName('parcela_par').AsString+' AND '+
                          ' TP_PAR_CAN='+QVerifica.fieldByName('tp_par').AsString
                           );
          QDestino.ExecSQL();
          except
          end;


   end;



   if ncommit=20000 then
   begin
   Conexao.Commit(TD);
   if not Conexao.InTransaction then Conexao.StartTransaction(TD);
   ncommit:=0;

   end;


   QOrigem.next;
  end;

  Conexao.Commit(TD);
end;


procedure TFPrincipal.Button1Click(Sender: TObject);
var stringteste:String;
  rich:TRichEdit;

begin

//CREATE INDEX TRIPAR_LOTE_IDX1 ON TRIPAR_LOTE (REP_N_COD, PAR_S_NUM, PAR_I_SUB);
//CREATE INDEX TRIPAR_LOTE_IDX2 ON TRIPAR_LOTE (PAR_N_SEQ, PAR_S_NUM, PAR_I_SUB);

//CREATE INDEX FI_DIVIDA_IDX1 ON FI_DIVIDA (COD_EMP_DIV,COD_CAD_DIV,ANO_DIV,ANO_STR_DIV,LOGIN_INC_DIV);
//CREATE INDEX FI_DIVIDA_IDX2 ON FI_DIVIDA (COD_EMP_DIV, ANO_STR_DIV, LOGIN_INC_DIV);

//ALTER TABLE LI_ATIVIDADE ADD CODAUX_ATV VC10;
//ALTER TABLE LI_ATIVDESDO ADD CODAUX_ATD VC10;


//INSERIR CONTRIBUINTE 0000000
//nao esquecer de verificar quem um valor pago muito doido 999.999.999.999.999

 definicampos;


 {


 Cidades;
 Bairros;
 TipoLogradouro;
 Logradouros;
 Feriados;
 Tipoentrega;
 Distrito;
 Loteamento;
 Condominios;

 ContribuintesUnico;
 HistoricosCadastros;
 SociosContribuintes;
 indices;
 modulo;
 receitaprincipal;
 receitas;
 bancos;
 lotes;

 HistoricosAlteracoesContribuintes;

 // Conversao M�dulo Imobiliario //
 //SetorVencimento;
 CodigoCobranca;
 //Zoneamento;
 //TipodaEdificacao;

 Imobiliaria;
 //Secao;
 Caracteristica;

 CadastroImovel;

 Confrontantes;

 CadAreaTerritorial;

 CadAreaEdificada;

 Historicovalorvenal;
 SociosImoveis;
 ImobiliarioCobranca;
 AntigoProprietarios;
 HistoricosAlteracoesImovel;

 }
 //ValoresCaracteristicasTabela_I;
 //ValoresCaracteristicasOpcoes_Faixa;
// ValoresCaracteristicasTabela_II

 //ValoresCaracteristicasTabela_III;

// Conversao Modulo Mobiliario//
  {
  TipoCadastro;
  TipoEmpresa;

  Graficas;
  Escritorios;

  CodigoCobrancaMobiliario;
  SetorVencimentoMobiliario;
  //TabeladeCalculo;
  AtividadesCnae;
  Atividades;
  CaracteristicaMobiliario;

  CadastroMobiliario;

  SociosMobil;
  HistoricosAlteracoesMobiliario;
  SerieNota;
  AIDF;
  }

// Conversao do Rural //
  { CodigoCobrancaRural;
  CaracteristicaRural;
  CadastroImovelRural;


   }

  {
 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from fi_DIVIDAEXCLUIDAS');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from fi_DIVIDA WHERE LOGIN_INC_DIV=''DIVIDA''');
 QDestino.execsql;

 guias;


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_PARCELASEXCLUIDAS');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_PARCELA WHERE LOGIN_INC_PAR=''DIVIDA''');
 QDestino.execsql;

 livrosDA;
 parcelas;


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from fi_DIVIDAEXCLUIDAS');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from fi_DIVIDA WHERE LOGIN_INC_DIV=''PARCE''');
 QDestino.execsql;

 guiasParcelamento;


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_PARCELASEXCLUIDAS');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_PARCELA WHERE LOGIN_INC_PAR=''PARCE''');
 QDestino.execsql;

 parcelasParcelamentos;


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_LANCAMENTO WHERE COD_EMP_LAN=1 AND TP_LAN=2');
 QDestino.execsql;
 lancamentos;


 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_ITENS WHERE COD_EMP_ITS=1 AND TP_LAN_ITS=2');
 QDestino.execsql;
 itens;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_LANCAMENTO where cod_emp_lan=1 and tp_lan=1');
 QDestino.execsql;

 lancamentosCobranca;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_ITENS where cod_emp_its=1 and tp_lan_its=1  ');
 QDestino.execsql;

 itensCobranca;

 AtualizaDados;

 SituacaoProcesso;
 processos;
 TramiteProcesso;

 CertidaoProtesto;




 SerieNotaEletronica;

 CadastroMobiliarioISS;

 CadastraUsuarios;

 ConverteDesif;

 NotasFiscaisEletronica;
 Escrituracao;
 Generators;
 }
 {
 BancodeImagens;
 BancodeArquivos;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from fi_DIVIDAEXCLUIDAS');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from fi_DIVIDA WHERE LOGIN_INC_DIV=''SIMPLES''');
 QDestino.execsql;

 guiasSimples;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_PARCELASEXCLUIDAS');
 QDestino.execsql;

 QDestino.close;
 QDestino.sql.clear;
 QDestino.sql.add('delete from FI_PARCELA WHERE LOGIN_INC_PAR=''SIMPLES''');
 QDestino.execsql;


 parcelasSimples;

certidaoCartorio;

MotivoCancelamento;
DividaCancelados;
LogdeDividaCancelados;
}
NotasFiscaisAvulsa;
Generators;


//AcertaNotasFiscaisEletronica;

{update FI_PARCELA A set situacao_par=0
WHERE A.COD_EMP_PAR=1 AND A.UNICA_PAR='S' AND A.PARCELA_PAR=0 AND A.SITUACAO_PAR IN (4) AND
EXISTS
(SELECT 1
 FROM FI_PARCELA B
 WHERE B.COD_EMP_PAR=A.COD_EMP_PAR AND
       B.COD_DIV_PAR=A.COD_DIV_PAR AND
       B.UNICA_PAR='N' AND
       B.PARCELA_PAR<>0
);



UPDATE FI_PARCELA A SET A.SITUACAO_PAR=0
WHERE A.COD_EMP_PAR=1 AND A.UNICA_PAR='N' AND A.SITUACAO_PAR IN (4) AND
EXISTS
(SELECT 1
 FROM FI_PARCELA B
 WHERE B.COD_EMP_PAR=A.COD_EMP_PAR AND
       B.COD_DIV_PAR=A.COD_DIV_PAR AND
       B.UNICA_PAR='S' AND
       B.SITUACAO_PAR>=6 AND
       B.SITUACAO_PAR<=8
);
}

end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  TD.TransactionID:=1;
  TD.IsolationLevel:=xilREADCOMMITTED;

end;

end.
