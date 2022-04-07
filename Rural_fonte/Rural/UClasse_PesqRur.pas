unit UClasse_PesqRur;

interface

Uses
  Classes, Windows, Messages, SysUtils, Graphics, Controls, Forms, Dialogs, DBClient,
  Variants, SqlExpr, UPrin, UDM, UConsulta, USelecao, Funcoes, UConsRural;

 type TPesq_RR_TPZONAESPECIAL = class
   private
     FCOD_RTZ, FDESCR_RTZ, FOBS_RTZ : Variant;
   public
     property COD_RTZ : Variant read FCOD_RTZ write FCOD_RTZ;
     property DESCR_RTZ : Variant read FDESCR_RTZ write FDESCR_RTZ;
     property OBS_RTZ : Variant read FOBS_RTZ write FOBS_RTZ;

     function BotaoRR_TPZONAESPECIAL : boolean;
    procedure PesquisaRR_TPZONAESPECIAL(COD1 : String);
 end;

 type TPesq_RR_TPDESTIMV = class
   private
     FCOD_RDI, FDESCR_RDI, FOBS_RDI : Variant;
   public
     property COD_RDI : Variant read FCOD_RDI write FCOD_RDI;
     property DESCR_RDI : Variant read FDESCR_RDI write FDESCR_RDI;
     property OBS_RDI : Variant read FOBS_RDI write FOBS_RDI;

     function BotaoRR_TPDESTIMV : boolean;
    procedure PesquisaRR_TPDESTIMV(COD1 : String);
 end;

 type TPesq_RR_TPORIGLITIGIO = class
   private
     FCOD_ROL, FDESCR_ROL, FOBS_ROL : Variant;
   public
     property COD_ROL : Variant read FCOD_ROL write FCOD_ROL;
     property DESCR_ROL : Variant read FDESCR_ROL write FDESCR_ROL;
     property OBS_ROL : Variant read FOBS_ROL write FOBS_ROL;

     function BotaoRR_TPORIGLITIGIO : boolean;
    procedure PesquisaRR_TPORIGLITIGIO(COD1 : String);
 end;

 type TPesq_RR_TPFORMAOB = class
   private
     FCOD_RFO, FDESCR_RFO, FOBS_RFO : Variant;
   public
     property COD_RFO : Variant read FCOD_RFO write FCOD_RFO;
     property DESCR_RFO : Variant read FDESCR_RFO write FDESCR_RFO;
     property OBS_RFO : Variant read FOBS_RFO write FOBS_RFO;

     function BotaoRR_TPFORMAOB : boolean;
    procedure PesquisaRR_TPFORMAOB(COD1 : String);
 end;

 type TPesq_RR_TPUNIDPROD = class
   private
     FCOD_RUP, FDESCR_RUP, FOBS_RUP : Variant;
   public
     property COD_RUP : Variant read FCOD_RUP write FCOD_RUP;
     property DESCR_RUP : Variant read FDESCR_RUP write FDESCR_RUP;
     property OBS_RUP : Variant read FOBS_RUP write FOBS_RUP;

     function BotaoRR_TPUNIDPROD : boolean;
    procedure PesquisaRR_TPUNIDPROD(COD1 : String);
 end;

 type TPesq_RR_TPINDRESTPROD = class
   private
     FCOD_RIP, FDESCR_RIP, FOBS_RIP : Variant;
   public
     property COD_RIP : Variant read FCOD_RIP write FCOD_RIP;
     property DESCR_RIP : Variant read FDESCR_RIP write FDESCR_RIP;
     property OBS_RIP : Variant read FOBS_RIP write FOBS_RIP;

     function BotaoRR_TPINDRESTPROD : boolean;
    procedure PesquisaRR_TPINDRESTPROD(COD1 : String);
 end;

 type TPesq_RR_TPINDRESTUSO = class
   private
     FCOD_RIU, FDESCR_RIU, FOBS_RIU : Variant;
   public
     property COD_RIU : Variant read FCOD_RIU write FCOD_RIU;
     property DESCR_RIU : Variant read FDESCR_RIU write FDESCR_RIU;
     property OBS_RIU : Variant read FOBS_RIU write FOBS_RIU;

     function BotaoRR_TPINDRESTUSO : boolean;
    procedure PesquisaRR_TPINDRESTUSO(COD1 : String);
 end;

 type TPesq_RR_TPPASTAGEM = class
   private
     FCOD_RTS, FDESCR_RTS : Variant;
   public
     property COD_RTS : Variant read FCOD_RTS write FCOD_RTS;
     property DESCR_RTS : Variant read FDESCR_RTS write FDESCR_RTS;

     function BotaoRR_TPPASTAGEM : boolean;
    procedure PesquisaRR_TPPASTAGEM(COD1 : String);
 end;

 type TPesq_Classificacao_RR = class
   private
     FCodigo, FDescricao, FAno, FValor : Variant;
   public
     property Codigo : Variant read FCodigo write FCodigo;
     property Descricao : Variant read FDescricao write FDescricao;
     property Ano : Variant read FAno write FAno;
     property Valor : Variant read FValor write FValor;

     function BotaoClassificacaoRR : boolean;
    procedure PesquisaClassificacaoRR(cod,exercicio : string);
 end;

 type TPesq_ZonaFiscal_RR = class
   private
     FCOD_RZN, FDESCR_RZN : Variant;
   public
     property COD_RZN : Variant read FCOD_RZN write FCOD_RZN;
     property DESCR_RZN : Variant read FDESCR_RZN write FDESCR_RZN;

     function BotaoRR_ZONAFISCAL : boolean;
    procedure PesquisaRR_ZONAFISCAL(COD1 : String);
 end;

 type TPesq_ZonaFiscalValor_RR = class
   private
     FCOD_RZN_RZV, FEXERCICIO_RZV, FVALOR_RZV : Variant;
   public
     property COD_RZN_RZV : Variant read FCOD_RZN_RZV write FCOD_RZN_RZV;
     property EXERCICIO_RZV : Variant read FEXERCICIO_RZV write FEXERCICIO_RZV;
     property VALOR_RZV : Variant read FVALOR_RZV write FVALOR_RZV;

     function BotaoRR_ZONA_VALOR(Exercicio : String) : boolean;
    procedure PesquisaRR_ZONA_VALOR(CodZona, Exercicio : String);
 end;

 type TPesq_CobRural = class
   private
     FCodigo, FDescricao, FPeriodo, FLei, FSorteio : Variant;
   public
     property Codigo : Variant read FCodigo write FCodigo;
     property Descricao : Variant read FDescricao write FDescricao;
     property Periodo : Variant read FPeriodo write FPeriodo;
     property Lei : Variant read FLei write FLei;
     property Sorteio : Variant read FSorteio write FSorteio;

     function BotaoCobRural : boolean;
    procedure PesquisaCobRural(cod : string);
 end;

 type TPesq_SetorRural = class
   private
     FSetor, FAno, FNome, FExped  : Variant;
   public
     property Ano : Variant read FAno write FAno;
     property Setor : Variant read FSetor write FSetor;
     property Nome : Variant read FNome write FNome;
     property Exped : Variant read FExped write FExped;

     function BuscaValorExpediente(ano : string) : variant;
     function BuscaPrimeiroSetor(ano : string) : variant;
     function BotaoSetor : boolean;
    procedure PesquisaSetor(cod, ano : string);
 end;

 type TPesq_TabCalculo_RR = class
   private
     FReceita, FDesdobro, FAbrev, FDescr, FTPCalc, FValor,
     FTPValor, FLIni, FLFim, FDivida  : Variant;
   public
     property Receita : Variant read FReceita write FReceita;
     property Desdobro : Variant read FDesdobro write FDesdobro;
     property Abrev : Variant read FAbrev write FAbrev;
     property Descr : Variant read FDescr write FDescr;
     property TPCalc : Variant read FTPCalc write FTPCalc;
     property Valor : Variant read FValor write FValor;
     property TPValor : Variant read FTPValor write FTPValor;
     property LIni : Variant read FLIni write FLIni;
     property LFim : Variant read FLFim write FLFim;
     property Divida : Variant read FDivida write FDivida;

     function BotaoTabCalculo : boolean;
    procedure PesquisaTabCalculo(cod, cod1 : string);
 end;

 type TPesq_Rural = class
   private
     FCADASTRO, FINSCRICAO, FDTCADASTRO, FCODSETORVENC, FCODCLASSIFICACAO,
     FCLASSIFICACAO, FCODCOBRANCA, FCOBRANCA, FCODPROPRIETARIO, FPROPRIETARIO,
     FRGPRIETARIO, FCNPJPRIETARIO, FFONEPRIETARIO, FEMAILPRIETARIO, FLOGRAPROPRIETARIO,
     FDEBAUTOMATICO, FIDBANCO, FCODBANCO, FBANCO, FCODAGENCIA, FCODCONTA, FDTINCDBAUTO,
     FDTFIMDBAUTO, FPROPRIEDADE, FFONEPROPRIEDADE, FRESPONSAVELPROPRIEDADE, FINSCRPRODUTOR,
     FINCRA, FAREAHEQUITARE, FAREAALQUEIRE, FAREAM2, FDISTANCIA, FPONTOS, FVVENAL,
     FCODLOGRA, FLOGRADOURO, FCOMPLEMENTO, FOBSLOGRA, FCODTPLOGRENTREGA, FTPLOGRENTREGA,
     FCODTITLOGRENTREGA, FTITLOGRENTREGA, FCODLOGENTREGA, FLOGENTREGA, FCODBAIENTREGA,
     FBAIENTREGA, FNROENTREGA, FCEPENTREGA, FCOMPLENTREGA, FCODCIDENTREGA, FCIDENTREGA,
     FUFENTREGA, FHISTORICO : Variant;
   public
     property CADASTRO : Variant read FCADASTRO write FCADASTRO;
     property INSCRICAO : Variant read FINSCRICAO write FINSCRICAO;
     property DTCADASTRO : Variant read FDTCADASTRO write FDTCADASTRO;
     property CODSETORVENC : Variant read FCODSETORVENC write FCODSETORVENC;
     property CODCLASSIFICACAO : Variant read FCODCLASSIFICACAO write FCODCLASSIFICACAO;
     property CLASSIFICACAO : Variant read FCLASSIFICACAO write FCLASSIFICACAO;
     property CODCOBRANCA : Variant read FCODCOBRANCA write FCODCOBRANCA;
     property COBRANCA : Variant read FCOBRANCA write FCOBRANCA;
     property CODPROPRIETARIO : Variant read FCODPROPRIETARIO write FCODPROPRIETARIO;
     property PROPRIETARIO : Variant read FPROPRIETARIO write FPROPRIETARIO;
     property RGPRIETARIO : Variant read FRGPRIETARIO write FRGPRIETARIO;
     property CNPJPRIETARIO : Variant read FCNPJPRIETARIO write FCNPJPRIETARIO;
     property FONEPRIETARIO : Variant read FFONEPRIETARIO write FFONEPRIETARIO;
     property EMAILPRIETARIO : Variant read FEMAILPRIETARIO write FEMAILPRIETARIO;
     property LOGRAPROPRIETARIO : Variant read FLOGRAPROPRIETARIO write FLOGRAPROPRIETARIO;
     property DEBAUTOMATICO : Variant read FDEBAUTOMATICO write FDEBAUTOMATICO;
     property IDBANCO : Variant read FIDBANCO write FIDBANCO;
     property CODBANCO : Variant read FCODBANCO write FCODBANCO;
     property BANCO : Variant read FBANCO write FBANCO;
     property CODAGENCIA : Variant read FCODAGENCIA write FCODAGENCIA;
     property CODCONTA : Variant read FCODCONTA write FCODCONTA;
     property DTINCDBAUTO : Variant read FDTINCDBAUTO write FDTINCDBAUTO;
     property DTFIMDBAUTO : Variant read FDTFIMDBAUTO write FDTFIMDBAUTO;
     property PROPRIEDADE : Variant read FPROPRIEDADE write FPROPRIEDADE;
     property FONEPROPRIEDADE : Variant read FFONEPROPRIEDADE write FFONEPROPRIEDADE;
     property RESPONSAVELPROPRIEDADE : Variant read FRESPONSAVELPROPRIEDADE write FRESPONSAVELPROPRIEDADE;
     property INSCRPRODUTOR : Variant read FINSCRPRODUTOR write FINSCRPRODUTOR;
     property INCRA : Variant read FINCRA write FINCRA;
     property AREAHEQUITARE : Variant read FAREAHEQUITARE write FAREAHEQUITARE;
     property AREAALQUEIRE : Variant read FAREAALQUEIRE write FAREAALQUEIRE;
     property AREAM2 : Variant read FAREAM2 write FAREAM2;
     property DISTANCIA : Variant read FDISTANCIA write FDISTANCIA;
     property PONTOS : Variant read FPONTOS write FPONTOS;
     property VVENAL : Variant read FVVENAL write FVVENAL;
     property CODLOGRA : Variant read FCODLOGRA write FCODLOGRA;
     property LOGRADOURO : Variant read FLOGRADOURO write FLOGRADOURO;
     property COMPLEMENTO : Variant read FCOMPLEMENTO write FCOMPLEMENTO;
     property OBSLOGRA : Variant read FOBSLOGRA write FOBSLOGRA;
     property CODTPLOGRENTREGA : Variant read FCODTPLOGRENTREGA write FCODTPLOGRENTREGA;
     property TPLOGRENTREGA : Variant read FTPLOGRENTREGA write FTPLOGRENTREGA;
     property CODTITLOGRENTREGA : Variant read FCODTITLOGRENTREGA write FCODTITLOGRENTREGA;
     property TITLOGRENTREGA : Variant read FTITLOGRENTREGA write FTITLOGRENTREGA;
     property CODLOGENTREGA : Variant read FCODLOGENTREGA write FCODLOGENTREGA;
     property LOGENTREGA : Variant read FLOGENTREGA write FLOGENTREGA;
     property CODBAIENTREGA : Variant read FCODBAIENTREGA write FCODBAIENTREGA;
     property BAIENTREGA : Variant read FBAIENTREGA write FBAIENTREGA;
     property NROENTREGA : Variant read FNROENTREGA write FNROENTREGA;
     property CEPENTREGA : Variant read FCEPENTREGA write FCEPENTREGA;
     property COMPLENTREGA : Variant read FCOMPLENTREGA write FCOMPLENTREGA;
     property CODCIDENTREGA : Variant read FCODCIDENTREGA write FCODCIDENTREGA;
     property CIDENTREGA : Variant read FCIDENTREGA write FCIDENTREGA;
     property UFENTREGA : Variant read FUFENTREGA write FUFENTREGA;
     property HISTORICO : Variant read FHISTORICO write FHISTORICO;

      function BotaoRural : boolean;
     procedure PesquisaRural(cod : string);
     procedure BuscaDadosRural(cod : string);
 end;

 type TPesq_ConfCalcRR = class
   private
     FCodigo, Fv01, Fv02, Fv03, Fv04, Fv05,
     Fv06, Fv07, Fv08, Fv09, Fv10 : Variant;
   public
     property Codigo : Variant read FCodigo write FCodigo;
     property v01 : Variant read Fv01 write Fv01;
     property v02 : Variant read Fv02 write Fv02;
     property v03 : Variant read Fv03 write Fv03;
     property v04 : Variant read Fv04 write Fv04;
     property v05 : Variant read Fv05 write Fv05;
     property v06 : Variant read Fv06 write Fv06;
     property v07 : Variant read Fv07 write Fv07;
     property v08 : Variant read Fv08 write Fv08;
     property v09 : Variant read Fv09 write Fv09;
     property v10 : Variant read Fv10 write Fv10;

     function BotaoConfig : boolean;
    procedure PesquisaConfig(cod : string);
    procedure CarregaConfig;
 end;

 type TPesq_ConfRR = class
   private
     FCodigo,
     Fv01, Fv02, Fv03, Fv04, Fv05,
     Fv06, Fv07, Fv08, Fv09, Fv10,
     Fv11, Fv12, Fv13, Fv14, Fv15,
     Fv16, Fv17, Fv18, Fv19, Fv20 : Variant;
   public
     property Codigo : Variant read FCodigo write FCodigo;
     property v01 : Variant read Fv01 write Fv01;
     property v02 : Variant read Fv02 write Fv02;
     property v03 : Variant read Fv03 write Fv03;
     property v04 : Variant read Fv04 write Fv04;
     property v05 : Variant read Fv05 write Fv05;
     property v06 : Variant read Fv06 write Fv06;
     property v07 : Variant read Fv07 write Fv07;
     property v08 : Variant read Fv08 write Fv08;
     property v09 : Variant read Fv09 write Fv09;
     property v10 : Variant read Fv10 write Fv10;
     property v11 : Variant read Fv11 write Fv11;
     property v12 : Variant read Fv12 write Fv12;
     property v13 : Variant read Fv13 write Fv13;
     property v14 : Variant read Fv14 write Fv14;
     property v15 : Variant read Fv15 write Fv15;
     property v16 : Variant read Fv16 write Fv16;
     property v17 : Variant read Fv17 write Fv17;
     property v18 : Variant read Fv18 write Fv18;
     property v19 : Variant read Fv19 write Fv19;
     property v20 : Variant read Fv20 write Fv20;

     function BotaoConfig : boolean;
    procedure PesquisaConfig(cod : string);
    procedure CarregaConfig;
 end;

 type TPesq_RR_CAD_DESDOCRT = class
   private
     FCOD_CRT_RR2, FCOD_RR2, FTIPOCAMPO_RR2, FDESCRI_RR2,
     FORDEM_RR2, FPADRAO_RR2, FDESCRI_CRT : Variant;
   public
     property COD_CRT_RR2 : Variant read FCOD_CRT_RR2 write FCOD_CRT_RR2;
     property COD_RR2 : Variant read FCOD_RR2 write FCOD_RR2;
     property TIPOCAMPO_RR2 : Variant read FTIPOCAMPO_RR2 write FTIPOCAMPO_RR2;
     property DESCRI_RR2 : Variant read FDESCRI_RR2 write FDESCRI_RR2;
     property ORDEM_RR2 : Variant read FORDEM_RR2 write FORDEM_RR2;
     property PADRAO_RR2 : Variant read FPADRAO_RR2 write FPADRAO_RR2;
     property DESCRI_CRT : Variant read FDESCRI_CRT write FDESCRI_CRT;

     function BotaoRR_CAD_DESDOCRT : boolean;
    procedure PesquisaRR_CAD_DESDOCRT(COD1, COD2 : String);
 end;

 type TPesq_RR_CLASSIFICA = class
   private
     FCOD_RCL, FEXERCICIO_RCL, FDESCR_RCL, FVALOR_RCL : Variant;
   public
     property COD_RCL : Variant read FCOD_RCL write FCOD_RCL;
     property EXERCICIO_RCL : Variant read FEXERCICIO_RCL write FEXERCICIO_RCL;
     property DESCR_RCL : Variant read FDESCR_RCL write FDESCR_RCL;
     property VALOR_RCL : Variant read FVALOR_RCL write FVALOR_RCL;

     function BotaoRR_CLASSIFICA : boolean;
    procedure PesquisaRR_CLASSIFICA(COD1, COD2 : String);
 end;

implementation

function TPesq_RR_TPZONAESPECIAL.BotaoRR_TPZONAESPECIAL : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RTZ Codigo, DESCR_RTZ Descricao, OBS_RTZ OBS '+
                    'FROM RR_TPZONAESPECIAL '+
                    'WHERE COD_EMP_RTZ = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RTZ';
      CAMPONOME  := 'DESCR_RTZ';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Tipo Zona Especial';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RTZ        := cdsCons.FieldValues['Codigo'];
        FDESCR_RTZ      := cdsCons.FieldValues['Descricao'];
        FOBS_RTZ        := cdsCons.FieldValues['OBS'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPZONAESPECIAL.PesquisaRR_TPZONAESPECIAL(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RTZ, DESCR_RTZ, OBS_RTZ '+
                    'FROM RR_TPZONAESPECIAL '+
                    'WHERE COD_EMP_RTZ = '+ SIA_Empresa +
                     '  AND COD_RTZ = '+ '''' + COD1 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_RTZ        := qrx.FieldValues['COD_RTZ'];
        FDESCR_RTZ      := qrx.FieldValues['DESCR_RTZ'];
        FOBS_RTZ        := qrx.FieldValues['OBS_RTZ'];
    end
    else BotaoRR_TPZONAESPECIAL;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_TPDESTIMV.BotaoRR_TPDESTIMV : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);

    with form do begin
      varSQLCons := 'SELECT COD_RDI Codigo, DESCR_RDI Descricao, OBS_RDI OBS '+
                    'FROM RR_TPDESTIMV '+
                    'WHERE COD_EMP_RDI = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RDI';
      CAMPONOME  := 'DESCR_RDI';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Destinação do Imóvel';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RDI        := cdsCons.FieldValues['Codigo'];
        FDESCR_RDI      := cdsCons.FieldValues['Descricao'];
        FOBS_RDI        := cdsCons.FieldValues['OBS'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPDESTIMV.PesquisaRR_TPDESTIMV(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RDI, DESCR_RDI, OBS_RDI '+
                    'FROM RR_TPDESTIMV '+
                    'WHERE COD_EMP_RDI = '+ SIA_Empresa +
                     '  AND COD_RDI = '+ '''' + COD1 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_RDI        := qrx.FieldValues['COD_RDI'];
        FDESCR_RDI      := qrx.FieldValues['DESCR_RDI'];
        FOBS_RDI        := qrx.FieldValues['OBS_RDI'];
    end
    else BotaoRR_TPDESTIMV;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_TPORIGLITIGIO.BotaoRR_TPORIGLITIGIO : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_ROL Codigo, DESCR_ROL Descricao, OBS_ROL OBS '+
                    'FROM RR_TPORIGLITIGIO '+
                    'WHERE COD_EMP_ROL = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_ROL';
      CAMPONOME  := 'DESCR_ROL';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Origem do Litígio';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_ROL        := cdsCons.FieldValues['Codigo'];
        FDESCR_ROL      := cdsCons.FieldValues['Descricao'];
        FOBS_ROL        := cdsCons.FieldValues['OBS'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPORIGLITIGIO.PesquisaRR_TPORIGLITIGIO(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_ROL, DESCR_ROL, OBS_ROL '+
                    'FROM RR_TPORIGLITIGIO '+
                    'WHERE COD_EMP_ROL = '+ SIA_Empresa +
                     '  AND COD_ROL = '+ '''' + COD1 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_ROL        := qrx.FieldValues['COD_ROL'];
        FDESCR_ROL      := qrx.FieldValues['DESCR_ROL'];
        FOBS_ROL        := qrx.FieldValues['OBS_ROL'];
    end
    else BotaoRR_TPORIGLITIGIO;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_TPFORMAOB.BotaoRR_TPFORMAOB : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);

    with form do begin
      varSQLCons := 'SELECT COD_RFO Codigo, DESCR_RFO Descricao, OBS_RFO OBS '+
                    'FROM RR_TPFORMAOB '+
                    'WHERE COD_EMP_RFO = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RFO';
      CAMPONOME  := 'DESCR_RFO';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Forma de Obtenção';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RFO        := cdsCons.FieldValues['Codigo'];
        FDESCR_RFO      := cdsCons.FieldValues['Descricao'];
        FOBS_RFO        := cdsCons.FieldValues['OBS'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPFORMAOB.PesquisaRR_TPFORMAOB(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RFO, DESCR_RFO, OBS_RFO '+
                    'FROM RR_TPFORMAOB '+
                    'WHERE COD_EMP_RFO = '+ SIA_Empresa +
                     '  AND COD_RFO = '+ '''' + COD1 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_RFO        := qrx.FieldValues['COD_RFO'];
        FDESCR_RFO      := qrx.FieldValues['DESCR_RFO'];
        FOBS_RFO        := qrx.FieldValues['OBS_RFO'];
    end
    else BotaoRR_TPFORMAOB;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_TPUNIDPROD.BotaoRR_TPUNIDPROD : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RUP Codigo, DESCR_RUP Descricao, OBS_RUP OBS '+
                    'FROM RR_TPUNIDPROD '+
                    'WHERE COD_EMP_RUP = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RUP';
      CAMPONOME  := 'DESCR_RUP';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Unidades';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RUP        := cdsCons.FieldValues['Codigo'];
        FDESCR_RUP      := cdsCons.FieldValues['Descricao'];
        FOBS_RUP        := cdsCons.FieldValues['OBS'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPUNIDPROD.PesquisaRR_TPUNIDPROD(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RUP, DESCR_RUP, OBS_RUP '+
                    'FROM RR_TPUNIDPROD '+
                    'WHERE COD_EMP_RUP = '+ SIA_Empresa +
                     '  AND COD_RUP = '+ '''' + COD1 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_RUP        := qrx.FieldValues['COD_RUP'];
        FDESCR_RUP      := qrx.FieldValues['DESCR_RUP'];
        FOBS_RUP        := qrx.FieldValues['OBS_RUP'];
    end
    else BotaoRR_TPUNIDPROD;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_TPINDRESTPROD.BotaoRR_TPINDRESTPROD : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RIP Codigo, DESCR_RIP Descricao, OBS_RIP OBS '+
                    'FROM RR_TPINDRESTPROD '+
                    'WHERE COD_EMP_RIP = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RIP';
      CAMPONOME  := 'DESCR_RIP';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Restrições Produtos';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RIP        := cdsCons.FieldValues['Codigo'];
        FDESCR_RIP      := cdsCons.FieldValues['Descricao'];
        FOBS_RIP        := cdsCons.FieldValues['OBS'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPINDRESTPROD.PesquisaRR_TPINDRESTPROD(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RIP, DESCR_RIP, OBS_RIP '+
                    'FROM RR_TPINDRESTPROD '+
                    'WHERE COD_EMP_RIP = '+ SIA_Empresa +
                     '  AND COD_RIP = '+ '''' + COD1 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_RIP        := qrx.FieldValues['COD_RIP'];
        FDESCR_RIP      := qrx.FieldValues['DESCR_RIP'];
        FOBS_RIP        := qrx.FieldValues['OBS_RIP'];
    end
    else BotaoRR_TPINDRESTPROD;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_TPINDRESTUSO.BotaoRR_TPINDRESTUSO : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RIU Codigo, DESCR_RIU Descricao, OBS_RIU Obs '+
                    'FROM RR_TPINDRESTUSO '+
                    'WHERE COD_EMP_RIU = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RIU';
      CAMPONOME  := 'DESCR_RIU';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Restrições de Uso';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RIU        := cdsCons.FieldValues['Codigo'];
        FDESCR_RIU      := cdsCons.FieldValues['Descricao'];
        FOBS_RIU        := cdsCons.FieldValues['Obs'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPINDRESTUSO.PesquisaRR_TPINDRESTUSO(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RIU, DESCR_RIU, OBS_RIU '+
                    'FROM RR_TPINDRESTUSO '+
                    'WHERE COD_EMP_RIU = '+ SIA_Empresa +
                     '  AND COD_RIU = '+ '''' + COD1 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_RIU        := qrx.FieldValues['COD_RIU'];
        FDESCR_RIU      := qrx.FieldValues['DESCR_RIU'];
        FOBS_RIU        := qrx.FieldValues['OBS_RIU'];
    end
    else BotaoRR_TPINDRESTUSO;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_TPPASTAGEM.BotaoRR_TPPASTAGEM : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);

    with form do begin
      varSQLCons := 'SELECT COD_RTS Codigo, DESCR_RTS Descricao '+
             'FROM RR_TPPASTAGEM '+
             'WHERE COD_EMP_RTS = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RTS';
      CAMPONOME  := 'DESCR_RTS';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Tipos de Pastagem';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RTS        := cdsCons.FieldValues['Codigo'];
        FDESCR_RTS      := cdsCons.FieldValues['Descricao'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_TPPASTAGEM.PesquisaRR_TPPASTAGEM(COD1 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RTS, DESCR_RTS '+
                    'FROM RR_TPPASTAGEM '+
                    'WHERE COD_EMP_RTS = '+ SIA_Empresa +
                     '  AND COD_RTS = '+ COD1 ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_RTS        := qrx.FieldValues['COD_RTS'];
        FDESCR_RTS      := qrx.FieldValues['DESCR_RTS'];
    end
    else BotaoRR_TPPASTAGEM;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_Classificacao_RR.BotaoClassificacaoRR : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RCL Codigo, '+
                    'DESCR_RCL Descricao, '+
                    'VALOR_RCL Valor, '+
                    'EXERCICIO_RCL Exercicio '+
             'FROM RR_CLASSIFICA '+
             'WHERE COD_EMP_RCL = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RCL';
      CAMPONOME  := 'DESCR_RCL';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Classificações';
      Tag        := 0; // Habilita o Botão NOVO
      Formulario := 'FCadClassifica';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCodigo    := cdsCons.FieldValues['Codigo'];
        FDescricao := cdsCons.FieldValues['Descricao'];
        FAno       := cdsCons.FieldValues['Exercicio'];
        FValor     := cdsCons.FieldValues['Valor'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_Classificacao_RR.PesquisaClassificacaoRR(cod,exercicio : string);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RCL Codigo, '+
                           'DESCR_RCL Descricao, '+
                           'VALOR_RCl Valor, '+
                           'EXERCICIO_RCL Exercicio '+
                    'FROM RR_CLASSIFICA '+
                    'WHERE COD_EMP_RCL = '+ SIA_Empresa +
                     ' AND COD_RCL = '+ cod+' AND EXERCICIO_RCL='+exercicio;
    qrx.Open;

    if not qrx.IsEmpty then begin
       FCodigo    := qrx.FieldValues['Codigo'];
       FDescricao := qrx.FieldValues['Descricao'];
       FAno       := qrx.FieldValues['Exercicio'];
       FValor     := qrx.FieldValues['Valor'];
    end
    else BotaoClassificacaoRR;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_CobRural.BotaoCobRural : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_COB Codigo, DESCRI_COB Descricao, PERIODO_COB Periodo, '+
                    'NRO_LEI_COB Lei, SORTEIO_COB Sorteio '+
             'FROM RR_COBRANCA '+
             'WHERE COD_EMP_COB = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_COB';
      CAMPONOME  := 'DESCRI_COB';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Cobrança';
      Tag        := 0; // Habilita o Botão NOVO
      Formulario := 'FCadCobranca';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCodigo    := cdsCons.FieldValues['Codigo'];
        FDescricao := cdsCons.FieldValues['Descricao'];
        FPeriodo   := cdsCons.FieldValues['Periodo'];
        FLei       := cdsCons.FieldValues['Lei'];
        FSorteio   := cdsCons.FieldValues['Sorteio'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_CobRural.PesquisaCobRural(cod : string);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_COB Codigo, DESCRI_COB Descricao, PERIODO_COB Periodo, '+
                           'NRO_LEI_COB Lei, SORTEIO_COB Sorteio '+
                    'FROM RR_COBRANCA '+
                    'WHERE COD_EMP_COB = '+ SIA_Empresa +
                     ' AND COD_COB = '+''''+ cod +'''';
    qrx.Open;

    if not qrx.IsEmpty then begin
       FCodigo    := qrx.FieldValues['Codigo'];
       FDescricao := qrx.FieldValues['Descricao'];
       FPeriodo   := qrx.FieldValues['Periodo'];
       FLei       := qrx.FieldValues['Lei'];
       FSorteio   := qrx.FieldValues['Sorteio'];
    end
    else BotaoCobRural;
 finally
    FreeAndNil(qrx);
 end;
end;

function TPesq_SetorRural.BuscaValorExpediente(ano : string) : variant;
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT FIRST 1 EXPED_STR '+
                    'FROM RR_SETOR '+
                    'WHERE COD_EMP_STR = '+ SIA_Empresa +
                    ' AND ANO_STR = '+ ano;
    qrx.Open;
    if  not qrx.IsEmpty then
      result := qrx.FieldByName('EXPED_STR').Value;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_SetorRural.BuscaPrimeiroSetor(ano : string) : variant;
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT FIRST 1 COD_STR '+
                    'FROM RR_SETOR '+
                    'WHERE COD_EMP_STR = '+ SIA_Empresa +
                    ' AND ANO_STR = '+ ano;
    qrx.Open;
    if  not qrx.IsEmpty then
      result := qrx.FieldByName('COD_STR').Value;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_SetorRural.BotaoSetor : Boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons     := 'SELECT ANO_STR Ano, COD_STR Codigo, NOM_LANCA_STR Nome, EXPED_STR Expediente '+
                 'FROM RR_SETOR '+
                 'WHERE COD_EMP_STR = '+ SIA_Empresa;

      CAMPOCOD  := 'ANO_STR';
      CAMPONOME := 'COD_STR';
      PCODIGO   := 'Ano';
      PNOME     := 'Codigo';
      Caption   := 'Consulta Setor de Vencimentos';
      Tag       := 0; // Habilita o Botão NOVO
      Formulario := 'FCadSetorVencRR';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FSetor := cdsCons.FieldByName('Codigo').Value;
        FNome  := cdsCons.FieldByName('Nome').Value;
        FAno   := cdsCons.FieldByName('Ano').Value;
        FExped := cdsCons.FieldByName('Expediente').Value;
      end
      else result := False;
    end;
  finally
    FreeAndNil(Form);
  end;
end;

procedure TPesq_SetorRural.PesquisaSetor(cod, ano : string);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT ANO_STR Ano, COD_STR Codigo, NOM_LANCA_STR Nome, EXPED_STR Expediente '+
                    'FROM RR_SETOR '+
                    'WHERE COD_EMP_STR = '+ SIA_Empresa +
                    ' AND COD_STR = '+''''+ cod +''''+
                    ' AND ANO_STR = '+ ano;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FSetor := qrx.FieldByName('Codigo').Value;
        FNome  := qrx.FieldByName('Nome').Value;
        FAno   := qrx.FieldByName('Ano').Value;
        FExped := qrx.FieldByName('Expediente').Value;
    end
    else BotaoSetor;
 finally
    FreeAndNil(qrx);
 end;
end;

function TPesq_TabCalculo_RR.BotaoTabCalculo : Boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons     := 'SELECT COD_REC_RCA Receita, COD_DESDOREC_RCA Desdobro, '+
                        'ABRE_GUIA_RCA Abreviacao, DESCRI_RCA Descricao, '+
                        'TIP_CALC_RCA TipoCalculo, VALOR_RCA Valor, TIP_VALOR_RCA TipoValor, '+
                        'LINF_RCA LimiteIncial, LSUP_RCA LimiteFinal, DIVIDA_RCA EhDivida '+
                 'FROM RR_CALCULO '+
                 'WHERE COD_EMP_RCA = '+ SIA_Empresa;

      CAMPOCOD  := 'COD_REC_RCA';
      CAMPONOME := 'ABRE_GUIA_RCA';
      PCODIGO   := 'Receita';
      PNOME     := 'Abreviacao';
      Caption   := 'Consulta Tabela de Cálculo';
      Tag       := 1; // Habilita o Botão NOVO
      Formulario := 'FCadTabCalculo';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FReceita  := cdsCons.FieldByName('Receita').Value;
        FDesdobro := cdsCons.FieldByName('Desdobro').Value;
        FAbrev    := cdsCons.FieldByName('Abreviacao').Value;
        FDescr    := cdsCons.FieldByName('Descricao').Value;
        FTPCalc   := cdsCons.FieldByName('TipoCalculo').Value;
        FValor    := cdsCons.FieldByName('Valor').Value;
        FTPValor  := cdsCons.FieldByName('TipoValor').Value;
        FLIni     := cdsCons.FieldByName('LimiteIncial').Value;
        FLFim     := cdsCons.FieldByName('LimiteFinal').Value;
        FDivida   := cdsCons.FieldByName('EhDivida').Value;
      end
      else result := False;
    end;
  finally
    FreeAndNil(Form);
  end;
end;

procedure TPesq_TabCalculo_RR.PesquisaTabCalculo(cod, cod1 : string);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_REC_RCA Receita, COD_DESDOREC_RCA Desdobro, '+
                           'ABRE_GUIA_RCA Abreviacao, DESCRI_RCA Descricao, '+
                           'TIP_CALC_RCA TipoCalculo, VALOR_RCA Valor, TIP_VALOR_RCA TipoValor, '+
                           'LINF_RCA LimiteIncial, LSUP_RCA LimiteFinal, DIVIDA_RCA EhDivida '+
                    'FROM RR_CALCULO '+
                    'WHERE COD_EMP_RCA = '+ SIA_Empresa +
                     ' AND COD_REC_RCA = '+ cod +
                     ' AND COD_DESDOREC_RCA = '+ cod1;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FReceita  := qrx.FieldByName('Receita').Value;
        FDesdobro := qrx.FieldByName('Desdobro').Value;
        FAbrev    := qrx.FieldByName('Abreviacao').Value;
        FDescr    := qrx.FieldByName('Descricao').Value;
        FTPCalc   := qrx.FieldByName('TipoCalculo').Value;
        FValor    := qrx.FieldByName('Valor').Value;
        FTPValor  := qrx.FieldByName('TipoValor').Value;
        FLIni     := qrx.FieldByName('LimiteIncial').Value;
        FLFim     := qrx.FieldByName('LimiteFinal').Value;
        FDivida   := qrx.FieldByName('EhDivida').Value;
    end
    else BotaoTabCalculo;
 finally
    FreeAndNil(qrx);
 end;
end;

function TPesq_Rural.BotaoRural : Boolean;
var form : TFConsRural;
begin
  try
    result := True;
    form :=  TFConsRural.Create(Application.Owner);
    with form do begin
      varSQLRur     := 'SELECT RR_CAD_RURAL.COD_RRR CADASTRO, '+
                        'RR_CAD_RURAL.MATRIC_RRR INSCRICAO, '+
                        'RR_CAD_RURAL.DTCAD_RRR DTCADASTRO, '+
                        'RR_CAD_RURAL.COD_STR_RRR CODSETORVENC, '+
                        'RR_CAD_RURAL.COD_CLASS_RRR CODCLASSIFICACAO, '+
                        'RR_CLASSIFICA.DESCR_RCL CLASSIFICACAO, '+
                        'RR_CAD_RURAL.COD_COB_RRR CODCOBRANCA, '+
                        'RR_COBRANCA.DESCRI_COB COBRANCA, '+
                        'RR_CAD_RURAL.COD_CNT_RRR CODPROPRIETARIO, '+
                        'GR_CONTRIBUINTES.NOME_CNT PROPRIETARIO, '+
                        'GR_CONTRIBUINTES.RG_CNT RGPRIETARIO, '+
                        'GR_CONTRIBUINTES.CNPJ_CNT CNPJPRIETARIO, '+
                        'GR_CONTRIBUINTES.FONE_CNT FONEPRIETARIO, '+
                        'GR_CONTRIBUINTES.EMAIL_CNT EMAILPRIETARIO, '+
                        'LOGRA.NOME_LOG LOGRAPROPRIETARIO, '+
                        'RR_CAD_RURAL.DEBAU_RRR DEBAUTOMATICO, '+
                        'RR_CAD_RURAL.COD_BCO_RRR IDBANCO, '+
                        'RR_CAD_RURAL.COD_BANCO_RRR CODBANCO, '+
                        'GR_BANCO.NOME_BCO BANCO, '+
                        'RR_CAD_RURAL.COD_AGEN_RRR CODAGENCIA, '+
                        'RR_CAD_RURAL.COD_CONTA_RRR CODCONTA, '+
                        'RR_CAD_RURAL.DTDEBAU_INC_RRR DTINCDBAUTO, '+
                        'RR_CAD_RURAL.DTDEBAU_IXC_RRR DTFIMDBAUTO, '+
                        'RR_CAD_RURAL.PROPRIEDADE_RRR PROPRIEDADE, '+
                        'RR_CAD_RURAL.FONEP_RRR FONEPROPRIEDADE, '+
                        'RR_CAD_RURAL.RESPONSA_RRR RESPONSAVELPROPRIEDADE, '+
                        'RR_CAD_RURAL.INSCRP_RRR INSCRPRODUTOR, '+
                        'RR_CAD_RURAL.INCRA_RRR INCRA, '+
                        'RR_CAD_RURAL.AREAH_RRR AREAHEQUITARE, '+
                        'RR_CAD_RURAL.AREAE_RRR AREAALQUEIRE, '+
                        'RR_CAD_RURAL.AREAM_RRR AREAM2, '+
                        'RR_CAD_RURAL.DISTANCIA_RRR DISTANCIA, '+
                        'RR_CAD_RURAL.PONTOS_RRR PONTOS, '+
                        'RR_CAD_RURAL.VVENAL_RRR VVENAL, '+
                        'RR_CAD_RURAL.COD_LOG_RRR CODLOGRA, '+
                        'RR_CAD_RURAL.LOGRA_RRR LOGRADOURO, '+
                        'RR_CAD_RURAL.COMPL_RRR COMPLEMENTO, '+
                        'RR_CAD_RURAL.OBSLOGRA_RRR OBSLOGRA, '+
                        'RR_CAD_RURAL.COD_TIPE_RRR CODTPLOGRENTREGA, '+
                        'RR_CAD_RURAL.TIPOLOGE_RRR TPLOGRENTREGA, '+
                        'RR_CAD_RURAL.COD_TITE_RRR CODTITLOGRENTREGA, '+
                        'RR_CAD_RURAL.TITULOLOGE_RRR TITLOGRENTREGA, '+
                        'RR_CAD_RURAL.COD_LOGE_RRR CODLOGENTREGA, '+
                        'RR_CAD_RURAL.LOGRAE_RRR LOGENTREGA, '+
                        'RR_CAD_RURAL.COD_BAIE_RRR CODBAIENTREGA, '+
                        'RR_CAD_RURAL.BAIRROE_RRR BAIENTREGA, '+
                        'RR_CAD_RURAL.NUMEROE_RRR NROENTREGA, '+
                        'RR_CAD_RURAL.CEPE_RRR CEPENTREGA, '+
                        'RR_CAD_RURAL.COMPLEE_RRR COMPLENTREGA, '+
                        'RR_CAD_RURAL.COD_CIDE_RRR CODCIDENTREGA, '+
                        'CIDE.NOME_CID CIDENTREGA, '+
                        'RR_CAD_RURAL.UFE_RRR UFENTREGA, '+
                        'RR_CAD_RURAL.HISTO_RRR HISTORICO '+
                 'FROM RR_CAD_RURAL '+
                 'LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR '+
                 'LEFT JOIN GR_BANCO ON COD_EMP_BCO = COD_EMP_RRR AND COD_BCO = COD_BCO_RRR '+
                 'LEFT JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR '+
                 'LEFT JOIN GR_CONTRIBUINTES ON COD_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_CNT_RRR '+
                 'LEFT JOIN GR_LOGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP_RRR AND LOGRA.COD_LOG = COD_LOG_RRR '+
                 'LEFT JOIN CEP_TIPOLOGIA TIPENT ON TIPENT.COD_TIP_CEP = COD_TIPE_RRR '+
                 'LEFT JOIN CEP_TITULACAO TITENT ON TITENT.COD_TIT = COD_TITE_RRR '+
                 'LEFT JOIN GR_LOGRA LOGRAE ON LOGRAE.COD_EMP_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = COD_LOGE_RRR '+
                 'LEFT JOIN GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_EMP_RRR AND BAIE.COD_BAI = COD_BAIE_RRR '+
                 'LEFT JOIN GR_CIDADE CIDE ON CIDE.COD_CID = COD_CIDE_RRR '+
                 'WHERE RR_CAD_RURAL.COD_EMP_RRR = '+ SIA_Empresa;

      Caption   := 'Consulta Rural';
      Tag       := 0; // Habilita o Botão NOVO

      if showmodal = mrOk then begin
        FCADASTRO               := cdsCons.FieldByName('CADASTRO').Value;
        FINSCRICAO              := cdsCons.FieldByName('INSCRICAO').Value;
        FDTCADASTRO             := cdsCons.FieldByName('DTCADASTRO').Value;
        FCODSETORVENC           := cdsCons.FieldByName('CODSETORVENC').Value;
        FCODCLASSIFICACAO       := cdsCons.FieldByName('CODCLASSIFICACAO').Value;
        FCLASSIFICACAO          := cdsCons.FieldByName('CLASSIFICACAO').Value;
        FCODCOBRANCA            := cdsCons.FieldByName('CODCOBRANCA').Value;
        FCOBRANCA               := cdsCons.FieldByName('COBRANCA').Value;
        FCODPROPRIETARIO        := cdsCons.FieldByName('CODPROPRIETARIO').Value;
        FPROPRIETARIO           := cdsCons.FieldByName('PROPRIETARIO').Value;
        FRGPRIETARIO            := cdsCons.FieldByName('RGPRIETARIO').Value;
        FCNPJPRIETARIO          := cdsCons.FieldByName('CNPJPRIETARIO').Value;
        FFONEPRIETARIO          := cdsCons.FieldByName('FONEPRIETARIO').Value;
        FEMAILPRIETARIO         := cdsCons.FieldByName('EMAILPRIETARIO').Value;
        FLOGRAPROPRIETARIO      := cdsCons.FieldByName('LOGRAPROPRIETARIO').Value;
        FDEBAUTOMATICO          := cdsCons.FieldByName('DEBAUTOMATICO').Value;
        FIDBANCO                := cdsCons.FieldByName('IDBANCO').Value;
        FCODBANCO               := cdsCons.FieldByName('CODBANCO').Value;
        FBANCO                  := cdsCons.FieldByName('BANCO').Value;
        FCODAGENCIA             := cdsCons.FieldByName('CODAGENCIA').Value;
        FCODCONTA               := cdsCons.FieldByName('CODCONTA').Value;
        FDTINCDBAUTO            := cdsCons.FieldByName('DTINCDBAUTO').Value;
        FDTFIMDBAUTO            := cdsCons.FieldByName('DTFIMDBAUTO').Value;
        FPROPRIEDADE            := cdsCons.FieldByName('PROPRIEDADE').Value;
        FFONEPROPRIEDADE        := cdsCons.FieldByName('FONEPROPRIEDADE').Value;
        FRESPONSAVELPROPRIEDADE := cdsCons.FieldByName('RESPONSAVELPROPRIEDADE').Value;
        FINSCRPRODUTOR          := cdsCons.FieldByName('INSCRPRODUTOR').Value;
        FINCRA                  := cdsCons.FieldByName('INCRA').Value;
        FAREAHEQUITARE          := cdsCons.FieldByName('AREAHEQUITARE').Value;
        FAREAALQUEIRE           := cdsCons.FieldByName('AREAALQUEIRE').Value;
        FAREAM2                 := cdsCons.FieldByName('AREAM2').Value;
        FDISTANCIA              := cdsCons.FieldByName('DISTANCIA').Value;
        FPONTOS                 := cdsCons.FieldByName('PONTOS').Value;
        FVVENAL                 := cdsCons.FieldByName('VVENAL').Value;
        FCODLOGRA               := cdsCons.FieldByName('CODLOGRA').Value;
        FLOGRADOURO             := cdsCons.FieldByName('LOGRADOURO').Value;
        FCOMPLEMENTO            := cdsCons.FieldByName('COMPLEMENTO').Value;
        FOBSLOGRA               := cdsCons.FieldByName('OBSLOGRA').Value;
        FCODTPLOGRENTREGA       := cdsCons.FieldByName('CODTPLOGRENTREGA').Value;
        FTPLOGRENTREGA          := cdsCons.FieldByName('TPLOGRENTREGA').Value;
        FCODTITLOGRENTREGA      := cdsCons.FieldByName('CODTITLOGRENTREGA').Value;
        FTITLOGRENTREGA         := cdsCons.FieldByName('TITLOGRENTREGA').Value;
        FCODLOGENTREGA          := cdsCons.FieldByName('CODLOGENTREGA').Value;
        FLOGENTREGA             := cdsCons.FieldByName('LOGENTREGA').Value;
        FCODBAIENTREGA          := cdsCons.FieldByName('CODBAIENTREGA').Value;
        FBAIENTREGA             := cdsCons.FieldByName('BAIENTREGA').Value;
        FNROENTREGA             := cdsCons.FieldByName('NROENTREGA').Value;
        FCEPENTREGA             := cdsCons.FieldByName('CEPENTREGA').Value;
        FCOMPLENTREGA           := cdsCons.FieldByName('COMPLENTREGA').Value;
        FCODCIDENTREGA          := cdsCons.FieldByName('CODCIDENTREGA').Value;
        FCIDENTREGA             := cdsCons.FieldByName('CIDENTREGA').Value;
        FUFENTREGA              := cdsCons.FieldByName('UFENTREGA').Value;
        FHISTORICO              := cdsCons.FieldByName('HISTORICO').Value;
      end
      else result := False;
    end;
  finally
    FreeAndNil(Form);
  end;
end;

procedure TPesq_Rural.PesquisaRural(cod : string);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT RR_CAD_RURAL.COD_RRR CADASTRO, '+
                           'RR_CAD_RURAL.MATRIC_RRR INSCRICAO, '+
                           'RR_CAD_RURAL.DTCAD_RRR DTCADASTRO, '+
                           'RR_CAD_RURAL.COD_STR_RRR CODSETORVENC, '+
                           'RR_CAD_RURAL.COD_CLASS_RRR CODCLASSIFICACAO, '+
                           'RR_CLASSIFICA.DESCR_RCL CLASSIFICACAO, '+
                           'RR_CAD_RURAL.COD_COB_RRR CODCOBRANCA, '+
                           'RR_COBRANCA.DESCRI_COB COBRANCA, '+
                           'RR_CAD_RURAL.COD_CNT_RRR CODPROPRIETARIO, '+
                           'GR_CONTRIBUINTES.NOME_CNT PROPRIETARIO, '+
                           'GR_CONTRIBUINTES.RG_CNT RGPRIETARIO, '+
                           'GR_CONTRIBUINTES.CNPJ_CNT CNPJPRIETARIO, '+
                           'GR_CONTRIBUINTES.FONE_CNT FONEPRIETARIO, '+
                           'GR_CONTRIBUINTES.EMAIL_CNT EMAILPRIETARIO, '+
                           'LOGRA.NOME_LOG LOGRAPROPRIETARIO, '+
                           'RR_CAD_RURAL.DEBAU_RRR DEBAUTOMATICO, '+
                           'RR_CAD_RURAL.COD_BCO_RRR IDBANCO, '+
                           'RR_CAD_RURAL.COD_BANCO_RRR CODBANCO, '+
                           'GR_BANCO.NOME_BCO BANCO, '+
                           'RR_CAD_RURAL.COD_AGEN_RRR CODAGENCIA, '+
                           'RR_CAD_RURAL.COD_CONTA_RRR CODCONTA, '+
                           'RR_CAD_RURAL.DTDEBAU_INC_RRR DTINCDBAUTO, '+
                           'RR_CAD_RURAL.DTDEBAU_IXC_RRR DTFIMDBAUTO, '+
                           'RR_CAD_RURAL.PROPRIEDADE_RRR PROPRIEDADE, '+
                           'RR_CAD_RURAL.FONEP_RRR FONEPROPRIEDADE, '+
                           'RR_CAD_RURAL.RESPONSA_RRR RESPONSAVELPROPRIEDADE, '+
                           'RR_CAD_RURAL.INSCRP_RRR INSCRPRODUTOR, '+
                           'RR_CAD_RURAL.INCRA_RRR INCRA, '+
                           'RR_CAD_RURAL.AREAH_RRR AREAHEQUITARE, '+
                           'RR_CAD_RURAL.AREAE_RRR AREAALQUEIRE, '+
                           'RR_CAD_RURAL.AREAM_RRR AREAM2, '+
                           'RR_CAD_RURAL.DISTANCIA_RRR DISTANCIA, '+
                           'RR_CAD_RURAL.PONTOS_RRR PONTOS, '+
                           'RR_CAD_RURAL.VVENAL_RRR VVENAL, '+
                           'RR_CAD_RURAL.COD_LOG_RRR CODLOGRA, '+
                           'RR_CAD_RURAL.LOGRA_RRR LOGRADOURO, '+
                           'RR_CAD_RURAL.COMPL_RRR COMPLEMENTO, '+
                           'RR_CAD_RURAL.OBSLOGRA_RRR OBSLOGRA, '+
                           'RR_CAD_RURAL.COD_TIPE_RRR CODTPLOGRENTREGA, '+
                           'RR_CAD_RURAL.TIPOLOGE_RRR TPLOGRENTREGA, '+
                           'RR_CAD_RURAL.COD_TITE_RRR CODTITLOGRENTREGA, '+
                           'RR_CAD_RURAL.TITULOLOGE_RRR TITLOGRENTREGA, '+
                           'RR_CAD_RURAL.COD_LOGE_RRR CODLOGENTREGA, '+
                           'RR_CAD_RURAL.LOGRAE_RRR LOGENTREGA, '+
                           'RR_CAD_RURAL.COD_BAIE_RRR CODBAIENTREGA, '+
                           'RR_CAD_RURAL.BAIRROE_RRR BAIENTREGA, '+
                           'RR_CAD_RURAL.NUMEROE_RRR NROENTREGA, '+
                           'RR_CAD_RURAL.CEPE_RRR CEPENTREGA, '+
                           'RR_CAD_RURAL.COMPLEE_RRR COMPLENTREGA, '+
                           'RR_CAD_RURAL.COD_CIDE_RRR CODCIDENTREGA, '+
                           'CIDE.NOME_CID CIDENTREGA, '+
                           'RR_CAD_RURAL.UFE_RRR UFENTREGA, '+
                           'RR_CAD_RURAL.HISTO_RRR HISTORICO '+
                    'FROM RR_CAD_RURAL '+
                    'LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR '+
                    'LEFT JOIN GR_BANCO ON COD_EMP_BCO = COD_EMP_RRR AND COD_BCO = COD_BCO_RRR '+
                    'LEFT JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR '+
                    'LEFT JOIN GR_CONTRIBUINTES ON COD_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_CNT_RRR '+
                    'LEFT JOIN GR_LOGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP_RRR AND LOGRA.COD_LOG = COD_LOG_RRR '+
                    'LEFT JOIN CEP_TIPOLOGIA TIPENT ON TIPENT.COD_TIP_CEP = COD_TIPE_RRR '+
                    'LEFT JOIN CEP_TITULACAO TITENT ON TITENT.COD_TIT = COD_TITE_RRR '+
                    'LEFT JOIN GR_LOGRA LOGRAE ON LOGRAE.COD_EMP_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = COD_LOGE_RRR '+
                    'LEFT JOIN GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_EMP_RRR AND BAIE.COD_BAI = COD_BAIE_RRR '+
                    'LEFT JOIN GR_CIDADE CIDE ON CIDE.COD_CID = COD_CIDE_RRR '+
                    'WHERE RR_CAD_RURAL.COD_EMP_RRR = '+ SIA_Empresa +
                     ' AND RR_CAD_RURAL.COD_RRR = '+''''+ MontaMascara(cod, 'RUR', SIA_Empresa)+'''';
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCADASTRO               := qrx.FieldByName('CADASTRO').Value;
        FINSCRICAO              := qrx.FieldByName('INSCRICAO').Value;
        FDTCADASTRO             := qrx.FieldByName('DTCADASTRO').Value;
        FCODSETORVENC           := qrx.FieldByName('CODSETORVENC').Value;
        FCODCLASSIFICACAO       := qrx.FieldByName('CODCLASSIFICACAO').Value;
        FCLASSIFICACAO          := qrx.FieldByName('CLASSIFICACAO').Value;
        FCODCOBRANCA            := qrx.FieldByName('CODCOBRANCA').Value;
        FCOBRANCA               := qrx.FieldByName('COBRANCA').Value;
        FCODPROPRIETARIO        := qrx.FieldByName('CODPROPRIETARIO').Value;
        FPROPRIETARIO           := qrx.FieldByName('PROPRIETARIO').Value;
        FRGPRIETARIO            := qrx.FieldByName('RGPRIETARIO').Value;
        FCNPJPRIETARIO          := qrx.FieldByName('CNPJPRIETARIO').Value;
        FFONEPRIETARIO          := qrx.FieldByName('FONEPRIETARIO').Value;
        FEMAILPRIETARIO         := qrx.FieldByName('EMAILPRIETARIO').Value;
        FLOGRAPROPRIETARIO      := qrx.FieldByName('LOGRAPROPRIETARIO').Value;
        FDEBAUTOMATICO          := qrx.FieldByName('DEBAUTOMATICO').Value;
        FIDBANCO                := qrx.FieldByName('IDBANCO').Value;
        FCODBANCO               := qrx.FieldByName('CODBANCO').Value;
        FBANCO                  := qrx.FieldByName('BANCO').Value;
        FCODAGENCIA             := qrx.FieldByName('CODAGENCIA').Value;
        FCODCONTA               := qrx.FieldByName('CODCONTA').Value;
        FDTINCDBAUTO            := qrx.FieldByName('DTINCDBAUTO').Value;
        FDTFIMDBAUTO            := qrx.FieldByName('DTFIMDBAUTO').Value;
        FPROPRIEDADE            := qrx.FieldByName('PROPRIEDADE').Value;
        FFONEPROPRIEDADE        := qrx.FieldByName('FONEPROPRIEDADE').Value;
        FRESPONSAVELPROPRIEDADE := qrx.FieldByName('RESPONSAVELPROPRIEDADE').Value;
        FINSCRPRODUTOR          := qrx.FieldByName('INSCRPRODUTOR').Value;
        FINCRA                  := qrx.FieldByName('INCRA').Value;
        FAREAHEQUITARE          := qrx.FieldByName('AREAHEQUITARE').Value;
        FAREAALQUEIRE           := qrx.FieldByName('AREAALQUEIRE').Value;
        FAREAM2                 := qrx.FieldByName('AREAM2').Value;
        FDISTANCIA              := qrx.FieldByName('DISTANCIA').Value;
        FPONTOS                 := qrx.FieldByName('PONTOS').Value;
        FVVENAL                 := qrx.FieldByName('VVENAL').Value;
        FCODLOGRA               := qrx.FieldByName('CODLOGRA').Value;
        FLOGRADOURO             := qrx.FieldByName('LOGRADOURO').Value;
        FCOMPLEMENTO            := qrx.FieldByName('COMPLEMENTO').Value;
        FOBSLOGRA               := qrx.FieldByName('OBSLOGRA').Value;
        FCODTPLOGRENTREGA       := qrx.FieldByName('CODTPLOGRENTREGA').Value;
        FTPLOGRENTREGA          := qrx.FieldByName('TPLOGRENTREGA').Value;
        FCODTITLOGRENTREGA      := qrx.FieldByName('CODTITLOGRENTREGA').Value;
        FTITLOGRENTREGA         := qrx.FieldByName('TITLOGRENTREGA').Value;
        FCODLOGENTREGA          := qrx.FieldByName('CODLOGENTREGA').Value;
        FLOGENTREGA             := qrx.FieldByName('LOGENTREGA').Value;
        FCODBAIENTREGA          := qrx.FieldByName('CODBAIENTREGA').Value;
        FBAIENTREGA             := qrx.FieldByName('BAIENTREGA').Value;
        FNROENTREGA             := qrx.FieldByName('NROENTREGA').Value;
        FCEPENTREGA             := qrx.FieldByName('CEPENTREGA').Value;
        FCOMPLENTREGA           := qrx.FieldByName('COMPLENTREGA').Value;
        FCODCIDENTREGA          := qrx.FieldByName('CODCIDENTREGA').Value;
        FCIDENTREGA             := qrx.FieldByName('CIDENTREGA').Value;
        FUFENTREGA              := qrx.FieldByName('UFENTREGA').Value;
        FHISTORICO              := qrx.FieldByName('HISTORICO').Value;
    end
    else BotaoRural;
 finally
    FreeAndNil(qrx);
 end;
end;

procedure TPesq_Rural.BuscaDadosRural(cod : string);
var qrx : TSQLQuery;
begin
  try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT RR_CAD_RURAL.COD_RRR CADASTRO, '+
                           'RR_CAD_RURAL.MATRIC_RRR INSCRICAO, '+
                           'RR_CAD_RURAL.DTCAD_RRR DTCADASTRO, '+
                           'RR_CAD_RURAL.COD_STR_RRR CODSETORVENC, '+
                           'RR_CAD_RURAL.COD_CLASS_RRR CODCLASSIFICACAO, '+
                           'RR_CLASSIFICA.DESCR_RCL CLASSIFICACAO, '+
                           'RR_CAD_RURAL.COD_COB_RRR CODCOBRANCA, '+
                           'RR_COBRANCA.DESCRI_COB COBRANCA, '+
                           'RR_CAD_RURAL.COD_CNT_RRR CODPROPRIETARIO, '+
                           'GR_CONTRIBUINTES.NOME_CNT PROPRIETARIO, '+
                           'GR_CONTRIBUINTES.RG_CNT RGPRIETARIO, '+
                           'GR_CONTRIBUINTES.CNPJ_CNT CNPJPRIETARIO, '+
                           'GR_CONTRIBUINTES.FONE_CNT FONEPRIETARIO, '+
                           'GR_CONTRIBUINTES.EMAIL_CNT EMAILPRIETARIO, '+
                           'LOGRA.NOME_LOG LOGRAPROPRIETARIO, '+
                           'RR_CAD_RURAL.DEBAU_RRR DEBAUTOMATICO, '+
                           'RR_CAD_RURAL.COD_BCO_RRR IDBANCO, '+
                           'RR_CAD_RURAL.COD_BANCO_RRR CODBANCO, '+
                           'GR_BANCO.NOME_BCO BANCO, '+
                           'RR_CAD_RURAL.COD_AGEN_RRR CODAGENCIA, '+
                           'RR_CAD_RURAL.COD_CONTA_RRR CODCONTA, '+
                           'RR_CAD_RURAL.DTDEBAU_INC_RRR DTINCDBAUTO, '+
                           'RR_CAD_RURAL.DTDEBAU_IXC_RRR DTFIMDBAUTO, '+
                           'RR_CAD_RURAL.PROPRIEDADE_RRR PROPRIEDADE, '+
                           'RR_CAD_RURAL.FONEP_RRR FONEPROPRIEDADE, '+
                           'RR_CAD_RURAL.RESPONSA_RRR RESPONSAVELPROPRIEDADE, '+
                           'RR_CAD_RURAL.INSCRP_RRR INSCRPRODUTOR, '+
                           'RR_CAD_RURAL.INCRA_RRR INCRA, '+
                           'RR_CAD_RURAL.AREAH_RRR AREAHEQUITARE, '+
                           'RR_CAD_RURAL.AREAE_RRR AREAALQUEIRE, '+
                           'RR_CAD_RURAL.AREAM_RRR AREAM2, '+
                           'RR_CAD_RURAL.DISTANCIA_RRR DISTANCIA, '+
                           'RR_CAD_RURAL.PONTOS_RRR PONTOS, '+
                           'RR_CAD_RURAL.VVENAL_RRR VVENAL, '+
                           'RR_CAD_RURAL.COD_LOG_RRR CODLOGRA, '+
                           'RR_CAD_RURAL.LOGRA_RRR LOGRADOURO, '+
                           'RR_CAD_RURAL.COMPL_RRR COMPLEMENTO, '+
                           'RR_CAD_RURAL.OBSLOGRA_RRR OBSLOGRA, '+
                           'RR_CAD_RURAL.COD_TIPE_RRR CODTPLOGRENTREGA, '+
                           'RR_CAD_RURAL.TIPOLOGE_RRR TPLOGRENTREGA, '+
                           'RR_CAD_RURAL.COD_TITE_RRR CODTITLOGRENTREGA, '+
                           'RR_CAD_RURAL.TITULOLOGE_RRR TITLOGRENTREGA, '+
                           'RR_CAD_RURAL.COD_LOGE_RRR CODLOGENTREGA, '+
                           'RR_CAD_RURAL.LOGRAE_RRR LOGENTREGA, '+
                           'RR_CAD_RURAL.COD_BAIE_RRR CODBAIENTREGA, '+
                           'RR_CAD_RURAL.BAIRROE_RRR BAIENTREGA, '+
                           'RR_CAD_RURAL.NUMEROE_RRR NROENTREGA, '+
                           'RR_CAD_RURAL.CEPE_RRR CEPENTREGA, '+
                           'RR_CAD_RURAL.COMPLEE_RRR COMPLENTREGA, '+
                           'RR_CAD_RURAL.COD_CIDE_RRR CODCIDENTREGA, '+
                           'CIDE.NOME_CID CIDENTREGA, '+
                           'RR_CAD_RURAL.UFE_RRR UFENTREGA, '+
                           'RR_CAD_RURAL.HISTO_RRR HISTORICO '+
                    'FROM RR_CAD_RURAL '+
                    'LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS_RRR '+
                    'LEFT JOIN GR_BANCO ON COD_EMP_BCO = COD_EMP_RRR AND COD_BCO = COD_BCO_RRR '+
                    'LEFT JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR '+
                    'LEFT JOIN GR_CONTRIBUINTES ON COD_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_CNT_RRR '+
                    'LEFT JOIN GR_LOGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP_RRR AND LOGRA.COD_LOG = COD_LOG_RRR '+
                    'LEFT JOIN CEP_TIPOLOGIA TIPENT ON TIPENT.COD_TIP_CEP = COD_TIPE_RRR '+
                    'LEFT JOIN CEP_TITULACAO TITENT ON TITENT.COD_TIT = COD_TITE_RRR '+
                    'LEFT JOIN GR_LOGRA LOGRAE ON LOGRAE.COD_EMP_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = COD_LOGE_RRR '+
                    'LEFT JOIN GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_EMP_RRR AND BAIE.COD_BAI = COD_BAIE_RRR '+
                    'LEFT JOIN GR_CIDADE CIDE ON CIDE.COD_CID = COD_CIDE_RRR '+
                    'WHERE RR_CAD_RURAL.COD_EMP_RRR = '+ SIA_Empresa +
                     ' AND RR_CAD_RURAL.COD_RRR = '+''''+ cod +'''';
    qrx.Open;

    FCADASTRO               := qrx.FieldByName('CADASTRO').Value;
    FINSCRICAO              := qrx.FieldByName('INSCRICAO').Value;
    FDTCADASTRO             := qrx.FieldByName('DTCADASTRO').Value;
    FCODSETORVENC           := qrx.FieldByName('CODSETORVENC').Value;
    FCODCLASSIFICACAO       := qrx.FieldByName('CODCLASSIFICACAO').Value;
    FCLASSIFICACAO          := qrx.FieldByName('CLASSIFICACAO').Value;
    FCODCOBRANCA            := qrx.FieldByName('CODCOBRANCA').Value;
    FCOBRANCA               := qrx.FieldByName('COBRANCA').Value;
    FCODPROPRIETARIO        := qrx.FieldByName('CODPROPRIETARIO').Value;
    FPROPRIETARIO           := qrx.FieldByName('PROPRIETARIO').Value;
    FRGPRIETARIO            := qrx.FieldByName('RGPRIETARIO').Value;
    FCNPJPRIETARIO          := qrx.FieldByName('CNPJPRIETARIO').Value;
    FFONEPRIETARIO          := qrx.FieldByName('FONEPRIETARIO').Value;
    FEMAILPRIETARIO         := qrx.FieldByName('EMAILPRIETARIO').Value;
    FLOGRAPROPRIETARIO      := qrx.FieldByName('LOGRAPROPRIETARIO').Value;
    FDEBAUTOMATICO          := qrx.FieldByName('DEBAUTOMATICO').Value;
    FIDBANCO                := qrx.FieldByName('IDBANCO').Value;
    FCODBANCO               := qrx.FieldByName('CODBANCO').Value;
    FBANCO                  := qrx.FieldByName('BANCO').Value;
    FCODAGENCIA             := qrx.FieldByName('CODAGENCIA').Value;
    FCODCONTA               := qrx.FieldByName('CODCONTA').Value;
    FDTINCDBAUTO            := qrx.FieldByName('DTINCDBAUTO').Value;
    FDTFIMDBAUTO            := qrx.FieldByName('DTFIMDBAUTO').Value;
    FPROPRIEDADE            := qrx.FieldByName('PROPRIEDADE').Value;
    FFONEPROPRIEDADE        := qrx.FieldByName('FONEPROPRIEDADE').Value;
    FRESPONSAVELPROPRIEDADE := qrx.FieldByName('RESPONSAVELPROPRIEDADE').Value;
    FINSCRPRODUTOR          := qrx.FieldByName('INSCRPRODUTOR').Value;
    FINCRA                  := qrx.FieldByName('INCRA').Value;
    FAREAHEQUITARE          := qrx.FieldByName('AREAHEQUITARE').Value;
    FAREAALQUEIRE           := qrx.FieldByName('AREAALQUEIRE').Value;
    FAREAM2                 := qrx.FieldByName('AREAM2').Value;
    FDISTANCIA              := qrx.FieldByName('DISTANCIA').Value;
    FPONTOS                 := qrx.FieldByName('PONTOS').Value;
    FVVENAL                 := qrx.FieldByName('VVENAL').Value;
    FCODLOGRA               := qrx.FieldByName('CODLOGRA').Value;
    FLOGRADOURO             := qrx.FieldByName('LOGRADOURO').Value;
    FCOMPLEMENTO            := qrx.FieldByName('COMPLEMENTO').Value;
    FOBSLOGRA               := qrx.FieldByName('OBSLOGRA').Value;
    FCODTPLOGRENTREGA       := qrx.FieldByName('CODTPLOGRENTREGA').Value;
    FTPLOGRENTREGA          := qrx.FieldByName('TPLOGRENTREGA').Value;
    FCODTITLOGRENTREGA      := qrx.FieldByName('CODTITLOGRENTREGA').Value;
    FTITLOGRENTREGA         := qrx.FieldByName('TITLOGRENTREGA').Value;
    FCODLOGENTREGA          := qrx.FieldByName('CODLOGENTREGA').Value;
    FLOGENTREGA             := qrx.FieldByName('LOGENTREGA').Value;
    FCODBAIENTREGA          := qrx.FieldByName('CODBAIENTREGA').Value;
    FBAIENTREGA             := qrx.FieldByName('BAIENTREGA').Value;
    FNROENTREGA             := qrx.FieldByName('NROENTREGA').Value;
    FCEPENTREGA             := qrx.FieldByName('CEPENTREGA').Value;
    FCOMPLENTREGA           := qrx.FieldByName('COMPLENTREGA').Value;
    FCODCIDENTREGA          := qrx.FieldByName('CODCIDENTREGA').Value;
    FCIDENTREGA             := qrx.FieldByName('CIDENTREGA').Value;
    FUFENTREGA              := qrx.FieldByName('UFENTREGA').Value;
    FHISTORICO              := qrx.FieldByName('HISTORICO').Value;
  finally
    FreeAndNil(qrx);
  end;
end;

function TPesq_ConfCalcRR.BotaoConfig : Boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RCF, '+
                    'V01_RCF, V02_RCF, V03_RCF, V04_RCF, V05_RCF, '+
                    'V06_RCF, V07_RCF, V08_RCF, V09_RCF, V10_RCF '+
             'FROM RR_CONFIGURACOES '+
             'WHERE COD_EMP_RCF = '+ SIA_Empresa;

      CAMPOCOD  := 'COD_RCF';
      CAMPONOME := 'COD_REC_RCF';
      PCODIGO   := 'Receita';
      PNOME     := 'Abreviacao';
      Caption   := 'Consulta Configurações';
      Tag       := 0; // Habilita o Botão NOVO
      Formulario := 'FCadConfCalc';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCodigo := cdsCons.FieldByName('COD_RCF').Value;
        Fv01    := cdsCons.FieldByName('V01_RCF').Value;
        Fv02    := cdsCons.FieldByName('V02_RCF').Value;
        Fv03    := cdsCons.FieldByName('V03_RCF').Value;
        Fv04    := cdsCons.FieldByName('V04_RCF').Value;
        Fv05    := cdsCons.FieldByName('V05_RCF').Value;
        Fv06    := cdsCons.FieldByName('V06_RCF').Value;
        Fv07    := cdsCons.FieldByName('V07_RCF').Value;
        Fv08    := cdsCons.FieldByName('V08_RCF').Value;
        Fv09    := cdsCons.FieldByName('V09_RCF').Value;
        Fv10    := cdsCons.FieldByName('V10_RCF').Value;
      end
      else result := False;
    end;
  finally
    FreeAndNil(Form);
  end;
end;

procedure TPesq_ConfCalcRR.PesquisaConfig(cod : string);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RCF, '+
                           'V01_RCF, V02_RCF, V03_RCF, V04_RCF, V05_RCF, '+
                           'V06_RCF, V07_RCF, V08_RCF, V09_RCF, V10_RCF '+
                    'FROM RR_CONFIGURACOES '+
                    'WHERE COD_EMP_RCF = '+ SIA_Empresa +
                      'AND COD_RCF = '+ cod;
    qrx.Open;

    if not qrx.IsEmpty then begin
      FCodigo := qrx.FieldByName('COD_RCF').Value;
      Fv01    := qrx.FieldByName('V01_RCF').Value;
      Fv02    := qrx.FieldByName('V02_RCF').Value;
      Fv03    := qrx.FieldByName('V03_RCF').Value;
      Fv04    := qrx.FieldByName('V04_RCF').Value;
      Fv05    := qrx.FieldByName('V05_RCF').Value;
      Fv06    := qrx.FieldByName('V06_RCF').Value;
      Fv07    := qrx.FieldByName('V07_RCF').Value;
      Fv08    := qrx.FieldByName('V08_RCF').Value;
      Fv09    := qrx.FieldByName('V09_RCF').Value;
      Fv10    := qrx.FieldByName('V10_RCF').Value;
    end
    else BotaoConfig;
 finally
    FreeAndNil(qrx);
 end;
end;

procedure TPesq_ConfCalcRR.CarregaConfig;
var qrx : TSQLQuery;
begin
  try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RCF, '+
                           'V01_RCF, V02_RCF, V03_RCF, V04_RCF, V05_RCF, '+
                           'V06_RCF, V07_RCF, V08_RCF, V09_RCF, V10_RCF '+
                    'FROM RR_CONFIGURACOES '+
                    'WHERE COD_EMP_RCF = '+ SIA_Empresa +
                      'AND COD_RCF = 1 ';
    qrx.Open;
    FCodigo := qrx.FieldByName('COD_RCF').Value;
    Fv01    := qrx.FieldByName('V01_RCF').Value;
    Fv02    := qrx.FieldByName('V02_RCF').Value;
    Fv03    := qrx.FieldByName('V03_RCF').Value;
    Fv04    := qrx.FieldByName('V04_RCF').Value;
    Fv05    := qrx.FieldByName('V05_RCF').Value;
    Fv06    := qrx.FieldByName('V06_RCF').Value;
    Fv07    := qrx.FieldByName('V07_RCF').Value;
    Fv08    := qrx.FieldByName('V08_RCF').Value;
    Fv09    := qrx.FieldByName('V09_RCF').Value;
    Fv10    := qrx.FieldByName('V10_RCF').Value;
  finally
    FreeAndNil(qrx);
  end;
end;

function TPesq_ConfRR.BotaoConfig : Boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons     := 'SELECT COD_ACF, '+
                        'V01_ACF, V02_ACF, V03_ACF, V04_ACF, V05_ACF, '+
                        'V06_ACF, V07_ACF, V08_ACF, V09_ACF, V10_ACF, '+
                        'V11_ACF, V12_ACF, V13_ACF, V14_ACF, V15_ACF, '+
                        'V16_ACF, V17_ACF, V18_ACF, V19_ACF, V20_ACF '+
                 'FROM RR_CONFIGURACOES '+
                 'WHERE COD_EMP_ACF = '+ SIA_Empresa;

      CAMPOCOD  := 'COD_ACF';
      CAMPONOME := 'COD_ACF';
      PCODIGO   := 'CODIGO';
      PNOME     := 'CODIGO';
      Caption   := 'Consulta Configurações';
      Tag       := 0; // Habilita o Botão NOVO
      Formulario := 'FCadConfCalc';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCodigo := cdsCons.FieldByName('COD_ACF').Value;
        Fv01    := cdsCons.FieldByName('V01_ACF').Value;
        Fv02    := cdsCons.FieldByName('V02_ACF').Value;
        Fv03    := cdsCons.FieldByName('V03_ACF').Value;
        Fv04    := cdsCons.FieldByName('V04_ACF').Value;
        Fv05    := cdsCons.FieldByName('V05_ACF').Value;
        Fv06    := cdsCons.FieldByName('V06_ACF').Value;
        Fv07    := cdsCons.FieldByName('V07_ACF').Value;
        Fv08    := cdsCons.FieldByName('V08_ACF').Value;
        Fv09    := cdsCons.FieldByName('V09_ACF').Value;
        Fv10    := cdsCons.FieldByName('V10_ACF').Value;
        Fv11    := cdsCons.FieldByName('V11_ACF').Value;
        Fv12    := cdsCons.FieldByName('V12_ACF').Value;
        Fv13    := cdsCons.FieldByName('V13_ACF').Value;
        Fv14    := cdsCons.FieldByName('V14_ACF').Value;
        Fv15    := cdsCons.FieldByName('V15_ACF').Value;
        Fv16    := cdsCons.FieldByName('V16_ACF').Value;
        Fv17    := cdsCons.FieldByName('V17_ACF').Value;
        Fv18    := cdsCons.FieldByName('V18_ACF').Value;
        Fv19    := cdsCons.FieldByName('V19_ACF').Value;
        Fv20    := cdsCons.FieldByName('V20_ACF').Value;
      end
      else result := False;
    end;
  finally
    FreeAndNil(Form);
  end;
end;

procedure TPesq_ConfRR.PesquisaConfig(cod : string);
var qrx : TSQLQuery;
begin
  try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_ACF, '+
                        'V01_ACF, V02_ACF, V03_ACF, V04_ACF, V05_ACF, '+
                        'V06_ACF, V07_ACF, V08_ACF, V09_ACF, V10_ACF, '+
                        'V11_ACF, V12_ACF, V13_ACF, V14_ACF, V15_ACF, '+
                        'V16_ACF, V17_ACF, V18_ACF, V19_ACF, V20_ACF '+
                 'FROM RR_CONFIGURACOES '+
                 'WHERE COD_EMP_ACF = '+ SIA_Empresa+
                  ' AND COD_ACF = '+ cod;
    qrx.Open;
    if not qrx.IsEmpty then begin
      FCodigo := qrx.FieldByName('COD_ACF').Value;
      Fv01    := qrx.FieldByName('V01_ACF').Value;
      Fv02    := qrx.FieldByName('V02_ACF').Value;
      Fv03    := qrx.FieldByName('V03_ACF').Value;
      Fv04    := qrx.FieldByName('V04_ACF').Value;
      Fv05    := qrx.FieldByName('V05_ACF').Value;
      Fv06    := qrx.FieldByName('V06_ACF').Value;
      Fv07    := qrx.FieldByName('V07_ACF').Value;
      Fv08    := qrx.FieldByName('V08_ACF').Value;
      Fv09    := qrx.FieldByName('V09_ACF').Value;
      Fv10    := qrx.FieldByName('V10_ACF').Value;
      Fv11    := qrx.FieldByName('V11_ACF').Value;
      Fv12    := qrx.FieldByName('V12_ACF').Value;
      Fv13    := qrx.FieldByName('V13_ACF').Value;
      Fv14    := qrx.FieldByName('V14_ACF').Value;
      Fv15    := qrx.FieldByName('V15_ACF').Value;
      Fv16    := qrx.FieldByName('V16_ACF').Value;
      Fv17    := qrx.FieldByName('V17_ACF').Value;
      Fv18    := qrx.FieldByName('V18_ACF').Value;
      Fv19    := qrx.FieldByName('V19_ACF').Value;
      Fv20    := qrx.FieldByName('V20_ACF').Value;
    end
    else BotaoConfig;
  finally
    FreeAndNil(qrx);
  end;
end;

procedure TPesq_ConfRR.CarregaConfig;
var qrx : TSQLQuery;
begin
  try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_ACF, '+
                        'V01_ACF, V02_ACF, V03_ACF, V04_ACF, V05_ACF, '+
                        'V06_ACF, V07_ACF, V08_ACF, V09_ACF, V10_ACF, '+
                        'V11_ACF, V12_ACF, V13_ACF, V14_ACF, V15_ACF, '+
                        'V16_ACF, V17_ACF, V18_ACF, V19_ACF, V20_ACF '+
                 'FROM RR_CONFIGURACOES ';
    qrx.Open;

    FCodigo := qrx.FieldByName('COD_ACF').Value;
    Fv01    := qrx.FieldByName('V01_ACF').Value;
    Fv02    := qrx.FieldByName('V02_ACF').Value;
    Fv03    := qrx.FieldByName('V03_ACF').Value;
    Fv04    := qrx.FieldByName('V04_ACF').Value;
    Fv05    := qrx.FieldByName('V05_ACF').Value;
    Fv06    := qrx.FieldByName('V06_ACF').Value;
    Fv07    := qrx.FieldByName('V07_ACF').Value;
    Fv08    := qrx.FieldByName('V08_ACF').Value;
    Fv09    := qrx.FieldByName('V09_ACF').Value;
    Fv10    := qrx.FieldByName('V10_ACF').Value;
    Fv11    := qrx.FieldByName('V11_ACF').Value;
    Fv12    := qrx.FieldByName('V12_ACF').Value;
    Fv13    := qrx.FieldByName('V13_ACF').Value;
    Fv14    := qrx.FieldByName('V14_ACF').Value;
    Fv15    := qrx.FieldByName('V15_ACF').Value;
    Fv16    := qrx.FieldByName('V16_ACF').Value;
    Fv17    := qrx.FieldByName('V17_ACF').Value;
    Fv18    := qrx.FieldByName('V18_ACF').Value;
    Fv19    := qrx.FieldByName('V19_ACF').Value;
    Fv20    := qrx.FieldByName('V20_ACF').Value;

  finally
    FreeAndNil(qrx);
  end;
end;

function TPesq_RR_CAD_DESDOCRT.BotaoRR_CAD_DESDOCRT : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_CRT_RR2 CODCRT, DESCRI_RR1 DESCRCRT, COD_RR2 CODDESDO, '+
                    'DESCRI_RR2 DESCRDESDO, TIPOCAMPO_RR2 TIPOCAMPO, '+
                    'ORDEM_RR2 ORDEM, PADRAO_RR2 PADRAO '+
             'FROM RR_CAD_DESDOCRT '+
             'INNER JOIN RR_CAD_CRT ON COD_EMP_RR1 = COD_EMP_RR2 AND COD_CRT_RR2 = COD_RR1 '+
             'WHERE COD_EMP_RR2 = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RR2';
      CAMPONOME  := 'DESCRI_RR2';
      PCODIGO    := 'CODDESDO';
      PNOME      := 'DESCRDESDO';
      Caption    := 'Consulta Características';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_CRT_RR2    := cdsCons.FieldValues['CODCRT'];
        FDESCRI_CRT     := cdsCons.FieldValues['DESCRCRT'];
        FCOD_RR2        := cdsCons.FieldValues['CODDESDO'];
        FDESCRI_RR2     := cdsCons.FieldValues['DESCRDESDO'];
        FTIPOCAMPO_RR2  := cdsCons.FieldValues['TIPOCAMPO'];
        FORDEM_RR2      := cdsCons.FieldValues['ORDEM'];
        FPADRAO_RR2     := cdsCons.FieldValues['PADRAO'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_CAD_DESDOCRT.PesquisaRR_CAD_DESDOCRT(COD1, COD2 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_CRT_RR2, DESCRI_RR1, COD_RR2, DESCRI_RR2, '+
                           'TIPOCAMPO_RR2, ORDEM_RR2, PADRAO_RR2 '+
                     'FROM RR_CAD_DESDOCRT '+
                     'INNER JOIN RR_CAD_CRT ON COD_EMP_RR1 = COD_EMP_RR2 AND COD_CRT_RR2 = COD_RR1 '+
                     'WHERE COD_EMP_RR2 = '+ SIA_Empresa +
                      ' AND COD_CRT_RR2 = '+ '''' + COD1 + '''' +
                      ' AND COD_RR2 = '+ '''' + COD2 + '''' ;
    qrx.Open;

    if not qrx.IsEmpty then begin
        FCOD_CRT_RR2    := qrx.FieldValues['COD_CRT_RR2'];
        FDESCRI_CRT     := qrx.FieldValues['DESCRI_RR1'];
        FCOD_RR2        := qrx.FieldValues['COD_RR2'];
        FDESCRI_RR2     := qrx.FieldValues['DESCRI_RR2'];
        FTIPOCAMPO_RR2  := qrx.FieldValues['TIPOCAMPO_RR2'];
        FORDEM_RR2      := qrx.FieldValues['ORDEM_RR2'];
        FPADRAO_RR2     := qrx.FieldValues['PADRAO_RR2'];
    end
    else BotaoRR_CAD_DESDOCRT;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_RR_CLASSIFICA.BotaoRR_CLASSIFICA : boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RCL Codigo, EXERCICIO_RCL Exercicio, DESCR_RCL Descricao, VALOR_RCL Valor '+
             'FROM RR_CLASSIFICA '+
             'WHERE COD_EMP_RCL = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RCL';
      CAMPONOME  := 'DESCR_RCL';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta Classificações';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RCL        := cdsCons.FieldValues['Codigo'];
        FEXERCICIO_RCL  := cdsCons.FieldValues['Exercicio'];
        FDESCR_RCL      := cdsCons.FieldValues['Descricao'];
        FVALOR_RCL      := cdsCons.FieldValues['Valor'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_RR_CLASSIFICA.PesquisaRR_CLASSIFICA(COD1, COD2 : String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RCL, EXERCICIO_RCL, DESCR_RCL, VALOR_RCL '+
                    'FROM RR_CLASSIFICA '+
                    'WHERE COD_EMP_RCL = '+ SIA_Empresa +
                     '  AND COD_RCL = '+ COD1 +
                     '  AND EXERCICIO_RCL = '+ COD2 ;
    qrx.Open;
    if not qrx.IsEmpty then begin
      FCOD_RCL        := qrx.FieldValues['COD_RCL'];
      FEXERCICIO_RCL  := qrx.FieldValues['EXERCICIO_RCL'];
      FDESCR_RCL      := qrx.FieldValues['DESCR_RCL'];
      FVALOR_RCL      := qrx.FieldValues['VALOR_RCL'];
    end
    else BotaoRR_CLASSIFICA;
 finally
   FreeAndNil(qrx);
 end;
end;

function TPesq_ZonaFiscalValor_RR.BotaoRR_ZONA_VALOR(Exercicio: String): boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RZN_RZV CodZona, EXERCICIO_RZV Exercicio, VALOR_RZV Valor '+
             'FROM RR_ZONA_VALOR '+
             'WHERE COD_EMP_RZV = '+ SIA_Empresa +
             iif(trim(Exercicio)<>'', ' AND EXERCICIO_RZV = '+ Exercicio, '');

      CAMPOCOD   := 'COD_RZN_RZV';
      CAMPONOME  := 'EXERCICIO_RZV';
      PCODIGO    := 'Codigo';
      PNOME      := 'Exercicio';
      Caption    := 'Consulta Valores Zonas Fiscais';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RZN_RZV    := cdsCons.FieldValues['CodZona'];
        FEXERCICIO_RZV  := cdsCons.FieldValues['Exercicio'];
        FVALOR_RZV      := cdsCons.FieldValues['Valor'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_ZonaFiscalValor_RR.PesquisaRR_ZONA_VALOR(CodZona, Exercicio: String);
var qrx : TSQLQuery;
begin
  try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_EMP_RZV, COD_RZN_RZV, EXERCICIO_RZV, VALOR_RZV, LOGIN_INC_RZV, '+
                           'DTA_INC_RZV, LOGIN_ALT_RZV, DTA_ALT_RZV '+
                    'FROM RR_ZONA_VALOR '+
                    'WHERE COD_EMP_RZV = '+ SIA_Empresa +
                     '  AND COD_RZN_RZV = '+ CodZona +
                     '  AND EXERCICIO_RZV = '+ Exercicio;
    qrx.Open;
    if not qrx.IsEmpty then begin
      FCOD_RZN_RZV    := qrx.FieldValues['COD_RZN_RZV'];
      FEXERCICIO_RZV  := qrx.FieldValues['EXERCICIO_RZV'];
      FVALOR_RZV      := qrx.FieldValues['VALOR_RZV'];
    end
    else BotaoRR_ZONA_VALOR(Exercicio);
  finally
   FreeAndNil(qrx);
  end;
end;

function TPesq_ZonaFiscal_RR.BotaoRR_ZONAFISCAL: boolean;
var form : TFConsultas;
begin
  try
    result := True;
    form :=  TFConsultas.Create(Application.Owner);
    with form do begin
      varSQLCons := 'SELECT COD_RZN Codigo, DESCR_RZN Descricao '+
             'FROM RR_ZONAFISCAL '+
             'WHERE COD_EMP_RZN = '+ SIA_Empresa;

      CAMPOCOD   := 'COD_RZN';
      CAMPONOME  := 'DESCR_RZN';
      PCODIGO    := 'Codigo';
      PNOME      := 'Descricao';
      Caption    := 'Consulta ...';
      Tag        := 0;
      Formulario := '';
      PGConsulta.ActivePage := tbCons;

      if showmodal = mrOk then begin
        FCOD_RZN   := cdsCons.FieldValues['Codigo'];
        FDESCR_RZN := cdsCons.FieldValues['Descricao'];
      end
      else result := False;
    end;
  finally
    FreeAndNil(form);
  end;
end;

procedure TPesq_ZonaFiscal_RR.PesquisaRR_ZONAFISCAL(COD1: String);
var qrx : TSQLQuery;
begin
 try
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'SELECT COD_RZN, DESCR_RZN '+
                    'FROM RR_ZONAFISCAL '+
                    'WHERE COD_EMP_RZN = '+ SIA_Empresa +
                    '  AND COD_RZN = '+ COD1 ;
    qrx.Open;
    if not qrx.IsEmpty then begin
      FCOD_RZN   := qrx.FieldValues['COD_RZN'];
      FDESCR_RZN := qrx.FieldValues['DESCR_RZN'];
    end
    else BotaoRR_ZONAFISCAL;
 finally
   FreeAndNil(qrx);
 end;
end;

end.
