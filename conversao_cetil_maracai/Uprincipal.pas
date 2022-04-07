UNIT Uprincipal;

INTERFACE

USES Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.Buttons, Vcl.StdCtrls, DBTables,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.CheckLst, FolderDialog, IniFiles, ADOConEd,
  Vcl.Samples.Spin;

TYPE
  TTfrmprincipal_Conversao = CLASS(TForm)
    pntop: TPanel;
    pnmain: TPanel;
    pndown: TPanel;
    pnmemo: TPanel;
    edtdestino: TEdit;
    btlocalizadestino: TSpeedButton;
    btnconverte: TButton;
    btncancel: TButton;
    btnsair: TButton;
    oflocaliza: TOpenTextFileDialog;
    edtservidordestino: TEdit;
    pnselecao_status: TPanel;
    memoStatus: TMemo;
    chk: TCheckListBox;
    pbt: TProgressBar;
    p: TProgressBar;
    SITU: TLabel;
    EM: TLabel;
    STATUS: TLabel;
    lblent_padrao: TLabel;
    Ent_padrao: TEdit;
    lblano: TLabel;
    ano: TSpinEdit;
    lblcaminhobase: TLabel;
    contador: TLabel;
    CB_ORIGEM: TComboBoxEx;
    edtservidororigem: TEdit;
    edtorigem: TEdit;
    btlocalizaorigem: TSpeedButton;
    Timer1: TTimer;
    lbltempo: TLabel;
    btn_novaconexao: TButton;
    lbl_ppa: TLabel;
    lbl_cpc: TLabel;
    lbl_cpe: TLabel;
    EDT_PPA: TEdit;
    edt_cpc: TEdit;
    edt_cpe: TEdit;
    rdprefeitura: TRadioGroup;
    rdEntPadrao: TRadioGroup;
    rdfundo: TRadioGroup;
    PROCEDURE btlocalizadestinoClick(Sender: TObject);
    PROCEDURE btnsairClick(Sender: TObject);
    PROCEDURE FormShow(Sender: TObject);
    PROCEDURE btnconverteClick(Sender: TObject);
    PROCEDURE btncancelClick(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    FUNCTION Itens_Selecionados(total: integer): integer;
    FUNCTION PEGANUMERO(X: STRING): STRING;
    function Arredonda(Valor: Double; Decimal: integer): Double;
    PROCEDURE Desliga_Triggers;
    procedure LIGA_TRIGGERS;
    PROCEDURE ZERA_GENERATORS;
    PROCEDURE LIMPATABELAS;
    PROCEDURE CADCLI;
    PROCEDURE Entidades;
    procedure Transferencia_de_Extra_para_Orcamentaria;
    function Nao_Vazio(texto: string): string;
    procedure Atualiza_Generator;
    FUNCTION Traz_Entidade(ID_ENT_CODIGO: STRING): STRING;
    FUNCTION Traz_Entidade_do_fundo(ID_ENT_CODIGO: STRING): STRING;
    FUNCTION Traz_Fundo(ID_ENT_CODIGO: STRING): STRING;
    function Traz_Conta_Caixa(ID_ENT_CODIGO: STRING): STRING;
    function Traz_Conta_Descon(entidade: string;  CodConta: string ): string;
    function Traz_Conta_DesconD(Conta: string ): string;
    function Traz_Saldo_Inicial(CodConta, entidade: string): real;
    function Traz_Prefeitura: string;
    function Traz_VinGrupo_da_DESDIS(ficha: string): string;
    function Traz_Ficha_Extra(ID_Codigo_Contabil, empresa: STRING): STRING;
    function Traz_Ficha_Restos(empresa, PROC: STRING): STRING;
    function Traz_Ficha_DESDIS(empresa, cod_ficha: string): string;
    function Traz_Ficha_DesDis_OR(empresa,ficha:string): string;
    function Traz_Ficha_Desdis_EX(empresa,ficha:string): string;
    function Traz_Ficha_RECDIS(CodReceita: string; empresa: string): string;
    function Traz_Ficha_RecDis_OR(empresa,receita:string):string;
    function Traz_Ficha_RecDis_EX(empresa,receita:string):string;
    function Traz_Ficha_Desconto(empresa, rec_or, rec_ex: string): string;
    function Traz_Reserva(empresa, CodDespesa, CodCredor, NumEmpenho: string): string;
    function Traz_TipoDocFinan(codigo: STRING): STRING;
    function Traz_NomeEntidade(empresa: string): string;
    function Traz_Poder(PK: string): string;
    PROCEDURE FUNDO_ESPECIAL;
    PROCEDURE Centro_Custo;
    PROCEDURE AUTORIZADOR_PERIODO;
    FUNCTION FormataCNPJ_CPF(Numero: STRING): STRING;
    FUNCTION Formata_CEP(cep: STRING): STRING;
    function Formata_CODRE(CODRE: string): STRING;
    PROCEDURE PODER_ORGAO_UNIDADE;
    procedure Existe_TabPoder(PODER, NOME: string);
    procedure Existe_TabOrgao(PODER, Orgao, NOME: string);
    procedure Existe_TabUnidade(PODER, Orgao, Unidade, NOME: string);
    procedure LEI_PPA;
    procedure Usa_Departamento;
    procedure PROGRAMAS_METAS_PPA;
    PROCEDURE ACOES_PPA;
    procedure RESERVA_ORCAMENTARIA;
    PROCEDURE FUNCOES;
    PROCEDURE SUBFUNCOES;
    PROCEDURE PROGRAMAS;
    PROCEDURE FONTERECURSO;
    PROCEDURE CODIGO_APLICACAO;
    PROCEDURE FORNECEDORES;
    PROCEDURE PROJETO_ATIVIDADE;
    PROCEDURE CADLICITACAO;
    PROCEDURE Contratos;
    PROCEDURE CONVENIOS;
    PROCEDURE CONTA_CAIXA;
    PROCEDURE AGENCIA;
    PROCEDURE CONTA_BANCARIA;
    PROCEDURE ORCAMENTO_DESPESA;
    PROCEDURE ORCAMENTO_RECEITA;
    PROCEDURE FICHA_RECEITA;
    PROCEDURE FICHA_DESPESA;
    procedure SUPLEMENTACOES;
    procedure Cria_Fichas_Extras;
    PROCEDURE RECEITAS_ORCAMENTARIAS;
    PROCEDURE Ordens_Credito_OR;
    procedure Ordens_Credito_EX;
    procedure EMPENHOS_ORCAMENTARIOS;
    procedure EMPENHOS_ANULACAO;
    procedure LIQUIDACAO;
    procedure Tipo_Doc_Financeiro;
    procedure Pagamento_Orcamentario_com_Retencao;
    procedure Estorno_Orcamentario_com_Retencao;
    procedure EMPENHOS_EXTRA;
    procedure LIQUIDACAO_EXTRA;
    procedure PAGAMENTOS_EXTRA;
    PROCEDURE ESTORNO_EXTRA;
    procedure RECEITAS_EXTRAS;
    procedure Empenhos_Restos_PROC_NPROC_AUDESP;
    procedure Empenhos_Restos_PROC_NPROC;
    procedure Restos_Pagar_Anulacao_Empenho;
    procedure Liquidacao_Restos_NPROC;
    procedure Pagamentos_Restos_Proc_e_NProc_com_Retencao;
    procedure Estorno_Restos_Proc_e_NProc_com_Retencao;
    procedure Transferencia_Entre_Contas;
    procedure REPASSE_FINANCEIRO;
    procedure Marreta_Extrato_Bancario;
    procedure Devolucao_Adiantamento_Restos;
    procedure Prestacao_Adiantamento;
    procedure Conciliacao_Bancaria;
    procedure Transf_de_Extra_para_Extra; 

    procedure Acerta_Gen_ID_Contas;
    function ValiData(data: string): string;
    function Existe_Codif(codif: string): string;
    function Existe_Vincodigo(Vingrupo, Vincodigo, VinCodigoNome: string): boolean;
    function Existe_FonCodigo(FonCodigo, FonCodigoDesc: string): string;
    function Existe_FonGrupo(FonGrupo, FonGrupoDesc: string): string;
    function retorna_nrlicitacao(nr, ano, empresa, MODLIC: STRING): STRING;
    function Traz_Codif(empresa, credor: string): string;
    function Traz_Codif_pelo_audesp(numerocredor: string): string;
    procedure btlocalizaorigemClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function Existe_TabFuncao(funcao, NOME: string): string;
    function Existe_TabSubFuncao(subfuncao, NOME: string): string;
    function Existe_TabPrograma(programa, NOME: string): string;
    function Existe_TabProjAtiv(projativ, NOME: string): string;
    function Existe_TabCategoria(categoria, NOME: string): string;
    function Existe_TabGrupo(grupo, NOME: string): string;
    function Existe_TabModalidade(modalidade, NOME: string): string;
    function Existe_TabElemento(elemento, NOME: string): string;
    procedure Existe_TabCatec(catec, NOME: string);
    function Existe_Conpla(balco, NOME: string): string;
    function Existe_Conpla_SCPI(empresa, balco, NOME: string): string;
    function Existe_banco(banco, NOME: string): string;
    function Existe_Agencia(AGENCIA, NOME: string): string;
    function Existe_RECTAB(CODRE, NOMEABREV,NOME: STRING): string;
    procedure btn_novaconexaoClick(Sender: TObject);

  PRIVATE
    PROCEDURE Conecta_Destino;
    PROCEDURE Conecta_Origem;
    PROCEDURE Desconecta_Conecta;
    PROCEDURE CriaCampo(Tabela, Campo, Tamanho: STRING);
    FUNCTION Tira_Char39(tamanho_max_string: integer; text: STRING): STRING;
    procedure SqlDialect_1;
    procedure PPA_Indicador_Unidade;
    procedure Ordens_Credito_EX_OR;
    procedure Entrada_nao_Contabilizada;
    procedure Entrada_Contabilizada;
    procedure Saida_nao_Contabilizada;
    procedure Saida_Contabilizada;
    procedure Transferencia_Conciliadas;
    procedure EMPENHOS_EXTRA_AN;
    procedure Acerta_Desdobro_Catanduva;
    procedure Anula_Reserva_de_EMP_AN;
    procedure Acerta_Fongrupo_Restos;
    procedure Acerta_Codre_Ficha;
    procedure Acerta_Receita_Classificar;
    procedure Ordens_Credito_Classificar;
    procedure Ordens_Credito_Transf_EX;
    function Traz_ContaD_Descon( CodConta: string): string;

    { Private declarations }
  PUBLIC
    { Public declarations }
  END;

VAR Tfrmprincipal_Conversao: TTfrmprincipal_Conversao; parar, ODBC, USADEPARTAMENTO: boolean; FONGRUPO_PADRAO: STRING; tempoinicio: Tdatetime;
  BNC_PPA, BNC_CPC, BNC_CPE, ConnectionString: STRING; Eh_Prefeitura: boolean;

IMPLEMENTATION

{$R *.dfm}

USES Udm, data.DB;

FUNCTION TTfrmprincipal_Conversao.Traz_TipoDocFinan(codigo: STRING): STRING;
BEGIN
  IF NOT DM.cdsTipDocFinan.Active THEN
  BEGIN
    DM.cdsTipDocFinan.Commandtext := 'select codigo, id_codigo from tipo_doc_financeiro where id_codigo is not null';
    DM.cdsTipDocFinan.OPEN;
    DM.cdsTipDocFinan.IndexFieldNames := 'id_codigo';
  END;
  IF DM.cdsTipDocFinan.FindKey([trim(codigo)]) THEN
    Result := DM.cdsTipDocFinan.FieldByName('codigo').AsString
  ELSE
    Result := '2';
END;

function TTfrmprincipal_Conversao.Traz_ContaD_Descon(CodConta: string): string;
begin
  if not DM.cdsdesconD.Active then
  begin
    DM.cdsdesconD.Commandtext := 'select contad,conta from DESCON_DETALHE';
    DM.cdsdesconD.OPEN;
  end;
  DM.cdsdesconD.IndexFieldNames := 'conta';
  IF DM.cdsdesconD.FindKey([ trim(CodConta)]) THEN
    Result := DM.cdsdesconD.FieldByName('contad').AsString
  else
    result := '';
end;


procedure TTfrmprincipal_Conversao.Existe_TabPoder(PODER, NOME: string);
begin
  if not DM.cdsPoder.Active then
  begin
    DM.cdsPoder.Commandtext := 'select poder, nome from tabpoder ';
    DM.cdsPoder.OPEN;
    DM.cdsPoder.IndexFieldNames := 'poder';
  end;
  if not DM.cdsPoder.FindKey([FORMATCURR('00', strtoint(PEGANUMERO(PODER)))]) then
  begin
    DM.cdsPoder.append;
    DM.cdsPoder.FieldByName('poder').AsString := FORMATCURR('00', strtoint(PEGANUMERO(PODER)));
    DM.cdsPoder.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsPoder.post;
    DM.cdsPoder.ApplyUpdates(-1);
    DM.cdsPoder.close;
  end;
end;

function TTfrmprincipal_Conversao.Existe_TabPrograma(programa, NOME: string): string;
begin
  if not DM.cdsPrograma.Active then
  begin
    DM.cdsPrograma.Commandtext := 'select programa, nome,tipo from tabprograma ';
    DM.cdsPrograma.OPEN;
  end;
  DM.cdsPrograma.IndexFieldNames := 'programa';
  if not DM.cdsPrograma.FindKey([FORMATCURR('0000', strtoint(PEGANUMERO(programa)))]) then
  begin
    DM.cdsPrograma.append;
    DM.cdsPrograma.FieldByName('programa').AsString := FORMATCURR('000', strtoint(PEGANUMERO(programa)));
    DM.cdsPrograma.FieldByName('NOME').AsString := Tira_Char39(120, NOME);
    DM.cdsPrograma.FieldByName('tipo').AsString := 'P';
    DM.cdsPrograma.post;
    DM.cdsPrograma.ApplyUpdates(-1);
    DM.cdsPrograma.close;
  end;
  Result := FORMATCURR('0000', strtoint(PEGANUMERO(programa)));
end;

function TTfrmprincipal_Conversao.Existe_TabProjAtiv(projativ, NOME: string): string;
begin
  if not DM.cdsProjAtiv.Active then
  begin
    DM.cdsProjAtiv.Commandtext := 'select projativ, nome,tipo from tabprojativ ';
    DM.cdsProjAtiv.OPEN;
    DM.cdsProjAtiv.IndexFieldNames := 'projativ';
  end;
  if not DM.cdsProjAtiv.FindKey([FORMATCURR('0000', strtoint(PEGANUMERO(projativ)))]) then
  begin
    DM.cdsProjAtiv.append;
    DM.cdsProjAtiv.FieldByName('projativ').AsString := FORMATCURR('0000', strtoint(PEGANUMERO(projativ)));
    DM.cdsProjAtiv.FieldByName('NOME').AsString := Tira_Char39(120, NOME);
    if copy(DM.cdsProjAtiv.FieldByName('projativ').AsString, 1, 1) = '1' then
      DM.cdsProjAtiv.FieldByName('tipo').AsString := '1'
    else if copy(DM.cdsProjAtiv.FieldByName('projativ').AsString, 1, 1) = '2' then
      DM.cdsProjAtiv.FieldByName('tipo').AsString := '2'
    else if copy(DM.cdsProjAtiv.FieldByName('projativ').AsString, 1, 1) = '0' then
      DM.cdsProjAtiv.FieldByName('tipo').AsString := '3'
    else
      DM.cdsProjAtiv.FieldByName('tipo').AsString := '4';
    DM.cdsProjAtiv.post;
    DM.cdsProjAtiv.ApplyUpdates(-1);
    DM.cdsProjAtiv.close;
  end;
  Result := FORMATCURR('0000', strtoint(PEGANUMERO(projativ)));
end;

function TTfrmprincipal_Conversao.Existe_TabSubFuncao(subfuncao, NOME: string): string;
begin
  if not DM.cdssubfuncao.Active then
  begin
    DM.cdssubfuncao.Commandtext := 'select subfuncao, nome from tabsubfuncao ';
    DM.cdssubfuncao.OPEN;
    DM.cdssubfuncao.IndexFieldNames := 'subfuncao';
  end;
  if not DM.cdssubfuncao.FindKey([FORMATCURR('000', strtoint(PEGANUMERO(subfuncao)))]) then
  begin
    DM.cdssubfuncao.append;
    DM.cdssubfuncao.FieldByName('subfuncao').AsString := FORMATCURR('000', strtoint(PEGANUMERO(subfuncao)));
    DM.cdssubfuncao.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdssubfuncao.post;
    DM.cdssubfuncao.ApplyUpdates(-1);
    DM.cdssubfuncao.close;
  end;
  Result := FORMATCURR('000', strtoint(PEGANUMERO(subfuncao)));
end;

procedure TTfrmprincipal_Conversao.Existe_TabCatec(catec, NOME: string);
begin
  catec := PEGANUMERO(catec);
  if Length(catec) = 6 then
    catec := catec + '00';
  catec := copy(catec, 1, 1) + '.' + copy(catec, 2, 1) + '.' + copy(catec, 3, 2) + '.' + copy(catec, 5, 2) + '.' + copy(catec, 7, 2);
  if not DM.cdsCatec.Active then
  begin
    DM.cdsCatec.Commandtext := 'select categoria, grupo, modalidade, elemento,desdobro,catec, nome from tabcatec';
    DM.cdsCatec.OPEN;
    DM.cdsCatec.IndexFieldNames := 'catec';
  end;
  if not DM.cdsCatec.FindKey([catec]) then
  begin
    catec := PEGANUMERO(catec);
    DM.cdsCatec.append;
    DM.cdsCatec.FieldByName('categoria').AsString := Existe_TabCategoria(copy(catec, 1, 1), '');
    DM.cdsCatec.FieldByName('grupo').AsString := Existe_TabGrupo(copy(catec, 2, 1), '');
    DM.cdsCatec.FieldByName('modalidade').AsString := Existe_TabModalidade(copy(catec, 3, 2), '');
    DM.cdsCatec.FieldByName('elemento').AsString := Existe_TabElemento(copy(catec, 5, 2), '');
    DM.cdsCatec.FieldByName('desdobro').AsString := copy(catec, 7, 2);
    DM.cdsCatec.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsCatec.post;
    DM.cdsCatec.ApplyUpdates(-1);
    DM.cdsCatec.close;
  end;
end;

function TTfrmprincipal_Conversao.Existe_TabCategoria(categoria, NOME: string): string;
begin
  if not DM.cdsCategoria.Active then
  begin
    DM.cdsCategoria.Commandtext := 'select categoria, nome from tabcategoria ';
    DM.cdsCategoria.OPEN;
    DM.cdsCategoria.IndexFieldNames := 'categoria';
  end;
  if not DM.cdsCategoria.FindKey([FORMATCURR('0', strtoint(PEGANUMERO(categoria)))]) then
  begin
    DM.cdsCategoria.append;
    DM.cdsCategoria.FieldByName('categoria').AsString := FORMATCURR('0', strtoint(PEGANUMERO(categoria)));
    DM.cdsCategoria.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsCategoria.post;
    DM.cdsCategoria.ApplyUpdates(-1);
    DM.cdsCategoria.close;
  end;
  Result := FORMATCURR('0', strtoint(PEGANUMERO(categoria)));
end;

function TTfrmprincipal_Conversao.Existe_TabElemento(elemento, NOME: string): string;
begin
  if not DM.cdsElemento.Active then
  begin
    DM.cdsElemento.Commandtext := 'select elemento, nome from tabelemento ';
    DM.cdsElemento.OPEN;
    DM.cdsElemento.IndexFieldNames := 'elemento';
  end;
  if not DM.cdsElemento.FindKey([FORMATCURR('00', strtoint(PEGANUMERO(elemento)))]) then
  begin
    DM.cdsElemento.append;
    DM.cdsElemento.FieldByName('elemento').AsString := FORMATCURR('00', strtoint(PEGANUMERO(elemento)));
    DM.cdsElemento.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsElemento.post;
    DM.cdsElemento.ApplyUpdates(-1);
    DM.cdsElemento.close;
  end;
  Result := FORMATCURR('00', strtoint(PEGANUMERO(elemento)));
end;

function TTfrmprincipal_Conversao.Existe_TabFuncao(funcao, NOME: string): string;
begin
  if not DM.cdsfuncao.Active then
  begin
    DM.cdsfuncao.Commandtext := 'select funcao, nome from tabfuncao ';
    DM.cdsfuncao.OPEN;
    DM.cdsfuncao.IndexFieldNames := 'funcao';
  end;
  if not DM.cdsfuncao.FindKey([FORMATCURR('00', strtoint(PEGANUMERO(funcao)))]) then
  begin
    DM.cdsfuncao.append;
    DM.cdsfuncao.FieldByName('funcao').AsString := FORMATCURR('00', strtoint(PEGANUMERO(funcao)));
    DM.cdsfuncao.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsfuncao.post;
    DM.cdsfuncao.ApplyUpdates(-1);
    DM.cdsfuncao.close;
  end;
  Result := FORMATCURR('00', strtoint(PEGANUMERO(funcao)));
end;

function TTfrmprincipal_Conversao.Existe_TabGrupo(grupo, NOME: string): string;
begin
  if not DM.cdsGrupo.Active then
  begin
    DM.cdsGrupo.Commandtext := 'select grupo, nome from tabgrupo ';
    DM.cdsGrupo.OPEN;
    DM.cdsGrupo.IndexFieldNames := 'grupo';
  end;
  if not DM.cdsGrupo.FindKey([FORMATCURR('0', strtoint(PEGANUMERO(grupo)))]) then
  begin
    DM.cdsGrupo.append;
    DM.cdsGrupo.FieldByName('grupo').AsString := FORMATCURR('0', strtoint(PEGANUMERO(grupo)));
    DM.cdsGrupo.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsGrupo.post;
    DM.cdsGrupo.ApplyUpdates(-1);
    DM.cdsGrupo.close;
  end;
  Result := FORMATCURR('0', strtoint(PEGANUMERO(grupo)));
end;

function TTfrmprincipal_Conversao.Existe_TabModalidade(modalidade, NOME: string): string;
begin
  if not DM.cdsModalidade.Active then
  begin
    DM.cdsModalidade.Commandtext := 'select modalidade, nome from tabmodalidade ';
    DM.cdsModalidade.OPEN;
    DM.cdsModalidade.IndexFieldNames := 'modalidade';
  end;
  if not DM.cdsModalidade.FindKey([FORMATCURR('00', strtoint(PEGANUMERO(modalidade)))]) then
  begin
    DM.cdsModalidade.append;
    DM.cdsModalidade.FieldByName('modalidade').AsString := FORMATCURR('00', strtoint(PEGANUMERO(modalidade)));
    DM.cdsModalidade.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsModalidade.post;
    DM.cdsModalidade.ApplyUpdates(-1);
    DM.cdsModalidade.close;
  end;
  Result := FORMATCURR('00', strtoint(PEGANUMERO(modalidade)));
end;

procedure TTfrmprincipal_Conversao.Existe_TabOrgao(PODER, Orgao, NOME: string);
begin
  if not DM.cdsOrgao.Active then
  begin
    DM.cdsOrgao.Commandtext := 'select poder, orgao, nome from taborgao ';
    DM.cdsOrgao.OPEN;
    DM.cdsOrgao.IndexFieldNames := 'poder;orgao';
  end;
  if not DM.cdsOrgao.FindKey([FORMATCURR('00', strtoint(PEGANUMERO(PODER))), FORMATCURR('00', strtoint(PEGANUMERO(Orgao)))]) then
  begin
    DM.cdsOrgao.append;
    DM.cdsOrgao.FieldByName('poder').AsString := FORMATCURR('00', strtoint(PEGANUMERO(PODER)));
    DM.cdsOrgao.FieldByName('ORGAO').AsString := FORMATCURR('00', strtoint(PEGANUMERO(Orgao)));
    DM.cdsOrgao.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsOrgao.post;
    DM.cdsOrgao.ApplyUpdates(-1);
    DM.cdsOrgao.close;
  end;
end;

procedure TTfrmprincipal_Conversao.Existe_TabUnidade(PODER, Orgao, Unidade, NOME: string);
begin
  if not DM.cdsUnidade.Active then
  begin
    DM.cdsUnidade.Commandtext := 'select poder, orgao,unidade, nome from tabunidade ';
    DM.cdsUnidade.OPEN;
    DM.cdsUnidade.IndexFieldNames := 'poder;orgao;unidade';
  end;
  if not DM.cdsUnidade.FindKey([FORMATCURR('00', strtoint(PEGANUMERO(PODER))), FORMATCURR('00', strtoint(PEGANUMERO(Orgao))), FORMATCURR('00', strtoint(PEGANUMERO(Unidade)))])
  then
  begin
    DM.cdsUnidade.append;
    DM.cdsUnidade.FieldByName('poder').AsString := FORMATCURR('00', strtoint(PEGANUMERO(PODER)));
    DM.cdsUnidade.FieldByName('ORGAO').AsString := FORMATCURR('00', strtoint(PEGANUMERO(Orgao)));
    DM.cdsUnidade.FieldByName('UNIDADE').AsString := FORMATCURR('00', strtoint(PEGANUMERO(Unidade)));
    DM.cdsUnidade.FieldByName('NOME').AsString := Tira_Char39(60, NOME);
    DM.cdsUnidade.post;
    DM.cdsUnidade.ApplyUpdates(-1);
    DM.cdsUnidade.close;
  end;
end;

function TTfrmprincipal_Conversao.Existe_Vincodigo(Vingrupo, Vincodigo, VinCodigoNome: string): boolean;
var NOME: string;
begin
  if not DM.cdsVingrupo.Active then
  begin
    DM.cdsVingrupo.Commandtext := 'select vingrupo,vingrupoNOME from vingrupo ';
    DM.cdsVingrupo.OPEN;
    DM.cdsVingrupo.IndexFieldNames := 'vingrupo';
  end;
  Vingrupo := FORMATCURR('000', strtoint(Vingrupo));
  if not DM.cdsVingrupo.FindKey([Vingrupo]) then
  begin
    if trim(VinCodigoNome) = '' then
      VinCodigoNome := '???';
    DM.cdsVingrupo.append;
    DM.cdsVingrupo.FieldByName('vingrupo').AsString := Vingrupo;
    DM.cdsVingrupo.FieldByName('vingrupoNOME').AsString := VinCodigoNome;
    DM.cdsVingrupo.post;
    DM.cdsVingrupo.ApplyUpdates(-1);
    DM.cdsVingrupo.close;
    DM.cdsVinCodigo.close;
  end
  else
    NOME := DM.cdsVingrupo.FieldByName('vingrupoNOME').AsString;
  if not DM.cdsVinCodigo.Active then
  begin
    DM.cdsVinCodigo.Commandtext := 'select vingrupo,VINCODIGO,VINCODIGONOME from vincodigo ';
    DM.cdsVinCodigo.OPEN;
    DM.cdsVinCodigo.IndexFieldNames := 'vingrupo;vincodigo';
  end;
  Vincodigo := FORMATCURR('000', strtoint(Vincodigo));
  if not DM.cdsVinCodigo.FindKey([Vingrupo, Vincodigo]) then
  begin
    DM.cdsVinCodigo.append;
    DM.cdsVinCodigo.FieldByName('vingrupo').AsString := Vingrupo;
    DM.cdsVinCodigo.FieldByName('vincodigo').AsString := Vincodigo;
    if ((trim(NOME) = '???') and (trim(VinCodigoNome) <> '')) then
      DM.cdsVinCodigo.FieldByName('vincodigoNOME').AsString := trim(VinCodigoNome)
    else
      DM.cdsVinCodigo.FieldByName('vincodigoNOME').AsString := NOME;
    DM.cdsVinCodigo.post;
    DM.cdsVinCodigo.ApplyUpdates(-1);
    DM.cdsVinCodigo.close;
  end;
end;

FUNCTION TTfrmprincipal_Conversao.retorna_nrlicitacao(nr, ano, empresa, MODLIC: STRING): STRING;
VAR Numero, anol: STRING; nlicitacao_new: integer;
BEGIN
  IF (nr <> '0') AND (trim(nr) <> '') THEN
  BEGIN
    IF POS('/', nr) > 0 THEN
    BEGIN
      Numero := copy(nr, 1, POS('/', nr) - 1);

      IF copy(nr, POS('/', nr) + 1, 1) <> '0' THEN
        anol := copy(nr, POS('/', nr) + 3, 2)
      ELSE
        anol := copy(nr, POS('/', nr) + 1, 2);
    END
    ELSE
    BEGIN
      Numero := copy(nr, 1, 6);
    END;

    IF (trim(ano) <> '') AND (trim(ano) <> '0') THEN
      anol := copy(ano, 3, 2);

    WHILE Length(Numero) < 6 DO
      Numero := '0' + Numero;

    Numero := Numero + '/' + anol;

    CriaCampo('cadlicitacao', 'ID_em_nlic', '20');
    CriaCampo('cadlicitacao', 'ID_em_lano', '20');
    DM.cdsTemp.close;
//    DM.cdsTemp.Commandtext := 'select * from cadlicitacao where ID_em_nlic = ''' + nr + ''' ' + ' AND ID_em_lano = ''' + ano + ''' and empresa = ' + empresa;
    DM.cdsTemp.Commandtext := 'select * from cadlicitacao where proclic = ''' + numero + ''' and empresa = ' +Traz_Entidade(empresa);
    // and modlic = ''' +  MODLIC + ''' ';
    DM.cdsTemp.OPEN;
    if DM.cdsTemp.IsEmpty then
    begin
      DM.cdstemp1.close;
      DM.cdstemp1.Commandtext := 'select coalesce(max(nlicitacao),0) as nlicitacao_new from cadlicitacao';
      DM.cdstemp1.OPEN;
      nlicitacao_new := DM.cdstemp1.FieldByName('nlicitacao_new').AsInteger;
      inc(nlicitacao_new);
      DM.cdsTemp.append;
      DM.cdsTemp.FieldByName('ID_em_nlic').AsString := nr;
      DM.cdsTemp.FieldByName('ID_em_lano').AsString := ano;
      DM.cdsTemp.FieldByName('MODLIC').AsString := MODLIC;
      DM.cdsTemp.FieldByName('PROCLIC').AsString := Numero;
      DM.cdsTemp.FieldByName('NLICITACAO').AsInteger := nlicitacao_new;
      DM.cdsTemp.FieldByName('obs').AsString := 'Licitacao... ';
      DM.cdsTemp.FieldByName('empresa').AsString := Traz_Entidade(empresa);
      DM.cdsTemp.post;
      DM.cdsTemp.ApplyUpdates(-1);
    end;
    Result := Numero;
  END
  ELSE
    Result := '';
END;

function TTfrmprincipal_Conversao.Existe_FonCodigo(FonCodigo, FonCodigoDesc: string): string;
begin
  if DM.cdsFonCodigo.Active = false then
  begin
    DM.cdsFonCodigo.Commandtext := 'select FONCODIGO,FONCODIGOdesc,tipo from foncodigo';
    DM.cdsFonCodigo.OPEN;
  end;
  DM.cdsFonCodigo.IndexFieldNames := 'foncodigo';
  if not DM.cdsFonCodigo.FindKey([trim(FonCodigo)]) then
  begin
    if trim(FonCodigoDesc) = '' then
      FonCodigoDesc := '???';
    DM.cdsFonCodigo.append;
    DM.cdsFonCodigo.FieldByName('foncodigo').AsString := trim(FonCodigo);
    DM.cdsFonCodigo.FieldByName('foncodigodesc').AsString := trim(FonCodigoDesc);
    DM.cdsFonCodigo.FieldByName('tipo').AsString := 'P';
    DM.cdsFonCodigo.post;
    DM.cdsFonCodigo.ApplyUpdates(-1);
    DM.cdsFonCodigo.close;
  end;
  Result := trim(FonCodigo);
end;

function TTfrmprincipal_Conversao.Existe_FonGrupo(FonGrupo, FonGrupoDesc: string): string;
begin
  if DM.cdsfongrupo.Active = false then
  begin
    DM.cdsfongrupo.Commandtext := 'select fongrupo,FONGRUPOdesc from fongrupo ';
    DM.cdsfongrupo.OPEN;
  end;
  DM.cdsfongrupo.IndexFieldNames := 'fongrupo';
  if not DM.cdsfongrupo.FindKey([FORMATCURR('00', strtoint(PEGANUMERO(FonGrupo)))]) then
  begin
    if trim(FonGrupoDesc) = '' then
      FonGrupoDesc := '???';
    DM.cdsfongrupo.append;
    DM.cdsfongrupo.FieldByName('fongrupo').AsString := FORMATCURR('00', strtoint(PEGANUMERO(FonGrupo)));
    DM.cdsfongrupo.FieldByName('FONGRUPOdesc').AsString := FonGrupoDesc;
    DM.cdsfongrupo.post;
    DM.cdsfongrupo.ApplyUpdates(-1);
    DM.cdsfongrupo.close;
  end;
  Result := FORMATCURR('00', strtoint(PEGANUMERO(FonGrupo)));
end;

function TTfrmprincipal_Conversao.Existe_RECTAB(CODRE, NOMEABREV,NOME: STRING): string;
var Tamanho: integer; nivel: string;
begin
  CODRE := Formata_CODRE(CODRE);
  if not DM.cdsRecTab.Active then
  begin
    DM.cdsRecTab.Commandtext := 'select CODRE,NOMRE,NIVEL,NOMREC from rectab';
    DM.cdsRecTab.OPEN;
  end;
  DM.cdsRecTab.IndexFieldNames := 'codre';
  if not DM.cdsRecTab.FindKey([CODRE]) then
    DM.cdsRecTab.append
  else
    DM.cdsRecTab.edit;
  DM.cdsRecTab.FieldByName('codre').AsString := CODRE;
  DM.cdsRecTab.FieldByName('nomre').AsString := Tira_Char39(60, NOMEABREV);
  DM.cdsRecTab.FieldByName('NOMREC').AsString := Tira_Char39(250, NOME);
  Tamanho := Length(PEGANUMERO(CODRE));
  if Tamanho = 12 then
  begin
    if copy(PEGANUMERO(CODRE), 11, 2) <> '00' then
      nivel := '8'
    else if copy(PEGANUMERO(CODRE), 9, 2) <> '00' then
      nivel := '7'
    else if copy(PEGANUMERO(CODRE), 7, 2) <> '00' then
      nivel := '6'
    else if copy(PEGANUMERO(CODRE), 5, 2) <> '00' then
      nivel := '5'
    else
      nivel := '4';
  end
  else if Tamanho = 10 then
  begin
    if copy(PEGANUMERO(CODRE), 9, 2) <> '00' then
      nivel := '7'
    else if copy(PEGANUMERO(CODRE), 7, 2) <> '00' then
      nivel := '6'
    else if copy(PEGANUMERO(CODRE), 5, 2) <> '00' then
      nivel := '5'
    else
      nivel := '4';
  end
  else if Tamanho = 8 then
  begin
    if copy(PEGANUMERO(CODRE), 7, 2) <> '00' then
      nivel := '6'
    else if copy(PEGANUMERO(CODRE), 5, 2) <> '00' then
      nivel := '5'
    else
      nivel := '4';
  end
  else if Tamanho = 6 then
  begin
    if copy(PEGANUMERO(CODRE), 5, 2) <> '00' then
      nivel := '5'
    else
      nivel := '4';
  end
  else
    nivel := '4';
  DM.cdsRecTab.FieldByName('nivel').AsString := nivel;
  DM.cdsRecTab.post;
  DM.cdsRecTab.ApplyUpdates(-1);


  Result := Formata_CODRE(CODRE);
end;

function TTfrmprincipal_Conversao.ValiData(data: string): string;
VAR TesteData: Tdatetime; I: integer; Y: STRING;
BEGIN
  Result := '';
  TRY
    Y := '';
    data := trim(data);
    if POS('-', data) > 0 then
    begin
      data := copy(data, 9, 2) + '/' + copy(data, 6, 2) + '/' + copy(data, 1, 4)
    end;
    FOR I := 1 TO Length(data) DO
    BEGIN
      IF data[I] IN ['0' .. '9', '/', '.'] THEN
        Y := Y + data[I];
    END;
    TesteData := StrToDate(Y);
    Result := Y;
  EXCEPT
    Result := '';
  END;
end;

procedure TTfrmprincipal_Conversao.Timer1Timer(Sender: TObject);
begin
  lbltempo.caption := 'Tempo decorrido : ' + FormatDateTime('hh:mm:ss', now - tempoinicio);
end;

procedure TTfrmprincipal_Conversao.Tipo_Doc_Financeiro;
var codigo: integer; descricao: string;
begin
  SITU.caption := 'Tipos de Documentos Financeiros...';
  SITU.update;
  CriaCampo('tipo_doc_financeiro', 'id_tab_tipo_transacao', '20');
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := ' select tab_tipo_transacao, tab_tipo_trans_descr as descricao from tab_tipo_transacao ';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    descricao := UpperCase(trim(DM.QOrigem.FieldByName('descricao').AsString));
    IF descricao = 'CHEQUE' THEN
    BEGIN
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'update tipo_doc_financeiro set id_tab_tipo_transacao = ' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ' where codigo=2';
      DM.Atualiza.ExecSQL;
    END
    ELSE IF ((descricao = 'DEPOSITO') OR (descricao = 'DEPÓSITO') or (descricao = 'DEPóSITO')) THEN
    BEGIN
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'update tipo_doc_financeiro set id_tab_tipo_transacao = ' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ' where codigo=1';
      DM.Atualiza.ExecSQL;
    END
    ELSE IF ((descricao = 'TRANSFERENCIA') OR (descricao = 'TRANSFERÊNCIA') or (descricao = 'TRANSFERêNCIA')) THEN
    BEGIN
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'update tipo_doc_financeiro set id_tab_tipo_transacao = ' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ' where codigo=4';
      DM.Atualiza.ExecSQL;
    END
    ELSE IF ((descricao = 'ORDEM BANCARIA') OR (descricao = 'ORDEM BANCÁRIA') or (descricao = 'ORDEM BANCáRIA')) THEN
    BEGIN
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'update tipo_doc_financeiro set id_tab_tipo_transacao = ' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ' where codigo=3';
      DM.Atualiza.ExecSQL;
    END
    ELSE IF copy(descricao, 1, 3) = 'TED' THEN
    BEGIN
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'update tipo_doc_financeiro set id_tab_tipo_transacao = ' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ' where codigo=5';
      DM.Atualiza.ExecSQL;
    END
    ELSE IF copy(descricao, 1, 3) = 'DOC' THEN
    BEGIN
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'update tipo_doc_financeiro set id_tab_tipo_transacao = ' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ' where codigo=6';
      DM.Atualiza.ExecSQL;
    END
    ELSE IF descricao = 'OUTROS' THEN
    BEGIN
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'update tipo_doc_financeiro set id_tab_tipo_transacao = ' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ' where codigo=99';
      DM.Atualiza.ExecSQL;
    END
    ELSE
    BEGIN
      DM.cdstemp1.close;
      DM.cdstemp1.Commandtext := 'select max(codigo) as codigo from tipo_doc_financeiro where codigo<99';
      DM.cdstemp1.OPEN;
      codigo := DM.cdstemp1.FieldByName('codigo').AsInteger + 1;
      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'insert into tipo_doc_financeiro (codigo,regpadrao,descr,id_tab_tipo_transacao) values(''' + inttostr(codigo) + ''',''N'',''' +
        UpperCase(Tira_Char39(255, descricao)) + ''',''' + trim(DM.QOrigem.FieldByName('tab_tipo_transacao').AsString) + ''')';
      DM.Atualiza.ExecSQL;
    END;
    DM.QOrigem.next;
  END;
  STATUS.caption := 'Tipo Documento Financeiro OK ';
  STATUS.update;
  memoStatus.Lines.Add('Tipo Documento Financeiro OK ');
  Desconecta_Conecta;
end;

FUNCTION TTfrmprincipal_Conversao.Tira_Char39(tamanho_max_string: integer; text: STRING): STRING;
VAR Y: STRING; I: integer;
BEGIN
  Y := trim(text);
  // if y='' then
  // y:='';
  FOR I := 1 TO Length(trim(text)) DO
  BEGIN
    IF (Y[I] = CHAR(39)) THEN
      Y[I] := ' ';
  END;
  Tira_Char39 := copy(Y, 1, tamanho_max_string);
END;

procedure TTfrmprincipal_Conversao.SqlDialect_1;
begin
  // dm.Conexao_Origem.Connected := False;
  // dm.Conexao_Origem.Params.Values['DataBase'] := edtservidororigem.Text + ':' + edtorigem.Text;
  // dm.Conexao_Origem.Params.Values['User_Name'] := 'SYSDBA';
  // dm.Conexao_Origem.Params.Values['password'] := 'masterkey';
  // dm.Conexao_Origem.Params.Values['SQLDialect'] := '1';
  // dm.Conexao_Origem.Connected := True;
  // dm.Conexao_Origem.Connected := False;
  // dm.Conexao_Origem.Params.Values['DataBase'] := edtservidororigem.Text + ':' + edtorigem.Text;
  // dm.Conexao_Origem.Params.Values['User_Name'] := 'SYSDBA';
  // dm.Conexao_Origem.Params.Values['password'] := 'masterkey';
  // dm.Conexao_Origem.Params.Values['SQLDialect'] := '1';
  // dm.Conexao_Origem.Connected := True;
end;



procedure TTfrmprincipal_Conversao.Pagamentos_Restos_Proc_e_NProc_com_Retencao;
VAR NUMSUB, NUMLIQ, ORDPAG, ORDPG, cheqord_new, I: integer; DESCO, Valor, saldo, desconto_parcial, DESCO_TOTAL, Valor_ser_Baixado_do_Empenho: real; LISTA_PKEMP: TStringList;
  FILTRO: string; Achou_Cheqord: boolean; rproc: string;
  ficha: string;
  pkemp: Integer;
  emp_ant: integer;
  erros: Integer;
  filtra_mov: string;
  ficha_ant: String;
BEGIN
  SITU.caption := 'Baixa Restos com Retencao....';
  SITU.update;
  p.Position := 0;
  Atualiza_Generator;
  Desliga_Triggers;
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select max(ordpg) as ordpg from ordpag';
  DM.cdsTemp.OPEN;
  ORDPG := DM.cdsTemp.FieldByName('ordpg').AsInteger;

  // DM.Localiza.CLOSE;
  // DM.Localiza.Commandtext := 'SELECT dd.empresa, dp.* FROM DESPES dp left join desdis dd on (dd.ficha=dp.ficha) WHERE dp.VADEM > 0 ';
  // DM.Localiza.OPEN;
  // DM.Localiza.IndexFieldNames := 'id_em_ano;id_em_num;ID_em_item;id_em_ficha';
  DM.Localiza.close;
  DM.Localiza.Commandtext := 'SELECT v.* FROM viewliq v where modulo in(''LIQ_RP'',''EMP_RP_LIQ'') and v.vadem > 0.00 ';
  DM.Localiza.OPEN;
  DM.qDESTINO.close;
  DM.qDESTINO.Commandtext := ' SELECT * FROM ORDPAG WHERE ORDPG=-1';
  DM.qDESTINO.OPEN;
  DM.localiza4.close;
  DM.localiza4.Commandtext := ' SELECT * FROM DESSUB WHERE PKEMP= -1';
  DM.localiza4.OPEN;
  DM.localiza5.close;
  DM.localiza5.Commandtext := ' SELECT * FROM DESCSUB WHERE PKEMP= -1';
  DM.localiza5.OPEN;
  DM.localiza6.close;
  DM.localiza6.Commandtext := ' SELECT * FROM subord WHERE PKEMP= -1';
  DM.localiza6.OPEN;
  DM.localiza7.close;
  DM.localiza7.Commandtext := ' SELECT * FROM cheqord WHERE cheqord = -1';
  DM.localiza7.OPEN;

  DM.QOrigem.close; // lista as op

  if ANO.Value > 2012 then
     DM.QOrigem.Commandtext :=
    'SELECT A.CDUNIDADEGESTORA, NRSEQUENCIA, DTANOEMISSAO, NREMPENHO, IDEMPENHO, NRSEQUENCIASUBEMPENHO, ' +
    '       CDTIPOMOVIMENTO, CDHISTORICOSISTEMA, NRSEQUENCIASISTEMA, INMOVIMENTORESTOS, A.CDTIPOMOVIMENTO, ' +
    'CASE ' +
    '    WHEN A.CDTIPOMOVIMENTO = 472 THEN COALESCE((SELECT SUM(R.VLRETENCAORESTOS) FROM ['+BNC_CPE+'].[DBO].[DATAVIEW_RETENCAO_RESTOS] R ' +
    '                                                                                                         WHERE R.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '                                                                                                         R.NREMPENHO = A.NREMPENHO AND ' +
    '                                                                                                         R.DTANOEMISSAO=A.DTANOEMISSAO AND ' +
    '                                                                                                         R.NRSEQUENCIASUBEMPENHO = A.NRSEQUENCIASUBEMPENHO AND ' +
    '                                                                                                         A.CDEMENTA = R.CDEMENTA), 0) ' +
    '    ELSE 0 ' +
    'END AS DESCONTO, ' +
    'CASE ' +
    '    WHEN (((COALESCE((SELECT SUM(R.VLRETENCAORESTOS) FROM ['+BNC_CPE+'].[DBO].[DATAVIEW_RETENCAO_RESTOS] R ' +
    '                                                     WHERE R.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '                                                     R.NREMPENHO = A.NREMPENHO AND ' +
    '                                                     R.DTANOEMISSAO = A.DTANOEMISSAO AND ' +
    '                                                     R.NRSEQUENCIASUBEMPENHO = A.NRSEQUENCIASUBEMPENHO AND ' +
    '                                                     A.CDEMENTA = R.CDEMENTA) ,0)) > 0.00) AND ' +
    '                                                     A.CDTIPOMOVIMENTO = 472) THEN 0.00 ' +
    '    ELSE COALESCE((SELECT SUM(M.VLMOVIMENTO) FROM ['+BNC_CPE+'].DBO.MOVIMENTO M ' +
    '    	                                     WHERE M.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '    	                                     M.DTANOEMISSAO = A.DTANOEMISSAO AND ' +
    '    	                                     M.NREMPENHO = A.NREMPENHO AND ' +
    '    	                                     M.NRSEQUENCIASUBEMPENHO = A.NRSEQUENCIASUBEMPENHO AND ' +
    '    	                                     A.DTMOVIMENTO = M.DTMOVIMENTO AND ' +
    '    	                                     M.CDTIPOMOVIMENTO IN (453,536,543) AND A.CDEMENTA = M.CDEMENTA), 0) ' +
    'END AS VLR_LIQ, ' +
    'COALESCE((SELECT TOP 1 Q.DTMOVIMENTO FROM ['+BNC_CPE+'].DBO.[DATAVIEW_RETENCAO_RESTOS] Q ' +
    '	                                 WHERE Q.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                 Q.NREMPENHO = A.NREMPENHO AND Q.DTANOEMISSAO = A.DTANOEMISSAO AND ' +
    '	                                 Q.NRSEQUENCIASUBEMPENHO = A.NRSEQUENCIASUBEMPENHO AND ' +
    '	                                 A.CDEMENTA = Q.CDEMENTA), [DTMOVIMENTO]) AS DTMOVIMENTO, ' +
    'CDCONTACONTABIL, CDDESPESA, CDRECEITA, CDUNIDADEFINANCEIRA, CDDESPESASECUNDARIA, CDOBJETODESPESA, ' +
    'CASE ' +
    '    WHEN CDTIPOMOVIMENTO = 472 THEN (SELECT TOP 1 L.CDFORNECEDOR FROM ['+BNC_CPE+'].DBO.DATAVIEW_PAGAMENTO_RESTOS L WHERE L.NRSEQUENCIA = A.NRSEQUENCIASISTEMA) ' +
    '    ELSE CDFORNECEDOR ' +
    'END AS CDFORNECEDOR, ' +
    'CASE ' +
    '    WHEN CDCONTRAPARTIDA = 0 THEN (SELECT TOP 1 L.CDCONTRAPARTIDA FROM ['+BNC_CPE+'].DBO.DATAVIEW_PAGAMENTO_RESTOS L WHERE L.NRSEQUENCIA = A.NRSEQUENCIASISTEMA) ' +
    'ELSE CDCONTRAPARTIDA END AS CDCONTRAPARTIDA, ' +
    'COALESCE(CAST(SUBSTRING(H.DSCOMPLHISTORICO , 1 , 1024) AS VARCHAR(1024)),''PAGAMENTO DE RESTOS A PAGAR'') AS PRODU, ' +
    'CDHISTORICOPADRAO, IDBCTEFINANCEIRO, DTMESEMISSAOEMPENHO, IDDOCUMENTOPAGTO, NRDOCUMENTOPAGTO, IDMOVCONCILIADO, DTDIACONCILIACAO, ' +
    'DTMESCONCILIACAO, NRARTIGOCAIXA, VLRESERVADO, IDFUNDAMENTOLEGAL, NRFUNDAMENTOLEGAL, CDEMENTA, INCORRECAO, CDBANCO, CDAGENCIA, ' +
    'CDCONTACORRENTE, NRNOTARESERVASALDO, CDGRUPOEVENTO, IDCLASSEEVENTO, CDEVENTO, DTDOCUMENTOPAGTO, CDAPLICACAO, CDFONTERECURSO, ' +
    'QTDIASAPLICACAO, CDINSCRICAO, TPIDENTIFICACAO, CDCONTROLEEXCLUSAO, VLBAIXARESTOS, VLRETENCAORESTOS, VLBAIXARESTOSCOMRETENCAO, ' +
    'COALESCE((SELECT SUM(M.VLMOVIMENTO) FROM ['+BNC_CPE+'].DBO.MOVIMENTO M WHERE M.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                                                   M.DTANOEMISSAO = A.DTANOEMISSAO AND ' +
    '	                                                                   M.NREMPENHO = A.NREMPENHO AND ' +
    '	                                                                   M.NRSEQUENCIASUBEMPENHO = A.NRSEQUENCIASUBEMPENHO AND ' +
    '	                                                                   A.DTMOVIMENTO = M.DTMOVIMENTO AND ' +
    '	                                                                   M.CDTIPOMOVIMENTO IN (453,536,543) AND ' +
    '	                                                                   A.CDEMENTA = M.CDEMENTA),0) AS VLMOVIMENTO ' +
    'FROM ['+BNC_CPE+'].[DBO].[DATAVIEW_PAGAMENTO_RESTOS] A ' +
    'LEFT JOIN ['+BNC_CPE+'].[DBO].[COMPLEMENTOHISTORICO] H ON (A.NRCOMPLHISTORICO = H.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA = H.CDUNIDADEGESTORA) ' +
    'WHERE CDHISTORICOPADRAO IN (453,536,543) AND ((COALESCE((SELECT SUM(R.VLRETENCAORESTOS) FROM ['+BNC_CPE+'].[DBO].[DATAVIEW_RETENCAO_RESTOS] R ' +
    '                                                                                        WHERE R.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '                                                                                        R.NREMPENHO = A.NREMPENHO AND ' +
    '                                                                                        R.DTANOEMISSAO = A.DTANOEMISSAO AND ' +
    '                                                                                        R.NRSEQUENCIASUBEMPENHO = A.NRSEQUENCIASUBEMPENHO AND ' +
    '                                                                                        A.CDEMENTA = R.CDEMENTA),0)) > 0.00 ' +
    'OR (COALESCE([VLBAIXARESTOSCOMRETENCAO],0) - COALESCE((SELECT SUM(R.VLRETENCAORESTOS) FROM ['+BNC_CPE+'].[DBO].[DATAVIEW_RETENCAO_RESTOS] R ' +
    '                                                                                       WHERE R.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '                                                                                       R.NREMPENHO = A.NREMPENHO AND ' +
    '                                                                                       R.DTANOEMISSAO = A.DTANOEMISSAO AND ' +
    '                                                                                       R.NRSEQUENCIASUBEMPENHO = A.NRSEQUENCIASUBEMPENHO AND ' +
    '                                                                                       A.CDEMENTA = R.CDEMENTA),0)) > 0.00) ' +
    'ORDER BY CDUNIDADEGESTORA, DTANOEMISSAO, NREMPENHO, INMOVIMENTORESTOS, DTMOVIMENTO, NRSEQUENCIASUBEMPENHO'
    ELSE
     DM.QOrigem.Commandtext :=
        'select *, ' +
        'CASE ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''453'' THEN ' +
        '       COALESCE((SELECT Z.CDCONTRAPARTIDA FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTRAPARTIDA ' +
        '                                          WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''454'' THEN ' +
        '       COALESCE((SELECT Z.CDCONTACONTABIL FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTACONTABIL ' +
        '                                          WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    ELSE A.CDCONTRAPARTIDA END ' +
        'AS CONTA, ' +
        'CASE ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''453'' and a.NRDOCUMENTOPAGTO = ''0'' THEN ' +
        '       COALESCE((SELECT Z.NRDOCUMENTOPAGTO FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTRAPARTIDA ' +
        '                                           WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''454'' and a.NRDOCUMENTOPAGTO = ''0'' THEN ' +
        '       COALESCE((SELECT Z.NRDOCUMENTOPAGTO FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTACONTABIL ' +
        '                                           WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    ELSE A.NRDOCUMENTOPAGTO ' +
        'END AS NRDOCUMENTO ' +
        'FROM ['+BNC_CPE+'].[dbo].movimento a ' +
        'WHERE ((a.CDTIPOMOVIMENTO IN (453,472) AND a.CDHISTORICOSISTEMA <> 455 )) /* OR (a.CDTIPOMOVIMENTO IN (454,473,456) AND a.VLMOVIMENTO <> 0))*/ AND ' +
        //'WHERE ((a.CDTIPOMOVIMENTO IN (453,472) AND a.CDHISTORICOSISTEMA <> 455 )  OR (a.CDTIPOMOVIMENTO IN (454,473,456) AND a.VLMOVIMENTO <> 0)) AND ' +
        'a.CDHISTORICOPADRAO NOT IN (576,512) AND a.DTANOEMISSAO < '+ANO.Text+' and a.IDEMPENHO = 1 AND A.VLMOVIMENTO <> 0.00 ' +
        'order by cdUnidadeGestora, dtAnoEmissao,nrEmpenho,inMovimentoRestos,dtmovimento,nrSequenciaSubempenho';

  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;
  DM.LOCALIZAORIGEM.close; // lista os descontos da op

  if ANO.Value > 2012 then
    DM.LOCALIZAORIGEM.Commandtext :=
      'SELECT r.nrSequenciaPagamento,r.cdUnidadeGestora,r.nrSequencia, r.NrSequenciaSistema, r.dtAnoEmissao,r.dtmovimento,r.cdEmenta ' +
      '      ,r.nrEmpenho,r.nrSequenciaSubempenho,r.idEmpenho,vlRetencaorestos as vlRetencao, r.cdHistoricoPadrao ' +
      ' ,(select top 1 m.cdcontacontabil from '+ bnc_cpe +'.dbo.movimento m  where m.cdunidadegestora=r.cdunidadegestora and m.nrsequenciasistema = r.nrsequencia and m.cdtipomovimento =465 '+
      '  and m.nrempenho= r.nrempenho and m.dtanoemissao=r.dtanoemissao and m.nrsequenciasubempenho=r.nrsequenciasubempenho and m.cdfornecedor=r.cdfornecedor) as cdConta '+
      '  FROM ['+ bnc_cpe +'].[dbo].[dataview_retencao_restos] r '
  ELSE
    DM.LOCALIZAORIGEM.Commandtext :=
//      'SELECT A.NRSEQUENCIASISTEMA, B.NREMPENHO, B.CDCONTRAPARTIDA, A.CDUNIDADEGESTORA, A.CDRECEITA, A.VLMOVIMENTO ' +
//      'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
//      'INNER JOIN ['+BNC_CPE+'].DBO.MOVIMENTO B ON B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND B.CDTIPOMOVIMENTO = 464 ' +
//      'LEFT JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL C ON C.CDCONTACONTABIL = B.CDCONTRAPARTIDA ' +
//      'WHERE A.CDTIPOMOVIMENTO IN (453,472) AND A.CDHISTORICOSISTEMA = 455 AND ' +
//      '(C.CDNIVELCONTABIL LIKE ''2188%'' OR C.CDNIVELCONTABIL LIKE ''1138%'' OR B.CDRECEITA > 0) AND ' +
//      'A.DTANOEMISSAO < 2011 ' +
//      'ORDER BY A.NRSEQUENCIA';

        'SELECT A.CDUNIDADEGESTORA, A.NRSEQUENCIASISTEMA, A.NRSEQUENCIA, A.NREMPENHO, A.CDRECEITA, A.VLMOVIMENTO, ' +
        'A.CDTIPOMOVIMENTO, A.CDHISTORICOSISTEMA, A.CDCONTACONTABIL, A.CDCONTRAPARTIDA, A.DTANOEMISSAO, a.nrsequenciasubempenho ,' +
        'CASE ' +
        'WHEN A.CDCONTACONTABIL <> 0 THEN A.CDCONTACONTABIL ' +
        'WHEN A.CDCONTRAPARTIDA <> 0 THEN A.CDCONTRAPARTIDA ' +
        'ELSE (SELECT B.CDCONTACONTABIL FROM ['+BNC_CPE+'].DBO.MOVIMENTO B WHERE B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND ' +
        'B.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
        'B.NREMPENHO = A.NREMPENHO AND ' +
        'B.CDCONTRAPARTIDA = 0 AND B.CDCONTACONTABIL <> 0) ' +
        'END AS CONTA_DESCONTO ' +
        'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
        'WHERE A.CDTIPOMOVIMENTO IN (453,472) AND A.CDHISTORICOSISTEMA = 455 ' +
        'AND A.DTANOEMISSAO < '+Ano.Text+' ' +
        'ORDER BY A.NRSEQUENCIA';

  DM.LOCALIZAORIGEM.OPEN;


  if Ano.Value <= 2012 then
  begin
       DM.LocalizaOrigem5.Close;
       DM.LocalizaOrigem5.CommandText :=
        'SELECT A.CDUNIDADEGESTORA, A.NRSEQUENCIASISTEMA, A.NRSEQUENCIA, A.NREMPENHO, A.CDRECEITA, A.VLMOVIMENTO, ' +
        'A.CDTIPOMOVIMENTO, A.CDHISTORICOSISTEMA, A.CDCONTACONTABIL, A.CDCONTRAPARTIDA, ' +
        'CASE ' +
        'WHEN A.CDCONTACONTABIL <> 0 THEN A.CDCONTACONTABIL ' +
        'WHEN A.CDCONTRAPARTIDA <> 0 THEN A.CDCONTRAPARTIDA ' +
        'ELSE (SELECT B.CDCONTACONTABIL FROM ['+BNC_CPE+'].DBO.MOVIMENTO B WHERE B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND ' +
        'B.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
        'B.NREMPENHO = A.NREMPENHO AND ' +
        'B.CDCONTRAPARTIDA = 0 AND B.CDCONTACONTABIL <> 0) ' +
        'END AS CONTA_DESCONTO ' +
        'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
        'WHERE A.CDTIPOMOVIMENTO IN (453,472) AND A.CDHISTORICOSISTEMA = 455 ' +
        'AND A.DTANOEMISSAO < '+Ano.Text+' ' +
        'ORDER BY A.NRSEQUENCIA';
       DM.LocalizaOrigem5.Open;
  end;


  // dm.AtualizaOrigem.Close;
  // dm.AtualizaOrigem.CommandText :=  // Lista os Empenhos da OP
  // 'select distinct o.mp_ano, o.mp_ficha, o.mp_num, o.mp_item, e.em_codfor,o.mp_valor, o.mp_desc from pagamentos o ' +
  // 'inner join empenhos e on (o.mp_ano=e.em_ano and  o.mp_ficha=e.em_ficha and o.mp_num =e.em_num and o.mp_item=e.em_item) ' +
  // 'where o.mp_ano='+inttostr(ano.Value)+' and o.mp_ficha <5000 and o.mp_mov=''1'' ' +
  // 'order by o.mp_num';
  // dm.AtualizaOrigem.open;

   DM.cdsOrigem.close;
   DM.cdsOrigem.Commandtext := // lista a cheqord
    ' select a.nrsequenciasistema, A.CDTIPOMOVIMENTO, a.cdunidadegestora, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' +
    ' from ['+bnc_cpe + '].DBO.movimento a ' + ' inner join ' + bnc_cpc + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
    ' where  a.cdtipomovimento in (464,465)  and b.cdnivelcontabil like ''111%'' ';
   DM.cdsOrigem.OPEN;
  emp_ant := 0;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    {$region ' Localiza Liquidação.... '}
    if (trim(DM.qorigem.FieldByName('inMovimentoRestos').AsString) = '0') AND (trim(DM.qorigem.FieldByName('CDTIPOMOVIMENTO').AsString) <> '454') then
      filtra_mov := ' and modulo = ''LIQ_RP'' '
    else if (trim(DM.qorigem.FieldByName('inMovimentoRestos').AsString) = '0') AND (trim(DM.qorigem.FieldByName('CDTIPOMOVIMENTO').AsString) = '454') then
      filtra_mov := ' and modulo = ''EMP_RP_LIQ'' '
    ELSE
      filtra_mov := ' and modulo = ''EMP_RP_LIQ'' ';

    if trim(DM.qorigem.FieldByName('cdtipomovimento').AsString) <> '472' then
      filtro := ' and ID_NRsequencia = ''' + trim(DM.qorigem.FieldByName('nrsequenciasistema').AsString) + ''' '+
                    ' and id_nrsequenciasubempenho = ''' +  trim(DM.qorigem.FieldByName('nrsequenciasubempenho').AsString)+ ''' '
    else
      filtro := ' and ID_NRsequencia = ''' + trim(DM.qorigem.FieldByName('nrsequencia').AsString) + ''' '+
                    ' and id_nrsequenciasubempenho = ''' +  trim(DM.qorigem.FieldByName('nrsequenciasubempenho').AsString)+ ''' ';

    DM.Localiza.Filtered := false;
    DM.Localiza.Filter := ' ID_CDUNIDADEGESTORA = ''' +  trim(DM.qorigem.FieldByName('CDUNIDADEGESTORA').AsString) + ''' '+  filtro;
    DM.Localiza.Filtered := true;
//    if dm.Localiza.IsEmpty then
//    begin
//      DM.Localiza.Filtered := false;
//      DM.Localiza.Filter := ' ID_NRsequencia = ''' + trim(DM.qorigem.FieldByName('nrsequencia').AsString) + ''' '+
//                            ' and id_nrsequenciasubempenho = ''' +  trim(DM.qorigem.FieldByName('nrsequenciasubempenho').AsString)+ ''' ' + filtra_mov;
//      DM.Localiza.Filtered := true;
//      DM.Localiza.Filtered := false;
//      if dm.Localiza.IsEmpty then
//      begin
//        DM.Localiza.Filter := ' ID_NRsequencia = ''' + trim(DM.qorigem.FieldByName('nrsequenciasistema').AsString) + ''' ' + filtra_mov;
//        DM.Localiza.Filtered := true;
//      end;
//    end;
    if dm.Localiza.IsEmpty then
    begin
      DM.Localiza.Filtered := false;
      DM.Localiza.Filter := ' ID_CDUNIDADEGESTORA = ''' +  trim(DM.qorigem.FieldByName('CDUNIDADEGESTORA').AsString) + ''' '+
                            ' and id_nrempenho = ''' + trim(DM.qorigem.FieldByName('nrempenho').AsString) + ''' '+
                            ' and id_dtanoemissao = ''' + trim(DM.qorigem.FieldByName('dtanoemissao').AsString) + ''' '+
                            ' and id_cdfornecedor = ''' + trim(DM.qorigem.FieldByName('cdfornecedor').AsString) + ''' '+
                            ' and id_nrsequenciasubempenho = ''' +  trim(DM.qorigem.FieldByName('nrsequenciasubempenho').AsString)+ ''' ' + filtra_mov;
      DM.Localiza.Filtered := true;
      if dm.Localiza.IsEmpty then
      begin
        DM.Localiza.Filtered := false;
        DM.Localiza.Filter := ' ID_CDUNIDADEGESTORA = ''' +  trim(DM.qorigem.FieldByName('CDUNIDADEGESTORA').AsString) + ''' '+
                              ' and id_nrempenho = ''' + trim(DM.qorigem.FieldByName('nrempenho').AsString) + ''' '+
                              ' and id_dtanoemissao = ''' + trim(DM.qorigem.FieldByName('dtanoemissao').AsString) + ''' '+
                              ' and id_cdfornecedor = ''' + trim(DM.qorigem.FieldByName('cdfornecedor').AsString) + ''' ' + filtra_mov;
        DM.Localiza.Filtered := true;
      end;
    end;
    if dm.Localiza.IsEmpty then
      pkemp := 0;

    {$endregion}


    IF (DM.QORIGEM.FieldByName('CDTIPOMOVIMENTO').AsString = '453') OR (DM.QORIGEM.FieldByName('CDTIPOMOVIMENTO').AsString = '472') THEN
    BEGIN
      DM.LOCALIZAORIGEM.FiLTERED := false;
      DM.LOCALIZAORIGEM.FILTER := 'nrsequenciasistema = ''' + DM.QORIGEM.FieldByName('nrsequencia').AsString + ''' ';
      DM.LOCALIZAORIGEM.FiLTERED := True;
      DESCO := 0;
      WHILE NOT DM.LOCALIZAORIGEM.eof DO
      BEGIN
        if ano.Value >2012 then
          DESCO := DESCO + DM.LOCALIZAORIGEM.FieldByName('vlRetencao').AsFloat
        else
          DESCO := DESCO + DM.LOCALIZAORIGEM.FieldByName('vlmovimento').AsFloat;
        DM.LOCALIZAORIGEM.Next;
      END;
    END
    ELSE
      DESCO := 0;

    DM.LOCALIZAORIGEM.first;


    {$REGION ' ORDPAG'}
     // *****************************cria ordpag********************************//
    inc(ORDPG);
//    desco := 0.00;
    DM.qDESTINO.append;
    DM.qDESTINO.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.qDESTINO.FieldByName('DATAE').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('VENCI').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    if trim(DM.qDESTINO.FieldByName('VENCI').AsString) = '' then
      DM.qDESTINO.FieldByName('VENCI').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('DTPAG').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('COMP').AsString := 'N';
    DM.qDESTINO.FieldByName('modulo').AsString := 'OP_RP';

    if Ano.Value > 2012 then
      DM.qDESTINO.FieldByName('produ').AsString := Tira_Char39(250, dm.QOrigem.FieldByName('produ').AsString)
    else
      DM.qDESTINO.FieldByName('produ').AsString := Tira_Char39(250, dm.Localiza.FieldByName('produ').AsString);

    DM.qDESTINO.FieldByName('CODIF').asstring := Traz_Codif(DM.qorigem.FieldByName('cdunidadegestora').AsString,DM.qorigem.FieldByName('cdfornecedor').AsString);
    DM.qDESTINO.FieldByName('empresa').asstring := Traz_Entidade(DM.qorigem.FieldByName('cdunidadegestora').asstring);

    if ano.Value > 2012 then
    begin
      desco := 0.00;
      DM.qDESTINO.FieldByName('VALOR').ASCURRENCY := dm.QORIGEM.FieldByName('vlBaixaRestosComRetencao').ASCURRENCY;//dm.QORIGEM.FieldByName('vlr_liq').ASCURRENCY + dm.QORIGEM.FieldByName('desconto').ASCURRENCY;
      DM.qDESTINO.FieldByName('DESCO').ASCURRENCY := dm.QORIGEM.FieldByName('vlRetencaoRestos').ASCURRENCY;//dm.QORIGEM.FieldByName('desconto').ASCURRENCY;
      desco :=  dm.QORIGEM.FieldByName('vlRetencaoRestos').ASCURRENCY;//dm.QORIGEM.FieldByName('desconto').ASCURRENCY;
    end
    else
    begin
      DM.qDESTINO.FieldByName('VALOR').ASCURRENCY := dm.QORIGEM.FieldByName('vlmovimento').ASCURRENCY ;
      DM.qDESTINO.FieldByName('DESCO').ASCURRENCY := DESCO;
    end;

    DM.qDESTINO.FieldByName('ORDPGSEQ').AsInteger := DM.qorigem.FieldByName('nrsequencia').AsInteger;
    DM.qDESTINO.FieldByName('ID_nrsequencia').asstring := DM.qorigem.FieldByName('nrsequencia').asstring;
    DM.qDESTINO.FieldByName('ID_nrsequenciasistema').asstring := DM.qorigem.FieldByName('nrsequenciasistema').asstring;
    DM.qDESTINO.post;
//    DM.qDESTINO.ApplyUpdates(-1);
    // *****************************cria ordpag********************************//
    {$ENDREGION}
    {$region ' Dessub '}
    // *****************************cria dessub********************************//

    pkemp := dm.Localiza.FieldByName('pkemp').AsInteger;
    if emp_ant <> dm.Localiza.FieldByName('pkemp').AsInteger then
      numsub := 0;
    emp_ant := dm.Localiza.FieldByName('pkemp').AsInteger;


    inc(numsub);
    DM.localiza4.append;
    DM.localiza4.FieldByName('numsub').AsInteger := NUMSUB;
    DM.localiza4.FieldByName('PARCELA').AsInteger := numsub;
    DM.localiza4.FieldByName('PKEMP').AsInteger := pkemp;
    DM.localiza4.FieldByName('PRODU').AsString := DM.qDESTINO.FieldByName('produ').AsString + '  ' +DM.localiza.FieldByName('PRODU').AsString;
    DM.localiza4.FieldByName('NUMLIQ').AsInteger := DM.LOCALIZA.FieldByName('numsub').AsInteger;
    DM.localiza4.FieldByName('DATAE').AsString := DM.qdestino.FieldByName('DATAE').AsString;
    DM.localiza4.FieldByName('VENCI').AsString := DM.qdestino.FieldByName('VENCI').AsString;
    DM.localiza4.FieldByName('VADEM').ASCURRENCY := DM.qdestino.FieldByName('valor').ASCURRENCY;
    DM.localiza4.FieldByName('DESCO').ASCURRENCY := desco;
    DM.localiza4.FieldByName('modulo').AsString := 'OP_RP';
    DM.localiza4.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
    DM.localiza4.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
    DM.localiza4.post;
//    DM.localiza4.ApplyUpdates(-1);
    // *****************************cria dessub********************************//
    {$endregion}
    {$region ' Descsub '}
    // *****************************cria descsub*******************************//
    if arredonda(desco,2) > 0.00 then
    begin
      DM.LOCALIZAORIGEM.FILTERED := false;

      if Ano.Value > 2012 then
        DM.LOCALIZAORIGEM.FILTER := ' nrsequenciapagamento=''' + DM.qorigem.FieldByName('nrsequencia').AsString +  ''' '+
          ' AND cdunidadegestora=''' + DM.qorigem.FieldByName('cdunidadegestora').AsString+ ''' '
      else
        DM.LOCALIZAORIGEM.FILTER := ' nrsequenciasistema=''' + DM.qorigem.FieldByName('nrsequencia').AsString +  ''' '+
          ' AND cdunidadegestora=''' + DM.qorigem.FieldByName('cdunidadegestora').AsString+ ''' ';

      DM.LOCALIZAORIGEM.FILTERED := true;
      if  DM.LOCALIZAORIGEM.IsEmpty then
      begin
        DM.LOCALIZAORIGEM.FILTERED := false;
        DM.LOCALIZAORIGEM.FILTER := ' dtanoemissao=''' + DM.qorigem.FieldByName('dtanoemissao').AsString +  ''' '+
          ' and nrempenho =''' + DM.qorigem.FieldByName('nrempenho').AsString +  ''' '+
          ' and nrsequenciasubempenho =''' + DM.qorigem.FieldByName('nrsequenciasubempenho').AsString +  ''' '+
          ' AND cdunidadegestora=''' + DM.qorigem.FieldByName('cdunidadegestora').AsString+ ''' ';
        DM.LOCALIZAORIGEM.FILTERED := true;
      end;
      if not DM.LOCALIZAORIGEM.IsEmpty then
      begin
        DM.LOCALIZAORIGEM.first;
        ficha_ant := '####';

        while not DM.LOCALIZAORIGEM.eof do
        begin

          if Ano.Value > 2012 then
            ficha := Traz_Ficha_Desconto(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString,'0',DM.LOCALIZAORIGEM.FieldByName('cdconta').AsString)
          else
            ficha := Traz_Ficha_Desconto(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString,'0',DM.LOCALIZAORIGEM.FieldByName('conta_desconto').AsString);

          if trim(ficha) <> '' then
          begin

            if ANO.Value > 2012 then
            BEGIN
                DM.localiza5.append;
                DM.localiza5.FieldByName('PKEMP').AsInteger := pkemp;
                DM.localiza5.FieldByName('NUMSUB').AsInteger := NUMSUB;
                DM.localiza5.FieldByName('FICHA').AsString := ficha;
                DM.localiza5.FieldByName('modulo').AsString := 'OP_RP';
                DM.localiza5.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
                DM.localiza5.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;

                DM.localiza5.FieldByName('ID_CDCONTACONTABIL').AsString := DM.LOCALIZAORIGEM.FieldByName('cdconta').AsString;
    //            DM.localiza5.FieldByName('ID_CDreceita').AsString := DM.LOCALIZAORIGEM.FieldByName('cdreceita').AsString;
                DM.localiza5.FieldByName('VALOR').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlretencao').ASCURRENCY;

                DM.localiza5.FieldByName('COMP').AsString := 'N';
                DM.localiza5.post;
    //            DM.localiza5.ApplyUpdates(-1);
            END
            ELSE
            BEGIN

                DESCO_TOTAL := 0.00;

                if ficha_ant <> ficha then
                begin
                      ficha_ant := ficha;
                      DM.LocalizaOrigem5.Filtered := false;
                      DM.LocalizaOrigem5.Filter := 'nrempenho = '''+DM.LOCALIZAORIGEM.FieldByName('nrempenho').AsString+''' and cdunidadegestora = '+DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString+' and conta_desconto = '+DM.LOCALIZAORIGEM.FieldByName('conta_desconto').AsString+' '+
                                             'and nrsequenciasistema = '+DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').AsString;
                      DM.LocalizaOrigem5.Filtered := true;

                      while not DM.LocalizaOrigem5.Eof do
                      begin
                           DESCO_TOTAL := DESCO_TOTAL + DM.LocalizaOrigem5.FieldByName('VLMOVIMENTO').AsCurrency;
                           DM.LocalizaOrigem5.Next;
                      end;

                      DM.localiza5.append;
                      DM.localiza5.FieldByName('PKEMP').AsInteger := pkemp;
                      DM.localiza5.FieldByName('NUMSUB').AsInteger := NUMSUB;
                      DM.localiza5.FieldByName('FICHA').AsString := ficha;
                      DM.localiza5.FieldByName('modulo').AsString := 'OP_RP';
                      DM.localiza5.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
                      DM.localiza5.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
                      DM.localiza5.FieldByName('ID_CDCONTACONTABIL').AsString := DM.LOCALIZAORIGEM.FieldByName('conta_desconto').AsString;
          //            DM.localiza5.FieldByName('ID_CDreceita').AsString := DM.LOCALIZAORIGEM.FieldByName('cdreceita').AsString;
                      DM.localiza5.FieldByName('VALOR').ASCURRENCY := DESCO_TOTAL;//DM.LOCALIZAORIGEM.FieldByName('vlmovimento').ASCURRENCY;
                      DM.localiza5.FieldByName('COMP').AsString := 'N';
                      DM.localiza5.post;
          //            DM.localiza5.ApplyUpdates(-1);

                end;
            END;
          end
          else
          begin
              if Ano.Value > 2012 then
                memoStatus.Lines.Add('  DESCONTO - UG/Ficha não encontrada: ' + trim(DM.qorigem.FieldByName('cdunidadegestora').AsString) + '/' +
                  trim(DM.qorigem.FieldByName('cdconta').AsString))
              else
                memoStatus.Lines.Add('  DESCONTO - UG/Ficha não encontrada: ' + trim(DM.qorigem.FieldByName('cdunidadegestora').AsString) + '/' +
                  trim(DM.qorigem.FieldByName('conta_desconto').AsString));
          end;
          DM.LOCALIZAORIGEM.next; application.ProcessMessages;
        end;
      end
      else
        memoStatus.Lines.Add('  DESCONTO - Não achou nrseq/ug ' + DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString + '/'+DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString );
    end;
    // *****************************cria descsub*******************************//
    {$endregion}
    {$region ' SubOrd '}
    // *****************************cria subord********************************//
    DM.localiza6.append;
    DM.localiza6.FieldByName('PKEMP').AsInteger := pkemp;
    DM.localiza6.FieldByName('NUMSUB').AsInteger := numsub;
    DM.localiza6.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.localiza6.FieldByName('COMP').AsString := 'N';
    DM.localiza6.FieldByName('modulo').AsString := 'OP_RP';
    DM.localiza6.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
    DM.localiza6.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
    DM.localiza6.post;
//    DM.localiza6.ApplyUpdates(-1);
    // *****************************cria subord********************************//
    {$endregion}
    {$region ' CheqOrd '}
    // *****************************cheqord************************************//
    DM.localiza7.append;
    DM.localiza7.FieldByName('CHEQORD').AsInteger := 0 ;
    DM.localiza7.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.localiza7.FieldByName('dtlan').AsString := DM.QORIGEM.FieldByName('dtmovimento').AsString;
    DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.qorigem.FieldByName('cdunidadegestora').AsString),trim(DM.qorigem.FieldByName('cdcontrapartida').AsString));
    DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);

    DM.localiza7.FieldByName('CHEQN').VALUE := DM.qorigem.FieldByName('NRDOCUMENTOPAGTO').VALUE;

    if Ano.Value > 2012 then
      DM.localiza7.FieldByName('VALOR').ASCURRENCY := DM.qorigem.FieldByName('vlBaixaRestos').ASCURRENCY // DM.qorigem.FieldByName('vlr_liq').ASCURRENCY; valor      []
    else
      DM.localiza7.FieldByName('VALOR').ASCURRENCY := DM.qorigem.FieldByName('vlmovimento').ASCURRENCY - desco; // DM.qorigem.FieldByName('vlr_liq').ASCURRENCY; valor      []


    DM.localiza7.FieldByName('COMP').AsString := 'N';
    DM.localiza7.FieldByName('modulo').AsString := 'OP_RP';
    DM.localiza7.FieldByName('id_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
    DM.localiza7.FieldByName('id_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
      DM.cdsorigem.FILTERED := false;
      DM.cdsorigem.FILTER := ' cdunidadegestora = ' + DM.qorigem.FieldByName('cdunidadegestora').AsString +
        ' AND nrsequenciasistema = ' + DM.qorigem.FieldByName('nrsequencia').AsString;
      DM.cdsorigem.FILTERED := true;
      if not DM.cdsorigem.IsEmpty then
        DM.localiza7.FieldByName('ID_CONCILIA').AsString := DM.cdsorigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', DM.cdsorigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' +  FORMATCURR('00', DM.cdsorigem.FieldByName('DTMESCONCILIACAO').Asinteger)
      else
        DM.localiza7.FieldByName('ID_CONCILIA').AsString := 'N;00/00';
    DM.localiza7.post;
//    DM.localiza7.ApplyUpdates(-1);
    // *****************************cheqord************************************//
    {$endregion}

      DM.QOrigem.next;
  end;
  {$region ' Salva o restante..... '}
  try
    status.caption := 'Salvando as ORPAG....';
    status.update;
    erros := DM.qDESTINO.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Ordpag ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza4.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Dessub ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESCSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza5.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Descsub ');
    application.ProcessMessages;
    status.caption := 'Salvando as SUBORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza6.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Subord ');
    application.ProcessMessages;
    status.caption := 'Salvando as CHEQORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza7.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Cheqord ');
    application.ProcessMessages;

    status.caption := 'Atualizando descsub....';
	  status.update;
    if erros = 0 then
    begin
      DM.qaux.close;
      DM.qaux.Commandtext :=
      '  UPDATE DESCSUB Z SET ' +
      '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
      '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
      '  WHERE z.modulo = ''OP_RP'' and z.conta is null  ';
      DM.qaux.Execute;
    end;


    status.caption := 'Atualizando as ORPAG....';
    status.update;
    if erros = 0 then
    begin
      DM.qaux.close;
      DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''OP_RP'' AND comp = ''N'' ';
      DM.qaux.Execute;
    end;
    status.caption := '';
    status.update;
    application.ProcessMessages;
    if erros > 0  then
      memoStatus.Lines.Add('  Problemas nas OP´s ');
    erros := 0;
    i:=0;
  except
    memoStatus.Lines.Add('  Problemas nas OP´s ');
  end;
  {$endregion}



  STATUS.caption := 'Baixa Restos a Pagar com Desconto.... OK';
  STATUS.update;
  memoStatus.Lines.Add('Baixa Restos a Pagar com Desconto.... OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Pagamento_Orcamentario_com_Retencao;
var codif, NLANC_NEW: integer; QUANTOS: integer; ORDPG, ORDPGSEQ, pkemp, numsub: integer; CHEQORD_NEW: integer; vingrupo: string; vincodigo: string; FonGrupo: string;
  FonCodigo: string;
  i: Integer;
  erros: Integer;
  emp_ant: Integer;
  DESCO: real;
  ficha: string;
  nrseq_ant: String;
  filtro: string;
  ID_CDCONTACONTABIL: string;
begin
  SITU.caption := 'BAIXAS DE EMPENHOS ORÇAMENTÁRIOS...';
  SITU.update;
  CriaCampo('RECEIT', 'ID_CONCILIA', '20');
  CriaCampo('descsub', 'ID_CONCILIA', '20');
  CriaCampo('CHEQORD', 'ID_CONCILIA', '20');
  CriaCampo('descsub', 'ID_CDCONTACONTABIL', '20');
  CriaCampo('descsub', 'ID_CDreceita', '20');

  CriaCampo('ORDPAG', 'ID_nrsequencia', '20');
  CriaCampo('dessub', 'ID_nrsequencia', '20');
  CriaCampo('descsub', 'ID_nrsequencia', '20');
  CriaCampo('subord', 'ID_nrsequencia', '20');
  CriaCampo('cheqord', 'ID_nrsequencia', '20');

  CriaCampo('ORDPAG', 'ID_nrsequenciasistema', '20');
  CriaCampo('dessub', 'ID_nrsequenciasistema', '20');
  CriaCampo('descsub', 'ID_nrsequenciasistema', '20');
  CriaCampo('subord', 'ID_nrsequenciasistema', '20');
  CriaCampo('cheqord', 'ID_nrsequenciasistema', '20');

  CriaCampo('ORDPAG', 'modulo', '20');
  CriaCampo('dessub', 'modulo', '20');
  CriaCampo('descsub', 'modulo', '20');
  CriaCampo('subord', 'modulo', '20');
  CriaCampo('cheqord', 'modulo', '20');

  p.Position := 0;
  DM.localiza.close;
  DM.localiza.Commandtext := 'select max (nlanc) as nlanc from receit';
  DM.localiza.OPEN;
  NLANC_NEW := DM.localiza.FieldByName('nlanc').AsInteger;
  DM.localiza.close;
  DM.localiza.Commandtext := 'set generator gen_receit to ' + inttostr(NLANC_NEW + 1);
  DM.localiza.Execute;
  DM.localiza.close;
  DM.localiza.Commandtext := 'select max (cheqord) as cheqord from cheqord';
  DM.localiza.OPEN;
  CHEQORD_NEW := DM.localiza.FieldByName('cheqord').AsInteger;
  DM.localiza.close;
  DM.localiza.Commandtext := 'set generator gen_cheqord to ' + inttostr(CHEQORD_NEW + 1);
  DM.localiza.Execute;
  DM.localiza.close;
  DM.localiza.Commandtext := 'select max (ordpg) as ordpg from ordpag';
  DM.localiza.OPEN;
  ORDPG := DM.localiza.FieldByName('ordpg').AsInteger;

  DM.Atualiza.close;
  DM.LOCALIZAORIGEM.close;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND A.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  if Ano.Value > 2012 then
    DM.LOCALIZAORIGEM.Commandtext := // ORPAG
        ' select a.VLPAGO AS VLMOVIMENTO, a.*,  coalesce(cast(substring(h.dscomplhistorico,1,250) as varchar(250)),''Baixa Orçamentaria'') as produ, ' +
        ' (select top 1 z.dtvencimento from ['+BNC_CPE+'].dbo.movimentovencimentoempenho z where z.cdunidadegestora=a.cdunidadegestora and z.dtanoemissao=a.dtanoemissao ' +
        '         and z.nrempenho=a.nrempenho and z.nrsequenciasistema=a.nrsequenciasistema and z.dtmovimento = a.dtmovimento  and z.dtvencimento is not null ) as venci, ' +
        '  case when A.cdContaContabil <> 0 then A.cdcontacontabil ' +
        '       else  coalesce((select top 1 cdcontacontabil from ['+BNC_CPE+'].DBO.DATAVIEW_PAGAMENTO_ORCAMENTARIO b where b.nrsequenciasistema = a.nrsequenciasistema and b.VLPAGO <> 0.00), 0)  end CONTA_DESC ' +
        ' from ['+BNC_CPE+'].DBO.DATAVIEW_PAGAMENTO_ORCAMENTARIO A ' +
        ' left join ['+BNC_CPE+'].DBO.complementohistorico h on (h.cdunidadegestora = a.cdunidadegestora and a.nrcomplhistorico = h.nrcomplhistorico) ' +
        ' where a.DTANOEMISSAO= ' + ano.Text + ' and a.vlpagocomretencao <> 0.00 '+filtro+' ' +
        ' order by a.cdunidadegestora,a.nrempenho,a.dtmovimento '
  else
    DM.LOCALIZAORIGEM.Commandtext :=
//        'select * from ['+BNC_CPE+'].DBO.movimento where cdtipomovimento in (445,472) AND CDHISTORICOSISTEMA <> 455 ' +
//        'and DTANOEMISSAO = '+Ano.Text+' AND NOT (CDFORNECEDOR = 0 AND CDRECEITA > 0 AND CDTIPOMOVIMENTO=472) ' +
//        'order by cdunidadegestora,nrempenho,dtmovimento';
        'SELECT ' +
        '(SELECT SUM(VLMOVIMENTO) FROM ['+BNC_CPE+'].DBO.MOVIMENTO B WHERE A.DTANOEMISSAO = B.DTANOEMISSAO AND ' +
        '	                                                              A.DTMOVIMENTO = B.DTMOVIMENTO AND ' +
        '                                                                  A.CDUNIDADEGESTORA = B.CDUNIDADEGESTORA AND ' +
        '                                                                  A.CDDESPESA = B.CDDESPESA AND ' +
        '                                                                  A.NREMPENHO = B.NREMPENHO AND ' +
        '                                                                  A.IDEMPENHO = B.IDEMPENHO AND ' +
        '                                                                  A.NRSEQUENCIASUBEMPENHO = B.NRSEQUENCIASUBEMPENHO AND ' +
        '                                                                  A.CDFORNECEDOR = B.CDFORNECEDOR AND ' +
        '                                                                  A.NRDOCUMENTOPAGTO = B.NRDOCUMENTOPAGTO AND ' +
        'B.CDTIPOMOVIMENTO IN (445,472) AND B.DTANOEMISSAO = '+Ano.Text+' AND NOT (B.CDFORNECEDOR = 0 AND B.CDRECEITA > 0 AND B.CDTIPOMOVIMENTO = 472) ' +
        'GROUP BY B.DTANOEMISSAO, B.DTMOVIMENTO, B.CDUNIDADEGESTORA, B.CDDESPESA, B.NREMPENHO, B.IDEMPENHO, B.NRSEQUENCIASUBEMPENHO, B.CDFORNECEDOR, B.NRDOCUMENTOPAGTO) AS VLMOVIMENTO, ' +
        'A.* ' +
        'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
        'WHERE A.CDTIPOMOVIMENTO IN (445,472) AND A.CDHISTORICOSISTEMA <> 455 AND A.DTANOEMISSAO = '+Ano.Text+' AND NOT (A.CDFORNECEDOR = 0 AND A.CDRECEITA > 0 AND A.CDTIPOMOVIMENTO = 472) ' +
      //  'AND A.IDMOVCONCILIADO <> ''N'' ' +
        ' and a.cdcontacontabil > 0 ' +
        'ORDER BY A.CDUNIDADEGESTORA, A.NREMPENHO, A.DTMOVIMENTO';



  DM.LOCALIZAORIGEM.OPEN;
  p.Max := DM.LOCALIZAORIGEM.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  DM.LOCALIZAORIGEM.first;

  DM.ATUALIZAORIGEM.close;

  if Ano.Value > 2012 then
    DM.ATUALIZAORIGEM.Commandtext := // VALORES DOS DESCONTOS
      'SELECT A.NRSEQUENCIASISTEMA, B.NREMPENHO, B.CDCONTRAPARTIDA, A.CDUNIDADEGESTORA, A.CDRECEITA, sum(A.VLMOVIMENTO) as VLMOVIMENTO ' +
      'FROM [' +  BNC_CPE + '].DBO.MOVIMENTO A ' +
      'INNER JOIN [' + BNC_CPE +  '].DBO.MOVIMENTO B ON B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND B.CDTIPOMOVIMENTO = 464 and A.CDUNIDADEGESTORA=b.CDUNIDADEGESTORA ' +
      'LEFT JOIN [' + BNC_CPC + '].DBO.CONTACONTABIL C ON C.CDCONTACONTABIL = B.CDCONTRAPARTIDA ' +
      'WHERE A.CDTIPOMOVIMENTO IN (445,472) AND ((A.CDHISTORICOSISTEMA = 455) or (a.cdhistoricopadrao =1 )) ' +
      ' and (C.CDNIVELCONTABIL LIKE ''2188%'' OR C.CDNIVELCONTABIL LIKE ''1138%''  OR B.CDRECEITA > 0   OR ((C.CDNIVELCONTABIL LIKE ''2143%'') AND (upper(c.dscontacontabil) LIKE ''%CLASSIFICAR%'')) ) ' +
      'AND A.DTANOEMISSAO = ' + Ano.text + '  and b.nrempenho <> ''000000'' '+
      ' group by A.NRSEQUENCIASISTEMA, B.NREMPENHO, B.CDCONTRAPARTIDA, A.CDUNIDADEGESTORA, A.CDRECEITA '
  else
    DM.ATUALIZAORIGEM.Commandtext :=
//      'SELECT A.NRSEQUENCIASISTEMA, B.NREMPENHO, B.CDCONTRAPARTIDA, A.CDUNIDADEGESTORA, A.CDRECEITA, A.VLMOVIMENTO ' +
//      'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
//      'INNER JOIN ['+BNC_CPE+'].DBO.MOVIMENTO B ON B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND B.CDTIPOMOVIMENTO = 464 AND A.CDUNIDADEGESTORA = B.CDUNIDADEGESTORA ' +
//      'LEFT JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL C ON C.CDCONTACONTABIL = B.CDCONTRAPARTIDA ' +
//      'WHERE A.CDTIPOMOVIMENTO IN (445,472) AND A.CDHISTORICOSISTEMA = 455 ' +
//      'AND (C.CDNIVELCONTABIL LIKE ''2188%'' OR C.CDNIVELCONTABIL LIKE ''1138%'' OR C.CDNIVELCONTABIL LIKE ''2114%'' OR B.CDRECEITA > 0 ' +
//      'OR C.CDNIVELCONTABIL LIKE ''21891010%'' ) AND A.DTANOEMISSAO = 2011 AND B.NREMPENHO <> ''000000''';

//        'SELECT A.NRSEQUENCIASISTEMA, A.NREMPENHO, A.CDCONTRAPARTIDA, A.CDUNIDADEGESTORA, A.CDRECEITA, A.VLMOVIMENTO, ' +
//        'A.CDTIPOMOVIMENTO, A.CDHISTORICOSISTEMA, A.CDCONTACONTABIL, C.CDNIVELCONTABIL, C.DSCONTACONTABIL ' +
//        'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
//        'LEFT JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL C ON C.CDCONTACONTABIL = A.CDCONTACONTABIL ' +
//        'WHERE A.CDTIPOMOVIMENTO = 445 AND A.CDHISTORICOSISTEMA = 455 ' +
//        'AND ((SUBSTRING(C.CDNIVELCONTABIL,1,3)=''211'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,4)=''2122'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,5)=''21411'') ' +
//        'OR (SUBSTRING(C.CDNIVELCONTABIL,1,5)=''11219'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,4)=''1122'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,8)=''11411100'') ' +
//        'OR (SUBSTRING(C.CDNIVELCONTABIL,1,8)=''11411106'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,7)=''1125000'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,7)=''1125102'') ) ' +
//        'AND A.DTANOEMISSAO = '+Ano.Text+' AND A.NREMPENHO <> ''000000''';

        'SELECT A.CDUNIDADEGESTORA, A.NRSEQUENCIASISTEMA, A.NRSEQUENCIA, A.NREMPENHO, A.CDRECEITA, A.VLMOVIMENTO, ' +
        'A.CDTIPOMOVIMENTO, A.CDHISTORICOSISTEMA, A.CDCONTACONTABIL, A.CDCONTRAPARTIDA, ' +
        'CASE ' +
        '     WHEN A.CDCONTACONTABIL <> 0 THEN A.CDCONTACONTABIL ' +
        '     WHEN A.CDCONTRAPARTIDA <> 0 THEN A.CDCONTRAPARTIDA ' +
        '     ELSE (SELECT B.CDCONTACONTABIL FROM ['+BNC_CPE+'].DBO.MOVIMENTO B WHERE B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND ' +
        '     	                                                                     B.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
        '     	                                                                     B.NREMPENHO = A.NREMPENHO AND ' +
        '     	                                                                     B.CDCONTRAPARTIDA = 0 AND B.CDCONTACONTABIL <> 0) ' +
        'END AS CONTA_DESCONTO ' +
        'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
        'WHERE A.CDTIPOMOVIMENTO IN (445,472) AND A.CDHISTORICOSISTEMA = 455 ' +
        'AND A.DTANOEMISSAO = '+Ano.Text+' AND A.NREMPENHO <> ''000000'' ';
  DM.ATUALIZAORIGEM.OPEN;

  DM.QOrigem.close;          // CONCILIACAO bancaria
  DM.QOrigem.Commandtext :=
    'select a.nrsequenciasistema, a.cdunidadegestora, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' +
    'from [' + BNC_CPE + '].DBO.movimento a ' +
    'inner join ' + BNC_CPC + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' + 'where ' +
    'a.cdtipomovimento = 465 ' + 'and b.cdnivelcontabil like ''111%'' ';
  DM.QOrigem.OPEN;

  DM.Localiza.close;
  DM.Localiza.commandtext := 'SELECT * FROM VIEWLIQ WHERE id_dtanoemissao = ' + ano.Text + ' and modulo = ''LIQ_OR'' ';
  DM.Localiza.OPEN;
  DM.qDESTINO.close;
  DM.qDESTINO.Commandtext := ' SELECT * FROM ORDPAG WHERE ORDPG=-1';
  DM.qDESTINO.OPEN;
  DM.localiza4.close;
  DM.localiza4.Commandtext := ' SELECT * FROM DESSUB WHERE PKEMP= -1';
  DM.localiza4.OPEN;
  DM.localiza5.close;
  DM.localiza5.Commandtext := ' SELECT * FROM DESCSUB WHERE PKEMP= -1';
  DM.localiza5.OPEN;
  DM.localiza6.close;
  DM.localiza6.Commandtext := ' SELECT * FROM subord WHERE PKEMP= -1';
  DM.localiza6.OPEN;
  DM.localiza7.close;
  DM.localiza7.Commandtext := ' SELECT * FROM cheqord WHERE cheqord = -1';
  DM.localiza7.OPEN;
  i := 0;
  QUANTOS := trunc(DM.LOCALIZAORIGEM.RecordCount / 3) + 1 ;
  numsub := 0;
  emp_ant := 0;



  while not DM.LOCALIZAORIGEM.eof do
  begin
    inc(i);
    INC(ORDPG);
    p.Position := DM.LOCALIZAORIGEM.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    DM.Localiza.Filtered := false;
    DM.Localiza.Filter := ' ID_CDUNIDADEGESTORA = ''' +  trim(DM.LOCALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString) + ''' '+
                          ' and ID_NRsequencia = ''' + trim(DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').AsString) + ''' '+
                          ' and id_nrsequenciasubempenho = ''' +  trim(DM.LOCALIZAORIGEM.FieldByName('nrsequenciasubempenho').AsString)+ ''' ';
    DM.Localiza.Filtered := true;
    if dm.Localiza.IsEmpty then
    begin
      DM.Localiza.Filtered := false;
      DM.Localiza.Filter := ' ID_CDUNIDADEGESTORA = ''' +  trim(DM.LOCALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString) + ''' '+
                            ' and ID_NRsequencia = ''' + trim(DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').AsString) + ''' ';
      DM.Localiza.Filtered := true;
      if dm.Localiza.IsEmpty then
      begin
            DM.AuxOrigem.Close;
            DM.AuxOrigem.Filtered := false;
            DM.AuxOrigem.Filter := '';
            DM.AuxOrigem.CommandText := 'SELECT * FROM ['+BNC_CPE+'].[DBO].MOVIMENTO M WHERE M.DTANOEMISSAO = '+Ano.Text+' ' +
                                        'AND M.NREMPENHO = '''+DM.LocalizaOrigem.FieldByName('NREMPENHO').AsString+''' '+
                                        'AND M.CDTIPOMOVIMENTO NOT IN (464,465) AND M.CDUNIDADEGESTORA = '+DM.LocalizaOrigem.FieldByName('CDUNIDADEGESTORA').AsString+' ' +
                                        'ORDER BY M.CDUNIDADEGESTORA, M.NRSEQUENCIA ';
            DM.AuxOrigem.Open;
            DM.AuxOrigem.Last;

            nrseq_ant := DM.AuxOrigem.FieldByName('NrSequenciaSistema').AsString;

            WHILE DM.AuxOrigem.FieldByName('CDTIPOMOVIMENTO').AsString <> '443' DO
            BEGIN
              if DM.AuxOrigem.FieldByName('NRSEQUENCIASISTEMA').AsString = '0' then
              BEGIN
                 memoStatus.Lines.Add('Não foi possível achar a liquidação para o empenho/entidade: '+DM.LocalizaOrigem.FieldByName('nrempenho').AsString+'/'+DM.LocalizaOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
              END
              ELSE
              BEGIN
                 DM.AuxOrigem.Filtered := false;
                 DM.AuxOrigem.Filter := 'nrSequencia = '+nrseq_ant;
                 DM.AuxOrigem.Filtered := true;
                 if not DM.AuxOrigem.IsEmpty then
                 begin
                    nrseq_ant := DM.AuxOrigem.FieldByName('NrSequenciaSistema').AsString;
                    if DM.AuxOrigem.FieldByName('CDTIPOMOVIMENTO').AsString = '443' then
                    begin
                      DM.Localiza.Filtered := false;
                      DM.Localiza.Filter := ' ID_CDUNIDADEGESTORA = ''' +  trim(DM.LOCALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString) + ''' '+
                                            ' and ID_NRsequencia = ''' + trim(DM.AuxOrigem.FieldByName('NRsequencia').AsString) + ''' '+
                                            ' and id_nrsequenciasubempenho = ''' +  trim(DM.AuxOrigem.FieldByName('nrsequenciasubempenho').AsString)+ ''' ';
                      DM.Localiza.Filtered := true;
                      if dm.Localiza.IsEmpty then
                      begin
                        DM.Localiza.Filtered := false;
                        DM.Localiza.Filter := ' ID_CDUNIDADEGESTORA = ''' +  trim(DM.LOCALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString) + ''' '+
                                              ' and ID_NRsequencia = ''' + trim(DM.AuxOrigem.FieldByName('NRsequencia').AsString) + ''' ';
                        DM.Localiza.Filtered := true;
                      end;
                    end;
                 end
                 else
                 begin
                     memoStatus.Lines.Add('Não foi possível achar o registro anterior para o empenho/entidade/NrSeqSistema: '+DM.LocalizaOrigem.FieldByName('nrempenho').AsString+'/'+DM.LocalizaOrigem.FieldByName('nrEmpenho').AsString+'/'+nrseq_ant);
                 end;
              END;
            END;
      end;
    end;

    if Ano.Value <= 2012 then
    begin
        DM.ATUALIZAORIGEM.FILTER := 'nrsequenciasistema = ''' + DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString + ''' and cdunidadegestora = ''' +
          DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString + '''';
        DM.ATUALIZAORIGEM.FiLTERED := True;

        if  DM.AtualizaOrigem.IsEmpty then
          DESCO := 0
        ELSE
        BEGIN
          DESCO := 0;
          WHILE NOT DM.ATUALIZAORIGEM.eof DO
          BEGIN
            DESCO := DESCO + DM.ATUALIZAORIGEM.FieldByName('vlmovimento').AsFloat;
            DM.ATUALIZAORIGEM.Next;
          END;
        END;
        DM.ATUALIZAORIGEM.first;
    end
    else
        desco := 0.00;

    {$REGION ' ORDPAG'}
     // *****************************cria ordpag********************************//

    DM.qDESTINO.append;
    DM.qDESTINO.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.qDESTINO.FieldByName('DATAE').AsString := DM.LOCALIZAORIGEM.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('VENCI').AsString := DM.LOCALIZAORIGEM.FieldByName('DTMOVIMENTO').AsString;
    if trim(DM.qDESTINO.FieldByName('VENCI').AsString) = '' then
      DM.qDESTINO.FieldByName('VENCI').AsString := DM.LOCALIZAORIGEM.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('DTPAG').AsString := DM.LOCALIZAORIGEM.FieldByName('DTMOVIMENTO').AsString;

    if Ano.Value > 2012 then
      DM.qDESTINO.FieldByName('produ').AsString := DM.LOCALIZAORIGEM.FieldByName('produ').AsString
    else
      DM.qDESTINO.FieldByName('produ').AsString := DM.Localiza.FieldByName('produ').AsString;

    DM.qDESTINO.FieldByName('COMP').AsString := 'N';
    DM.qDESTINO.FieldByName('modulo').AsString := 'OP_OR';
    DM.qDESTINO.FieldByName('CODIF').asstring := Traz_Codif(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString,DM.LOCALIZAORIGEM.FieldByName('cdfornecedor').AsString);
    DM.qDESTINO.FieldByName('empresa').asstring := Traz_Entidade(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').asstring);

    if ANo.Value > 2012 then
    begin
     DM.qDESTINO.FieldByName('VALOR').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlpagocomretencao').ASCURRENCY - DM.LOCALIZAORIGEM.FieldByName('vlretencao').ASCURRENCY; // valor total da op
      DM.qDESTINO.FieldByName('DESCO').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlretencao').ASCURRENCY;
      desco :=  DM.LOCALIZAORIGEM.FieldByName('vlretencao').ASCURRENCY;
    end
    else
    begin
     DM.qDESTINO.FieldByName('VALOR').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlmovimento').ASCURRENCY - DESCO; // valor total da op
     DM.qDESTINO.FieldByName('DESCO').ASCURRENCY := DESCO;
    end;

    DM.qDESTINO.FieldByName('ORDPGSEQ').AsInteger := DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsInteger;
    DM.qDESTINO.FieldByName('ID_nrsequencia').asstring := DM.LOCALIZAORIGEM.FieldByName('nrsequencia').asstring;
    DM.qDESTINO.FieldByName('ID_nrsequenciasistema').asstring := DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').asstring;
    DM.qDESTINO.post;
//    DM.qDESTINO.ApplyUpdates(-1);
    // *****************************cria ordpag********************************//
    {$ENDREGION}
    {$region ' Dessub '}
    // *****************************cria dessub********************************//


    pkemp := dm.Localiza.FieldByName('pkemp').AsInteger;

//    if Ano.Value > 2012 then
//    begin
        if emp_ant <> dm.Localiza.FieldByName('pkemp').AsInteger then
          numsub := 0;

        emp_ant := dm.Localiza.FieldByName('pkemp').AsInteger;
//    end
//    else
//    begin
//      DM.QAux2.Close;
//      DM.QAux2.CommandText := 'SELECT COALESCE(max(numsub),0) as nparcelas from dessub where pkemp = '+DM.Localiza.FieldByName('pkemp').AsString;
//      DM.QAux2.Open;
//      numsub := DM.QAux2.FieldByName('nparcelas').AsInteger + 1;
//    end;

    inc(numsub);
    DM.localiza4.append;
    DM.localiza4.FieldByName('numsub').AsInteger := numsub;
    DM.localiza4.FieldByName('PARCELA').AsInteger := numsub;
    DM.localiza4.FieldByName('PKEMP').AsInteger := pkemp;
    DM.localiza4.FieldByName('PRODU').AsString := DM.localiza.FieldByName('PRODU').AsString;
    DM.localiza4.FieldByName('NUMLIQ').AsInteger := DM.LOCALIZA.FieldByName('numsub').AsInteger;
    DM.localiza4.FieldByName('DATAE').AsString := DM.qdestino.FieldByName('DATAE').AsString;
    DM.localiza4.FieldByName('VENCI').AsString := DM.qdestino.FieldByName('VENCI').AsString;
    DM.localiza4.FieldByName('VADEM').ASCURRENCY := DM.qdestino.FieldByName('valor').ASCURRENCY + DESCO;
    DM.localiza4.FieldByName('DESCO').ASCURRENCY := desco;
    DM.localiza4.FieldByName('modulo').AsString := 'OP_OR';
    DM.localiza4.FieldByName('ID_nrsequencia').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString;
    DM.localiza4.FieldByName('ID_nrsequenciasistema').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').AsString;
    DM.localiza4.post;
//    DM.localiza4.ApplyUpdates(-1);
    // *****************************cria dessub********************************//
    {$endregion}
    {$region ' Descsub '}
    // *****************************cria descsub*******************************//
    if arredonda(desco,2) > 0.00 then
    begin
      DM.ATUALIZAORIGEM.FILTERED := false;
      DM.ATUALIZAORIGEM.FILTER := ' nrsequenciasistema=''' + DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString +  ''' '+
        ' AND cdunidadegestora=''' + DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString+ ''' ';
      DM.ATUALIZAORIGEM.FILTERED := true;
      if not DM.ATUALIZAORIGEM.IsEmpty then
      begin
        DM.ATUALIZAORIGEM.first;
        while not DM.ATUALIZAORIGEM.eof do
        begin
          if ano.Value > 2012 then
          begin
            ID_CDCONTACONTABIL := DM.ATUALIZAORIGEM.FieldByName('cdcontrapartida').AsString;
            ficha := Traz_Ficha_Desconto(DM.ATUALIZAORIGEM.FieldByName('cdunidadegestora').AsString,DM.ATUALIZAORIGEM.FieldByName('cdreceita').AsString,DM.ATUALIZAORIGEM.FieldByName('cdcontrapartida').AsString)
          end
          else
          begin
            ID_CDCONTACONTABIL := DM.ATUALIZAORIGEM.FieldByName('CONTA_DESCONTO').AsString;
            ficha := Traz_Ficha_Desconto(DM.ATUALIZAORIGEM.FieldByName('cdunidadegestora').AsString,DM.ATUALIZAORIGEM.FieldByName('cdreceita').AsString,DM.ATUALIZAORIGEM.FieldByName('CONTA_DESCONTO').AsString);
          end;
          if trim(ficha) <> '' then
          begin
            DM.localiza5.append;
            DM.localiza5.FieldByName('PKEMP').AsInteger := pkemp;
            DM.localiza5.FieldByName('NUMSUB').AsInteger := numsub;
            DM.localiza5.FieldByName('FICHA').AsString := ficha;
            DM.localiza5.FieldByName('modulo').AsString := 'OP_OR';
            DM.localiza5.FieldByName('ID_nrsequencia').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString;
            DM.localiza5.FieldByName('ID_nrsequenciasistema').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').AsString;
            if ano.Value > 2012 then
              DM.localiza5.FieldByName('ID_CDCONTACONTABIL').AsString := DM.ATUALIZAORIGEM.FieldByName('cdcontrapartida').AsString
            else
              DM.localiza5.FieldByName('ID_CDCONTACONTABIL').AsString := DM.ATUALIZAORIGEM.FieldByName('CONTA_DESCONTO').AsString;
            DM.localiza5.FieldByName('ID_CDreceita').AsString := DM.ATUALIZAORIGEM.FieldByName('cdreceita').AsString;
            DM.localiza5.FieldByName('VALOR').ASCURRENCY := DM.ATUALIZAORIGEM.FieldByName('vlmovimento').ASCURRENCY;
            DM.localiza5.FieldByName('COMP').AsString := 'N';
            DM.localiza5.post;
//            DM.localiza5.ApplyUpdates(-1);
          end
          else
            memoStatus.Lines.Add('  DESCONTO - UG/Ficha não encontrada: ' + trim(DM.ATUALIZAORIGEM.FieldByName('cdunidadegestora').AsString) + '/' +
              trim(DM.ATUALIZAORIGEM.FieldByName('cdreceita').AsString) + ' / ' + trim(ID_CDCONTACONTABIL));
          DM.ATUALIZAORIGEM.next; application.ProcessMessages;
        end;
      end
      else
        memoStatus.Lines.Add('  DESCONTO - Não achou nrseq/ug ' + DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString + '/'+DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString );
    end;
    // *****************************cria descsub*******************************//
    {$endregion}
    {$region ' SubOrd '}
    // *****************************cria subord********************************//
    DM.localiza6.append;
    DM.localiza6.FieldByName('PKEMP').AsInteger := pkemp;
    DM.localiza6.FieldByName('NUMSUB').AsInteger := numsub;
    DM.localiza6.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.localiza6.FieldByName('COMP').AsString := 'N';
    DM.localiza6.FieldByName('modulo').AsString := 'OP_OR';
    DM.localiza6.FieldByName('ID_nrsequencia').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString;
    DM.localiza6.FieldByName('ID_nrsequenciasistema').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').AsString;
    DM.localiza6.post;
//    DM.localiza6.ApplyUpdates(-1);
    // *****************************cria subord********************************//
    {$endregion}
    {$region ' CheqOrd '}
    // *****************************cheqord************************************//
    DM.localiza7.append;
    DM.localiza7.FieldByName('CHEQORD').AsInteger := 0 ;
    DM.localiza7.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.localiza7.FieldByName('dtlan').AsString := DM.LOCALIZAORIGEM.FieldByName('dtmovimento').AsString;

    if Ano.Value > 2012 then
    begin
        if trim(dm.LocalizaOrigem.FieldByName('conta_desc').AsString) <> '0' then
        begin
          DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString),trim(DM.LOCALIZAORIGEM.FieldByName('conta_desc').AsString));
          DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
        end
        else
        begin
          if trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString) <> '0' then
          BEGIN
              DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString),trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString));
              DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
          END
          else
          begin
              DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Caixa(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString));
              DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
          end;
        end;
    end
    else
    begin
        if trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString) <> '0' then
        BEGIN
            DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString),trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString));
            DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
        END
        else
        begin
            DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Caixa(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString));
            DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
        end;
    end;

    DM.localiza7.FieldByName('CHEQN').VALUE := DM.LOCALIZAORIGEM.FieldByName('NRDOCUMENTOPAGTO').VALUE;

    if Ano.Value > 2012 then
      DM.localiza7.FieldByName('VALOR').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('VLPAGO').ASCURRENCY // valor
    else
      DM.localiza7.FieldByName('VALOR').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlmovimento').ASCURRENCY - DESCO; // valor

    DM.localiza7.FieldByName('COMP').AsString := 'N';
    DM.localiza7.FieldByName('modulo').AsString := 'OP_OR';
    DM.localiza7.FieldByName('id_nrsequencia').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString;
    DM.localiza7.FieldByName('id_nrsequenciasistema').AsString := DM.LOCALIZAORIGEM.FieldByName('nrsequenciasistema').AsString;
      DM.QOrigem.FILTERED := false;
      DM.QOrigem.FILTER := ' cdunidadegestora = ' + DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString +
        ' AND nrsequenciasistema = ' + DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString;
      DM.QOrigem.FILTERED := true;
      if not DM.QOrigem.IsEmpty then
        DM.localiza7.FieldByName('ID_CONCILIA').AsString := DM.QOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', DM.QOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' +  FORMATCURR('00', DM.QOrigem.FieldByName('DTMESCONCILIACAO').Asinteger)
      else
        DM.localiza7.FieldByName('ID_CONCILIA').AsString := 'N;00/00';
    DM.localiza7.post;
//    DM.localiza7.ApplyUpdates(-1);
    // *****************************cheqord************************************//
    {$endregion}
    {$region ' Salva Parcial... '}
    if i = quantos then
    begin
      try
        status.caption := 'Salvando as ORPAG....';
        status.update;
        erros := DM.qDESTINO.ApplyUpdates(-1);
        if erros > 0 then
          memoStatus.Lines.Add('  Erro na Ordpag ');
        application.ProcessMessages;
        status.caption := 'Salvando as DESSUB....';
        status.update;
        if erros = 0 then
          erros := erros + DM.localiza4.ApplyUpdates(-1);
        if erros > 0 then
          memoStatus.Lines.Add('  Erro na Dessub ');
        application.ProcessMessages;
        status.caption := 'Salvando as DESCSUB....';
        status.update;
        if erros = 0 then
          erros := erros + DM.localiza5.ApplyUpdates(-1);
        if erros > 0 then
          memoStatus.Lines.Add('  Erro na Descsub ');
        application.ProcessMessages;
        status.caption := 'Salvando as SUBORD....';
        status.update;
        if erros = 0 then
          erros := erros + DM.localiza6.ApplyUpdates(-1);
        if erros > 0 then
          memoStatus.Lines.Add('  Erro na Subord ');
        application.ProcessMessages;
        status.caption := 'Salvando as CHEQORD....';
        status.update;
        if erros = 0 then
          erros := erros + DM.localiza7.ApplyUpdates(-1);
        if erros > 0 then
          memoStatus.Lines.Add('  Erro na Cheqord ');
        application.ProcessMessages;

        status.caption := 'Atualizando descsub....';
        status.update;
        if erros = 0 then
        begin
          DM.qaux.close;
          DM.qaux.Commandtext :=
            '  UPDATE DESCSUB Z SET ' +
            '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
            '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
            '  WHERE z.modulo = ''OP_OR'' and z.conta is null  ';
          DM.qaux.Execute;
        end;

        status.caption := 'Atualizando as ORPAG....';
        status.update;
        if erros = 0 then
        begin
          DM.qaux.close;
          DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''OP_OR'' AND comp = ''N'' ';
          DM.qaux.Execute;
        end;
        status.caption := '';
        status.update;
        application.ProcessMessages;
        if erros > 0  then
          memoStatus.Lines.Add('  Problemas nas OP´s ');
        erros := 0;
        i:=0;
      except
        memoStatus.Lines.Add('  Problemas nas OP´s ');
      end;
    end;
    {$endregion}
    DM.LOCALIZAORIGEM.next; application.ProcessMessages;
  end;
  {$region ' Salva o restante..... '}
  try
    status.caption := 'Salvando as ORPAG....';
    status.update;
    erros := DM.qDESTINO.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Ordpag ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza4.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Dessub ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESCSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza5.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Descsub ');
    application.ProcessMessages;
    status.caption := 'Salvando as SUBORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza6.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Subord ');
    application.ProcessMessages;
    status.caption := 'Salvando as CHEQORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza7.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Cheqord ');
    application.ProcessMessages;

    status.caption := 'Atualizando descsub....';
        status.update;
        if erros = 0 then
        begin
          DM.qaux.close;
          DM.qaux.Commandtext :=
            '  UPDATE DESCSUB Z SET ' +
            '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
            '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
            '  WHERE z.modulo = ''OP_OR'' and z.conta is null  ';
          DM.qaux.Execute;
        end;

    status.caption := 'Atualizando as ORPAG....';
    status.update;
    if erros = 0 then
    begin
      DM.qaux.close;
      DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''OP_OR'' AND comp = ''N'' ';
      DM.qaux.Execute;
    end;
    status.caption := '';
    status.update;
    application.ProcessMessages;
    if erros > 0  then
      memoStatus.Lines.Add('  Problemas nas OP´s ');
    erros := 0;
    i:=0;
  except
    memoStatus.Lines.Add('  Problemas nas OP´s ');
  end;
  {$endregion}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select max (cheqord) as cheqord from cheqord';
  DM.atualiza.OPEN;
  CHEQORD_NEW := DM.atualiza.FieldByName('cheqord').AsInteger;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_cheqord to ' + inttostr(CHEQORD_NEW + 1);
  DM.atualiza.ExecSQL;
  memoStatus.Lines.Add('Baixa OR - OK');
end;

procedure TTfrmprincipal_Conversao.Estorno_Orcamentario_com_Retencao;
var ORDPG: integer; codif, PKEMPA, numsub: integer; ficha: string; DESCONTO: Extended; OrdCre: integer; Valor: real;
  i: Integer;
  QUANTOS: Integer;
  desco: Extended;
  erros: Integer;
  CHEQORD_NEW: Integer;
  pkemp_ant: integer;
  nrseq_ant: String;
  nrseq_origi: String;
  filtro: string;
begin
  // ESTORNO DE PAGAMENTOS
  SITU.caption := 'ESTORNOS DAS BAIXAS DE EMPENHOS ORÇAMENTÁRIOS...';
  SITU.update;
  Atualiza_Generator;
  Desliga_Triggers;
  CriaCampo('ORDCRE','ID_CONCILIA','20');

  DM.QAUX.close;
  DM.QAUX.Commandtext := 'select COALESCE(max(ordcre),0) ordcre from ordcre';
  DM.QAUX.OPEN;
  OrdCre := DM.QAUX.FieldByName('ordcre').AsInteger + 1;

  DM.QAUX.CLOSE;
  DM.QAUX.Commandtext := 'select COALESCE(max(nlanc),0) as nlanc from receit';
  DM.QAUX.OPEN;
  dm.cdsTemp.CLOSE;
  dm.cdsTemp.Commandtext := 'SET GENERATOR GEN_RECEIT TO ' + DM.QAUX.FieldByName('nlanc').asstring;
  dm.cdsTemp.Execute;

  DM.localiza.close;
  DM.localiza.Commandtext := 'select COALESCE(max(ordpg),0) as ordpg from ordpag';
  DM.localiza.OPEN;
  ORDPG := DM.localiza.FieldByName('ordpg').AsInteger;

  DM.localiza.close;
  DM.localiza.Commandtext := 'select COALESCE(max(cheqord),0) as cheqord from cheqord';
  DM.localiza.OPEN;
  CHEQORD_NEW := DM.localiza.FieldByName('cheqord').AsInteger;
  DM.localiza.close;
  DM.localiza.Commandtext := 'set generator gen_cheqord to ' + inttostr(CHEQORD_NEW + 1);
  DM.localiza.Execute;


  DM.QOrigem.FILTERED := FALSE;
  DM.QOrigem.FILTER := '';
  DM.QOrigem.close;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND A.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  if Ano.Value > 2012 then
    DM.QOrigem.Commandtext :=    // OP
          'select   coalesce(cast(substring(h.dscomplhistorico,1,250) as varchar(250)),''Estorno de OP '') as produ, A.*, ' +
          '  case  when  A.cdContaContabil <> 0 then A.cdcontacontabil  else ' +
          '      coalesce((select top 1 cdcontacontabil from [' + BNC_CPE + '].DBO.dataview_pagamento_orcamentario b where b.nrsequencia = a.nrsequenciapagamento and b.vlpago <> 0.00), 0) ' +
          '  end CONTA_DESC ' +
          'from [' + BNC_CPE + '].DBO.dataview_pagamento_orcamentario_estorno A ' +
          ' left join [' + BNC_CPE + '].DBO.complementohistorico h on (h.cdunidadegestora = a.cdunidadegestora and a.nrcomplhistorico = h.nrcomplhistorico) '+
          'where DTANOEMISSAO=' + Ano.text + ' '+filtro+' ' +
          'order by a.cdunidadegestora, a.nrempenho '
  else
    DM.QOrigem.Commandtext :=    // OP
          'select * from ['+BNC_CPE+'].[dbo].movimento where cdtipomovimento IN (446) and cdhistoricopadrao <> 456 and vlmovimento <> 0 AND DTANOEMISSAO = '+Ano.Text+' ' +
          'order by cdunidadegestora, nrempenho';

  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  DESCONTO := 0; i := 0;
  QUANTOS := trunc(DM.QOrigem.RecordCount / 3) + 1 ;


  DM.CdsOrigem.CLOSE;         // conciliacao bancaria
  DM.CdsOrigem.Commandtext :=
    'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' +
    'from [' +  BNC_CPE + '].DBO.movimento a ' + 'inner join ' + BNC_CPC + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
    'where a.cdtipomovimento IN (464,465) ' + 'and b.cdnivelcontabil like ''111%'' ';
  DM.CdsOrigem.OPEN;
  DM.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

  dm.LocalizaOrigem.Close;

  if Ano.Value > 2012 then
    dm.LOCALIZAORIGEM.Commandtext :=
      'SELECT A.NRSEQUENCIASISTEMA, B.NREMPENHO, B.CDCONTRAPARTIDA, A.CDUNIDADEGESTORA, A.CDRECEITA, sum(A.VLMOVIMENTO) as VLMOVIMENTO ' +
      'FROM [' +  BNC_CPE + '].DBO.MOVIMENTO A ' +
      'INNER JOIN [' + BNC_CPE +  '].DBO.MOVIMENTO B ON B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND B.CDTIPOMOVIMENTO = 464 and A.CDUNIDADEGESTORA=b.CDUNIDADEGESTORA ' +
      'LEFT JOIN [' + BNC_CPC + '].DBO.CONTACONTABIL C ON C.CDCONTACONTABIL = B.CDCONTRAPARTIDA ' +
      'WHERE A.CDTIPOMOVIMENTO IN (445,472) AND ((A.CDHISTORICOSISTEMA = 455) or (a.cdhistoricopadrao =1 )) ' +
      ' and (C.CDNIVELCONTABIL LIKE ''2188%'' OR C.CDNIVELCONTABIL LIKE ''1138%''  OR B.CDRECEITA > 0   OR ((C.CDNIVELCONTABIL LIKE ''2143%'') AND (upper(c.dscontacontabil) LIKE ''%CLASSIFICAR%'')) ) ' +
      'AND A.DTANOEMISSAO = ' + Ano.text + '  and b.nrempenho <> ''000000'' '+
      ' group by A.NRSEQUENCIASISTEMA, B.NREMPENHO, B.CDCONTRAPARTIDA, A.CDUNIDADEGESTORA, A.CDRECEITA '
  else
    dm.LOCALIZAORIGEM.Commandtext :=
      'SELECT A.CDUNIDADEGESTORA, A.NRSEQUENCIASISTEMA, A.NRSEQUENCIA, A.NREMPENHO, A.CDRECEITA, A.VLMOVIMENTO, ' +
      'A.CDTIPOMOVIMENTO, A.CDHISTORICOSISTEMA, A.CDCONTACONTABIL, A.CDCONTRAPARTIDA, ' +
      'CASE ' +
      'WHEN A.CDCONTACONTABIL <> 0 THEN A.CDCONTACONTABIL ' +
      'WHEN A.CDCONTRAPARTIDA <> 0 THEN A.CDCONTRAPARTIDA ' +
      'ELSE (SELECT B.CDCONTACONTABIL FROM ['+BNC_CPE+'].DBO.MOVIMENTO B WHERE B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND ' +
      '                                                                        B.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
      '                                                                        B.NREMPENHO = A.NREMPENHO AND ' +
      '                                                                        B.CDCONTRAPARTIDA = 0 AND B.CDCONTACONTABIL <> 0) ' +
      'END AS CONTA_DESCONTO, ' +
      '(SELECT Z.NRSEQUENCIASISTEMA FROM ['+BNC_CPE+'].DBO.MOVIMENTO Z WHERE Z.NRSEQUENCIA = A.NRSEQUENCIASISTEMA AND ' +
      '                                                                      Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
      '                                                                      Z.NREMPENHO = A.NREMPENHO) AS ORDPG_ESTORNADA ' +
      'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
      'WHERE A.CDTIPOMOVIMENTO IN (446,473) AND (A.CDHISTORICOSISTEMA = 456 OR A.CDHISTORICOPADRAO = 1) ' +
      'AND A.DTANOEMISSAO = '+Ano.Text+' AND A.NREMPENHO <> ''000000''';
  dm.LOCALIZAORIGEM.OPEN;

  dm.Localiza.Close;
  dm.Localiza.CommandText :=
    ' select d.pkemp, d.nempg, d.tpem, d.pkempa, d.codif, d.id_cdfornecedor, d.id_cdunidadegestora, d.id_nrempenho, ds.numsub, ds.numliq, ' +
    ' (select first 1 va.numsub from viewliq va where va.pkemp = d.pkempa) as a_numliq, ' +
    ' ds.vadem, ds.vapag, ds.desco , ds.id_nrsequencia, ds.id_nrsequenciasistema, ' +
    ' (select first 1 va.id_nrsequencia from viewliq va where va.pkemp = d.pkempa) as a_nrsequencia, ' +
    ' (select first 1 z.id_nrsequencia from viewliq z where z.pkemp = d.pkemp and ds.id_nrsequenciasistema<> z.id_nrsequencia ) as v_nrsequencia, '+
    ' (select max(w.numsub) from dessub w where w.pkemp = d.pkemp) as maxnumsub, d.produ '+
    ' from despes d ' +
    ' inner join viewliq v on v.pkemp=d.pkemp ' +
    ' inner join dessub ds on ds.pkemp = v.pkemp and ds.numliq=v.numsub and ds.modulo = ''OP_OR'' ';
  dm.Localiza.Open ;

  dm.Localiza2.Close;
  dm.Localiza2.CommandText := 'select * from ordcre where ordcre = -1';
  dm.Localiza2.open;

  DM.localiza4.close;
  DM.localiza4.Commandtext := 'select * from dessub where pkemp = -1';
  DM.localiza4.OPEN;

  DM.localiza5.close;
  DM.localiza5.Commandtext := 'select * from descsub where pkemp = -1 ';
  DM.localiza5.OPEN;

  DM.qdestino.close;
  DM.qdestino.Commandtext := 'SELECT * FROM ORDPAG WHERE ORDPG= -1';
  DM.qdestino.OPEN;

  DM.localiza6.close;
  DM.localiza6.Commandtext := 'SELECT * FROM SUBORD WHERE ORDPG=0';
  DM.localiza6.OPEN;

  DM.localiza7.close;
  DM.localiza7.Commandtext := 'SELECT * FROM CHEQORD WHERE ORDPG=0';
  DM.localiza7.OPEN;


  while not DM.QOrigem.eof do
  begin
    inc(i);
    DESCONTO := 0;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

//    dm.Localiza.filtered := false;
//    dm.Localiza.filter :=  ' id_nrsequencia = ' + trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
//    dm.Localiza.filtered := true;
//    if dm.Localiza.IsEmpty then
//    begin
//      dm.Localiza.filtered := false;
//      dm.Localiza.filter :=  ' a_nrsequencia = ' + trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
//      dm.Localiza.filtered := true;
//      if dm.Localiza.IsEmpty then
//      begin
//        dm.Localiza.filtered := false;
//        dm.Localiza.filter :=  ' v_nrsequencia = ' + trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
//        dm.Localiza.filtered := true;
//        if dm.Localiza.IsEmpty then
//        begin
          dm.Localiza.filtered := false;
          dm.Localiza.filter :=  ' id_cdunidadegestora = ''' + trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString) + ''' '+
            ' and id_nrempenho = ''' + trim(DM.QOrigem.FieldByName('nrempenho').AsString) + ''' ';
          dm.Localiza.filtered := true;
//        end;
//      end;
//    end;

    if not DM.Localiza.IsEmpty then
    begin
      if Ano.Value > 2012 then
      begin
          Valor := dm.QORIGEM.FieldByName('vlestornopagocomretencao').ascurrency*-1;   //DM.QOrigem.FieldByName('nrsequencia').AsString
          desco := dm.QORIGEM.FieldByName('vlestornoretencao').ascurrency*-1;
      end
      else
      begin
          Valor := dm.QORIGEM.FieldByName('vlmovimento').ascurrency*-1;   //DM.QOrigem.FieldByName('nrsequencia').AsString


          nrseq_origi := DM.QOrigem.FieldByName('nrsequenciasistema').AsString;

          DM.LOCALIZAORIGEM.FILTER := 'ORDPG_ESTORNADA = ''' + DM.QOrigem.FieldByName('nrsequenciasistema').AsString + ''' and cdunidadegestora = ''' +
          DM.QOrigem.FieldByName('cdunidadegestora').AsString + '''';
          DM.LOCALIZAORIGEM.FiLTERED := True;

          DESCO := 0;

          if not DM.LocalizaOrigem.IsEmpty then
          begin
              WHILE NOT DM.LOCALIZAORIGEM.eof DO
              BEGIN
                DESCO := DESCO + DM.LOCALIZAORIGEM.FieldByName('vlmovimento').AsFloat;
                DM.LOCALIZAORIGEM.Next;
              END;
              DM.LOCALIZAORIGEM.first;

              DESCO := DESCO*-1;
          end;

      end;

      IF ((DM.Localiza.FieldByName('TPEM').AsString = 'AD') AND (DM.Localiza.FieldByName('PKEMPA').AsString <> '') AND (DM.QOrigem.FieldByName('cdtipomovimento').AsString <> '446') )THEN
      begin
        {$region ' Devolução de Adiantamento.... '}
        PKEMPA := DM.Localiza.FieldByName('pkempa').AsInteger;
        inc(OrdCre);
        DM.LOCALIZA2.append;
        DM.LOCALIZA2.FieldByName('ORDCRE').AsInteger := OrdCre;

        if Ano.Value > 2012 then
        begin
              if trim(DM.QOrigem.FieldByName('conta_desc').AsString) <> '0'  then
              begin
                DM.LOCALIZA2.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('conta_desc').AsString));
                DM.LOCALIZA2.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.LOCALIZA2.FieldByName('CONTA').AsString);
              end
              else
              begin
                if trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString) <> '0' then
                BEGIN
                  DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString),trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString));
                  DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
                END
                else
                begin
                  DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Caixa(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString));
                  DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
                end;
              end;
        end
        else
        begin
              if trim(DM.QOrigem.FieldByName('cdcontacontabil').AsString) <> '0' then
              BEGIN
                  DM.LOCALIZA2.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('cdcontacontabil').AsString));
                  DM.LOCALIZA2.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.LOCALIZA2.FieldByName('CONTA').AsString);
              END
              else
              begin
                  DM.LOCALIZA2.FieldByName('CONTA').AsString := Traz_Conta_Caixa(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString));
                  DM.LOCALIZA2.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.LOCALIZA2.FieldByName('CONTA').AsString);
              end;
        end;

        DM.LOCALIZA2.FieldByName('CHEQUE').AsString := DM.QOrigem.FieldByName('NRDOCUMENTOPAGTO').AsString;
        DM.LOCALIZA2.FieldByName('DTLAN').AsString := DM.QOrigem.FieldByName('dtmovimento').AsString;
        DM.LOCALIZA2.FieldByName('NOME').AsString := 'Dev. de Adiantamento Emp.' + DM.localiza.FieldByName('nempg').AsString;
        DM.LOCALIZA2.FieldByName('VALOR').VALUE := Valor *-1;
        if not DM.CdsOrigem.FindKey([DM.QOrigem.FieldByName('nrsequencia').AsString, DM.QOrigem.FieldByName('cdunidadegestora').AsString, '465']) then
          DM.LOCALIZA2.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
        else
          DM.LOCALIZA2.FieldByName('ID_CONCILIA').AsString := DM.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', DM.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', DM.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
        DM.LOCALIZA2.post;
        DM.LOCALIZA2.ApplyUpdates(-1);

        DM.Atualiza.close;
        DM.Atualiza.Commandtext := 'UPDATE DESPES SET ORDCRE = ''' + inttostr(OrdCre) + ''', SUBEM = 0, dtliq=''' + STRINGREPLACE(DM.QOrigem.FieldByName('dtmovimento').AsString,
          '/', '.', [RFREPLACEALL]) + ''',' + 'VAPAG = ''' + STRINGREPLACE(FLOATTOSTR(Valor), ',', '.', [RFREPLACEALL]) + ''', ' + 'ANULA = ''' +
          STRINGREPLACE(FLOATTOSTR(Valor), ',', '.', [RFREPLACEALL]) + ''', ' + ' dtpag=''' + STRINGREPLACE(DM.QOrigem.FieldByName('dtmovimento').AsString, '/', '.',
          [RFREPLACEALL]) + ''' ' + 'WHERE PKEMP = ''' + DM.localiza.FieldByName('PKEMPA').AsString + '''';
        DM.Atualiza.ExecSQL;

        DM.Atualiza.close;
        DM.Atualiza.Commandtext := 'UPDATE DESPES SET ORDCRE = ''' + inttostr(OrdCre) + ''', SUBEM = 0,' + ' dtpag=''' +
          STRINGREPLACE(DM.QOrigem.FieldByName('dtmovimento').AsString, '/', '.', [RFREPLACEALL]) + ''' ' + 'WHERE PKEMP = ''' + DM.localiza.FieldByName('PKEMPA').AsString + '''';
        DM.Atualiza.ExecSQL;

        DM.Atualiza.close;
        DM.Atualiza.Commandtext := 'UPDATE VIEWLIQ SET dtpag=''' + STRINGREPLACE(DM.QOrigem.FieldByName('dtmovimento').AsString, '/', '.', [RFREPLACEALL]) + ''', subem=1, ' +
          'VAPAG = ''' + STRINGREPLACE(FLOATTOSTR(Valor), ',', '.', [RFREPLACEALL]) + ''', ' + 'ANULA = ''' + STRINGREPLACE(FLOATTOSTR(Valor), ',', '.', [RFREPLACEALL]) +
          ''' ' + 'WHERE PKEMP = ''' + DM.localiza.FieldByName('PKEMPA').AsString + '''';
        DM.Atualiza.ExecSQL;

        DM.Atualiza.close;
        DM.Atualiza.Commandtext := 'set generator gen_ordcre to ' + inttostr(ordcre + 1);
        DM.Atualiza.ExecSQL;
        {$endregion}
      end
      else
      begin
        {$region ' Dessub '}

        if Ano.Value > 2012 then
        begin
            if pkemp_ant <> DM.Localiza.FieldByName('PKEMP').asinteger then
              numsub := DM.localiza.FieldByName('maxnumsub').AsInteger;
            inc(numsub);

            pkemp_ant := DM.Localiza.FieldByName('PKEMP').asinteger;
        end
        else
        begin
             DM.QAux2.Close;
             DM.QAux2.CommandText := 'SELECT COALESCE(MAX(NUMSUB),0) AS NPARCELAS FROM DESSUB WHERE PKEMP = '+DM.Localiza.FieldByName('PKEMP').AsString;
             DM.QAux2.Open;

             numsub := DM.QAux2.FieldByName('nparcelas').AsInteger+1;
        end;

        DM.localiza4.append;
        DM.localiza4.FieldByName('PKEMP').AsString := DM.Localiza.FieldByName('PKEMP').AsString;

        if Ano.Value > 2012 then
           DM.localiza4.FieldByName('PRODU').AsString := DM.QOrigem.FieldByName('produ').AsString
        else
           DM.localiza4.FieldByName('PRODU').AsString := DM.Localiza.FieldByName('produ').AsString;

        DM.localiza4.FieldByName('numsub').AsInteger := numsub;
        DM.localiza4.FieldByName('PARCELA').AsInteger := numsub;
        DM.localiza4.FieldByName('NUMSUBA').AsInteger := DM.localiza.FieldByName('numsub').AsInteger;
        DM.localiza4.FieldByName('DATAE').AsString := DM.QOrigem.FieldByName('dtmovimento').AsString;
        DM.localiza4.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('dtmovimento').AsString;
        DM.localiza4.FieldByName('VADEM').ASCURRENCY := valor ;
        DM.localiza4.FieldByName('NUMLIQ').AsInteger := DM.localiza.FieldByName('NUMLIQ').AsInteger;
        DM.localiza4.FieldByName('modulo').AsString := 'OP_OR_AN';
        DM.localiza4.FieldByName('ID_nrsequencia').AsString := DM.QORIGEM.FieldByName('nrsequencia').AsString;
        DM.localiza4.FieldByName('ID_nrsequenciasistema').AsString := DM.QORIGEM.FieldByName('nrsequenciasistema').AsString;
        DM.localiza4.post;
//        DM.localiza4.ApplyUpdates(-1);
        {$endregion}
        {$region ' Descsub '}
        // ********************** LANÇA O ESTORNO DO DESCONTO ***************
        if arredonda(desco,2) <> 0.00 then
        begin
          inc(ordcre);// para nao dar erro de pk
          DM.localizaorigem.filtered := false;

          if Ano.Value > 2012 then
              DM.localizaorigem.filter := ' cdunidadegestora = ''' + dm.QOrigem.FieldByName('cdunidadegestora').AsString + ''' '+
                ' and nrsequenciasistema = ''' + dm.QOrigem.FieldByName('nrsequenciasistema').AsString + ''' '
          else
              DM.localizaorigem.filter := ' cdunidadegestora = ''' + dm.QOrigem.FieldByName('cdunidadegestora').AsString + ''' '+
                ' and ORDPG_ESTORNADA = ''' + dm.QOrigem.FieldByName('nrsequenciasistema').AsString + ''' ';


          DM.localizaorigem.filtered := true;
          DM.localizaorigem.first;
          while not DM.localizaorigem.eof do
          begin
            if Ano.Value > 2012 then
              ficha := Traz_Ficha_Desconto(DM.localizaorigem.FieldByName('cdunidadegestora').AsString,DM.localizaorigem.FieldByName('cdreceita').AsString,DM.localizaorigem.FieldByName('cdcontrapartida').AsString)
            else
              ficha := Traz_Ficha_Desconto(DM.localizaorigem.FieldByName('cdunidadegestora').AsString,DM.localizaorigem.FieldByName('cdreceita').AsString,DM.localizaorigem.FieldByName('conta_desconto').AsString);
            if trim(ficha) <> '' then
            begin
              DM.localiza5.append;
              DM.localiza5.FieldByName('PKEMP').AsString := DM.localiza4.FieldByName('PKEMP').AsString;
              DM.localiza5.FieldByName('numsub').AsString := DM.localiza4.FieldByName('numsub').AsString;
              DM.localiza5.FieldByName('valor').ASCURRENCY := DM.localizaorigem.FieldByName('VLMOVIMENTO').ASCURRENCY * (-1);
              DM.localiza5.FieldByName('ficha').AsString := ficha;
              DM.localiza5.FieldByName('modulo').AsString := 'OP_OR_AN';
              DM.localiza5.FieldByName('ID_nrsequencia').AsString := DM.QOrigem.FieldByName('nrsequencia').AsString;
              DM.localiza5.FieldByName('ID_nrsequenciasistema').AsString := DM.QOrigem.FieldByName('nrsequenciasistema').AsString;
              if Ano.Value > 2012 then
                DM.localiza5.FieldByName('ID_CDCONTACONTABIL').AsString := DM.LOCALIZAORIGEM.FieldByName('cdcontrapartida').AsString
              else
                DM.localiza5.FieldByName('ID_CDCONTACONTABIL').AsString := DM.LOCALIZAORIGEM.FieldByName('conta_desconto').AsString;
              DM.localiza5.FieldByName('ID_CDreceita').AsString := DM.LOCALIZAORIGEM.FieldByName('cdreceita').AsString;
              DM.localiza5.post;
//              DM.localiza5.ApplyUpdates(-1);
            end
            else
              memostatus.lines.Add('  Ficha Desc não encontrada : '+ DM.localizaorigem.FieldByName('cdreceita').AsString +'-'+DM.localizaorigem.FieldByName('conta_desconto').AsString);
            DM.localizaorigem.next;
          end;
        end; // if dm.LOCALIZA.FieldByName('desco').AsInteger > 0 then
        {$endregion}
        {$region ' Ordpag '}
        // **********************CRIA ORDPAG ********************************/
        inc(ordpg);
        DM.qDESTINO.append;
        DM.qDESTINO.FieldByName('ORDPG').AsInteger := ORDPG;
        DM.qDESTINO.FieldByName('DATAE').AsString := DM.QOrigem.FieldByName('DTMOVIMENTO').AsString;
        DM.qDESTINO.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('DTMOVIMENTO').AsString;
        if trim(DM.qDESTINO.FieldByName('VENCI').AsString) = '' then
          DM.qDESTINO.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('DTMOVIMENTO').AsString;
        DM.qDESTINO.FieldByName('DTPAG').AsString := DM.QOrigem.FieldByName('DTMOVIMENTO').AsString;
        DM.qDESTINO.FieldByName('COMP').AsString := 'N';

        if Ano.Value > 2012 then
          DM.qDESTINO.FieldByName('produ').AsString := DM.QOrigem.FieldByName('produ').AsString
        else
          DM.qDESTINO.FieldByName('produ').AsString := DM.Localiza.FieldByName('produ').AsString;

        DM.qDESTINO.FieldByName('modulo').AsString := 'OP_OR_AN';
        DM.qDESTINO.FieldByName('CODIF').asstring := Traz_Codif(DM.QOrigem.FieldByName('cdunidadegestora').AsString,DM.QOrigem.FieldByName('cdfornecedor').AsString);
        DM.qDESTINO.FieldByName('empresa').asstring := Traz_Entidade(DM.QOrigem.FieldByName('cdunidadegestora').asstring);
        DM.qDESTINO.FieldByName('VALOR').ASCURRENCY := valor;
        DM.qDESTINO.FieldByName('DESCO').ASCURRENCY := desco;
        DM.qDESTINO.FieldByName('ORDPGSEQ').AsInteger := DM.QOrigem.FieldByName('nrsequencia').AsInteger;
        DM.qDESTINO.FieldByName('ID_nrsequencia').asstring := DM.QOrigem.FieldByName('nrsequencia').asstring;
        DM.qDESTINO.FieldByName('ID_nrsequenciasistema').asstring := DM.QOrigem.FieldByName('nrsequenciasistema').asstring;
        DM.qDESTINO.post;
//        DM.qdestino.ApplyUpdates(-1);
        {$endregion}
        {$region ' Subord '}
        // **********************CRIA SUBORD ********************************/
        DM.localiza6.append;
        DM.localiza6.FieldByName('PKEMP').AsString := DM.localiza4.FieldByName('PKEMP').AsString;
        DM.localiza6.FieldByName('NUMSUB').AsString := DM.localiza4.FieldByName('NUMSUB').AsString;
        DM.localiza6.FieldByName('ORDPG').AsInteger := ORDPG;
        DM.localiza6.FieldByName('COMP').AsString := 'N';
        DM.localiza6.FieldByName('modulo').AsString := 'OP_OR_AN';
        DM.localiza6.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
        DM.localiza6.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
        DM.localiza6.post;
//        DM.localiza6.ApplyUpdates(-1);
        {$endregion}
        {$region ' Cheqord '}
        // *********************** INSERE NA CHEQORD **************************
        DM.localiza7.append;
        DM.localiza7.FieldByName('ORDPG').AsInteger := ORDPG;
        DM.localiza7.FieldByName('CHEQORD').AsInteger := 0;

        if Ano.Value > 2012 then
        begin
            if trim(dm.qorigem.FieldByName('conta_desc').AsString)<> '0' then
            begin
              DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.qorigem.FieldByName('cdunidadegestora').AsString),trim(DM.qorigem.FieldByName('conta_desc').AsString));
              DM.localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
            end
            else
            begin
              if trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString) <> '0' then
              BEGIN
                DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString),trim(DM.LOCALIZAORIGEM.FieldByName('cdcontacontabil').AsString));
                DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
              END
              else
              begin
                DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Caixa(trim(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString));
                DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
              end;
            end;
        end
        else
        begin
              if trim(DM.QOrigem.FieldByName('cdcontacontabil').AsString) <> '0' then
              BEGIN
                DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('cdcontacontabil').AsString));
                DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
              END
              else
              begin
                DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Caixa(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString));
                DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
              end;
        end;

        DM.localiza7.FieldByName('CHEQN').AsString := DM.qorigem.FieldByName('NRDOCUMENTOPAGTO').AsString;
        DM.localiza7.FieldByName('VALOR').ASCURRENCY := valor - desco;
        DM.localiza7.FieldByName('COMP').AsString := 'N';
        DM.localiza7.FieldByName('modulo').AsString := 'OP_OR_AN';
        DM.localiza7.FieldByName('id_nrsequencia').AsString := DM.QOrigem.FieldByName('nrsequencia').AsString;
        DM.localiza7.FieldByName('id_nrsequenciasistema').AsString := DM.QOrigem.FieldByName('nrsequenciasistema').AsString;
          DM.CdsOrigem.FILTERED := false;
          DM.CdsOrigem.FILTER := ' cdunidadegestora = ' + DM.QOrigem.FieldByName('cdunidadegestora').AsString +
            ' AND nrsequenciasistema = ' + DM.QOrigem.FieldByName('nrsequencia').AsString;
          DM.CdsOrigem.FILTERED := true;
          if not DM.CdsOrigem.IsEmpty then
            DM.localiza7.FieldByName('ID_CONCILIA').AsString := DM.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', DM.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' +  FORMATCURR('00', DM.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger)
          else
            DM.localiza7.FieldByName('ID_CONCILIA').AsString := 'N;00/00';
        DM.localiza7.post;
//        DM.localiza7.ApplyUpdates(-1);
        {$endregion}

        if Ano.Value > 2012 then
        begin
            {$region ' Salva Parcial... '}
            if i = quantos then
            begin
              try
                DM.QAUX.close;
                DM.QAUX.Commandtext := 'select max(ordcre) ordcre from ordcre';
                DM.QAUX.OPEN;
                DM.Atualiza.close;
                DM.Atualiza.Commandtext := 'set generator gen_ordcre to ' + inttostr(dm.QAux.FieldByName('ordcre').AsInteger+1);
                DM.Atualiza.ExecSQL;
                status.caption := 'Salvando as ORPAG....';
                status.update;
                erros := DM.qDESTINO.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Ordpag ');
                application.ProcessMessages;
                status.caption := 'Salvando as DESSUB....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza4.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Dessub ');
                application.ProcessMessages;
                status.caption := 'Salvando as DESCSUB....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza5.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Descsub ');
                application.ProcessMessages;
                status.caption := 'Salvando as SUBORD....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza6.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Subord ');
                application.ProcessMessages;
                status.caption := 'Salvando as CHEQORD....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza7.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Cheqord ');
                application.ProcessMessages;

                 status.caption := 'Atualizando descsub....';
                  status.update;
                  if erros = 0 then
                  begin
                    DM.qaux.close;
                    DM.qaux.Commandtext :=
                      '  UPDATE DESCSUB Z SET ' +
                      '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
                      '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
                      '  WHERE z.modulo = ''OP_OR'' and z.conta is null  ';
                    DM.qaux.Execute;
                  end;

                status.caption := 'Atualizando as ORPAG....';
                status.update;
                if erros = 0 then
                begin
                  DM.qaux.close;
                  DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''OP_OR_AN'' AND comp = ''N'' ';
                  DM.qaux.Execute;
                end;
                status.caption := '';
                status.update;
                application.ProcessMessages;
                if erros > 0  then
                  memoStatus.Lines.Add('  Problemas nas OP´s ');
                erros := 0;
                i:=0;
              except
                memoStatus.Lines.Add('  Problemas nas OP´s ');
              end;
            end;
            {$endregion}
        end
        else
        begin
            {$region ' Salva Parcial... '}
            if i = i then
            begin
              try
                DM.QAUX.close;
                DM.QAUX.Commandtext := 'select max(ordcre) ordcre from ordcre';
                DM.QAUX.OPEN;
                DM.Atualiza.close;
                DM.Atualiza.Commandtext := 'set generator gen_ordcre to ' + inttostr(dm.QAux.FieldByName('ordcre').AsInteger+1);
                DM.Atualiza.ExecSQL;
                status.caption := 'Salvando as ORPAG....';
                status.update;
                erros := DM.qDESTINO.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Ordpag ');
                application.ProcessMessages;
                status.caption := 'Salvando as DESSUB....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza4.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Dessub ');
                application.ProcessMessages;
                status.caption := 'Salvando as DESCSUB....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza5.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Descsub ');
                application.ProcessMessages;
                status.caption := 'Salvando as SUBORD....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza6.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Subord ');
                application.ProcessMessages;
                status.caption := 'Salvando as CHEQORD....';
                status.update;
                if erros = 0 then
                  erros := erros + DM.localiza7.ApplyUpdates(-1);
                if erros > 0 then
                  memoStatus.Lines.Add('  Erro na Cheqord ');
                application.ProcessMessages;

                 status.caption := 'Atualizando descsub....';
                  status.update;
                  if erros = 0 then
                  begin
                    DM.qaux.close;
                    DM.qaux.Commandtext :=
                      '  UPDATE DESCSUB Z SET ' +
                      '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
                      '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
                      '  WHERE z.modulo = ''OP_OR_AN'' and z.conta is null  ';
                    DM.qaux.Execute;
                  end;

                status.caption := 'Atualizando as ORPAG....';
                status.update;
                if erros = 0 then
                begin
                  DM.qaux.close;
                  DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''OP_OR_AN'' AND comp = ''N'' ';
                  DM.qaux.Execute;
                end;
                status.caption := '';
                status.update;
                application.ProcessMessages;
                if erros > 0  then
                  memoStatus.Lines.Add('  Problemas nas OP´s ');
                erros := 0;
                i:=0;
              except
                memoStatus.Lines.Add('  Problemas nas OP´s ');
              end;
            end;
            {$endregion}
        end;

      end;
    end
    else
      memostatus.Lines.Add('  Não achou UG/Emp/liq ' + trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString)+'/'+trim(DM.QOrigem.FieldByName('nrempenho').AsString)+'/'+trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString));
    DM.QOrigem.next; application.ProcessMessages;
  end;
  {$region ' Salva o restante..... '}
  try
    status.caption := 'Salvando as ORPAG....';
    status.update;
    erros := DM.qDESTINO.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Ordpag ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza4.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Dessub ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESCSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza5.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Descsub ');
    application.ProcessMessages;
    status.caption := 'Salvando as SUBORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza6.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Subord ');
    application.ProcessMessages;
    status.caption := 'Salvando as CHEQORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza7.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Cheqord ');
    application.ProcessMessages;


     status.caption := 'Atualizando descsub....';
    status.update;
    if erros = 0 then
    begin
      DM.qaux.close;
      DM.qaux.Commandtext :=
        '  UPDATE DESCSUB Z SET ' +
        '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
        '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
        '  WHERE z.modulo = ''OP_OR'' and z.conta is null  ';
      DM.qaux.Execute;
    end;


    status.caption := 'Atualizando as ORPAG....';
    status.update;
    if erros = 0 then
    begin
      DM.qaux.close;
      DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''OP_OR_AN'' AND comp = ''N'' ';
      DM.qaux.Execute;
    end;
    status.caption := '';
    status.update;
    application.ProcessMessages;
    if erros > 0  then
      memoStatus.Lines.Add('  Problemas nas OP´s ');
    erros := 0;
    i:=0;
  except
    memoStatus.Lines.Add('  Problemas nas OP´s ');
  end;
  {$endregion}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select max (cheqord) as cheqord from cheqord';
  DM.atualiza.OPEN;
  CHEQORD_NEW := DM.atualiza.FieldByName('cheqord').AsInteger;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_cheqord to ' + inttostr(CHEQORD_NEW + 1);
  DM.atualiza.ExecSQL;

  STATUS.caption := 'Estorno Orcamentario com Desconto.... OK';
  STATUS.update;
  memoStatus.Lines.Add('Estorno Orcamentario com Desconto.... OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Estorno_Restos_Proc_e_NProc_com_Retencao;
VAR NUMSUB, NUMLIQ, ORDPAG, ORDPG, cheqord_new, I: integer; DESCO, Valor, saldo, desconto_parcial, Valor_ser_Baixado_do_Empenho: real; LISTA_PKEMP: TStringList;
  FILTRO: string; Achou_Cheqord: boolean;
  erros: Integer;
  pkemp: Integer;
  ficha: string;
  emp_ant: integer;
BEGIN
  // CriaCampo('ORDPAG', 'ID_Exercicio', '20');


  SITU.caption := 'Estorno Restos com Retencao....';
  SITU.update;
  Atualiza_Generator;
  Desliga_Triggers;
  p.Position := 0;
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select max(ordpg) as ordpg from ordpag';
  DM.cdsTemp.OPEN;
  ORDPG := DM.cdsTemp.FieldByName('ordpg').AsInteger;

  DM.Localiza.close;
  DM.Localiza.Commandtext :=
      'SELECT v.id_nrempenho, v.id_nrsequenciasubempenho, v.id_cdfornecedor, v.id_cdunidadegestora, v.id_dtanoemissao, '+
      ' (select max(w.numsub) from dessub w where w.pkemp = ds.pkemp) as maxnumsub, '+
      ' ds.* FROM dessub ds '+
      ' inner join viewliq v on v.pkemp=ds.pkemp and v.numsub=ds.numliq '+
      ' where ds.modulo =''OP_RP'' and DS.vadem > 0.00 ';
  DM.Localiza.OPEN;
  DM.qDESTINO.close;
  DM.qDESTINO.Commandtext := ' SELECT * FROM ORDPAG WHERE ORDPG=-1';
  DM.qDESTINO.OPEN;
  DM.localiza4.close;
  DM.localiza4.Commandtext := ' SELECT * FROM DESSUB WHERE PKEMP= -1';
  DM.localiza4.OPEN;
  DM.localiza5.close;
  DM.localiza5.Commandtext := ' SELECT * FROM DESCSUB WHERE PKEMP= -1';
  DM.localiza5.OPEN;
  DM.localiza6.close;
  DM.localiza6.Commandtext := ' SELECT * FROM subord WHERE PKEMP= -1';
  DM.localiza6.OPEN;
  DM.localiza7.close;
  DM.localiza7.Commandtext := ' SELECT * FROM cheqord WHERE cheqord = -1';
  DM.localiza7.OPEN;

  DM.QOrigem.close; // lista as op

  if ANO.Value > 2012 then
      DM.QOrigem.Commandtext :=
        'SELECT p.[cdUnidadeGestora] ,p.[nrSequencia],p.[dtAnoEmissao] ,p.[nrEmpenho] ,p.[idEmpenho] ,p.[nrSequenciaSubempenho] ,p.[cdTipoMovimento] ' +
        '      ,p.[cdHistoricoSistema] ,p.[inMovimentoRestos] ,p.[nrSequenciaSistema] ' +
        '      ,coalesce((select top 1 q.dtmovimento from '+bnc_cpe+'.dbo.DATAVIEW_RETENCAO_RESTOS_ESTORNO q where q.cdUnidadeGestora=p.cdunidadegestora ' +
        '		            		and p.nrsequencia= q.[nrSequenciaEstornoPagamento]) ,p.[dtMovimento] ) as dtmovimento ' +
        '      ,p.[cdContaContabil],p.[cdDespesa] ,p.[cdReceita] ' +
        '      ,p.[cdUnidadeFinanceira] ,p.[cdDespesaSecundaria] ,p.[cdObjetoDespesa] ,p.[cdFornecedor] ,p.[cdContrapartida] ,p.[cdHistoricoPadrao] ' +
        '      ,coalesce(cast(substring(h.dsComplHistorico , 1 , 1024) as varchar(1024)),''Estorno de Pagamento de Restos a Pagar '') as produ ' +
        ' ,p.[idBcteFinanceiro] ,p.[dtMesEmissaoEmpenho] ,p.[idDocumentoPagto] ,p.[nrDocumentoPagto] ,p.[idMovConciliado] ' +
        '      ,p.[dtDiaConciliacao] ,p.[dtMesConciliacao]  ,p.[nrArtigoCaixa] ,p.[vlReservado] ,p.[idFundamentoLegal] ,p.[nrFundamentoLegal] ' +
        '      ,p.[cdEmenta] ,p.[inCorrecao] ,p.[cdBanco]  ,p.[cdAgencia] ,p.[cdContaCorrente] ,p.[nrNotaReservaSaldo] ,p.[cdGrupoEvento] ' +
        '      ,p.[idClasseEvento] ,p.[cdEvento] ,p.[dtDocumentoPagto] ,p.[cdUsuario] ,p.[cdAplicacao] ,p.[cdFonteRecurso] ,p.[qtDiasAplicacao] ' +
        '      ,p.[cdInscricao] ,p.[tpIdentificacao] ,p.[cdControleExclusao] ,p.[sqEstornoBaixaRestos]  ,p.[sqBaixaRestos] ' +
        '      ,case when (coalesce((select SUM(d.[vlEstornoRetencaoRestos]) from '+bnc_cpe+'.dbo.DATAVIEW_RETENCAO_RESTOS_ESTORNO d ' +
        '							where d.cdUnidadeGestora=p.cdunidadegestora and p.nrsequencia= d.[nrSequenciaEstornoPagamento]),0)) > 0.00 then 0.00 ' +
        '						else p.[vlEstornoBaixaRestos] end as vlEstornoBaixaRestos ' +
        '      ,coalesce((select SUM(d.[vlEstornoRetencaoRestos]) from '+bnc_cpe+'.dbo.DATAVIEW_RETENCAO_RESTOS_ESTORNO d where d.cdUnidadeGestora=p.cdunidadegestora ' +
        '				and p.nrsequencia= d.[nrSequenciaEstornoPagamento]),0) desconto ' +
        '  FROM ['+bnc_cpe+'].[dbo].[DATAVIEW_PAGAMENTO_RESTOS_ESTORNO] p ' +
        '  left join ['+bnc_cpe+'].[dbo].[COMPLEMENTOHISTORICO] h on (p.[nrComplHistorico]=h.nrComplHistorico and p.cdUnidadeGestora=h.cdUnidadeGestora) ' +
        '  where cdTipoMovimento in (454,537,544) and cdHistoricopadrao in (454,537,544) and YEAR(p.dtMovimento) =   ' + ano.Text +
        '  order by p.cdunidadegestora, p.dtanoemissao, p.nrempenho,p.nrSequencia'
    ELSE
      DM.QOrigem.Commandtext :=
        'select ' +
        'A.CDTIPOMOVIMENTO, ' +
        '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE A.CDTIPOMOVIMENTO = Z.CDHISTORICOPADRAO) AS DS_TIPOMOV, ' +
        'A.CDHISTORICOSISTEMA, ' +
        '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE A.CDHISTORICOSISTEMA = Z.CDHISTORICOPADRAO) AS DS_HISSIS, ' +
        'A.CDHISTORICOPADRAO, ' +
        '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE A.CDHISTORICOPADRAO = Z.CDHISTORICOPADRAO) AS DS_HISPADRAO, ' +
        'A.*, ' +
        'CASE ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''453'' THEN ' +
        '       COALESCE((SELECT Z.CDCONTRAPARTIDA FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTRAPARTIDA ' +
        '                                          WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''454'' THEN ' +
        '       COALESCE((SELECT Z.CDCONTACONTABIL FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTACONTABIL ' +
        '                                          WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    ELSE A.CDCONTRAPARTIDA END ' +
        'AS CONTA, ' +
        'CASE ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''453'' and a.NRDOCUMENTOPAGTO = ''0'' THEN ' +
        '       COALESCE((SELECT Z.NRDOCUMENTOPAGTO FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTRAPARTIDA ' +
        '                                           WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    WHEN A.CDCONTRAPARTIDA = 0 AND A.CDTIPOMOVIMENTO = ''454'' and a.NRDOCUMENTOPAGTO = ''0'' THEN ' +
        '       COALESCE((SELECT Z.NRDOCUMENTOPAGTO FROM ['+BNC_CPE+'].[dbo].movimento Z INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL Y ON Y.CDCONTACONTABIL = Z.CDCONTACONTABIL ' +
        '                                           WHERE A.NRSEQUENCIA = Z.NRSEQUENCIASISTEMA AND Y.CDNIVELCONTABIL LIKE ''111%'' AND Z.CDTIPOMOVIMENTO = 464),0) ' +
        '    ELSE A.NRDOCUMENTOPAGTO ' +
        'END AS NRDOCUMENTO ' +
        'FROM ['+BNC_CPE+'].[dbo].movimento a ' +
        'WHERE (a.CDTIPOMOVIMENTO IN (454,537,544) AND a.CDHISTORICOSISTEMA <> 455 ) AND ' +
        'a.CDHISTORICOPADRAO NOT IN (577,513,456) AND a.DTANOEMISSAO < '+ANO.Text+' and a.IDEMPENHO = 1 AND A.VLMOVIMENTO <> 0.00 ' +
        'order by A.cdunidadegestora, A.dtanoemissao, A.nrempenho,A.nrSequencia';

  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;
  DM.LOCALIZAORIGEM.close; // lista os descontos da op
  if ANO.Value > 2012 then
      DM.LOCALIZAORIGEM.Commandtext :=
        'SELECT r.cdUnidadeGestora ,r.[nrSequencia]  ,r.[dtAnoEmissao] ,r.[nrEmpenho] ,r.[idEmpenho],r.[nrSequenciaSubempenho] ,r.[cdTipoMovimento] ' +
        '	  ,(select top 1 m.cdcontacontabil from '+bnc_cpe+'.dbo.movimento m  where m.cdunidadegestora=r.cdunidadegestora ' +
        '			and m.nrsequenciasistema = r.nrsequencia and m.cdtipomovimento =464 )as CDCONTRAPARTIDA ' +
        '	  ,r.[cdHistoricoSistema] ,r.[inMovimentoRestos] ,r.[nrSequenciaSistema] ,r.[dtMovimento] ,r.[cdContaContabil] ,r.[cdDespesa] ' +
        '	  ,r.[cdReceita] ,r.[cdUnidadeFinanceira] ,r.[cdDespesaSecundaria] ,r.[cdObjetoDespesa] ,r.[cdFornecedor] ,r.[cdHistoricoPadrao] ' +
        '	  ,r.[idBcteFinanceiro] ,r.[dtMesEmissaoEmpenho] ,r.[idDocumentoPagto] ,r.[nrDocumentoPagto] ,r.[idMovConciliado] ,r.[dtDiaConciliacao] ' +
        '	  ,r.[dtMesConciliacao] ,r.[nrArtigoCaixa] ,r.[vlReservado] ,r.[idFundamentoLegal] ,r.[nrFundamentoLegal] ,r.[cdEmenta] ,r.[inCorrecao] ' +
        '	  ,r.[cdBanco] ,r.[cdAgencia] ,r.[cdContaCorrente] ,r.[nrNotaReservaSaldo] ,r.[cdGrupoEvento] ,r.[idClasseEvento] ,r.[cdEvento] ' +
        '	  ,r.[dtDocumentoPagto] ,r.[cdUsuario] ,r.[cdAplicacao] ,r.[cdFonteRecurso] ,r.[qtDiasAplicacao] ,r.[cdInscricao] ,r.[tpIdentificacao] ' +
        '	  ,r.[cdControleExclusao] ,r.[vlEstornoRetencaoRestos] ,r.[nrSequenciaPagamento] ,r.[nrSequenciaEstornoPagamento] ' +
        '  FROM ['+bnc_cpe+'].[dbo].[DATAVIEW_RETENCAO_RESTOS_ESTORNO] r ' +
        '  where YEAR(r.dtMovimento)=   ' + ano.Text
  ELSE
      DM.LOCALIZAORIGEM.Commandtext :=
        'SELECT A.CDUNIDADEGESTORA, A.NRSEQUENCIASISTEMA, A.NRSEQUENCIA, A.NREMPENHO, A.CDRECEITA, A.VLMOVIMENTO, ' +
        'A.CDTIPOMOVIMENTO, A.CDHISTORICOSISTEMA, A.CDCONTACONTABIL, A.CDCONTRAPARTIDA, ' +
        'CASE ' +
        '    WHEN A.CDCONTACONTABIL <> 0 THEN A.CDCONTACONTABIL ' +
        '    WHEN A.CDCONTRAPARTIDA <> 0 THEN A.CDCONTRAPARTIDA ' +
        'ELSE (SELECT B.CDCONTACONTABIL FROM ['+BNC_CPE+'].DBO.MOVIMENTO B WHERE B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND ' +
        'B.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
        'B.NREMPENHO = A.NREMPENHO AND ' +
        'B.CDCONTRAPARTIDA = 0 AND B.CDCONTACONTABIL <> 0) ' +
        'END AS CONTA_DESCONTO ' +
        'FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
        'WHERE A.CDTIPOMOVIMENTO IN (454,473) AND A.CDHISTORICOSISTEMA = 456 ' +
        'AND A.DTANOEMISSAO < '+Ano.Text+' '+
        'ORDER BY A.NRSEQUENCIA';
  DM.LOCALIZAORIGEM.OPEN;

  // dm.AtualizaOrigem.Close;
  // dm.AtualizaOrigem.CommandText :=  // Lista os Empenhos da OP
  // 'select distinct o.mp_ano, o.mp_ficha, o.mp_num, o.mp_item, e.em_codfor,o.mp_valor, o.mp_desc from pagamentos o ' +
  // 'inner join empenhos e on (o.mp_ano=e.em_ano and  o.mp_ficha=e.em_ficha and o.mp_num =e.em_num and o.mp_item=e.em_item) ' +
  // 'where o.mp_ano='+inttostr(ano.Value)+' and o.mp_ficha <5000 and o.mp_mov=''1'' ' +
  // 'order by o.mp_num';
  // dm.AtualizaOrigem.open;

  dm.CdsOrigem.CLOSE;
  dm.CdsOrigem.Commandtext :=
    'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' + 'from [' +
    bnc_cpe + '].DBO.movimento a ' + 'inner join ' + bnc_cpc + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
    'where a.cdtipomovimento IN (464,465) ' + 'and b.cdnivelcontabil like ''111%'' ';
  dm.CdsOrigem.OPEN;
  dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;


    DM.Localiza.Filtered := false;
    DM.Localiza.Filter := ' ID_NRsequencia = ''' + trim(DM.qorigem.FieldByName('nrsequenciasistema').AsString) + ''' ';
    DM.Localiza.Filtered := true;
    if dm.localiza.IsEmpty then
    begin
      DM.Localiza.Filtered := false;
      DM.Localiza.Filter := ' id_cdunidadegestora = ''' + trim(DM.qorigem.FieldByName('cdunidadegestora').AsString) + ''' '+
          ' and id_dtanoemissao = ''' + trim(DM.qorigem.FieldByName('dtanoemissao').AsString) + ''' '+
          ' and id_nrempenho = ''' + trim(DM.qorigem.FieldByName('nrempenho').AsString) + ''' '+
          ' and id_nrsequenciasubempenho = ''' + trim(DM.qorigem.FieldByName('nrsequenciasubempenho').AsString) + ''' '+
          ' and vapag >= ''' + stringreplace(currtostr(DM.qDESTINO.FieldByName('valor').ascurrency*-1),',','.',[rfReplaceAll] ) + ''' ';
      DM.Localiza.Filtered := true;
      if dm.localiza.IsEmpty then
      begin
        DM.Localiza.Filtered := false;
        DM.Localiza.Filter := ' id_cdunidadegestora = ''' + trim(DM.qorigem.FieldByName('cdunidadegestora').AsString) + ''' '+
            ' and id_dtanoemissao = ''' + trim(DM.qorigem.FieldByName('dtanoemissao').AsString) + ''' '+
            ' and id_nrempenho = ''' + trim(DM.qorigem.FieldByName('nrempenho').AsString) + ''' '+
            ' and vapag >= ''' + stringreplace(currtostr(DM.qDESTINO.FieldByName('valor').ascurrency*-1),',','.',[rfReplaceAll] ) + ''' ';
        DM.Localiza.Filtered := true;
        if dm.localiza.IsEmpty then
        begin
          DM.Localiza.Filtered := false;
          DM.Localiza.Filter := ' id_cdunidadegestora = ''' + trim(DM.qorigem.FieldByName('cdunidadegestora').AsString) + ''' '+
              ' and id_dtanoemissao = ''' + trim(DM.qorigem.FieldByName('dtanoemissao').AsString) + ''' '+
              ' and id_nrempenho = ''' + trim(DM.qorigem.FieldByName('nrempenho').AsString) + ''' ';
          DM.Localiza.Filtered := true;
        end;
      end;
    end;


    IF (DM.QORIGEM.FieldByName('CDTIPOMOVIMENTO').AsString = '454') OR (DM.QORIGEM.FieldByName('CDTIPOMOVIMENTO').AsString = '473') THEN
    BEGIN
      DM.LOCALIZAORIGEM.FILTER := 'nrsequenciasistema = ''' + DM.QORIGEM.FieldByName('nrsequencia').AsString + ''' ';
      DM.LOCALIZAORIGEM.FiLTERED := True;

      DESCO := 0;

      WHILE NOT DM.LOCALIZAORIGEM.eof DO
      BEGIN
        DESCO := DESCO + DM.LOCALIZAORIGEM.FieldByName('vlmovimento').AsFloat;
        DM.LOCALIZAORIGEM.Next;
      END;
    END
    ELSE
      DESCO := 0;


    DM.LOCALIZAORIGEM.first;



    // ***********   ORDPAG  ************
    {$REGION ' ORDPAG'}
     // *****************************cria ordpag********************************//
    inc(ORDPG);
    desco := 0.00;
    DM.qDESTINO.append;
    DM.qDESTINO.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.qDESTINO.FieldByName('DATAE').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('VENCI').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    if trim(DM.qDESTINO.FieldByName('VENCI').AsString) = '' then
      DM.qDESTINO.FieldByName('VENCI').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('DTPAG').AsString := DM.qorigem.FieldByName('DTMOVIMENTO').AsString;
    DM.qDESTINO.FieldByName('COMP').AsString := 'N';
    DM.qDESTINO.FieldByName('modulo').AsString := 'OP_RP_AN';

    if Ano.Value > 2012 then
    begin
        DM.qDESTINO.FieldByName('VALOR').ASCURRENCY := (dm.QORIGEM.FieldByName('vlestornobaixarestos').ASCURRENCY + dm.QORIGEM.FieldByName('desconto').ASCURRENCY)*-1;
        DM.qDESTINO.FieldByName('DESCO').ASCURRENCY := dm.QORIGEM.FieldByName('desconto').ASCURRENCY;
        desco :=  dm.QORIGEM.FieldByName('desconto').ASCURRENCY *-1 ;
        DM.qDESTINO.FieldByName('produ').AsString := Tira_Char39(250, dm.QOrigem.FieldByName('produ').AsString);
    end
    else
    begin
        DM.qDESTINO.FieldByName('VALOR').ASCURRENCY := (dm.QORIGEM.FieldByName('vlmovimento').ASCURRENCY + desco)*-1;
        DM.qDESTINO.FieldByName('DESCO').ASCURRENCY := desco;
        desco :=  desco *-1 ;
        DM.qDESTINO.FieldByName('produ').AsString := Tira_Char39(250, dm.Localiza.FieldByName('produ').AsString);
    end;

    DM.qDESTINO.FieldByName('CODIF').asstring := Traz_Codif(DM.qorigem.FieldByName('cdunidadegestora').AsString,DM.qorigem.FieldByName('cdfornecedor').AsString);
    DM.qDESTINO.FieldByName('empresa').asstring := Traz_Entidade(DM.qorigem.FieldByName('cdunidadegestora').asstring);
    DM.qDESTINO.FieldByName('ORDPGSEQ').AsInteger := DM.qorigem.FieldByName('nrsequencia').AsInteger;
    DM.qDESTINO.FieldByName('ID_nrsequencia').asstring := DM.qorigem.FieldByName('nrsequencia').asstring;
    DM.qDESTINO.FieldByName('ID_nrsequenciasistema').asstring := DM.qorigem.FieldByName('nrsequenciasistema').asstring;
    DM.qDESTINO.post;
//    DM.qDESTINO.ApplyUpdates(-1);
    // *****************************cria ordpag********************************//
    {$ENDREGION}
    {$region ' Dessub '}
    // *****************************cria dessub********************************//


    pkemp := dm.Localiza.FieldByName('pkemp').AsInteger;
    if emp_ant <> dm.Localiza.FieldByName('pkemp').AsInteger then
      numsub := dm.Localiza.FieldByName('maxnumsub').AsInteger;
    emp_ant := dm.Localiza.FieldByName('pkemp').AsInteger;
    inc(numsub);
    DM.localiza4.append;
    DM.localiza4.FieldByName('numsub').AsInteger := numsub;
    DM.localiza4.FieldByName('numsuba').AsInteger := dm.Localiza.FieldByName('numsub').AsInteger;
    DM.localiza4.FieldByName('PARCELA').AsInteger := numsub;
    DM.localiza4.FieldByName('PKEMP').AsInteger := pkemp;
    DM.localiza4.FieldByName('VADEM').ASCURRENCY := DM.qdestino.FieldByName('valor').ASCURRENCY;
    DM.localiza4.FieldByName('DESCO').ASCURRENCY := desco;

    if ano.Value > 2012 then
        DM.localiza4.FieldByName('PRODU').AsString := DM.qDESTINO.FieldByName('produ').AsString + '  ' +DM.localiza.FieldByName('PRODU').AsString
    else
        DM.localiza4.FieldByName('PRODU').AsString := DM.qDESTINO.FieldByName('produ').AsString;

    DM.localiza4.FieldByName('NUMLIQ').AsInteger := DM.LOCALIZA.FieldByName('NUMLIQ').AsInteger;
    DM.localiza4.FieldByName('DATAE').AsString := DM.qdestino.FieldByName('DATAE').AsString;
    DM.localiza4.FieldByName('VENCI').AsString := DM.qdestino.FieldByName('VENCI').AsString;
    DM.localiza4.FieldByName('modulo').AsString := 'OP_RP_AN';
    DM.localiza4.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
    DM.localiza4.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
    DM.localiza4.post;
//    DM.localiza4.ApplyUpdates(-1);
    // *****************************cria dessub********************************//
    {$endregion}
    {$region ' Descsub '}
    // *****************************cria descsub*******************************//
    if arredonda(desco,2) <> 0.00 then
    begin
      DM.LOCALIZAORIGEM.FILTERED := false;
      DM.LOCALIZAORIGEM.FILTER := ' nrSequenciaEstornoPagamento=''' + DM.qorigem.FieldByName('nrsequencia').AsString +  ''' '+
        ' AND cdunidadegestora=''' + DM.qorigem.FieldByName('cdunidadegestora').AsString+ ''' ';
      DM.LOCALIZAORIGEM.FILTERED := true;
      if  DM.LOCALIZAORIGEM.IsEmpty then
      begin
        DM.LOCALIZAORIGEM.FILTERED := false;
        DM.LOCALIZAORIGEM.FILTER := ' dtanoemissao=''' + DM.qorigem.FieldByName('dtanoemissao').AsString +  ''' '+
          ' and nrempenho =''' + DM.qorigem.FieldByName('nrempenho').AsString +  ''' '+
          ' and nrsequenciasubempenho =''' + DM.qorigem.FieldByName('nrsequenciasubempenho').AsString +  ''' '+
          ' AND cdunidadegestora=''' + DM.qorigem.FieldByName('cdunidadegestora').AsString+ ''' ';
        DM.LOCALIZAORIGEM.FILTERED := true;
      end;

      if not DM.LOCALIZAORIGEM.IsEmpty then
      begin
        DM.LOCALIZAORIGEM.first;
        while not DM.LOCALIZAORIGEM.eof do
        begin
          ficha := Traz_Ficha_Desconto(DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString,'0',DM.LOCALIZAORIGEM.FieldByName('cdcontrapartida').AsString);
          if trim(ficha) <> '' then
          begin
            DM.localiza5.append;
            DM.localiza5.FieldByName('PKEMP').AsInteger := pkemp;
            DM.localiza5.FieldByName('NUMSUB').AsInteger := numsub;
            DM.localiza5.FieldByName('FICHA').AsString := ficha;
            DM.localiza5.FieldByName('modulo').AsString := 'OP_RP_AN';
            DM.localiza5.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
            DM.localiza5.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
            DM.localiza5.FieldByName('ID_CDCONTACONTABIL').AsString := DM.LOCALIZAORIGEM.FieldByName('cdcontrapartida').AsString;
//            DM.localiza5.FieldByName('ID_CDreceita').AsString := DM.LOCALIZAORIGEM.FieldByName('cdreceita').AsString;
            DM.localiza5.FieldByName('VALOR').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlestornoretencaorestos').ASCURRENCY*-1;
            DM.localiza5.FieldByName('COMP').AsString := 'N';
            DM.localiza5.post;
//            DM.localiza5.ApplyUpdates(-1);
          end
          else
            memoStatus.Lines.Add('  DESCONTO - UG/Ficha não encontrada: ' + trim(DM.qorigem.FieldByName('cdunidadegestora').AsString) + '/' +
              trim(DM.qorigem.FieldByName('cdcontrapartida').AsString));
          DM.LOCALIZAORIGEM.next; application.ProcessMessages;
        end;
      end
      else
        memoStatus.Lines.Add('  DESCONTO - Não achou nrseq/ug ' + DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString + '/'+DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString );
    end;
    // *****************************cria descsub*******************************//
    {$endregion}
    {$region ' SubOrd '}
    // *****************************cria subord********************************//
    DM.localiza6.append;
    DM.localiza6.FieldByName('PKEMP').AsInteger := pkemp;
    DM.localiza6.FieldByName('NUMSUB').AsInteger := numsub;
    DM.localiza6.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.localiza6.FieldByName('COMP').AsString := 'N';
    DM.localiza6.FieldByName('modulo').AsString := 'OP_RP_AN';
    DM.localiza6.FieldByName('ID_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
    DM.localiza6.FieldByName('ID_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
    DM.localiza6.post;
//    DM.localiza6.ApplyUpdates(-1);
    // *****************************cria subord********************************//
    {$endregion}
    {$region ' CheqOrd '}
    // *****************************cheqord************************************//
    DM.localiza7.append;
    DM.localiza7.FieldByName('CHEQORD').AsInteger := 0 ;
    DM.localiza7.FieldByName('ORDPG').AsInteger := ORDPG;
    DM.localiza7.FieldByName('dtlan').AsString := DM.QORIGEM.FieldByName('dtmovimento').AsString;

    DM.localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.qorigem.FieldByName('cdunidadegestora').AsString),trim(DM.qorigem.FieldByName('cdcontrapartida').AsString));
    DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);

    DM.localiza7.FieldByName('CHEQN').VALUE := DM.qorigem.FieldByName('NRDOCUMENTOPAGTO').VALUE;

    if ANO.Value > 2012 then
       DM.localiza7.FieldByName('VALOR').ASCURRENCY := DM.qorigem.FieldByName('vlestornobaixarestos').ASCURRENCY *-1 // valor
    ELSE
       DM.localiza7.FieldByName('VALOR').ASCURRENCY := DM.qorigem.FieldByName('vlmovimento').ASCURRENCY *-1; // valor

    DM.localiza7.FieldByName('COMP').AsString := 'N';
    DM.localiza7.FieldByName('modulo').AsString := 'OP_RP_AN';
    DM.localiza7.FieldByName('id_nrsequencia').AsString := DM.qorigem.FieldByName('nrsequencia').AsString;
    DM.localiza7.FieldByName('id_nrsequenciasistema').AsString := DM.qorigem.FieldByName('nrsequenciasistema').AsString;
      DM.cdsorigem.FILTERED := false;
      DM.cdsorigem.FILTER := ' cdunidadegestora = ' + DM.qorigem.FieldByName('cdunidadegestora').AsString +
        ' AND nrsequenciasistema = ' + DM.qorigem.FieldByName('nrsequencia').AsString;
      DM.cdsorigem.FILTERED := true;
      if not DM.cdsorigem.IsEmpty then
        DM.localiza7.FieldByName('ID_CONCILIA').AsString := DM.cdsorigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', DM.cdsorigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' +  FORMATCURR('00', DM.cdsorigem.FieldByName('DTMESCONCILIACAO').Asinteger)
      else
        DM.localiza7.FieldByName('ID_CONCILIA').AsString := 'N;00/00';
    DM.localiza7.post;
//    DM.localiza7.ApplyUpdates(-1);
    // *****************************cheqord************************************//
    {$endregion}

    DM.QOrigem.next;
  end;
  {$region ' Salva o restante..... '}
  try
    status.caption := 'Salvando as ORPAG....';
    status.update;
    erros := DM.qDESTINO.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Ordpag ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza4.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Dessub ');
    application.ProcessMessages;
    status.caption := 'Salvando as DESCSUB....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza5.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Descsub ');
    application.ProcessMessages;
    status.caption := 'Salvando as SUBORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza6.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Subord ');
    application.ProcessMessages;
    status.caption := 'Salvando as CHEQORD....';
    status.update;
    if erros = 0 then
      erros := erros + DM.localiza7.ApplyUpdates(-1);
    if erros > 0 then
      memoStatus.Lines.Add('  Erro na Cheqord ');
    application.ProcessMessages;

    status.caption := 'Atualizando descsub....';
    status.update;
    if erros = 0 then
    begin
      DM.qaux.close;
      DM.qaux.Commandtext :=
      '  UPDATE DESCSUB Z SET ' +
      '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
      '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
      '  WHERE z.modulo = ''OP_RP_AN'' and z.conta is null  ';
      DM.qaux.Execute;
    end;



    status.caption := 'Atualizando as ORPAG....';
    status.update;
    if erros = 0 then
    begin
      DM.qaux.close;
      DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''OP_RP_AN'' AND comp = ''N'' ';
      DM.qaux.Execute;
    end;
    status.caption := '';
    status.update;
    application.ProcessMessages;
    if erros > 0  then
      memoStatus.Lines.Add('  Problemas nas OP´s ');
    erros := 0;
    i:=0;
  except
    memoStatus.Lines.Add('  Problemas nas OP´s ');
  end;
  {$endregion}
  STATUS.caption := 'Estorno Restos com Desconto.... OK';
  STATUS.update;
  memoStatus.Lines.Add('Estorno Restos com Desconto.... OK');
  Desconecta_Conecta;
end;

FUNCTION TTfrmprincipal_Conversao.PEGANUMERO(X: STRING): STRING;
VAR Y: STRING; I: integer;
BEGIN
  FOR I := 1 TO Length(trim(X)) DO
  BEGIN
    IF POS(X[I], '0123456789') > 0 THEN
      Y := Y + X[I];
  END;
  PEGANUMERO := Y;
END;

PROCEDURE TTfrmprincipal_Conversao.PODER_ORGAO_UNIDADE;
VAR FILTRO: STRING;
BEGIN
  SITU.caption := 'PODER...';
  SITU.update;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM DESDIS';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESORC';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM PPA_ACOES';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM TABUNIDADE';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM TABORGAO';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM TABPODER';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABPODER';
  DM.QDESTINO.OPEN;

  // PODER
  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
                    'SELECT * ' +
                    'FROM ['+BNC_PPA+'].DBO.PPAOrgaoUnidade a ' +
                    'WHERE a.cdChavePrimaria = 0 AND A.dtAlteracao = ( SELECT top 1 dtAlteracao from ['+BNC_PPA+'].DBO.PPAOrgaoUnidade ' +
                    '												                           where cdChavePrimaria = 0 and cdOrgao = A.cdOrgao and cdUnidade = A.cdUnidade and ' +
                    '												                           cdDepartamento = a.cdDepartamento and dtAlteracao < ''31.12.'+Ano.Text+''' ' +
                    '                                                  order by dtAlteracao desc ) ' +
                    'and CDUNIDADE = 0';
  DM.QOrigem.OPEN;
  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;
  if USADEPARTAMENTO = true then
  begin
    DM.QOrigem.first;
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      p.Position := DM.QOrigem.RecNo;
      EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
      EM.update;
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
      DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(60, DM.QOrigem.FieldByName('DSORGAOUNIDADE').AsString);
      DM.QDESTINO.FieldByName('codtce').AsString := DM.QOrigem.FieldByName('cdTCE').AsString;
      DM.QDESTINO.post;
      DM.QOrigem.next;
    END;
    DM.QDESTINO.ApplyUpdates(-1);
  end
  else
  begin
    DM.QOrigem.close;
    DM.QOrigem.Commandtext := 'select * from [' + BNC_CPE + '].dbo.UNIDADEGESTORA WHERE CDUNIDADEGESTORA<100';
    DM.QOrigem.OPEN;
    DM.QOrigem.first;
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsInteger);
      DM.QDESTINO.FieldByName('NOME').AsString := DM.QOrigem.FieldByName('DSUNIDADEGESTORA').AsString;
      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
      DM.QOrigem.next;
    END;
  end;
  STATUS.caption := 'Poder OK';
  memoStatus.Lines.Add('Poder - OK');

  // orgao
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABORGAO';
  DM.QDESTINO.OPEN;
  SITU.caption := 'Orgao...';
  SITU.update;
  IF USADEPARTAMENTO = false THEN
    FILTRO := ' AND CDUNIDADE <> 0 '
  ELSE
    FILTRO := ' AND CDDEPARTAMENTO = 0 ';
  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
          'SELECT cdChavePrimaria, cdOrgao, cdUnidade, cdDepartamento, dsCampoAtuacao, dsLegislacao, cdTCE, cdUnidadeGestora, dtExercicio, nrVersao, idStatusPPA, ' +
          '       nrFundamentoLegal, idFundamentoLegal, idOperacao, nrCNPJ, idUnidOrcam, cdTipoUnidadeAdm_TC, dtMesCriacao, dsOrgaoUnidade, dtAlteracao ' +
          'FROM ['+BNC_PPA+'].dbo.PPAOrgaoUnidade AS a ' +
          'WHERE (cdChavePrimaria = 0) AND (dtAlteracao = (SELECT     TOP (1) dtAlteracao FROM ['+BNC_PPA+'].dbo.PPAOrgaoUnidade ' +
          '                                                WHERE (cdChavePrimaria = 0) AND (cdOrgao = a.cdOrgao) AND ' +
          '                                                (cdUnidade = a.cdUnidade) AND (cdDepartamento = a.cdDepartamento) ' +
          '                                                '+FILTRO+' ' +
          '                                                ORDER BY dtAlteracao DESC))';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    DM.QDESTINO.append;

    DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(60, DM.QOrigem.FieldByName('DSORGAOUNIDADE').AsString);

    if USADEPARTAMENTO = true then
    begin
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
      DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
      if Ano.Value <= 2012 then
        Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('NOME').AsString);
    end
    else
    begin
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsInteger);
      DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
      if Ano.Value <= 2012 then
        Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('NOME').AsString);
    end;

    // DM.QDESTINO.FieldByName('codaudesp').AsString := DM.QORIGEM.FieldByName('un_entidade').AsString;
    DM.QDESTINO.FieldByName('codtce').AsString := DM.QOrigem.FieldByName('cdTCE').AsString;
    DM.QDESTINO.post;

    TRY
      DM.QDESTINO.ApplyUpdates(-1);
    EXCEPT
      ON E: Exception DO
      BEGIN
        Showmessage(E.Message);
      END;
    END;

    DM.QOrigem.next;
  END;
  STATUS.caption := 'Orgão OK';
  memoStatus.Lines.Add('Orgao OK');
  // ORGAO
  SITU.caption := 'UNIDADE...';
  SITU.update;

  IF USADEPARTAMENTO = true THEN
    FILTRO := ' AND CDUNIDADE<>0'
  ELSE
    FILTRO := ' AND CDDEPARTAMENTO=0';
  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
    '    SELECT     cdChavePrimaria, cdOrgao, cdUnidade, cdDepartamento, dsCampoAtuacao, dsLegislacao, cdTCE, cdUnidadeGestora, dtExercicio, nrVersao, idStatusPPA, ' +
    '                      nrFundamentoLegal, idFundamentoLegal, idOperacao, nrCNPJ, idUnidOrcam, cdTipoUnidadeAdm_TC, dtMesCriacao, dsOrgaoUnidade, dtAlteracao ' +
    ' FROM         [' + BNC_PPA + '].dbo.PPAOrgaoUnidade AS a ' + ' WHERE     (cdChavePrimaria = 0) AND (dtAlteracao = ' +
    '                          (SELECT     TOP (1) dtAlteracao ' + '                            FROM          [' + BNC_PPA + '].dbo.PPAOrgaoUnidade ' +
    '                            WHERE      (cdChavePrimaria = 0) AND (cdOrgao = a.cdOrgao) AND (cdUnidade = a.cdUnidade) AND (cdDepartamento = a.cdDepartamento) ' + FILTRO +
    '                            ORDER BY dtAlteracao DESC))  and cdUnidade <> ''0''  and cdDepartamento <> ''0'' ';
  DM.QOrigem.OPEN;

  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABUNIDADE';
  DM.QDESTINO.OPEN;
  DM.QOrigem.first;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    DM.QDESTINO.append;

    DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(60, DM.QOrigem.FieldByName('DSORGAOUNIDADE').AsString);

    IF USADEPARTAMENTO = false THEN
    begin
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsInteger);
      DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
      DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
      if Ano.Value <= 2012 then
      begin
        Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('NOME').AsString);
        Existe_TabOrgao(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, DM.QDESTINO.FieldByName('NOME').AsString);
      end;
    end
    else
    begin
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
      DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
      DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDDEPARTAMENTO').AsInteger);
      if Ano.Value <= 2012 then
      begin
        Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('NOME').AsString);
        Existe_TabOrgao(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, DM.QDESTINO.FieldByName('NOME').AsString);
      end;
    end;

    Existe_TabOrgao(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, DM.QDESTINO.FieldByName('NOME').AsString);
    DM.QDESTINO.FieldByName('codaudesp').AsString := DM.QOrigem.FieldByName('cdTCE').AsString;
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    DM.QOrigem.next;
  END;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update tabunidade set codaudesp = 0 where codaudesp is null';
  DM.Atualiza.ExecSQL;

  STATUS.caption := 'Unidade OK';
  memoStatus.Lines.Add('Unidade OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.PROGRAMAS;
BEGIN
  SITU.caption := 'PROGRAMAS...';
  SITU.update;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
      'SELECT cdChavePrimaria, cdPrograma AS cdSubPrograma, cdMacroObjetivo, cdTipoPrograma, dsPrograma AS dsSubPrograma, dsObjetivo, dsPublicoAlvo, ' +
      '       CONVERT(VARCHAR(500), dsJustificativa) AS dsJustificativa, dsAbrangencia, dsFormaFinanciamento, inNatureza, dtInicial, dtFinal, cdOrgao, cdUnidade, ' +
      '       cdDepartamento, nrVersao, nrFundamentoLegal, idFundamentoLegal, idOperacao, dsProblema, dsObjetivoSetorial, dtMesCriacao, dtAnoCriacao, 2 AS idPortaria42 ' +
      'FROM ['+BNC_PPA+'].dbo.PPAPrograma AS A ' +
      'WHERE (cdChavePrimaria = 0) AND (dtAlteracao = (SELECT MAX(dtAlteracao) AS Expr1 FROM ['+BNC_PPA+'].dbo.PPAPrograma ' +
      '                                                WHERE (cdChavePrimaria = 0) AND (cdPrograma = A.cdPrograma) ))';
  DM.QOrigem.OPEN;

  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;
{$REGION 'Limpa as tabelas'}
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM PPA_ACOES';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM PPA_METAS';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM PPA_PROGRAMA';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM TABPROGRAMAacao';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM TABPROGRAMA';
  DM.Atualiza.ExecSQL;
{$ENDREGION}
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABPROGRAMA';
  DM.QDESTINO.OPEN;
  DM.QOrigem.first;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    IF NOT DM.QDESTINO.Locate('PROGRAMA', FORMATCURR('0000', DM.QOrigem.FieldByName('CDSUBPROGRAMA').AsInteger), []) THEN
      DM.QDESTINO.append
    ELSE
      DM.QDESTINO.edit;
    DM.QDESTINO.FieldByName('PROGRAMA').AsString := FORMATCURR('0000', DM.QOrigem.FieldByName('CDSUBPROGRAMA').AsInteger);

    DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(120, DM.QOrigem.FieldByName('DSSUBPROGRAMA').AsString);
    DM.QDESTINO.FieldByName('OBJETIVO').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('DSOBJETIVO').AsString);
    DM.QDESTINO.FieldByName('PUBLICO').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('DSPUBLICOALVO').AsString);
    DM.QDESTINO.FieldByName('TIPO').AsString := 'P';
    DM.QOrigem.next;
    DM.QDESTINO.post;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'TABPROGRAMA OK';
  memoStatus.Lines.Add('TABPROGRAMA OK');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.PROGRAMAS_METAS_PPA;
VAR Unidade: STRING; I: integer;
BEGIN
  SITU.caption := 'Programa PPA';
  SITU.update;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM PPA_ACOES';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM PPA_METAS';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM PPA_PROGRAMA';
  DM.Atualiza.ExecSQL;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
      'SELECT CDPROGRAMA, DSPROGRAMA, DSOBJETIVO, DSPUBLICOALVO, SUBSTRING(DSJUSTIFICATIVA,1,1024) AS DSJUSTIFICATIVA ' +
      'FROM  ['+BNC_PPA+'].DBO.PPAPROGRAMA A ' +
      'LEFT JOIN  ['+BNC_PPA+'].DBO.PPAFUNDAMENTOLEGAL B ON B.NRFUNDAMENTOLEGAL = A.NRFUNDAMENTOLEGAL AND B.IDFUNDAMENTOLEGAL = A.IDFUNDAMENTOLEGAL ' +
      'WHERE  (CDCHAVEPRIMARIA = 0) AND ' +
      '(A.DTALTERACAO = (SELECT MAX(DTALTERACAO) AS EXPR1 FROM E_PPA.DBO.PPAPROGRAMA WHERE (CDCHAVEPRIMARIA = 0) AND (CDPROGRAMA = A.CDPROGRAMA) )) ' +
      'ORDER BY A.CDPROGRAMA';
  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  DM.QDESTINO.close;
  dm.qdestino.CommandText := 'select * from ppa_programa';
  dm.qdestino.open;
  p.Max := DM.QOrigem.RecordCount;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(DM.QOrigem.RecordCount);
    EM.update;
    DM.QDESTINO.append;
    DM.QDESTINO.FieldByName('CODPROG').AsInteger := DM.QOrigem.FieldByName('cdprograma').AsInteger; // CODProg;
    DM.QDESTINO.FieldByName('PROGRAMA').AsString := FORMATCURR('0000', DM.QOrigem.FieldByName('cdprograma').AsInteger);
    DM.QDESTINO.FieldByName('CODLEI').AsString := '1';
    DM.QDESTINO.FieldByName('TIPO_LANC').AsString := 'NV';
    DM.QDESTINO.FieldByName('PPA').AsString := 'S';
    DM.QDESTINO.FieldByName('LDO').AsString := 'N';
    DM.QDESTINO.FieldByName('JUSTIF').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('dsjustificativa').AsString);
    DM.QDESTINO.post;
    DM.QOrigem.next;
  END;
  STATUS.caption := 'Salvando PPA PROGRAMA... ';
  STATUS.update;
  if dm.QDestino.ChangeCount > 0 then
    DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'PPA PROGRAMA OK';
  STATUS.update;
  memoStatus.Lines.Add('PPA PROGRAMA OK');
  Desconecta_Conecta;
  // ******************************************************************************
  SITU.caption := 'PPA_CADUNIMEDIDA...';
  SITU.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'SELECT DISTINCT DSINDICADOR, DSUNIDADE FROM ['+BNC_PPA+'].DBO.PPAINDICADORES WHERE CDCHAVEPRIMARIA = 0 AND DSUNIDADE <> '''' ';
  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  p.Max := DM.QOrigem.RecordCount;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from PPA_CADUNIMEDIDA';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM PPA_CADUNIMEDIDA';
  DM.QDESTINO.OPEN;
  I := 0;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(DM.QOrigem.RecordCount);
    EM.update;
    inc(I);
    DM.QDESTINO.append;
    DM.QDESTINO.FieldByName('CODIGO').AsInteger := I;
    DM.QDESTINO.FieldByName('SIGLA').AsString := Tira_Char39(5, DM.QOrigem.FieldByName('dsunidade').AsString);
    DM.QDESTINO.FieldByName('DESCRICAO').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('dsindicador').AsString);
    DM.QDESTINO.post;
    DM.QOrigem.next;
  end;
  if dm.QDestino.ChangeCount > 0 then
    DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'PPA_CADUNIMEDIDA -  OK';
  STATUS.update;
  memoStatus.Lines.Add('PPA_CADUNIMEDIDA -  OK');
  Desconecta_Conecta;

  // ******************************************************************************
  SITU.caption := 'Metas PPA';
  SITU.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
      'SELECT DISTINCT CDPROGRAMA, DSINDICADOR, DSUNIDADE, NRINDICEATUAL, NRINDICEPREVISTO, NRINDICEANO1,NRINDICEANO2, NRINDICEANO3,NRINDICEANO4 ' +
      'FROM ['+BNC_PPA+'].DBO.PPAINDICADORES WHERE CDCHAVEPRIMARIA = 0 AND DTANOBASE = 2014 AND DSUNIDADE <> '''' ';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;

  DM.CdsDestino.close;
  DM.CdsDestino.Commandtext := 'select * from ppa_metas where codmeta=-1';
  DM.CdsDestino.OPEN;
  DM.Localiza.close;
  DM.Localiza.Commandtext := 'select * from PPA_CADUNIMEDIDA';
  DM.Localiza.OPEN;
  DM.Localiza.IndexFieldNames := 'sigla';
  DM.QOrigem.first;
  I := 0;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(DM.QOrigem.RecordCount);
    EM.update;
    inc(I);
    DM.CdsDestino.append;
    DM.CdsDestino.FieldByName('CODMETA').AsInteger := I; // DM.QOrigem.FieldByName('CodProgramaDetalhado').ASINTEGER;
    DM.CdsDestino.FieldByName('CODPROG').AsInteger := DM.QOrigem.FieldByName('cdprograma').AsInteger;
    DM.CdsDestino.FieldByName('CODLEI').AsString := '1';
    DM.CdsDestino.FieldByName('TIPO_LANC').AsString := 'NV';
    DM.CdsDestino.FieldByName('DESCRICAO').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('dsindicador').AsString);
    DM.CdsDestino.FieldByName('UNIDADE').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('dsunidade').AsString);
    if DM.Localiza.FindKey([Tira_Char39(5, DM.QOrigem.FieldByName('dsunidade').AsString)]) then
      DM.CdsDestino.FieldByName('CODCADUNIMEDIDA').AsInteger := DM.Localiza.FieldByName('codigo').AsInteger;
    DM.CdsDestino.FieldByName('INDICER').AsString := trim(DM.QOrigem.FieldByName('nrindiceatual').AsString);
    DM.CdsDestino.FieldByName('INDICEF').AsString := trim(DM.QOrigem.FieldByName('nrindiceprevisto').AsString);
    DM.CdsDestino.FieldByName('ANO1').AsString := trim(DM.QOrigem.FieldByName('nrindiceano1').AsString);
    DM.CdsDestino.FieldByName('ANO2').AsString := trim(DM.QOrigem.FieldByName('nrindiceano2').AsString);
    DM.CdsDestino.FieldByName('ANO3').AsString := trim(DM.QOrigem.FieldByName('nrindiceano3').AsString);
    DM.CdsDestino.FieldByName('ANO4').AsString := trim(DM.QOrigem.FieldByName('nrindiceano4').AsString);
    DM.CdsDestino.post;
    DM.CdsDestino.ApplyUpdates(-1);
    DM.QOrigem.next;
  end;
  DM.CdsDestino.ApplyUpdates(-1);
  STATUS.caption := 'PPA PROGRAMA & METAS -  OK';
  STATUS.update;
  memoStatus.Lines.Add('PPA PROGRAMA & METAS -  OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.ACOES_PPA;
VAR X: integer;
BEGIN
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'delete from ppa_progalt';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'delete from ppa_acoes';
  DM.Atualiza.ExecSQL;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
    'SELECT DISTINCT ' +
    '(SELECT TOP 1 Z.IDOPERACAO FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    '                           WHERE Z.DTANOEXERCICIO = A.DTANOEXERCICIO AND Z.IDTIPOREGISTRO = A.IDTIPOREGISTRO AND Z.CDORGAO = A.CDORGAO AND ' +
    '                           Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND ' +
    '                           Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND Z.CDPROGRAMA = A.CDPROGRAMA AND ' +
    '                           Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = A.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    '                           Z.CDDESTINO = A.CDDESTINO AND Z.IDOPERACAO = ''E'' ) AS EXCLUIDO, ' +
    'A.CDORGAO, A.CDUNIDADE, A.CDDEPARTAMENTO, A.CDUNIDADEGESTORA AS EMPRESA, A.CDFUNCAO, A.CDSUBFUNCAO, A.CDPROGRAMA, A.CDDESTINO, A.CDPROJETOATIVIDADE, ' +
    '(SELECT TOP 1 Z.QUANTIDADE FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2014 AND Z.IDTIPOREGISTRO = 0 AND ' +
    'Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO   AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '	                                           WHERE Y.DTANOEXERCICIO = 2014 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '	                                           Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND ' +
    '	                                           Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND Y.CDPROGRAMA = A.CDPROGRAMA AND ' +
    '	                                           Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    '	                                           Y.CDDESTINO = A.CDDESTINO AND Y.IDOPERACAO = ''O'' )) AS META1, ' +
    '(SELECT TOP 1 Z.VALOR FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2014 AND Z.IDOPERACAO = ''O'' AND ' +
    'Z.IDTIPOREGISTRO = 0 AND Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '	                                           WHERE Y.DTANOEXERCICIO = 2014 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '	                                           Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                           Y.CDPROGRAMA = A.CDPROGRAMA AND Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND ' +
    '	                                           Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND Y.CDDESTINO = A.CDDESTINO AND ' +
    '	                                           Y.IDOPERACAO = ''O'' )) AS VALOR1, ' +
    '(SELECT TOP 1 Z.QUANTIDADE FROM  E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2015 AND Z.IDOPERACAO = ''O'' AND ' +
    'Z.IDTIPOREGISTRO = 0 AND Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM  E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '	                                           WHERE Y.DTANOEXERCICIO =  2015 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '	                                           Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                           Y.CDPROGRAMA = A.CDPROGRAMA AND Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND ' +
    '	                                           Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND Y.CDDESTINO = A.CDDESTINO AND ' +
    '	                                           Y.IDOPERACAO = ''O'')) AS META2, ' +
    '(SELECT TOP 1 Z.VALOR FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2015 AND Z.IDOPERACAO = ''O'' AND ' +
    'Z.IDTIPOREGISTRO = 0 AND Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '                                            WHERE Y.DTANOEXERCICIO = 2015 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '                                            Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '                                            Y.CDPROGRAMA = A.CDPROGRAMA AND Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND ' +
    '                                            Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND Y.CDDESTINO = A.CDDESTINO AND ' +
    '                                            Y.IDOPERACAO = ''O'' )) AS VALOR2, ' +
    '(SELECT TOP 1 Z.QUANTIDADE FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2016 AND Z.IDOPERACAO = ''O'' AND ' +
    'Z.IDTIPOREGISTRO = 0 AND Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '	                                           WHERE Y.DTANOEXERCICIO = 2016 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '	                                           Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                           Y.CDPROGRAMA = A.CDPROGRAMA AND Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND ' +
    '	                                           Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND Y.CDDESTINO = A.CDDESTINO AND ' +
    '	                                           Y.IDOPERACAO = ''O'' )) AS META3, ' +
    '(SELECT TOP 1 Z.VALOR FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2016 AND Z.IDOPERACAO = ''O'' AND ' +
    'Z.IDTIPOREGISTRO = 0 AND Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM  E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '	                                           WHERE Y.DTANOEXERCICIO = 2016 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '	                                           Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                           Y.CDPROGRAMA = A.CDPROGRAMA AND Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND ' +
    '	                                           Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND Y.CDDESTINO = A.CDDESTINO AND ' +
    '	                                           Y.IDOPERACAO = ''O'' )) AS VALOR3, ' +
    '(SELECT TOP 1 Z.QUANTIDADE FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2017 AND Z.IDOPERACAO = ''O'' AND ' +
    'Z.IDTIPOREGISTRO = 0 AND Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '	                                           WHERE Y.DTANOEXERCICIO = 2017 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '	                                           Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                           Y.CDPROGRAMA = A.CDPROGRAMA AND Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND ' +
    '	                                           Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND Y.CDDESTINO = A.CDDESTINO AND ' +
    '	                                           Y.IDOPERACAO = ''O'' )) AS META4, ' +
    '(SELECT TOP 1 Z.VALOR FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Z ' +
    'WHERE Z.DTANOEXERCICIO = 2017 AND Z.IDOPERACAO = ''O'' AND ' +
    'Z.IDTIPOREGISTRO = 0 AND Z.CDORGAO = A.CDORGAO AND Z.CDUNIDADE = A.CDUNIDADE AND Z.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    'Z.CDPROGRAMA = A.CDPROGRAMA AND Z.CDFUNCAO = A.CDFUNCAO AND Z.CDSUBFUNCAO = Z.CDSUBFUNCAO AND Z.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND ' +
    'Z.CDDESTINO = A.CDDESTINO AND Z.DTMOVIMENTO = (SELECT MAX(Y.DTMOVIMENTO) FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS Y ' +
    '	                                           WHERE Y.DTANOEXERCICIO = 2017 AND Y.IDTIPOREGISTRO = 0 AND Y.CDORGAO = A.CDORGAO AND ' +
    '	                                           Y.CDUNIDADE = A.CDUNIDADE AND Y.CDDEPARTAMENTO = A.CDDEPARTAMENTO AND Y.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
    '	                                           Y.CDPROGRAMA = A.CDPROGRAMA AND Y.CDFUNCAO = A.CDFUNCAO AND Y.CDSUBFUNCAO = Z.CDSUBFUNCAO AND ' +
    '	                                           Y.CDPROJETOATIVIDADE = A.CDPROJETOATIVIDADE AND Y.CDDESTINO = A.CDDESTINO AND ' +
    '	                                           Y.IDOPERACAO = ''O''   )) AS VALOR4 ' +
    'FROM E_PPA.DBO.PPADEFINICAOPROJATIVIDADEITENS A ' +
    'WHERE A.DTANOEXERCICIO >= 2014 AND A.IDOPERACAO = ''O'' ';
  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'select * from ppa_acoes ';
  DM.QDESTINO.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  X := 0;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    inc(X);
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;

    IF TRIM(DM.QOrigem.FieldByName('EXCLUIDO').AsString) <> 'E' THEN
    BEGIN
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('codacao').AsInteger := X; // DM.QORIGEM.FieldByName('CodProgramaDetalhado').ASINTEGER;
      DM.QDESTINO.FieldByName('CODPROG').AsInteger := DM.QOrigem.FieldByName('cdprograma').AsInteger;
      DM.QDESTINO.FieldByName('empresa').AsInteger := DM.QOrigem.FieldByName('empresa').AsInteger;
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('cdorgao').AsInteger);
      // FORMATCURR('00', DM.QORIGEM.FieldByName('CodOrgao').ASINTEGER);
      Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, '???');
      DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('cdunidade').AsInteger); // FORMATCURR('00', DM.cdstemp.FieldByName('ORGAO').ASINTEGER);
      Existe_TabOrgao(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, '???');
      DM.QDESTINO.FieldByName('UNIDADE').AsString :=  FORMATCURR('00', DM.QOrigem.FieldByName('cddepartamento').AsInteger);

      DM.QDESTINO.FieldByName('funcao').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('cdFuncao').AsInteger);
      DM.QDESTINO.FieldByName('subfuncao').AsString := FORMATCURR('000', DM.QOrigem.FieldByName('cdsubfuncao').AsInteger);
      DM.QDESTINO.FieldByName('projativ').AsString := DM.QOrigem.FieldByName('cddestino').AsString + FORMATCURR('000', DM.QOrigem.FieldByName('cdprojetoatividade').AsInteger);

      DM.cdsTemp.close;
      DM.cdsTemp.Commandtext := ' select first 1 poder,orgao, unidade,categoria, fongrupo, foncodigo from desdis where poder = ''' + DM.QDESTINO.FieldByName('PODER').AsString +
        ''' ' + ' and orgao = ''' + DM.QDESTINO.FieldByName('ORGAO').AsString + '''  and funcao=''' + DM.QDESTINO.FieldByName('funcao').AsString + ''' ' + ' and subfuncao = '''
        + DM.QDESTINO.FieldByName('subfuncao').AsString + ''' ' + ' and programa = ''' + FORMATCURR('0000', DM.QOrigem.FieldByName('cdprograma').AsInteger) + ''' ' +
        ' and projativ = ''' + DM.QDESTINO.FieldByName('projativ').AsString + ''' ';
      DM.cdsTemp.OPEN;
      if not DM.cdsTemp.IsEmpty then
      begin
        DM.QDESTINO.FieldByName('categoria').AsString := DM.cdsTemp.FieldByName('categoria').AsString;
        DM.QDESTINO.FieldByName('fongrupo').AsString := DM.cdsTemp.FieldByName('fongrupo').AsString;
        DM.QDESTINO.FieldByName('foncodigo').AsString := DM.cdsTemp.FieldByName('foncodigo').AsString
      end
      else
      begin
        DM.QDESTINO.FieldByName('categoria').AsString := '3';
        DM.QDESTINO.FieldByName('fongrupo').AsString := '01';
        DM.QDESTINO.FieldByName('foncodigo').AsString := '00';
      end;

      // FORMATCURR('00', DM.cdstemp.FieldByName('UNIDADE').ASINTEGER);
      Existe_TabUnidade(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, DM.QDESTINO.FieldByName('UNIDADE').AsString, '???');

      DM.QDESTINO.FieldByName('codlei').AsString := '1';
      DM.QDESTINO.FieldByName('tipo_lanc').AsString := 'NV';
      DM.QDESTINO.FieldByName('ano1').AsFloat := DM.QOrigem.FieldByName('valor1').AsFloat;
      DM.QDESTINO.FieldByName('ano2').AsFloat := DM.QOrigem.FieldByName('valor2').AsFloat;
      DM.QDESTINO.FieldByName('ano3').AsFloat := DM.QOrigem.FieldByName('valor3').AsFloat;
      DM.QDESTINO.FieldByName('ano4').AsFloat := DM.QOrigem.FieldByName('valor4').AsFloat;
      DM.QDESTINO.FieldByName('meta1').AsFloat := DM.QOrigem.FieldByName('meta1').AsFloat;
      DM.QDESTINO.FieldByName('meta2').AsFloat := DM.QOrigem.FieldByName('meta2').AsFloat;
      DM.QDESTINO.FieldByName('meta3').AsFloat := DM.QOrigem.FieldByName('meta3').AsFloat;
      DM.QDESTINO.FieldByName('meta4').AsFloat := DM.QOrigem.FieldByName('meta4').AsFloat;
      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
    END;
    DM.QOrigem.next;
  END;
  STATUS.caption := 'PPA AÇOES - OK';
  STATUS.update;
  memoStatus.Lines.Add('PPA AÇOES - OK');
  Desconecta_Conecta;
  PPA_Indicador_Unidade;
end;

procedure TTfrmprincipal_Conversao.PPA_Indicador_Unidade;
var
  codigo: Integer;
begin
  EM.caption := 'Indicadores & Unidade do PROJATIV.... ';
  EM.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
    'select a.cddestino, a.cdprojetoatividade, b.dsproduto as indicador, c.dssimbolo as sigla, c.dsdescricao as descricao ' +
    'from  '+BNC_PPA+'.dbo.ppaprojetoatividade a ' +
    'inner join  '+BNC_PPA+'.dbo.ppaprodutos b on b.cdproduto = a.cdproduto ' +
    'inner join   '+BNC_PPA+'.dbo.ppaunidadesmedida c on c.cdcodigo = b.cdunidade ' +
    'where a.nrfundamentolegal = ''0'' and b.idfundamentolegal = ''0''';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;

  dm.Localiza.Close;
  dm.Localiza.CommandText := 'select coalesce(max(codigo),0) as codigo from PPA_CADUNIMEDIDA';
  dm.Localiza.Open;
  codigo := dm.Localiza.FieldByName('codigo').AsInteger;
  dm.Localiza.Close;
  dm.Localiza.CommandText := 'select codigo, sigla, descricao from PPA_CADUNIMEDIDA';
  dm.Localiza.Open;
  dm.Localiza.IndexFieldNames := 'sigla';

  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    if not dm.localiza.FindKey([Tira_Char39(5, DM.QOrigem.FieldByName('sigla').AsString)])  then
    begin
      inc(codigo);
      dm.Localiza.Append;
      dm.Localiza.fieldbyname('codigo').AsInteger := codigo;
      dm.Localiza.FieldByName('sigla').AsString := Tira_Char39(5, DM.QOrigem.FieldByName('sigla').AsString);
      dm.Localiza.FieldByName('descricao').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('descricao').AsString);
      dm.Localiza.post;
      dm.Localiza.ApplyUpdates(-1);
    end;

    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'update tabprojativ t set t.unidade = ''' + Tira_Char39(100, DM.QOrigem.FieldByName('descricao').AsString) + ''', ' +
      ' indicador = ''' + Tira_Char39(100, DM.QOrigem.FieldByName('indicador').AsString) + ''', '+
      ' CODCADUNIMEDIDA = ''' + dm.Localiza.FieldByName('codigo').AsString+ ''' '+
      ' where projativ = ''' + DM.QOrigem.FieldByName('cddestino').AsString + FORMATCURR('000', DM.QOrigem.FieldByName('cdprojetoatividade').AsInteger) + ''' ';
    DM.Atualiza.ExecSQL;

    DM.QOrigem.next;
  end;
  STATUS.caption := 'PPA INDICADOR E UNID. do PROJATIV - OK';
  STATUS.update;
  memoStatus.Lines.Add('PPA INDICADOR E UNID. do PROJATIV - OK');
  Desconecta_Conecta;
end;
procedure TTfrmprincipal_Conversao.Prestacao_Adiantamento;
begin
  SITU.Caption := 'PRESTAÇÃO DE CONTAS DE ADIANTAMENTO...';
  SITU.Update;
  dm.QAUX.CLOSE;
  dm.QAUX.Commandtext := 'delete from despesaddoc';
  dm.QAUX.execute;
  dm.QAUX.Commandtext := 'delete from despesad';
  dm.QAUX.execute;
  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'SELECT * FROM DESPESAD';
  dm.QDESTINO.OPEN;

  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'SELECT A.*, B.EMPRESA FROM DESPES A ' + 'INNER JOIN DESDIS B ON B.FICHA = A.FICHA ' + 'WHERE B.EXTRA = ''N'' AND A.TPEM = ''AD''';
  dm.Localiza.OPEN;
  dm.Localiza.IndexFieldNames := 'NEMPG;EMPRESA';

  dm.localiza6.Close;
  dm.localiza6.CommandText := 'select * from despesaddoc';
  dm.localiza6.open;

  dm.QORIGEM.CLOSE;
  dm.QORIGEM.Commandtext := 'select nrempenho, dtanoemissao, cdunidadegestora, vlpago, vlrestituicao, ' +
    ' vlpago - vlrestituicao AS VLNOTA, dtprestacaocontas as dtprestacao, ' + 'NRPROCESSOPRESTACAOCONTAS AS PROCESSO from ' + BNC_CPE + '.DBO.valoresempenho ' +
    'where dtPrestacaoContas >= ''01/01/' + Ano.text + '''   AND DTANOEMISSAO = ' + Ano.text;
  dm.QORIGEM.OPEN;
  P.Position := 0;
  P.Max := dm.QORIGEM.RecordCount;
  EM.Caption := inttostr(P.Position) + ' de ' + inttostr(P.Max);
  EM.Update;
  dm.QORIGEM.first;
  WHILE NOT dm.QORIGEM.eof DO
  BEGIN
    P.Position := dm.QORIGEM.RecNo;
    P.UpdatE;
    if dm.Localiza.FindKey([inttostr(dm.QORIGEM.FieldByName('nrempenho').Asinteger), dm.QORIGEM.FieldByName('cdunidadegestora').AsString]) then
    begin
      EM.Caption := inttostr(dm.QORIGEM.RecNo) + ' de ' + inttostr(P.Max);
      EM.Update;
      dm.QDESTINO.APPEND;
      dm.QDESTINO.FieldByName('numsub').Asinteger := 1;
      dm.QDESTINO.FieldByName('pkemp').Asinteger := dm.Localiza.FieldByName('pkemp').Asinteger;
      dm.QDESTINO.FieldByName('dtprestacao').Value := dm.QORIGEM.FieldByName('dtprestacao').Value;
      dm.QDESTINO.FieldByName('tipo').AsString := 'M';
      dm.QDESTINO.FieldByName('totalprestacao').AsString := dm.QORIGEM.FieldByName('vlnota').AsString;
      dm.QDESTINO.FieldByName('obs').AsString := 'Processo: ' + dm.QORIGEM.FieldByName('processo').AsString;
      dm.QDESTINO.Post;
      dm.localiza6.APPEND;
      dm.localiza6.FieldByName('numsub').Asinteger := 1;
      dm.localiza6.FieldByName('pkemp').Asinteger := dm.Localiza.FieldByName('pkemp').Asinteger;
      dm.localiza6.FieldByName('item').Asinteger := 1;
      dm.localiza6.FieldByName('quant').Asinteger := 1;
      dm.localiza6.FieldByName('data').Value := dm.QORIGEM.FieldByName('dtprestacao').Value;
      dm.localiza6.FieldByName('vaun').AsString := dm.QORIGEM.FieldByName('vlpago').AsString;
      dm.localiza6.FieldByName('total').AsString := dm.QORIGEM.FieldByName('vlpago').AsString;
      dm.localiza6.FieldByName('produ').AsString := 'Processo: ' + dm.QORIGEM.FieldByName('processo').AsString;
      dm.localiza6.Post;
    end;
    dm.QORIGEM.Next;
  END;
  STATUS.Caption := 'Salvando prestação de contas de AD....';
  STATUS.Update;
  dm.QDESTINO.ApplyUpdates(-1);
  dm.localiza6.ApplyUpdates(-1);
  STATUS.Caption := 'PRESTAÇÃO ADIANTAMENTO - OK';
  STATUS.Update;
  Desconecta_Conecta;
  memostatus.Lines.Add('PRESTAÇÃO ADIANTAMENTO - OK');
end;

PROCEDURE TTfrmprincipal_Conversao.PROJETO_ATIVIDADE;
var projativ: string;
BEGIN
  SITU.caption := 'PROJETO ATIVIDADE...';
  SITU.update;
  // PROJATIV
  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
      'SELECT cdChavePrimaria, cdDestino, cdProjetoAtividade, cdSubprojetoSubatividade, dsProjetoAtividade, dtMesCriacao, dsObjetivo, cdProduto, inSituacao, nrVersao, ' +
      '       nrFundamentoLegal, idFundamentoLegal, idOperacao, dsDetAcao, cdVinculacao, dtAlteracao ' +
      'FROM ['+BNC_PPA+'].dbo.PPAProjetoAtividade AS a ' +
      'WHERE (cdChavePrimaria = 0) AND (dtAlteracao = (SELECT MAX(dtAlteracao) AS Expr1 FROM ['+BNC_PPA+'].dbo.PPAProjetoAtividade ' +
      '                                                WHERE (cdChavePrimaria = 0) AND (cdDestino = a.cdDestino) AND (cdProjetoAtividade = a.cdProjetoAtividade) AND ' +
      '                                                (cdSubprojetoSubatividade = a.cdSubprojetoSubatividade)))';
  DM.QOrigem.OPEN;
  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM TABACAO';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM TABPROJATIV';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABPROJATIV';
  DM.QDESTINO.OPEN;
  DM.QOrigem.first;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    projativ := DM.QOrigem.FieldByName('CDDESTINO').AsString + FORMATCURR('000', DM.QOrigem.FieldByName('CDPROJETOATIVIDADE').AsInteger);
    IF NOT DM.QDESTINO.Locate('PROJATIV', FORMATCURR('0000', strtoint(projativ)), []) THEN
      DM.QDESTINO.append
    ELSE
      DM.QDESTINO.edit;
    DM.QDESTINO.FieldByName('PROJATIV').AsString := FORMATCURR('0000', strtoint(projativ));
    if copy(projativ, 1, 1) = '1' then
      DM.QDESTINO.FieldByName('tipo').AsString := '1'
    else if copy(projativ, 1, 1) = '2' then
      DM.QDESTINO.FieldByName('tipo').AsString := '2'
    else if copy(projativ, 1, 1) = '0' then
      DM.QDESTINO.FieldByName('tipo').AsString := '3'
    else
      DM.QDESTINO.FieldByName('tipo').AsString := '4';

    DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(120, DM.QOrigem.FieldByName('DSPROJETOATIVIDADE').AsString);
    // DM.QDESTINO.FieldByName('indicador').AsString := Tira_Char39(60, DM.QORIGEM.FieldByName('INDICADOR').AsString);
    DM.QOrigem.next;
    DM.QDESTINO.post;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'TABPROJATIV - OK';
  memoStatus.Lines.Add('TABPROJATIV - OK');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.RECEITAS_ORCAMENTARIAS;
var nlanc: integer; historico: string; sinal: integer;
  ficha: string;
  filtro: string;
begin
  try
    CriaCampo('RECEIT', 'modulo', '20');
    CriaCampo('ORDCRE', 'modulo', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA', '20');
    CriaCampo('ORDCRE', 'ID_NRSEQUENCIA', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA_TRANSF', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIASISTEMA_TRANSF', '20');
    CriaCampo('RECEIT', 'ID_CONCILIA', '20');

    DM.Atualiza.close;
    DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE where nome not like ''Devol.%'' ' +
      ' and TRANSFENTIDADE IS NULL AND ORDPG IS NULL  AND NOT EXISTS (SELECT Z.ORDCRE FROM DESPES Z WHERE Z.ORDCRE = ORDCRE.ORDCRE AND Z.TPEM = ''DA'') ' +
      ' AND MODULO = ''RECEITA_OR'' ';
    DM.Atualiza.ExecSQL;
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'delete from receit where modulo =''RECEITA_OR''';
    DM.Atualiza.ExecSQL;
    DM.localiza.close;
    DM.localiza.Commandtext := 'select max (nlanc) as nlanc from receit';
    DM.localiza.OPEN;
    DM.localiza.FieldByName('nlanc').AsInteger;
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'set generator gen_receit to ' + inttostr(DM.localiza.FieldByName('nlanc').AsInteger );
    DM.Atualiza.ExecSQL;

    SITU.caption := 'Receitas Orçamentarias....';
    SITU.update;
    DM.QOrigem.close;

    if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND B.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
   else
     filtro := ' ';

    if Ano.Value > 2012 then
      DM.QOrigem.Commandtext :=
        'select *, ' +
        'coalesce((SELECT cast(substring(A.DSCOMPLHISTORICO,1, 1024) as varchar(1024))  FROM ['+BNC_CPE+'].[DBO].COMPLEMENTOHISTORICO  A WHERE A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA),''Lanc. Rec. Orc.'') as DSCOMPLHISTORICO ' +
        'from  ['+BNC_CPE+'].[dbo].movimento B ' +
        'where b.cdtipomovimento in (472,473,474,475) ' +
        'and (b.nrempenho = ''000000'' ' +
        'or (b.nrempenho <> ''000000'' and b.cdcontacontabil= ''0'' and b.cdreceita <> ''0'')) ' +filtro+
        'order by dtmovimento, nrsequencia'
    else
      DM.QOrigem.Commandtext :=
        'SELECT *, ' +
        'COALESCE((SELECT CAST(SUBSTRING(A.DSCOMPLHISTORICO,1, 1024) AS VARCHAR(1024))  FROM ['+BNC_CPE+'].[DBO].COMPLEMENTOHISTORICO  A WHERE A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA),''LANC. REC. ORC.'') AS DSCOMPLHISTORICO ' +
        'FROM  ['+BNC_CPE+'].[DBO].MOVIMENTO B ' +
        'WHERE B.CDTIPOMOVIMENTO IN (472,473,474,475) AND B.CDHISTORICOPADRAO NOT IN(455,456) ' +
        'AND (B.NREMPENHO = ''000000'' ' +
        'OR (B.NREMPENHO <> ''000000'' AND B.CDCONTACONTABIL= ''0'' AND B.CDRECEITA <> ''0'')) ' +
        'ORDER BY DTMOVIMENTO, NRSEQUENCIA';
    DM.QOrigem.OPEN;


    dm.CdsOrigem.CLOSE;
    dm.CdsOrigem.Commandtext :=
      'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' + 'from [' +
      BNC_CPE + '].DBO.movimento a ' + 'inner join ' + BNC_CPC + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
      'where a.cdtipomovimento IN (464,465) ' + 'and b.cdnivelcontabil like ''111%'' ';
    dm.CdsOrigem.OPEN;
    dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

    if not DM.QOrigem.IsEmpty then
    begin
      DM.QOrigem.first;
      p.Max := DM.QOrigem.RecordCount;
      DM.QDESTINO.close;
      DM.QDESTINO.Commandtext := 'select * from receit where nlanc = -1';
      DM.QDESTINO.OPEN;
      nlanc := 0;
      while not DM.QOrigem.eof do
      begin
        p.Position := DM.QOrigem.RecNo;
        EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(DM.QOrigem.RecordCount);
        EM.update;
        ficha := Traz_Ficha_RecDis_OR(DM.QORIGEM.FieldByName('cdunidadegestora').AsString,DM.QORIGEM.FieldByName('cdreceita').AsString);
        if trim(ficha) <> '' then
        begin
          inc(nlanc);
          DM.QDESTINO.append;
          DM.QDESTINO.FieldByName('NLANC').AsInteger := 0;
          DM.QDESTINO.FieldByName('FICHA').AsString :=  ficha;
          DM.QDESTINO.FieldByName('id_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
  //        DM.QDESTINO.FieldByName('id_nrsequenciasistema_transf').AsString := DM.QOrigem.FieldByName('nrsequenciasistema_transf').AsString;
          // DM.QDESTINO.FieldByName('id_lr_seq').AsString := DM.QOrigem.FieldByName('lr_seq').AsString;
          // DM.QDESTINO.FieldByName('ID_lr_banco').AsString := trim(DM.QOrigem.FieldByName('lr_banco').AsString);
          // DM.QDESTINO.FieldByName('ID_lr_doc').AsString := trim(DM.QOrigem.FieldByName('lr_doc').AsString);
          DM.QDESTINO.FieldByName('MODULO').AsString := 'RECEITA_OR';
          IF (((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 592) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474)) OR // fundeb
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 593) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 475)) OR
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 582) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474)) OR // renuncia
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 583) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 475)) OR
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 584) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474)) OR // restituicao
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 585) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 475)) OR // Desconto concedido
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 586) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474)) OR
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 587) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 475)) OR
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 588) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474)) OR // Compensacao
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 589) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 475)) OR // outras deducoes
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 590) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474)) OR
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 591) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 475)) OR
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 594) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474)) OR // retificadcao
            ((dm.QORIGEM.FieldByName('CDHISTORICOPADRAO').Asinteger = 595) AND (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 475))) THEN
          BEGIN
            dm.Localiza4.CLOSE;
            // sql somente para nao aparecer outras receitas como deducao
            dm.Localiza4.Commandtext := 'select f.ficha as deduz,r.* from recorc_deducoes r inner join recdis f on f.codre=r.codre_ref where r.ficha =  ' + dm.QDESTINO.FieldByName('FICHA').AsString;
            dm.Localiza4.OPEN;
            IF NOT dm.Localiza4.IsEmpty THEN
            BEGIN
              dm.QDESTINO.FieldByName('FICHADEDUZ').Asinteger := dm.QDESTINO.FieldByName('FICHA').Asinteger;
              dm.QDESTINO.FieldByName('FICHA').Asinteger := dm.Localiza4.FieldByName('deduz').Asinteger;
            END;
          END;
          IF (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 473) OR (dm.QORIGEM.FieldByName('cdtipomovimento').Asinteger = 474) THEN
          BEGIN
            dm.QDESTINO.FieldByName('VAREC').AsCurrency := dm.QORIGEM.FieldByName('VLMOVIMENTO').AsCurrency * (-1);
          END
          ELSE
            dm.QDESTINO.FieldByName('VAREC').AsCurrency := dm.QORIGEM.FieldByName('VLMOVIMENTO').AsCurrency;
          DM.QDESTINO.FieldByName('DTLAN').AsString := trim(DM.QOrigem.FieldByName('dtmovimento').AsString);
          DM.QDESTINO.FieldByName('DTREC').AsString := trim(DM.QOrigem.FieldByName('dtmovimento').AsString);
          if dm.QDESTINO.FieldByName('VAREC').AsCurrency > 0.00 then
          begin
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
          end
          else if dm.QDESTINO.FieldByName('VAREC').AsCurrency < 0.00 then
          begin
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '465']) then
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
          end;
          // if trim(DM.QOrigem.FieldByName('lr_hist').AsString) <> '' then
          historico := Tira_Char39(4096, DM.QOrigem.FieldByName('DSCOMPLHISTORICO').AsString);
          DM.QDESTINO.FieldByName('HISTO').AsString := DM.QDESTINO.FieldByName('id_nrsequencia').AsString + ' - ' + historico;

          DM.QDESTINO.FieldByName('CONTA').AsString := Traz_Conta_Descon(DM.QOrigem.FieldByName('cdunidadegestora').AsString, DM.QOrigem.FieldByName('CDCONTACONTABIL').AsString);
          DM.QDESTINO.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.QDESTINO.FieldByName('CONTA').AsString);


          DM.QDESTINO.post;
          APPLICATION.ProcessMessages;
        end
        else
          memoStatus.Lines.Add('Não achou Ficha/UG ' +DM.QORIGEM.FieldByName('cdreceita').AsString+'/'+DM.QORIGEM.FieldByName('cdunidadegestora').AsString );
        DM.QOrigem.next;
      end;
      STATUS.caption := 'Salvando as Receitas Orçamentarias..... ';
      STATUS.update;
      DM.QDESTINO.ApplyUpdates(-1);
    end;

    STATUS.caption := 'Receitas Orçamentarias OK';
    STATUS.update;
    memoStatus.Lines.Add('Receitas Orçamentarias OK');
    Desconecta_Conecta;
    Ordens_Credito_OR;
  except
    on E: Exception do
    begin
      Showmessage('Erro Conversão RECEITAS_ORCAMENTARIAS: ' + E.Message);
      raise;
    end;
  end;
end;

PROCEDURE TTfrmprincipal_Conversao.RECEITAS_EXTRAS;
var nlanc: integer; sinal: integer; historico: string;
  ficha_ex: string;
  filtro: string;
begin
  try
    CriaCampo('RECEIT', 'modulo', '20');
    CriaCampo('ORDCRE', 'modulo', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA', '20');
    CriaCampo('ORDCRE', 'ID_NRSEQUENCIA', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA_TRANSF', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIASISTEMA_TRANSF', '20');
    CriaCampo('RECEIT', 'ID_CONCILIA', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA_TRANSF', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIASISTEMA_TRANSF', '20');
    Atualiza_Generator;

    DM.Atualiza.close;
    DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE where nome not like ''Devol.%'' ' +
      ' and TRANSFENTIDADE IS NULL AND ORDPG IS NULL  AND NOT EXISTS (SELECT Z.ORDCRE FROM DESPES Z WHERE Z.ORDCRE = ORDCRE.ORDCRE AND Z.TPEM = ''DA'') ' +
      ' AND MODULO = ''RECEITA_EX'' ';
    DM.Atualiza.ExecSQL;

    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'delete from receit where modulo =''RECEITA_EX''';
    DM.Atualiza.ExecSQL;

    SITU.caption := 'Receitas Extras....';
    SITU.update;

    if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND B.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
    else
     filtro := ' ';

    DM.QOrigem.close;
    if Ano.Value > 2012 then
    DM.QOrigem.Commandtext :=
      'SELECT B.*, CAST(A.DSCOMPLHISTORICO AS VARCHAR (2048)) AS DSCOMPLHISTORICO ' +
      'FROM ['+BNC_CPE+'].DBO.MOVIMENTO B ' +
      'LEFT JOIN ['+BNC_CPE+'].DBO.COMPLEMENTOHISTORICO A ON A.NRCOMPLHISTORICO = B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA = B.CDUNIDADEGESTORA ' +
      'WHERE  CDTIPOMOVIMENTO IN (464,465) AND B.NREMPENHO =''000000'' AND ' +
      'B.NRSEQUENCIASISTEMA NOT IN (SELECT A.NRSEQUENCIA FROM ['+BNC_CPE+'].DBO.MOVIMENTO A WHERE A.CDTIPOMOVIMENTO IN (453,454) AND A.CDCONTACONTABIL <>''0'' ) AND ' +
      'B.CDCONTACONTABIL NOT IN (SELECT C.CDCONTACONTABIL FROM ['+BNC_CPC+'].DBO.CONTACONTABIL C WHERE C.CDNIVELCONTABIL LIKE ''45112%'' OR C.CDNIVELCONTABIL LIKE ''35112%'' OR C.CDNIVELCONTABIL LIKE ''45122%'') AND ' +
      'B.CDCONTRAPARTIDA  IN (SELECT C.CDCONTACONTABIL FROM ['+BNC_CPC+'].DBO.CONTACONTABIL C WHERE C.CDNIVELCONTABIL LIKE ''111%'') ' +filtro+
      'ORDER BY B.DTMOVIMENTO, B.NRSEQUENCIA'
    else
    DM.QOrigem.Commandtext :=
      'SELECT B.*, CAST(A.DSCOMPLHISTORICO AS VARCHAR (2048)) AS DSCOMPLHISTORICO ' +
      'FROM ['+BNC_CPE+'].DBO.MOVIMENTO B ' +
      'LEFT JOIN ['+BNC_CPE+'].DBO.COMPLEMENTOHISTORICO A ON A.NRCOMPLHISTORICO = B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA = B.CDUNIDADEGESTORA ' +
      'WHERE  CDTIPOMOVIMENTO IN (464,465) AND B.NREMPENHO =''000000'' AND ' +
      'B.NRSEQUENCIASISTEMA NOT IN (SELECT A.NRSEQUENCIA FROM ['+BNC_CPE+'].DBO.MOVIMENTO A WHERE A.CDTIPOMOVIMENTO IN (453,454) AND A.CDCONTACONTABIL <>''0'' ) AND ' +
      'B.CDCONTACONTABIL NOT IN (SELECT C.CDCONTACONTABIL FROM ['+BNC_CPC+'].DBO.CONTACONTABIL C WHERE C.CDNIVELCONTABIL LIKE ''45112%'' OR C.CDNIVELCONTABIL LIKE ''35112%'' OR C.CDNIVELCONTABIL LIKE ''45122%'') AND ' +
      'B.CDCONTRAPARTIDA  IN (SELECT C.CDCONTACONTABIL FROM ['+BNC_CPC+'].DBO.CONTACONTABIL C WHERE C.CDNIVELCONTABIL LIKE ''111%'' OR C.CDNIVELCONTABIL LIKE ''211%'') ' +
      'ORDER BY B.DTMOVIMENTO, B.NRSEQUENCIA';
    DM.QOrigem.OPEN;

    dm.CdsOrigem.CLOSE;
    dm.CdsOrigem.Commandtext :=
      'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' + ' from ['
      + bnc_cpe + '].DBO.movimento a ' + ' inner join ' + bnc_cpc + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
      ' where a.cdtipomovimento IN (464,465) ' + ' and b.cdnivelcontabil like ''111%'' ';
    dm.CdsOrigem.OPEN;
    dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

    if not DM.QOrigem.IsEmpty then
    begin
      DM.QOrigem.first;
      p.Max := DM.QOrigem.RecordCount;
      DM.QDESTINO.close;
      DM.QDESTINO.Commandtext := 'select * from receit where nlanc = -1';
      DM.QDESTINO.OPEN;
      nlanc := 0;
      while not DM.QOrigem.eof do
      begin
        p.Position := DM.QOrigem.RecNo;
        EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(DM.QOrigem.RecordCount);
        EM.update;
        ficha_ex := Traz_Ficha_RecDis_EX(DM.QOrigem.FieldByName('cdunidadegestora').AsString,DM.QOrigem.FieldByName('cdcontacontabil').AsString);
        if trim(ficha_ex) <>'' then
        begin
          DM.QDESTINO.append;
          DM.QDESTINO.FieldByName('NLANC').AsInteger := 0;
          DM.QDESTINO.FieldByName('FICHA').AsString := ficha_ex;
          DM.QDESTINO.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
//          DM.QDESTINO.FieldByName('ID_ficha').AsString := DM.QOrigem.FieldByName('lrec_numficha').AsString;
          DM.QDESTINO.FieldByName('MODULO').AsString := 'RECEITA_EX';


          IF (dm.QORIGEM.FieldByName('cdtipomovimento').AsString = '446') OR (dm.QORIGEM.FieldByName('cdtipomovimento').AsString = '473') OR
            (dm.QORIGEM.FieldByName('cdtipomovimento').AsString = '464') THEN
          begin
            dm.QDESTINO.FieldByName('VAREC').AsCurrency := dm.QORIGEM.FieldByName('VLMOVIMENTO').AsCurrency* (-1);
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '465']) then
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger)
          end
          ELSE
          begin
            dm.QDESTINO.FieldByName('VAREC').AsCurrency := dm.QORIGEM.FieldByName('VLMOVIMENTO').AsCurrency ;
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger)
          end;


          DM.QDESTINO.FieldByName('DTLAN').AsString := trim(DM.QOrigem.FieldByName('dtmovimento').AsString);
          DM.QDESTINO.FieldByName('DTREC').AsString := trim(DM.QOrigem.FieldByName('dtmovimento').AsString);

          // if trim(DM.QOrigem.FieldByName('produ').AsString) <> '' then
          historico := Tira_Char39(4096, DM.QOrigem.FieldByName('DSCOMPLHISTORICO').AsString);
          DM.QDESTINO.FieldByName('HISTO').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString) + ' - '+ historico;

          DM.QDESTINO.FieldByName('CONTA').AsString := Traz_Conta_Descon(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('cdContrapartida').AsString));
          DM.QDESTINO.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.QDESTINO.FieldByName('CONTA').AsString);

          DM.QDESTINO.post;
          APPLICATION.ProcessMessages;
        end;
        DM.QOrigem.next;
      end;
      STATUS.caption := 'Salvando as Receitas Extras..... ';
      STATUS.update;
      DM.QDESTINO.ApplyUpdates(-1);
    end;

    STATUS.caption := 'Receitas Extras OK';
    STATUS.update;
    memoStatus.Lines.Add('Receitas Extras OK');
    Desconecta_Conecta;
    Ordens_Credito_EX;
  except
    on E: Exception do
    begin
      Showmessage('Erro Conversão RECEITAS_extras: ' + E.Message);
      raise;
    end;
  end;
end;

procedure TTfrmprincipal_Conversao.REPASSE_FINANCEIRO;
var ok: boolean; pkemp_new, ordpg_new, nempg_new, cheqord_new, transfentidade_new: integer;
  empresa_destino, codif_destino, empresa_origem, nome_destino, chave, Ficha_Origem, Ficha_Destino, Conta_Origem, Conta_Destino: string; cheque, docfinan: string;
begin
  SITU.caption := 'Repasse Financeiro..';
  SITU.update;
{$REGION ' Verifica codif do tabempresa...'}
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select empresa from tabempresa where codif is null ';
  DM.cdsTemp.OPEN;
  if not DM.cdsTemp.IsEmpty then
  begin
    ok := false;
    Showmessage('Clique em OK somente depois de informar o fornecedor de todas as entidades!');
  end;
  while not ok do
  begin
    DM.cdsTemp.close;
    DM.cdsTemp.Commandtext := 'select empresa from tabempresa where codif is null ';
    DM.cdsTemp.OPEN;
    if not DM.cdsTemp.IsEmpty then
      Showmessage('Clique em OK somente depois de informar o fornecedor de todas as entidades!')
    else
      ok := true;
  end;
{$ENDREGION}
  CriaCampo('transfentidade', 'modulo', '20');
  CriaCampo('transfentidade', 'id_emp_numempenho', '20');
  // CriaCampo('despes', 'ID_NumTransf', '20');
  // CriaCampo('ordpag', 'ID_NumTransf', '20');
  // CriaCampo('cheqord', 'ID_NumTransf', '20');

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update ordpag set comp = ''N'' where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from subord where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from ordpag where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'update dessub set vadem = 0  where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'update viewliq set vadem = 0  where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'update despes set vadem = 0  where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from dessub where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from viewliq where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from despes where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from transfentidade where modulo = ''REPASSE'' ';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'select max(pkemp) as pkemp from despes ';
  DM.Atualiza.OPEN;
  pkemp_new := DM.Atualiza.FieldByName('pkemp').AsInteger;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'select max(ordpg) as ordpg from ordpag ';
  DM.Atualiza.OPEN;
  ordpg_new := DM.Atualiza.FieldByName('ordpg').AsInteger;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'select max(cheqord) as cheqord from cheqord ';
  DM.Atualiza.OPEN;
  cheqord_new := DM.Atualiza.FieldByName('cheqord').AsInteger;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'select coalesce(max(transfentidade),0) as transfentidade from transfentidade ';
  DM.Atualiza.OPEN;
  transfentidade_new := DM.Atualiza.FieldByName('transfentidade').AsInteger;
  nempg_new := 0;
  DM.Localiza.close;
  DM.Localiza.Commandtext := 'select * from transfentidade where transfentidade = -1';
  DM.Localiza.OPEN;
  DM.Localiza1.close;
  DM.Localiza1.Commandtext := 'select * from despes where pkemp = -1';
  DM.Localiza1.OPEN;
  DM.Localiza2.close;
  DM.Localiza2.Commandtext := 'select * from viewliq where pkemp = -1';
  DM.Localiza2.OPEN;
  DM.Localiza3.close;
  DM.Localiza3.Commandtext := 'select * from dessub where pkemp = -1';
  DM.Localiza3.OPEN;
  DM.Localiza4.close;
  DM.Localiza4.Commandtext := 'select * from subord where pkemp = -1';
  DM.Localiza4.OPEN;
  DM.Localiza5.close;
  DM.Localiza5.Commandtext := 'select * from ordpag where ordpg = -1';
  DM.Localiza5.OPEN;
  DM.Localiza6.close;
  DM.Localiza6.Commandtext := 'select * from cheqord where ordpg = -1';
  DM.Localiza6.OPEN;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select e.emp_numempenho, e.emp_tipo, e.emp_numdigito, e.emp_exercicio, e.emp_numficha, ' +
    'e.emp_tipoficha, e.emp_exercicioficha, e.emp_valorempenhado as vadem, e.emp_valorpago as vapag, ' +
    'e.emp_codfornecedor as codif, e.emp_dataempenho as datae, e.emp_dataliquidacao as dtliq, e.emp_datavencimento as venci, ' +
    'e.emp_datapagamento as dtpag, e.emp_numtipodocumento as proc, e.emp_codaplicacaofixo as vingrupo, e.emp_codaplicacaovar as vincodigo, ' +
    'e.emp_numcheque as cheqn, e.emp_historico as produ, e.emp_codconta as conta ' + 'from empenho_cont e  where e.emp_exercicio = ' + inttostr(ano.Value) +
    ' and e.emp_numficha = 2 and e.emp_tipoficha = 2 and e.emp_datapagamento is not null';
  DM.QOrigem.OPEN;

  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    empresa_destino := '1'; // DM.QOrigem.FieldByName('orgaorecebedor').AsString;
    empresa_origem := Ent_padrao.text; // DM.QOrigem.FieldByName('codadministracao').AsString;
    DM.cdsTemp.close;
    DM.cdsTemp.Commandtext := 'select codif, empresa, nome from tabempresa where empresa= ' + empresa_destino;
    DM.cdsTemp.OPEN;
    codif_destino := DM.cdsTemp.FieldByName('codif').AsString;
    nome_destino := DM.cdsTemp.FieldByName('nome').AsString;
    DM.cdstemp1.close;
    DM.cdstemp1.Commandtext := 'select extra,balco,descricao from extra where balco like ''3237%'' and empresa = ' + empresa_origem + ' and descricao like ''%' +
      nome_destino + '%'' ';
    DM.cdstemp1.OPEN;
    Ficha_Origem := DM.cdstemp1.FieldByName('extra').AsString;
    DM.cdstemp1.close;
    DM.cdstemp1.Commandtext := 'select ficha,empresa from recdis where balco like ''3237%'' and empresa = ' + empresa_destino;
    DM.cdstemp1.OPEN;
    Ficha_Destino := DM.cdstemp1.FieldByName('ficha').AsString;
    Conta_Origem := Traz_Conta_Descon(DM.QOrigem.FieldByName('conta').AsString, empresa_origem);
    Conta_Destino := Traz_Conta_Caixa(empresa_destino);
    cheque := DM.QOrigem.FieldByName('cheqn').AsString;
    // docfinan := DM.QOrigem.FieldByName('TipPagamento').AsString;

{$REGION ' Insere na Transfentidade '}
    inc(transfentidade_new);
    DM.Localiza.append;
    DM.Localiza.FieldByName('transfentidade').AsInteger := transfentidade_new;
    DM.Localiza.FieldByName('contaorigem').AsString := Conta_Origem;
    DM.Localiza.FieldByName('CONTADorigem').AsString := Traz_Conta_DesconD(DM.Localiza.FieldByName('contaorigem').AsString);

    DM.Localiza.FieldByName('contadestino').AsString := Conta_Destino;
    DM.Localiza.FieldByName('CONTADdestino').AsString := Traz_Conta_DesconD(DM.Localiza.FieldByName('contadestino').AsString);

    DM.Localiza.FieldByName('valor').ascurrency := DM.QOrigem.FieldByName('vapag').ascurrency;
    DM.Localiza.FieldByName('fichareceita').AsString := Ficha_Destino;
    DM.Localiza.FieldByName('fichadespesa').AsString := Ficha_Origem;
    DM.Localiza.FieldByName('dtlan').AsString := DM.QOrigem.FieldByName('dtpag').AsString;
    DM.Localiza.FieldByName('cheque').AsString := cheque;
    // DM.Localiza.FieldByName('tipodocfinan').AsString := Traz_TipoDocFinan(docfinan);
    DM.Localiza.FieldByName('histo').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('produ').AsString);
    DM.Localiza.FieldByName('entidadeorigem').AsString := empresa_origem;
    DM.Localiza.FieldByName('entidadedestino').AsString := empresa_destino;
    DM.Localiza.FieldByName('id_emp_numempenho').AsString := trim(DM.QOrigem.FieldByName('emp_numempenho').AsString);
    DM.Localiza.post;
    DM.Localiza.ApplyUpdates(-1);
{$ENDREGION}
{$REGION ' Insere Despes '}
    inc(pkemp_new);
    inc(nempg_new);
    DM.Localiza1.append;
    DM.Localiza1.FieldByName('pkemp').AsInteger := pkemp_new;
    DM.Localiza1.FieldByName('NEMPG').AsInteger := DM.QOrigem.FieldByName('emp_numempenho').AsInteger;
    DM.Localiza1.FieldByName('modulo').AsString := 'REPASSE';
    DM.Localiza1.FieldByName('ID_emp_numempenho').AsString := trim(DM.QOrigem.FieldByName('emp_numempenho').AsString);
    // DM.Localiza1.FieldByName('id_codadministracao').AsString := trim(DM.QOrigem.FieldByName('codadministracao').AsString);
    DM.Localiza1.FieldByName('FICHA').AsString := Ficha_Origem;
    DM.Localiza1.FieldByName('TPEM').AsString := 'EX';
    DM.Localiza1.FieldByName('DATAE').AsString := ValiData(DM.QOrigem.FieldByName('dtpag').AsString);
    DM.Localiza1.FieldByName('codif').AsString := codif_destino;
    DM.Localiza1.FieldByName('EVGRUPO').AsString := '001';
    DM.Localiza1.FieldByName('EVCODIGO').AsString := '001';
    DM.Localiza1.FieldByName('produ').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('produ').AsString);
    DM.Localiza1.FieldByName('vadem').ascurrency := DM.QOrigem.FieldByName('vapag').ascurrency;
    DM.Localiza1.FieldByName('SUBEM').AsString := '0';
    DM.Localiza1.FieldByName('DESCO').ascurrency := 0.00;
    DM.Localiza1.FieldByName('VAPAG').ascurrency := 0.00;
    DM.Localiza1.FieldByName('ANULA').ascurrency := 0.00;
    DM.Localiza1.FieldByName('SUBEMPENHADO').ascurrency := 0.00;
    DM.Localiza1.FieldByName('LICIT').AsString := 'DISPENSA';
    DM.Localiza1.FieldByName('VINGRUPO').AsString := FORMATCURR('000', DM.QOrigem.FieldByName('vingrupo').AsInteger);
    DM.Localiza1.FieldByName('VINCODIGO').AsString := FORMATCURR('000', DM.QOrigem.FieldByName('vincodigo').AsInteger);
    Existe_Vincodigo(DM.Localiza1.FieldByName('VINGRUPO').AsString, DM.Localiza1.FieldByName('vincodigo').AsString, '');
    DM.Localiza1.post;
    DM.Localiza1.ApplyUpdates(-1);
{$ENDREGION}
{$REGION ' Insere Viewliq '}
    // insere na viewliq
    DM.Localiza2.append;
    DM.Localiza2.FieldByName('PKEMP').AsInteger := pkemp_new;
    DM.Localiza2.FieldByName('MODULO').AsString := 'REPASSE';
    DM.Localiza2.FieldByName('NUMSUB').AsInteger := 1;
    DM.Localiza2.FieldByName('NEMPF').AsString := '0';
    DM.Localiza2.FieldByName('DATAE').AsString := DM.Localiza1.FieldByName('dtliq').AsString;
    DM.Localiza2.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('venci').AsString;
    DM.Localiza2.FieldByName('PRODU').AsString := DM.Localiza1.FieldByName('produ').AsString;
    DM.Localiza2.FieldByName('IE').AsString := '0';
    DM.Localiza2.FieldByName('NEMPV').AsString := '0';
    DM.Localiza2.FieldByName('FASE').AsString := '0';
    DM.Localiza2.FieldByName('VADEM').ascurrency := DM.Localiza1.FieldByName('vadem').ascurrency;
    DM.Localiza2.post;
    DM.Localiza2.ApplyUpdates(-1);
{$ENDREGION}
{$REGION ' Insere Dessub '}
    // insere na dessub
    DM.Localiza3.append;
    DM.Localiza3.FieldByName('PKEMP').AsInteger := pkemp_new;
    DM.Localiza3.FieldByName('NUMSUB').AsInteger := 1;
    DM.Localiza3.FieldByName('PARCELA').AsInteger := 1;
    DM.Localiza3.FieldByName('NUMLIQ').AsInteger := 1;
    DM.Localiza3.FieldByName('NEMPF').AsInteger := 0;
    DM.Localiza3.FieldByName('IE').AsInteger := 0;
    DM.Localiza3.FieldByName('NEMPV').AsInteger := 0;
    DM.Localiza3.FieldByName('FASE').AsInteger := 0;
    DM.Localiza3.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('venci').AsString;
    DM.Localiza3.FieldByName('PRODU').AsString := DM.Localiza1.FieldByName('produ').AsString;
    DM.Localiza3.FieldByName('VADEM').ascurrency := DM.Localiza1.FieldByName('vadem').ascurrency;
    DM.Localiza3.FieldByName('DATAE').AsString := DM.QOrigem.FieldByName('dtliq').AsString;
    DM.Localiza3.FieldByName('MODULO').AsString := 'REPASSE';
    DM.Localiza3.post;
    DM.Localiza3.ApplyUpdates(-1);
{$ENDREGION}
{$REGION ' Insere ORDPAG '}
    // Cria na ORDPAG
    DM.Localiza5.append;
    inc(ordpg_new);
    DM.Localiza5.FieldByName('ORDPG').AsInteger := ordpg_new;
    DM.Localiza5.FieldByName('MODULO').AsString := 'REPASSE';
    DM.Localiza5.FieldByName('ORDPGseq').AsInteger := DM.QOrigem.FieldByName('emp_numempenho').AsInteger;
    DM.Localiza5.FieldByName('EMPRESA').AsString := empresa_origem;
    DM.Localiza5.FieldByName('DATAE').AsString := DM.QOrigem.FieldByName('datae').AsString;
    DM.Localiza5.FieldByName('produ').AsString := Tira_Char39(250, trim(DM.QOrigem.FieldByName('produ').AsString));
    DM.Localiza5.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('venci').AsString;
    DM.Localiza5.FieldByName('DTPAG').AsString := DM.QOrigem.FieldByName('dtpag').AsString;
    DM.Localiza5.FieldByName('COMP').AsString := 'N';
    DM.Localiza5.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vapag').ascurrency;
    DM.Localiza5.FieldByName('DESCO').AsFloat := 0.00;
    DM.Localiza5.FieldByName('CODIF').AsString := codif_destino;
    DM.Localiza5.FieldByName('ID_emp_numempenho').AsString := trim(DM.QOrigem.FieldByName('emp_numempenho').AsString);
    // DM.Localiza5.FieldByName('ID_NumTransf').AsString := trim(DM.QOrigem.FieldByName('NumTransf').AsString);
    DM.Localiza5.post;
    DM.Localiza5.ApplyUpdates(-1);
{$ENDREGION}
{$REGION ' Insere SUBORD '}
    // Criando SUBORD
    DM.Localiza4.append;
    DM.Localiza4.FieldByName('pkemp').AsInteger := pkemp_new;
    DM.Localiza4.FieldByName('ordpg').AsInteger := ordpg_new;
    DM.Localiza4.FieldByName('numsub').AsInteger := 1;
    DM.Localiza4.FieldByName('comp').AsString := 'N';
    DM.Localiza4.FieldByName('MODULO').AsString := 'REPASSE';
    DM.Localiza4.post;
    DM.Localiza4.ApplyUpdates(-1);
{$ENDREGION}
{$REGION ' Insere CHEQORD '}
    DM.Localiza6.append;
    inc(cheqord_new);
    DM.Localiza6.FieldByName('CONTA').AsString := Conta_Origem;
    DM.Localiza6.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.Localiza6.FieldByName('CONTA').AsString);

    DM.Localiza6.FieldByName('ORDPG').AsInteger := ordpg_new;
    DM.Localiza6.FieldByName('CHEQORD').AsInteger := cheqord_new;
    DM.Localiza6.FieldByName('MODULO').AsString := 'REPASSE';
    DM.Localiza6.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vapag').ascurrency;
    DM.Localiza6.FieldByName('COMP').AsString := 'N';
    DM.Localiza6.FieldByName('cheqn').AsString := cheque;
    // DM.Localiza6.FieldByName('tipodocfinan').AsString := Traz_TipoDocFinan(docfinan);
    DM.Localiza6.FieldByName('ID_emp_numempenho').AsString := trim(DM.QOrigem.FieldByName('emp_numempenho').AsString);
    // DM.Localiza6.FieldByName('ID_NumTransf').AsString := trim(DM.QOrigem.FieldByName('NumTransf').AsString);
    DM.Localiza6.post;
    DM.Localiza6.ApplyUpdates(0);
{$ENDREGION}
    DM.SQL.close;
    DM.SQL.Commandtext := 'UPDATE ORDPAG SET COMP = ''S'' WHERE ORDPG = ''' + inttostr(ordpg_new) + '''';
    DM.SQL.ExecSQL;
    DM.SQL.Commandtext := 'UPDATE despes SET transfentidade = ' + inttostr(transfentidade_new) + ' where pkemp = ' + inttostr(pkemp_new);
    DM.SQL.ExecSQL;

    DM.QOrigem.next;
    APPLICATION.ProcessMessages;
  end;
  STATUS.caption := 'REPASSE FINANCEIRO  OK';
  STATUS.update;
  memoStatus.Lines.Add('REPASSE FINANCEIRO  OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.RESERVA_ORCAMENTARIA;
VAR reserva: integer; anu_reserva: integer;
BEGIN
  SITU.caption := 'Reserva Orcamentaria....';
  SITU.update;
  Desliga_Triggers;
  CriaCampo('RESERVA', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('RESERVA', 'ID_NRNOTARESERVASALDO', '20');
  CriaCampo('RESERVA', 'ID_CDDESPESA', '20');

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'UPDATE RESERVA SET ANU_RESERVA = NULL';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RESERVA';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'select * from reserva';
  DM.QDESTINO.OPEN;

  DM.QOrigem.close;
  if ano.Value > 2011 then
    DM.QOrigem.Commandtext :=
      ' select r.cdunidadegestora, r.nrnotareservasaldo, r.cddespesa, r.nrprocessocompra, r.dtreservasaldo, r.vlreservasaldo, ' +
      ' r.vlbaixareserva, r.vlestornoreserva, v.cdaplicacao , coalesce(CAST(H.DSCOMPLHISTORICO AS VARCHAR(250)),''Reserva de Dotacao'') AS HISTORICO ' +
      ' from '+BNC_CPE+'.dbo.reservasaldo r ' +
      ' left join  '+BNC_CPE+'.dbo.codigoaplicacao v on (v.idcodigoaplicacao=r.cdaplicacao) ' +
      ' left JOIN  '+BNC_CPE+'.dbo.MOVIMENTO M ON (M.CDUNIDADEGESTORA=R.CDUNIDADEGESTORA AND M.CDDESPESA=R.CDDESPESA ' +
      '            AND M.DTMOVIMENTO=R.DTRESERVASALDO AND M.CDTIPOMOVIMENTO = 411 and m.nrnotareservasaldo=r.nrnotareservasaldo) ' +
      ' left JOIN  '+BNC_CPE+'.dbo.COMPLEMENTOHISTORICO H ON (M.NRCOMPLHISTORICO=H.NRCOMPLHISTORICO AND M.CDUNIDADEGESTORA=H.CDUNIDADEGESTORA) ' +
      ' order by r.cdunidadegestora,r.nrnotareservasaldo'
  else
    DM.QOrigem.Commandtext :=
    ' select r.cdunidadegestora, r.nrnotareservasaldo, r.cddespesa, r.nrprocessocompra, r.dtreservasaldo, r.vlreservasaldo, ' +
    ' r.vlbaixareserva, r.vlestornoreserva, v.cdaplicacao , coalesce(CAST(H.DSCOMPLHISTORICO AS VARCHAR(250)),''Reserva de Dotacao'') AS HISTORICO ' +
    ' from '+BNC_CPE+'.dbo.reservasaldo r ' +
    ' left join  '+BNC_CPE+'.dbo.codigoaplicacao v on (v.cdaplicacao=r.cdaplicacao) ' +
    ' left JOIN  '+BNC_CPE+'.dbo.MOVIMENTO M ON (M.CDUNIDADEGESTORA=R.CDUNIDADEGESTORA AND M.CDDESPESA=R.CDDESPESA ' +
    '            AND M.DTMOVIMENTO=R.DTRESERVASALDO AND M.CDTIPOMOVIMENTO = 411 and m.nrnotareservasaldo=r.nrnotareservasaldo) ' +
    ' left JOIN  '+BNC_CPE+'.dbo.COMPLEMENTOHISTORICO H ON (M.NRCOMPLHISTORICO=H.NRCOMPLHISTORICO AND M.CDUNIDADEGESTORA=H.CDUNIDADEGESTORA) ' +
    ' order by r.cdunidadegestora,r.nrnotareservasaldo'    ;
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;
  reserva := 0;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;

    if Traz_Ficha_DesDis_OR( dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cddespesa').AsString) <> '' then
    begin
      DM.QDESTINO.append;
      inc(reserva);
      dm.QDESTINO.FieldByName('id_cdunidadegestora').AsString := dm.QORIGEM.FieldByName('cdunidadegestora').AsString;
      dm.QDESTINO.FieldByName('id_nrnotareservasaldo').AsString := dm.QORIGEM.FieldByName('nrnotareservasaldo').AsString;
      dm.QDESTINO.FieldByName('reserva').Asinteger := reserva;
      dm.QDESTINO.FieldByName('ficha').AsString := Traz_Ficha_DesDis_OR( dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cddespesa').AsString);
      dm.QDESTINO.FieldByName('ID_CDDESPESA').AsString := dm.QORIGEM.FieldByName('cddespesa').AsString;
      dm.QDESTINO.FieldByName('proc').AsString := dm.QORIGEM.FieldByName('nrprocessocompra').AsString;
      dm.QDESTINO.FieldByName('historico').AsString := dm.QORIGEM.FieldByName('nrnotareservasaldo').AsString + ' - ' + dm.QORIGEM.FieldByName('historico').AsString;
      dm.QDESTINO.FieldByName('data').AsString := dm.QORIGEM.FieldByName('dtreservasaldo').AsString;
      dm.QDESTINO.FieldByName('valor').AsCurrency := dm.QORIGEM.FieldByName('vlreservasaldo').AsCurrency;
      IF copy(dm.QORIGEM.FieldByName('cdaplicacao').AsString, 2, 1) <> '' THEN
      BEGIN
        dm.QDESTINO.FieldByName('vingrupo').AsString := copy(dm.QORIGEM.FieldByName('cdaplicacao').AsString, 1, 3);
        dm.QDESTINO.FieldByName('vincodigo').AsString := copy(dm.QORIGEM.FieldByName('cdaplicacao').AsString, 5, 3)
      END
      ELSE
      BEGIN
        dm.QDESTINO.FieldByName('vingrupo').AsString := '110';
        dm.QDESTINO.FieldByName('vincodigo').AsString := '000'
      END;
      Existe_Vincodigo(DM.QDESTINO.FieldByName('vingrupo').AsString, DM.QDESTINO.FieldByName('vincodigo').AsString, '');
      dm.QDESTINO.Post;

      {$region ' Anulaçao de Reserva...' }
      IF dm.QORIGEM.FieldByName('vlestornoreserva').AsFloat > 0.00 THEN
      BEGIN
        dm.QDESTINO.APPEND;
        dm.QDESTINO.FieldByName('id_cdunidadegestora').AsString := dm.QORIGEM.FieldByName('cdunidadegestora').AsString;
        dm.QDESTINO.FieldByName('id_nrnotareservasaldo').AsString := dm.QORIGEM.FieldByName('nrnotareservasaldo').AsString;
        dm.QDESTINO.FieldByName('anu_reserva').Asinteger := reserva;
        inc(reserva);
        dm.QDESTINO.FieldByName('reserva').Asinteger := reserva;
        dm.QDESTINO.FieldByName('ficha').AsString := Traz_Ficha_DesDis_OR( dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cddespesa').AsString);
        dm.QDESTINO.FieldByName('ID_CDDESPESA').AsString := dm.QORIGEM.FieldByName('cddespesa').AsString;
        dm.QDESTINO.FieldByName('proc').AsString := dm.QORIGEM.FieldByName('nrprocessocompra').AsString;
        dm.QDESTINO.FieldByName('historico').AsString := 'ANULACAO - ' + dm.QORIGEM.FieldByName('historico').AsString;
        dm.QDESTINO.FieldByName('data').AsString := dm.QORIGEM.FieldByName('dtreservasaldo').AsString;
        dm.QDESTINO.FieldByName('TIPO_RESERVA').AsString := 'AN';
        dm.QDESTINO.FieldByName('VALOR').AsCurrency := dm.QORIGEM.FieldByName('vlestornoreserva').AsCurrency * (-1);
        IF copy(dm.QORIGEM.FieldByName('cdaplicacao').AsString, 2, 1) <> '' THEN
        BEGIN
          dm.QDESTINO.FieldByName('vingrupo').AsString := copy(dm.QORIGEM.FieldByName('cdaplicacao').AsString, 1, 3);
          dm.QDESTINO.FieldByName('vincodigo').AsString := copy(dm.QORIGEM.FieldByName('cdaplicacao').AsString, 5, 3)
        END
        ELSE
        BEGIN
          dm.QDESTINO.FieldByName('vingrupo').AsString := '110';
          dm.QDESTINO.FieldByName('vincodigo').AsString := '000'
        END;
        Existe_Vincodigo(DM.QDESTINO.FieldByName('vingrupo').AsString, DM.QDESTINO.FieldByName('vincodigo').AsString, '');
        dm.QDESTINO.Post;
      END;
      {$endregion}
    end
    else
      memoStatus.Lines.Add(' RESERVA - UG/Ficha não encontrada: ' + trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString) + '/' +
        trim(DM.QOrigem.FieldByName('cddespesa').AsString) );
    DM.QOrigem.next;
    APPLICATION.ProcessMessages;
  END;
  STATUS.caption := 'Salvando as Reserva Orçamentaria... ';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Reserva Orçamentaria OK';
  STATUS.update;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update cadcli set controle_reserva = ''S'' , DOTACAO_RESERVA = ''N'' ';
  DM.Atualiza.ExecSQL;
  memoStatus.Lines.Add('Reserva Orçamentaria OK');
  Desconecta_Conecta;

end;

PROCEDURE TTfrmprincipal_Conversao.SUBFUNCOES;
BEGIN
  SITU.caption := 'SUB FUNÇÕES...';
  SITU.update;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABSUBFUNCAO';
  DM.QDESTINO.OPEN;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select * from [' + BNC_CPC + '].dbo.PROGRAMA';
  DM.QOrigem.OPEN;
  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    IF DM.QDESTINO.Locate('SUBFUNCAO', FORMATCURR('000', DM.QOrigem.FieldByName('CDPROGRAMA').AsInteger), []) THEN
      DM.QDESTINO.edit
    ELSE
    BEGIN
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('SUBFUNCAO').AsString := FORMATCURR('000', DM.QOrigem.FieldByName('CDPROGRAMA').AsInteger);
    END;
    DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(60, DM.QOrigem.FieldByName('DSPROGRAMA').AsString);
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    DM.QOrigem.next;
  END;
  STATUS.caption := 'TABSUBFUNÇÃO - OK';
  memoStatus.Lines.Add('TABSUBFUNÇÃO - OK');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.SUPLEMENTACOES;
VAR I: integer;
BEGIN
  SITU.caption := 'SUPLEMENTAÇÕES...';
  SITU.update;
  CriaCampo('CADDECRETO', 'ID_cdunidadegestora', '20');
  CriaCampo('CADDECRETO', 'ID_NRFUNDAMENTOLEGAL', '20');
  CriaCampo('DESALD', 'ID_cdunidadegestora', '20');
  CriaCampo('DESALD', 'id_CDDESPESA', '20');
  CriaCampo('DESALD', 'ID_NRFUNDAMENTOLEGAL', '20');
  CriaCampo('DESALD', 'ID_IDFUNDAMENTOLEGAL', '20');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'UPDATE DESALD SET VALOR = 0';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM DESALD';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM CADDECRETO';
  DM.Atualiza.ExecSQL;


  DM.sqldestino.GetMetadata := true;
  DM.dspdestino.UpdateMode := upWhereKeyOnly;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM CADDECRETO';
  DM.QDESTINO.OPEN;
  DM.QDestino.IndexFieldNames := 'decreto';

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
    ' select distinct m.cdunidadegestora, m.nrfundamentolegal, m.dtmovimento '+
    ' ,(select top 1 z.nrcomplhistorico from ['+BNC_CPE+'].[dbo].movimento z where z.cdunidadegestora=m.cdunidadegestora and z.nrfundamentolegal=m.nrfundamentolegal ) as nrcomplhistorico '+
    ' from ['+BNC_CPE+'].[dbo].movimento m ' +
    ' where m.cdtipomovimento IN (402,403,405,406,409)  order by m.dtmovimento, m.nrfundamentolegal ';

  DM.QOrigem.OPEN;
  DM.QOrigem.first;

  DM.cdsOrigem.Close;
  DM.cdsOrigem.CommandText := 'select cdunidadegestora, nrcomplhistorico, cast(sUBSTRING(dsComplHistorico,1,255 ) as varchar(255)) as produ from '+BNC_CPE+'.dbo.COMPLEMENTOHISTORICO ';
  DM.cdsOrigem.open;
  dm.cdsOrigem.IndexFieldNames := 'cdunidadegestora; nrcomplhistorico';

  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    if DM.QDESTINO.FindKey([peganumero(DM.QOrigem.FieldByName('nrfundamentolegal').AsString)]) then
      DM.QDESTINO.edit
    else
      DM.QDESTINO.Append;

    DM.QDESTINO.FieldByName('DECRETO').AsString := peganumero(DM.QOrigem.FieldByName('nrfundamentolegal').AsString); // +trim(DM.QOrigem.FieldByName('cod_credito').AsString);
    DM.QDESTINO.FieldByName('id_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
    DM.QDESTINO.FieldByName('id_nrfundamentolegal').AsString := trim(DM.QOrigem.FieldByName('nrfundamentolegal').AsString);
    DM.QDESTINO.FieldByName('DTLAN').AsString := trim(DM.QOrigem.FieldByName('dtmovimento').AsString);
    if dm.cdsOrigem.FindKey([trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('nrcomplhistorico').AsString)]) then
      DM.QDESTINO.FieldByName('HISTORICO').AsString := trim(DM.cdsOrigem.FieldByName('produ').AsString)
    else
      DM.QDESTINO.FieldByName('HISTORICO').AsString := 'Alteração Orçamentaria - Decreto nº: ' + trim(DM.QOrigem.FieldByName('nrfundamentolegal').AsString) + ' de ' +
      trim(DM.QOrigem.FieldByName('dtmovimento').AsString);
    // DM.QDESTINO.FieldByName('HIST').AsString := Tira_Char39(4096,dm.QORIGEM.FieldByName('justificativa').AsString);
    // 'ALTERAÇÃO ORÇAMENTÁRIA - Decreto nº ' + trim(peganumero(dm.QORIGEM.FieldByName('decreto').AsString)) + ' de ' +
    // trim(dm.QORIGEM.FieldByName('data').AsString);
//    DM.QDESTINO.FieldByName('lei').AsString := PEGANUMERO(DM.QOrigem.FieldByName('nrfundamentolegal').AsString);
//    DM.QDESTINO.FieldByName('dtlei').AsString := trim(DM.QOrigem.FieldByName('dtmovimento').AsString);
    // dm.QDESTINO.FieldByName('valor').ascurrency := dm.QORIGEM.FieldByName('vlr_suplementado').ascurrency;
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    DM.QOrigem.next;
  END;
  memoStatus.Lines.Add('CadDecreto - OK');

  // SqlDialect_1;
  DM.sqldestino.GetMetadata := false;
  DM.dspdestino.UpdateMode := upWhereAll;

  DM.QDESTINO.close;
  DM.QDestino.IndexFieldNames := '';
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESALD';
  DM.QDESTINO.OPEN;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
        'SELECT A.CDUNIDADEGESTORA,A.CDDESPESA, A.NRFUNDAMENTOLEGAL, A.IDFUNDAMENTOLEGAL, SUM( A.VLMOVIMENTO) AS VLMOVIMENTO, A.CDTIPOMOVIMENTO, A.DTMOVIMENTO, CASE ' +
        'WHEN A.CDEMENTA IN (15,54,64) THEN 2 WHEN A.CDEMENTA IN (13,52,62) THEN 3 WHEN A.CDEMENTA IN (12,51,61) THEN 4 ' +
        'WHEN A.CDEMENTA IN (16,55,65,99) THEN 1 WHEN A.CDEMENTA IN (21) THEN 9 ELSE A.CDEMENTA END AS IE FROM ['+BNC_CPE+'].[DBO].MOVIMENTO A ' +
        '        WHERE A.CDTIPOMOVIMENTO IN (402,403,404) AND NOT EXISTS (SELECT Z.NRSEQUENCIASISTEMA FROM ['+BNC_CPE+'].[DBO].MOVIMENTO Z ' +
        '                      WHERE Z.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA ' +
        '                      AND Z.CDTIPOMOVIMENTO IN (406,404,408)) ' +
        'GROUP BY A.CDUNIDADEGESTORA,A.CDDESPESA, A.NRFUNDAMENTOLEGAL, A.IDFUNDAMENTOLEGAL,  A.CDTIPOMOVIMENTO, A.DTMOVIMENTO,  CASE ' +
        'WHEN A.CDEMENTA IN (15,54,64) THEN 2  WHEN A.CDEMENTA IN (13,52,62) THEN 3  WHEN A.CDEMENTA IN (12,51,61) THEN 4 ' +
        'WHEN A.CDEMENTA IN (16,55,65,99) THEN 1  WHEN A.CDEMENTA IN (21) THEN 9  ELSE A.CDEMENTA END ' +
        'UNION ALL ' +
        'SELECT A.CDUNIDADEGESTORA,A.CDDESPESA, A.NRFUNDAMENTOLEGAL, A.IDFUNDAMENTOLEGAL, SUM( A.VLMOVIMENTO)* -1 AS VLMOVIMENTO, A.CDTIPOMOVIMENTO, A.DTMOVIMENTO, CASE ' +
        'WHEN A.CDEMENTA IN (15,54,64) THEN 2 WHEN A.CDEMENTA IN (13,52,62) THEN 3 WHEN A.CDEMENTA IN (12,51,61) THEN 4 ' +
        'WHEN A.CDEMENTA IN (16,55,65,99) THEN 1 WHEN A.CDEMENTA IN (21) THEN 9 ELSE A.CDEMENTA END AS IE FROM ['+BNC_CPE+'].[DBO].MOVIMENTO A ' +
        '        WHERE A.CDTIPOMOVIMENTO IN (409) AND NOT EXISTS (SELECT Z.NRSEQUENCIASISTEMA FROM ['+BNC_CPE+'].[DBO].MOVIMENTO Z ' +
        '                      WHERE Z.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA  AND Z.CDTIPOMOVIMENTO IN (410)) ' +
        'GROUP BY A.CDUNIDADEGESTORA,A.CDDESPESA, A.NRFUNDAMENTOLEGAL, A.IDFUNDAMENTOLEGAL,  A.CDTIPOMOVIMENTO, A.DTMOVIMENTO,  CASE ' +
        'WHEN A.CDEMENTA IN (15,54,64) THEN 2  WHEN A.CDEMENTA IN (13,52,62) THEN 3  WHEN A.CDEMENTA IN (12,51,61) THEN 4 ' +
        'WHEN A.CDEMENTA IN (16,55,65,99) THEN 1  WHEN A.CDEMENTA IN (21) THEN 9  ELSE A.CDEMENTA END';
  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;

   dm.Localiza.CLOSE;
   dm.Localiza.Commandtext := 'SELECT * FROM DESDIS ';
   dm.Localiza.OPEN;
   dm.Localiza.IndexFieldNames := 'id_cdunidadegestora;id_cddespesa';
  I := 0;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    IF DM.Localiza.FindKey([trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('CDDESPESA').AsString)]) THEN
    BEGIN
      DM.QDESTINO.append;
      inc(I);
      DM.QDESTINO.FieldByName('NLANC').AsInteger := I;
      DM.QDESTINO.FieldByName('id_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
      DM.QDESTINO.FieldByName('id_CDDESPESA').AsString := trim(DM.QOrigem.FieldByName('CDDESPESA').AsString);
       dm.QDESTINO.FieldByName('id_NRFUNDAMENTOLEGAL').AsString := trim(dm.QORIGEM.fieldbyname('NRFUNDAMENTOLEGAL').AsString);
       dm.QDESTINO.FieldByName('id_IDFUNDAMENTOLEGAL').AsString := trim(dm.QORIGEM.fieldbyname('IDFUNDAMENTOLEGAL').AsString);
      DM.QDESTINO.FieldByName('FICHA').AsString := DM.Localiza.FieldByName('ficha').AsString;
      DM.QDESTINO.FieldByName('DTLAN').AsString := DM.QOrigem.FieldByName('DTMOVIMENTO').AsString;
      DM.QDESTINO.FieldByName('DECRETO').AsString := peganumero(DM.QOrigem.FieldByName('NRFUNDAMENTOLEGAL').AsString); // +trim(DM.QOrigem.FieldByName('cod_credito').AsString);
      DM.QDESTINO.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency;
      DM.QDESTINO.FieldByName('IE').AsInteger := DM.QOrigem.FieldByName('ie').AsInteger;
      DM.QDESTINO.post;
    END
    else
      memoStatus.Lines.Add(' Ficha Não encontrada : ' + trim(DM.QOrigem.FieldByName('ficha').AsString));
    DM.QOrigem.next;
  END;
  DM.QDESTINO.ApplyUpdates(-1);

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update desdis set altdo = (select coalesce(sum(cast(desald.valor as numeric (14,2))),0) from desald where desald.ficha = desdis.ficha)';
  DM.Atualiza.ExecSQL;
  STATUS.caption := 'DESALD OK';
  STATUS.update;
  memoStatus.Lines.Add('DESALD OK ');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Acerta_Gen_ID_Contas;
VAR Nempg_or, Nempg_ex, ORDPG: STRING; Numsub_new: integer;
BEGIN
  CriaCampo('DESSUB', 'ID_ANT', '1');
  DM.QAux2.close;
  DM.QAux2.Commandtext := 'select COALESCE(max(nempg),0) as nempg_or from despes where tpem <> ''EX'' ';
  DM.QAux2.OPEN;
  Nempg_or := DM.QAux2.FieldByName('nempg_or').AsString;

  DM.QAux2.close;
  DM.QAux2.Commandtext := 'select COALESCE(max(nempg),0)  as nempg_ex from despes where tpem = ''EX'' and ficha like ''9___'' ';
  DM.QAux2.OPEN;
  Nempg_ex := DM.QAux2.FieldByName('nempg_ex').AsString;

  DM.QAux2.close;
  DM.QAux2.Commandtext := 'select coalesce(max(ordpg),0) as ordpg from ordpag ';
  DM.QAux2.OPEN;
  ORDPG := DM.QAux2.FieldByName('ordpg').AsString;

  DM.Atualiza.close;
  // dm.ATUALIZA.Commandtext := 'update gen_id_contas set nempg = ' + Nempg_or + ' , ordpg = ' + ORDPG + ' , nempgex = ' + Nempg_ex + ' ,nempgre=0';
  // dm.ATUALIZA.ExecSQL;
  DM.Atualiza.Commandtext := 'insert into gen_id_contas (nempg, ordpg, nempgex,nempgre,ordpgpk) values (' + Nempg_or + ',' + ORDPG + ',' + Nempg_ex + ',0,'+ORDPG+')';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update tabempresa set nemp = ''F'' where nemp is null ';
  DM.Atualiza.ExecSQL;

  // cria as parcelas das liquidações
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext :=
    'insert into dessub (dessub.pkemp, dessub.numsub, dessub.parcela, dessub.datae, dessub.venci, dessub.produ, dessub.vadem, dessub.vapag, dessub.anula, ' +
    'dessub.desco, dessub.numliq, DESSUB.ID_ANT) ' + 'select A.PKEMP, ' + 'COALESCE((SELECT MAX(Y.NUMSUB) FROM DESSUB Y WHERE Y.PKEMP = A.PKEMP),0) + 1, ' +
    'COALESCE((SELECT MAX(Y.NUMSUB) FROM DESSUB Y WHERE Y.PKEMP = A.PKEMP),0) + 1, ' + 'A.DATAE, A.VENCI, A.PRODU, ' +
    '((cast(a.vadem as numeric(14,2)) - cast(a.anula as numeric(14,2)))- ' +
    'coalesce((select cast(sum(z.vadem) as numeric(14,2)) from dessub z where z.pkemp = a.pkemp and z.numliq = a.numsub),0)), 0, 0, 0, A.NUMSUB, ''X'' ' + 'from viewliq a ' +
    'where cast(a.vadem as numeric(14,2)) > 0 ' + 'and (cast(a.vadem as numeric(14,2)) - cast(a.anula as numeric(14,2)))- ' +
    'coalesce((select cast(sum(z.vadem) as numeric(14,2)) from dessub z where z.pkemp = a.pkemp and z.numliq = a.numsub),0) > 0';
  DM.QDESTINO.Execute;
  STATUS.caption := 'Parcelas criadas... ok ';
  STATUS.update;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := '  update despes d set ' +
    'd.uo_audesp = (select o.codaudesp from taborgao o where o.poder = substring(d.codlo_ant from 1 for 2) and o.orgao = substring(d.codlo_ant from 3 for 2)  ), ' +
    'd.ue_audesp = (select u.codaudesp from tabunidade u where u.poder = substring(d.codlo_ant from 1 for 2) and u.orgao = substring(d.codlo_ant from 3 for 2)  and u.unidade=substring(d.codlo_ant from 5 FOR 2)  ) '
    + 'where d.uo_audesp is null and d.ue_audesp is null and d.ficha like ''8___''';
  DM.Atualiza.ExecSQL;
  Atualiza_Generator;
end;

PROCEDURE TTfrmprincipal_Conversao.AGENCIA;
var agencia_: string;
banco_: String;
BEGIN
  SITU.caption := 'BANCOS...';
  SITU.update;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'delete from bancos';
  // /// /  dm.Atualiza.ExecSQL;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'SELECT cdbanco as banco, nmbanco as nome from ' + BNC_CPC + '.dbo.banco';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM bancos';
  DM.QDESTINO.OPEN;
  DM.QOrigem.first;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    banco_ := Copy(FORMATCURR('000', DM.QOrigem.FieldByName('banco').AsInteger),1,3);
//    IF NOT DM.QDESTINO.Locate('banco', Vararrayof([FORMATCURR('000', DM.QOrigem.FieldByName('banco').AsInteger)]), ([])) THEN
    IF NOT DM.QDESTINO.Locate('banco', Vararrayof([banco_]), ([])) THEN
    begin
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('banco').AsString := banco_;//FORMATCURR('000', DM.QOrigem.FieldByName('banco').AsInteger);
      DM.QDESTINO.FieldByName('sigla').AsString := Tira_Char39(40, trim(DM.QOrigem.FieldByName('nome').AsString));
      DM.QDESTINO.FieldByName('nome').AsString := Tira_Char39(40, trim(DM.QOrigem.FieldByName('nome').AsString));
      DM.QDESTINO.post;
    end;
    DM.QOrigem.next;
  END;
  try
    DM.QDESTINO.ApplyUpdates(-1);
  except

  end;
  STATUS.caption := 'Banco - OK';
  memoStatus.Lines.Add('Banco - OK');
  Desconecta_Conecta;

  SITU.caption := 'AGÊNCIA...';
  SITU.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select cdagencia as agencia, dgagencia, nmagencia as nomeagencia, cdbanco as banco from ' + BNC_CPC + '.dbo.agencia';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'select a.agencia, a.dvagencia, a.nomeagencia, a.endereco, a.bairro, a.cep, a.cidade, a.fone, a.banco, a.uf from agencia a';
  DM.QDESTINO.OPEN;
  DM.QOrigem.first;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    agencia_ := trim(DM.QOrigem.FieldByName('agencia').AsString);
    IF NOT DM.QDESTINO.Locate('AGENCIA', Vararrayof([agencia_]), ([])) THEN
    begin
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('AGENCIA').AsString := agencia_;
      DM.QDESTINO.FieldByName('dvAGENCIA').AsString := Nao_Vazio(DM.QOrigem.FieldByName('dgagencia').AsString);
      DM.QDESTINO.FieldByName('nomeagencia').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('nomeagencia').AsString);
      DM.QDESTINO.FieldByName('banco').AsString := FORMATCURR('000', DM.QOrigem.FieldByName('banco').AsInteger);
      // DM.QDESTINO.FieldByName('codcidade').AsString := DM.QOrigem.FieldByName('cod_municipio').AsString;
      DM.QDESTINO.post;
    end;
    DM.QOrigem.next;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Banco & Agência - OK';
  memoStatus.Lines.Add('Agencia - OK');
  Desconecta_Conecta;
END;

function TTfrmprincipal_Conversao.Arredonda(Valor: Double; Decimal: integer): Double;
VAR Arredondado: STRING;
BEGIN
  Arredondado := FloatToStrF(Valor, FfFixed, 18, Decimal);
  Result := Strtofloat(Arredondado);
end;

procedure TTfrmprincipal_Conversao.Atualiza_Generator;
var   temp, nempg_or,nempg_ex,ordpg: string;
begin
  {$region ' Atualiza GEN_ID_CONTAS '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'delete from GEN_ID_CONTAS';
  DM.atualiza.ExecSQL;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select COALESCE(max(nempg),0) as nempg_or from despes where tpem <> ''EX'' and extract(year from datae) = ' + ano.Text ;
  DM.atualiza.OPEN;
  nempg_or := DM.atualiza.FieldByName('nempg_or').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select COALESCE(max(nempg),0)  as nempg_ex from despes where tpem = ''EX'' and ficha like ''9___'' and extract(year from datae) = ' + ano.Text ;
  DM.atualiza.OPEN;
  nempg_ex := DM.atualiza.FieldByName('nempg_ex').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext :=  'select coalesce(max(ordpg),0) as ordpg from ordpag ';
  DM.atualiza.OPEN;
  ordpg := DM.atualiza.FieldByName('ordpg').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'insert into gen_id_contas (nempg, ordpg, nempgex,nempgre,ordpgpk) values (' + Nempg_or + ',' + ORDPG + ',' + Nempg_ex + ',0,'+ORDPG+')';
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza DESPES '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(pkemp),0) as pkemp from despes';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('pkemp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_despes to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza RECEIT '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(nlanc),0) as nlanc from receit';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('nlanc').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_receit to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza ORDCRE '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(ordcre),0) + 1 as ordcre from ordcre';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('ordcre').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_ordcre to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza CHEQORD '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(cheqord),0) as cheqord from cheqord';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('cheqord').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_cheqord to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza ORDPAG '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(ordpg),0) as ordpg from ordpag';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('ordpg').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_ordpag to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Transferencia '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max (ntransf),0) as ntransf from transferencia';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('ntransf').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator GEN_TRANSFERENCIA to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Convenio '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(convenio),0) as temp from cadconv';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_convenio to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Cadorc '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(id_cadorc),0) as temp from cadorc';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_cadorc to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza CPF_Contratos '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(codigo),0) as temp from cpfcontratos';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_cpfcontratos to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Desald '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(nlanc),0) as temp from desald';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_desald to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Dessub '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(pkemp),0) as temp from dessub';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_dessub to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza FCadPed '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(codfcadped),0) as temp from fcadped';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_fcadped to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Modelo_RTF '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(codigo),0) as temp from modelo_rtf';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_modelo_rtf to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Ordcai '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(reg),0) as temp from ordcai';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_ordcai to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Transfentidade '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(TRANSFENTIDADE),0) as temp from TRANSFENTIDADE';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_TRANSFENTIDADE to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza CadLic '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(NUMLIC),0) as temp from cadlic';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_cadlic to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza Cadlicitacao '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(NLICITACAO),0) as temp from CADLICITACAO';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_CADLICITACAO to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza CONTROLE_EXTRA '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(pkextra),0) as temp from CONTROLE_EXTRA';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_CONTROLE_EXTRA to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza DESALD_EXCECAO_JUST '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(codjust),0) as temp from DESALD_EXCECAO_JUST';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_DESALD_EXCECAO_JUST to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza DESFORCRC_PADRAO '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(codigo),0) as temp from DESFORCRC_PADRAO';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_DESFORCRC_PADRAO to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza DESHIS '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(histo),0) as temp from DESHIS';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_DESHIS to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza DESHISMOD '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(MODAL),0) as temp from DESHISMOD';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_DESHISMOD to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza HISPATCHAPA '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(ID),0) as temp from HISPATCHAPA';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_HISPATCHAPA to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza HPCOMPRAS '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(CODIGO),0) as temp from HPCOMPRAS';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_HPCOMPRAS to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza ORDCAIBANCO '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(NLANC),0) as temp from ORDCAIBANCO';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_ORDCAIBANCO to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza PCASP_LOG '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(SEQ),0) as temp from PCASP_LOG';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_PCASP_LOG to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza PORTARIA '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(CODIGO),0) as temp from PORTARIA';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_PORTARIA to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza RECALP '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(NLANC),0) as temp from RECALP';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_RECALP to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza RECEITGUIA '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(NRGUIA),0) as temp from RECEITGUIA';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_RECEITGUIA to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza TROCAOLEO '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(CODIGO),0) as temp from TROCAOLEO';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator gen_TROCAOLEO to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  {$region ' Atualiza VEICULO '}
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'select coalesce(max(SEQUENCIA),0) as temp from VEICULO';
  DM.atualiza.OPEN;
  temp := DM.atualiza.FieldByName('temp').asstring;
  DM.atualiza.close;
  DM.atualiza.Commandtext := 'set generator GEN_SEQVEICULO to ' + temp;
  DM.atualiza.ExecSQL;
  {$ENDREGION}
  memostatus.Lines.Add('  Generator acertados... ' );
end;

PROCEDURE TTfrmprincipal_Conversao.AUTORIZADOR_PERIODO;
VAR codper_new: integer;
BEGIN
  SITU.caption := 'AUTORIZADOR_PERIODO...';
  SITU.update;
  CriaCampo('ORDENPER', 'ID_ENT_CODIGO', '20');
  CriaCampo('ORDENPER', 'ID_CODIGO', '20');
  CriaCampo('ORDENPER', 'ID_ORG_CODIGO', '20');
  CriaCampo('ORDENPER', 'ID_ASS_RG', '20');
  CriaCampo('ORDENPER', 'ID_ASS_NOMECONJUGUE', '100');
  CriaCampo('ORDENPER', 'ID_ASS_CPFCONJUGUE', '20');
  CriaCampo('ORDENPER', 'ID_ASS_NOMEPAI', '100');
  CriaCampo('ORDENPER', 'ID_ASS_NOMEMAE', '100');
  CriaCampo('ORDENPER', 'ID_ASS_CONTRATO_ARH', '100');
  CriaCampo('ORDENPER', 'ID_ASS_NMCONTRATO_ARH', '100');
  CriaCampo('ORDENPER', 'ID_ASS_CPF', '20');

  DM.Localiza.close;
  DM.Localiza.Commandtext := 'select max(coalesce(codper,0)) as codper_new from ordenper';
  DM.Localiza.OPEN;
  codper_new := DM.Localiza.FieldByName('codper_new').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'select * from ordenper';
  DM.QDESTINO.OPEN;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select c.ent_codigo, c.codigo, c.nome, c.cargo, c.ass_dtinicioexercicio,c.dt_inicial, c.dt_final, c.datamod, ' +
    'c.org_codigo, c.exe_ano, c.ass_rg, c.ass_nomeconjugue, c.ass_cpfconjugue, c.ass_nomepai, c.ass_nomemae, ' +
    'c.ass_endereco, c.ass_complemento, c.ass_bairro, c.ass_cep, c.ass_fone, c.ass_celular, c.ass_email, ' + 'c.ass_contrato_arh, c.ass_nmcontrato_arh,  c.ass_cpf ' +
    'from con_assinaturas c where c.exe_ano =  ' + inttostr(ano.Value) + ' ' + 'order by c.ent_codigo, c.org_codigo, c.datamod';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    IF NOT DM.QDESTINO.Locate('ID_ENT_CODIGO;ID_CODIGO', Vararrayof([DM.QOrigem.FieldByName('ENT_CODIGO').AsString, DM.QOrigem.FieldByName('CODIGO').AsString]), []) THEN
    BEGIN
      inc(codper_new);
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('codper').AsInteger := codper_new;
      DM.QDESTINO.FieldByName('ID_ENT_CODIGO').AsString := DM.QOrigem.FieldByName('ENT_CODIGO').AsString;
      DM.QDESTINO.FieldByName('ID_CODIGO').AsString := DM.QOrigem.FieldByName('CODIGO').AsString;
    END
    ELSE
      DM.QDESTINO.edit;
    DM.QDESTINO.FieldByName('dataport').AsString := DM.QOrigem.FieldByName('ass_dtinicioexercicio').AsString;
    DM.QDESTINO.FieldByName('perinici').AsString := DM.QOrigem.FieldByName('dt_inicial').AsString;
    DM.QDESTINO.FieldByName('perfinal').AsString := DM.QOrigem.FieldByName('dt_final').AsString;
    DM.QDESTINO.FieldByName('autorizador_nome').AsString := DM.QOrigem.FieldByName('nome').AsString;
    DM.QDESTINO.FieldByName('autorizador_cargo').AsString := DM.QOrigem.FieldByName('cargo').AsString;
    DM.QDESTINO.FieldByName('cpf').AsString := FormataCNPJ_CPF(DM.QOrigem.FieldByName('ass_cpf').AsString);
    DM.QDESTINO.FieldByName('empresa').AsString := DM.QOrigem.FieldByName('ENT_CODIGO').AsString;
    DM.QDESTINO.FieldByName('ID_ORG_CODIGO').AsString := DM.QOrigem.FieldByName('ORG_CODIGO').AsString;
    DM.QDESTINO.FieldByName('ID_ASS_RG').AsString := DM.QOrigem.FieldByName('ASS_RG').AsString;
    DM.QDESTINO.FieldByName('ID_ASS_NOMECONJUGUE').AsString := DM.QOrigem.FieldByName('ASS_NOMECONJUGUE').AsString;
    DM.QDESTINO.FieldByName('ID_ASS_CPFCONJUGUE').AsString := DM.QOrigem.FieldByName('ASS_CPFCONJUGUE').AsString;
    DM.QDESTINO.FieldByName('ID_ASS_NOMEPAI').AsString := DM.QOrigem.FieldByName('ASS_NOMEPAI').AsString;
    DM.QDESTINO.FieldByName('ID_ASS_NOMEMAE').AsString := DM.QOrigem.FieldByName('ASS_NOMEMAE').AsString;
    DM.QDESTINO.FieldByName('ID_ASS_CONTRATO_ARH').AsString := DM.QOrigem.FieldByName('ASS_CONTRATO_ARH').AsString;
    DM.QDESTINO.FieldByName('ID_ASS_NMCONTRATO_ARH').AsString := DM.QOrigem.FieldByName('ASS_NMCONTRATO_ARH').AsString;
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);

    APPLICATION.ProcessMessages;
    DM.QOrigem.next;
  END;
  STATUS.caption := 'AUTORIZADOR_PERIODO - OK';
  STATUS.update;
  memoStatus.Lines.Add('AUTORIZADOR_PERIODO - OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.btlocalizadestinoClick(Sender: TObject);
BEGIN
  oflocaliza.InitialDir := 'C:\SCPI_8\Cidades\';
  IF oflocaliza.Execute THEN
    edtdestino.text := oflocaliza.FileName;
END;

procedure TTfrmprincipal_Conversao.btlocalizaorigemClick(Sender: TObject);
begin
  oflocaliza.InitialDir := 'C:\SCPI_8\Cidades\';
  IF oflocaliza.Execute THEN
    edtorigem.text := oflocaliza.FileName;
end;

PROCEDURE TTfrmprincipal_Conversao.btncancelClick(Sender: TObject);
BEGIN
  parar := true;
END;

PROCEDURE TTfrmprincipal_Conversao.btnconverteClick(Sender: TObject);
VAR I: integer;
BEGIN
  if rdprefeitura.ItemIndex = -1 then
  begin
    Showmessage('Selecione se a base é de prefeitura ou não');
    rdprefeitura.SetFocus;
  end;
  if rdprefeitura.ItemIndex = 0 then
  begin
    Eh_Prefeitura := true
  end
  else
    Eh_Prefeitura := false;

  BNC_PPA := EDT_PPA.text;
  BNC_CPC := edt_cpc.text;
  BNC_CPE := edt_cpe.text;

  memoStatus.Lines.Add('INICIO DA CONVERSAO - ' + DateToStr(now) + ' - ' + TimeToStr(now));
  Timer1.Enabled := true;
  tempoinicio := now;
  Desconecta_Conecta;
  btnsair.Enabled := false;
  btnconverte.Enabled := false;
  chk.Enabled := false;
  pbt.Position := 1;
  // pbt.Max := Itens_selecionados(chk.Items.count);
  pbt.Max := chk.Items.count;
  I := 0;
  WHILE I < pbt.Max DO
  BEGIN
    IF ((chk.Checked[I]) AND (chk.Items[I] = 'DESLIGA_TRIGGERS')) THEN
      Desliga_Triggers
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'ZERA_GENERATORS')) THEN
      ZERA_GENERATORS
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'LIMPATABELAS')) THEN
      LIMPATABELAS
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'CADCLI')) THEN
      CADCLI
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'ENTIDADES')) THEN
      Entidades
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'FUNDO_ESPECIAL')) THEN
      FUNDO_ESPECIAL
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_AUTORIZADOR_PERIODO')) THEN
      AUTORIZADOR_PERIODO
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'CENTRO_CUSTO')) THEN
      Centro_Custo
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'CODIGO_APLICACAO')) THEN
      CODIGO_APLICACAO
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'FONTERECURSO')) THEN
      FONTERECURSO
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'PODER_ORGAO_UNIDADE')) THEN
      PODER_ORGAO_UNIDADE
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'FORNECEDORES')) THEN
      FORNECEDORES
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_CADLICITACAO')) THEN
      CADLICITACAO
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Contratos')) THEN
      Contratos
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'CONVENIOS')) THEN
      CONVENIOS
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'AGENCIA')) THEN
      AGENCIA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'CONTA_BANCARIA')) THEN
      CONTA_BANCARIA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'FUNCOES')) THEN
      FUNCOES
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'SUBFUNCOES')) THEN
      SUBFUNCOES
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'PROGRAMAS')) THEN
      PROGRAMAS
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'PROJETO_ATIVIDADE')) THEN
      PROJETO_ATIVIDADE

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'ORCAMENTO_DESPESA')) THEN
      ORCAMENTO_DESPESA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'FICHA_DESPESA')) THEN
      FICHA_DESPESA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'ORCAMENTO_RECEITA')) THEN
      ORCAMENTO_RECEITA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'FICHA_RECEITA')) THEN
      FICHA_RECEITA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'SUPLEMENTACOES')) THEN
      SUPLEMENTACOES

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'LEI_PPA')) THEN
      LEI_PPA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'PROGRAMAS_METAS_PPA')) THEN
      PROGRAMAS_METAS_PPA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'ACOES_PPA')) THEN
      ACOES_PPA

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'RESERVA_ORCAMENTARIA')) THEN
      RESERVA_ORCAMENTARIA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'EMPENHOS_ORCAMENTARIOS')) THEN
      EMPENHOS_ORCAMENTARIOS
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'EMPENHOS_ANULACAO')) THEN
      EMPENHOS_ANULACAO
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'LIQUIDACAO')) THEN
      LIQUIDACAO
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Cria_Fichas_Extras')) THEN
      Cria_Fichas_Extras
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_Tipo_Doc_Financeiro')) THEN
      Tipo_Doc_Financeiro
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Pagamento_Orcamentario_com_Retencao')) THEN
      Pagamento_Orcamentario_com_Retencao
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Estorno_Orcamentario_com_Retencao')) THEN
      Estorno_Orcamentario_com_Retencao

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'RECEITAS_ORCAMENTARIAS')) THEN
      RECEITAS_ORCAMENTARIAS
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'RECEITAS_EXTRA')) THEN
      RECEITAS_EXTRAS

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'EMPENHOS_EXTRA')) THEN
      EMPENHOS_EXTRA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'EMPENHOS_EXTRA_AN')) THEN
      EMPENHOS_EXTRA_AN
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_LIQUIDACAO_EXTRA')) THEN
      LIQUIDACAO_EXTRA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'PAGAMENTOS_EXTRA')) THEN
      PAGAMENTOS_EXTRA
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_ESTORNO_EXTRA')) THEN
      ESTORNO_EXTRA

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Empenhos_Restos_PROC_NPROC')) THEN
      Empenhos_Restos_PROC_NPROC
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_Empenhos_Restos_PROC_NPROC_AUDESP')) THEN
    /// CARREGADA O XML 14
      Empenhos_Restos_PROC_NPROC_AUDESP
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Liquidacao_Restos_NPROC')) THEN
      Liquidacao_Restos_NPROC

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Pagamentos_Restos_Proc_e_NProc_com_Retencao')) THEN
      Pagamentos_Restos_Proc_e_NProc_com_Retencao
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Estorno_Restos_Proc_e_NProc_com_Retencao')) THEN
      Estorno_Restos_Proc_e_NProc_com_Retencao
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Devolucao_Adiantamento_Restos')) THEN
      Devolucao_Adiantamento_Restos

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Transferencia_Entre_Contas')) THEN
      Transferencia_Entre_Contas
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_Marreta_Extrato_Bancario')) THEN
      Marreta_Extrato_Bancario
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = '_REPASSE_FINANCEIRO')) THEN
      REPASSE_FINANCEIRO
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Transferencia_de_Extra_para_Orcamentaria')) THEN
      Transferencia_de_Extra_para_Orcamentaria
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Prestacao_Adiantamento')) THEN
      Prestacao_Adiantamento
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Conciliacao_Bancaria')) THEN
      Conciliacao_Bancaria
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Acerta_Receita_Classificar')) THEN    // 947 - receita classificar engessado
      Acerta_Receita_Classificar
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Transf_de_Extra_para_Extra')) THEN    // 947 - receita classificar engessado
      Transf_de_Extra_para_Extra

    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'LIGA_TRIGGERS')) THEN
      LIGA_TRIGGERS
    ELSE IF ((chk.Checked[I]) AND (chk.Items[I] = 'Acerta_Gen_ID_Contas')) THEN
      Acerta_Gen_ID_Contas;


    APPLICATION.ProcessMessages;
    inc(I);
    pbt.Position := I;

    IF parar THEN
      break;
  END;

//  Atualiza_Generator;
//  Acerta_Desdobro_Catanduva;
//  Acerta_Fongrupo_Restos;
//  Anula_Reserva_de_EMP_AN;
//  Acerta_Codre_Ficha;


  Timer1.Enabled := false;
  memoStatus.Lines.Add('FIM DA CONVERSAO - ' + ' Tempo : ' + DateToStr(now) + ' - ' + TimeToStr(now));
  btnsair.Enabled := true;
  btnsair.SetFocus;
END;

PROCEDURE TTfrmprincipal_Conversao.btnsairClick(Sender: TObject);
BEGIN
  close;
END;

procedure TTfrmprincipal_Conversao.btn_novaconexaoClick(Sender: TObject);
var Ini: TIniFile; CAMINHO: WIDESTRING;
begin
  DM.Conexao_Origem.close;
  if EditConnectionString(DM.Conexao_Origem) then
    try
      CAMINHO := DM.Conexao_Origem.ConnectionString;
      DM.Conexao_Origem.ConnectionString := CAMINHO;
      DM.Conexao_Origem.OPEN
    except
      on E: Exception do
      begin
        Showmessage(E.Message);
        abort;
      end;
    end;

  if CAMINHO <> '' then
  begin
    Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
    Ini.WriteString('CONEXAO', 'Caminho_Origem', CAMINHO);
    Ini.Free;
    cb_origem.Text := caminho;
//    // LISTA_BANCO;
//    try
//      DM.cdsListaBco.close;
//      DM.cdsListaBco.Commandtext := 'Select NAME From sys.databases';
//      DM.cdsListaBco.OPEN;
//      if not DM.cdsListaBco.IsEmpty then
//      begin
//        DM.cdsListaBco.first;
//        while NOT DM.cdsListaBco.eof do
//        BEGIN
//          CB_ORIGEM.Items.Add(DM.cdsListaBco.FieldByName('NAME').AsString);
//          DM.cdsListaBco.next;
//        END;
//      end;
//    except
//
//    end;

  end;

end;

PROCEDURE TTfrmprincipal_Conversao.CADCLI;
VAR Cgc: STRING;
BEGIN
  DM.Localiza.close;
  DM.Localiza.Commandtext := 'select * FROM DESFOR WHERE CODIF = 0';
  DM.Localiza.OPEN;
  IF DM.Localiza.IsEmpty THEN
  BEGIN
    DM.Atualiza.close;
    DM.Atualiza.SQL.text := 'insert into desfor (codif, nome, codtip) values (0, ''SEM FORNECEDOR - ACERTAR MANUALMENTE'', ''03'')';
    DM.Atualiza.ExecSQL;
  END;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'UPDATE CADCLI SET CGC = ''01704233/0001-38''';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM IMPRESSAO';
  DM.Atualiza.ExecSQL;
  SITU.caption := 'DADOS DA ENTIDADE...';
  SITU.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'SELECT * from '+BNC_CPC+'.dbo.parametros';
  DM.QOrigem.OPEN;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM CADCLI';
  DM.QDESTINO.OPEN;
  IF NOT DM.QDESTINO.IsEmpty THEN
  BEGIN
    DM.QDESTINO.edit;
    DM.QDESTINO.FieldByName('CLNT1').AsString := Tira_Char39(80, DM.QOrigem.FieldByName('NMPREFEITURA').AsString);
    DM.QDESTINO.FieldByName('CLNT2').AsString := Tira_Char39(80, DM.QOrigem.FieldByName('NMPREFEITURA').AsString);
    DM.QDESTINO.FieldByName('mexer').AsInteger := ano.Value;
    DM.QDESTINO.FieldByName('ENDERE').AsString := Tira_Char39(200, DM.QOrigem.FieldByName('DSENDERECOPREFEITURA').AsString);
    DM.QDESTINO.FieldByName('CID').AsString := Tira_Char39(30, DM.QOrigem.FieldByName('NMCIDADEPREFEITURA').AsString);
    DM.QDESTINO.FieldByName('ESTADO').AsString := Tira_Char39(200, DM.QOrigem.FieldByName('nmestadoprefeitura').AsString);
    DM.QDESTINO.FieldByName('EST').AsString := Tira_Char39(2, DM.QOrigem.FieldByName('SGUFPREFEITURA').AsString);
    // DM.QDESTINO.FieldByName('cep').AsString := formata_CEP(DM.QOrigem.FieldByName('cep').AsString);
    Cgc := PEGANUMERO(DM.QOrigem.FieldByName('NRCGCPREFEITURA').AsString);
    WHILE (Length(Cgc) < 14) DO
      Cgc := '0' + Cgc;
    DM.QDESTINO.FieldByName('CGC').AsString := copy(Cgc, 1, 8) + '/' + copy(Cgc, 9, 4) + '-' + copy(Cgc, 13, 2);
    DM.QDESTINO.FieldByName('ORCAMENTO').AsString := '';
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
  END;
  memoStatus.Lines.Add('Cadcli OK');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.CADLICITACAO;
var I, nlicitacao_new, ano_ant: integer;
begin
  // CriaCampo('CADLICITACAO', 'id_red_gestora', '20');
  CriaCampo('CADLICITACAO', 'id_num_modalidade', '20');
  CriaCampo('CADLICITACAO', 'id_ANO_modalidade', '20');
  SITU.caption := 'LICITAÇÃO AVULSA ...';
  SITU.update;
  I := 0;
  nlicitacao_new := 0;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select l.moddesp_exercicio as ano, l.moddesp_tipo as modalidade, l.moddesp_dataini as inicio, l.moddesp_datafinal as fim, ' +
    'l.moddesp_nummod as num_modalidade, o.objlicit_descr as objeto, ' +
    'case when (((upper(o.objlicit_descr) like ''%OBRA%'') or (upper(o.objlicit_descr) like ''%CONSTRUC%'') ' +
    '        or (upper(o.objlicit_descr) like ''%CONSTRUÇ%'')) and upper(o.objlicit_descr) not like ''%FROTA%'' ' +
    '        and upper(o.objlicit_descr) not like ''%VE_CULO%'') THEN ''S'' ELSE ''N'' end as obra ' + ' from modalidadedesp_cont l ' +
    'inner join objetivolicitacao_cont o on (o.objlicit_cod=l.moddesp_objetivolicitacao) ' + ' order by 1,5';
  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  p.Max := DM.QOrigem.RecordCount;
  p.Position := DM.QOrigem.RecNo;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  if not DM.QOrigem.IsEmpty then
  begin
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'delete from cadlicitacao';
    DM.Atualiza.ExecSQL;
    DM.QDESTINO.close;
    DM.QDESTINO.Commandtext := 'select * from cadlicitacao';
    DM.QDESTINO.OPEN;
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'ALTER SEQUENCE GEN_CADLICITACAO RESTART WITH 0 ';
    DM.Atualiza.ExecSQL;
    ano_ant := 0;
    while not DM.QOrigem.eof do
    begin
      p.Position := DM.QOrigem.RecNo;
      EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
      EM.update;
      if ano_ant <> DM.QOrigem.FieldByName('ano').AsInteger then
        I := 0;
      inc(I);
      inc(nlicitacao_new);
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('empresa').AsString := Ent_padrao.text; // DM.QOrigem.FieldByName('red_gestora').AsInteger;
      DM.QDESTINO.FieldByName('proclic').AsString := FORMATCURR('000000', I) + '/' + copy(DM.QOrigem.FieldByName('ano').AsString, 3, 2);
      DM.QDESTINO.FieldByName('obs').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('objeto').AsString);
      // DM.QDESTINO.FieldByName('id_red_gestora').AsString := trim(DM.QOrigem.FieldByName('objeto').AsString);
      DM.QDESTINO.FieldByName('id_num_modalidade').AsString := trim(DM.QOrigem.FieldByName('num_modalidade').AsString);
      DM.QDESTINO.FieldByName('id_ano_modalidade').AsString := trim(DM.QOrigem.FieldByName('ano').AsString);
      DM.QDESTINO.FieldByName('licitacao').AsString := trim(DM.QOrigem.FieldByName('num_modalidade').AsString);
      DM.QDESTINO.FieldByName('nlicitacao').AsInteger := nlicitacao_new;
      if DM.QOrigem.FieldByName('obra').AsString = 'S' then
      begin
        if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 2 then // copy(DM.QOrigem.FieldByName('MODALIDADE').AsString, 1, 1) = 'C' then // obra convite
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'CCO5'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 7 then // copy(DM.QOrigem.FieldByName('MODALIDADE').AsString, 1, 1) = 'P' then // PREGÃO PRESENCIAL
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'PP01'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 3 then // copy(DM.QOrigem.FieldByName('MODALIDADE').AsString, 1, 1) = 'T' then // OBRA TOMADA
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'TOM6'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 4 then
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'CON7'
      end // if DM.QORIGEM.fieldbyname('obra').AsString = 'S' then
      else
      begin
        if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 2 then // copy(DM.QOrigem.FieldByName('MODALIDADE').AsString, 1, 1) = 'C' then // MAT / SERV - CONVITE
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'CCO2'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 7 then // copy(DM.QOrigem.FieldByName('MODALIDADE').AsString, 1, 1) = 'P' then // PREGÃO PRESENCIAL
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'PP01'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 3 then // copy(DM.QOrigem.FieldByName('MODALIDADE').AsString, 1, 1) = 'T' then // MAT / SERV - TOMADA
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'TOM3'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 4 then
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'CON4'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 6 then
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'IN01'
        else if DM.QOrigem.FieldByName('MODALIDADE').AsInteger = 8 then
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'PE01'
        ELSE
          DM.QDESTINO.FieldByName('MODLIC').AsString := 'DI01'
      end; // else do if DM.QORIGEM.fieldbyname('obra').AsString = 'S' then

      ano_ant := DM.QOrigem.FieldByName('ano').AsInteger;
      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
      DM.QOrigem.next;
      APPLICATION.ProcessMessages;
    end; // while not DM.QORIGEM.Eof do
  end // if not DM.QORIGEM.IsEmpty then
  else
  begin
    EM.caption := inttostr(p.Max) + ' de ' + inttostr(p.Max);
    EM.update;
  end; // else do if not DM.QORIGEM.IsEmpty then
  memoStatus.Lines.Add('CADLICITACAO OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.EMPENHOS_EXTRA;
var pkemp_new: integer;
  Historico: string;
  ficha_ex: string;
  filtro: string;
begin
  CriaCampo('DESPES', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'MODULO', '20');
  CriaCampo('DESSUB', 'MODULO', '20');
  CriaCampo('SUBORD', 'MODULO', '20');
  CriaCampo('CHEQORD', 'MODULO', '20');
  CriaCampo('ORDPAG', 'MODULO', '20');
  CriaCampo('DESPES', 'ID_IDTRANSFERENCIAFINANCEIRAFR', '20');
  // CriaCampo('DESPES', 'ID_NumSeq', '20');

  SITU.caption := 'EMPENHOS EXTRAS...';
  SITU.update;
{$REGION ' Limpa Tabela.'}
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'UPDATE ORDPAG SET COMP= ''N'' WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM SUBORD WHERE COMP= ''N'' AND MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM ORDPAG WHERE COMP= ''N'' AND MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM CHEQORD WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM DESSUB WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM VIEWLIQ WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM DESPES WHERE MODULO in(''EMPENHO_EX'',''PAGAMENTOS_EXTRA'')  ';
  DM.Atualiza.ExecSQL;
{$ENDREGION}
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESPES where pkemp = -1';
  DM.QDESTINO.OPEN;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' WHERE A.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
    'SELECT * FROM ['+BNC_CPE+'].[DBO].EMPENHOEXTRA A ' +
    'INNER JOIN ['+BNC_CPE+'].[DBO].VALORESEMPENHOEXTRA B ON A.NREMPENHO = B.NREMPENHO AND  A.DTANOEMISSAO = B.DTANOEMISSAO AND A.CDUNIDADEGESTORA = B.CDUNIDADEGESTORA ' +
    'INNER JOIN ['+BNC_CPC+'].DBO.CONTACONTABIL C ON C.CDCONTACONTABIL = A.CDCONTACONTABIL ' +FILTRO+
    'ORDER BY A.CDUNIDADEGESTORA, A.DTANOEMISSAO, A.NREMPENHO';
  DM.QOrigem.OPEN;
  dm.ATUALIZAORIGEM.close;
  dm.ATUALIZAORIGEM.Commandtext := 'SELECT cast (SUBSTRing (dsitem , 1 , 1024 )as varchar(1024) ) as dsitem, * FROM ['+bnc_cpe+'].[dbo].ITENSEMPENHO WHERE IDEMPENHO=2 ';
  dm.ATUALIZAORIGEM.open;

  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    ficha_ex := Traz_Ficha_DESDIS_EX(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), trim(DM.QOrigem.FieldByName('CDCONTACONTABIL').AsString));
    if trim(ficha_ex)<>'' then
    begin
    DM.QDESTINO.append;
    inc(pkemp_new);
    DM.QDESTINO.FieldByName('pkemp').AsInteger := pkemp_new;
    DM.QDESTINO.FieldByName('NEMPG').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
    DM.QDESTINO.FieldByName('modulo').AsString := 'EMPENHO_EX';
    DM.QDESTINO.FieldByName('id_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
    DM.QDESTINO.FieldByName('id_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
    DM.QDESTINO.FieldByName('id_cddespesa').AsString := trim(DM.QOrigem.FieldByName('cdcontacontabil').AsString);
    DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
    DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);

    if Ano.Value > 2012 then
    dm.QDESTINO.FieldByName('ID_IDTRANSFERENCIAFINANCEIRAFR').AsString := trim(dm.QORIGEM.FieldByName('IDTRANSFERENCIAFINANCEIRAFR').AsString);
//    DM.QDESTINO.FieldByName('ID_emp_numficha').AsString := trim(DM.QOrigem.FieldByName('emp_numficha').AsString);
    DM.QDESTINO.FieldByName('FICHA').AsString := ficha_ex;
    DM.QDESTINO.FieldByName('TPEM').AsString := 'EX';
    DM.QDESTINO.FieldByName('proc').AsString := trim(DM.QOrigem.FieldByName('nrprocessocompra').AsString);
    DM.QDESTINO.FieldByName('DATAE').AsString := validata(DM.QOrigem.FieldByName('dtemissaoempenho').AsString);
    DM.QDESTINO.FieldByName('codif').AsString := Traz_Codif(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), trim(DM.QOrigem.FieldByName('cdfornecedor').AsString));
    DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
    DM.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
    dm.ATUALIZAORIGEM.FiLTERED := False;
    dm.ATUALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString + ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA')
      .AsString + ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString + ' and nrsequenciasubempenho = 0  and nrsequenciamovimento = 0 ';
    dm.ATUALIZAORIGEM.FiLTERED := True;
    if dm.ATUALIZAORIGEM.IsEmpty then
    begin
      dm.ATUALIZAORIGEM.FiLTERED := False;
      dm.ATUALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString + ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA')
        .AsString + ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString;
      dm.ATUALIZAORIGEM.FiLTERED := True;
    end;
    dm.ATUALIZAORIGEM.first;
    Historico := ' ';
    WHILE NOT dm.ATUALIZAORIGEM.eof DO
    BEGIN
      Historico := Historico + ' Qte: ' + dm.ATUALIZAORIGEM.FieldByName('qtItem').AsString + ' ; Unid: ' + dm.ATUALIZAORIGEM.FieldByName('unItem').AsString + ' ;   ' +
        Stringreplace(dm.ATUALIZAORIGEM.FieldByName('dsitem').AsString, chr(39), ' ', [RfReplaceAll]) + ' ;  Vlr Unit: ' +
        currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency) + ' ;  Vlr Total do Item : ' +
        currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency * dm.ATUALIZAORIGEM.FieldByName('qtItem').AsFloat) + #13;
      dm.ATUALIZAORIGEM.Next;
    END;
    dm.QDESTINO.FieldByName('PRODU').AsString := Historico;
    DM.QDESTINO.FieldByName('vadem').ascurrency := DM.QOrigem.FieldByName('vlempenhado').ascurrency;
    DM.QDESTINO.FieldByName('SUBEM').AsString := '0';
    DM.QDESTINO.FieldByName('DESCO').ascurrency := 0.00;
    DM.QDESTINO.FieldByName('VAPAG').ascurrency := 0.00;
    DM.QDESTINO.FieldByName('ANULA').ascurrency := 0.00;
    DM.QDESTINO.FieldByName('SUBEMPENHADO').ascurrency := 0.00;
    DM.QDESTINO.FieldByName('LICIT').AsString := 'DISPENSA';
    dm.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
    dm.QDESTINO.FieldByName('EVCODIGO').AsString := '998';
    dm.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
    dm.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
    Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');
    DM.QDESTINO.post;
    end
    else
      memostatus.Lines.Add('  Não encontrou ficha EX/UG : ' + trim(DM.QOrigem.FieldByName('CDCONTACONTABIL').AsString)+'/'+trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString));
    DM.QOrigem.next;
    APPLICATION.ProcessMessages;
  end;
  STATUS.caption := 'Salvando Empenhos Extras....';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Empenhos Extras OK';
  STATUS.update;
  memoStatus.Lines.Add('Empenho Extra OK ');
  Desconecta_Conecta;
end;
procedure TTfrmprincipal_Conversao.EMPENHOS_EXTRA_AN;
var pkemp_new: integer;
  Historico: string;
  ficha_ex: string;
  filtro: string;
begin
  CriaCampo('DESPES', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'MODULO', '20');
  CriaCampo('DESSUB', 'MODULO', '20');
  CriaCampo('SUBORD', 'MODULO', '20');
  CriaCampo('CHEQORD', 'MODULO', '20');
  CriaCampo('ORDPAG', 'MODULO', '20');
  CriaCampo('DESPES', 'ID_IDTRANSFERENCIAFINANCEIRAFR', '20');
  // CriaCampo('DESPES', 'ID_NumSeq', '20');

  SITU.caption := 'EMPENHOS EXTRAS ANULAÇÃO...';
  SITU.update;
{$REGION ' Limpa Tabela.'}
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'DELETE FROM DESPES WHERE MODULO = ''EMPENHO_EX_AN''  ';
  DM.Atualiza.ExecSQL;
{$ENDREGION}
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESPES where pkemp = -1';
  DM.QDESTINO.OPEN;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND M.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
  'select cast(substring(h.dscomplhistorico,1,125)as varchar(125)) as produ, ' +
  'm.* ' +
  'from '+bnc_cpe+'.dbo.movimento m ' +
  'left join '+bnc_cpe+'.dbo.complementohistorico h on (h.cdunidadegestora= m.cdunidadegestora and h.nrcomplhistorico = m.nrcomplhistorico) ' +
  'where m.dtanoemissao = '+ano.Text+' and m.cdtipomovimento = 451'
  +filtro;

  DM.QOrigem.OPEN;
  dm.ATUALIZAORIGEM.close;
  dm.ATUALIZAORIGEM.Commandtext := 'SELECT cast (SUBSTRing (dsitem , 1 , 1024 )as varchar(1024) ) as dsitem, * FROM [' + bnc_cpe +
        '].[dbo].ITENSEMPENHO WHERE IDEMPENHO=2 ';
  dm.ATUALIZAORIGEM.open;

  dm.Localiza.Close;
  dm.Localiza.CommandText := 'select * from despes where modulo = ''EMPENHO_EX'' ';
  dm.Localiza.Open;
  dm.Localiza.IndexFieldNames := 'id_cdunidadegestora;id_dtanoemissao;id_nrempenho;id_cdfornecedor;id_cddespesa';

  dm.Localiza1.Close;
  dm.Localiza1.CommandText := 'select * from viewliq where modulo = ''PAGAMENTOS_EXTRA'' ';
  dm.Localiza1.Open;

  dm.Localiza3.Close;
  dm.Localiza3.CommandText := 'select * from viewliq where pkemp = -1 ';
  dm.Localiza3.Open;

  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    if dm.Localiza.FindKey([trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), trim(DM.QOrigem.FieldByName('dtanoemissao').AsString),
        trim(DM.QOrigem.FieldByName('nrempenho').AsString), trim(DM.QOrigem.FieldByName('cdfornecedor').AsString),
        trim(DM.QOrigem.FieldByName('cdcontacontabil').AsString) ]) then
    begin
      DM.QDESTINO.append;
      inc(pkemp_new);
      DM.QDESTINO.FieldByName('pkemp').AsInteger := pkemp_new;
      DM.QDESTINO.FieldByName('pkempa').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
      DM.QDESTINO.FieldByName('NEMPG').AsString := DM.Localiza.FieldByName('NEMPG').AsString;
      DM.QDESTINO.FieldByName('modulo').AsString := 'EMPENHO_EX_AN';
      DM.QDESTINO.FieldByName('id_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('id_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
      DM.QDESTINO.FieldByName('id_cddespesa').AsString := trim(DM.QOrigem.FieldByName('cdcontacontabil').AsString);
      DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
      DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
//      dm.QDESTINO.FieldByName('ID_IDTRANSFERENCIAFINANCEIRAFR').AsString := trim(dm.QORIGEM.FieldByName('IDTRANSFERENCIAFINANCEIRAFR').AsString);
  //    DM.QDESTINO.FieldByName('ID_emp_numficha').AsString := trim(DM.QOrigem.FieldByName('emp_numficha').AsString);
      DM.QDESTINO.FieldByName('FICHA').AsString := DM.Localiza.FieldByName('ficha').AsString;
      DM.QDESTINO.FieldByName('TPEM').AsString := 'AN';
      DM.QDESTINO.FieldByName('proc').AsString := DM.Localiza.FieldByName('PROC').AsString;
      DM.QDESTINO.FieldByName('DATAE').AsString := validata(DM.QOrigem.FieldByName('dtmovimento').AsString);
      DM.QDESTINO.FieldByName('codif').AsString := Traz_Codif(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), trim(DM.QOrigem.FieldByName('cdfornecedor').AsString));
      DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
      DM.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
      dm.ATUALIZAORIGEM.FiLTERED := False;
      dm.ATUALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString + ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA')
        .AsString + ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString +
        ' and nrsequenciasubempenho = 0  and nrsequenciamovimento =  '+ DM.QOrigem.FieldByName('nrsequencia').AsString;
      dm.ATUALIZAORIGEM.FiLTERED := True;
      if dm.ATUALIZAORIGEM.IsEmpty then
      begin
        dm.ATUALIZAORIGEM.FiLTERED := False;
        dm.ATUALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString + ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA')
          .AsString + ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString;
        dm.ATUALIZAORIGEM.FiLTERED := True;
      end;
      dm.ATUALIZAORIGEM.first;
      Historico := ' ';
      WHILE NOT dm.ATUALIZAORIGEM.eof DO
      BEGIN
        Historico := Historico + ' Qte: ' + dm.ATUALIZAORIGEM.FieldByName('qtItem').AsString + ' ; Unid: ' + dm.ATUALIZAORIGEM.FieldByName('unItem').AsString + ' ;   ' +
          Stringreplace(dm.ATUALIZAORIGEM.FieldByName('dsitem').AsString, chr(39), ' ', [RfReplaceAll]) + ' ;  Vlr Unit: ' +
          currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency*-1) + ' ;  Vlr Total do Item : ' +
          currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency * dm.ATUALIZAORIGEM.FieldByName('qtItem').AsFloat*-1) + #13;
        dm.ATUALIZAORIGEM.Next;
      END;
      dm.QDESTINO.FieldByName('PRODU').AsString := Historico;
      DM.QDESTINO.FieldByName('vadem').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency*-1;
      DM.QDESTINO.FieldByName('SUBEM').AsString := '0';
      DM.QDESTINO.FieldByName('DESCO').ascurrency := 0.00;
      DM.QDESTINO.FieldByName('VAPAG').ascurrency := 0.00;
      DM.QDESTINO.FieldByName('ANULA').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency*-1;
      DM.QDESTINO.FieldByName('SUBEMPENHADO').ascurrency := 0.00;
      DM.QDESTINO.FieldByName('LICIT').AsString := 'DISPENSA';
      dm.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
      dm.QDESTINO.FieldByName('EVCODIGO').AsString := '998';
      dm.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
      dm.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
      Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');
      DM.QDESTINO.post;

//      dm.cdsTemp1.Close;
//      dm.cdsTemp1.CommandText :=
//      dm.Localiza1.Filtered := false;
//      dm.Localiza1.Filter := ' ';
//      dm.Localiza1.Filtered := true;
//      if not dm.Localiza1.IsEmpty then
//      begin
//
//      end;
    end
    else
      memostatus.Lines.Add('  Não encontrou ficha EX/UG : ' + trim(DM.QOrigem.FieldByName('CDCONTACONTABIL').AsString)+'/'+trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString));
    DM.QOrigem.next;
    APPLICATION.ProcessMessages;
  end;
  STATUS.caption := 'Salvando Empenhos Extras AN....';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Empenhos Extras AN OK';
  STATUS.update;
  memoStatus.Lines.Add('Empenho Extra AN OK ');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Acerta_Codre_Ficha;
var nv4: string;   nv5: string;   nv6: string;  nv7: string;  nv8: string;   CODRE: string;
begin
  SITU.caption := 'Acerta CODRE das fichas...';
  SITU.update;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext := ' SELECT r.[cdUnidadeGestora] ,r.[cdReceita] ,r.[cdCategoriaNivel1] ,r.[cdCategoriaNivel2] ,r.[cdCategoriaNivel3] ' +
    '      ,r.[cdCategoriaNivel4] ,r.[cdCategoriaNivel5] ,r.[cdCategoriaNivel6] ,r.[cdCategoriaNivel7] ,r.[cdCategoriaNivel8] ' +
    '      , dr.dsDetalhadaNaturezaReceita ,dsNaturezaReceita ' +
    '  FROM [' + BNC_CPE + '].[dbo].[RECEITA] r ' +
    '  inner join ' + BNC_CPE + '.dbo.dataview_receita dr on (dr.cdUnidadeGestora=r.cdUnidadeGestora and dr.cdReceita=r.cdReceita  and dr.cdAplicacao=r.cdAplicacao ) ' +
    '  order by 1,2';
  DM.QOrigem.OPEN;

  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

  dm.Localiza1.Close;
  dm.Localiza1.CommandText := 'select * from recorc where id_cdunidadegestora is not null and id_cdreceita is not null ';
  dm.Localiza1.open;
  dm.Localiza1.IndexFieldNames := 'id_cdunidadegestora; id_cdreceita';
  dm.Localiza2.Close;
  dm.Localiza2.CommandText := 'select * from recdis where id_cdunidadegestora is not null and id_cdreceita is not null ';
  dm.Localiza2.open;
  dm.Localiza2.IndexFieldNames := 'id_cdunidadegestora; id_cdreceita';
  dm.QAux.close;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    nv4 := trim(DM.QOrigem.FieldByName('cdCategoriaNivel1').AsString) + trim(DM.QOrigem.FieldByName('cdCategoriaNivel2').AsString) +
      trim(DM.QOrigem.FieldByName('cdCategoriaNivel3').AsString) + trim(DM.QOrigem.FieldByName('cdCategoriaNivel4').AsString);
    nv5 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel5').AsInteger);
    nv6 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel6').AsInteger);
    nv7 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel7').AsInteger);
    nv8 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel8').AsInteger);
    CODRE := nv4 + nv5 + nv6 + nv7 + nv8;
    CODRE := Formata_CODRE(CODRE);
    CODRE := Existe_RECTAB(CODRE, DM.QOrigem.FieldByName('dsNaturezaReceita').AsString,DM.QOrigem.FieldByName('dsDetalhadaNaturezaReceita').AsString);
    if dm.Localiza1.FindKey([trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('cdreceita').AsString)]) then
    begin
      dm.QAux.CommandText := ' update recorc set codre = ''' + CODRE + '''  where ficha = ' + dm.Localiza1.FieldByName('ficha').AsString;
      dm.QAux.Execute;
    end;
    if dm.Localiza2.FindKey([trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('cdreceita').AsString)]) then
    begin
      dm.QAux.CommandText := ' update recdis set codre = ''' + CODRE + '''  where ficha = ' + dm.Localiza2.FieldByName('ficha').AsString;
      dm.QAux.Execute;
    end;
    DM.QOrigem.next;
  END;
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Acerta_Receita_Classificar;
var
  contacaixa: string;
  ficha_extra: string;
begin
  SITU.Caption := 'Acerta_Receita_Classificar...';
  SITU.Update;
//  CriaCampo('RECEIT', 'ID_NRSEQUENCIASISTEMA_TRANSF', '20');
//  CriaCampo('RECEIT', 'ID_NRSEQUENCIA_TRANSF', '20');
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := ' delete from receit where modulo LIKE ''CLASSIF%'' ';
  dm.ATUALIZA.ExecSQL;
  dm.ATUALIZA.Commandtext := ' delete from ordcre where modulo LIKE ''CLASSIF%'' ';
  dm.ATUALIZA.ExecSQL;
  Atualiza_Generator;
  dm.QORIGEM.CLOSE;
  dm.QORIGEM.Commandtext :=
    ' select b.nrsequenciasistema, b.dtmovimento, b.nrsequencia, b.cdunidadegestora, b.cdcontacontabil, b.cddespesa, b.cdreceita, b.dtanoemissao, ' +
    ' b.nrempenho, b.idempenho, b.cdfornecedor, b.cdcontrapartida, b.cdtipomovimento  , c.cdnivelcontabil, c.dscontacontabil, b.vlmovimento, ' +
    ' b.cdhistoricopadrao, b.nrcomplhistorico, b.nrdocumentopagto, b.cdaplicacao, b.cdfonterecurso , ' +
    ' (SELECT TOP 1 cast(A.DSCOMPLHISTORICO as varchar(128)) FROM ' + BNC_CPE + '.DBO.COMPLEMENTOHISTORICO  A WHERE A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA)DSCOMPLHISTORICO ' +
    ' from  ' + BNC_CPE + '.DBO.movimento B ' +
    ' inner join  ' + BNC_CPC + '.dbo.contacontabil c on c.cdcontacontabil= b.cdcontacontabil and c.cdnivelcontabil not like ''111%'' ' +
    ' where b.cdcontacontabil = 947 and b.nrempenho = ''000000'' and b.cdtipomovimento = 464 ' +
    ' order by 2,3';
  dm.QORIGEM.OPEN;

  dm.AuxOrigem.CLOSE;
  dm.AuxOrigem.Commandtext :=
    ' select nrsequenciasistema, b.dtmovimento, b.nrsequencia, b.cdunidadegestora, b.cdcontacontabil, b.cddespesa, b.cdreceita, b.dtanoemissao, ' +
    ' b.nrempenho, b.idempenho, b.cdfornecedor, b.cdcontrapartida, b.cdtipomovimento  , c.cdnivelcontabil, c.dscontacontabil, b.vlmovimento, ' +
    ' b.cdhistoricopadrao, b.nrcomplhistorico, b.nrdocumentopagto, b.cdaplicacao, b.cdfonterecurso , ' +
    ' (SELECT TOP 1 cast(A.DSCOMPLHISTORICO as varchar(128)) FROM ' + BNC_CPE + '.DBO.COMPLEMENTOHISTORICO  A WHERE A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA)DSCOMPLHISTORICO ' +
    ' from  ' + BNC_CPE + '.DBO.movimento B ' +
    ' inner join  ' + BNC_CPC + '.dbo.contacontabil c on c.cdcontacontabil= b.cdcontacontabil and c.cdnivelcontabil not like ''111%'' ' +
    ' where b.cdcontrapartida = 947 and b.nrempenho = ''000000'' and b.cdtipomovimento = 465 ' +
    ' order by 2,3';
  dm.AuxOrigem.OPEN;
  dm.AuxOrigem.indexfieldnames := 'nrsequenciasistema';

  P.Max := dm.QORIGEM.RecordCount;
  dm.CdsOrigem.CLOSE;
  dm.CdsOrigem.Commandtext :=
    'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' +
    'from [' + BNC_CPE + '].DBO.movimento a ' + 'inner join ' + BNC_CPC + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
    'where a.cdtipomovimento IN (464,465) ' + 'and b.cdnivelcontabil like ''111%'' ';
  dm.CdsOrigem.OPEN;
  dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select * from receit where modulo = ''RECEITA_EX'' ';  
  dm.Localiza.OPEN;
  dm.Localiza.IndexFieldNames := 'id_nrsequencia';
  
  dm.Localiza5.CLOSE;
  dm.Localiza5.Commandtext := 'select * from receit where nlanc = -1';
  dm.Localiza5.OPEN;
  dm.QORIGEM.first;
  contacaixa := Traz_Conta_Caixa(dm.QORIGEM.FieldByName('CDUNIDADEGESTORA').AsString);
  while not dm.QORIGEM.eof do
  begin
    P.Position := dm.QORIGEM.RecNo;
    EM.Caption := inttostr(dm.QORIGEM.RecNo) + ' de ' + inttostr(dm.QORIGEM.RecordCount);
    EM.Update;
    if not dm.Localiza.FindKey([trim(dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString)]) then
    begin
      ficha_extra := Traz_Ficha_RecDis_EX(dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cdcontacontabil').AsString);
      dm.Localiza5.APPEND;
      dm.Localiza5.FieldByName('nlanc').Asinteger := 0;
      dm.Localiza5.FieldByName('dtlan').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      dm.Localiza5.FieldByName('dtrec').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      dm.Localiza5.FieldByName('ficha').AsString := ficha_extra;
      dm.Localiza5.FieldByName('conta').AsString := contacaixa;
      dm.Localiza5.FieldByName('contaD').AsString := Traz_Conta_DesconD(contacaixa) ;
      dm.Localiza5.FieldByName('modulo').AsString := 'CLASSIF';
      dm.Localiza5.FieldByName('ID_NRSEQUENCIA').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
      dm.Localiza5.FieldByName('ID_NRSEQUENCIA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
      dm.Localiza5.FieldByName('ID_NRSEQUENCIASISTEMA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIASISTEMA').AsString;
      IF trim(dm.QORIGEM.FieldByName('nrdocumentopagto').AsString) <> '0' THEN
        dm.Localiza5.FieldByName('cheque').AsString := dm.QORIGEM.FieldByName('nrdocumentopagto').AsString;
      dm.Localiza5.FieldByName('varec').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency * -1;
      if dm.QORIGEM.FieldByName('cdreceita').asinteger > 0 then
        dm.Localiza5.FieldByName('histo').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString + '    Arrecadação de Receita : ' + dm.QORIGEM.FieldByName('cdreceita').AsString + '  ' +
            dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString
      else
        dm.Localiza5.FieldByName('histo').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString + '    Lançamento a Debito : ' + dm.QORIGEM.FieldByName('cdcontrapartida').AsString + '  ' +
          dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString;

      if dm.localiza5.FieldByName('VAREC').AsCurrency < 0.00 then
      begin
        if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequenciasistema').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
        else
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
      end;
      dm.Localiza5.Post;
      if dm.QORIGEM.FieldByName('cdreceita').asinteger = 0 then
      begin
        if dm.AuxOrigem.FindKey([dm.QORIGEM.FieldByName('NRSEQUENCIASISTEMA').AsString]) then
        begin
          ficha_extra := Traz_Ficha_RecDis_EX(dm.AuxOrigem.FieldByName('cdunidadegestora').AsString,dm.AuxOrigem.FieldByName('cdcontacontabil').AsString);
          if ficha_extra <> '' then
          begin
            dm.Localiza5.APPEND;
            dm.Localiza5.FieldByName('nlanc').Asinteger := 0;
            dm.Localiza5.FieldByName('dtlan').AsString := dm.AuxOrigem.FieldByName('dtmovimento').AsString;
            dm.Localiza5.FieldByName('dtrec').AsString := dm.AuxOrigem.FieldByName('dtmovimento').AsString;
            dm.Localiza5.FieldByName('ficha').AsString := ficha_extra;
            dm.Localiza5.FieldByName('conta').AsString := contacaixa;
            dm.Localiza5.FieldByName('contaD').AsString := Traz_Conta_DesconD(contacaixa) ;
            dm.Localiza5.FieldByName('modulo').AsString := 'CLASSIF';
            dm.Localiza5.FieldByName('ID_NRSEQUENCIA').AsString := dm.AuxOrigem.FieldByName('NRSEQUENCIA').AsString;
            dm.Localiza5.FieldByName('ID_NRSEQUENCIA_TRANSF').AsString := dm.AuxOrigem.FieldByName('NRSEQUENCIA').AsString;
            dm.Localiza5.FieldByName('ID_NRSEQUENCIASISTEMA_TRANSF').AsString := dm.AuxOrigem.FieldByName('NRSEQUENCIASISTEMA').AsString;
            IF trim(dm.AuxOrigem.FieldByName('nrdocumentopagto').AsString) <> '0' THEN
              dm.Localiza5.FieldByName('cheque').AsString := dm.AuxOrigem.FieldByName('nrdocumentopagto').AsString;
            dm.Localiza5.FieldByName('varec').AsCurrency := dm.AuxOrigem.FieldByName('vlmovimento').AsCurrency;
            dm.Localiza5.FieldByName('histo').AsString := dm.AuxOrigem.FieldByName('NRSEQUENCIA').AsString + '    Lançamento a Credito : ' + dm.AuxOrigem.FieldByName('cdcontacontabil').AsString + '  ' +
                dm.AuxOrigem.FieldByName('DSCOMPLHISTORICO').AsString;
            if dm.localiza5.FieldByName('VAREC').AsCurrency > 0.00 then
            begin
              if not dm.CdsOrigem.FindKey([dm.AuxOrigem.FieldByName('nrsequenciasistema').AsString, dm.AuxOrigem.FieldByName('cdunidadegestora').AsString, '465']) then
                dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
              else
                dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                  FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
            end;
            dm.Localiza5.Post;
          end;
        end;
      end;
    end;    
    dm.QOrigem.Next;
  end;
  STATUS.Caption := ' Salvando acerto de Receita a classificara..... ';
  STATUS.Update;
  dm.Localiza5.ApplyUpdates(-1);
  STATUS.Caption := ' Acerto de Receita a classificar - OK ';
  STATUS.Update;
  Desconecta_Conecta;
  memostatus.lines.add(' Acerto de Receita a classificar - OK ');
  Ordens_Credito_Classificar;
end;

procedure TTfrmprincipal_Conversao.Acerta_Desdobro_Catanduva;
begin
  SITU.caption := 'Acerta desdobro dos empenhos OR...';
  SITU.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select m.nrnotareservasaldo, D.CDAPLICACAO AS VINGRUPO, * ' + ' from [' + BNC_CPE + '].[dbo].empenho a ' + ' inner join [' + BNC_CPE + '].[dbo].valoresempenho b on a.nrempenho=b.nrempenho and  a.dtanoemissao=b.dtanoemissao and a.cdunidadegestora=b.cdunidadegestora and a.cddespesa>0 ' + ' left join [' + BNC_CPE + '].[dbo].despesasecundaria c on c.cddespesasecundaria=a.cddespesasecundaria ' + ' LEFT JOIN ' + BNC_CPE + '.DBO.CODIGOAPLICACAO D ON D.IDCODIGOAPLICACAO = A.CDAPLICACAO ' + ' left join [' + BNC_CPE + '].[dbo].movimento m on (m.cdunidadegestora=a.cdunidadegestora and m.cddespesa=a.cddespesa ' + '       and m.cdtipomovimento in (430,431,432) and a.nrempenho=m.nrempenho and a.dtemissaoempenho=m.dtmovimento) ' + ' WHERE b.nrsequenciasubempenho=0  ' + ' order by a.nrempenho';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  em.Caption := '0  de '+ inttostr(p.Max);
  update;
  DM.QOrigem.first;
  dm.localiza.Close;
  dm.localiza.CommandText := 'select * from despes where modulo = ''EMP_OR'' and desdobro = ''00'' ';
  dm.localiza.Open;
  dm.localiza.IndexFieldNames := 'id_cdunidadegestora;id_nrempenho;id_cddespesa';
  dm.QAux.Close;
  while not dm.QOrigem.Eof do
  begin
    p.Position := dm.QOrigem.RecNo;
    em.Caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    update;
    if dm.localiza.FindKey([trim(dm.QOrigem.FieldByName('cdunidadegestora').AsString),trim(dm.QOrigem.FieldByName('nrempenho').AsString),trim(dm.QOrigem.FieldByName('cddespesa').AsString)]) then
    begin
      Existe_TabCatec(DM.localiza.FieldByName('CATEGORIA').AsString + DM.localiza.FieldByName('GRUPO').AsString + DM.localiza.FieldByName('MODALIDADE').AsString +
          DM.localiza.FieldByName('ELEMENTO').AsString + FormatCurr('00',dm.QOrigem.FieldByName('cdcategorianivel5').AsInteger), 'Acertar Manualmente...');
      dm.QAux.CommandText := 'update despes set desdobro = ''' + FormatCurr('00',dm.QOrigem.FieldByName('cdcategorianivel5').AsInteger) + ''' where pkemp = ' + dm.localiza.FieldByName('pkemp').AsString;
      dm.QAux.Execute;
      if dm.localiza.FieldByName('pkempa').AsString <> '' then
      begin
        dm.QAux.CommandText := 'update despes set desdobro = ''' + FormatCurr('00',dm.QOrigem.FieldByName('cdcategorianivel5').AsInteger) + ''' where pkemp = ' + dm.localiza.FieldByName('pkempa').AsString;
        dm.QAux.Execute;
      end;
    end;
    dm.QOrigem.Next;
  end;
  memoStatus.Lines.Add('  Desdobro de empenho OK ');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Anula_Reserva_de_EMP_AN;
begin
  Desliga_Triggers;
  SITU.caption := 'Anula reserva de empenho anulado...';
  SITU.update;
  CriaCampo('reserva','modulo','20');
  DM.localiza.close;
  DM.localiza.Commandtext := 'select * from despes where reserva is not null and vadem < 0.00 ';
  DM.localiza.OPEN;

  DM.localiza6.close;
  DM.localiza6.Commandtext := 'select * from reserva where reserva = -1 ';
  DM.localiza6.OPEN;

  dm.QAux.Close;
  dm.QAux.CommandText := 'update reserva set valor = 0 where modulo = ''EMP_OR_AN'' ';
  dm.QAux.Execute;
  dm.QAux.CommandText := 'delete from reserva where modulo = ''EMP_OR_AN'' ';
  dm.QAux.Execute;

  p.Max := DM.localiza.RecordCount;
  em.Caption := '0  de '+ inttostr(p.Max);
  update;
  DM.localiza.first;
  while not dm.localiza.eof do
  begin
    p.Position := dm.Localiza.RecNo;
    em.Caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    update;
    dm.Localiza6.APPEND;
    dm.Localiza6.FieldByName('MODULO').AsString := 'EMP_OR_AN';
    dm.Localiza6.FieldByName('anu_reserva').Asinteger := dm.Localiza.FieldByName('reserva').Asinteger;
    dm.Localiza6.FieldByName('reserva').Asinteger := 0;
    dm.Localiza6.FieldByName('ficha').Asinteger := dm.Localiza.FieldByName('ficha').Asinteger;
    dm.Localiza6.FieldByName('proc').AsString := dm.Localiza.FieldByName('proc').AsString;
    dm.Localiza6.FieldByName('historico').AsString := 'Anulação ref Emp: ' + dm.localiza.FieldByName('NEMPG').AsString + '/' + dm.localiza.FieldByName('TPEM').AsString + ' - ' + dm.Localiza.FieldByName('produ').AsString;
    dm.Localiza6.FieldByName('data').AsString := dm.Localiza.FieldByName('datae').AsString;
    dm.Localiza6.FieldByName('TIPO_RESERVA').AsString := 'AN';
    dm.Localiza6.FieldByName('VALOR').AsCurrency := dm.Localiza.FieldByName('vadem').AsCurrency;
    dm.Localiza6.FieldByName('vingrupo').AsString := dm.Localiza.FieldByName('vingrupo').AsString;
    dm.Localiza6.FieldByName('vincodigo').AsString := dm.Localiza.FieldByName('vincodigo').AsString;
    dm.Localiza6.Post;
    dm.Localiza6.ApplyUpdates(-1);
    dm.localiza.next;
  end;
  memoStatus.Lines.Add('  Anula reserva de empenho anulado  OK ');
  LIGA_TRIGGERS;
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Acerta_Fongrupo_Restos;
begin
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select C.CDAPLICACAO AS VINGRUPO,A.CDFONTERECURSO AS FONGRUPO,* ' + ' from [' + BNC_CPE + '].[dbo].empenho a ' + 'inner join [' + BNC_CPE + '].[dbo].valoresempenho b on a.nrempenho=b.nrempenho and  a.dtanoemissao=b.dtanoemissao and a.cdunidadegestora=b.cdunidadegestora ' + 'LEFT JOIN ' + BNC_CPE + '.DBO.CODIGOAPLICACAO C ON C.IDCODIGOAPLICACAO = A.CDAPLICACAO ' + 'where a.dtanoemissao < ' + Ano.text + ' and b.dtanoemissao < ' + Ano.text + ' ' + ' and b.nrsequenciaSubempenho=0  AND VLEMPENHADO <> 0.00  ' + 'order by a.cdunidadegestora,a.dtanoemissao,a.nrempenho ';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  DM.QOrigem.first;
  dm.localiza.Close;
  dm.localiza.CommandText := 'select * from despes where ano_resto is not null and frg is null';
  dm.localiza.Open;
  dm.localiza.IndexFieldNames := 'id_cdunidadegestora;id_nrempenho;id_dtanoemissao;id_cdfornecedor';
  dm.QAux.Close;
  while not dm.QOrigem.Eof do
  begin
    p.Position := dm.QOrigem.RecNo;
    em.Caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    update;
    if dm.localiza.FindKey([trim(dm.QOrigem.FieldByName('cdunidadegestora').AsString),trim(dm.QOrigem.FieldByName('nrempenho').AsString),trim(dm.QOrigem.FieldByName('dtanoemissao').AsString),trim(dm.QOrigem.FieldByName('cdfornecedor').AsString)]) then
    begin
      dm.QAux.CommandText := 'update despes set frg = ''' + Existe_FonGrupo(FormatCurr('00',dm.QOrigem.FieldByName('CDFONTERECURSO').AsInteger),'???') + ''' where pkemp = ' + dm.localiza.FieldByName('pkemp').AsString;
      dm.QAux.Execute;
      if dm.localiza.FieldByName('pkempa').AsString <> '' then
      begin
        dm.QAux.CommandText := 'update despes set frg = ''' + Existe_FonGrupo(FormatCurr('00',dm.QOrigem.FieldByName('CDFONTERECURSO').AsInteger),'???') + ''' where pkemp = ' + dm.localiza.FieldByName('pkempa').AsString;
        dm.QAux.Execute;
      end;
    end;
    dm.QOrigem.Next;
  end;
  memoStatus.Lines.Add('  FonGrupo de Restos -  OK ');
  Desconecta_Conecta;
end;




procedure TTfrmprincipal_Conversao.LIQUIDACAO_EXTRA;
var NUMLIQ: integer; emp_ant: integer; produ: string; documento: string; notafiscal: string; item_ant: integer;
begin
  CriaCampo('DESPES', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'MODULO', '20');
  CriaCampo('DESSUB', 'MODULO', '20');
  CriaCampo('SUBORD', 'MODULO', '20');
  CriaCampo('CHEQORD', 'MODULO', '20');
  CriaCampo('ORDPAG', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'id_emp_numempenho', '20');
  CriaCampo('VIEWLIQ', 'id_emp_numdigito', '20');
  CriaCampo('VIEWLIQ', 'id_emp_exercicio', '20');
  CriaCampo('VIEWLIQ', 'ID_emp_tipo', '20');
  CriaCampo('VIEWLIQ', 'ID_tipoficha', '20');
  CriaCampo('VIEWLIQ', 'ID_emp_numficha', '20');
  // CriaCampo('DESPES', 'ID_NumSeq', '20');

  SITU.caption := 'LIQUIDAÇÃO EXTRAS...';
  SITU.update;
{$REGION ' Limpa Tabela.'}
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'UPDATE ORDPAG SET COMP= ''N'' WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM SUBORD WHERE COMP= ''N'' AND MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM ORDPAG WHERE COMP= ''N'' AND MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM CHEQORD WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM DESSUB WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'UPDATE VIEWLIQ SET NUMSUBA = NULL WHERE MODULO in (''LIQ_EX'',''LIQ_EX_AN'',''PAGAMENTOS_EXTRA'') ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM VIEWLIQ WHERE MODULO in (''LIQ_EX'',''LIQ_EX_AN'',''PAGAMENTOS_EXTRA'')  ';
  DM.Atualiza.ExecSQL;
{$ENDREGION}
  DM.Localiza.close;
  DM.Localiza.Commandtext := ' SELECT despes.* FROM DESPES ' + ' INNER JOIN DESDIS ON DESDIS.FICHA=DESPES.FICHA ' + ' WHERE  desdis.BALCO IS NOT NULL AND VADEM > 0';
  DM.Localiza.OPEN;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM VIEWLIQ WHERE PKEMP=0';
  DM.QDESTINO.OPEN;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select a.emp_numempenho, a.emp_tipo, a.emp_numdigito, a.emp_exercicio, a.emp_numficha, a.emp_tipoficha,a.emp_valorempenhado, a.emp_valorpago, ' +
    'a.emp_codfornecedor, a.emp_dataempenho,a.emp_dataliquidacao, a.emp_datavencimento, a.emp_datapagamento, a.emp_tipodocumento, ' +
    'a.emp_numtipodocumento, a.emp_codaplicacaofixo, a.emp_codaplicacaovar, a.emp_numcheque, a.emp_historico,a.emp_codconta ' + 'from empenho_cont a ' +
    'where a.emp_exercicio = ' + inttostr(ano.Value) + ' and a.emp_tipoficha = 2 and a.emp_dataliquidacao is not null and a.emp_tipo <> 2 ' +
    'and a.emp_numficha not in (1,2,11) ' + 'order by 1,2,3';
  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  p.Max := DM.QOrigem.RecordCount;
  NUMLIQ := 0;
  emp_ant := 0;
  item_ant := 9999;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    IF (DM.Localiza.Locate('id_emp_exercicio;id_emp_numempenho;ID_tipoficha;ID_emp_numficha', Vararrayof([trim(DM.QOrigem.FieldByName('emp_exercicio').AsString),
      trim(DM.QOrigem.FieldByName('emp_numempenho').AsString), trim(DM.QOrigem.FieldByName('emp_tipoficha').AsString), trim(DM.QOrigem.FieldByName('emp_numficha').AsString)]
      ), [])) THEN
    begin
      DM.QDESTINO.append;
      // if ((emp_ant <> DM.QOrigem.FieldByName('lq_num').AsInteger) or ((emp_ant = DM.QOrigem.FieldByName('lq_num').AsInteger) and
      // (item_ant <> DM.QOrigem.FieldByName('lq_item').AsInteger))) then
      // begin
      // NUMLIQ := 0;
      // item_ant := 9999;
      // end;
      // emp_ant := DM.QOrigem.FieldByName('lq_num').AsInteger;
      // item_ant := DM.QOrigem.FieldByName('lq_item').AsInteger;
      NUMLIQ := DM.QOrigem.FieldByName('emp_numdigito').AsInteger;
      inc(NUMLIQ);
      DM.QDESTINO.FieldByName('PKEMP').AsString := DM.Localiza.FieldByName('PKEMP').AsString;
      DM.QDESTINO.FieldByName('MODULO').AsString := 'LIQ_EX';
      produ := Tira_Char39(4096, DM.QOrigem.FieldByName('emp_historico').AsString);
      // if trim(produ) = '' then
      // produ := 'LIQUIDAÇÃO NESTA DATA';
      // documento := Tira_Char39(20, DM.QOrigem.FieldByName('lq_doc').AsString);
      // if trim(DM.QOrigem.FieldByName('lq_nota').AsString) <> '' then
      // notafiscal := Tira_Char39(20, DM.QOrigem.FieldByName('lq_nota').AsString);
      // if ((trim(documento) <> '') and (trim(notafiscal) <> '')) then
      // DM.QDESTINO.FieldByName('PRODU').AsString := 'Documento: ' + documento + ' - Nota Fiscal: ' + notafiscal + ' - ' + produ
      // else if ((trim(documento) <> '') and (trim(notafiscal) = '')) then
      // DM.QDESTINO.FieldByName('PRODU').AsString := 'Documento: ' + documento + ' - ' + produ
      // else if ((trim(documento) = '') and (trim(notafiscal) <> '')) then
      // DM.QDESTINO.FieldByName('PRODU').AsString := 'Nota Fiscal: ' + notafiscal + ' - ' + produ
      // else
      DM.QDESTINO.FieldByName('PRODU').AsString := produ;

      // DM.QDESTINO.FieldByName('PRODU').AsString := DM.QDESTINO.FieldByName('PRODU').AsString + ' Liq/Seq ' + trim(DM.QOrigem.FieldByName('lq_item').AsString) + '/' +
      // trim(DM.QOrigem.FieldByName('lq_seq').AsString);
      DM.QDESTINO.FieldByName('id_emp_exercicio').AsString := trim(DM.QOrigem.FieldByName('emp_exercicio').AsString);
      DM.QDESTINO.FieldByName('id_emp_numempenho').AsString := trim(DM.QOrigem.FieldByName('emp_numempenho').AsString);
      DM.QDESTINO.FieldByName('id_emp_numdigito').AsString := trim(DM.QOrigem.FieldByName('emp_numdigito').AsString);
      DM.QDESTINO.FieldByName('ID_emp_tipo').AsString := trim(DM.QOrigem.FieldByName('emp_tipo').AsString);
      DM.QDESTINO.FieldByName('ID_tipoficha').AsString := trim(DM.QOrigem.FieldByName('emp_tipoficha').AsString);
      DM.QDESTINO.FieldByName('ID_emp_numficha').AsString := trim(DM.QOrigem.FieldByName('emp_numficha').AsString);
      // DM.QDESTINO.FieldByName('ID_lq_nota').AsString := trim(DM.QOrigem.FieldByName('lq_nota').AsString);
      DM.QDESTINO.FieldByName('numsub').AsInteger := NUMLIQ;
      DM.QDESTINO.FieldByName('NEMPF').AsInteger := 0;
      DM.QDESTINO.FieldByName('IE').AsInteger := 0;
      DM.QDESTINO.FieldByName('NEMPV').AsInteger := 0;
      DM.QDESTINO.FieldByName('FASE').AsInteger := 0;
      DM.QDESTINO.FieldByName('DATAE').AsString := trim(DM.QOrigem.FieldByName('emp_dataliquidacao').AsString);
      DM.QDESTINO.FieldByName('VENCI').AsString := trim(DM.QOrigem.FieldByName('emp_datavencimento').AsString);
      DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('emp_valorempenhado').ascurrency;
      DM.QDESTINO.post;
    end
    else
      memoStatus.Lines.Add('     Liq EXTRA - EMP/Dig:' + trim(DM.QOrigem.FieldByName('emp_numempenho').AsString) + '/' +
        trim(DM.QOrigem.FieldByName('emp_numdigito').AsString));
    DM.QOrigem.next;
  END;
  STATUS.caption := 'Salvando Liquidação EXTRA - OK';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Liquidação EXTRA - OK';
  STATUS.update;
  memoStatus.Lines.Add('Liquidação EXTRA - OK');
  Desconecta_Conecta;
  // *******************************  ANULA LIQUIDACAO *************************
  // SITU.caption := 'LIQUIDACAO EXTRA AN....';
  // SITU.update;
  //
  // DM.Localiza.close;
  // DM.Localiza.Commandtext := ' select * from viewliq where modulo like ''LIQ_EX%'' ';
  // DM.Localiza.OPEN;
  // DM.QDESTINO.close;
  // DM.QDESTINO.Commandtext := 'SELECT * FROM VIEWLIQ WHERE PKEMP=0';
  // DM.QDESTINO.OPEN;
  // DM.QOrigem.close;
  // DM.QOrigem.Commandtext :=
  // 'select l.lq_ano,l.lq_ficha,l.lq_num,l.lq_item,l.lq_seq,l.lq_mov,l.lq_data,l.lq_doc,l.lq_valor,l.lq_desc,l.lq_hist,l.lq_nota,e.em_dtvenc,e.em_dtliq ' +
  // 'from liquidados l ' + 'inner join empenhos e on (e.em_ano=l.lq_ano and e.em_ficha=l.lq_ficha and e.em_num=l.lq_num and e.em_item=l.lq_item) ' +
  // 'where l.lq_ano = ' + inttostr(ano.Value) + ' AND l.lq_mov = 2 and l.lq_ficha>5000 and l.lq_ficha<9000  ' +
  // ' order by l.lq_ano, l.lq_data, l.lq_num,l.lq_seq,l.lq_item';
  // DM.QOrigem.OPEN;
  // DM.QOrigem.first;
  // p.Max := DM.QOrigem.RecordCount;
  //
  // WHILE NOT DM.QOrigem.eof DO
  // BEGIN
  // APPLICATION.ProcessMessages;
  // p.Position := DM.QOrigem.RecNo;
  // EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  // EM.update;
  //
  // IF (DM.Localiza.Locate('ID_lq_ano;ID_lq_ficha;ID_lq_num;ID_lq_item', Vararrayof([trim(DM.QOrigem.FieldByName('lq_ano').AsString),
  // trim(DM.QOrigem.FieldByName('lq_ficha').AsString), trim(DM.QOrigem.FieldByName('lq_num').AsString), trim(DM.QOrigem.FieldByName('lq_ITEM').AsString)]), [])) THEN
  // begin
  // DM.QDESTINO.append;
  // DM.QDESTINO.FieldByName('PKEMP').AsString := DM.Localiza.FieldByName('PKEMP').AsString;
  // DM.QDESTINO.FieldByName('MODULO').AsString := 'LIQ_EX_AN';
  // produ := Tira_Char39(4096, DM.QOrigem.FieldByName('lq_hist').AsString);
  // if trim(produ) = '' then
  // produ := 'ANULAÇÃO';
  // documento := Tira_Char39(20, DM.QOrigem.FieldByName('lq_doc').AsString);
  // if trim(DM.QOrigem.FieldByName('lq_nota').AsString) <> '' then
  // notafiscal := Tira_Char39(20, DM.QOrigem.FieldByName('lq_nota').AsString);
  // if ((trim(documento) <> '') and (trim(notafiscal) <> '')) then
  // DM.QDESTINO.FieldByName('PRODU').AsString := 'Documento: ' + documento + ' - Nota Fiscal: ' + notafiscal + ' - ' + produ
  // else if ((trim(documento) <> '') and (trim(notafiscal) = '')) then
  // DM.QDESTINO.FieldByName('PRODU').AsString := 'Documento: ' + documento + ' - ' + produ
  // else if ((trim(documento) = '') and (trim(notafiscal) <> '')) then
  // DM.QDESTINO.FieldByName('PRODU').AsString := 'Nota Fiscal: ' + notafiscal + ' - ' + produ
  // else
  // DM.QDESTINO.FieldByName('PRODU').AsString := produ;
  // DM.QDESTINO.FieldByName('ID_lq_ano').AsString := trim(DM.QOrigem.FieldByName('lq_ano').AsString);
  // DM.QDESTINO.FieldByName('ID_lq_ficha').AsString := trim(DM.QOrigem.FieldByName('lq_ficha').AsString);
  // DM.QDESTINO.FieldByName('ID_lq_num').AsString := trim(DM.QOrigem.FieldByName('lq_num').AsString);
  // DM.QDESTINO.FieldByName('ID_lq_item').AsString := trim(DM.QOrigem.FieldByName('lq_item').AsString);
  // DM.QDESTINO.FieldByName('ID_lq_seq').AsString := trim(DM.QOrigem.FieldByName('lq_seq').AsString);
  // DM.QDESTINO.FieldByName('ID_lq_doc').AsString := trim(DM.QOrigem.FieldByName('lq_doc').AsString);
  // DM.QDESTINO.FieldByName('ID_lq_nota').AsString := trim(DM.QOrigem.FieldByName('lq_nota').AsString);
  // DM.cdsTemp.close;
  // DM.cdsTemp.Commandtext := 'select max(numsub) as numsub from viewliq where pkemp=' + DM.QDESTINO.FieldByName('PKEMP').AsString;
  // DM.cdsTemp.OPEN;
  // DM.QDESTINO.FieldByName('numsub').AsInteger := DM.cdsTemp.FieldByName('numsub').AsInteger + 1;
  // DM.QDESTINO.FieldByName('numsuba').AsInteger := DM.cdsTemp.FieldByName('numsub').AsInteger;
  // DM.QDESTINO.FieldByName('NEMPF').AsInteger := 0;
  // DM.QDESTINO.FieldByName('IE').AsInteger := 0;
  // DM.QDESTINO.FieldByName('NEMPV').AsInteger := 0;
  // DM.QDESTINO.FieldByName('FASE').AsInteger := 0;
  // DM.QDESTINO.FieldByName('DATAE').AsString := trim(DM.QOrigem.FieldByName('lq_data').AsString);
  // DM.QDESTINO.FieldByName('VENCI').AsString := trim(DM.QOrigem.FieldByName('em_dtvenc').AsString);
  // DM.QDESTINO.FieldByName('VADEM').ASCURRENCY := DM.QOrigem.FieldByName('lq_valor').ASCURRENCY * -1;
  // DM.QDESTINO.FieldByName('anula').ASCURRENCY := DM.QOrigem.FieldByName('lq_valor').ASCURRENCY * -1;
  // DM.QDESTINO.post;
  // end
  // else
  // memoStatus.Lines.Add('    Liq EX-AN  EMP/Ano:' + trim(DM.QOrigem.FieldByName('lq_num').AsString) + '/' + trim(DM.QOrigem.FieldByName('lq_ano').AsString));
  // DM.QOrigem.next;
  // END;
  // STATUS.caption := 'Salvando Liquidação  EX-AN  - OK';
  // STATUS.update;
  // DM.QDESTINO.ApplyUpdates(-1);
  // STATUS.caption := 'Liquidação  EX-AN  - OK';
  // STATUS.update;
  // memoStatus.Lines.Add('Liquidação  EX-AN  - OK');
  // Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.PAGAMENTOS_EXTRA;
var ORDPG, pkemp, cheqord_new: integer; pkemp_new: integer; DESCO: Double; NUMSUB: integer;
  emp_ant: integer;
  erros: Integer;
  transfentidade_new: Integer;
  empresa_origem: string;
  cdunidadegestora_destino: string;
  empresa_destino: string;
  cdunidadegestora_origem: string;
  Contadestino: string;
  Contaorigem: string;
  cheque: string;
  dtlan: string;
  Valor: string;
  fichadespesa: string;
  histo: string;
  fichareceita: string;
  filtro: string;
begin
  SITU.caption := 'PAGAMENTOS EXTRAS...';
  SITU.update;

  // CriaCampo('DESPES', 'MODULO', '20');
  // CriaCampo('DESPES', 'ID_CodCredor', '20');
  // CriaCampo('DESPES', 'ID_NumExtra', '20');
  // CriaCampo('DESPES', 'ID_EXERCICIO', '20');
  // CriaCampo('DESPES', 'ID_CodAdministracao', '20');
  // CriaCampo('DESPES', 'ID_codconta', '20');
   CriaCampo('viewliq', 'ID_nrsequenciasistema', '20');
  CriaCampo('ORDPAG', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'MODULO', '20');
  CriaCampo('SUBORD', 'MODULO', '20');
  CriaCampo('CHEQORD', 'MODULO', '20');
  CriaCampo('DESSUB', 'MODULO', '20');
  CriaCampo('DESCSUB', 'MODULO', '20');


  CriaCampo('ORDPAG', 'id_emp_numempenho', '20');
  CriaCampo('ORDPAG', 'id_emp_numdigito', '20');
  CriaCampo('ORDPAG', 'id_emp_exercicio', '20');
  CriaCampo('ORDPAG', 'ID_emp_tipo', '20');
  CriaCampo('ORDPAG', 'ID_tipoficha', '20');
  CriaCampo('ORDPAG', 'ID_emp_numficha', '20');

  Atualiza_Generator;

{$REGION 'Limpa tabelas...}
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'UPDATE ORDPAG SET COMP= ''N'' WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM SUBORD WHERE COMP= ''N'' AND MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM ORDPAG WHERE COMP= ''N'' AND MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM DESCSUB WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM DESSUB WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM VIEWLIQ WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM despes WHERE MODULO = ''PAGAMENTOS_EXTRA'' ';
  DM.Atualiza.ExecSQL;

  DM.QAUX.close;
  DM.QAUX.Commandtext := 'select max(ordpg) as ordpg from ordpag';
  DM.QAUX.OPEN;
  ORDPG := DM.QAUX.FieldByName('ordpg').AsInteger;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'select max(cheqord) as cheqord from cheqord';
  DM.QAUX.OPEN;
  cheqord_new := DM.QAUX.FieldByName('cheqord').AsInteger;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;
{$ENDREGION}
  DM.qdestino.close;
  DM.qdestino.Commandtext := 'SELECT * FROM ordpag WHERE ordpg=0';
  DM.qdestino.OPEN;
  DM.Localiza.close;
  DM.Localiza.Commandtext := 'SELECT * from despes where modulo =''EMPENHO_EX'' ';
  DM.Localiza.OPEN;
  DM.Localiza.IndexFieldNames := 'id_cdunidadegestora;id_dtanoemissao;ID_nrempenho; ID_cdfornecedor';
  DM.Localiza2.close;
  DM.Localiza2.Commandtext := 'SELECT * FROM despes WHERE pkemp=0';
  DM.Localiza2.OPEN;
  DM.Localiza3.close;
  DM.Localiza3.Commandtext := 'SELECT * FROM VIEWLIQ where pkemp = -1';
  DM.Localiza3.OPEN;
  DM.Localiza4.close;
  DM.Localiza4.Commandtext := 'SELECT * FROM DESSUB WHERE PKEMP=0';
  DM.Localiza4.OPEN;
  DM.Localiza5.close;
  DM.Localiza5.Commandtext := 'SELECT * FROM DEScSUB WHERE PKEMP=0';
  DM.Localiza5.OPEN;
  DM.Localiza6.close;
  DM.Localiza6.Commandtext := 'SELECT * FROM SUBORD WHERE ORDPG=0';
  DM.Localiza6.OPEN;
  DM.Localiza7.close;
  DM.Localiza7.Commandtext := 'SELECT * FROM CHEQORD WHERE ORDPG=0';
  DM.Localiza7.OPEN;

  DM.QOrigem.close;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND M.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  if ANO.Value > 2012 then
    DM.QOrigem.Commandtext := // lista as OP Extras
      'select m.*, coalesce(cast(substring(h.dscomplhistorico,1,1024) as varchar(1024)),''Pagamento Extra'') as produ ' +
      'from ['+bnc_cpe+'].[dbo].movimento m ' +
      'left join ['+bnc_cpe+'].dbo.complementohistorico h on m.cdunidadegestora=h.cdunidadegestora and m.nrcomplhistorico=h.nrcomplhistorico ' +
      'where m.cdtipomovimento in (453,454) '+filtro+' ' +
      'order by m.cdunidadegestora, m.nrempenho,m.dtmovimento '
  ELSE
    DM.QOrigem.Commandtext := // lista as OP Extras
      'SELECT M.*, COALESCE(CAST(SUBSTRING(H.DSCOMPLHISTORICO,1,1024) AS VARCHAR(1024)),''PAGAMENTO EXTRA'') AS PRODU ' +
      'FROM ['+BNC_CPE+'].[DBO].MOVIMENTO M ' +
      'LEFT JOIN ['+BNC_CPE+'].[DBO].COMPLEMENTOHISTORICO H ON M.CDUNIDADEGESTORA=H.CDUNIDADEGESTORA AND M.NRCOMPLHISTORICO=H.NRCOMPLHISTORICO ' +
      'WHERE (M.CDTIPOMOVIMENTO IN (453,454) OR (M.CDTIPOMOVIMENTO = 464 AND M.NREMPENHO = ''000000'')) AND M.INMOVIMENTORESTOS = 0 ' +
      'ORDER BY M.CDUNIDADEGESTORA, M.NREMPENHO,M.DTMOVIMENTO';

  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;

//  DM.LOCALIZAORIGEM.close; // lista os descontos da op
//  DM.LOCALIZAORIGEM.Commandtext :=
//    'select distinct d.lrec_num, d.lrec_numficha as ficha, d.lrec_tipoficha as tipo, d.lrec_data as dtrec,  d.lrec_codconta as conta,d.lrec_codfornecedor as codif, ' +
//    'd.lrec_numempenho , d.lrec_digitoempenho, e.emp_tipoficha,e.emp_exercicio ,d.lrec_historico as histo, d.lrec_valor as varec ' + 'from lancreceita_cont d ' +
//    'inner join empenho_cont e on (d.lrec_numempenho=e.emp_numempenho and d.lrec_exercicio=e.emp_exercicio and d.lrec_digitoempenho=e.emp_numdigito) ' +
//    'where d.lrec_exercicio = ' + inttostr(ano.Value) + ' AND d.lrec_efetivado = ''Sim'' and d.lrec_codconta is null and d.lrec_numempenho is not null ' +
//    'and e.emp_tipoficha = 2 ' + 'order by 1';
//  DM.LOCALIZAORIGEM.OPEN;
  //
  dm.CdsOrigem.CLOSE;          // conciliacao bancaria
  dm.CdsOrigem.Commandtext :=
    'select a.nrsequenciasistema, A.CDTIPOMOVIMENTO, a.cdunidadegestora, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' + 'from [' +
    bnc_cpe + '].DBO.movimento a ' + 'inner join ' + bnc_cpc + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
    'where a.cdtipomovimento in (464,465) and b.cdnivelcontabil like ''111%'' ';
  dm.CdsOrigem.OPEN;
  dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

  DM.QOrigem.first;
  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;      //id_cdunidadegestora;id_dtanoemissao;ID_nrempenho; ID_cdfornecedor';
    if dm.Localiza.FindKey([trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('dtanoemissao').AsString),
      trim(DM.QOrigem.FieldByName('nrempenho').AsString),trim(DM.QOrigem.FieldByName('cdfornecedor').AsString)]) then
    begin
      {$region ' Ordpag '}
      DM.qdestino.append; // 'SELECT * FROM ORDPAG WHERE ORDPG=0';
      inc(ORDPG);
      DM.qdestino.FieldByName('ORDPG').AsInteger := ORDPG;
      DM.qdestino.FieldByName('MODULO').AsString := 'PAGAMENTOS_EXTRA';
      DM.qdestino.FieldByName('ORDPGseq').AsString := DM.QOrigem.FieldByName('nrsequencia').AsString;
      DM.qdestino.FieldByName('EMPRESA').AsString :=  Traz_Entidade(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
      DM.qdestino.FieldByName('DATAE').AsString := DM.QOrigem.FieldByName('dtmovimento').AsString;
      DM.qdestino.FieldByName('produ').AsString := dM.QOrigem.FieldByName('produ').AsString;
      DM.qdestino.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('dtmovimento').AsString;
      DM.qdestino.FieldByName('DTPAG').AsString := DM.QOrigem.FieldByName('dtmovimento').AsString;
      DM.qdestino.FieldByName('COMP').AsString := 'N';

//      if ANO.Value > 2012 then
//      BEGIN
          IF dm.QORIGEM.FieldByName('cdhistoricosistema').Asinteger = 454 THEN
            DM.qdestino.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency *-1
          else
            DM.qdestino.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency ;
//      END
//      ELSE
//      BEGIN
//          IF dm.QORIGEM.FieldByName('cdhistoricosistema').Asinteger = 451 THEN
//            DM.qdestino.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency *-1
//          else
//            DM.qdestino.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency ;
//      END;


      DM.qdestino.FieldByName('DESCO').ascurrency := 0.00;
      DESCO := 0.00;
      DM.qdestino.FieldByName('CODIF').AsString := DM.Localiza.FieldByName('codif').AsString;
      // Traz_Codif (DM.QORIGEM.FieldByName('CodCredor').AsString,'');
      DM.qDESTINO.FieldByName('ID_nrsequencia').asstring := DM.QORIGEM.FieldByName('nrsequencia').asstring;
      DM.qDESTINO.FieldByName('ID_nrsequenciasistema').asstring := DM.QORIGEM.FieldByName('nrsequenciasistema').asstring;
      DM.qdestino.post;
      {$endregion}
  {$REGION 'Cria VIEWLIQ ' }
      // Criando Liquidacao...
      DM.Localiza3.append;
      DM.Localiza3.FieldByName('PKEMP').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
      DM.Localiza3.FieldByName('MODULO').AsString := 'PAGAMENTOS_EXTRA';
      DM.Localiza3.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
      DM.Localiza3.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.Localiza3.FieldByName('id_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
      DM.Localiza3.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
      DM.Localiza3.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
      DM.Localiza3.FieldByName('ID_nrsequenciasistema').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
      if emp_ant <> DM.QOrigem.FieldByName('nrempenho').asinteger then
        numsub := 0;
      inc(numsub);
      emp_ant := DM.QOrigem.FieldByName('nrempenho').asinteger;
      DM.Localiza3.FieldByName('NUMSUB').AsInteger := numsub;
      DM.Localiza3.FieldByName('NEMPF').AsString := '0';
      DM.Localiza3.FieldByName('DATAE').AsString := DM.qdestino.FieldByName('DATAE').AsString ;
      DM.Localiza3.FieldByName('VENCI').AsString := DM.qdestino.FieldByName('DATAE').AsString ;
      DM.Localiza3.FieldByName('PRODU').AsString := DM.qdestino.FieldByName('produ').AsString ;
      DM.Localiza3.FieldByName('IE').AsString := '0';
      DM.Localiza3.FieldByName('NEMPV').AsString := '0';
      DM.Localiza3.FieldByName('FASE').AsString := '0';
      DM.Localiza3.FieldByName('VADEM').ascurrency := DM.qdestino.FieldByName('VALOR').ascurrency;
      DM.Localiza3.post;
  {$ENDREGION}
  {$REGION 'Dessub....'}
      DM.Localiza4.append;
      DM.Localiza4.FieldByName('PKEMP').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
      DM.Localiza4.FieldByName('NUMSUB').AsInteger := numsub;
      DM.Localiza4.FieldByName('PARCELA').AsInteger := numsub;
      DM.Localiza4.FieldByName('NUMLIQ').AsInteger := numsub;
      DM.Localiza4.FieldByName('NEMPF').AsInteger := 0;
      DM.Localiza4.FieldByName('IE').AsInteger := 0;
      DM.Localiza4.FieldByName('NEMPV').AsInteger := 0;
      DM.Localiza4.FieldByName('FASE').AsInteger := 0;
      DM.Localiza4.FieldByName('VENCI').AsString := DM.qdestino.FieldByName('DATAE').AsString ;
      DM.Localiza4.FieldByName('PRODU').AsString := DM.qdestino.FieldByName('produ').AsString;
      DM.Localiza4.FieldByName('VADEM').ascurrency := DM.qdestino.FieldByName('VALOR').ascurrency;
      DM.Localiza4.FieldByName('DATAE').AsString := DM.qdestino.FieldByName('DATAE').AsString ;
      DM.Localiza4.FieldByName('MODULO').AsString := 'PAGAMENTOS_EXTRA';
      DM.Localiza4.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
      DM.Localiza4.FieldByName('ID_nrsequenciasistema').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
      DM.Localiza4.post;
  {$ENDREGION}
  {$REGION 'Subord....'}
      // ******* SUBORD ********
      DM.Localiza6.append; // 'SELECT * FROM SUBORD WHERE ORDPG=0';
      DM.Localiza6.FieldByName('PKEMP').AsString := DM.Localiza.FieldByName('PKEMP').AsString;
      DM.Localiza6.FieldByName('NUMSUB').AsInteger := NUMSUB;
      DM.Localiza6.FieldByName('ORDPG').AsInteger := ORDPG;
      DM.Localiza6.FieldByName('COMP').AsString := 'N';
      DM.Localiza6.FieldByName('MODULO').AsString := 'PAGAMENTOS_EXTRA';
      DM.Localiza6.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
      DM.Localiza6.FieldByName('ID_nrsequenciasistema').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
      DM.Localiza6.post;
   {$ENDREGION}
  {$REGION 'Cheqord....'}
        // ********* CHEQORD *****
      DM.Localiza7.append; // 'SELECT * FROM CHEQORD WHERE ORDPG=0';
      DM.Localiza7.FieldByName('ORDPG').AsInteger := ORDPG;

      DM.Localiza7.FieldByName('CONTA').AsString := Traz_Conta_Descon(DM.QOrigem.FieldByName('cdunidadegestora').AsString, DM.QOrigem.FieldByName('CDCONTRAPARTIDA').AsString);
      DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);

      DM.Localiza7.FieldByName('CHEQORD').AsInteger := 0;
      DM.Localiza7.FieldByName('VALOR').ascurrency := DM.qdestino.FieldByName('valor').ascurrency; // DM.cdsOrigem.FieldByName('mp_valor').AsFloat - DESCO;
      DM.Localiza7.FieldByName('COMP').AsString := 'N';
      DM.Localiza7.FieldByName('Cheqn').AsString := trim(DM.QOrigem.FieldByName('NRDOCUMENTOPAGTO').AsString);
      // DM.Localiza7.FieldByName('tipodocfinan').AsString := Traz_TipoDocFinan(DM.cdsOrigem.FieldByName('TipPagamento').AsString);
      DM.Localiza7.FieldByName('MODULO').AsString := 'PAGAMENTOS_EXTRA';

      if dm.localiza7.FieldByName('valor').AsFloat > 0.00 then

          if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '465']) then
            dm.localiza7.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
          else
            dm.localiza7.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
              FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger)

      else if dm.localiza7.FieldByName('valor').AsFloat < 0.00 then

          if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
            dm.localiza7.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
          else
            dm.localiza7.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
              FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);


//      DM.Localiza7.FieldByName('ID_concilia').AsString := trim(DM.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString);

      DM.Localiza7.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
      DM.Localiza7.FieldByName('ID_nrsequenciasistema').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
      DM.Localiza7.post;
  {$ENDREGION}
    end;
    DM.QOrigem.next;
  end;
  {$Region ' ApplyUpdates ' }
  status.caption := ' Salvando OP´s Extras....';
  status.update;
  erros := DM.qDESTINO.ApplyUpdates(-1);
  if erros > 0 then
    memoStatus.Lines.Add('  Erro na Ordpag ');
  application.ProcessMessages;
  status.caption := ' Salvando Liquidações Extras....';
  status.update;
  erros := DM.Localiza3.ApplyUpdates(-1);
  if erros > 0 then
    memoStatus.Lines.Add('  Erro na Viewliq ');
  application.ProcessMessages;
  status.caption := ' Salvando Parcelas Extras....';
  status.update;
  if erros = 0 then
    erros := erros + DM.localiza4.ApplyUpdates(-1);
  if erros > 0 then
    memoStatus.Lines.Add('  Erro na Dessub ');
  application.ProcessMessages;
  status.caption :=  ' Salvando Subord Extras....';
  status.update;
  if erros = 0 then
    erros := erros + DM.localiza6.ApplyUpdates(-1);
  if erros > 0 then
    memoStatus.Lines.Add('  Erro na Subord ');
  application.ProcessMessages;
  status.caption := ' Salvando Cheqord Extras....';
  status.update;
  if erros = 0 then
    erros := erros + DM.localiza7.ApplyUpdates(-1);
  if erros > 0 then
    memoStatus.Lines.Add('  Erro na Cheqord ');
  application.ProcessMessages;

  status.caption := 'Atualizando descsub....';
	status.update;
	if erros = 0 then
	begin
	  DM.qaux.close;
	  DM.qaux.Commandtext :=
		'  UPDATE DESCSUB Z SET ' +
		'    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
		'    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
		'  WHERE z.modulo = ''PAGAMENTOS_EXTRA'' and z.conta is null  ';
	  DM.qaux.Execute;
	end;

  status.caption := 'Atualizando as ORPAG....';
  status.update;
  if erros = 0 then
  begin
    DM.qaux.close;
    DM.qaux.Commandtext := 'update ordpag set comp = ''S'', dtpag = datae where MODULO = ''PAGAMENTOS_EXTRA'' AND comp = ''N'' ';
    DM.qaux.Execute;
  end;
  status.caption := '';
  status.update;
  application.ProcessMessages;
  if erros > 0  then
    memoStatus.Lines.Add('  Problemas nas OP´s ');
  erros := 0;
  {$endregion}
  memoStatus.Lines.Add('PAGTO EXTRA OK ');
  STATUS.caption := 'PAGTO EXTRA OK';
  STATUS.update;
  Desconecta_Conecta;
  //*************************************  cria transfentidade ***************
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'SELECT MAX(ORDCRE) AS ORDCRE FROM ORDCRE';
  dm.Localiza.OPEN;
  dm.QAux.CLOSE;
  dm.QAux.Commandtext := 'SET GENERATOR GEN_ORDCRE TO ' + inttostr(dm.Localiza.FieldByName('ORDCRE').Asinteger + 1);
  dm.QAux.Execute;
  dm.QAux.Commandtext := 'update despes set id_idTransferenciaFinanceiraFR = 1  where ficha like ''7___'' and id_idTransferenciaFinanceiraFR is null ';
  dm.QAux.Execute;
  dm.Localiza6.CLOSE;
  dm.Localiza6.Commandtext := 'select max(coalesce(transfentidade,0)) as transfentidade from transfentidade ';
  dm.Localiza6.OPEN;
  transfentidade_new := dm.Localiza6.FieldByName('transfentidade').Asinteger;
  dm.Localiza6.CLOSE;
//  dm.Localiza6.Commandtext := 'select cast(substring(produ from 1 for 198) as varchar(198))as histo ,despes.* from despes where ficha like ''7___'' ';
  dm.Localiza6.Commandtext :=
    'select ' +
    '  cast(substring(dessub.produ from 1 for 198) as varchar(198))as histo,dessub.vapag,dessub.numsub,despes.* ' +
    'from dessub ' +
    'inner join despes on despes.pkemp = dessub.pkemp ' +
    'where despes.ficha like ''7___'' ';
  dm.Localiza6.OPEN;
  dm.Localiza6.first;
  P.Max := dm.Localiza6.RecordCount;
  WHILE NOT dm.Localiza6.eof DO
  BEGIN
    inc(transfentidade_new);
    P.Position := dm.Localiza6.RecNo;

    dm.Localiza2.CLOSE;
    dm.Localiza2.Commandtext := 'select empresa, id_cdunidadegestora from tabempresa where id_cdunidadegestora = ' +
      dm.Localiza6.FieldByName('id_idTransferenciaFinanceiraFR').AsString;
    dm.Localiza2.OPEN;
    if dm.Localiza2.IsEmpty then
    begin
      cdunidadegestora_destino := '1';
      empresa_destino := '1'
    end
    else
    begin
      empresa_destino := dm.Localiza2.FieldByName('empresa').AsString;
      cdunidadegestora_destino := dm.Localiza6.FieldByName('id_idTransferenciaFinanceiraFR').AsString;
    end;

    dm.Localiza2.CLOSE;
    dm.Localiza2.Commandtext := 'select empresa,id_cdunidadegestora from desdis where ficha = ' + dm.Localiza6.FieldByName('ficha').AsString;
    dm.Localiza2.OPEN;
    empresa_origem := dm.Localiza2.FieldByName('empresa').AsString;
    cdunidadegestora_origem := dm.Localiza2.FieldByName('id_cdunidadegestora').AsString;

    dm.Localiza2.CLOSE;
    dm.Localiza2.Commandtext := 'select conta from descon where balco like ''3111%'' and id_cdunidadegestora = ' + cdunidadegestora_destino;
    dm.Localiza2.OPEN;
    if dm.Localiza2.IsEmpty then
    begin
      dm.Localiza2.CLOSE;
      dm.Localiza2.Commandtext := 'select conta from descon where balco like ''3111%'' and empresa = ' + cdunidadegestora_destino;
      dm.Localiza2.OPEN;
    end;
    Contadestino := dm.Localiza2.FieldByName('conta').AsString;

    dm.Localiza2.CLOSE;
    dm.Localiza2.Commandtext :=
      'select conta, cheqn, dtlan, valor from cheqord where ordpg in (select ordpg from ordpag where ordpg in (select ordpg from subord where pkemp =' +
      dm.Localiza6.FieldByName('pkemp').AsString + ' and numsub = ' + dm.Localiza6.FieldByName('numsub').AsString + ')) ';
    dm.Localiza2.OPEN;
    IF NOT dm.Localiza2.IsEmpty THEN
    BEGIN
      Contaorigem := dm.Localiza2.FieldByName('conta').AsString;
      cheque := dm.Localiza2.FieldByName('cheqn').AsString;
      dtlan := Stringreplace(dm.Localiza2.FieldByName('dtlan').AsString, '/', '.', [RfReplaceAll]);
      Valor := Stringreplace(dm.Localiza2.FieldByName('valor').AsString, ',', '.', [RfReplaceAll]);
      fichadespesa := dm.Localiza6.FieldByName('ficha').AsString;
      histo := Stringreplace(dm.Localiza6.FieldByName('histo').AsString, CHAR(39), '.', [RfReplaceAll]);
      Pkemp := dm.Localiza6.FieldByName('pkemp').asinteger;
      dm.Localiza2.CLOSE;
      dm.Localiza2.Commandtext := 'select ficha from recdis where balco like ''3237%'' and empresa =' +Traz_Entidade(cdunidadegestora_destino);
      dm.Localiza2.OPEN;
      IF not dm.Localiza2.IsEmpty THEN
      BEGIN
//        QAUX.CLOSE;
//        QAUX.Commandtext := 'select * from desdis where balco like ''3237%'' and id_cdunidadegestora = ' + cdunidadegestora_origem;
//        QAUX.OPEN;
//        BALCO := QAUX.FieldByName('balco').AsString;
//        ficha := QAUX.FieldByName('ficha').AsString;
//        Nome := 'REPASSE FINANCEIRO RECEBIDO';
//        CRIA_CONPLA_SCPI(BALCO, Nome, cdunidadegestora_destino);
//        CRIA_EXTRA(ficha, cdunidadegestora_destino, BALCO, '110', '000', Nome, '', '', '', '');
//        CRIA_RECDIS(ficha, ficha, '110', '000', BALCO, cdunidadegestora_destino, Nome, '');
//        dm.Localiza2.CLOSE;
//        dm.Localiza2.Commandtext := 'select ficha from recdis where balco like ''3237%'' and id_cdunidadegestora =' + cdunidadegestora_destino;
//        dm.Localiza2.OPEN;
        fichareceita := dm.Localiza2.FieldByName('ficha').AsString;
      END;

      dm.QAux.CLOSE;
      dm.QAux.Commandtext :=
        ' insert into transfentidade(transfentidade, contaorigem, contadestino, fichareceita, fichadespesa, histo, dtlan, valor, entidadeorigem, entidadedestino, cheque, tipodevolucao, contadorigem, contaddestino) '
        + ' values (''' + inttostr(transfentidade_new) + ''',''' + Contaorigem + ''',''' + Contadestino + ''',''' + fichareceita + ''',''' + fichadespesa + ''',''' +
        copy(histo, 1, 200) + ''',''' + dtlan + ''',''' + Valor + ''',''' + empresa_origem + ''',''' + empresa_destino + ''',''' + cheque + ''',''R'','+Traz_Conta_DesconD(Contaorigem)+','+Traz_Conta_DesconD(Contadestino)+')';
      dm.QAux.Execute;

      dm.QAux.CLOSE;
      dm.QAux.Commandtext := 'update despes set transfentidade = ''' + inttostr(transfentidade_new) + ''' where pkemp = ' + inttostr(Pkemp);
      dm.QAux.Execute;
    END;
    APPLICATION.ProcessMessages;
    dm.Localiza6.Next;
  END;

end;

procedure TTfrmprincipal_Conversao.ESTORNO_EXTRA;
var ORDPAG, ORDPG, pkemp, cheqord_new: integer; pkemp_new: integer;
begin

  SITU.caption := 'ESTORNO EXTRAS...';
  SITU.update;
{$REGION 'Limpa tabelas...}
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'UPDATE ORDPAG SET COMP= ''N'' WHERE MODULO = ''ESTORNO_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM SUBORD WHERE COMP= ''N'' AND MODULO = ''ESTORNO_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM ORDPAG WHERE COMP= ''N'' AND MODULO = ''ESTORNO_EXTRA'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM DESSUB WHERE MODULO = ''ESTORNO_EXTRA'' ';
  DM.Atualiza.ExecSQL;

  DM.QAUX.close;
  DM.QAUX.Commandtext := 'select max(ordpg) as ordpg from ordpag';
  DM.QAUX.OPEN;
  ORDPAG := DM.QAUX.FieldByName('ordpg').AsInteger;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'select max(cheqord) as cheqord from cheqord';
  DM.QAUX.OPEN;
  cheqord_new := DM.QAUX.FieldByName('cheqord').AsInteger;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;
{$ENDREGION}
  DM.Localiza.close;
  DM.Localiza.Commandtext := 'SELECT * from despes  ';
  DM.Localiza.OPEN;
  DM.Localiza.IndexFieldNames := 'id_Exercicio;id_CodAdministracao;id_NumExtra; id_NumSeq';
  DM.Localiza2.close;
  DM.Localiza2.Commandtext := 'SELECT * FROM ORDPAG WHERE ORDPG=0';
  DM.Localiza2.OPEN;
  DM.Localiza4.close;
  DM.Localiza4.Commandtext := 'SELECT * FROM DESSUB WHERE PKEMP=0';
  DM.Localiza4.OPEN;
  DM.Localiza6.close;
  DM.Localiza6.Commandtext := 'SELECT * FROM SUBORD WHERE ORDPG=0';
  DM.Localiza6.OPEN;
  DM.Localiza7.close;
  DM.Localiza7.Commandtext := 'SELECT * FROM CHEQORD WHERE ORDPG=0';
  DM.Localiza7.OPEN;
  DM.QConta.close;
  DM.QConta.Commandtext := 'SELECT CONTA,EMPRESA, cod FROM DESCON';
  DM.QConta.OPEN;
  DM.QConta.IndexFieldNames := 'EMPRESA;cod';

  DM.QOrigem.close;
  DM.QOrigem.Commandtext := // lista as OP Extras
    'SELECT e.[Exercicio],e.[CodAdministracao],e.[NumExtra],e.[NumSeq],e.[DatExtra],e.[CodFlgMov],e.[CodTipMov],e.[CodEvento] ' +
    '      ,e.[CodConta],e.[CodCategoria],e.[NumTipLancExtra],e.[NumSubTipLancExtra], t.Descricao,e.[NumMovimento],e.[CodContaBanco] ' +
    '      ,case when (e.codtipmov=369 and e.coddomiciliobancario=0) then (select top 1 a.coddomiciliobancario from [DBEXEC].[dbo].[TbExecExtras] a where a.exercicio=e.exercicio '
    + '            and a.codadministracao=e.codadministracao and a.numextra=e.numextra and e.codcredor=a.codcredor and a.codtipmov=309 and a.coddomiciliobancario>0 ' +
    '            and a.numseq<=e.numseq )   else  e.[CodDomicilioBancario] end as coddomiciliobancario ' +
    '      ,e.[CodCredor],e.[AnoProcesso],e.[CodProcesso] ,case when e.codtipmov=309 then e.[Valor] else e.valor*-1 end as valor,e.[NumDocOrigem] ' +
    '      ,cast(substring(e.[HstExtra],1,4096) as varchar(4096)) as HstExtra,e.[DatCadastro],e.[CodUnidadeExecutora],e.[CodUnidadeOrcamentaria] ' +
    '      ,e.[AnoDocOrigem],e.[CodFonteRecurso],e.[DatVencimento],e.[CodAplicacaoFixo],e.[CodOrgao],e.[CodAplicacaoVariavel] ' + '  FROM [DBEXEC].[dbo].[TbExecExtras] e ' +
    '  inner join [DBEXEC].[dbo].[TbExecSubTipLancExtra] t on (t.Exercicio=e.Exercicio and e.NumSubTipLancExtra=t.Codigo and e.NumTipLancExtra=t.NumTipLancExtra) ' +
    '  where e.Exercicio=''' + ano.text + ''' AND e.codtipmov=369 and e.coddomiciliobancario=0 ' + '  and e.[NumTipLancExtra]<>4 ' +
    '  order by e.[NumExtra],e.[NumSeq],e.[DatCadastro]';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
{$REGION 'CRIA ORDPAG'}
  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;

    DM.Localiza2.append; // 'SELECT * FROM ORDPAG WHERE ORDPG=0';
    inc(ORDPAG);
    DM.Localiza2.FieldByName('ORDPG').AsInteger := ORDPAG;
    DM.Localiza2.FieldByName('MODULO').AsString := 'ESTORNO_EXTRA';
    DM.Localiza2.FieldByName('ORDPGseq').AsInteger := DM.QOrigem.FieldByName('NumExtra').AsInteger;
    DM.Localiza2.FieldByName('EMPRESA').AsString := trim(DM.QOrigem.FieldByName('CodAdministracao').AsString);
    ORDPG := DM.Localiza2.FieldByName('ORDPG').AsInteger;
    DM.Localiza2.FieldByName('DATAE').AsString := DM.QOrigem.FieldByName('DatExtra').AsString;
    DM.Localiza2.FieldByName('produ').AsString := Tira_Char39(250, DM.QOrigem.FieldByName('HstExtra').AsString);
    DM.Localiza2.FieldByName('VENCI').AsString := DM.QOrigem.FieldByName('DatVencimento').AsString;
    DM.Localiza2.FieldByName('DTPAG').AsString := DM.QOrigem.FieldByName('DatExtra').AsString;
    DM.Localiza2.FieldByName('COMP').AsString := 'N';
    DM.Localiza2.FieldByName('VALOR').AsFloat := DM.QOrigem.FieldByName('valor').AsFloat;
    DM.Localiza2.FieldByName('DESCO').AsFloat := 0.00;
    DM.Localiza2.FieldByName('CODIF').AsString := Traz_Codif(DM.QOrigem.FieldByName('CodCredor').AsString, '');
    DM.Localiza2.FieldByName('id_exercicio').AsString := trim(DM.QOrigem.FieldByName('exercicio').AsString);
    DM.Localiza2.FieldByName('ID_NumExtra').AsString := trim(DM.QOrigem.FieldByName('NumExtra').AsString);
    DM.Localiza2.FieldByName('ID_NumSeq').AsString := trim(DM.QOrigem.FieldByName('NumSeq').AsString);
    DM.Localiza2.FieldByName('ID_CodAdministracao').AsString := trim(DM.QOrigem.FieldByName('CodAdministracao').AsString);
    DM.Localiza2.post;
    DM.QOrigem.next;
  end;
  STATUS.caption := 'Salvando OP´s Extras....';
  STATUS.update;
  DM.Localiza2.ApplyUpdates(-1);
  STATUS.caption := 'OP´s EX criadas...';
  STATUS.update;
  memoStatus.Lines.Add('  OP´s EX criadas... ');
{$ENDREGION}
  DM.Localiza2.close;
  DM.Localiza2.Commandtext := 'SELECT * from ordpag  ';
  DM.Localiza2.OPEN;
  DM.Localiza2.IndexFieldNames := 'id_Exercicio;id_CodAdministracao;id_NumExtra;id_NumSeq';

{$REGION 'Cria DESSUB' }
  DM.Localiza8.close;
  DM.Localiza8.Commandtext := 'select * from dessub where modulo =''PAGAMENTOS_EXTRA'' ';
  DM.Localiza8.OPEN;
  DM.Localiza8.IndexFieldNames := 'pkemp;id_numseq';

  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    if DM.Localiza.FindKey([trim(DM.QOrigem.FieldByName('exercicio').AsString), trim(DM.QOrigem.FieldByName('CodAdministracao').AsString),
      trim(DM.QOrigem.FieldByName('NumExtra').AsString)]) then
    begin
      DM.Localiza4.append;
      DM.Localiza4.FieldByName('PKEMP').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
      DM.Localiza4.FieldByName('id_numseq').AsString := trim(DM.QOrigem.FieldByName('numseq').AsString);
      DM.cdstemp1.close;
      DM.cdstemp1.Commandtext := 'select coalesce(max(numsub),0) as numsub from dessub where pkemp = ' + DM.Localiza.FieldByName('pkemp').AsString;
      DM.cdstemp1.OPEN;
      DM.Localiza4.FieldByName('NUMSUB').AsInteger := DM.cdstemp1.FieldByName('numsub').AsInteger + 1;
      DM.Localiza4.FieldByName('NUMSUBA').AsInteger := DM.cdstemp1.FieldByName('numsub').AsInteger - 1;
      DM.Localiza4.FieldByName('PARCELA').AsInteger := DM.cdstemp1.FieldByName('numsub').AsInteger + 1;
      DM.Localiza4.FieldByName('NUMLIQ').AsInteger := 1;
      DM.Localiza4.FieldByName('NEMPF').AsInteger := 0;
      DM.Localiza4.FieldByName('IE').AsInteger := 0;
      DM.Localiza4.FieldByName('NEMPV').AsInteger := 0;
      DM.Localiza4.FieldByName('FASE').AsInteger := 0;
      DM.Localiza4.FieldByName('VENCI').AsString := trim(DM.QOrigem.FieldByName('DatExtra').AsString);
      DM.Localiza4.FieldByName('PRODU').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('HstExtra').AsString);
      DM.Localiza4.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('valor').ascurrency;
      DM.Localiza4.FieldByName('ANULA').ascurrency := DM.QOrigem.FieldByName('valor').ascurrency;
      DM.Localiza4.FieldByName('DATAE').AsString := trim(DM.QOrigem.FieldByName('DatVencimento').AsString);
      DM.Localiza4.FieldByName('MODULO').AsString := 'ESTORNO_EXTRA';
      DM.Localiza4.post;
      DM.Localiza4.ApplyUpdates(-1);
    end;
    DM.QOrigem.next;
  end;
  STATUS.caption := 'Parcelas EX criadas';
  STATUS.update;
  memoStatus.Lines.Add('  Parcelas EX criadas ');
{$ENDREGION}
{$REGION 'Cria SUBORD' }
  DM.Localiza8.close;
  DM.Localiza8.Commandtext := 'select * from dessub where modulo =''ESTORNO_EXTRA'' ';
  DM.Localiza8.OPEN;
  DM.Localiza8.IndexFieldNames := 'pkemp;id_numseq';
  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    if DM.Localiza.FindKey([trim(DM.QOrigem.FieldByName('exercicio').AsString), trim(DM.QOrigem.FieldByName('CodAdministracao').AsString),
      trim(DM.QOrigem.FieldByName('NumExtra').AsString)]) then
    begin
      if DM.Localiza8.FindKey([DM.Localiza.FieldByName('pkemp').AsString, trim(DM.QOrigem.FieldByName('numseq').AsString)]) then
      begin
        DM.Localiza6.append;
        DM.Localiza6.FieldByName('PKEMP').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
        if DM.Localiza2.FindKey([trim(DM.QOrigem.FieldByName('exercicio').AsString), trim(DM.QOrigem.FieldByName('CodAdministracao').AsString),
          trim(DM.QOrigem.FieldByName('NumExtra').AsString), trim(DM.QOrigem.FieldByName('NumSeq').AsString)]) then
          DM.Localiza6.FieldByName('ordpg').AsInteger := DM.Localiza2.FieldByName('ordpg').AsInteger;

        DM.Localiza6.FieldByName('NUMSUB').AsInteger := DM.Localiza8.FieldByName('numsub').AsInteger;
        DM.Localiza6.FieldByName('comp').AsString := 'N';
        DM.Localiza6.FieldByName('MODULO').AsString := 'ESTORNO_EXTRA';
        DM.Localiza6.FieldByName('id_numseq').AsString := trim(DM.QOrigem.FieldByName('NumSeq').AsString);
        DM.Localiza6.post;
      end;
    end;
    DM.QOrigem.next;
  end;
  STATUS.caption := 'Salvando Subord EX criados...';
  STATUS.update;
  DM.Localiza6.ApplyUpdates(-1);
  STATUS.caption := 'Subord EX criadas';
  STATUS.update;
  memoStatus.Lines.Add('  Subord EX criadas ');
{$ENDREGION}
{$REGION 'Cria CHEQORD' }
  // Criando CHEQORD
  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    if DM.Localiza2.FindKey([trim(DM.QOrigem.FieldByName('exercicio').AsString), trim(DM.QOrigem.FieldByName('CodAdministracao').AsString),
      trim(DM.QOrigem.FieldByName('NumExtra').AsString), trim(DM.QOrigem.FieldByName('NumSeq').AsString)]) then
    begin
      DM.Localiza7.append;
      inc(cheqord_new);
      IF DM.QConta.FindKey([trim(DM.QOrigem.FieldByName('CodAdministracao').AsString), trim(DM.QOrigem.FieldByName('CodDomicilioBancario').AsString)]) THEN
      BEGIN
        DM.Localiza7.FieldByName('CONTA').AsString := DM.QConta.FieldByName('CONTA').AsString;
        DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
      END;
      IF DM.Localiza7.FieldByName('CONTA').AsString = '' THEN
      BEGIN
        DM.Atualiza.close;
        DM.Atualiza.SQL.text := 'SELECT CONTA FROM DESCON WHERE BALCO LIKE ''3111%'' AND EMPRESA=' + trim(DM.QOrigem.FieldByName('CodAdministracao').AsString);
        DM.Atualiza.OPEN;
        IF NOT DM.Atualiza.IsEmpty THEN
        begin
          DM.Localiza7.FieldByName('CONTA').AsString := DM.Atualiza.FieldByName('CONTA').AsString;
          DM.Localiza7.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.localiza7.FieldByName('CONTA').AsString);
        end
        ELSE
          MessageBox(APPLICATION.Handle, Pchar('Conta caixa não encontrada! Entidade:' + trim(DM.QOrigem.FieldByName('CodAdministracao').AsString)), 'Atenção',
            MB_OK + MB_ICONEXCLAMATION);
      END;
      DM.Localiza7.FieldByName('ORDPG').AsInteger := DM.Localiza2.FieldByName('ordpg').AsInteger;
      DM.Localiza7.FieldByName('CHEQORD').AsInteger := cheqord_new;
      DM.Localiza7.FieldByName('MODULO').AsString := 'ESTORNO_EXTRA';
      DM.Localiza7.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('valor').ascurrency;
      DM.Localiza7.FieldByName('COMP').AsString := 'N';
      DM.Localiza7.FieldByName('ID_CodAdministracao').AsString := trim(DM.QOrigem.FieldByName('CodAdministracao').AsString);
      DM.Localiza7.FieldByName('ID_EXERCICIO').AsString := trim(DM.QOrigem.FieldByName('EXERCICIO').AsString);
      DM.Localiza7.FieldByName('ID_NumExtra').AsString := trim(DM.QOrigem.FieldByName('NumExtra').AsString);
      DM.Localiza7.FieldByName('ID_Numseq').AsString := trim(DM.QOrigem.FieldByName('Numseq').AsString);
      DM.Localiza7.post;
    end;
    DM.QOrigem.next;
  end;
  STATUS.caption := 'Salvando Cheqord EX criados...';
  STATUS.update;
  DM.Localiza7.ApplyUpdates(-1);
  STATUS.caption := 'Cheqord EX criadas';
  STATUS.update;
  memoStatus.Lines.Add('  Cheqord EX criadas ');
{$ENDREGION}
{$REGION 'Atualiza ORDPAG'}

  DM.qaux.close;
  DM.qaux.Commandtext :=
  '  UPDATE DESCSUB Z SET ' +
  '    Z.CONTA = (SELECT FIRST 1 A.CONTA FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ), ' +
  '    Z.CONTAD = (SELECT FIRST 1 A.CONTAD FROM cheqord A INNER JOIN SUBORD B ON B.ordpg = A.ordpg WHERE /*A.cheqn LIKE ''%DESCON%'' AND*/ B.PKEMP = Z.PKEMP AND B.NUMSUB = Z.NUMSUB ) ' +
  '  WHERE z.modulo = ''OP_OR'' and z.conta is null  ';
  DM.qaux.Execute;

  DM.SQL.close;
  DM.SQL.Commandtext := 'UPDATE ORDPAG SET COMP = ''S'' WHERE modulo =''ESTORNO_EXTRA'' ';
  DM.SQL.ExecSQL;
{$ENDREGION}
  memoStatus.Lines.Add('ESTORNO EXTRA OK ');
  STATUS.caption := 'ESTORNO EXTRA OK';
  STATUS.update;
  Desconecta_Conecta;

end;

procedure TTfrmprincipal_Conversao.EMPENHOS_ORCAMENTARIOS;
var pkemp_new: integer; reserva_anu: integer; fornec: string; item: integer;
  LICIT: string;
  FUNDLEGAL: string;
  MODLIC: string;
  PROCLIC: string;
  Historico: string;
  evento: string;
  filtro: string;
begin
  Desliga_Triggers;
  CriaCampo('DESPES', 'MODULO', '20');
  CriaCampo('DESPESITEM', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'MODULO', '20');

  CriaCampo('DESPES', 'ID_CDFORNECEDOR', '20');
  CriaCampo('DESPES', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('DESPES', 'ID_nrempenho', '20');
  CriaCampo('DESPES', 'ID_NRSOLICITACAO', '20');
  CriaCampo('DESPES', 'ID_CDDESPESA', '20');
  CriaCampo('DESPES', 'ID_dtanoemissao', '20');
  CriaCampo('DESPES', 'ID_cdtipolicitacao', '20');
  CriaCampo('DESPES', 'id_nrlicitacao', '20');
  CriaCampo('DESPES', 'ID_dtanolicitacao', '20');
  CriaCampo('DESPES', 'ID_nrcontrato', '20');
  CriaCampo('DESPES', 'ID_dtanocontrato', '20');
  CriaCampo('DESPES', 'ID_nrprocessocompra', '20');
  CriaCampo('DESPES', 'ID_dtanoprocessocompra', '20');


  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM viewliq where modulo = ''LIQ_OR'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESPES where modulo = ''EMP_OR'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM despesitem where modulo = ''EMP_OR'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'ALTER SEQUENCE GEN_DESPES RESTART WITH 0';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'update reserva set empenhado = 0 ';
  DM.Atualiza.ExecSQL;

  SITU.caption := 'EMPENHOS ORÇAMENTÁRIOS...';
  SITU.update;

  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(reserva),0) as reserva FROM reserva';
  DM.QAUX.OPEN;
  reserva_anu := DM.QAUX.FieldByName('reserva').AsInteger;

  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT * FROM DESDIS';
  DM.QAUX.OPEN;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND A.CDUNIDADEGESTORA = '+Ent_padrao.Text
  else
     filtro := ' ';

  DM.QOrigem.close;
  if ano.Value > 2011 then
  DM.QOrigem.Commandtext :=
          'SELECT M.NRNOTARESERVASALDO, D.CDAPLICACAO AS VINGRUPO, ' +
          '  SUBSTRING(CAST(A.CDAPLICACAO AS VARCHAR(7)),1,3)  AS VINGRUPO_2, SUBSTRING(CAST(A.CDAPLICACAO AS VARCHAR(7)),5,3)  AS VINCODIGO_2, ' +
          '  COALESCE(C.CDCATEGORIANIVEL1,E.CDCATEGORIANIVEL1) AS CDCATEGORIANIVEL1, COALESCE(C.CDCATEGORIANIVEL2,E.CDCATEGORIANIVEL2) AS CDCATEGORIANIVEL2, ' +
          '  COALESCE(C.CDCATEGORIANIVEL3,E.CDCATEGORIANIVEL3) AS CDCATEGORIANIVEL3, COALESCE(C.CDCATEGORIANIVEL4,E.CDCATEGORIANIVEL4) AS CDCATEGORIANIVEL4, ' +
          '  COALESCE(C.CDCATEGORIANIVEL5,E.CDCATEGORIANIVEL5) AS CDCATEGORIANIVEL5,    A.*,B.*,C.*,D.*,M.* ' +
          'FROM ['+BNC_CPE+'].[DBO].EMPENHO A ' +
          'INNER JOIN ['+BNC_CPE+'].[DBO].VALORESEMPENHO B ON A.NREMPENHO=B.NREMPENHO AND  A.DTANOEMISSAO=B.DTANOEMISSAO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA AND A.CDDESPESA>0 ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].DESPESASECUNDARIA C ON C.CDDESPESASECUNDARIA=A.CDDESPESASECUNDARIA ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].DESPESA E ON A.CDDESPESA=E.CDDESPESA ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON D.IDCODIGOAPLICACAO = A.CDAPLICACAO ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].MOVIMENTO M ON (M.CDUNIDADEGESTORA=A.CDUNIDADEGESTORA AND M.CDDESPESA=A.CDDESPESA ' +
          ' AND M.CDTIPOMOVIMENTO IN (430,431,432) AND A.NREMPENHO=M.NREMPENHO AND A.DTEMISSAOEMPENHO=M.DTMOVIMENTO) ' +
          'WHERE B.NRSEQUENCIASUBEMPENHO = 0 '+FILTRO+' ' +
          'ORDER BY A.NREMPENHO'
  else
    DM.QOrigem.Commandtext :=
          'SELECT M.NRNOTARESERVASALDO, D.CDAPLICACAO AS VINGRUPO, ' +
          '  SUBSTRING(CAST(A.CDAPLICACAO AS VARCHAR(7)),1,3)  AS VINGRUPO_2, SUBSTRING(CAST(A.CDAPLICACAO AS VARCHAR(7)),5,3)  AS VINCODIGO_2, ' +
          '  COALESCE(C.CDCATEGORIANIVEL1,E.CDCATEGORIANIVEL1) AS CDCATEGORIANIVEL1, COALESCE(C.CDCATEGORIANIVEL2,E.CDCATEGORIANIVEL2) AS CDCATEGORIANIVEL2, ' +
          '  COALESCE(C.CDCATEGORIANIVEL3,E.CDCATEGORIANIVEL3) AS CDCATEGORIANIVEL3, COALESCE(C.CDCATEGORIANIVEL4,E.CDCATEGORIANIVEL4) AS CDCATEGORIANIVEL4, ' +
          '  COALESCE(C.CDCATEGORIANIVEL5,E.CDCATEGORIANIVEL5) AS CDCATEGORIANIVEL5,    A.*,B.*,C.*,D.*,M.* ' +
          'FROM ['+BNC_CPE+'].[DBO].EMPENHO A ' +
          'INNER JOIN ['+BNC_CPE+'].[DBO].VALORESEMPENHO B ON A.NREMPENHO=B.NREMPENHO AND  A.DTANOEMISSAO=B.DTANOEMISSAO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA AND A.CDDESPESA>0 ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].DESPESASECUNDARIA C ON C.CDDESPESASECUNDARIA=A.CDDESPESASECUNDARIA ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].DESPESA E ON A.CDDESPESA=E.CDDESPESA ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON D.CDAPLICACAO = A.CDAPLICACAO ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].MOVIMENTO M ON (M.CDUNIDADEGESTORA=A.CDUNIDADEGESTORA AND M.CDDESPESA=A.CDDESPESA ' +
          ' AND M.CDTIPOMOVIMENTO IN (430,431,432) AND A.NREMPENHO=M.NREMPENHO AND A.DTEMISSAOEMPENHO=M.DTMOVIMENTO) ' +
          'WHERE B.NRSEQUENCIASUBEMPENHO = 0 '+FILTRO+' ' +
          'ORDER BY A.NREMPENHO'        ;
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;

   DM.LOCALIZAORIGEM.close;
   DM.LOCALIZAORIGEM.Commandtext :=
    'SELECT cast(dsitem as varchar(2048)) as ds, * FROM ['+BNC_CPE+'].[dbo].ITENSEMPENHO WHERE IDEMPENHO=1 AND DTANOEMISSAO = '+Ano.text;
   DM.LOCALIZAORIGEM.OPEN;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESPES';
  DM.QDESTINO.OPEN;

  DM.Localiza.CLOSE;
  DM.Localiza.Commandtext := 'SELECT * FROM RESERVA where valor > 0.00 and (valor - empenhado - anula) > 0.00 ';
  DM.Localiza.OPEN;
  DM.Localiza.IndexFieldNames := 'ID_cdunidadegestora;ID_nrnotareservasaldo';
  DM.Localiza2.close;
  DM.Localiza2.Commandtext := 'SELECT * FROM VINCODIGO';
  DM.Localiza2.OPEN;
  DM.Localiza2.IndexFieldNames := 'VINGRUPO;VINCODIGO';
  DM.Localiza3.close;
  DM.Localiza3.Commandtext := ' select * from contratos ';
  DM.Localiza3.OPEN;
  DM.Localiza3.IndexFieldNames := 'id_contrato;ID_CDUNIDADEGESTORA;ID_CDFORNECEDOR';
  DM.Localiza4.CLOSE;
  DM.Localiza4.Commandtext := ' select * from cadconv ';
  DM.Localiza4.OPEN;
  DM.Localiza4.IndexFieldNames := 'ID_CDUNIDADEGESTORA;id_convenioinicial';
  DM.Localiza5.CLOSE;
  DM.Localiza5.Commandtext := 'select * from despesitem where pkemp = -1 ';
  DM.Localiza5.OPEN;
  DM.Localiza6.CLOSE;
  DM.Localiza6.Commandtext := 'SELECT * from reserva where reserva = -1';
  DM.Localiza6.OPEN;


  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    DM.QDESTINO.append;
    inc(pkemp_new);
    DM.QDESTINO.FieldByName('PKEMP').AsInteger := pkemp_new;
    fornec := '';
    DM.QDESTINO.FieldByName('NEMPG').AsString := trim(DM.QOrigem.FieldByName('NREMPENHO').AsString);
    DM.QDESTINO.FieldByName('MODULO').AsString := 'EMP_OR';
    DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
    DM.QDESTINO.FieldByName('ID_cddespesa').AsString := trim(DM.QOrigem.FieldByName('cddespesa').AsString);
    DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('NREMPENHO').AsString);
    DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
    DM.QDESTINO.FieldByName('ID_NRSOLICITACAO').AsString := trim(DM.QOrigem.FieldByName('NRSOLICITACAO').AsString);
    DM.QDESTINO.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
    DM.QDESTINO.FieldByName('ID_cdtipolicitacao').AsString := trim(DM.QOrigem.FieldByName('cdtipolicitacao').AsString);
    DM.QDESTINO.FieldByName('id_nrlicitacao').AsString := trim(DM.QOrigem.FieldByName('nrlicitacao').AsString);
    DM.QDESTINO.FieldByName('ID_dtanolicitacao').AsString := trim(DM.QOrigem.FieldByName('dtanolicitacao').AsString);
    DM.QDESTINO.FieldByName('ID_nrcontrato').AsString := trim(DM.QOrigem.FieldByName('nrcontrato').AsString);
    DM.QDESTINO.FieldByName('ID_dtanocontrato').AsString := trim(DM.QOrigem.FieldByName('dtanocontrato').AsString);
    DM.QDESTINO.FieldByName('ID_nrprocessocompra').AsString := trim(DM.QOrigem.FieldByName('nrprocessocompra').AsString);
    DM.QDESTINO.FieldByName('ID_dtanoprocessocompra').AsString := trim(DM.QOrigem.FieldByName('dtanoprocessocompra').AsString);
    DM.QDESTINO.FieldByName('FICHA').AsString := Traz_Ficha_DesDis_OR(trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString),DM.QOrigem.FieldByName('cddespesa').AsString);
    if dm.QOrigem.fieldbyname('cdtipoempenho').asinteger = 1 then
       DM.QDESTINO.FieldByName('TPEM').AsString := 'OR'
    else if dm.QOrigem.fieldbyname('cdtipoempenho').asinteger = 2 then
       DM.QDESTINO.FieldByName('TPEM').AsString := 'GL'
    else if dm.QOrigem.fieldbyname('cdtipoempenho').asinteger = 3 then
       DM.QDESTINO.FieldByName('TPEM').AsString := 'ES'
    else
      DM.QDESTINO.FieldByName('TPEM').AsString := 'OR';
    if dm.QOrigem.fieldbyname('cdobjetodespesa').asinteger = 4 then
       DM.QDESTINO.FieldByName('TPEM').AsString := 'AD';

    DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.QOrigem.FieldByName('DTEMISSAOEMPENHO').AsString);
    DM.QDESTINO.FieldByName('CATEGORIA').AsString := Existe_TabCategoria(DM.QOrigem.FieldByName('CDCATEGORIANIVEL1').AsString, '');
    DM.QDESTINO.FieldByName('GRUPO').AsString := Existe_TabGrupo(DM.QOrigem.FieldByName('CDCATEGORIANIVEL2').AsString, '');
    DM.QDESTINO.FieldByName('MODALIDADE').AsString := Existe_TabModalidade(DM.QOrigem.FieldByName('CDCATEGORIANIVEL3').AsString, '');
    DM.QDESTINO.FieldByName('ELEMENTO').AsString := Existe_TabElemento(DM.QOrigem.FieldByName('CDCATEGORIANIVEL4').AsString, '');
    DM.QDESTINO.FieldByName('DESDOBRO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDCATEGORIANIVEL5').AsInteger);
    Existe_TabCatec(DM.QDESTINO.FieldByName('CATEGORIA').AsString + DM.QDESTINO.FieldByName('GRUPO').AsString + DM.QDESTINO.FieldByName('MODALIDADE').AsString +
      DM.QDESTINO.FieldByName('ELEMENTO').AsString + DM.QDESTINO.FieldByName('DESDOBRO').AsString, '???');
    DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('VLEMPENHADO').ascurrency;
    {$region ' Localiza a reserva se houver.... }
    if dm.Localiza.FindKey([dm.QORIGEM.FieldByName('cdunidadegestora').AsString, dm.QORIGEM.FieldByName('nrnotareservasaldo').AsString]) then
    begin
      if (dm.Localiza.FieldByName('valor').AsCurrency - dm.Localiza.FieldByName('empenhado').AsCurrency - dm.Localiza.FieldByName('anula').AsCurrency) >= dm.QORIGEM.FieldByName('VLEMPENHADO').AsCurrency then
        dm.QDESTINO.FieldByName('reserva').Asinteger := dm.Localiza.FieldByName('reserva').Asinteger
      else
      begin
        inc(reserva_anu);
        dm.Localiza6.APPEND;
        dm.Localiza6.FieldByName('id_cdunidadegestora').AsString := dm.Localiza.FieldByName('id_cdunidadegestora').AsString;
        dm.Localiza6.FieldByName('id_nrnotareservasaldo').AsString := dm.Localiza.FieldByName('id_nrnotareservasaldo').AsString;
        dm.Localiza6.FieldByName('anu_reserva').Asinteger := dm.Localiza.FieldByName('reserva').Asinteger;
        dm.Localiza6.FieldByName('reserva').Asinteger := reserva_anu;
        dm.Localiza6.FieldByName('ficha').Asinteger := dm.Localiza.FieldByName('ficha').Asinteger;
        dm.Localiza6.FieldByName('proc').AsString := dm.Localiza.FieldByName('proc').AsString;
        dm.Localiza6.FieldByName('historico').AsString := 'Anulacao devido saldo de reserva menor que o empenhado. Emp: ' + dm.QDESTINO.FieldByName('NEMPG').AsString + '/'
          + dm.QDESTINO.FieldByName('TPEM').AsString;
        dm.Localiza6.FieldByName('data').AsString := dm.QORIGEM.FieldByName('DTEMISSAOEMPENHO').AsString;
        dm.Localiza6.FieldByName('TIPO_RESERVA').AsString := 'AN';
        dm.Localiza6.FieldByName('VALOR').AsCurrency := (dm.Localiza.FieldByName('valor').AsCurrency - dm.Localiza.FieldByName('empenhado').AsCurrency -
          dm.Localiza.FieldByName('anula').AsCurrency) * (-1);
        dm.Localiza6.FieldByName('vingrupo').AsString := dm.Localiza.FieldByName('vingrupo').AsString;
        dm.Localiza6.FieldByName('vincodigo').AsString := dm.Localiza.FieldByName('vincodigo').AsString;
        dm.Localiza6.Post;
        dm.Localiza6.ApplyUpdates(-1);
        dm.Localiza.close;
        dm.Localiza.open;
      end;
    end;
    {$endregion}

    IF trim(DM.QOrigem.FieldByName('NRCONTRATO').AsString) <> '' THEN
    BEGIN
      IF DM.Localiza3.FindKey([trim(DM.QOrigem.FieldByName('NRCONTRATO').AsString), trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),
        trim(DM.QOrigem.FieldByName('cdfornecedor').AsString)]) THEN
        DM.QDESTINO.FieldByName('CONTRATO').AsString := DM.Localiza3.FieldByName('codigo').AsString;
    END;

    IF trim(DM.QORIGEM.FieldByName('cdconvenio').AsString) <> '' THEN
    BEGIN
     IF DM.Localiza4.FindKey([trim(DM.QORIGEM.FieldByName('cdunidadegestora').AsString), trim(DM.QORIGEM.FieldByName('cdconvenio').AsString)]) THEN
       DM.QDESTINO.FieldByName('convenio').ASINTEGER := DM.Localiza4.FieldByName('convenio').ASINTEGER;
    END;

    {$region ' Licitação.....}
    IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '1' THEN
    BEGIN
      PROCLIC := '';
      MODLIC := '';
      LICIT := 'OUTRO';
      FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
    END
    ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '2' THEN
    BEGIN
      PROCLIC := '';
      if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
      begin
        MODLIC := 'DI02';
        LICIT := 'OBRA DISPENSA';
      end
      else
      begin
        MODLIC := 'DI01';
        LICIT := 'DISPENSA';
      end;
      FUNDLEGAL := 'DISPENSA';
    END
   ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '3' THEN
    BEGIN
     PROCLIC := '';
     if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
      begin
        MODLIC := 'DI02';
        LICIT := 'OBRA DISPENSA';
      end
      else
      begin
       MODLIC := 'DI01';
       LICIT := 'DISPENSA (ART. 24)';
      end;
     FUNDLEGAL := 'DISPENSA (ART. 24)';
    END
   ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '4' THEN
    BEGIN
      PROCLIC := '';
      MODLIC := 'IN01';
      LICIT := 'INEXIGIBILIDADE';
      FUNDLEGAL := 'INEXIGIBILIDADE';
    END
    ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '5') OR(dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '10')) THEN
    BEGIN
      if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
      begin
        MODLIC := 'CON7';
        LICIT := 'OBRA CONCORRENCIA';
      end
      else
      begin
        MODLIC := 'CON4';
        LICIT := 'MAT / SERV - CONCORRENCIA';
      end;
      FUNDLEGAL := 'LICITAÇÃO';
//      PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
        PROCLIC := retorna_nrlicitacao(COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), 1, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-4), COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-3, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)),DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
    END
    ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '6' THEN
    BEGIN
      if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
      begin
        MODLIC := 'TOM6';
        LICIT := 'OBRA TOMADA';
      end
      else
      begin
        MODLIC := 'TOM3';
        LICIT := 'MAT / SERV - TOMADA';
      end;
      FUNDLEGAL := 'LICITAÇÃO';
//      PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      PROCLIC := retorna_nrlicitacao(COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), 1, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-4), COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-3, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)),DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
    END
    ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '7' THEN
    BEGIN
      if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
      begin
        MODLIC := 'CCO5';
        LICIT := 'OBRA CONVITE';
      end
      else
      begin
        MODLIC := 'CCO2';
        LICIT := 'MAT / SERV - CONVITE';
      end;
      FUNDLEGAL := 'LICITAÇÃO';
//      PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      PROCLIC := retorna_nrlicitacao(COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), 1, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-4), COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-3, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)),DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
    END
    ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '9') OR (dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '11' )) THEN
    BEGIN
      MODLIC := 'PP01';
      LICIT := 'PREGÃO PRESENCIAL';
      FUNDLEGAL := 'LICITAÇÃO';
//      PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      PROCLIC := retorna_nrlicitacao(COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), 1, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-4), COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-3, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)),DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
    END
    ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '16') OR (dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '17' )) THEN
    BEGIN
      MODLIC := 'PE01';
      LICIT := 'PREGÃO ELETRÔNICO';
      FUNDLEGAL := 'LICITAÇÃO';
//      PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      PROCLIC := retorna_nrlicitacao(COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), 1, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-4), COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-3, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)),DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
    END
    ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '8' THEN
    BEGIN
      MODLIC := 'CS01';
      LICIT := 'CONCURSO';
      FUNDLEGAL := 'LICITAÇÃO';
//      PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      PROCLIC := retorna_nrlicitacao(COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), 1, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-4), COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-3, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)),DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
    END
    ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '12' THEN
    BEGIN
      MODLIC := 'LEIL';
      LICIT := 'LEILÃO';
      FUNDLEGAL := 'LICITAÇÃO';
//      PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      PROCLIC := retorna_nrlicitacao(COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), 1, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-4), COPY(trim(dm.QORIGEM.FieldByName('NRLICITACAO').AsString), LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)-3, LENGTH(dm.QORIGEM.FieldByName('NRLICITACAO').AsString)),DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
    END
    else
    begin
      PROCLIC := '';
      MODLIC := '';
      LICIT := 'OUTRO';
      FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
    end;

    if DM.QDESTINO.FieldByName('GRUPO').AsString = '1' then
    begin
      PROCLIC := '';
      MODLIC := '';
      LICIT := 'OUTRO';
      FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
    end;
    {$endregion}
    DM.QDESTINO.FieldByName('PROCLIC').AsString  :=  PROCLIC;//PROCLIC;  comentado PROLIC e acima a pedido do Giovanni
    DM.QDESTINO.FieldByName('LICIT').AsString := LICIT;
    DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := FUNDLEGAL;
    DM.QDESTINO.FieldByName('PROC').AsString := trim(DM.QOrigem.FieldByName('NRPROCESSOCOMPRA').AsString); // +'/'+trim(DM.QORIGEM.FieldByName('AnoProcesso').AsString);

    fornec := '';
    DM.QDESTINO.FieldByName('CODIF').AsString := Traz_Codif(DM.QOrigem.FieldByName('cdunidadegestora').AsString,DM.QOrigem.FieldByName('cdfornecedor').AsString);
     if DM.QDESTINO.FieldByName('CODIF').AsString = '0' then
     fornec := 'Fornec/UG não encontrado: ' + trim(DM.QOrigem.FieldByName('cdfornecedor').AsString) + '/' + (DM.QOrigem.FieldByName('cdunidadegestora').AsString) + ' ';

    DM.LOCALIZAORIGEM.FiLTERED := False;
    DM.LOCALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString + ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA')
      .AsString + ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString + ' and nrsequenciasubempenho = ' +
      dm.QORIGEM.FieldByName('nrsequenciasubempenho').AsString + ' and nrsequenciamovimento = 0 ';
    DM.LOCALIZAORIGEM.FiLTERED := True;
    DM.LOCALIZAORIGEM.first;
    Historico := ' ';
    WHILE NOT DM.LOCALIZAORIGEM.eof DO
    BEGIN
      Historico := Historico + ' Qte: ' + DM.LOCALIZAORIGEM.FieldByName('qtItem').AsString + ' ; Unid: ' + DM.LOCALIZAORIGEM.FieldByName('unItem').AsString + ' ;   ' +
        Stringreplace(DM.LOCALIZAORIGEM.FieldByName('ds').AsString, chr(39), ' ', [RfReplaceAll]) + ' ;  Vlr Unit: ' +
        currtostr(DM.LOCALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency) + ' ;  Vlr Total do Item : ' +
        currtostr(DM.LOCALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency * DM.LOCALIZAORIGEM.FieldByName('qtItem').AsFloat) + #13;
      DM.LOCALIZAORIGEM.Next;
    END;
    DM.QDESTINO.FieldByName('PRODU').AsString := fornec + Historico;

    IF dm.QORIGEM.FieldByName('CDOBJETODESPESA').AsString <> '0' THEN
    begin
      evento := FORMATCURR('000000', dm.QORIGEM.FieldByName('CDOBJETODESPESA').Asinteger);
      dm.QDESTINO.FieldByName('EVGRUPO').AsString := copy(evento, 1, 3);
      dm.QDESTINO.FieldByName('EVCODIGO').AsString := copy(evento, 4, 3)
    end
    ELSE
    begin
      dm.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
      dm.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
    end;

    if trim(dm.QORIGEM.FieldByName('VINGRUPO').AsString) <> '' then
    begin
        DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(dm.QORIGEM.FieldByName('VINGRUPO').AsString, 1, 3);
        DM.QDESTINO.FieldByName('VINCODIGO').AsString := copy(dm.QORIGEM.FieldByName('VINGRUPO').AsString, 5, 3);
    end
    else
    begin
        DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
        DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
    end;

    Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, DM.QOrigem.FieldByName('nmaplicacao').AsString);
    DM.QDESTINO.post;


    // /// **********   ITENS DO EMPENHO *********
    DM.LOCALIZAORIGEM.FiLTERED := False;
    DM.LOCALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString + ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA')
      .AsString + ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString + ' and nrsequenciasubempenho = ' +
      dm.QORIGEM.FieldByName('nrsequenciasubempenho').AsString + ' and nrsequenciamovimento = 0 ';
    DM.LOCALIZAORIGEM.FiLTERED := True;
    DM.LOCALIZAORIGEM.first;
     if not DM.LOCALIZAORIGEM.IsEmpty then
     begin
       DM.LOCALIZAORIGEM.first;
       item := 0;
       while not DM.LOCALIZAORIGEM.eof do
       begin
         inc(item);
         DM.Localiza5.append;
         DM.Localiza5.FieldByName('MODULO').AsString := 'EMP_OR';
         DM.Localiza5.FieldByName('pkemp').AsInteger := DM.QDESTINO.FieldByName('PKEMP').AsInteger;
         DM.Localiza5.FieldByName('item').AsInteger := DM.LOCALIZAORIGEM.FieldByName('nrsequenciaitens').AsInteger;
         DM.Localiza5.FieldByName('qtd').Value := DM.LOCALIZAORIGEM.FieldByName('qtitem').Value;
         DM.Localiza5.FieldByName('und').AsString := Tira_Char39(3, DM.LOCALIZAORIGEM.FieldByName('unitem').AsString);
         DM.Localiza5.FieldByName('descr').AsString := Tira_Char39(255, DM.LOCALIZAORIGEM.FieldByName('ds').AsString);
         DM.Localiza5.FieldByName('vlunit').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlunitarioitem').ASCURRENCY;
         DM.Localiza5.FieldByName('vltotal').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('qtitem').asfloat * DM.LOCALIZAORIGEM.FieldByName('vlunitarioitem').ascurrency;
         DM.Localiza5.post;
         DM.LOCALIZAORIGEM.next;
       END;
     end;
    DM.QOrigem.next;
  END;
  STATUS.caption := 'Salvando DESPES OR.....';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Salvando Itens do empenhos OR..... ';
  STATUS.update;
  DM.Localiza5.ApplyUpdates(-1);
  STATUS.caption := 'DESPES OR OK';
  STATUS.update;

  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'select COALESCE(max(pkemp),0)  as pkemp from despes';
  dm.ATUALIZA.OPEN;
  pkemp_new := dm.ATUALIZA.FieldByName('pkemp').Asinteger;
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'ALTER SEQUENCE GEN_DESPES RESTART WITH ' + inttostr(pkemp_new);
  dm.ATUALIZA.ExecSQL;

  memoStatus.Lines.Add('Despes OR - OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.EMPENHOS_ANULACAO;
var pkemp_new: integer; reserva_anu: integer; fornec: string;
  produ: string;
  item: Integer;
  filtro: string;
begin

  if (Ano.Value = 2011) OR (Ano.Value = 2012) then
  begin
      DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TB_ANULA_RESERVA' + CHAR(39);
      DM.Atualiza.ExecSQL;
  end;

  SITU.caption := 'EMPENHOS ORÇAMENTÁRIOS AN ...';
  SITU.update;
  CriaCampo('reserva','modulo','20');
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update despes set pkempa = null where modulo like ''EMP_OR%'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'update despes set vadem = 0 where modulo = ''EMP_OR_AN'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from despesitem where modulo = ''EMP_OR_AN'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from despes where modulo = ''EMP_OR_AN'' ';
  DM.Atualiza.ExecSQL;
  dm.Atualiza.CommandText := 'update reserva set valor = 0 where modulo = ''EMP_OR_AN'' ';
  dm.Atualiza.ExecSQL;
  dm.Atualiza.CommandText := 'delete from reserva where modulo = ''EMP_OR_AN'' ';
  dm.Atualiza.ExecSQL;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'ALTER SEQUENCE GEN_DESPES RESTART WITH ' + inttostr(pkemp_new);
  dm.ATUALIZA.ExecSQL;

  DM.QOrigem.close;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND A.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  if Ano.Value > 2012 then
      DM.QOrigem.Commandtext :=
        ' select DISTINCT a.NREMPENHO, A.CDUNIDADEGESTORA, A.DTMOVIMENTO, A.VLANULADO ,A.CDFORNECEDOR , a.dtanoemissao '+
        ' from ' + BNC_CPE +'.DBO.dataview_empenhado_orcamentario_estorno a where a.dtanoemissao = ' + Ano.text +' '+filtro+' order by A.CDUNIDADEGESTORA, a.NREMPENHO '
  else
      DM.QOrigem.Commandtext :=
        'select distinct movimento.* from ['+BNC_CPE+'].[dbo].movimento  where vlmovimento <> 0 and CDDESPESA <> 0 ' +
        'and ((CDTIPOMOVIMENTO = 433) or (CDTIPOMOVIMENTO = 453)  or ((CDTIPOMOVIMENTO = 446) and (cdhistoricopadrao=512)) ) ' +
        'AND DTANOEMISSAO = '+Ano.Text+' ' +
        'ORDER BY MOVIMENTO.CDUNIDADEGESTORA, MOVIMENTO.NREMPENHO';

  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  DM.QOrigem.first;

   dm.LocalizaOrigem.Close;
   dm.LocalizaOrigem.CommandText :=
    'SELECT A.*, CAST(A.DSITEM AS VARCHAR(2048)) AS DS  FROM ['+BNC_CPE+'].[DBO].ITENSEMPENHO A WHERE A.IDEMPENHO = 1 AND A.DTANOEMISSAO = '+Ano.Text+' ' +
    'AND A.NRSEQUENCIASUBEMPENHO = 0 AND A.NRITEM = 0  AND A.NRSEQUENCIAMOVIMENTO <> 0  AND NOT (A.IDITEM = 9 AND A.VLUNITARIOITEM = 0) ' +
    'UNION ALL ' +
    'SELECT A.*, CAST(A.DSITEM AS VARCHAR(2048)) AS DS FROM ['+BNC_CPE+'].[DBO].ITENSEMPENHO A WHERE A.IDEMPENHO = 1 AND A.DTANOEMISSAO = '+Ano.Text+' ' +
    'AND A.NRSEQUENCIASUBEMPENHO = 0  AND A.NRITEM = 1 ' +
    'AND (NOT EXISTS (SELECT Z.NREMPENHO FROM ['+BNC_CPE+'].[DBO].ITENSEMPENHO Z WHERE Z.NREMPENHO = A.NREMPENHO AND Z.DTANOEMISSAO = A.DTANOEMISSAO ' +
    'AND Z.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND Z.NRITEM = 0 AND Z.NRSEQUENCIASUBEMPENHO = 0 AND Z.IDEMPENHO = 1 AND Z.NRSEQUENCIAMOVIMENTO <> 0 ' +
    'AND NOT (Z.IDITEM = 9 AND Z.VLUNITARIOITEM = 0)) AND A.NRSEQUENCIAMOVIMENTO <> 0) ' +
    'AND NOT (A.IDITEM = 9 AND A.VLUNITARIOITEM = 0)';
   dm.LocalizaOrigem.open;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESPES where pkemp = -1';
  DM.QDESTINO.OPEN;

  DM.Localiza.close;
  DM.Localiza.Commandtext := 'SELECT dp.*, extract(year from dp.datae) as anoemp FROM DESPES dp where dp.vadem > 0.00 order by vadem desc';
  DM.Localiza.OPEN;
  DM.Localiza.IndexFieldNames := 'ID_cdunidadegestora;ID_nrempenho;ID_CDFORNECEDOR';

  dm.Localiza5.Close;
  dm.Localiza5.CommandText :='select * from despesitem where pkemp = -1';
  dm.Localiza5.open;

  DM.localiza6.close;
  DM.localiza6.Commandtext := 'select * from reserva where reserva = -1 ';
  DM.localiza6.OPEN;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    IF DM.Localiza.FindKey([trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), trim(DM.QOrigem.FieldByName('nrempenho').AsString),
      trim(DM.QOrigem.FieldByName('CDFORNECEDOR').AsString)]) THEN
    begin
      inc(pkemp_new);
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('PKEMP').AsInteger := pkemp_new;
      DM.QDESTINO.FieldByName('PKEMPA').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
      DM.QDESTINO.FieldByName('NEMPG').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('modulo').AsString := 'EMP_OR_AN';
      DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
      DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('ID_CDFORNECEDOR').AsString := trim(DM.QOrigem.FieldByName('CDFORNECEDOR').AsString);
      DM.QDESTINO.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
      DM.QDESTINO.FieldByName('FICHA').AsString := DM.Localiza.FieldByName('ficha').AsString;
      dm.LocalizaOrigem.filtered := false;
      dm.LocalizaOrigem.filter := ' cdunidadegestora = ' + trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString) +
          ' and nrempenho = ' + trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      dm.LocalizaOrigem.filtered := true;
      produ := dm.LocalizaOrigem.fieldbyname('ds').AsString;
      if DM.Localiza.FieldByName('tpem').AsString = 'AD' then
      begin
        DM.QDESTINO.FieldByName('subem').AsString := '0';
        DM.QDESTINO.FieldByName('dtliq').AsString := '';
        DM.QDESTINO.FieldByName('TPEM').AsString := 'DA';
        if trim(produ) = '' then
          DM.QDESTINO.FieldByName('PRODU').AsString := 'DEVOLUÇÃO DE ADIANTAMENTO - '+ Tira_Char39(4096, DM.Localiza.FieldByName('produ').AsString)
        else
          DM.QDESTINO.FieldByName('PRODU').AsString := produ;
      end
      else
      begin
        DM.QDESTINO.FieldByName('TPEM').AsString := 'AN'; // trim(DM.QORIGEM.FieldByName('TPEM').AsString);
        if trim(produ) = '' then
          DM.QDESTINO.FieldByName('PRODU').AsString := 'ANULAÇÃO DE EMPENHO - '+ Tira_Char39(4096, DM.Localiza.FieldByName('produ').AsString)
        else
          DM.QDESTINO.FieldByName('PRODU').AsString := produ;
      end;
      DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.QOrigem.FieldByName('DTMOVIMENTO').AsString);
      DM.QDESTINO.FieldByName('CATEGORIA').AsString := DM.Localiza.FieldByName('CATEGORIA').AsString;
      DM.QDESTINO.FieldByName('GRUPO').AsString := DM.Localiza.FieldByName('GRUPO').AsString;
      DM.QDESTINO.FieldByName('MODALIDADE').AsString := DM.Localiza.FieldByName('MODALIDADE').AsString;
      DM.QDESTINO.FieldByName('ELEMENTO').AsString := DM.Localiza.FieldByName('ELEMENTO').AsString;
      DM.QDESTINO.FieldByName('DESDOBRO').AsString := DM.Localiza.FieldByName('DESDOBRO').AsString;

      if Ano.Value > 2012 then
      begin
          DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('VLANULADO').ascurrency*(-1);
          DM.QDESTINO.FieldByName('anula').ascurrency := DM.QOrigem.FieldByName('VLANULADO').ascurrency*(-1);
      end
      else
      begin
          DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('VLMOVIMENTO').ascurrency*(-1);
          DM.QDESTINO.FieldByName('anula').ascurrency := DM.QOrigem.FieldByName('VLMOVIMENTO').ascurrency*(-1);
      end;
      DM.QDESTINO.FieldByName('CONTRATO').AsString := DM.Localiza.FieldByName('CONTRATO').AsString;
      DM.QDESTINO.FieldByName('convenio').AsString := DM.Localiza.FieldByName('convenio').AsString;
      DM.QDESTINO.FieldByName('PROCLIC').AsString := DM.Localiza.FieldByName('PROCLIC').AsString;
      DM.QDESTINO.FieldByName('LICIT').AsString := DM.Localiza.FieldByName('LICIT').AsString;
      DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := DM.Localiza.FieldByName('FUNDLEGAL').AsString;
      DM.QDESTINO.FieldByName('PROC').AsString := DM.Localiza.FieldByName('PROC').AsString;
      DM.QDESTINO.FieldByName('CODIF').AsString := DM.Localiza.FieldByName('CODIF').AsString;
      DM.QDESTINO.FieldByName('EVGRUPO').AsString := DM.Localiza.FieldByName('EVGRUPO').AsString;
      DM.QDESTINO.FieldByName('EVCODIGO').AsString := DM.Localiza.FieldByName('EVCODIGO').AsString;
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := DM.Localiza.FieldByName('VINGRUPO').AsString;
      DM.QDESTINO.FieldByName('VINCODIGO').AsString := DM.Localiza.FieldByName('VINCODIGO').AsString;
      DM.QDESTINO.FieldByName('reserva').AsString := DM.Localiza.FieldByName('reserva').AsString;
      DM.QDESTINO.FieldByName('proc').AsString := DM.Localiza.FieldByName('proc').AsString;
      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
      /// **********   ITENS DO EMPENHO *********
       dm.LocalizaOrigem.filtered := false;
       dm.LocalizaOrigem.filter := ' cdunidadegestora = ''' + trim(DM.QORIGEM.FieldByName('cdunidadegestora').AsString) + ''' '+
       ' and nrempenho = ''' + trim(DM.QORIGEM.FieldByName('nrempenho').AsString) + ''' ';
       dm.LocalizaOrigem.filtered := true;
       if not dm.LocalizaOrigem.IsEmpty then
       begin
         dm.cdstemp.close;
         dm.cdstemp.CommandText := 'select coalesce(max(item),0) as item from despesitem where pkemp = '+ DM.QDESTINO.FieldByName('PKEMPa').asstring;
         dm.cdstemp.open;
         item := dm.cdstemp.FieldByName('item').AsInteger;
         while not dm.LocalizaOrigem.eof do
         begin
           inc(item);
           DM.Localiza5.append;
           DM.Localiza5.FieldByName('MODULO').AsString := 'EMP_OR_AN';
           DM.Localiza5.FieldByName('pkemp').AsInteger := DM.QDESTINO.FieldByName('PKEMPa').AsInteger;
           DM.Localiza5.FieldByName('item').AsInteger := item;
           DM.Localiza5.FieldByName('qtd').Value := DM.LOCALIZAORIGEM.FieldByName('qtitem').Value;
           DM.Localiza5.FieldByName('und').AsString := Tira_Char39(3, DM.LOCALIZAORIGEM.FieldByName('unitem').AsString);
           DM.Localiza5.FieldByName('descr').AsString := Tira_Char39(255, DM.LOCALIZAORIGEM.FieldByName('ds').AsString);
           DM.Localiza5.FieldByName('vlunit').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlunitarioitem').ASCURRENCY*(-1);
           DM.Localiza5.FieldByName('vltotal').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('qtitem').asfloat * DM.LOCALIZAORIGEM.FieldByName('vlunitarioitem').ascurrency*(-1);
           DM.Localiza5.post;
           DM.Localiza5.ApplyUpdates(-1);
           DM.LOCALIZAORIGEM.Next;
         END;
       end;
       if dm.Localiza.FieldByName('reserva').AsInteger > 0 then
       begin
        dm.Localiza6.APPEND;
        dm.Localiza6.FieldByName('MODULO').AsString := 'EMP_OR_AN';
        dm.Localiza6.FieldByName('anu_reserva').Asinteger := dm.Localiza.FieldByName('reserva').Asinteger;
        dm.Localiza6.FieldByName('reserva').Asinteger := 0;
        dm.Localiza6.FieldByName('ficha').Asinteger := dm.Localiza.FieldByName('ficha').Asinteger;
        dm.Localiza6.FieldByName('proc').AsString := dm.Localiza.FieldByName('proc').AsString;
        dm.Localiza6.FieldByName('historico').AsString := 'Anulação ref Emp: ' + dm.localiza.FieldByName('NEMPG').AsString + '/' + dm.localiza.FieldByName('TPEM').AsString + ' - ' + dm.Localiza.FieldByName('produ').AsString;
        dm.Localiza6.FieldByName('data').AsString := dm.qdestino.FieldByName('datae').AsString;
        dm.Localiza6.FieldByName('TIPO_RESERVA').AsString := 'AN';
        dm.Localiza6.FieldByName('VALOR').AsCurrency := dm.qdestino.FieldByName('vadem').AsCurrency;
        dm.Localiza6.FieldByName('vingrupo').AsString := dm.Localiza.FieldByName('vingrupo').AsString;
        dm.Localiza6.FieldByName('vincodigo').AsString := dm.Localiza.FieldByName('vincodigo').AsString;
        dm.Localiza6.Post;
        dm.Localiza6.ApplyUpdates(-1);
        if (Ano.Value = 2011) OR (Ano.Value = 2012) then
        begin
           DM.Atualiza.Close;
           DM.Atualiza.CommandText :=
            'UPDATE RESERVA A ' +
            'SET A.EMPENHADO = (SELECT COALESCE(SUM(D.VADEM), 0) FROM DESPES D WHERE D.RESERVA = '+DM.Localiza.FieldByName('RESERVA').AsString+'), ' +
            '    A.ANULA = (SELECT (COALESCE(SUM(R.ANULA), 0) * -1) FROM RESERVA R WHERE R.TIPO_RESERVA = ''AN'' AND R.ANU_RESERVA = '+DM.Localiza.FieldByName('RESERVA').AsString+') ' +
            'WHERE A.RESERVA = '+DM.Localiza.FieldByName('RESERVA').AsString;
           DM.Atualiza.ExecSQL;
        end;
       end;
    end;
    DM.QOrigem.next;  APPLICATION.ProcessMessages;
  END;
  STATUS.caption := 'Salvando empenhos de anulacção...';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Salvando Itens dos empenhos de anulação....';
  STATUS.update;
  DM.Localiza5.ApplyUpdates(-1);
  STATUS.caption := 'DESPES OR AN OK';
  STATUS.update;
  memoStatus.Lines.Add('Despes OR AN - OK');

  if (Ano.Value = 2011) OR (Ano.Value = 2012) then
  begin
    DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TB_ANULA_RESERVA' + CHAR(39);
    DM.SQL.ExecSQL;
  end;

  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Empenhos_Restos_PROC_NPROC_AUDESP;
var pkemp_new: integer; reserva_anu: integer; fornec: string; codlo_ant: string; cfpro_ant: string; projativ: string; catec_ant: string; desdobro: string; NUMSUB: integer;
  anolicitacao: string; MODLIC: string; obra: boolean; LICIT: string; FUNDLEGAL: string;
begin
{$REGION ' Cria Campos '}
  CriaCampo('DESPES', 'MODULO', '20');
  CriaCampo('DESPESITEM', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'ID_numeroempenho', '20');
  CriaCampo('VIEWLIQ', 'ID_contacontabil', '20');
  // CRIACAMPO('VIEWLIQ', 'id_ano_vigente', '20');
  // CRIACAMPO('VIEWLIQ', 'id_nro_ne', '20');
  // CRIACAMPO('VIEWLIQ', 'id_nro_nl', '20');
  CriaCampo('CADLICITACAO', 'ID_CodLicitacao', '20');
  CriaCampo('CADLICITACAO', 'ID_AnoLicitacao', '20');
  // CriaCampo('DESPES', 'ID_Cod_fornecedor', '20');
  // CriaCampo('DESPES', 'ID_red_gestora', '20');
  // CriaCampo('DESPES', 'ID_nro_ne', '20');
  // CriaCampo('DESPES', 'ID_ano_origem', '20');
  CriaCampo('DESPES', 'ID_contacontabil', '20');
  CriaCampo('DESPES', 'ID_numeroempenho', '20');
  // CriaCampo('DESPES', 'ID_CodProcesso', '20');
  // CriaCampo('DESPES', 'ID_AnoProcesso', '20');
  // CriaCampo('DESPES', 'ID_CodModlicitacao', '20');
  // CriaCampo('DESPES', 'ID_CodLicitacao', '20');
  // CriaCampo('DESPES', 'ID_AnoLicitacao', '20');
  // CriaCampo('DESPES', 'ID_NumEmpenhoIndice', '20');
  // CriaCampo('DESPES', 'ID_NumContrato', '20');
  // CriaCampo('DESPES', 'ID_AnoContrato', '20');
  // CriaCampo('DESPES', 'ID_NumConvenio', '20');
  // CriaCampo('DESPES', 'ID_AnoConvenio', '20');
  // CriaCampo('DESPES', 'ID_NumObra', '20');
  // CriaCampo('DESPES', 'ID_AnoObra', '20');
{$ENDREGION}
{$REGION ' Limpando os restos....'}
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM viewliq where pkemp in (select pkemp from despes where ficha in (select ficha from desdis where balco like ''3211%''))';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESPES where ficha in (select ficha from desdis where balco like ''3211%'')';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM despesitem where pkemp in (select pkemp from despes where ficha in (select ficha from desdis where balco like ''3211%''))';
  DM.Atualiza.ExecSQL;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;
  DM.Atualiza.SQL.text := 'ALTER SEQUENCE GEN_DESPES RESTART WITH ' + inttostr(pkemp_new);
  DM.Atualiza.ExecSQL;
{$ENDREGION}
  SITU.caption := 'RESTOS A PAGAR NAO PROCESSADO & PROCESSADO...';
  SITU.update;

  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT * FROM adp_ccr_emissaoempenho ';
  DM.QAUX.OPEN;
  if DM.QAUX.IsEmpty then
    Showmessage('Dê OK somente depois de carregar XML 14 Contabil & Corrente...');

  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT * FROM DESDIS where balco like ''3211%'' ';
  DM.QAUX.OPEN;

  DM.LOCALIZAORIGEM.close;
  DM.LOCALIZAORIGEM.Commandtext := 'select e.em_ano, e.em_ficha, e.em_num, e.em_item, e.em_data, e.em_anofic,e.em_valor, ' +
    'e.em_codfor,e.em_tlic, e.em_nlic, e.em_lano, e.em_doc, e.em_proc, e.em_dtvenc, ' + 'e.em_historico,e.em_rec, e.em_tipo, e.em_dtliq, e.em_convenio, e.em_anoreq, ' +
    'e.em_requi,e.em_frec, e.em_aplic, e.em_elemento, e.em_anocontr, e.em_contrato, ' +
    'case when (e.em_nlic>0 and e.em_tlic =''01'' and substring(fd.fd_cateco from 7 for 2)=''51'') then ''OBRA CONVITE'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''01'' and substring(fd.fd_cateco from 7 for 2)<>''51'') then ''MAT / SERV - CONVITE'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''02'' and substring(fd.fd_cateco from 7 for 2)=''51'') then ''OBRA - TOMADA'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''02'' and substring(fd.fd_cateco from 7 for 2)<>''51'') then ''MAT / SERV - TOMADA'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''03'' and substring(fd.fd_cateco from 7 for 2)=''51'') then ''OBRA - CONCORRENCIA'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''03'' and substring(fd.fd_cateco from 7 for 2)<>''51'') then ''MAT / SERV - CONCORRENCIA'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''04'') then ''CONCURSO'' ' + '     when (e.em_nlic>0 and e.em_tlic =''07'') then ''INEXIGIBILIDADE'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''08'') then ''PREGÃO PRESENCIAL'' ' + '     when (e.em_nlic>0 and e.em_tlic =''11'') then ''PREGÃO ELETRÔNICO'' ' +
    '     when (e.em_tlic in(''00'',''06'') and substring(fd.fd_cateco from 7 for 2)=''51'' ) then ''OBRA DISPENSA'' ' + '     else ''DISPENSA'' end as licit, ' +
    'case when (e.em_nlic>0 and e.em_tlic =''01'' and substring(fd.fd_cateco from 7 for 2)=''51'') then ''CCO5'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''01'' and substring(fd.fd_cateco from 7 for 2)<>''51'') then ''CCO2'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''02'' and substring(fd.fd_cateco from 7 for 2)=''51'') then ''TOM6'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''02'' and substring(fd.fd_cateco from 7 for 2)<>''51'') then ''TOM3'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''03'' and substring(fd.fd_cateco from 7 for 2)=''51'') then ''CON7'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''03'' and substring(fd.fd_cateco from 7 for 2)<>''51'') then ''CON4'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''04'') then ''CS01'' ' + '     when (e.em_nlic>0 and e.em_tlic =''07'') then ''IN01'' ' +
    '     when (e.em_nlic>0 and e.em_tlic =''08'') then ''PP01'' ' + '     when (e.em_nlic>0 and e.em_tlic =''11'') then ''PE01'' ' +
    '     when (e.em_tlic in(''00'',''06'') and substring(fd.fd_cateco from 7 for 2)=''51'' ) then ''DI02'' ' + '     else ''DI01'' end as MODLIC, ' +
    'case when (e.em_tlic =''07'') then ''INEXIGIBILIDADE (ART. 25)'' ' + '     when e.em_nlic >0 then ''LICITAÇÃO'' else ''DISPENSA'' end as fundlegal ' + 'from empenhos e '
    + 'left join fichas_despesas fd on (extract(year from e.em_data)=fd.fd_ano and e.em_ficha=fd.fd_ficha) ' + 'where e.em_ano<=' + inttostr(ano.Value) +
    ' and e.em_ficha>8999 ' + 'order by  e.em_ficha, e.em_num, e.em_item';

  // SqlDialect_1;
  DM.LOCALIZAORIGEM.OPEN;
  DM.LOCALIZAORIGEM.IndexFieldNames := 'em_ficha;em_num;em_item';
  // p.max := DM.QORIGEM.RecordCount;

  DM.LocalizaDestino.close;
  DM.LocalizaDestino.Commandtext :=
    'select e.entidade_scpi, e.entidade_audesp, e.orgao, e.uo, e.ue, e.funcao, e.subfuncao, e.programa, e.acao, e.classificacao, e.fonterecursos,e.codigoaplicacao,' +
    'e.numeroempenho, e.anoempenho,e.tipoempenho,e.tipocredor,e.numerocredor, e.regimedespesa, e.despesasemlicitacao,e.despesacomlicitacao,e.numerolicitacao,  ' +
    'e.dataemissao, e.contacontabil,e.saldoinicial, case when e.contacontabil like ''531%'' then e.saldoinicial else 0 end as vlr_rp_n, ' +
    'case when e.contacontabil like ''532%'' then e.saldoinicial else 0 end as vlr_rp_p ' + 'from adp_ccr_emissaoempenho e where e.contacontabil like ''53%'' ' +
  // aND e.numeroempenho=''903100759900'' '+
    'order by e.anoempenho,e.dataemissao,e.numeroempenho';
  DM.LocalizaDestino.OPEN;
  p.Max := DM.LocalizaDestino.RecordCount;
  DM.LocalizaDestino.first;
  DM.Localiza5.close;
  DM.Localiza5.Commandtext := 'SELECT * FROM viewliq where pkemp = -1';
  DM.Localiza5.OPEN;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESPES where pkemp = -1';
  DM.QDESTINO.OPEN;

  DM.Localiza2.close;
  DM.Localiza2.Commandtext := 'SELECT * FROM VINCODIGO';
  DM.Localiza2.OPEN;
  DM.Localiza2.IndexFieldNames := 'VINGRUPO;VINCODIGO';
  // DM.Localiza3.CLOSE;
  // DM.Localiza3.Commandtext := ' select * from contratos ';
  // DM.Localiza3.OPEN;
  // DM.Localiza3.IndexFieldNames := 'ID_NumContrato;ID_AnoContrato';
  // DM.Localiza4.CLOSE;
  // DM.Localiza4.Commandtext := ' select * from cadconv ';
  // DM.Localiza4.OPEN;
  // DM.Localiza4.IndexFieldNames := 'ID_NumConvenio; ID_AnoConvenio';
  DM.Localiza5.close;
  DM.Localiza5.Commandtext := 'SELECT * from viewliq where pkemp = -1 ';
  DM.Localiza5.OPEN;
  // DM.Localiza6.CLOSE;
  // DM.Localiza6.Commandtext := 'SELECT FICHA, empresa FROM desdis where extra = ''N'' ';
  // DM.Localiza6.OPEN;
  // DM.Localiza6.IndexFieldNames := 'ID_CodDespesa;empresa';

  WHILE NOT DM.LocalizaDestino.eof DO
  BEGIN
    p.Position := DM.LocalizaDestino.RecNo;
    EM.caption := inttostr(DM.LocalizaDestino.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    if Arredonda(DM.LocalizaDestino.FieldByName('vlr_rp_n').ascurrency, 2) <> 0.00 then
    begin
      DM.QDESTINO.append;
      inc(pkemp_new);
      DM.QDESTINO.FieldByName('PKEMP').AsInteger := pkemp_new;
      fornec := '';
      DM.QDESTINO.FieldByName('ID_numeroempenho').AsString := trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString);
      DM.QDESTINO.FieldByName('nempg').AsInteger := strtoint(copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 5, 6));
      DM.QDESTINO.FieldByName('nempg_xml').AsString := trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString);
      DM.QDESTINO.FieldByName('forn_ident_xml').AsString := trim(DM.LocalizaDestino.FieldByName('numerocredor').AsString);
      DM.QDESTINO.FieldByName('forn_tipo_xml').AsString := trim(DM.LocalizaDestino.FieldByName('tipocredor').AsString);
      DM.QDESTINO.FieldByName('ug_audesp').AsString := trim(DM.LocalizaDestino.FieldByName('orgao').AsString);
      DM.QDESTINO.FieldByName('uo_audesp').AsString := trim(DM.LocalizaDestino.FieldByName('uo').AsString);
      DM.QDESTINO.FieldByName('ue_audesp').AsString := trim(DM.LocalizaDestino.FieldByName('ue').AsString);
      DM.QDESTINO.FieldByName('ID_contacontabil').AsString := trim(DM.LocalizaDestino.FieldByName('contacontabil').AsString);
      DM.QDESTINO.FieldByName('modulo').AsString := 'EMP_RP';
      DM.QDESTINO.FieldByName('ID_em_ano').AsString := inttostr(ano.Value);
      if DM.LocalizaDestino.FieldByName('anoempenho').AsInteger = 2013 then
        DM.QDESTINO.FieldByName('ID_em_ficha').AsString := '9032'
      else
        DM.QDESTINO.FieldByName('ID_em_ficha').AsString := copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 1, 4);
      DM.QDESTINO.FieldByName('ID_em_num').AsString := inttostr(strtoint(copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 5, 6)));
      DM.QDESTINO.FieldByName('ID_em_item').AsString := inttostr(strtoint(copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 11, 2)));
      DM.QDESTINO.FieldByName('FICHA').AsString := Traz_Ficha_Restos(trim(DM.LocalizaDestino.FieldByName('entidade_scpi').AsString), 'N');
      DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.LocalizaDestino.FieldByName('vlr_rp_n').ascurrency;
      DM.QDESTINO.FieldByName('TPEM').AsString := 'EX';
      if trim(DM.LocalizaDestino.FieldByName('tipoempenho').AsString) = '01' then
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'OR'
      else if trim(DM.LocalizaDestino.FieldByName('tipoempenho').AsString) = '02' then
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'GL'
      else
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'ES';
      if trim(DM.LocalizaDestino.FieldByName('regimedespesa').AsString) = '1' then
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'AD';
      DM.QDESTINO.FieldByName('ANO_RESTO').AsString := trim(DM.LocalizaDestino.FieldByName('anoempenho').AsString);
      // if TRIM(DM.LocalizaDestino.FieldByName('dat_ne').AsString) <> '' then
      DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.LocalizaDestino.FieldByName('dataemissao').AsString);
      // ELSE
      // DM.QDESTINO.FieldByName('DATAE').AsString := '02/01/'+trim(DM.LocalizaDestino.FieldByName('anoempenho').AsString);
      codlo_ant := FORMATCURR('00', DM.LocalizaDestino.FieldByName('Orgao').AsInteger) + FORMATCURR('00', DM.LocalizaDestino.FieldByName('uo').AsInteger) +
        FORMATCURR('00', DM.LocalizaDestino.FieldByName('ue').AsInteger);
      DM.QDESTINO.FieldByName('CODLO_ANT').AsString := codlo_ant;
      cfpro_ant := FORMATCURR('00', DM.LocalizaDestino.FieldByName('funcao').AsInteger) + '.' + FORMATCURR('000', DM.LocalizaDestino.FieldByName('subfuncao').AsInteger) + '.'
        + FORMATCURR('0000', DM.LocalizaDestino.FieldByName('programa').AsInteger) + '.' + FORMATCURR('0000', DM.LocalizaDestino.FieldByName('acao').AsInteger) + '.0000';
      DM.QDESTINO.FieldByName('CFPRO_ANT').AsString := cfpro_ant;
      // if copy(trim(DM.LocalizaDestino.FieldByName('cod_despesa').AsString), 7, 2) <> '00' then
      // desdobro := copy(trim(DM.LocalizaDestino.FieldByName('CATEC').AsString), 7, 2)
      // else
      desdobro := '00'; // formatcurr('00',DM.LocalizaDestino.FieldByName('desdobro').asinteger );
      catec_ant := copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 1, 1) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 2,
        1) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 3, 2) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 5,
        2) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 7, 2);
      DM.QDESTINO.FieldByName('CATEC_ANT').AsString := catec_ant;

      MODLIC := '';
{$REGION '  Tipo licitacao.....}
      if copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 5, 2) = '51' then
        obra := true;
      if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '1' then
      begin
        LICIT := 'CONCURSO';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CS01'
      end
      else if ((not obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '2')) then
      begin
        LICIT := 'MAT / SERV - CONVITE';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CCO2'
      end
      else if ((obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '2')) then
      begin
        LICIT := 'OBRA - CONVITE';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CCO5'
      end
      else if ((not obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '3')) then
      begin
        LICIT := 'MAT / SERV - TOMADA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'TOM3'
      end
      else if ((obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '3')) then
      begin
        LICIT := 'OBRA - TOMADA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'TOM6'
      end
      else if ((not obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '4')) then
      begin
        LICIT := 'MAT / SERV - CONCORRENCIA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CON4'
      end
      else if ((obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '4')) then
      begin
        LICIT := 'OBRA - CONCORRENCIA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CON7'
      end
      else if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '7' then
      begin
        LICIT := 'PREGÃO PRESENCIAL';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'PP01'
      end
      else if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '8' then
      begin
        LICIT := 'PREGÃO ELETRÔNICO';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'PE01'
      end
      else if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) <> '' then
      begin
        LICIT := 'DISPENSA';
        FUNDLEGAL := 'DISPENSA';
        MODLIC := 'DI01';
      end;

      if trim(DM.LocalizaDestino.FieldByName('despesasemlicitacao').AsString) = '6' then
      begin
        LICIT := 'INEXIGIBILIDADE';
        FUNDLEGAL := 'INEXIGIBILIDADE (ART. 25)';
        MODLIC := 'IN01'
      end
      else if ((trim(DM.LocalizaDestino.FieldByName('despesasemlicitacao').AsString) = '5') or (trim(DM.LocalizaDestino.FieldByName('despesasemlicitacao').AsString) = '9'))
      then
      begin
        LICIT := 'DISPENSA';
        FUNDLEGAL := 'DISPENSA';
        MODLIC := 'DI01';
      end;
{$ENDREGION}
      if trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString) <> '' then
      BEGIN
        obra := false;
        anolicitacao := copy(trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString),
          POS('/', trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString)) + 1, 4);

        DM.QDESTINO.FieldByName('PROCLIC').AsString := retorna_nrlicitacao(trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString), anolicitacao,
          trim(DM.LocalizaDestino.FieldByName('entidade_scpi').AsString), MODLIC);
        DM.QDESTINO.FieldByName('proclic_xml').AsString := trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString);
        DM.QDESTINO.FieldByName('LICIT').AsString := LICIT;
        DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := FUNDLEGAL;
      END
      ELSE
      BEGIN
        DM.QDESTINO.FieldByName('LICIT').AsString := LICIT;
        DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := FUNDLEGAL;
      END;
      fornec := '';
      DM.QDESTINO.FieldByName('CODIF').AsString := Traz_Codif_pelo_audesp(DM.LocalizaDestino.FieldByName('numerocredor').AsString);
      if DM.QDESTINO.FieldByName('CODIF').AsString = '0' then
        fornec := 'Fornec/UG não encontrado: ' + trim(DM.LocalizaDestino.FieldByName('numerocredor').AsString) + '/' +
          trim(DM.LocalizaDestino.FieldByName('entidade_scpi').AsString) + ' ';

      DM.QDESTINO.FieldByName('PRODU').AsString := fornec;

      if DM.LOCALIZAORIGEM.FindKey([inttostr(strtoint(DM.QDESTINO.FieldByName('ID_em_ficha').AsString)), inttostr(strtoint(DM.QDESTINO.FieldByName('ID_em_num').AsString)),
        inttostr(strtoint(DM.QDESTINO.FieldByName('ID_em_item').AsString))]) then
      begin
        if trim(DM.LOCALIZAORIGEM.FieldByName('em_proc').AsString) <> '0' then
          DM.QDESTINO.FieldByName('PROC').AsString := trim(DM.LOCALIZAORIGEM.FieldByName('em_proc').AsString);
        // +'/'+trim(DM.QORIGEM.FieldByName('AnoProcesso').AsString);

        DM.QDESTINO.FieldByName('PRODU').AsString := fornec + Tira_Char39(4096, DM.LOCALIZAORIGEM.FieldByName('em_historico').AsString);
      end;
      if trim(DM.QDESTINO.FieldByName('PRODU').AsString) = '' then
        DM.QDESTINO.FieldByName('PRODU').AsString := 'ACERTAR ESSE EMPENHO MANUALMENTE';
      DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
      DM.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
      // if trim(DM.LocalizaDestino.FieldByName('CodFonteRecurso').AsString) <> '' then
      DM.QDESTINO.FieldByName('frg').AsString := '9' + copy(trim(DM.LocalizaDestino.FieldByName('fonterecursos').AsString), 2, 1);
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(trim(DM.LocalizaDestino.FieldByName('codigoaplicacao').AsString), 1, 3);
      DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000'; // formatcurr('000',DM.LocalizaDestino.FieldByName('CodAplicacaoVariavel').Asinteger);
      Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');

      DM.QDESTINO.post;
      IF DM.QDESTINO.ApplyUpdates(-1) > 0 THEN
        DM.QDESTINO.CANCELUPDATES;
    end;
{$REGION ' PROCESSADO EMP + LIQ '}
    // ****  PROCESSADO
    if Arredonda(DM.LocalizaDestino.FieldByName('vlr_rp_p').ascurrency, 2) <> 0.00 then
    begin
      DM.QDESTINO.append;
      inc(pkemp_new);
      DM.QDESTINO.FieldByName('PKEMP').AsInteger := pkemp_new;
      fornec := '';
      DM.QDESTINO.FieldByName('nempg').AsInteger := strtoint(copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 5, 6));
      DM.QDESTINO.FieldByName('nempg_xml').AsString := trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString);
      DM.QDESTINO.FieldByName('forn_ident_xml').AsString := trim(DM.LocalizaDestino.FieldByName('numerocredor').AsString);
      DM.QDESTINO.FieldByName('forn_tipo_xml').AsString := trim(DM.LocalizaDestino.FieldByName('tipocredor').AsString);
      DM.QDESTINO.FieldByName('proclic_xml').AsString := trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString);
      DM.QDESTINO.FieldByName('ug_audesp').AsString := trim(DM.LocalizaDestino.FieldByName('orgao').AsString);
      DM.QDESTINO.FieldByName('uo_audesp').AsString := trim(DM.LocalizaDestino.FieldByName('uo').AsString);
      DM.QDESTINO.FieldByName('ue_audesp').AsString := trim(DM.LocalizaDestino.FieldByName('ue').AsString);
      DM.QDESTINO.FieldByName('ID_contacontabil').AsString := trim(DM.LocalizaDestino.FieldByName('contacontabil').AsString);
      DM.QDESTINO.FieldByName('modulo').AsString := 'EMP_RP';
      DM.QDESTINO.FieldByName('ID_numeroempenho').AsString := trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString);
      DM.QDESTINO.FieldByName('ID_em_ano').AsString := inttostr(ano.Value);
      if DM.LocalizaDestino.FieldByName('anoempenho').AsInteger = 2013 then
        DM.QDESTINO.FieldByName('ID_em_ficha').AsString := '9032'
      else
        DM.QDESTINO.FieldByName('ID_em_ficha').AsString := copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 1, 4);
      DM.QDESTINO.FieldByName('ID_em_num').AsString := inttostr(strtoint(copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 5, 6)));
      DM.QDESTINO.FieldByName('ID_em_item').AsString := inttostr(strtoint(copy(trim(DM.LocalizaDestino.FieldByName('numeroempenho').AsString), 11, 2)));
      DM.QDESTINO.FieldByName('FICHA').AsString := Traz_Ficha_Restos(trim(DM.LocalizaDestino.FieldByName('entidade_scpi').AsString), 'S');
      DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.LocalizaDestino.FieldByName('vlr_rp_p').ascurrency;
      DM.QDESTINO.FieldByName('TPEM').AsString := 'EX';
      if trim(DM.LocalizaDestino.FieldByName('tipoempenho').AsString) = '01' then
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'OR'
      else if trim(DM.LocalizaDestino.FieldByName('tipoempenho').AsString) = '02' then
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'GL'
      else
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'ES';
      if trim(DM.LocalizaDestino.FieldByName('regimedespesa').AsString) = '1' then
        DM.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'AD';
      DM.QDESTINO.FieldByName('ANO_RESTO').AsString := trim(DM.LocalizaDestino.FieldByName('anoempenho').AsString);
      // if TRIM(DM.LocalizaDestino.FieldByName('dat_ne').AsString) <> '' then
      DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.LocalizaDestino.FieldByName('dataemissao').AsString);
      // ELSE
      // DM.QDESTINO.FieldByName('DATAE').AsString := '02/01/'+trim(DM.LocalizaDestino.FieldByName('anoempenho').AsString);
      codlo_ant := FORMATCURR('00', DM.LocalizaDestino.FieldByName('Orgao').AsInteger) + FORMATCURR('00', DM.LocalizaDestino.FieldByName('uo').AsInteger) +
        FORMATCURR('00', DM.LocalizaDestino.FieldByName('ue').AsInteger);
      DM.QDESTINO.FieldByName('CODLO_ANT').AsString := codlo_ant;
      cfpro_ant := FORMATCURR('00', DM.LocalizaDestino.FieldByName('funcao').AsInteger) + '.' + FORMATCURR('000', DM.LocalizaDestino.FieldByName('subfuncao').AsInteger) + '.'
        + FORMATCURR('0000', DM.LocalizaDestino.FieldByName('programa').AsInteger) + '.' + FORMATCURR('0000', DM.LocalizaDestino.FieldByName('acao').AsInteger) + '.0000';
      DM.QDESTINO.FieldByName('CFPRO_ANT').AsString := cfpro_ant;
      // if copy(trim(DM.LocalizaDestino.FieldByName('cod_despesa').AsString), 7, 2) <> '00' then
      // desdobro := copy(trim(DM.LocalizaDestino.FieldByName('CATEC').AsString), 7, 2)
      // else
      desdobro := '00'; // formatcurr('00',DM.LocalizaDestino.FieldByName('desdobro').asinteger );
      catec_ant := copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 1, 1) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 2,
        1) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 3, 2) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 5,
        2) + '.' + copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 7, 2);
      DM.QDESTINO.FieldByName('CATEC_ANT').AsString := catec_ant;
      MODLIC := '';
{$REGION '  Tipo de licitacao.'}
      if copy(trim(DM.LocalizaDestino.FieldByName('classificacao').AsString), 5, 2) = '51' then
        obra := true;
      if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '1' then
      begin
        LICIT := 'CONCURSO';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CS01'
      end
      else if ((not obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '2')) then
      begin
        LICIT := 'MAT / SERV - CONVITE';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CCO2'
      end
      else if ((obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '2')) then
      begin
        LICIT := 'OBRA - CONVITE';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CCO5'
      end
      else if ((not obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '3')) then
      begin
        LICIT := 'MAT / SERV - TOMADA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'TOM3'
      end
      else if ((obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '3')) then
      begin
        LICIT := 'OBRA - TOMADA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'TOM6'
      end
      else if ((not obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '4')) then
      begin
        LICIT := 'MAT / SERV - CONCORRENCIA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CON4'
      end
      else if ((obra) and (trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '4')) then
      begin
        LICIT := 'OBRA - CONCORRENCIA';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'CON7'
      end
      else if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '7' then
      begin
        LICIT := 'PREGÃO PRESENCIAL';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'PP01'
      end
      else if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) = '8' then
      begin
        LICIT := 'PREGÃO ELETRÔNICO';
        FUNDLEGAL := 'LICITAÇÃO';
        MODLIC := 'PE01'
      end
      else if trim(DM.LocalizaDestino.FieldByName('despesacomlicitacao').AsString) <> '' then
      begin
        LICIT := 'DISPENSA';
        FUNDLEGAL := 'DISPENSA';
        MODLIC := 'DI01';
      end;

      if trim(DM.LocalizaDestino.FieldByName('despesasemlicitacao').AsString) = '6' then
      begin
        LICIT := 'INEXIGIBILIDADE';
        FUNDLEGAL := 'INEXIGIBILIDADE (ART. 25)';
        MODLIC := 'IN01'
      end
      else if ((trim(DM.LocalizaDestino.FieldByName('despesasemlicitacao').AsString) = '5') or (trim(DM.LocalizaDestino.FieldByName('despesasemlicitacao').AsString) = '9'))
      then
      begin
        LICIT := 'DISPENSA';
        FUNDLEGAL := 'DISPENSA';
        MODLIC := 'DI01';
      end;
{$ENDREGION}
      if trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString) <> '' then
      BEGIN
        obra := false;
        anolicitacao := copy(trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString),
          POS('/', trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString)) + 1, 4);

        DM.QDESTINO.FieldByName('PROCLIC').AsString := retorna_nrlicitacao(trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString), anolicitacao,
          trim(DM.LocalizaDestino.FieldByName('entidade_scpi').AsString), MODLIC);
        DM.QDESTINO.FieldByName('proclic_xml').AsString := trim(DM.LocalizaDestino.FieldByName('numerolicitacao').AsString);
        DM.QDESTINO.FieldByName('LICIT').AsString := LICIT;
        DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := FUNDLEGAL;
      END
      ELSE
      BEGIN
        DM.QDESTINO.FieldByName('LICIT').AsString := LICIT;
        DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := FUNDLEGAL;
      END;

      fornec := '';
      DM.QDESTINO.FieldByName('CODIF').AsString := Traz_Codif_pelo_audesp(DM.LocalizaDestino.FieldByName('numerocredor').AsString);
      if DM.QDESTINO.FieldByName('CODIF').AsString = '0' then
        fornec := 'Fornec/UG não encontrado: ' + trim(DM.LocalizaDestino.FieldByName('numerocredor').AsString) + '/' +
          trim(DM.LocalizaDestino.FieldByName('entidade_scpi').AsString) + ' ';

      DM.QDESTINO.FieldByName('PRODU').AsString := fornec;

      if DM.LOCALIZAORIGEM.FindKey([inttostr(strtoint(DM.QDESTINO.FieldByName('ID_em_ficha').AsString)), inttostr(strtoint(DM.QDESTINO.FieldByName('ID_em_num').AsString)),
        inttostr(strtoint(DM.QDESTINO.FieldByName('ID_em_item').AsString))]) then
      begin
        if trim(DM.LOCALIZAORIGEM.FieldByName('em_proc').AsString) <> '0' then
          DM.QDESTINO.FieldByName('PROC').AsString := trim(DM.LOCALIZAORIGEM.FieldByName('em_proc').AsString);
        // +'/'+trim(DM.QORIGEM.FieldByName('AnoProcesso').AsString);

        DM.QDESTINO.FieldByName('PRODU').AsString := fornec + Tira_Char39(4096, DM.LOCALIZAORIGEM.FieldByName('em_historico').AsString);
      end;

      if trim(DM.QDESTINO.FieldByName('PRODU').AsString) = '' then
        DM.QDESTINO.FieldByName('PRODU').AsString := 'ACERTAR ESSE EMPENHO MANUALMENTE';
      DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
      DM.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
      // if trim(DM.LocalizaDestino.FieldByName('CodFonteRecurso').AsString) <> '' then
      DM.QDESTINO.FieldByName('frg').AsString := '9' + copy(trim(DM.LocalizaDestino.FieldByName('fonterecursos').AsString), 2, 1);
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(trim(DM.LocalizaDestino.FieldByName('codigoaplicacao').AsString), 1, 3);
      DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000'; // formatcurr('000',DM.LocalizaDestino.FieldByName('CodAplicacaoVariavel').Asinteger);
      Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');
      APPLICATION.ProcessMessages;
      DM.QDESTINO.post;
      IF DM.QDESTINO.ApplyUpdates(-1) > 0 THEN
        DM.QDESTINO.CANCELUPDATES;
{$REGION 'Viewliq do preocessado'}
      /// ****************** VIEWLIQ DO PROCESSADO  ************
      DM.LocalizaDestino2.close;
      DM.LocalizaDestino2.Commandtext :=
        ' select l.entidade_scpi, l.entidade_audesp, l.orgao, l.uo, l.ue, l.numeroempenho, l.anoempenho, l.datavencimento, l.contacontabil, l.saldoinicial ' +
        ' from adp_ccr_vencimentoempenho l where l.contacontabil like ''63%'' and l.orgao =''' + DM.LocalizaDestino.FieldByName('orgao').AsString + ''' ' + ' and uo = ''' +
        DM.LocalizaDestino.FieldByName('uo').AsString + ''' and ue =''' + DM.LocalizaDestino.FieldByName('ue').AsString + ''' ' + ' and numeroempenho = ''' +
        DM.LocalizaDestino.FieldByName('numeroempenho').AsString + ''' and anoempenho= ''' + DM.LocalizaDestino.FieldByName('anoempenho').AsString + ''' ' +
        ' order by l.numeroempenho';
      DM.LocalizaDestino2.OPEN;
      if not DM.LocalizaDestino2.IsEmpty then
      begin
        DM.LocalizaDestino2.first;
        NUMSUB := 0;
        while not DM.LocalizaDestino2.eof do
        begin
          inc(NUMSUB);
          DM.Localiza5.append;
          DM.Localiza5.FieldByName('modulo').AsString := 'EMP_RP';
          DM.Localiza5.FieldByName('id_lq_num').AsString := DM.QDESTINO.FieldByName('ID_em_num').AsString;
          DM.Localiza5.FieldByName('id_lq_item').AsString := DM.QDESTINO.FieldByName('ID_em_item').AsString;
          DM.Localiza5.FieldByName('id_lq_ficha').AsString := DM.QDESTINO.FieldByName('ID_em_ficha').AsString;
          DM.Localiza5.FieldByName('id_numeroempenho').AsString := trim(DM.LocalizaDestino2.FieldByName('numeroempenho').AsString);
          DM.Localiza5.FieldByName('id_contacontabil').AsString := trim(DM.LocalizaDestino2.FieldByName('contacontabil').AsString);
          DM.Localiza5.FieldByName('pkemp').AsInteger := DM.QDESTINO.FieldByName('pkemp').AsInteger;
          DM.Localiza5.FieldByName('numsub').AsInteger := NUMSUB;
          DM.Localiza5.FieldByName('NEMPF').AsInteger := 0;
          DM.Localiza5.FieldByName('IE').AsInteger := 0;
          DM.Localiza5.FieldByName('NEMPV').AsInteger := 0;
          DM.Localiza5.FieldByName('FASE').AsInteger := 0;
          DM.Localiza5.FieldByName('VADEM').ascurrency := DM.LocalizaDestino2.FieldByName('saldoinicial').ascurrency;
          DM.Localiza5.FieldByName('PRODU').AsString := DM.QDESTINO.FieldByName('PRODU').AsString;
          DM.Localiza5.FieldByName('DATAE').AsString := ValiData(DM.LocalizaDestino2.FieldByName('datavencimento').AsString);
          DM.Localiza5.FieldByName('VENCI').AsString := ValiData(DM.LocalizaDestino2.FieldByName('datavencimento').AsString);
          DM.Localiza5.post;
          DM.Localiza5.ApplyUpdates(-1);
          DM.LocalizaDestino2.next;
        end;
      end
      else
      begin
        DM.Localiza5.append;
        DM.Localiza5.FieldByName('modulo').AsString := 'EMP_RP';
        DM.Localiza5.FieldByName('id_lq_num').AsString := DM.QDESTINO.FieldByName('ID_em_num').AsString;
        DM.Localiza5.FieldByName('id_lq_item').AsString := DM.QDESTINO.FieldByName('ID_em_item').AsString;
        DM.Localiza5.FieldByName('id_lq_ficha').AsString := DM.QDESTINO.FieldByName('ID_em_ficha').AsString;
        DM.Localiza5.FieldByName('id_numeroempenho').AsString := trim(DM.QDESTINO.FieldByName('id_numeroempenho').AsString);
        DM.Localiza5.FieldByName('id_contacontabil').AsString := trim(DM.QDESTINO.FieldByName('id_contacontabil').AsString);
        DM.Localiza5.FieldByName('pkemp').AsInteger := DM.QDESTINO.FieldByName('pkemp').AsInteger;
        DM.Localiza5.FieldByName('numsub').AsInteger := 1;
        DM.Localiza5.FieldByName('NEMPF').AsInteger := 0;
        DM.Localiza5.FieldByName('IE').AsInteger := 0;
        DM.Localiza5.FieldByName('NEMPV').AsInteger := 0;
        DM.Localiza5.FieldByName('FASE').AsInteger := 0;
        DM.Localiza5.FieldByName('VADEM').ascurrency := DM.QDESTINO.FieldByName('VADEM').ascurrency;
        DM.Localiza5.FieldByName('PRODU').AsString := 'Não existe liq na audesp - ' + DM.QDESTINO.FieldByName('PRODU').AsString;
        DM.Localiza5.FieldByName('DATAE').AsString := ValiData(DM.QDESTINO.FieldByName('DATAE').AsString);
        DM.Localiza5.FieldByName('VENCI').AsString := ValiData(DM.QDESTINO.FieldByName('DATAE').AsString);
        DM.Localiza5.post;
        DM.Localiza5.ApplyUpdates(-1);
      end;
{$ENDREGION}
    end;
{$ENDREGION}
    DM.LocalizaDestino.next;
    APPLICATION.ProcessMessages;
  END;
  STATUS.caption := 'DESPES RP OK';
  STATUS.update;
  memoStatus.Lines.Add('Despes RP - OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Empenhos_Restos_PROC_NPROC;
var pkemp_new: integer; reserva_anu: integer; fornec: string; achou_liquidacao: string; NUMSUB: integer; documento: string; nota: string;
  Historico: string;
  erros: Integer;
  PROCLIC: string;
  LICIT: string;
  FUNDLEGAL: string;
  MODLIC: string;
  pkemp_ant: integer;
  item: Integer;
  total: Extended;
begin
  Desliga_Triggers;
{$REGION 'Cria campos.'}
  CriaCampo('DESPES', 'MODULO', '20');
  CriaCampo('DESPESITEM', 'MODULO', '20');
  CriaCampo('VIEWLIQ', 'MODULO', '20');
  // CriaCampo('CADLICITACAO', 'ID_em_nlic', '20');
  // CriaCampo('CADLICITACAO', 'ID_em_lano', '20');
  CriaCampo('DESPES', 'ID_cdtipolicitacao', '20');
  CriaCampo('DESPES', 'id_nrlicitacao', '20');
  CriaCampo('DESPES', 'ID_dtanolicitacao', '20');
  CriaCampo('DESPES', 'ID_nrcontrato', '20');
  CriaCampo('DESPES', 'ID_dtanocontrato', '20');
  CriaCampo('DESPES', 'ID_nrprocessocompra', '20');
  CriaCampo('DESPES', 'ID_dtanoprocessocompra', '20');
  // CriaCampo('DESPES', 'ID_em_anoreq', '20');
  // CriaCampo('DESPES', 'ID_em_ano', '20');
  // CriaCampo('DESPES', 'ID_em_num', '20');
  // CriaCampo('DESPES', 'ID_em_item', '20');
  // CriaCampo('DESPES', 'ID_em_seq', '20');
  // CriaCampo('DESPES', 'ID_em_ficha', '20');
  // CriaCampo('DESPES', 'ID_em_doc', '20');
  // CriaCampo('DESPES', 'ID_em_nlic', '20');
  // CriaCampo('DESPES', 'ID_em_lano', '20');
  // CriaCampo('DESPES', 'ID_em_rec', '20');
  // CriaCampo('DESPES', 'ID_em_vinc', '20');
  // CriaCampo('DESPES', 'ID_em_frec', '20');
  // CriaCampo('DESPES', 'ID_em_Contrato', '20');
  // CriaCampo('DESPES', 'ID_em_AnoContr', '20');
  // CriaCampo('DESPES', 'ID_em_convenio', '20');
  // CriaCampo('DESPES', 'ID_contacontabil', '20');
  // CriaCampo('DESPES', 'ID_numeroempenho', '20');
  // CriaCampo('viewliq', 'ID_contacontabil', '20');
  // CriaCampo('viewliq', 'ID_numeroempenho', '20');
  // CriaCampo('DESPES', 'ID_ANOEMPENHO', '20');
  // CriaCampo('DESPES', 'ID_NumObra', '20');
  // CriaCampo('DESPES', 'ID_AnoObra', '20');
{$ENDREGION}
{$REGION ' Limpando os restos....'}
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM viewliq where pkemp in (select pkemp from despes where ficha in (select ficha from desdis where balco like ''3211%''))';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESPES where ficha in (select ficha from desdis where balco like ''3211%'')';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM despesitem where pkemp in (select pkemp from despes where ficha in (select ficha from desdis where balco like ''3211%''))';
  DM.Atualiza.ExecSQL;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT COALESCE(max(pkemp),0) as pkemp FROM DESPES';
  DM.QAUX.OPEN;
  pkemp_new := DM.QAUX.FieldByName('pkemp').AsInteger;
  DM.Atualiza.SQL.text := 'ALTER SEQUENCE GEN_DESPES RESTART WITH ' + inttostr(pkemp_new);
  DM.Atualiza.ExecSQL;
{$ENDREGION}
  SITU.caption := 'EMPENHOS RESTOS PROCESSADOS E NAO PROCESSADOS...';
  SITU.update;

//  DM.QAUX.close;
//  DM.QAUX.Commandtext := 'SELECT * FROM DESDIS where balco like ''3211%'' ';
//  DM.QAUX.OPEN;
{$REGION ' SQL ORIGEM para listar os restos.'}
  DM.QOrigem.close;
  if ano.Value > 2011 then
    DM.QOrigem.Commandtext :=
        'SELECT C.CDAPLICACAO AS VINGRUPO,A.CDFONTERECURSO AS FONGRUPO,A.NRLICITACAO, * ' +
        'FROM ['+BNC_CPE+'].[DBO].EMPENHO A ' +
        'INNER JOIN ['+BNC_CPE+'].[DBO].VALORESEMPENHO B ON A.NREMPENHO = B.NREMPENHO AND  A.DTANOEMISSAO = B.DTANOEMISSAO AND A.CDUNIDADEGESTORA = B.CDUNIDADEGESTORA ' +
        'LEFT JOIN ['+BNC_CPE+'].DBO.CODIGOAPLICACAO C ON C.IDCODIGOAPLICACAO = A.CDAPLICACAO ' +
        'WHERE A.DTANOEMISSAO < '+Ano.Text+' AND B.DTANOEMISSAO < '+Ano.Text+' AND B.NRSEQUENCIASUBEMPENHO = 0 AND VLEMPENHADO <> 0.00 ' +
        'ORDER BY A.CDUNIDADEGESTORA,A.DTANOEMISSAO,A.NREMPENHO'
  else
    DM.QOrigem.Commandtext :=
      'SELECT C.CDAPLICACAO AS VINGRUPO,A.CDFONTERECURSO AS FONGRUPO,A.NRLICITACAO, * ' +
      'FROM ['+BNC_CPE+'].[DBO].EMPENHO A ' +
      'INNER JOIN ['+BNC_CPE+'].[DBO].VALORESEMPENHO B ON A.NREMPENHO = B.NREMPENHO AND  A.DTANOEMISSAO = B.DTANOEMISSAO AND A.CDUNIDADEGESTORA = B.CDUNIDADEGESTORA ' +
      'LEFT JOIN ['+BNC_CPE+'].DBO.CODIGOAPLICACAO C ON C.CDAPLICACAO = A.CDAPLICACAO ' +
      'WHERE A.DTANOEMISSAO < '+Ano.Text+' AND B.DTANOEMISSAO < '+Ano.Text+' AND B.NRSEQUENCIASUBEMPENHO = 0 AND VLEMPENHADO <> 0.00 ' +
      'ORDER BY A.CDUNIDADEGESTORA,A.DTANOEMISSAO,A.NREMPENHO'      ;
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  DM.QOrigem.first;
{$ENDREGION}
  // lista as liquidacoes de restos
  DM.LOCALIZAORIGEM.CLOSE;
  DM.LOCALIZAORIGEM.Commandtext := ' select * from  ' + BNC_CPE + '.dbo.movimentovencimentoempenho where year(dtmovimento) < ' + Ano.text +
  ' and invencimento <> ''4'' order by nrempenho,dtmovimento ';
  DM.LOCALIZAORIGEM.OPEN;
  // itens do empenho
  dm.ATUALIZAORIGEM.CLOSE;
  dm.ATUALIZAORIGEM.Commandtext := 'SELECT cast(dsitem as varchar(2048)) as ds,* FROM [' + BNC_CPE + '].[dbo].ITENSEMPENHO WHERE DTANOEMISSAO<' + Ano.text + '';
  dm.ATUALIZAORIGEM.OPEN;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESPES where pkemp = -1';
  DM.QDESTINO.OPEN;

  // DM.Localiza.CLOSE;
  // DM.Localiza.Commandtext := 'SELECT * FROM RESERVA';
  // DM.Localiza.OPEN;
  // DM.Localiza.IndexFieldNames := 'ID_CodAdministracao;ID_CodCredor;ID_CodDespesa;ID_NumEmpenho';
//  DM.Localiza2.close;
//  DM.Localiza2.Commandtext := 'SELECT * FROM VINCODIGO';
//  DM.Localiza2.OPEN;
//  DM.Localiza2.IndexFieldNames := 'VINGRUPO;VINCODIGO';

  DM.Localiza3.close;
  DM.Localiza3.Commandtext := ' select * from contratos ';
  DM.Localiza3.OPEN;
  DM.Localiza3.IndexFieldNames := 'id_contrato;ID_CDUNIDADEGESTORA;ID_CDFORNECEDOR';
  DM.Localiza4.CLOSE;
  DM.Localiza4.Commandtext := ' select * from cadconv ';
  DM.Localiza4.OPEN;
  DM.Localiza4.IndexFieldNames := 'ID_CDUNIDADEGESTORA;id_convenioinicial';
  DM.Localiza5.close;
  DM.Localiza5.Commandtext := 'SELECT * FROM VIEWLIQ WHERE PKEMP = -1';
  DM.Localiza5.OPEN;
  DM.Localiza6.CLOSE;
  DM.Localiza6.Commandtext := 'select * from despesitem where pkemp = -1 ';
  DM.Localiza6.OPEN;

   DM.Localiza7.CLOSE;
   DM.Localiza7.Commandtext := 'SELECT FICHA, empresa, rproc FROM desdis where extra = ''S''';
   DM.Localiza7.OPEN;
   DM.Localiza7.IndexFieldNames := 'empresa;rproc';

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(DM.QOrigem.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    {$region ' Despes processado '}
    if dm.QOrigem.FieldByName('VLINICIALPROCESSADO').AsFloat <> 0.00 then
    begin
      DM.QDESTINO.append;
      inc(pkemp_new);
      DM.QDESTINO.FieldByName('PKEMP').AsInteger := pkemp_new;
      DM.QDESTINO.FieldByName('NEMPG').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('MODULO').AsString := 'EMP_RP';
      DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
      DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
      DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
      DM.QDESTINO.FieldByName('ID_cdtipolicitacao').AsString := trim(DM.QOrigem.FieldByName('cdtipolicitacao').AsString);
      DM.QDESTINO.FieldByName('id_nrlicitacao').AsString := trim(DM.QOrigem.FieldByName('nrlicitacao').AsString);
      DM.QDESTINO.FieldByName('ID_dtanolicitacao').AsString := trim(DM.QOrigem.FieldByName('dtanolicitacao').AsString);
      DM.QDESTINO.FieldByName('ID_nrcontrato').AsString := trim(DM.QOrigem.FieldByName('nrcontrato').AsString);
      DM.QDESTINO.FieldByName('ID_dtanocontrato').AsString := trim(DM.QOrigem.FieldByName('dtanocontrato').AsString);
      DM.QDESTINO.FieldByName('ID_nrprocessocompra').AsString := trim(DM.QOrigem.FieldByName('nrprocessocompra').AsString);
      DM.QDESTINO.FieldByName('ID_dtanoprocessocompra').AsString := trim(DM.QOrigem.FieldByName('dtanoprocessocompra').AsString);
      DM.QDESTINO.FieldByName('TPEM').AsString := 'EX';
      case dm.QORIGEM.FieldByName('CDTIPOEMPENHO').Asinteger of
        1:
          dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'OR';
        2:
          dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'GL';
        3:
          dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'ES';
      else
        dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'OR';
      if dm.QORIGEM.FieldByName('CDobjetoDESPESA').asinteger = 4 then
        dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'AD';
      end;
      DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.QOrigem.FieldByName('dtemissaoempenho').AsString);
      if dm.Localiza7.FindKey([Traz_Entidade(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString)),'S']) then
        DM.QDESTINO.FieldByName('FICHA').AsString := dm.Localiza7.FieldByName('FICHA').AsString;
      DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('VLINICIALPROCESSADO').ascurrency;
      DM.QDESTINO.FieldByName('ANO_RESTO').AsString := DM.QOrigem.FieldByName('dtanoemissao').AsString;

      IF trim(DM.QOrigem.FieldByName('NRCONTRATO').AsString) <> '' THEN
      BEGIN
        IF DM.Localiza3.FindKey([trim(DM.QOrigem.FieldByName('NRCONTRATO').AsString), trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),
          trim(DM.QOrigem.FieldByName('cdfornecedor').AsString)]) THEN
          DM.QDESTINO.FieldByName('CONTRATO').AsString := DM.Localiza3.FieldByName('codigo').AsString;
      END;
  //    IF ((trim(DM.QORIGEM.FieldByName('em_Convenio').AsString) <> '') and (trim(DM.QORIGEM.FieldByName('em_Convenio').AsString) <> '0')) THEN
  //    BEGIN
  //      IF DM.Localiza4.FindKey([trim(DM.QORIGEM.FieldByName('em_Convenio').AsString), trim(DM.QORIGEM.FieldByName('AnoConvenio').AsString)]) THEN
  //       DM.QDESTINO.FieldByName('convenio').ASINTEGER := DM.Localiza4.FieldByName('convenio').ASINTEGER;
  //    END;
      if (copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 1, 1) <> '0') and (copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 1, 1) <> '') then
      begin
        dm.QDESTINO.FieldByName('CODLO_ANT').AsString := FORMATCURR('00', dm.QORIGEM.FieldByName('CDORGAORESTOS').Asinteger) + FORMATCURR('00', dm.QORIGEM.FieldByName('CDUNIDADERESTOS').Asinteger) + FORMATCURR('00', dm.QORIGEM.FieldByName('cddepartamentorestos').Asinteger);
        dm.QDESTINO.FieldByName('CFPRO_ANT').AsString := FORMATCURR('00', dm.QORIGEM.FieldByName('CDFUNCAORESTOS').Asinteger) + '.' + FORMATCURR('000', dm.QORIGEM.FieldByName('CDPROGRAMARESTOS').Asinteger) + '.' + FORMATCURR('0000', dm.QORIGEM.FieldByName('CDSUBPROGRAMARESTOS').Asinteger) + '.' + copy(dm.QORIGEM.FieldByName('CDPROJETOATIVIDADERESTOS').AsString, 1, 4) + '.0000';
        dm.QDESTINO.FieldByName('CATEC_ANT').AsString := copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 1, 1) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 2, 1) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 3, 2) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 5, 2) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 7, 2);
      end;
      dm.QDESTINO.FieldByName('VENCI').AsString := Formatdatetime('dd/mm/yyyy', dm.QORIGEM.FieldByName('DTEMISSAOEMPENHO').ASDATETIME);
      {$region ' Licitação..... '}
      IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '1' THEN
      BEGIN
        PROCLIC := '';
        MODLIC := '';
        LICIT := 'OUTRO';
        FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '2' THEN
      BEGIN
        PROCLIC := '';
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'DI02';
          LICIT := 'OBRA DISPENSA';
        end
        else
        begin
          MODLIC := 'DI01';
          LICIT := 'DISPENSA';
        end;
        FUNDLEGAL := 'DISPENSA';
      END
     ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '3' THEN
      BEGIN
       PROCLIC := '';
       if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'DI02';
          LICIT := 'OBRA DISPENSA';
        end
        else
        begin
         MODLIC := 'DI01';
         LICIT := 'DISPENSA (ART. 24)';
        end;
       FUNDLEGAL := 'DISPENSA (ART. 24)';
      END
     ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '4' THEN
      BEGIN
        PROCLIC := '';
        MODLIC := 'IN01';
        LICIT := 'INEXIGIBILIDADE';
        FUNDLEGAL := 'INEXIGIBILIDADE';
      END
      ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '5') OR(dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '10')) THEN
      BEGIN
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'CON7';
          LICIT := 'OBRA CONCORRENCIA';
        end
        else
        begin
          MODLIC := 'CON4';
          LICIT := 'MAT / SERV - CONCORRENCIA';
        end;
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '6' THEN
      BEGIN
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'TOM6';
          LICIT := 'OBRA TOMADA';
        end
        else
        begin
          MODLIC := 'TOM3';
          LICIT := 'MAT / SERV - TOMADA';
        end;
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '7' THEN
      BEGIN
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'CCO5';
          LICIT := 'OBRA CONVITE';
        end
        else
        begin
          MODLIC := 'CCO2';
          LICIT := 'MAT / SERV - CONVITE';
        end;
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '9') OR (dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '11' )) THEN
      BEGIN
        MODLIC := 'PP01';
        LICIT := 'PREGÃO PRESENCIAL';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '16') OR (dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '17' )) THEN
      BEGIN
        MODLIC := 'PE01';
        LICIT := 'PREGÃO ELETRÔNICO';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '8' THEN
      BEGIN
        MODLIC := 'CS01';
        LICIT := 'CONCURSO';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '12' THEN
      BEGIN
        MODLIC := 'LEIL';
        LICIT := 'LEILÃO';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      else
      begin
        PROCLIC := '';
        MODLIC := '';
        LICIT := 'OUTRO';
        FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
      end;

      if DM.QDESTINO.FieldByName('GRUPO').AsString = '1' then
      begin
        PROCLIC := '';
        MODLIC := '';
        LICIT := 'OUTRO';
        FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
      end;
      {$endregion}
      DM.QDESTINO.FieldByName('PROCLIC').AsString  :=  PROCLIC;
      DM.QDESTINO.FieldByName('LICIT').AsString := LICIT;
      DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := FUNDLEGAL;
      if trim(DM.QOrigem.FieldByName('NRPROCESSOCOMPRA').AsString) <> '0' then
        DM.QDESTINO.FieldByName('PROC').AsString := trim(DM.QOrigem.FieldByName('NRPROCESSOCOMPRA').AsString)+'/'+trim(DM.QORIGEM.FieldByName('dtanoPROCESSOCOMPRA').AsString);
      DM.QDESTINO.FieldByName('CODIF').AsString := Traz_Codif(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('cdfornecedor').AsString));
      if DM.QDESTINO.FieldByName('CODIF').AsString = '0' then
        fornec := 'Fornec/UG não encontrado: ' + trim(DM.QOrigem.FieldByName('CODIF').AsString) + '/' + trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString) + ' ';
      {$region ' Historico '}
      dm.ATUALIZAORIGEM.FiLTERED := False;
      dm.ATUALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString +
        ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA').AsString +
        ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString;// + ' and vlunitarioitem = ' + Stringreplace(dm.QORIGEM.FieldByName('VLINICIALPROCESSADO').AsString, ',', '.', [RfReplaceAll]);
      dm.ATUALIZAORIGEM.FiLTERED := True;
      dm.ATUALIZAORIGEM.first;
      Historico := ' ';
      while not dm.ATUALIZAORIGEM.eof do
      begin
        Historico := Historico + ' Qte: ' + dm.ATUALIZAORIGEM.FieldByName('qtItem').AsString + ' ; Unid: ' + dm.ATUALIZAORIGEM.FieldByName('unItem').AsString + ' ;   ' + Stringreplace(dm.ATUALIZAORIGEM.FieldByName('ds').AsString, chr(39), ' ', [RfReplaceAll]) + ' ;  Vlr Unit: ' + currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency) + ' ;  Vlr Total do Item : ' + currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency * dm.ATUALIZAORIGEM.FieldByName('qtItem').AsFloat) + ''#13'';
        dm.ATUALIZAORIGEM.Next;
      end;
      if trim(fornec) <> '' then
        dm.QDESTINO.FieldByName('PRODU').AsString := fornec + Historico
      else
        dm.QDESTINO.FieldByName('PRODU').AsString := Historico;
      {$endregion}
      DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
      DM.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
      DM.QDESTINO.FieldByName('frg').AsString := Existe_FonGrupo(formatcurr('00',DM.QOrigem.FieldByName('CDFONTERECURSO').asinteger),'???');
      if copy(trim(dm.QORIGEM.FieldByName('VINGRUPO').AsString), 5, 1) <> '' then
      begin
        dm.QDESTINO.FieldByName('VINGRUPO').AsString := copy(dm.QORIGEM.FieldByName('VINGRUPO').AsString, 1, 3);
        dm.QDESTINO.FieldByName('VINCODIGO').AsString := copy(dm.QORIGEM.FieldByName('VINGRUPO').AsString, 5, 3);
      end
      else
      begin
        dm.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
        dm.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
      end;
      Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');
      DM.QDESTINO.post;

      {$REGION ' Itens de Empenhos '}
       dm.atualizaOrigem.filtered := false;
       dm.atualizaOrigem.filter := '  nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString +
        ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA').AsString +
        ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString;
       dm.atualizaOrigem.filtered := true;
       if not dm.atualizaOrigem.IsEmpty then
       begin
         dm.atualizaOrigem.first;
         total := 0.00;
         while not dm.atualizaOrigem.eof do
         begin
           DM.Localiza6.Append;
           DM.Localiza6.FieldByName('MODULO').AsString := 'EMP_RP';
           DM.Localiza6.FieldByName('pkemp').ASINTEGER := DM.QDESTINO.FieldByName('PKEMP').ASINTEGER;
           if pkemp_ant <> DM.QDESTINO.FieldByName('PKEMP').ASINTEGER then
            item := 0;
           pkemp_ant := DM.QDESTINO.FieldByName('PKEMP').ASINTEGER;
           inc(item);
           DM.Localiza6.FieldByName('item').ASINTEGER := item;
           DM.Localiza6.FieldByName('qtd').Value := DM.atualizaOrigem.FieldByName('QtItem').Value;
//           DM.Localiza6.FieldByName('und').AsString := Tira_Char39(3, DM.atualizaOrigem.FieldByName('med').AsString);
           DM.Localiza6.FieldByName('descr').AsString := Tira_Char39(255, DM.atualizaOrigem.FieldByName('ds').AsString);
           DM.Localiza6.FieldByName('vlunit').ASCURRENCY := DM.atualizaOrigem.FieldByName('vlunitarioitem').ASCURRENCY;
           DM.Localiza6.FieldByName('vltotal').ASCURRENCY := DM.atualizaOrigem.FieldByName('vlunitarioitem').ASCURRENCY * DM.atualizaOrigem.FieldByName('QtItem').asfloat;
           total := total + DM.Localiza6.FieldByName('vltotal').ASCURRENCY ;
           DM.Localiza6.Post;
           DM.atualizaOrigem.Next;
         END;
         if DM.QOrigem.FieldByName('VLINICIALPROCESSADO').ascurrency - arredonda(total,2) <> 0.00 then
         begin
           DM.Localiza6.Append;
           DM.Localiza6.FieldByName('MODULO').AsString := 'EMP_RP';
           DM.Localiza6.FieldByName('pkemp').ASINTEGER := DM.QDESTINO.FieldByName('PKEMP').ASINTEGER;
           inc(item);
           DM.Localiza6.FieldByName('item').ASINTEGER := item;
           DM.Localiza6.FieldByName('qtd').ASINTEGER := 1;
//           DM.Localiza6.FieldByName('und').AsString := Tira_Char39(3, DM.atualizaOrigem.FieldByName('med').AsString);
           DM.Localiza6.FieldByName('descr').AsString := 'Acerto de saldo dos itens ';
           DM.Localiza6.FieldByName('vlunit').ASCURRENCY := DM.QOrigem.FieldByName('VLINICIALPROCESSADO').ascurrency - total;
           DM.Localiza6.FieldByName('vltotal').ASCURRENCY := DM.Localiza6.FieldByName('vlunit').ASCURRENCY;
           DM.Localiza6.Post;
         end;
       end;
      {$ENDREGION}

      {$REGION ' Cria as liquidações do processado....'}
      DM.LOCALIZAORIGEM.FiLTERED := false;
      DM.LOCALIZAORIGEM.FILTER := ' DTANOEMISSAO = ''' + trim(DM.QOrigem.FieldByName('DTANOEMISSAO').AsString) + ''' and NREMPENHO = ''' + trim(DM.QOrigem.FieldByName('NREMPENHO').AsString) +
        ''' and cdunidadegestora = ''' + trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString) + ''' ';
      DM.LOCALIZAORIGEM.FiLTERED := true;
      DM.LOCALIZAORIGEM.first;
      NUMSUB := 0;
      if not DM.LOCALIZAORIGEM.IsEmpty then
      begin
        while not DM.LOCALIZAORIGEM.eof do
        begin
          inc(NUMSUB);
          DM.Localiza5.append;
          DM.Localiza5.FieldByName('modulo').AsString := 'EMP_RP_LIQ';
          DM.Localiza5.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
          DM.Localiza5.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
          DM.Localiza5.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
          DM.Localiza5.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
          DM.Localiza5.FieldByName('ID_nrsequencia').AsString := trim(DM.LOCALIZAORIGEM.FieldByName('nrsequencia').AsString);
          DM.Localiza5.FieldByName('id_nrsequenciasubempenho').AsString := dm.LOCALIZAORIGEM.FieldByName('nrsequenciasubempenho').AsString;
          DM.Localiza5.FieldByName('pkemp').AsInteger := DM.QDESTINO.FieldByName('pkemp').AsInteger;
          DM.Localiza5.FieldByName('numsub').AsInteger := NUMSUB;
          DM.Localiza5.FieldByName('NEMPF').AsInteger := 0;
          DM.Localiza5.FieldByName('IE').AsInteger := 0;
          DM.Localiza5.FieldByName('NEMPV').AsInteger := 0;
          DM.Localiza5.FieldByName('FASE').AsInteger := 0;
          DM.Localiza5.FieldByName('VADEM').ascurrency := DM.LOCALIZAORIGEM.FieldByName('vlmovimento').ascurrency;
          DM.Localiza5.FieldByName('DATAE').AsString := ValiData(DM.LOCALIZAORIGEM.FieldByName('DTMOVIMENTO').AsString);
          DM.Localiza5.FieldByName('VENCI').AsString := ValiData(DM.LOCALIZAORIGEM.FieldByName('DTMOVIMENTO').AsString);
          DM.Localiza5.FieldByName('PRODU').AsString := 'Liquidação nesta data ';//Tira_Char39(4096, DM.LOCALIZAORIGEM.FieldByName('produ').AsString);
          DM.Localiza5.post;
          DM.LOCALIZAORIGEM.next;
        end;
      end;
    {$ENDREGION}
    end; // processado
    {$endregion}
    {$region ' Despes Não Processado '}
    if dm.QOrigem.FieldByName('VLINICIALnaoPROCESSADO').AsFloat <> 0.00 then
    begin
      DM.QDESTINO.append;
      inc(pkemp_new);
      DM.QDESTINO.FieldByName('PKEMP').AsInteger := pkemp_new;
      DM.QDESTINO.FieldByName('NEMPG').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('MODULO').AsString := 'EMP_RP';
      DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
      DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
      DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
      DM.QDESTINO.FieldByName('ID_cdtipolicitacao').AsString := trim(DM.QOrigem.FieldByName('cdtipolicitacao').AsString);
      DM.QDESTINO.FieldByName('id_nrlicitacao').AsString := trim(DM.QOrigem.FieldByName('nrlicitacao').AsString);
      DM.QDESTINO.FieldByName('ID_dtanolicitacao').AsString := trim(DM.QOrigem.FieldByName('dtanolicitacao').AsString);
      DM.QDESTINO.FieldByName('ID_nrcontrato').AsString := trim(DM.QOrigem.FieldByName('nrcontrato').AsString);
      DM.QDESTINO.FieldByName('ID_dtanocontrato').AsString := trim(DM.QOrigem.FieldByName('dtanocontrato').AsString);
      DM.QDESTINO.FieldByName('ID_nrprocessocompra').AsString := trim(DM.QOrigem.FieldByName('nrprocessocompra').AsString);
      DM.QDESTINO.FieldByName('ID_dtanoprocessocompra').AsString := trim(DM.QOrigem.FieldByName('dtanoprocessocompra').AsString);
      DM.QDESTINO.FieldByName('TPEM').AsString := 'EX';
      case dm.QORIGEM.FieldByName('CDTIPOEMPENHO').Asinteger of
        1:
          dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'OR';
        2:
          dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'GL';
        3:
          dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'ES';
      else
        dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'OR';
      if dm.QORIGEM.FieldByName('CDobjetoDESPESA').asinteger = 4 then
        dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := 'AD';
      end;
      DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.QOrigem.FieldByName('dtemissaoempenho').AsString);
      if dm.Localiza7.FindKey([Traz_Entidade(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString)),'N']) then
        DM.QDESTINO.FieldByName('FICHA').AsString := dm.Localiza7.FieldByName('FICHA').AsString;
      DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('VLINICIALnaoPROCESSADO').ascurrency;
      DM.QDESTINO.FieldByName('ANO_RESTO').AsString := DM.QOrigem.FieldByName('dtanoemissao').AsString;

      IF trim(DM.QOrigem.FieldByName('NRCONTRATO').AsString) <> '' THEN
      BEGIN
        IF DM.Localiza3.FindKey([trim(DM.QOrigem.FieldByName('NRCONTRATO').AsString), trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),
          trim(DM.QOrigem.FieldByName('cdfornecedor').AsString)]) THEN
          DM.QDESTINO.FieldByName('CONTRATO').AsString := DM.Localiza3.FieldByName('codigo').AsString;
      END;
  //    IF ((trim(DM.QORIGEM.FieldByName('em_Convenio').AsString) <> '') and (trim(DM.QORIGEM.FieldByName('em_Convenio').AsString) <> '0')) THEN
  //    BEGIN
  //      IF DM.Localiza4.FindKey([trim(DM.QORIGEM.FieldByName('em_Convenio').AsString), trim(DM.QORIGEM.FieldByName('AnoConvenio').AsString)]) THEN
  //       DM.QDESTINO.FieldByName('convenio').ASINTEGER := DM.Localiza4.FieldByName('convenio').ASINTEGER;
  //    END;
      if (copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 1, 1) <> '0') and (copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 1, 1) <> '') then
      begin
        dm.QDESTINO.FieldByName('CODLO_ANT').AsString := FORMATCURR('00', dm.QORIGEM.FieldByName('CDORGAORESTOS').Asinteger) + FORMATCURR('00', dm.QORIGEM.FieldByName('CDUNIDADERESTOS').Asinteger) + FORMATCURR('00', dm.QORIGEM.FieldByName('cddepartamentorestos').Asinteger);
        dm.QDESTINO.FieldByName('CFPRO_ANT').AsString := FORMATCURR('00', dm.QORIGEM.FieldByName('CDFUNCAORESTOS').Asinteger) + '.' + FORMATCURR('000', dm.QORIGEM.FieldByName('CDPROGRAMARESTOS').Asinteger) + '.' + FORMATCURR('0000', dm.QORIGEM.FieldByName('CDSUBPROGRAMARESTOS').Asinteger) + '.' + copy(dm.QORIGEM.FieldByName('CDPROJETOATIVIDADERESTOS').AsString, 1, 4) + '.0000';
        dm.QDESTINO.FieldByName('CATEC_ANT').AsString := copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 1, 1) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 2, 1) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 3, 2) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 5, 2) + '.' + copy(dm.QORIGEM.FieldByName('CDCATEGORIARESTOS').AsString, 7, 2);
      end;
      dm.QDESTINO.FieldByName('VENCI').AsString := Formatdatetime('dd/mm/yyyy', dm.QORIGEM.FieldByName('DTEMISSAOEMPENHO').ASDATETIME);
      {$region ' Licitação..... '}
      IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '1' THEN
      BEGIN
        PROCLIC := '';
        MODLIC := '';
        LICIT := 'OUTRO';
        FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '2' THEN
      BEGIN
        PROCLIC := '';
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'DI02';
          LICIT := 'OBRA DISPENSA';
        end
        else
        begin
          MODLIC := 'DI01';
          LICIT := 'DISPENSA';
        end;
        FUNDLEGAL := 'DISPENSA';
      END
     ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '3' THEN
      BEGIN
       PROCLIC := '';
       if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'DI02';
          LICIT := 'OBRA DISPENSA';
        end
        else
        begin
         MODLIC := 'DI01';
         LICIT := 'DISPENSA (ART. 24)';
        end;
       FUNDLEGAL := 'DISPENSA (ART. 24)';
      END
     ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '4' THEN
      BEGIN
        PROCLIC := '';
        MODLIC := 'IN01';
        LICIT := 'INEXIGIBILIDADE';
        FUNDLEGAL := 'INEXIGIBILIDADE';
      END
      ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '5') OR(dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '10')) THEN
      BEGIN
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'CON7';
          LICIT := 'OBRA CONCORRENCIA';
        end
        else
        begin
          MODLIC := 'CON4';
          LICIT := 'MAT / SERV - CONCORRENCIA';
        end;
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '6' THEN
      BEGIN
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'TOM6';
          LICIT := 'OBRA TOMADA';
        end
        else
        begin
          MODLIC := 'TOM3';
          LICIT := 'MAT / SERV - TOMADA';
        end;
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '7' THEN
      BEGIN
        if DM.QDESTINO.FieldByName('ELEMENTO').AsString = '51' then
        begin
          MODLIC := 'CCO5';
          LICIT := 'OBRA CONVITE';
        end
        else
        begin
          MODLIC := 'CCO2';
          LICIT := 'MAT / SERV - CONVITE';
        end;
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '9') OR (dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '11' )) THEN
      BEGIN
        MODLIC := 'PP01';
        LICIT := 'PREGÃO PRESENCIAL';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF ((dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '16') OR (dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '17' )) THEN
      BEGIN
        MODLIC := 'PE01';
        LICIT := 'PREGÃO ELETRÔNICO';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '8' THEN
      BEGIN
        MODLIC := 'CS01';
        LICIT := 'CONCURSO';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      ELSE IF dm.QORIGEM.FieldByName('cdtipolicitacao').AsString = '12' THEN
      BEGIN
        MODLIC := 'LEIL';
        LICIT := 'LEILÃO';
        FUNDLEGAL := 'LICITAÇÃO';
        PROCLIC := retorna_nrlicitacao(dm.QORIGEM.FieldByName('NRLICITACAO').AsString, dm.QORIGEM.FieldByName('dtanoemissao').AsString,DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString, MODLIC);
      END
      else
      begin
        PROCLIC := '';
        MODLIC := '';
        LICIT := 'OUTRO';
        FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
      end;

      if DM.QDESTINO.FieldByName('GRUPO').AsString = '1' then
      begin
        PROCLIC := '';
        MODLIC := '';
        LICIT := 'OUTRO';
        FUNDLEGAL := 'OUTRO NÃO APLICÁVEL';
      end;
      {$endregion}
      DM.QDESTINO.FieldByName('PROCLIC').AsString  :=  PROCLIC;
      DM.QDESTINO.FieldByName('LICIT').AsString := LICIT;
      DM.QDESTINO.FieldByName('FUNDLEGAL').AsString := FUNDLEGAL;
      if trim(DM.QOrigem.FieldByName('NRPROCESSOCOMPRA').AsString) <> '0' then
        DM.QDESTINO.FieldByName('PROC').AsString := trim(DM.QOrigem.FieldByName('NRPROCESSOCOMPRA').AsString)+'/'+trim(DM.QORIGEM.FieldByName('dtanoPROCESSOCOMPRA').AsString);
      DM.QDESTINO.FieldByName('CODIF').AsString := Traz_Codif(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString),trim(DM.QOrigem.FieldByName('cdfornecedor').AsString));
      if DM.QDESTINO.FieldByName('CODIF').AsString = '0' then
        fornec := 'Fornec/UG não encontrado: ' + trim(DM.QOrigem.FieldByName('CODIF').AsString) + '/' + trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString) + ' ';
      {$region ' Historico '}
      dm.ATUALIZAORIGEM.FiLTERED := False;
      dm.ATUALIZAORIGEM.FILTER := ' nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString +
        ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA').AsString +
        ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString;// + ' and vlunitarioitem = ' + Stringreplace(dm.QORIGEM.FieldByName('VLINICIALPROCESSADO').AsString, ',', '.', [RfReplaceAll]);
      dm.ATUALIZAORIGEM.FiLTERED := True;
      dm.ATUALIZAORIGEM.first;
      Historico := ' ';
      while not dm.ATUALIZAORIGEM.eof do
      begin
        Historico := Historico + ' Qte: ' + dm.ATUALIZAORIGEM.FieldByName('qtItem').AsString + ' ; Unid: ' + dm.ATUALIZAORIGEM.FieldByName('unItem').AsString + ' ;   ' + Stringreplace(dm.ATUALIZAORIGEM.FieldByName('ds').AsString, chr(39), ' ', [RfReplaceAll]) + ' ;  Vlr Unit: ' + currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency) + ' ;  Vlr Total do Item : ' + currtostr(dm.ATUALIZAORIGEM.FieldByName('vlunitarioitem').AsCurrency * dm.ATUALIZAORIGEM.FieldByName('qtItem').AsFloat) + ''#13'';
        dm.ATUALIZAORIGEM.Next;
      end;
      if trim(fornec) <> '' then
        dm.QDESTINO.FieldByName('PRODU').AsString := fornec + Historico
      else
        dm.QDESTINO.FieldByName('PRODU').AsString := Historico;
      {$endregion}
      DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
      DM.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
      DM.QDESTINO.FieldByName('frg').AsString := Existe_FonGrupo(formatcurr('00',DM.QOrigem.FieldByName('CDFONTERECURSO').asinteger),'???');
      if copy(trim(dm.QORIGEM.FieldByName('VINGRUPO').AsString), 5, 1) <> '' then
      begin
        dm.QDESTINO.FieldByName('VINGRUPO').AsString := copy(dm.QORIGEM.FieldByName('VINGRUPO').AsString, 1, 3);
        dm.QDESTINO.FieldByName('VINCODIGO').AsString := copy(dm.QORIGEM.FieldByName('VINGRUPO').AsString, 5, 3);
      end
      else
      begin
        dm.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
        dm.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
      end;
      Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');
      DM.QDESTINO.post;
      {$REGION ' Itens de Empenhos '}
       dm.atualizaOrigem.filtered := false;
       dm.atualizaOrigem.filter := '  nrempenho = ' + dm.QORIGEM.FieldByName('NREMPENHO').AsString +
        ' and cdunidadegestora = ' + dm.QORIGEM.FieldByName('CDUNIDADEGESTORA').AsString +
        ' and dtanoemissao = ' + dm.QORIGEM.FieldByName('DTANOEMISSAO').AsString;
       dm.atualizaOrigem.filtered := true;
       if not dm.atualizaOrigem.IsEmpty then
       begin
         dm.atualizaOrigem.first;
         total := 0.00;
         while not dm.atualizaOrigem.eof do
         begin
           DM.Localiza6.Append;
           DM.Localiza6.FieldByName('MODULO').AsString := 'EMP_RP';
           DM.Localiza6.FieldByName('pkemp').ASINTEGER := DM.QDESTINO.FieldByName('PKEMP').ASINTEGER;
           if pkemp_ant <> DM.QDESTINO.FieldByName('PKEMP').ASINTEGER then
            item := 0;
           pkemp_ant := DM.QDESTINO.FieldByName('PKEMP').ASINTEGER;
           inc(item);
           DM.Localiza6.FieldByName('item').ASINTEGER := item;
           DM.Localiza6.FieldByName('qtd').Value := DM.atualizaOrigem.FieldByName('QtItem').Value;
//           DM.Localiza6.FieldByName('und').AsString := Tira_Char39(3, DM.atualizaOrigem.FieldByName('med').AsString);
           DM.Localiza6.FieldByName('descr').AsString := Tira_Char39(255, DM.atualizaOrigem.FieldByName('Ds').AsString);
           DM.Localiza6.FieldByName('vlunit').ASCURRENCY := DM.atualizaOrigem.FieldByName('vlunitarioitem').ASCURRENCY;
           DM.Localiza6.FieldByName('vltotal').ASCURRENCY := DM.atualizaOrigem.FieldByName('vlunitarioitem').ASCURRENCY * DM.atualizaOrigem.FieldByName('QtItem').asfloat;
           DM.Localiza6.Post;
           DM.atualizaOrigem.Next;
         END;
         if DM.QOrigem.FieldByName('VLINICIALPROCESSADO').ascurrency - arredonda(total,2) <> 0.00 then
         begin
           DM.Localiza6.Append;
           DM.Localiza6.FieldByName('MODULO').AsString := 'EMP_RP';
           DM.Localiza6.FieldByName('pkemp').ASINTEGER := DM.QDESTINO.FieldByName('PKEMP').ASINTEGER;
           inc(item);
           DM.Localiza6.FieldByName('item').ASINTEGER := item;
           DM.Localiza6.FieldByName('qtd').ASINTEGER := 1;
//           DM.Localiza6.FieldByName('und').AsString := Tira_Char39(3, DM.atualizaOrigem.FieldByName('med').AsString);
           DM.Localiza6.FieldByName('descr').AsString := 'Acerto de saldo dos itens ';
           DM.Localiza6.FieldByName('vlunit').ASCURRENCY := DM.QOrigem.FieldByName('VLINICIALnaoPROCESSADO').ascurrency - total;
           DM.Localiza6.FieldByName('vltotal').ASCURRENCY := DM.Localiza6.FieldByName('vlunit').ASCURRENCY;
           DM.Localiza6.Post;
         end;
       end;
      {$ENDREGION}
    end;
    {$endregion}
    DM.QOrigem.next;
    APPLICATION.ProcessMessages;
  END;
  STATUS.caption := ' Salvando empenhos rp....';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := ' Salvando itens empenhos rp....';
  STATUS.update;
  DM.Localiza6.ApplyUpdates(-1);
  STATUS.caption := ' Salvando liquidaçao dos empenhos rp....';
  STATUS.update;
  DM.Localiza5.ApplyUpdates(-1);

  STATUS.caption := 'DESPES RP OK';
  STATUS.update;
  memoStatus.Lines.Add('Despes RP - OK');
  Desconecta_Conecta;


  Restos_Pagar_Anulacao_Empenho;

end;

procedure TTfrmprincipal_Conversao.Restos_Pagar_Anulacao_Empenho;
var pkemp_new: integer;
  empenhado_saldo: real;
  liquidado_saldo: real;
begin
  // anulacao de empenho restos
  SITU.Caption := 'Anulacao de Empenhado e Liquidado de Restos a pagar...';
  SITU.Update;
  Desliga_Triggers;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select max(pkemp) as pkemp from despes ';
  dm.Localiza.OPEN;
  PKEMP_NEW := dm.Localiza.FieldByName('pkemp').Asinteger;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select cast(substring(d.produ from 1 for 1024) as varchar(1024)) as histo, dd.rproc, d.* from despes d ' +
  'inner join desdis dd on dd.ficha = d.ficha and dd.balco like ''3211%'' ';//and dd.rproc = ''N'')';
  dm.Localiza.OPEN;

  dm.localiza3.Close;
  dm.localiza3.CommandText := 'select * from viewliq where pkemp = -1 ';
  dm.localiza3.open;

  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'select * from despes where pkemp = -1';
  dm.QDESTINO.OPEN;
  dm.QORIGEM.CLOSE;
  if STRTOINT(Ano.text) >= 2013 then
    dm.QORIGEM.Commandtext := 'select m.vlmovimento, coalesce(C.CDAPLICACAO,''1100000'') AS VINGRUPO,A.CDFONTERECURSO AS FONGRUPO, *   '+
    ' from [' + bnc_cpe + '].[dbo].dataview_cancelamento_restos a ' +
    ' inner join [' + bnc_cpe + '].dbo.movimento m on m.nrsequencia=a.nrsequencia and m.nrsequenciasistema=a.nrsequenciasistema ' +
    ' LEFT JOIN  [' + bnc_cpe + '].DBO.CODIGOAPLICACAO C ON C.IDCODIGOAPLICACAO = A.CDAPLICACAO   where a.dtanoemissao < ' + Ano.text +
    ' order by a.cdunidadegestora,a.dtanoemissao,a.dtmovimento,a.nrempenho'
  else
  if ano.Value >2011 then
    dm.QORIGEM.Commandtext := 'select  coalesce(C.CDAPLICACAO,''1100000'') AS VINGRUPO,M.CDFONTERECURSO AS FONGRUPO, * '+
    ' from [' + bnc_cpe + '].[dbo].movimento m ' + 'LEFT JOIN  [' + bnc_cpe + '].DBO.CODIGOAPLICACAO C ON C.IDCODIGOAPLICACAO = m.CDAPLICACAO ' +
     'where m.dtAnoEmissao < ' + Ano.text + ' and m.idEmpenho = 1 and m.cdTipoMovimento = 433 ' + 'or (m.dtAnoEmissao < ' + Ano.text +
     '  and m.idEmpenho = 1 and m.cdTipoMovimento = 453 ' + '   and m.cdHistoricoSistema = 536 and m.cdHistoricoPadrao = 576) '
  else
  dm.QORIGEM.Commandtext := 'select  coalesce(C.CDAPLICACAO,''1100000'') AS VINGRUPO,M.CDFONTERECURSO AS FONGRUPO, * '+
    ' from [' + bnc_cpe + '].[dbo].movimento m ' + 'LEFT JOIN  [' + bnc_cpe + '].DBO.CODIGOAPLICACAO C ON C.CDAPLICACAO = m.CDAPLICACAO ' +
     'where m.dtAnoEmissao < ' + Ano.text + ' and m.idEmpenho = 1 and m.cdTipoMovimento = 433 ' + 'or (m.dtAnoEmissao < ' + Ano.text +
     '  and m.idEmpenho = 1 and m.cdTipoMovimento = 453 ' + '   and m.cdHistoricoSistema = 536 and m.cdHistoricoPadrao = 576) '   ;
  dm.QORIGEM.OPEN;
  dm.QORIGEM.first;
  P.Max := dm.QORIGEM.RecordCount;
  while not dm.QORIGEM.eof do
  begin
    EM.Caption := inttostr(dm.QORIGEM.RecNo) + ' de ' + inttostr(P.Max);
    EM.Update;
    P.Position := dm.QORIGEM.RecNo;
    dm.Localiza.FiLTERED := False;
    dm.Localiza.FILTER := ' nempg = ' + inttostr(dm.QORIGEM.FieldByName('nrempenho').asinteger) +
      ' and ano_resto = ''' + dm.QORIGEM.FieldByName('dtanoemissao').AsString + ''' ' +
      ' and id_cdunidadegestora = ''' + dm.QORIGEM.FieldByName('cdunidadegestora').AsString + ''' ' +
      ' and id_cdfornecedor= ''' + dm.QORIGEM.FieldByName('cdfornecedor').AsString + ''' ' +
      ' and rproc = ''N'' '+
      ' and vadem = ' + dm.QORIGEM.FieldByName('vlmovimento').AsString;
    dm.Localiza.FiLTERED := True;
    if dm.Localiza.IsEmpty then
    begin
      dm.Localiza.FiLTERED := False;
      dm.Localiza.FILTER := ' nempg = ' + inttostr(dm.QORIGEM.FieldByName('nrempenho').asinteger) +
        ' and ano_resto = ''' + dm.QORIGEM.FieldByName('dtanoemissao').AsString + ''' ' +
        ' and id_cdunidadegestora = ''' + dm.QORIGEM.FieldByName('cdunidadegestora').AsString + ''' ' +
        ' and id_cdfornecedor= ''' + dm.QORIGEM.FieldByName('cdfornecedor').AsString + ''' ' +
        ' and rproc = ''S'' '+
        ' and vadem = ' + dm.QORIGEM.FieldByName('vlmovimento').AsString;
      dm.Localiza.FiLTERED := True;
    end;
    if dm.Localiza.IsEmpty then
    begin
      dm.Localiza.FiLTERED := False;
      dm.Localiza.FILTER := ' nempg = ' + inttostr(dm.QORIGEM.FieldByName('nrempenho').asinteger) +
      ' and ano_resto = ''' + dm.QORIGEM.FieldByName('dtanoemissao').AsString + ''' ' +
      ' and id_cdunidadegestora = ''' + dm.QORIGEM.FieldByName('cdunidadegestora').AsString + ''' ' +
      ' and id_cdfornecedor= ''' + dm.QORIGEM.FieldByName('cdfornecedor').AsString + ''' ' +
      ' and rproc = ''N'' '+
      ' and vadem > ' + dm.QORIGEM.FieldByName('vlmovimento').AsString;
      dm.Localiza.FiLTERED := True;
      if dm.Localiza.IsEmpty then
      begin
        dm.Localiza.FiLTERED := False;
        dm.Localiza.FILTER := ' nempg = ' + inttostr(dm.QORIGEM.FieldByName('nrempenho').asinteger) +
        ' and ano_resto = ''' + dm.QORIGEM.FieldByName('dtanoemissao').AsString + ''' ' +
        ' and id_cdunidadegestora = ''' + dm.QORIGEM.FieldByName('cdunidadegestora').AsString + ''' ' +
        ' and id_cdfornecedor= ''' + dm.QORIGEM.FieldByName('cdfornecedor').AsString + ''' ' +
        ' and rproc = ''S'' '+
        ' and vadem > ' + dm.QORIGEM.FieldByName('vlmovimento').AsString;
        dm.Localiza.FiLTERED := True;
        if dm.Localiza.IsEmpty then
        begin
          dm.Localiza.FiLTERED := False;
          dm.Localiza.FILTER := ' nempg = ' + inttostr(dm.QORIGEM.FieldByName('nrempenho').asinteger) +
          ' and ano_resto = ''' + dm.QORIGEM.FieldByName('dtanoemissao').AsString + ''' ' +
          ' and id_cdunidadegestora = ''' + dm.QORIGEM.FieldByName('cdunidadegestora').AsString + ''' ' +
          ' and id_cdfornecedor= ''' + dm.QORIGEM.FieldByName('cdfornecedor').AsString + ''' ' ;
          dm.Localiza.FiLTERED := True;
        end;
      end;
    end;

    if not dm.Localiza.IsEmpty then
    begin
      inc(PKEMP_NEW);
      dm.QDESTINO.APPEND;
      dm.QDESTINO.FieldByName('pkemp').Asinteger := PKEMP_NEW;
      dm.QDESTINO.FieldByName('pkempa').AsString := dm.Localiza.FieldByName('pkemp').AsString;
      dm.QDESTINO.FieldByName('nempg').AsString := dm.Localiza.FieldByName('nempg').AsString;
      dm.QDESTINO.FieldByName('tpem').AsString := 'AN';
      dm.QDESTINO.FieldByName('TPEM_RESTO').AsString := dm.Localiza.FieldByName('TPEM_RESTO').AsString;
      dm.QDESTINO.FieldByName('produ').AsString := dm.Localiza.FieldByName('histo').AsString;
      dm.QDESTINO.FieldByName('datae').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      dm.QDESTINO.FieldByName('vadem').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency * (-1);
      dm.QDESTINO.FieldByName('anula').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency * (-1);
      dm.QDESTINO.FieldByName('evgrupo').AsString := dm.Localiza.FieldByName('evgrupo').AsString;
      dm.QDESTINO.FieldByName('evcodigo').AsString := dm.Localiza.FieldByName('evcodigo').AsString;
      dm.QDESTINO.FieldByName('ficha').AsString := dm.Localiza.FieldByName('ficha').AsString;
      dm.QDESTINO.FieldByName('licit').AsString := dm.Localiza.FieldByName('licit').AsString;
      dm.QDESTINO.FieldByName('proc').AsString := dm.Localiza.FieldByName('proc').AsString;
      dm.QDESTINO.FieldByName('codif').AsString := dm.Localiza.FieldByName('codif').AsString;
      dm.QDESTINO.FieldByName('vingrupo').AsString := dm.Localiza.FieldByName('vingrupo').AsString;
      dm.QDESTINO.FieldByName('vincodigo').AsString := dm.Localiza.FieldByName('vincodigo').AsString;
      dm.QDESTINO.FieldByName('codlo_ant').AsString := dm.Localiza.FieldByName('codlo_ant').AsString;
      dm.QDESTINO.FieldByName('cfpro_ant').AsString := dm.Localiza.FieldByName('cfpro_ant').AsString;
      dm.QDESTINO.FieldByName('catec_ant').AsString := dm.Localiza.FieldByName('catec_ant').AsString;
      //dm.QDESTINO.FieldByName('frg').AsString := dm.Localiza.FieldByName('frg').AsString;
      dm.QDESTINO.FieldByName('ano_resto').AsString := dm.Localiza.FieldByName('ano_resto').AsString;
      dm.QDESTINO.FieldByName('fundlegal').AsString := dm.Localiza.FieldByName('fundlegal').AsString;
      dm.QDESTINO.FieldByName('proclic').AsString := dm.Localiza.FieldByName('proclic').AsString;
      dm.QDESTINO.FieldByName('CONTRATO').AsString := dm.Localiza.FieldByName('CONTRATO').AsString;
      DM.QDESTINO.FieldByName('MODULO').AsString := 'EMP_RP_AN';
      DM.QDESTINO.FieldByName('ID_nrempenho').AsString := DM.Localiza.FieldByName('ID_nrempenho').AsString;
      DM.QDESTINO.FieldByName('ID_dtanoemissao').AsString :=DM.Localiza.FieldByName('ID_dtanoemissao').AsString;
      DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.Localiza.FieldByName('ID_cdfornecedor').AsString);
      DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.Localiza.FieldByName('ID_cdunidadegestora').AsString);
      DM.QDESTINO.FieldByName('ID_cdtipolicitacao').AsString := trim(DM.Localiza.FieldByName('ID_cdtipolicitacao').AsString);
      DM.QDESTINO.FieldByName('id_nrlicitacao').AsString := trim(DM.Localiza.FieldByName('id_nrlicitacao').AsString);
      DM.QDESTINO.FieldByName('ID_dtanolicitacao').AsString := trim(DM.Localiza.FieldByName('ID_dtanolicitacao').AsString);
      DM.QDESTINO.FieldByName('ID_nrcontrato').AsString := trim(DM.Localiza.FieldByName('ID_nrcontrato').AsString);
      DM.QDESTINO.FieldByName('ID_dtanocontrato').AsString := trim(DM.Localiza.FieldByName('ID_dtanocontrato').AsString);
      DM.QDESTINO.FieldByName('ID_nrprocessocompra').AsString := trim(DM.Localiza.FieldByName('ID_nrprocessocompra').AsString);
      DM.QDESTINO.FieldByName('ID_dtanoprocessocompra').AsString := trim(DM.Localiza.FieldByName('ID_dtanoprocessocompra').AsString);
      dm.QDESTINO.Post;
      dm.QDESTINO.ApplyUpdates(-1);


      dm.localiza2.Close;
      dm.localiza2.CommandText := 'select sum(d.vadem) as vadem from despes d where d.pkemp = '+dm.Localiza.FieldByName('PKEMP').AsString+
      ' or d.pkempa = '+ dm.Localiza.FieldByName('PKEMP').AsString;
      dm.localiza2.open;
      empenhado_saldo := dm.localiza2.FieldByName('vadem').ascurrency;
      dm.localiza2.Close;
      dm.localiza2.CommandText := 'select sum(d.vadem) as vadem from viewliq d where d.pkemp = '+dm.Localiza.FieldByName('PKEMP').AsString;
      dm.localiza2.open;
      liquidado_saldo := dm.localiza2.FieldByName('vadem').ascurrency;

      if arredonda(empenhado_saldo,2) < arredonda(liquidado_saldo,2) then
      begin
        dm.localiza2.Close;
        dm.localiza2.CommandText := 'select v.* from viewliq v inner join despes d on (d.pkemp=v.pkemp) inner join desdis dd on (dd.ficha=d.ficha) '+
               ' where dd.balco like ''3211%'' and v.vadem>0 '+
               ' and v.pkemp = ' + dm.Localiza.FieldByName('pkemp').AsString + ' and v.anula < ''' + stringreplace(dm.QORIGEM.FieldByName('vlmovimento').AsString,',','.',[rfReplaceAll]) + ''' ';
        dm.localiza2.open;
        dm.localiza2.filtered := true;
        if not dm.localiza2.IsEmpty then
        begin
          dm.localiza3.append;
          dm.localiza3.FieldByName('PKEMP').AsString := dm.Localiza.FieldByName('PKEMP').AsString;
          dm.localiza3.FieldByName('PRODU').AsString := 'Anulação de liquidação ';
          dm.Localiza4.CLOSE;
          dm.Localiza4.Commandtext := 'select max(numsub) numsub from viewliq where pkemp = ' + dm.Localiza.FieldByName('PKEMP').AsString;
          dm.Localiza4.OPEN;
          dm.localiza3.FieldByName('numsub').Asinteger := dm.Localiza4.FieldByName('NUMSUB').Asinteger + 1;
          dm.localiza3.FieldByName('NEMPF').Asinteger := 0;
          dm.localiza3.FieldByName('IE').Asinteger := 0;
          dm.localiza3.FieldByName('NEMPV').Asinteger := 0;
          dm.localiza3.FieldByName('FASE').Asinteger := 0;
          dm.localiza3.FieldByName('DATAE').Value := dm.QDESTINO.FieldByName('datae').Value;
          dm.localiza3.FieldByName('VENCI').Value := dm.QDESTINO.FieldByName('datae').Value;
          dm.localiza3.FieldByName('VADEM').AsCurrency := dm.QDESTINO.FieldByName('vadem').AsCurrency;
          dm.localiza3.FieldByName('anula').AsCurrency :=dm.QDESTINO.FieldByName('vadem').AsCurrency ;
            dm.Localiza4.CLOSE;
            dm.Localiza4.Commandtext := 'select pkemp, numsub from viewliq where pkemp = ' +
              dm.Localiza.FieldByName('PKEMP').AsString + ' and vadem  =  ''' + stringreplace(dm.QORIGEM.FieldByName('vlmovimento').AsString,',','.',[rfReplaceAll]) + ''' ';
            dm.Localiza4.OPEN;
            if dm.Localiza4.IsEmpty then
            begin
              dm.Localiza4.CLOSE;
              dm.Localiza4.Commandtext := 'select pkemp, numsub from viewliq where pkemp = ' +
                dm.Localiza.FieldByName('PKEMP').AsString + ' and vadem  > ''' + stringreplace(dm.QORIGEM.FieldByName('vlmovimento').AsString,',','.',[rfReplaceAll]) + ''' ';
              dm.Localiza4.OPEN;
            end;
          dm.localiza3.FieldByName('numsuba').AsString := dm.Localiza4.FieldByName('NUMSUB').AsString;
          DM.localiza3.FieldByName('modulo').AsString := 'EMP_RP_AN';
          DM.localiza3.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
          DM.localiza3.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
          DM.localiza3.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
          DM.localiza3.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
          DM.localiza3.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
          DM.localiza3.FieldByName('ID_nrsequenciasubempenho').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasubempenho').AsString);
          DM.localiza3.FieldByName('ID_nrsequenciasistema').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
          dm.localiza3.Post;
          dm.localiza3.ApplyUpdates(-1);
        end;
      end;
    end
    else
      Memostatus.Lines.Add('Nao achou restos UG/nº/ano/codif' + dm.QORIGEM.FieldByName('cdunidadegestora').AsString + '/' + dm.QORIGEM.FieldByName('nrempenho').AsString + '/' + dm.QORIGEM.FieldByName('dtanoemissao').AsString + '/' + dm.QORIGEM.FieldByName('cdfornecedor').AsString);
    dm.QORIGEM.Next;
  end;
  STATUS.Caption := 'Anulacao de Empenhado e Liquidado de Restos a pagar OK';
  STATUS.Update;
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Liquidacao_Restos_NPROC;
var Numsub_new: integer; documento: string; nota: string;
  pkemp_ant: integer;
begin
  SITU.caption := 'Liquidacao de Restos nao processado....';
  SITU.update;
  DM.QOrigem.close;

  if ANO.Value > 2012 then
    DM.QOrigem.Commandtext :=
      ' SELECT  cast(h.dscomplhistorico as varchar (2048)) as produ,  coalesce(v.dtvencimento,m.dtmovimento) as dtvencimento, ' +
      ' case when (m.cdTipoMovimento in (441,444) or m.cdHistoricoPadrao in (535,541)) then m.vlmovimento*(-1) else m.vlmovimento end as vadem, ' +
      ' m.*  FROM [' + bnc_cpe + '].[dbo].[MOVIMENTO] m ' +
      ' left join [' + bnc_cpe + '].[dbo].MovimentoVencimentoEmpenho v on (v.cdunidadegestora = m.cdunidadegestora and v.nrsequencia=m.nrsequencia and ' +
      '   v.nrempenho=m.nrempenho  and v.dtanoemissao=m.dtanoemissao and v.idtipomovimento=3 ) ' +
      ' left join [' + bnc_cpe + '].[dbo].complementohistorico h on (h.cdunidadegestora=m.cdunidadegestora and h.nrcomplhistorico=m.nrcomplhistorico) ' +
      ' where m.dtanoemissao <  ' + Ano.text +   ' and m.cdTipoMovimento in (440,443)  and m.cdHistoricoPadrao in (534,540) ' +
      ' order by m.cdunidadegestora, m.dtanoemissao, m.nrempenho,m.nrsequencia,m.dtmovimento, m.vlmovimento '
  ELSE
    DM.QOrigem.Commandtext :=
      'SELECT M.NRSEQUENCIASISTEMA, M.DTMOVIMENTO, M.NRSEQUENCIA, ' +
      'M.CDTIPOMOVIMENTO, ' +
      '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE M.CDTIPOMOVIMENTO = Z.CDHISTORICOPADRAO) AS DS_TIPOMOV, ' +
      'M.CDHISTORICOSISTEMA, ' +
      '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE M.CDHISTORICOSISTEMA = Z.CDHISTORICOPADRAO) AS DS_HISSIS, ' +
      'M.CDHISTORICOPADRAO, ' +
      '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE M.CDHISTORICOPADRAO = Z.CDHISTORICOPADRAO) AS DS_HISPADRAO, ' +
      'COALESCE(V.DTVENCIMENTO,M.DTMOVIMENTO) AS DTVENCIMENTO, ' +
      'CASE ' +
      '    WHEN (M.CDTIPOMOVIMENTO IN (441,444) OR M.CDHISTORICOPADRAO IN (535,541)) THEN M.VLMOVIMENTO*(-1) ' +
      '    ELSE M.VLMOVIMENTO END AS VADEM, ' +
      'M.*, cast(h.dscomplhistorico as varchar (2048)) as produ ' +
      'FROM ['+BNC_CPE+'].[DBO].[MOVIMENTO] M ' +
      'LEFT JOIN ['+BNC_CPE+'].[DBO].MOVIMENTOVENCIMENTOEMPENHO V ON (V.CDUNIDADEGESTORA = M.CDUNIDADEGESTORA AND V.NRSEQUENCIA=M.NRSEQUENCIA AND V.NREMPENHO=M.NREMPENHO  AND V.DTANOEMISSAO=M.DTANOEMISSAO AND V.IDTIPOMOVIMENTO=3 ) ' +
      'LEFT JOIN ['+BNC_CPE+'].[DBO].COMPLEMENTOHISTORICO H ON (H.CDUNIDADEGESTORA=M.CDUNIDADEGESTORA AND H.NRCOMPLHISTORICO=M.NRCOMPLHISTORICO) ' +
      'WHERE M.DTANOEMISSAO < '+Ano.Text+' ' +
      'AND ((M.CDTIPOMOVIMENTO IN (440,443,534) AND M.CDHISTORICOSISTEMA IN (534,540,440)) OR (M.CDTIPOMOVIMENTO IN (464) AND M.CDHISTORICOSISTEMA IN (534,540,440))) ' +
      'ORDER BY M.CDUNIDADEGESTORA, M.DTANOEMISSAO, M.NREMPENHO, M.NRSEQUENCIA, M.DTMOVIMENTO, M.VLMOVIMENTO';
  DM.QOrigem.OPEN;
  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

  DM.Localiza.close;
  DM.Localiza.Commandtext := 'select dd.rproc, dp.* from despes dp inner join desdis dd on (dd.ficha =dp.ficha and dd.balco like ''3211%'') where dp.vadem > 0.00 ';
  DM.Localiza.OPEN;
  DM.Localiza.IndexFieldNames := 'rproc;ID_cdunidadegestora; id_dtanoemissao; id_nrempenho; ID_cdfornecedor';

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'select * from viewliq where pkemp = -1';
  DM.QDESTINO.OPEN;

  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    if DM.Localiza.FindKey(['N', trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), trim(DM.QOrigem.FieldByName('dtanoemissao').AsString),
      trim(DM.QOrigem.FieldByName('nrempenho').AsString),trim(DM.QOrigem.FieldByName('cdfornecedor').AsString)]) then
    begin
      if pkemp_ant <> DM.Localiza.FieldByName('pkemp').AsInteger then
        numsub_new := 0;
      pkemp_ant := DM.Localiza.FieldByName('pkemp').AsInteger;
      inc(numsub_new);
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('modulo').AsString := 'LIQ_RP';
      DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
      DM.QDESTINO.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
      DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
      DM.QDESTINO.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
      DM.QDESTINO.FieldByName('ID_nrsequenciasubempenho').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasubempenho').AsString);
      DM.QDESTINO.FieldByName('ID_nrsequenciasistema').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
      DM.QDESTINO.FieldByName('pkemp').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
      DM.QDESTINO.FieldByName('numsub').AsInteger := Numsub_new;
      DM.QDESTINO.FieldByName('NEMPF').AsInteger := 0;
      DM.QDESTINO.FieldByName('IE').AsInteger := 0;
      DM.QDESTINO.FieldByName('NEMPV').AsInteger := 0;
      DM.QDESTINO.FieldByName('FASE').AsInteger := 0;
      DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('vadem').ascurrency;
      DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.QOrigem.FieldByName('DTMOVIMENTO').AsString);
      DM.QDESTINO.FieldByName('VENCI').AsString := ValiData(DM.QOrigem.FieldByName('DTVENCIMENTO').AsString);
      DM.QDESTINO.FieldByName('PRODU').AsString := 'SeqSub: ' + dm.QORIGEM.FieldByName('NRSEQUENCIASUBEMPENHO').AsString + '  ' + Tira_Char39(4096, DM.QOrigem.FieldByName('produ').AsString);
      DM.QDESTINO.post;
    end
    else
      memoStatus.Lines.Add('Não achou Emp/Ano: ' + trim(DM.QOrigem.FieldByName('nrempenho').AsString) + '/' + trim(DM.QOrigem.FieldByName('dtanoemissao').AsString) + ' R$ ' +
        trim(DM.QOrigem.FieldByName('vadem').AsString));
    DM.QOrigem.next;
  end;
  STATUS.caption := ' Salvando as Liquidações do Não Processado.... ';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Viewliq NPROC OK';
  STATUS.update;
  memoStatus.Lines.Add('Viewliq NPROC OK');
  Desconecta_Conecta;

  // ******  ANULACAO DE LIQUIDACAO DE RESTOS ******
   SITU.caption := 'Anulação de Liquidacao de Restos nao processado....';
   SITU.update;
   DM.QOrigem.close;

   if Ano.Value > 2012 then
     DM.QOrigem.Commandtext :=
        ' SELECT  cast(h.dscomplhistorico as varchar (2048)) as produ,  coalesce(v.dtvencimento,m.dtmovimento) as dtvencimento, ' +
        ' case when (m.cdTipoMovimento in (441,444) or m.cdHistoricoPadrao in (535,541)) then m.vlmovimento*(-1) else m.vlmovimento end as vadem, ' +
        ' m.*  FROM [' + bnc_cpe + '].[dbo].[MOVIMENTO] m ' +
        ' left join [' + bnc_cpe + '].[dbo].MovimentoVencimentoEmpenho v on (v.cdunidadegestora = m.cdunidadegestora and v.nrsequencia=m.nrsequencia and ' +
        '   v.nrempenho=m.nrempenho  and v.dtanoemissao=m.dtanoemissao and v.idtipomovimento=3 ) ' +
        ' left join [' + bnc_cpe + '].[dbo].complementohistorico h on (h.cdunidadegestora=m.cdunidadegestora and h.nrcomplhistorico=m.nrcomplhistorico) ' +
        ' where m.dtanoemissao <  ' + Ano.text +   ' and m.cdTipoMovimento in (441,444)  and m.cdHistoricoPadrao in (535,541) ' +
        ' order by m.cdunidadegestora, m.dtanoemissao, m.nrempenho, m.nrsequencia,m.dtmovimento, m.vlmovimento '
   else
     DM.QOrigem.Commandtext :=
        'SELECT M.NRSEQUENCIASISTEMA, M.DTMOVIMENTO, M.NRSEQUENCIA, ' +
        'M.CDTIPOMOVIMENTO, ' +
        '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE M.CDTIPOMOVIMENTO = Z.CDHISTORICOPADRAO) AS DS_TIPOMOV, ' +
        'M.CDHISTORICOSISTEMA, ' +
        '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE M.CDHISTORICOSISTEMA = Z.CDHISTORICOPADRAO) AS DS_HISSIS, ' +
        'M.CDHISTORICOPADRAO, ' +
        '(SELECT Z.DSHISTORICORELATO FROM ['+BNC_CPC+'].DBO.HISTORICOPADRAO Z WHERE M.CDHISTORICOPADRAO = Z.CDHISTORICOPADRAO) AS DS_HISPADRAO, ' +
        'COALESCE(V.DTVENCIMENTO,M.DTMOVIMENTO) AS DTVENCIMENTO, ' +
        'CASE ' +
        '    WHEN (M.CDTIPOMOVIMENTO IN (441,444) OR M.CDHISTORICOPADRAO IN (535,541)) THEN M.VLMOVIMENTO*(-1) ' +
        '    ELSE M.VLMOVIMENTO END AS VADEM, ' +
        'M.*,cast(h.dscomplhistorico as varchar (2048)) as produ ' +
        'FROM ['+BNC_CPE+'].[DBO].[MOVIMENTO] M ' +
        'LEFT JOIN ['+BNC_CPE+'].[DBO].MOVIMENTOVENCIMENTOEMPENHO V ON (V.CDUNIDADEGESTORA = M.CDUNIDADEGESTORA AND V.NRSEQUENCIA=M.NRSEQUENCIA AND V.NREMPENHO=M.NREMPENHO  AND V.DTANOEMISSAO=M.DTANOEMISSAO AND V.IDTIPOMOVIMENTO=3 ) ' +
        'LEFT JOIN ['+BNC_CPE+'].[DBO].COMPLEMENTOHISTORICO H ON (H.CDUNIDADEGESTORA=M.CDUNIDADEGESTORA AND H.NRCOMPLHISTORICO=M.NRCOMPLHISTORICO) ' +
        'WHERE M.DTANOEMISSAO <  2011 ' +
        'AND (M.CDTIPOMOVIMENTO IN (441,444) AND M.CDHISTORICOSISTEMA IN (535,541,441)) /*OR (M.CDTIPOMOVIMENTO IN (465) AND M.CDHISTORICOSISTEMA IN (535,541,441)))*/ ' +
        'ORDER BY M.CDUNIDADEGESTORA, M.DTANOEMISSAO, M.NREMPENHO, M.NRSEQUENCIA, M.DTMOVIMENTO, M.VLMOVIMENTO';
   DM.QOrigem.OPEN;
   p.Position := 0;
   p.Max := DM.QOrigem.RecordCount;
   EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
   EM.update;

   DM.Localiza.close;
   DM.Localiza.Commandtext := 'select dd.rproc, dp.* from despes dp inner join desdis dd on (dd.ficha =dp.ficha and dd.balco like ''3211%'') where dp.vadem > 0.00 ';
   DM.Localiza.OPEN;
   DM.Localiza.IndexFieldNames := 'rproc;ID_cdunidadegestora; id_dtanoemissao; id_nrempenho; ID_cdfornecedor';

   dm.Localiza1.Close;
   DM.Localiza1.Commandtext := 'select v.* from viewliq v where v.modulo = ''LIQ_RP'' ';
   DM.Localiza1.OPEN;

   DM.QDESTINO.close;
   DM.QDESTINO.Commandtext := 'select * from viewliq where pkemp = -1';
   DM.QDESTINO.OPEN;

   DM.QOrigem.first;
   while not DM.QOrigem.eof do
   begin
     p.Position := DM.QOrigem.RecNo;
     EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
     EM.update;
     if DM.Localiza.FindKey(['N', trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), trim(DM.QOrigem.FieldByName('dtanoemissao').AsString),
      trim(DM.QOrigem.FieldByName('nrempenho').AsString),trim(DM.QOrigem.FieldByName('cdfornecedor').AsString)]) then
      begin
        DM.cdsTemp.Close;
        DM.cdsTemp.CommandText := 'select max(numsub) as numsub from viewliq where pkemp = ' + DM.Localiza.FieldByName('pkemp').AsString;
        DM.cdsTemp.open;
        numsub_new := DM.cdsTemp.FieldByName('numsub').AsInteger;
        inc(numsub_new);
        DM.QDESTINO.append;
        DM.QDESTINO.FieldByName('modulo').AsString := 'LIQ_RP_AN';
        DM.QDESTINO.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
        DM.QDESTINO.FieldByName('ID_dtanoemissao').AsString := trim(DM.QOrigem.FieldByName('dtanoemissao').AsString);
        DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
        DM.QDESTINO.FieldByName('ID_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
        DM.QDESTINO.FieldByName('ID_nrsequencia').AsString := trim(DM.QOrigem.FieldByName('nrsequencia').AsString);
        DM.QDESTINO.FieldByName('ID_nrsequenciasubempenho').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasubempenho').AsString);
        DM.QDESTINO.FieldByName('ID_nrsequenciasistema').AsString := trim(DM.QOrigem.FieldByName('nrsequenciasistema').AsString);
        DM.QDESTINO.FieldByName('pkemp').AsInteger := DM.Localiza.FieldByName('pkemp').AsInteger;
        DM.QDESTINO.FieldByName('numsub').AsInteger := Numsub_new;
          dm.Localiza1.filtered := false;
          dm.Localiza1.filter := ' pkemp = ' + dm.Localiza.FieldByName('pkemp').asstring + ' and vadem >= '+ DM.QOrigem.FieldByName('vlmovimento').AsString;
          dm.Localiza1.filtered := true;
        DM.QDESTINO.FieldByName('numsuba').AsInteger := DM.Localiza1.FieldByName('numsub').AsInteger;
        DM.QDESTINO.FieldByName('NEMPF').AsInteger := 0;
        DM.QDESTINO.FieldByName('IE').AsInteger := 0;
        DM.QDESTINO.FieldByName('NEMPV').AsInteger := 0;
        DM.QDESTINO.FieldByName('FASE').AsInteger := 0;
        DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('vadem').ascurrency;
        DM.QDESTINO.FieldByName('anula').ascurrency := DM.QOrigem.FieldByName('vadem').ascurrency;
        DM.QDESTINO.FieldByName('DATAE').AsString := ValiData(DM.QOrigem.FieldByName('DTMOVIMENTO').AsString);
        DM.QDESTINO.FieldByName('VENCI').AsString := ValiData(DM.QOrigem.FieldByName('DTVENCIMENTO').AsString);
        DM.QDESTINO.FieldByName('PRODU').AsString := 'SeqSub: ' + dm.QORIGEM.FieldByName('NRSEQUENCIASUBEMPENHO').AsString + '  ' + Tira_Char39(4096, DM.QOrigem.FieldByName('produ').AsString);
        DM.QDESTINO.post;
      end
      else
        memoStatus.Lines.Add('Não achou Emp/Ano: ' + trim(DM.QOrigem.FieldByName('nrempenho').AsString) + '/' + trim(DM.QOrigem.FieldByName('dtanoemissao').AsString) + ' R$ ' +
          trim(DM.QOrigem.FieldByName('vadem').AsString));
      DM.QOrigem.next;
   end;
   STATUS.caption := ' Salvando Anulações de Liquidações do Não Processado.... ';
   STATUS.update;
   DM.QDESTINO.ApplyUpdates(-1);
   STATUS.caption := 'Viewliq AN NPROC OK';
   STATUS.update;
   memoStatus.Lines.Add('Viewliq AN NPROC OK');
   Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Marreta_Extrato_Bancario;
var caixa: string; saldo_inicial: real; verifica: real; NTRANSF: integer;
  FUNCTION retorna_ultimo_dia_mes(wmes, wano: word): word;
  VAR UltMes: Tdatetime;
  BEGIN
    inc(wmes);
    IF wmes > 12 THEN
    BEGIN
      wmes := 1;
      inc(wano);
    END;
    UltMes := EncodeDate(wano, wmes, 1) - 1;
    DecodeDate(UltMes, wano, wmes, Result);
  END;

begin
  SITU.caption := 'Marreta Saldo Bancário....';
  SITU.update;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := ' delete FROM TRANSFERENCIA WHERE nome like ''Ajuste de Saldos%'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := ' select coalesce(max(NTRANSF),0) as NTRANSF FROM TRANSFERENCIA ';
  DM.Atualiza.OPEN;
  NTRANSF := DM.Atualiza.FieldByName('NTRANSF').AsInteger;
  DM.LocalizaDestino.close;
  // DM.LocalizaDestino.Commandtext := 'SELECT DISTINCT DTLAN FROM ORDCAI WHERE DTLAN<>''01.01.' + inttostr(ano.Value) + ''' ';//and extract(month from dtlan) < ''07''  ';
  DM.LocalizaDestino.Commandtext := 'SELECT DISTINCT EXTRACT(MONTH FROM DTLAN) AS MES FROM ORDCAI WHERE DTLAN<>''01.01.' + ano.text + ''' ORDER BY 1 ';
  DM.LocalizaDestino.OPEN;
  p.Max := DM.LocalizaDestino.RecordCount;
  caixa := Traz_Conta_Caixa(Ent_padrao.text);
  DM.cdsDescon.close;

  DM.Localiza.close;
  DM.Localiza.Commandtext := 'select conta from descon where balco not like ''3111%'' ';
  DM.Localiza.OPEN;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TRANSFERENCIA';
  DM.QDESTINO.OPEN;

  DM.LocalizaDestino.first;
  while not DM.LocalizaDestino.eof do // roda todos os dias q teve movimento
  begin
    p.Position := DM.LocalizaDestino.RecNo;
    DM.Localiza.first;
    while not DM.Localiza.eof do
    begin
      EM.caption := 'Dia ' + inttostr(DM.LocalizaDestino.RecNo) + ' de ' + inttostr(p.Max) + ' - Contas ' + inttostr(DM.Localiza.RecNo) + ' de ' +
        inttostr(DM.Localiza.RecordCount);
      EM.update;
      saldo_inicial := Traz_Saldo_Inicial(DM.Localiza.FieldByName('conta').AsString, Ent_padrao.text);
      DM.QOrigem.close;
      DM.QOrigem.Commandtext :=
      // ' select mb.mb_ano, mb.mb_banco, sum(case when mb.mb_mov = ''E'' then mb.mb_valor else mb.mb_valor*-1 end ) as valor ' +
      // ' from movimentos_bancos mb where mb.mb_ano = ' + inttostr(ano.Value) + ' and mb.mb_banco=''' + DM.Localiza.FieldByName('conta').AsString + ''' ' +
      // ' and mb.mb_data <=''' + FormatDateTime('DD.MM.YYYY', DM.LocalizaDestino.FieldByName('DTLAN').ASDATETIME) + ''' ' + ' group by mb.mb_ano, mb.mb_banco ';

        'select s.scont_num as conta , s.scont_saldoatual AS valor ' + 'from saldocontasbancarias_tes s ' + 'where s.scont_exercicio = ' + inttostr(ano.Value) +
        'AND s.scont_num =  ''' + DM.Localiza.FieldByName('conta').AsString + ''' ' + 'and s.scont_mes = ''' + DM.LocalizaDestino.FieldByName('mes').AsString + ''' ';

      DM.QOrigem.OPEN;

      verifica := saldo_inicial + DM.QOrigem.FieldByName('valor').ascurrency;

      DM.CdsDestino.close;
      DM.CdsDestino.Commandtext := 'SELECT SUM(CREDI)-SUM(DEBIT) AS SALDO FROM ORDCAI WHERE CONTA=''' + DM.Localiza.FieldByName('CONTA').AsString + ''' ' +
        ' AND extract(month from DTLAN)<=''' + DM.LocalizaDestino.FieldByName('mes').AsString + ''' ';
      // ' AND DTLAN<=''' + FormatDateTime('DD.MM.YYYY', DM.LocalizaDestino.FieldByName('DTLAN').ASDATETIME) + ''' ';
      DM.CdsDestino.OPEN;

      if Arredonda(verifica, 2) > Arredonda(DM.CdsDestino.FieldByName('saldo').ascurrency, 2) then
      begin
        inc(NTRANSF);
        DM.QDESTINO.append;
        DM.QDESTINO.FieldByName('NTRANSF').AsInteger := NTRANSF;
        DM.QDESTINO.FieldByName('DTLAN').AsString := FORMATCURR('00', retorna_ultimo_dia_mes(DM.LocalizaDestino.FieldByName('MES').AsInteger, ano.Value)) + '/' +
          DM.LocalizaDestino.FieldByName('MES').AsString + '/' + ano.text;
        DM.QDESTINO.FieldByName('VALOR').ascurrency := Arredonda(verifica - DM.CdsDestino.FieldByName('SALDO').ascurrency, 2);
        DM.QDESTINO.FieldByName('CONTAORIGEM').AsString := caixa;
        DM.QDESTINO.FieldByName('CONTADESTINO').AsString := DM.Localiza.FieldByName('CONTA').AsString;
        DM.QDESTINO.FieldByName('NOME').AsString := 'Ajuste de Saldos - ' + DM.QDESTINO.FieldByName('CONTAORIGEM').AsString + ' -> ' +
          DM.QDESTINO.FieldByName('CONTADESTINO').AsString;
        DM.QDESTINO.post;
        DM.QDESTINO.ApplyUpdates(-1);
      end
      else if Arredonda(verifica, 2) < Arredonda(DM.CdsDestino.FieldByName('saldo').ascurrency, 2) then
      begin
        inc(NTRANSF);
        DM.QDESTINO.append;
        DM.QDESTINO.FieldByName('NTRANSF').AsInteger := NTRANSF;
        DM.QDESTINO.FieldByName('DTLAN').AsString := FORMATCURR('00', retorna_ultimo_dia_mes(DM.LocalizaDestino.FieldByName('MES').AsInteger, ano.Value)) + '/' +
          DM.LocalizaDestino.FieldByName('MES').AsString + '/' + ano.text;
        DM.QDESTINO.FieldByName('VALOR').ascurrency := Arredonda(DM.CdsDestino.FieldByName('SALDO').ascurrency - verifica, 2);
        DM.QDESTINO.FieldByName('CONTAORIGEM').AsString := DM.Localiza.FieldByName('CONTA').AsString;
        DM.QDESTINO.FieldByName('CONTADESTINO').AsString := caixa;
        DM.QDESTINO.FieldByName('NOME').AsString := 'Ajuste de Saldos - ' + DM.QDESTINO.FieldByName('CONTAORIGEM').AsString + ' -> ' +
          DM.QDESTINO.FieldByName('CONTADESTINO').AsString;
        DM.QDESTINO.post;
        DM.QDESTINO.ApplyUpdates(-1);
      end;
      DM.Localiza.next;
      APPLICATION.ProcessMessages;
    end;
    DM.LocalizaDestino.next;
  end;
  STATUS.caption := 'Marreta dos Saldos Bancarios OK ';
  STATUS.update;
  memoStatus.Lines.Add(' Marreta dos Saldos Bancarios OK ');
  Desconecta_Conecta;
end;

function TTfrmprincipal_Conversao.Nao_Vazio(texto: string): string;
begin
  texto := Tira_Char39(4096, texto);
  if texto <> '' then
    Result := texto
  else
    Result := '';
end;

PROCEDURE TTfrmprincipal_Conversao.Entidades;
BEGIN
  // ENTIDADE
  SITU.caption := 'ENTIDADES CONTABEIS...';
  SITU.update;
  CriaCampo('TABEMPRESA', 'ID_CDUNIDADEGESTORA', '20');
  // CriaCampo('TABEMPRESA', 'ID_codigo_tcm_pa', '20');
  // CriaCampo('TABEMPRESA', 'ID_codigosagres', '20');
  // CriaCampo('TABEMPRESA', 'ID_listasagres', '20');

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update cadcli set empresa = null ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'delete from tabempresa ';
  DM.Atualiza.ExecSQL;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABEMPRESA';
  DM.QDESTINO.OPEN;

  DM.ATUALIZAORIGEM.close;
  DM.ATUALIZAORIGEM.Commandtext := 'select * from '+BNC_CPE+'.dbo.UNIDADEGESTORA WHERE CDUNIDADEGESTORA < 90 ';
  DM.ATUALIZAORIGEM.OPEN;
  p.Position := 0;
  p.Max := DM.ATUALIZAORIGEM.RecordCount;
  DM.ATUALIZAORIGEM.first;

  WHILE NOT DM.ATUALIZAORIGEM.eof DO
  BEGIN
    p.Position := DM.ATUALIZAORIGEM.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    // IF dm.QDESTINO.Locate('id_empr', dm.ATUALIZAORIGEM.FieldByName('ct_empr').AsString, []) THEN
    // dm.QDESTINO.Edit
    // ELSE
    // BEGIN
    DM.QDESTINO.append;
    DM.QDESTINO.FieldByName('EMPRESA').AsString := trim(DM.ATUALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString);

    // END;
    DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := trim(DM.ATUALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString);
    // dm.QDESTINO.FieldByName('ID_codigo_tcm_pa').AsString := trim(dm.ATUALIZAORIGEM.FieldByName('tcmpa').AsString);
    // dm.QDESTINO.FieldByName('id_codigosagres').AsString := trim(dm.ATUALIZAORIGEM.FieldByName('codigosagres').AsString);
    // dm.QDESTINO.FieldByName('id_listasagres').AsString := trim(dm.ATUALIZAORIGEM.FieldByName('listasagres').AsString);
    DM.QDESTINO.FieldByName('NOME').AsString := DM.ATUALIZAORIGEM.FieldByName('DSUNIDADEGESTORA').AsString;
    // DM.QDESTINO.FieldByName('endereco').AsString := Tira_Char39(1024, DM.ATUALIZAORIGEM.FieldByName('endereco').AsString);
    // DM.QDESTINO.FieldByName('fone').AsString := trim(DM.ATUALIZAORIGEM.FieldByName('tel').AsString);
    // DM.QDESTINO.FieldByName('FAX').AsString := ''; trim(DM.ATUALIZAORIGEM.FieldByName('fax').AsString);
    // DM.QDESTINO.FieldByName('bairro').AsString := DM.ATUALIZAORIGEM.FieldByName('bairro').AsString;
    //
    // if copy(DM.QDESTINO.FieldByName('NOME').AsString, 1, 1) = 'P' then
    // DM.QDESTINO.FieldByName('TIPO').AsString := '1'
    // else if copy(DM.QDESTINO.FieldByName('NOME').AsString, 1, 1) = 'C' then
    // DM.QDESTINO.FieldByName('TIPO').AsString := '2'
    // else if copy(DM.QDESTINO.FieldByName('NOME').AsString, 1, 1) = 'A' then
    // DM.QDESTINO.FieldByName('TIPO').AsString := '5'
    // else
    // DM.QDESTINO.FieldByName('TIPO').AsString := '10';
    DM.QDESTINO.FieldByName('TIPO').AsString := trim(DM.ATUALIZAORIGEM.FieldByName('IDTIPOINSTITUICAO').AsString);
    if DM.QDESTINO.FieldByName('TIPO').AsInteger > 2 then
      DM.QDESTINO.FieldByName('ADM').AsString := 'I'
    else
      DM.QDESTINO.FieldByName('ADM').AsString := 'D';
    // dm.QDESTINO.FieldByName('ADM').ASSTRING := UPPERCASE(COPY(dm.ATUALIZAORIGEM.FieldByName('tip_adm').ASSTRING, 1, 1));
    DM.QDESTINO.FieldByName('codaudesp').AsInteger := DM.ATUALIZAORIGEM.FieldByName('cdunidadegestoratce').AsInteger;
    // dm.QDESTINO.FieldByName('id_codentaudesp').AsString := dm.ATUALIZAORIGEM.FieldByName('codentaudesp').AsString;
    // dm.QDESTINO.FieldByName('gera_audesp').AsString := dm.ATUALIZAORIGEM.FieldByName('enviar_dados_aplic').AsString;
    // DM.QDESTINO.FieldByName('cgc').AsString := FormataCNPJ_CPF(DM.ATUALIZAORIGEM.FieldByName('cnpj').AsString);
    //
    // DM.QDESTINO.FieldByName('cep').AsString := Formata_CEP(DM.ATUALIZAORIGEM.FieldByName('cep').AsString);
    // DM.QDESTINO.FieldByName('email_empresa').AsString := Tira_Char39(1024, DM.ATUALIZAORIGEM.FieldByName('email').AsString);
    // dm.QDESTINO.FieldByName('contato').AsString := dm.ATUALIZAORIGEM.FieldByName('contato').AsString;
    DM.QDESTINO.FieldByName('MOSTRA_WEB').AsString := 'N';

    // dm.QDESTINO.FieldByName('nome_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('nome_cont').AsString;
    // dm.QDESTINO.FieldByName('cpf_cont').AsString := FormataCNPJ_CPF(dm.ATUALIZAORIGEM.FieldByName('cpf_cont').AsString);
    // dm.QDESTINO.FieldByName('crc_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('crc_cont').AsString;
    // dm.QDESTINO.FieldByName('uf_crc_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('uf_crc_cont').AsString;
    // dm.QDESTINO.FieldByName('rg_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('rg_cont').AsString;
    // dm.QDESTINO.FieldByName('end_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('end_cont').AsString;
    // dm.QDESTINO.FieldByName('fone_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('fone_cont').AsString;
    // dm.QDESTINO.FieldByName('filiacao_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('filiacao_cont').AsString;
    // dm.QDESTINO.FieldByName('inimandato_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('inimandato_cont').AsString;
    // dm.QDESTINO.FieldByName('fimmandato_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('fimmandato_cont').AsString;
    // dm.QDESTINO.FieldByName('email_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('email_cont').AsString;
    // dm.QDESTINO.FieldByName('bairro_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('bairro_cont').AsString;
    // dm.QDESTINO.FieldByName('cidade_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('cidade_cont').AsString;
    // dm.QDESTINO.FieldByName('uf_cont').AsString := dm.ATUALIZAORIGEM.FieldByName('uf_cont').AsString;
    // dm.QDESTINO.FieldByName('cep_cont').AsString := Formata_CEP(dm.ATUALIZAORIGEM.FieldByName('cep_cont').AsString);
    //
    // dm.QDESTINO.FieldByName('nome_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('nome_tesou').AsString;
    // dm.QDESTINO.FieldByName('cpf_tesou').AsString := FormataCNPJ_CPF(dm.ATUALIZAORIGEM.FieldByName('cpf_tesou').AsString);
    // dm.QDESTINO.FieldByName('cargo_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('cargo_tesou').AsString;
    // dm.QDESTINO.FieldByName('rg_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('rg_tesou').AsString;
    // dm.QDESTINO.FieldByName('end_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('end_tesou').AsString;
    // dm.QDESTINO.FieldByName('fone_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('fone_tesou').AsString;
    // dm.QDESTINO.FieldByName('filiacao_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('filiacao_tesou').AsString;
    // dm.QDESTINO.FieldByName('inimandato_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('inimandato_tesou').AsString;
    // dm.QDESTINO.FieldByName('fimmandato_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('fimmandato_tesou').AsString;
    // dm.QDESTINO.FieldByName('email_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('email_tesou').AsString;
    // dm.QDESTINO.FieldByName('bairro_tesou').AsString := dm.ATUALIZAORIGEM.FieldByName('bairro_tesou').AsString;
    // dm.QDESTINO.FieldByName('cep_tesou').AsString := Formata_CEP(dm.ATUALIZAORIGEM.FieldByName('cep_tesou').AsString);
    //
    // dm.QDESTINO.FieldByName('nome_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('nome_ordena').AsString;
    // dm.QDESTINO.FieldByName('cpf_ordena').AsString := FormataCNPJ_CPF(dm.ATUALIZAORIGEM.FieldByName('cpf_ordena').AsString);
    // dm.QDESTINO.FieldByName('cargo_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('cargo_ordena').AsString;
    // dm.QDESTINO.FieldByName('rg_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('rg_ordena').AsString;
    // dm.QDESTINO.FieldByName('end_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('end_ordena').AsString;
    // dm.QDESTINO.FieldByName('fone_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('fone_ordena').AsString;
    // dm.QDESTINO.FieldByName('filiacao_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('filiacao_ordena').AsString;
    // dm.QDESTINO.FieldByName('inimandato_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('inimandato_ordena').AsString;
    // dm.QDESTINO.FieldByName('fimmandato_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('fimmandato_ordena').AsString;
    // dm.QDESTINO.FieldByName('email_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('email_ordena').AsString;
    // dm.QDESTINO.FieldByName('bairro_ordena').AsString := dm.ATUALIZAORIGEM.FieldByName('bairro_ordena').AsString;
    // dm.QDESTINO.FieldByName('cep_ordena').AsString := Formata_CEP(dm.ATUALIZAORIGEM.FieldByName('cep_ordena').AsString);
    //
    // dm.QDESTINO.FieldByName('nome_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('nome_finan').AsString;
    // dm.QDESTINO.FieldByName('cpf_finan').AsString := FormataCNPJ_CPF(dm.ATUALIZAORIGEM.FieldByName('cpf_finan').AsString);
    // dm.QDESTINO.FieldByName('rg_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('rg_finan').AsString;
    // dm.QDESTINO.FieldByName('end_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('end_finan').AsString;
    // dm.QDESTINO.FieldByName('fone_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('fone_finan').AsString;
    // dm.QDESTINO.FieldByName('filiacao_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('filiacao_finan').AsString;
    // dm.QDESTINO.FieldByName('inimandato_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('inimandato_finan').AsString;
    // dm.QDESTINO.FieldByName('fimmandato_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('fimmandato_finan').AsString;
    // dm.QDESTINO.FieldByName('email_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('email_finan').AsString;
    // dm.QDESTINO.FieldByName('bairro_finan').AsString := dm.ATUALIZAORIGEM.FieldByName('bairro_finan').AsString;
    // dm.QDESTINO.FieldByName('cep_finan').AsString := Formata_CEP(dm.ATUALIZAORIGEM.FieldByName('cep_finan').AsString);
    //
    // dm.QDESTINO.FieldByName('nome_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('nome_autorid').AsString;
    // dm.QDESTINO.FieldByName('cpf_autorid').AsString := FormataCNPJ_CPF(dm.ATUALIZAORIGEM.FieldByName('cpf_autorid').AsString);
    // dm.QDESTINO.FieldByName('cargo_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('cargo_autorid').AsString;
    // dm.QDESTINO.FieldByName('rg_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('rg_autorid').AsString;
    // dm.QDESTINO.FieldByName('end_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('end_autorid').AsString;
    // dm.QDESTINO.FieldByName('fone_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('fone_autorid').AsString;
    // dm.QDESTINO.FieldByName('filiacao_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('filiacao_autorid').AsString;
    // dm.QDESTINO.FieldByName('inimandato_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('inimandato_autorid').AsString;
    // dm.QDESTINO.FieldByName('fimmandato_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('fimmandato_autorid').AsString;
    // dm.QDESTINO.FieldByName('email_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('email_autorid').AsString;
    // dm.QDESTINO.FieldByName('bairro_autorid').AsString := dm.ATUALIZAORIGEM.FieldByName('bairro_autorid').AsString;
    // dm.QDESTINO.FieldByName('cep_autorid').AsString := Formata_CEP(dm.ATUALIZAORIGEM.FieldByName('cep_autorid').AsString);
    //
    // dm.QDESTINO.FieldByName('inimandato_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('inimandato_gestor').AsString;
    // dm.QDESTINO.FieldByName('fimmandato_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('fimmandato_gestor').AsString;
    // dm.QDESTINO.FieldByName('end_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('end_gestor').AsString;
    // dm.QDESTINO.FieldByName('cidade_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('cidade_gestor').AsString;
    // dm.QDESTINO.FieldByName('uf_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('uf_gestor').AsString;
    // dm.QDESTINO.FieldByName('cep_gestor').AsString := Formata_CEP(dm.ATUALIZAORIGEM.FieldByName('cep_gestor').AsString);
    // dm.QDESTINO.FieldByName('cargo_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('cargo_gestor').AsString;
    // dm.QDESTINO.FieldByName('fone_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('fone_gestor').AsString;
    // dm.QDESTINO.FieldByName('email_gestor').AsString := dm.ATUALIZAORIGEM.FieldByName('email_gestor').AsString;

    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    DM.ATUALIZAORIGEM.next;
  END;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'select first 1 id_cdunidadegestora,empresa from tabempresa order by tipo asc ';
  DM.QAUX.OPEN;
  IF NOT DM.QAUX.IsEmpty THEN
  BEGIN
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'update cadcli set empresa = ' + DM.QAUX.FieldByName('empresa').AsString;
    DM.Atualiza.ExecSQL;
    Ent_padrao.text := DM.QAUX.FieldByName('id_cdunidadegestora').AsString;
  END;
  memoStatus.Lines.Add('Tabempresa - ok');
  Desconecta_Conecta;
END;

function TTfrmprincipal_Conversao.Existe_Agencia(AGENCIA, NOME: string): string;
begin
  if not DM.cdsAgencia.Active then
  begin
    DM.cdsAgencia.Commandtext := 'select agencia,nomeagencia from agencia';
    DM.cdsAgencia.OPEN;
    DM.cdsAgencia.IndexFieldNames := 'agencia';
  end;
  if not DM.cdsAgencia.FindKey([trim(AGENCIA)]) then
  begin
    DM.cdsAgencia.append;
    DM.cdsAgencia.FieldByName('agencia').AsString := trim(AGENCIA);
    DM.cdsAgencia.FieldByName('nomeagencia').AsString := Tira_Char39(100, NOME);
    DM.cdsAgencia.post;
    DM.cdsAgencia.ApplyUpdates(-1);
    DM.cdsAgencia.close;
  end;
  Result := trim(AGENCIA);
end;

function TTfrmprincipal_Conversao.Existe_banco(banco, NOME: string): string;
begin
  if not DM.cdsBanco.Active then
  begin
    DM.cdsBanco.Commandtext := 'select banco,nome from bancos';
    DM.cdsBanco.OPEN;
    DM.cdsBanco.IndexFieldNames := 'banco';
  end;
  if not DM.cdsBanco.FindKey([FORMATCURR('000', strtoint(PEGANUMERO(banco)))]) then
  begin
    DM.cdsBanco.append;
    DM.cdsBanco.FieldByName('banco').AsString := FORMATCURR('000', strtoint(PEGANUMERO(banco)));
    DM.cdsBanco.FieldByName('nome').AsString := Tira_Char39(40, NOME);
    DM.cdsBanco.post;
    DM.cdsBanco.ApplyUpdates(-1);
    DM.cdsBanco.close;
  end;
  Result := FORMATCURR('000', strtoint(PEGANUMERO(banco)));
end;

function TTfrmprincipal_Conversao.Existe_Codif(codif: string): string;
begin
  if trim(codif) = '' then
    codif := '-1';
  DM.CdsCodif.close;
  DM.CdsCodif.Commandtext := 'select codif from desfor where codif = ' + trim(codif);
  DM.CdsCodif.OPEN;
  if DM.CdsCodif.IsEmpty then
    Result := '-1'
  else
    Result := DM.CdsCodif.FieldByName('codif').AsString;
end;

function TTfrmprincipal_Conversao.Existe_Conpla(balco, NOME: string): string;
begin
  if not DM.cdsConpla.Active then
  begin
    DM.cdsConpla.Commandtext := 'select balco, titco,D_C,tip from conpla ';
    DM.cdsConpla.OPEN;
  end;
  DM.cdsConpla.IndexFieldNames := 'balco';
  if not DM.cdsConpla.FindKey([balco]) then
    DM.cdsConpla.append
  else
    DM.cdsConpla.edit;
  DM.cdsConpla.FieldByName('balco').AsString := balco;
  DM.cdsConpla.FieldByName('titco').AsString := Tira_Char39(50, NOME);
  if copy(balco, 1, 2) = '31' then
    DM.cdsConpla.FieldByName('D_C').AsString := 'D'
  else
    DM.cdsConpla.FieldByName('D_C').AsString := 'C';
  DM.cdsConpla.FieldByName('tip').AsString := copy(balco, 1, 1);
  DM.cdsConpla.post;
  DM.cdsConpla.ApplyUpdates(-1);
  DM.cdsConpla.close;
  DM.cdsConplaSCPI.close;

  Result := balco;
end;

function TTfrmprincipal_Conversao.Existe_Conpla_SCPI(empresa, balco, NOME: string): string;
begin
  Existe_Conpla(balco, NOME);
  if not DM.cdsConplaSCPI.Active then
  begin
    DM.cdsConplaSCPI.Commandtext := 'select empresa, balco, titco,D_C,tip from conpla_scpi ';
    DM.cdsConplaSCPI.OPEN;
    DM.cdsConplaSCPI.IndexFieldNames := 'empresa;balco';
  end;
  if not DM.cdsConplaSCPI.FindKey([empresa, balco]) then
    DM.cdsConplaSCPI.append
  else
    DM.cdsConplaSCPI.edit;
  DM.cdsConplaSCPI.FieldByName('empresa').AsString := trim(empresa);
  DM.cdsConplaSCPI.FieldByName('balco').AsString := balco;
  DM.cdsConplaSCPI.FieldByName('titco').AsString := Tira_Char39(50, NOME);
  if copy(balco, 1, 2) = '31' then
    DM.cdsConplaSCPI.FieldByName('D_C').AsString := 'D'
  else
    DM.cdsConplaSCPI.FieldByName('D_C').AsString := 'C';
  DM.cdsConplaSCPI.FieldByName('tip').AsString := copy(balco, 1, 1);
  DM.cdsConplaSCPI.post;
  DM.cdsConplaSCPI.ApplyUpdates(-1);
  DM.cdsConplaSCPI.close;

  Result := balco;
end;

procedure TTfrmprincipal_Conversao.Transferencia_de_Extra_para_Orcamentaria;
VAR nlanc_new: Integer; contacaixa, ficha_extra, ficha_or: STRING;
BEGIN
  SITU.Caption := 'Transf de Extra -> Orcamentaria...';
  SITU.Update;
  CriaCampo('RECEIT', 'ID_NRSEQUENCIASISTEMA_TRANSF', '20');
  CriaCampo('RECEIT', 'ID_NRSEQUENCIA_TRANSF', '20');

  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := ' delete from receit where modulo = ''EX->OR'' ';
  dm.ATUALIZA.ExecSQL;
  dm.ATUALIZA.Commandtext := ' delete from ordcre where modulo = ''EX->OR'' ';
  dm.ATUALIZA.ExecSQL;
  Atualiza_Generator;

  dm.QORIGEM.CLOSE;
  dm.QORIGEM.Commandtext :=
    ' select b.nrsequenciasistema, b.dtmovimento, b.nrsequencia, b.cdunidadegestora, b.cdcontacontabil, b.cddespesa, b.cdreceita, b.dtanoemissao, ' +
    ' b.nrempenho, b.idempenho, b.cdfornecedor, b.cdcontrapartida, b.cdtipomovimento  , c.cdnivelcontabil, c.dscontacontabil, b.vlmovimento, ' +
    ' b.cdhistoricopadrao, b.nrcomplhistorico, b.nrdocumentopagto, b.cdaplicacao, b.cdfonterecurso , ' +
    ' (SELECT TOP 1 cast(A.DSCOMPLHISTORICO as varchar(128)) FROM ' + bnc_cpe +
    ' .DBO.COMPLEMENTOHISTORICO  A WHERE A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA)DSCOMPLHISTORICO ' + ' from ' + bnc_cpe +
    '.DBO.movimento B ' + ' inner join ' + bnc_cpc + '.dbo.contacontabil c on c.cdcontacontabil= b.cdcontacontabil and c.cdnivelcontabil not like ''111%'' ' +
    ' where ((cdtipomovimento in (472,473,474,475)))  and b.nrempenho <> ''000000'' ' + //' and b.nrempenho = ''000133'' '+
    ' order by 2,3';
  dm.QORIGEM.OPEN;
  P.Max := dm.QORIGEM.RecordCount;
  dm.CdsOrigem.CLOSE;
  dm.CdsOrigem.Commandtext :=
    'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' + 'from [' +
    BNC_CPE + '].DBO.movimento a ' + 'inner join ' + BNC_CPC + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
    'where a.cdtipomovimento IN (464,465) ' + 'and b.cdnivelcontabil like ''111%'' ';
  dm.CdsOrigem.OPEN;
  dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

  dm.Localiza5.CLOSE;
  dm.Localiza5.Commandtext := 'select * from receit where nlanc = -1';
  dm.Localiza5.OPEN;
  dm.QORIGEM.first;
  WHILE NOT dm.QORIGEM.eof DO
  BEGIN
    P.Position := dm.QORIGEM.RecNo;
    EM.Caption := inttostr(dm.QORIGEM.RecNo) + ' de ' + inttostr(dm.QORIGEM.RecordCount);
    EM.Update;

    contacaixa := Traz_Conta_Caixa(dm.QORIGEM.FieldByName('CDUNIDADEGESTORA').AsString);
    IF trim(dm.QORIGEM.FieldByName('cdcontacontabil').AsString) <> '0' THEN
    BEGIN
      ficha_extra := Traz_Ficha_RecDis_EX(dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cdcontacontabil').AsString);
      ficha_or := Traz_Ficha_RecDis_OR(dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cdreceita').AsString);
    END;
    /// //*********  anula a receita extra *******************

    IF ((trim(ficha_extra) <> '') AND (trim(ficha_or) <> '')) THEN
    BEGIN
      dm.Localiza5.APPEND;
      dm.Localiza5.FieldByName('nlanc').Asinteger := 0;
      dm.Localiza5.FieldByName('dtlan').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      dm.Localiza5.FieldByName('dtrec').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      dm.Localiza5.FieldByName('ficha').AsString := ficha_extra;
      dm.Localiza5.FieldByName('conta').AsString := contacaixa;
      DM.Localiza5.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.Localiza5.FieldByName('CONTA').AsString);

      dm.Localiza5.FieldByName('modulo').AsString := 'EX->OR';
      dm.Localiza5.FieldByName('ID_NRSEQUENCIA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
      dm.Localiza5.FieldByName('ID_NRSEQUENCIASISTEMA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIASISTEMA').AsString;
      IF trim(dm.QORIGEM.FieldByName('nrdocumentopagto').AsString) <> '0' THEN
        dm.Localiza5.FieldByName('cheque').AsString := dm.QORIGEM.FieldByName('nrdocumentopagto').AsString;
      IF ((trim(dm.QORIGEM.FieldByName('cdtipomovimento').AsString) = '472')) THEN
      // OR (trim(dm.QORIGEM.FieldByName('cdtipomovimento').AsString) = '474')) THEN
      BEGIN
        dm.Localiza5.FieldByName('varec').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency * -1;
        dm.Localiza5.FieldByName('histo').AsString := 'AN - Desc Emp: ' + dm.QORIGEM.FieldByName('nrempenho').AsString + '  ' +
          dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString
      END
      ELSE
      BEGIN
        dm.Localiza5.FieldByName('varec').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency;
        dm.Localiza5.FieldByName('histo').AsString := 'Est. AN - Desc Emp: ' + dm.QORIGEM.FieldByName('nrempenho').AsString + '  ' +
          dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString
      END;

      if dm.localiza5.FieldByName('VAREC').AsCurrency < 0.00 then
      begin
        if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequenciasistema').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '465']) then
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
        else
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
      end
      else if dm.localiza5.FieldByName('VAREC').AsCurrency > 0.00 then
      begin
        if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequenciasistema').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
        else
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
      end;

      dm.Localiza5.Post;
//      dm.Localiza5.ApplyUpdates(-1);

      /// //*********  lanca a receita orcamentaria *******************
      dm.Localiza5.APPEND;
      dm.Localiza5.FieldByName('nlanc').Asinteger := 0;
      dm.Localiza5.FieldByName('dtlan').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      dm.Localiza5.FieldByName('dtrec').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      dm.Localiza5.FieldByName('ficha').AsString := ficha_or;
      dm.Localiza5.FieldByName('conta').AsString := contacaixa;
      DM.Localiza5.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.Localiza5.FieldByName('CONTA').AsString);

      dm.Localiza5.FieldByName('modulo').AsString := 'EX->OR';
      dm.Localiza5.FieldByName('ID_NRSEQUENCIA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
      dm.Localiza5.FieldByName('ID_NRSEQUENCIASISTEMA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIASISTEMA').AsString;
      IF trim(dm.QORIGEM.FieldByName('nrdocumentopagto').AsString) <> '0' THEN
        dm.Localiza5.FieldByName('cheque').AsString := dm.QORIGEM.FieldByName('nrdocumentopagto').AsString;
      IF ((trim(dm.QORIGEM.FieldByName('cdtipomovimento').AsString) = '472')) THEN
      // OR (trim(dm.QORIGEM.FieldByName('cdtipomovimento').AsString) = '474')) THEN
      BEGIN
        dm.Localiza5.FieldByName('varec').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency;
        dm.Localiza5.FieldByName('histo').AsString := 'Desc Emp: ' + dm.QORIGEM.FieldByName('nrempenho').AsString + '  ' + dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString
      END
      ELSE
      BEGIN
        dm.Localiza5.FieldByName('varec').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency * -1;
        dm.Localiza5.FieldByName('histo').AsString := 'AN - Desc Emp: ' + dm.QORIGEM.FieldByName('nrempenho').AsString + '  ' +
          dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString
      END;
      if dm.localiza5.FieldByName('VAREC').AsCurrency > 0.00 then
      begin
        if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequenciasistema').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '465']) then
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
        else
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
      end
      else if dm.localiza5.FieldByName('VAREC').AsCurrency < 0.00 then
      begin
        if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequenciasistema').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
        else
          dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
            FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
      end;
      dm.Localiza5.Post;
//      dm.Localiza5.ApplyUpdates(-1);
    END;
    APPLICATION.ProcessMessages;
    dm.QORIGEM.Next;
  END;
  STATUS.Caption := ' Salvando acerto de Extra -> Orcamentaria..... ';
  STATUS.Update;
  dm.Localiza5.ApplyUpdates(-1);
  STATUS.Caption := ' Acerto de Extra -> Orcamentaria - OK ';
  STATUS.Update;
  Desconecta_Conecta;
  memostatus.lines.add(' Acerto de Extra -> Orcamentaria - OK ');
  Ordens_Credito_EX_OR;
end;

procedure TTfrmprincipal_Conversao.Transferencia_Entre_Contas;
var documento: string;
begin
  CriaCampo('TRANSFERENCIA', 'ID_NRSEQUENCIA', '20');
  CriaCampo('TRANSFERENCIA', 'ID_CONCILIA', '20');
  SITU.caption := 'Transferencia entre contas.... ';
  SITU.update;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from transferencia';
  DM.Atualiza.ExecSQL;
  Atualiza_Generator;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'select * from transferencia where ntransf =-1 ';
  DM.QDESTINO.OPEN;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
    'SELECT M.*, CAST(H.DSCOMPLHISTORICO AS VARCHAR (2048)) AS PRODU ' +
    'FROM ['+BNC_CPE+'].DBO.MOVIMENTO M ' +
    'LEFT JOIN ['+BNC_CPE+'].DBO.COMPLEMENTOHISTORICO H ON (H.CDUNIDADEGESTORA=M.CDUNIDADEGESTORA AND H.NRCOMPLHISTORICO=M.NRCOMPLHISTORICO) ' +
    'WHERE M.CDCONTACONTABIL IN (SELECT CDCONTACONTABIL FROM ['+BNC_CPC+'].DBO.[CONTACONTABIL] WHERE IDCONTACONTABIL=''A'' AND CDNIVELCONTABIL LIKE ''111%'') ' +
    'AND M.CDCONTRAPARTIDA IN (SELECT CDCONTACONTABIL FROM ['+BNC_CPC+'].DBO.[CONTACONTABIL] WHERE IDCONTACONTABIL=''A'' AND CDNIVELCONTABIL LIKE ''111%'') ' +
    'AND M.CDTIPOMOVIMENTO = 465 ' +
    'ORDER BY M.DTMOVIMENTO';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;

  DM.QOrigem.first;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    DM.QDESTINO.append;
    DM.QDESTINO.FieldByName('ntransf').AsInteger := 0;
    DM.QDESTINO.FieldByName('contadestino').AsString := Traz_Conta_Descon(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), DM.QOrigem.FieldByName('CDCONTRAPARTIDA').AsString);
    DM.QDESTINO.FieldByName('CONTADdestino').AsString := Traz_Conta_DesconD(DM.QDESTINO.FieldByName('contadestino').AsString);

    DM.QDESTINO.FieldByName('contaorigem').AsString := Traz_Conta_Descon(trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString), DM.QOrigem.FieldByName('CDCONTACONTABIL').AsString);
    DM.QDESTINO.FieldByName('CONTADorigem').AsString := Traz_Conta_DesconD(DM.QDESTINO.FieldByName('contaorigem').AsString);

    DM.QDESTINO.FieldByName('valor').ascurrency := DM.QOrigem.FieldByName('VLMOVIMENTO').ascurrency;
    DM.QDESTINO.FieldByName('nome').AsString := 'Transferencia entre contas: ' + Tira_Char39(250, DM.QOrigem.FieldByName('produ').AsString);
    DM.QDESTINO.FieldByName('transf_completa').AsString := 'Transf entre contas: ' + DM.QDESTINO.FieldByName('contaorigem').AsString + ' -> ' +
      DM.QDESTINO.FieldByName('contadestino').AsString + '      ' + Tira_Char39(1024, DM.QOrigem.FieldByName('produ').AsString);
    DM.QDESTINO.FieldByName('dtlan').AsString := ValiData(DM.QOrigem.FieldByName('DTMOVIMENTO').AsString);
//    DM.QDESTINO.FieldByName('cheqn').AsString := trim(DM.QOrigem.FieldByName('cheqn').AsString);
    DM.QDESTINO.FieldByName('tipodocfinan').AsString := ''; // Traz_TipoDocFinan(dm.QOrigem.FieldByName('TipPagamento').AsString);
    dm.QDESTINO.FieldByName('ID_nrsequencia').AsString := dm.QORIGEM.FieldByName('nrsequencia').AsString;
    dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := dm.QORIGEM.FieldByName('IDMOVCONCILIADO').AsString + ';' +
        FORMATCURR('00', dm.QORIGEM.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.QORIGEM.FieldByName('DTMESCONCILIACAO').Asinteger);
    DM.QDESTINO.post;
    DM.QOrigem.next;
  end;
  STATUS.caption := 'Salvando as transferencias entre as contas bancarias.....';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Transferencias bancarias - OK';
  STATUS.update;
  memoStatus.Lines.Add('Transferencias bancarias - OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Transf_de_Extra_para_Extra;
var
  contacaixa: string;
  ficha_extra: string;
  ficha_extraa: string;
begin
  SITU.Caption := 'Transferencia entre extras...';
  SITU.Update;
//  CriaCampo('RECEIT', 'ID_NRSEQUENCIASISTEMA_TRANSF', '20');
//  CriaCampo('RECEIT', 'ID_NRSEQUENCIA_TRANSF', '20');
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := ' delete from receit where modulo LIKE ''EX-EX%'' ';
  dm.ATUALIZA.ExecSQL;
  dm.ATUALIZA.Commandtext := ' delete from ordcre where modulo LIKE ''EX-EX%'' ';
  dm.ATUALIZA.ExecSQL;
  Atualiza_Generator;
  dm.QORIGEM.CLOSE;
  dm.QORIGEM.Commandtext :=
      ' select b.nrsequenciasistema, b.dtmovimento, b.nrsequencia, b.cdunidadegestora, b.cdcontacontabil, b.cddespesa, b.cdreceita, b.dtanoemissao, ' +
      ' b.nrempenho, b.idempenho, b.cdfornecedor, b.cdcontrapartida, b.cdtipomovimento , b.vlmovimento, ' +
      ' b.cdhistoricopadrao, b.nrcomplhistorico, b.nrdocumentopagto, b.cdaplicacao, b.cdfonterecurso , ' +
      ' (SELECT TOP 1 cast(A.DSCOMPLHISTORICO as varchar(128)) FROM  ' + BNC_CPE + '.DBO.COMPLEMENTOHISTORICO  A WHERE A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA)DSCOMPLHISTORICO, ' +
      ' c.cdnivelcontabil, c.dscontacontabil ' +
      ' from   ' + BNC_CPE + '.DBO.movimento B ' +
      ' inner join   ' + BNC_CPC + '.dbo.contacontabil c on c.cdcontacontabil= b.cdcontacontabil and c.cdnivelcontabil not like ''111%'' ' +
      '       and ((c.cdnivelcontabil like ''1138%'') or (c.cdnivelcontabil like ''2188%'')  or ((c.cdnivelcontabil like ''2143%'') and (upper(c.dscontacontabil) like ''%CLASSIFICAR%'' )) ) ' +
      ' inner join   ' + BNC_CPC + '.dbo.contacontabil d on d.cdcontacontabil= b.cdcontrapartida and d.cdnivelcontabil not like ''111%'' ' +
      '       and ((d.cdnivelcontabil like ''1138%'') or (d.cdnivelcontabil like ''2188%'')  or ((d.cdnivelcontabil like ''2143%'') and (upper(d.dscontacontabil) like ''%CLASSIFICAR%'' )) ) ' +
      ' where b.vlmovimento <> 0.00 and b.cdcontacontabil <> b.cdcontrapartida and b.cdtipomovimento = 464 and (b.cdcontacontabil <> 947 and b.cdcontrapartida <> 7163) ' +
      ' order by 2,3';
  dm.QORIGEM.OPEN;

  dm.AuxOrigem.CLOSE;
  dm.AuxOrigem.Commandtext :=
    ' select nrsequenciasistema, b.dtmovimento, b.nrsequencia, b.cdunidadegestora, b.cdcontacontabil, b.cddespesa, b.cdreceita, b.dtanoemissao, ' +
    ' b.nrempenho, b.idempenho, b.cdfornecedor, b.cdcontrapartida, b.cdtipomovimento  , c.cdnivelcontabil, c.dscontacontabil, b.vlmovimento, ' +
    ' b.cdhistoricopadrao, b.nrcomplhistorico, b.nrdocumentopagto, b.cdaplicacao, b.cdfonterecurso , ' +
    ' (SELECT TOP 1 cast(A.DSCOMPLHISTORICO as varchar(128)) FROM ' + BNC_CPE + '.DBO.COMPLEMENTOHISTORICO  A WHERE A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA)DSCOMPLHISTORICO ' +
    ' from  ' + BNC_CPE + '.DBO.movimento B ' +
    ' inner join  ' + BNC_CPC + '.dbo.contacontabil c on c.cdcontacontabil= b.cdcontacontabil and c.cdnivelcontabil not like ''111%'' ' +
    ' where b.cdcontrapartida = 947 and b.nrempenho = ''000000'' and b.cdtipomovimento = 465 ' +
    ' order by 2,3';
  dm.AuxOrigem.OPEN;
  dm.AuxOrigem.indexfieldnames := 'nrsequenciasistema';

  P.Max := dm.QORIGEM.RecordCount;
  dm.CdsOrigem.CLOSE;
  dm.CdsOrigem.Commandtext :=
    'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' +
    'from [' + BNC_CPE + '].DBO.movimento a ' + 'inner join ' + BNC_CPC + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
    'where a.cdtipomovimento IN (464,465) ' + 'and b.cdnivelcontabil like ''111%'' ';
  dm.CdsOrigem.OPEN;
  dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select * from receit where modulo = ''RECEITA_EX'' ';  
  dm.Localiza.OPEN;
  dm.Localiza.IndexFieldNames := 'id_nrsequencia';
  
  dm.Localiza5.CLOSE;
  dm.Localiza5.Commandtext := 'select * from receit where nlanc = -1';
  dm.Localiza5.OPEN;
  dm.QORIGEM.first;
  contacaixa := Traz_Conta_Caixa(dm.QORIGEM.FieldByName('CDUNIDADEGESTORA').AsString);
  while not dm.QORIGEM.eof do
  begin
    P.Position := dm.QORIGEM.RecNo;
    EM.Caption := inttostr(dm.QORIGEM.RecNo) + ' de ' + inttostr(dm.QORIGEM.RecordCount);
    EM.Update;
    if not dm.Localiza.FindKey([trim(dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString)]) then
    begin
      ficha_extra := Traz_Ficha_RecDis_EX(dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cdcontacontabil').AsString);
      ficha_extraa := Traz_Ficha_RecDis_EX(dm.QORIGEM.FieldByName('cdunidadegestora').AsString,dm.QORIGEM.FieldByName('cdcontrapartida').AsString);
      if ((ficha_extra<>'') and (ficha_extraa<>'')) then
      begin
        if not (dm.QORIGEM.FieldByName('dtanoemissao').asinteger > 0) then
        begin
          {$region ' Anula da extra.. '}
          dm.Localiza5.APPEND;
          dm.Localiza5.FieldByName('nlanc').Asinteger := 0;
          dm.Localiza5.FieldByName('dtlan').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
          dm.Localiza5.FieldByName('dtrec').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
          dm.Localiza5.FieldByName('ficha').AsString := ficha_extra;
          dm.Localiza5.FieldByName('conta').AsString := contacaixa;
          dm.Localiza5.FieldByName('contaD').AsString := Traz_Conta_DesconD(contacaixa) ;
          dm.Localiza5.FieldByName('modulo').AsString := 'EX-EX';
          dm.Localiza5.FieldByName('ID_NRSEQUENCIA').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
          dm.Localiza5.FieldByName('ID_NRSEQUENCIA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
          dm.Localiza5.FieldByName('ID_NRSEQUENCIASISTEMA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIASISTEMA').AsString;
          IF trim(dm.QORIGEM.FieldByName('nrdocumentopagto').AsString) <> '0' THEN
            dm.Localiza5.FieldByName('cheque').AsString := dm.QORIGEM.FieldByName('nrdocumentopagto').AsString;
          dm.Localiza5.FieldByName('varec').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency * -1;          
          dm.Localiza5.FieldByName('histo').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString + '    Lançamento a Debito : ' + dm.QORIGEM.FieldByName('cdcontrapartida').AsString + '  ' +
              dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString; 
          if dm.localiza5.FieldByName('VAREC').AsCurrency <> 0.00 then
          begin
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequenciasistema').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
              dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
          end;
          dm.Localiza5.Post;
          {$endregion}
        end;
          {$region ' Lancando na extra faltante....'}
          dm.Localiza5.APPEND;
          dm.Localiza5.FieldByName('nlanc').Asinteger := 0;
          dm.Localiza5.FieldByName('dtlan').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
          dm.Localiza5.FieldByName('dtrec').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
          dm.Localiza5.FieldByName('ficha').AsString := ficha_extraa;
          dm.Localiza5.FieldByName('conta').AsString := contacaixa;
          dm.Localiza5.FieldByName('contaD').AsString := Traz_Conta_DesconD(contacaixa) ;
          dm.Localiza5.FieldByName('modulo').AsString := 'EX-EX';
          dm.Localiza5.FieldByName('ID_NRSEQUENCIA').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
          dm.Localiza5.FieldByName('ID_NRSEQUENCIA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
          dm.Localiza5.FieldByName('ID_NRSEQUENCIASISTEMA_TRANSF').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIASISTEMA').AsString;
          IF trim(dm.QORIGEM.FieldByName('nrdocumentopagto').AsString) <> '0' THEN
            dm.Localiza5.FieldByName('cheque').AsString := dm.QORIGEM.FieldByName('nrdocumentopagto').AsString;
          dm.Localiza5.FieldByName('varec').AsCurrency := dm.QORIGEM.FieldByName('vlmovimento').AsCurrency;          
          dm.Localiza5.FieldByName('histo').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString + '    Lançamento a Credito : ' + dm.QORIGEM.FieldByName('cdcontacontabil').AsString + '  ' +
              dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString; 
          if dm.localiza5.FieldByName('VAREC').AsCurrency <> 0.00 then
          begin
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequenciasistema').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '465']) then
              dm.localiza5.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.localiza5.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
          end;
          dm.Localiza5.Post;
          {$endregion}                     
      end;     
    end;    
    dm.QOrigem.Next;
  end;
  STATUS.Caption := ' Salvando acerto de Extra -> Orcamentaria..... ';
  STATUS.Update;
  dm.Localiza5.ApplyUpdates(-1);
  STATUS.Caption := ' Acerto de Extra -> Extra - OK ';
  STATUS.Update;
  Desconecta_Conecta;
  memostatus.lines.add(' Acerto de Extra -> Extra - OK ');
  Ordens_Credito_Transf_EX;
end;

function TTfrmprincipal_Conversao.Traz_Codif(empresa, credor: string): string;
begin
  if not DM.cdsdesfor.Active then
  begin
    DM.cdsdesfor.Commandtext := 'select codif,id_cdunidadegestora,id_cdfornecedor from desfor ';
    DM.cdsdesfor.OPEN;
  end;
  DM.cdsdesfor.IndexFieldNames := 'id_cdunidadegestora;id_cdfornecedor';
  if DM.cdsdesfor.FindKey([trim(empresa), trim(credor)]) then
  begin
    Result := DM.cdsdesfor.FieldByName('codif').AsString;
  end
  else
  begin
    DM.cdsdesfor.IndexFieldNames := 'id_cdfornecedor';
    if DM.cdsdesfor.FindKey([trim(credor)]) then
    begin
      Result := DM.cdsdesfor.FieldByName('codif').AsString;
    end
    else
    begin
      DM.cdsdesfor.Commandtext := 'select codif,id_cdunidadegestora,id_cdfornecedor from desfor ';
      DM.cdsdesfor.OPEN;
      DM.cdsdesfor.IndexFieldNames := 'id_cdfornecedor';
      if DM.cdsdesfor.FindKey([trim(credor)]) then
        Result := DM.cdsdesfor.FieldByName('codif').AsString
      else
        Result := '0';
    end;
  end;
end;

function TTfrmprincipal_Conversao.Traz_Codif_pelo_audesp(numerocredor: string): string;
begin
  if ((Length(numerocredor) <> 11) and (Length(numerocredor) <> 14)) then
    numerocredor := inttostr(strtoint(numerocredor));
  DM.cdstemp1.close;
  DM.cdstemp1.Commandtext := 'select codif, insmf, audesp_numero from desfor where audesp_numero=''' + numerocredor + '''';
  DM.cdstemp1.OPEN;
  if not DM.cdstemp1.IsEmpty then
    Result := DM.cdstemp1.FieldByName('codif').AsString
  else
    Result := '0';
end;

function TTfrmprincipal_Conversao.Traz_Conta_Caixa(ID_ENT_CODIGO: STRING): STRING;
begin
  if not DM.cdscaixa.Active then
  begin
    DM.cdscaixa.Commandtext := 'select conta, empresa,id_cdunidadegestora from descon where balco like ''3111%'' ';
    DM.cdscaixa.OPEN;
    DM.cdscaixa.IndexFieldNames := 'id_cdunidadegestora';
  end;
  IF DM.cdscaixa.FindKey([trim(ID_ENT_CODIGO)]) THEN
    Result := DM.cdscaixa.FieldByName('conta').AsString;
end;

function TTfrmprincipal_Conversao.Traz_Conta_Descon(entidade, CodConta: string): string;
begin
  if not DM.cdsDescon.Active then
  begin
    DM.cdsDescon.Commandtext := 'select conta, id_cdContaContabil, id_cdunidadegestora,empresa from descon';
    DM.cdsDescon.OPEN;
  end;
  DM.cdsDescon.IndexFieldNames := 'id_cdunidadegestora; id_cdContaContabil';
  IF DM.cdsDescon.FindKey([trim(entidade), trim(CodConta)]) THEN
    Result := DM.cdsDescon.FieldByName('conta').AsString
  else
  begin
    DM.cdsDescon.IndexFieldNames := 'id_cdContaContabil';
    IF DM.cdsDescon.FindKey([trim(CodConta)]) THEN
      Result := DM.cdsDescon.FieldByName('conta').AsString
    else
      Result := Traz_Conta_Caixa(trim(entidade));
  end;

end;

function TTfrmprincipal_Conversao.Traz_Conta_DesconD(Conta: string): string;
begin
  if not dm.cdsdesconD.Active then
  begin
    dm.cdsdesconD.CommandText := 'select * from descon_detalhe';
    dm.cdsdesconD.Active := true;
  end;
  dm.cdsdesconD.IndexFieldNames := 'conta';
  if dm.cdsdesconD.FindKey([conta]) then
    result := dm.cdsdesconD.FieldByName('contad').AsString
  else
    result := '';
end;

FUNCTION TTfrmprincipal_Conversao.Traz_Entidade(ID_ENT_CODIGO: STRING): STRING;
BEGIN
  IF NOT DM.CdstabEmpresa.Active THEN
    DM.CdstabEmpresa.OPEN;
  DM.CdstabEmpresa.IndexFieldNames := 'id_cdunidadegestora';
  IF DM.CdstabEmpresa.FindKey([trim(ID_ENT_CODIGO)]) THEN
    Result := DM.CdstabEmpresa.FieldByName('empresa').AsString
  ELSE
    Result := Traz_Entidade_do_fundo(ID_ENT_CODIGO);
END;

FUNCTION TTfrmprincipal_Conversao.Traz_Entidade_do_fundo(ID_ENT_CODIGO: STRING): STRING;
BEGIN
  IF NOT DM.cdsfundo.Active THEN
    DM.cdsfundo.OPEN;
  DM.cdsfundo.IndexFieldNames := 'id_cdunidadegestora';
  IF DM.cdsfundo.FindKey([ID_ENT_CODIGO]) THEN
    Result := DM.cdsfundo.FieldByName('id_cdunidadegestora_origem').AsString
  ELSE
    Result := Ent_padrao.Text;
END;

function TTfrmprincipal_Conversao.Traz_Ficha_Desconto(empresa, rec_or, rec_ex: string): string;
begin
  if not dm.cdsrecdis.Active then
  begin
    dm.CdsRecDis.CommandText := 'select ficha , id_cdunidadegestora, id_cdreceita, id_cdcontacontabil from recdis ';
    dm.cdsrecdis.Active := true;
  end;
  if ((trim(rec_or) <> '') and (trim(rec_or) <> '0')) then
  begin
    dm.cdsrecdis.IndexFieldNames := 'id_cdunidadegestora; id_cdreceita';
    if dm.CdsRecDis.FindKey([trim(empresa),trim(rec_or)]) then
      result := dm.CdsRecDis.FieldByName('ficha').AsString
    else
      result := '';
  end
  else if trim(rec_ex) <> '' then
  begin
    dm.cdsrecdis.IndexFieldNames := 'id_cdunidadegestora; id_cdcontacontabil';
    if dm.CdsRecDis.FindKey([trim(empresa),trim(rec_ex)]) then
      result := dm.CdsRecDis.FieldByName('ficha').AsString
    else
      result := '';
  end
  else
    result := '';
end;

function TTfrmprincipal_Conversao.Traz_Ficha_DESDIS(empresa, cod_ficha: string): string;
var balco_titulo, balco, nome_extra, Vingrupo, Vincodigo, extra, desdobro, CODRE: string; UNID_R, UNID_D: integer;
begin
  if not DM.CdsDesDis.Active then
  begin
    DM.CdsDesDis.Commandtext := 'select ficha,id_ficha, empresa, id_extra  from desdis where extra = ''S'' ';
    DM.CdsDesDis.OPEN;
  end;
  DM.CdsDesDis.IndexFieldNames := 'id_ficha';
  if DM.CdsDesDis.FindKey([trim(cod_ficha)]) then
    Result := DM.CdsDesDis.FieldByName('ficha').AsString
  else
  begin
    DM.LocalizaOrigem3.close;
    DM.LocalizaOrigem3.Commandtext :=
      'select d.pcdesp_numfichapccont as extra, p.pccont_nomedocodigo as extranome,  d.pcdesp_numficha as ficha, d.pcdesp_despcodfonterecurso as fongrupo, o.orgao_codorgao as empresa, '
      + 'p.pccont_codclassiini||p.pccont_codcat||p.pccont_codsubcat||p.pccont_codfonte||p.pccont_codrubrica||p.pccont_codalinea||case when p.pccont_subalinea < 10 then ''0''||p.pccont_subalinea else p.pccont_subalinea end as balcotce, '
      + '''110'' as vingrupo, ''000'' as vincodigo, d.pcdesp_descricao as fichanome, d.pcdesp_saldoanterior as saldoant, ' +
      'd.pcdesp_codn1||d.pcdesp_codn2||d.pcdesp_codn3||d.pcdesp_codn4||case when d.pcdesp_codn5 < 10 then ''0''||d.pcdesp_codn5 else d.pcdesp_codn5 end as balco ' +
      'from PLANOCONTASDESPESA_CONT d ' + 'inner join  PLANOCONTASCONTABIL_CONT p on (d.pcdesp_numficha=p.PCCONT_NUMFICHA  and d.pcdesp_exfichapccont=p.PCCONT_EXERCICIO ' +
      '    and d.pcdesp_entfichapccont= p.PCCONT_CODENTIDADE) ' + 'inner join administracaoindireta_o ai on (ai.admin_cod=p.pccont_codentidade) ' +
      'inner join orgao o on (o.orgao_codaudesp=ai.admin_codcodaudesp) ' + 'where d.pcdesp_codtipo=2 and d.pcdesp_despexercicio= ' + inttostr(ano.Value) +
      ' and d.pcdesp_numficha=' + trim(cod_ficha);
    DM.LocalizaOrigem3.OPEN;
    if not DM.LocalizaOrigem3.IsEmpty then
    begin
      balco_titulo := copy(DM.LocalizaOrigem3.FieldByName('balco').AsString, 1, 4);
      Vingrupo := FORMATCURR('000', DM.LocalizaOrigem3.FieldByName('vingrupo').AsInteger);
      Vincodigo := FORMATCURR('000', DM.LocalizaOrigem3.FieldByName('vincodigo').AsInteger);
      empresa := DM.LocalizaOrigem3.FieldByName('empresa').AsString;
      DM.cdstemp1.close;
      DM.cdstemp1.Commandtext := ' select first 1 balco from conpla where balco like ''' + balco_titulo + '%'' order by cast(balco as integer) desc ';
      DM.cdstemp1.OPEN;
      if copy(DM.cdstemp1.FieldByName('balco').AsString, 5, 2) = '99' then
      begin
        balco := DM.cdstemp1.FieldByName('balco').AsString;
        // nome_extra := Tira_Char39(4096,dm.LocalizaOrigem3.fieldbyname('extranome').AsString)
      end
      else
      begin
        balco := inttostr(DM.cdstemp1.FieldByName('balco').AsInteger + 1);
        // nome_extra := Tira_Char39(4096,dm.LocalizaOrigem3.fieldbyname('extranome').AsString)+' - ' + Tira_Char39(4096,dm.LocalizaOrigem3.fieldbyname('fichanome').AsString);
      end;
      nome_extra := Tira_Char39(4096, DM.LocalizaOrigem3.FieldByName('fichanome').AsString);
      DM.cdstemp1.close;
      DM.cdstemp1.Commandtext := ' select max(extra) as extra from extra where extra like ''9___'' ';
      DM.cdstemp1.OPEN;
      extra := inttostr(DM.cdstemp1.FieldByName('extra').AsInteger + 1);
{$REGION ' Cria Extra'}
      // inclui na extra
      DM.CdsExtra.close;
      DM.CdsExtra.Commandtext := 'select * from extra where extra = -1';
      DM.CdsExtra.OPEN;
      DM.CdsExtra.append;
      DM.CdsExtra.FieldByName('extra').AsString := extra;
      DM.CdsExtra.FieldByName('EMPRESA').AsString := empresa;
      DM.CdsExtra.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(empresa, balco, nome_extra);
      DM.CdsExtra.FieldByName('BALCO_TCE').AsString := Tira_Char39(21, DM.LocalizaOrigem3.FieldByName('balcotce').AsString);
      DM.CdsExtra.FieldByName('VINGRUPO').AsString := Vingrupo;
      DM.CdsExtra.FieldByName('VINCODIGO').AsString := Vincodigo;
      Existe_Vincodigo(DM.CdsExtra.FieldByName('VINGRUPO').AsString, DM.CdsExtra.FieldByName('VINCODIGO').AsString, '');
      DM.CdsExtra.FieldByName('CREDIT').AsString := '0';
      DM.CdsExtra.FieldByName('DEBIT').AsString := '0';
      DM.CdsExtra.FieldByName('SALDO_INICIAL').ascurrency := DM.LocalizaOrigem3.FieldByName('saldoant').ascurrency;
      DM.CdsExtra.FieldByName('DESCRICAO').AsString := Tira_Char39(80, nome_extra);
      DM.CdsExtra.FieldByName('ID_extra').AsString := trim(DM.LocalizaOrigem3.FieldByName('extra').AsString);
      DM.CdsExtra.FieldByName('ID_balco').AsString := trim(DM.LocalizaOrigem3.FieldByName('balco').AsString);
      DM.CdsExtra.FieldByName('ID_ficha_d').AsString := trim(cod_ficha);
      DM.CdsExtra.post;
      DM.CdsExtra.ApplyUpdates(-1);
      DM.CdsExtra.close;
{$ENDREGION}
{$REGION '  Cria RecDis'}
      // inclui recdis
      DM.QSCPI.close;
      DM.QSCPI.Commandtext := 'SELECT FIRST 1 codre FROM RECTAB WHERE CODRE LIKE ''' + '9999.' + FORMATCURR('00', strtoint(empresa)) + '%'' ORDER BY CODRE DESC';
      DM.QSCPI.OPEN;
      if not DM.QSCPI.IsEmpty then
        UNID_R := strtoint(copy(DM.QSCPI.FieldByName('codre').AsString, 12, 2))
      else
        UNID_R := 0;
      inc(UNID_R);
      desdobro := '00';
      if UNID_R > 99 then
      begin
        UNID_R := (UNID_R - 99);
        desdobro := '01';
      end;
      CODRE := '9999.' + FORMATCURR('00', strtoint(empresa)) + '.00' + '.' + FORMATCURR('00', UNID_R);

      DM.CdsRecdis.close;
      DM.CdsRecdis.Commandtext := 'SELECT * FROM RECDIS WHERE FICHA = -1';
      DM.CdsRecdis.OPEN;
      DM.CdsRecdis.append;
      DM.CdsRecdis.FieldByName('FICHA').AsString := extra;
      DM.CdsRecdis.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(empresa, balco, nome_extra);
      DM.CdsRecdis.FieldByName('FICHA_EXTRA').AsString := extra;
      DM.CdsRecdis.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE,NOME_EXTRA ,nome_extra);
      DM.CdsRecdis.FieldByName('VINGRUPO').AsString := Vingrupo;
      DM.CdsRecdis.FieldByName('VINCODIGO').AsString := Vincodigo;
      Existe_Vincodigo(DM.CdsRecdis.FieldByName('VINGRUPO').AsString, DM.CdsRecdis.FieldByName('VINCODIGO').AsString, '');
      DM.CdsRecdis.FieldByName('FONGRUPO').AsString := FORMATCURR('00', DM.LocalizaOrigem3.FieldByName('fongrupo').AsInteger);
      DM.CdsRecdis.FieldByName('EMPRESA').AsString := empresa;
      DM.CdsRecdis.FieldByName('EXTRA').AsString := 'S';
      DM.CdsRecdis.FieldByName('ID_extra').AsString := trim(DM.LocalizaOrigem3.FieldByName('extra').AsString);
      DM.CdsRecdis.FieldByName('ID_balco').AsString := trim(DM.LocalizaOrigem3.FieldByName('balco').AsString);
      DM.CdsRecdis.FieldByName('ID_ficha').AsString := ''; // trim(DM.LocalizaOrigem3.FieldByName('ficha').AsString);
      DM.CdsRecdis.post;
      DM.CdsRecdis.ApplyUpdates(-1);
      DM.CdsRecdis.close;
{$ENDREGION}
{$REGION '  Cria DesDis'}
      // inclui na desdis
      Existe_TabPoder('99', 'EXTRA ORÇAMENTARIA');
      Existe_TabOrgao('99', FORMATCURR('00', strtoint(empresa)), 'EXTRA - ' + Traz_NomeEntidade(empresa));

      DM.QSCPI.close;
      DM.QSCPI.Commandtext := 'SELECT FIRST 1 * FROM TABUNIDADE WHERE PODER = 99 AND ORGAO = ''' + FORMATCURR('00', strtoint(empresa)) + ''' ORDER BY UNIDADE DESC';
      DM.QSCPI.OPEN;
      if not DM.QSCPI.IsEmpty then
        UNID_D := DM.QSCPI.FieldByName('UNIDADE').AsInteger + 1
      else
        UNID_D := 1;
      if UNID_D > 99 then
      BEGIN
        UNID_D := 99;
      END;
      Existe_TabUnidade('99', FORMATCURR('00', strtoint(empresa)), FORMATCURR('00', UNID_D), 'EXTRA - ' + nome_extra);

      DM.CdsDesDis.close;
      DM.CdsDesDis.Commandtext := 'SELECT * FROM DESDIS WHERE FICHA = -1';
      DM.CdsDesDis.OPEN;

      DM.CdsDesDis.append;
      DM.CdsDesDis.FieldByName('FICHA').AsString := extra;
      DM.CdsDesDis.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(empresa, balco, nome_extra);
      DM.CdsDesDis.FieldByName('FICHA_EXTRA').AsString := extra;
      DM.CdsDesDis.FieldByName('VINGRUPO').AsString := Vingrupo;
      DM.CdsDesDis.FieldByName('VINCODIGO').AsString := Vincodigo;
      Existe_Vincodigo(DM.CdsDesDis.FieldByName('VINGRUPO').AsString, DM.CdsDesDis.FieldByName('VINCODIGO').AsString, '');
      DM.CdsDesDis.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', DM.LocalizaOrigem3.FieldByName('FONGRUPO').AsInteger), '???');
      DM.CdsDesDis.FieldByName('EMPRESA').AsString := empresa;
      DM.CdsDesDis.FieldByName('EXTRA').AsString := 'S';
      DM.CdsDesDis.FieldByName('PODER').AsString := '99';
      DM.CdsDesDis.FieldByName('ORGAO').AsString := FORMATCURR('00', strtoint(empresa));
      DM.CdsDesDis.FieldByName('UNIDADE').AsString := FORMATCURR('00', UNID_D);
      DM.CdsDesDis.FieldByName('RESTOS').AsString := 'N';
      DM.CdsDesDis.FieldByName('ID_extra').AsString := trim(DM.LocalizaOrigem3.FieldByName('extra').AsString);
      DM.CdsDesDis.FieldByName('ID_balco').AsString := trim(DM.LocalizaOrigem3.FieldByName('balco').AsString);
      DM.CdsDesDis.FieldByName('ID_ficha').AsString := trim(cod_ficha);
      DM.CdsDesDis.post;
      DM.CdsDesDis.ApplyUpdates(-1);
      DM.CdsDesDis.close;
{$ENDREGION}
      Result := extra;
    end;
  end;
end;

function TTfrmprincipal_Conversao.Traz_Ficha_Desdis_EX(empresa, ficha: string): string;
begin
  if not dm.CdsDesDis.Active then
  begin
    dm.CdsDesDis.CommandText := 'select ficha, id_cdunidadegestora, id_cdcontacontabil from desdis where id_cdcontacontabil is not null ';
    dm.CdsDesDis.open;
  end;
  dm.CdsDesDis.IndexFieldNames := 'id_cdunidadegestora; id_cdcontacontabil';
  if dm.CdsDesDis.FindKey([trim(empresa),trim(ficha)]) then
  begin
    result := dm.CdsDesDis.FieldByName('ficha').AsString
  end
  else
  begin
    dm.CdsDesDis.IndexFieldNames := 'id_cdcontacontabil';
    if dm.CdsDesDis.FindKey([trim(ficha)]) then
      result := dm.CdsDesDis.FieldByName('ficha').AsString
    else
    result := '';
  end
end;

function TTfrmprincipal_Conversao.Traz_Ficha_DesDis_OR(empresa, ficha: string): string;
begin
  if not dm.CdsDesDis.Active then
  begin
    dm.CdsDesDis.CommandText := 'select ficha, id_cdunidadegestora, id_cddespesa from desdis where extra <> ''S'' ';
    dm.CdsDesDis.open;
  end;
  dm.CdsDesDis.IndexFieldNames := 'id_cdunidadegestora; id_cddespesa';
  if dm.CdsDesDis.FindKey([trim(empresa),trim(ficha)]) then
    result := dm.CdsDesDis.FieldByName('ficha').AsString
  else
    result := trim(ficha);
end;

function TTfrmprincipal_Conversao.Traz_Ficha_Extra(ID_Codigo_Contabil, empresa: STRING): STRING;
begin
  if not DM.CdsExtra.Active then
  begin
    DM.CdsExtra.Commandtext := 'select extra, ID_codconta, id_codadministracao from extra';
    DM.CdsExtra.OPEN;
    DM.CdsExtra.IndexFieldNames := 'ID_codconta;id_codadministracao';
  end;
  if DM.CdsExtra.FindKey([trim(ID_Codigo_Contabil), trim(empresa)]) then
    Result := DM.CdsExtra.FieldByName('extra').AsString
  else
    Result := trim(ID_Codigo_Contabil);
end;

function TTfrmprincipal_Conversao.Traz_Ficha_RECDIS(CodReceita, empresa: string): string;
var balco_titulo, balco, nome_extra, Vingrupo, Vincodigo, extra, desdobro, CODRE: string; UNID_R, UNID_D: integer;
begin
  if not DM.CdsRecdis.Active then
  begin
    DM.CdsRecdis.Commandtext := 'select ficha,id_ficha, empresa, id_extra  from recdis where extra = ''S'' ';
    DM.CdsRecdis.OPEN;
    DM.CdsRecdis.IndexFieldNames := 'id_ficha;empresa';
  end;
  if DM.CdsRecdis.FindKey([trim(CodReceita), trim(empresa)]) then
    Result := DM.CdsRecdis.FieldByName('ficha').AsString
  else
  begin
    DM.LocalizaOrigem3.close;
    DM.LocalizaOrigem3.Commandtext :=
      'select p.pccont_numficha as extra, p.pccont_nomedocodigo as extranome,  r.pcrec_numficha as ficha, r.pcrec_reccodfonterecurso as fongrupo, o.orgao_codorgao as empresa, '
      + 'p.pccont_codclassiini||p.pccont_codcat||p.pccont_codsubcat||p.pccont_codfonte||p.pccont_codrubrica||p.pccont_codalinea||case when p.pccont_subalinea < 10 then ''0''||p.pccont_subalinea else p.pccont_subalinea end as balcotce, '
      + 'r.pcrec_codapfixo as vingrupo, r.pcrec_codapvar as vincodigo, r.pcrec_descricao as fichanome, r.pcrec_saldoanterior as saldoant, ' +
      'r.pcrec_codn1||r.pcrec_codn2||r.pcrec_codn3||r.pcrec_codn4||case when r.pcrec_codn5 < 10 then ''0''||r.pcrec_codn5 else r.pcrec_codn5 end as balco ' +
      'from PLANOCONTASRECEITA_CONT r ' + 'left join  PLANOCONTASCONTABIL_CONT p on (r.PCREC_NUMFICHAPCCONT=p.PCCONT_NUMFICHA  and r.PCREC_EXFICHAPCCONT=p.PCCONT_EXERCICIO ' +
      '    and r.PCREC_ENTFICHAPCCONT= p.PCCONT_CODENTIDADE) ' + 'left join administracaoindireta_o ai on (ai.admin_cod=p.pccont_codentidade) ' +
      'left join orgao o on (o.orgao_codaudesp=ai.admin_codcodaudesp) ' + 'where r.pcrec_codtiporeceita=2 and r.pcrec_recexercicio= ' + inttostr(ano.Value) +
      ' and r.PCREC_NUMFICHA=' + trim(CodReceita);
    DM.LocalizaOrigem3.OPEN;
    if not DM.LocalizaOrigem3.IsEmpty then
    begin
      balco_titulo := copy(DM.LocalizaOrigem3.FieldByName('balco').AsString, 1, 4);
      Vingrupo := FORMATCURR('000', DM.LocalizaOrigem3.FieldByName('vingrupo').AsInteger);
      Vincodigo := FORMATCURR('000', DM.LocalizaOrigem3.FieldByName('vincodigo').AsInteger);
      DM.cdstemp1.close;
      DM.cdstemp1.Commandtext := ' select first 1 balco from conpla where balco like ''' + balco_titulo + '%'' order by cast(balco as integer) desc ';
      DM.cdstemp1.OPEN;
      if copy(DM.cdstemp1.FieldByName('balco').AsString, 5, 2) = '99' then
      begin
        balco := DM.cdstemp1.FieldByName('balco').AsString;
        nome_extra := Tira_Char39(4096, DM.LocalizaOrigem3.FieldByName('extranome').AsString)
      end
      else
      begin
        balco := inttostr(DM.cdstemp1.FieldByName('balco').AsInteger + 1);
        nome_extra := Tira_Char39(4096, DM.LocalizaOrigem3.FieldByName('extranome').AsString) + ' - ' +
          Tira_Char39(4096, DM.LocalizaOrigem3.FieldByName('fichanome').AsString);
      end;
      DM.cdstemp1.close;
      DM.cdstemp1.Commandtext := ' select max(extra) as extra from extra where extra like ''9___'' ';
      DM.cdstemp1.OPEN;
      extra := inttostr(DM.cdstemp1.FieldByName('extra').AsInteger + 1);
{$REGION ' Cria Extra'}
      // inclui na extra
      DM.CdsExtra.close;
      DM.CdsExtra.Commandtext := 'select * from extra where extra = -1';
      DM.CdsExtra.OPEN;
      DM.CdsExtra.append;
      DM.CdsExtra.FieldByName('extra').AsString := extra;
      DM.CdsExtra.FieldByName('EMPRESA').AsString := empresa;
      DM.CdsExtra.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(empresa, balco, nome_extra);
      DM.CdsExtra.FieldByName('BALCO_TCE').AsString := Tira_Char39(21, DM.LocalizaOrigem3.FieldByName('balcotce').AsString);
      DM.CdsExtra.FieldByName('VINGRUPO').AsString := Vingrupo;
      DM.CdsExtra.FieldByName('VINCODIGO').AsString := Vincodigo;
      Existe_Vincodigo(DM.CdsExtra.FieldByName('VINGRUPO').AsString, DM.CdsExtra.FieldByName('VINCODIGO').AsString, '');
      DM.CdsExtra.FieldByName('CREDIT').AsString := '0';
      DM.CdsExtra.FieldByName('DEBIT').AsString := '0';
      DM.CdsExtra.FieldByName('SALDO_INICIAL').ascurrency := DM.LocalizaOrigem3.FieldByName('saldoant').ascurrency;
      DM.CdsExtra.FieldByName('DESCRICAO').AsString := Tira_Char39(80, nome_extra);
      DM.CdsExtra.FieldByName('ID_extra').AsString := trim(DM.LocalizaOrigem3.FieldByName('extra').AsString);
      DM.CdsExtra.FieldByName('ID_balco').AsString := trim(DM.LocalizaOrigem3.FieldByName('balco').AsString);
      DM.CdsExtra.FieldByName('ID_ficha_r').AsString := trim(CodReceita);
      DM.CdsExtra.post;
      DM.CdsExtra.ApplyUpdates(-1);
      DM.CdsExtra.close;
{$ENDREGION}
{$REGION '  Cria RecDis'}
      // inclui recdis
      DM.QSCPI.close;
      DM.QSCPI.Commandtext := 'SELECT FIRST 1 codre FROM RECTAB WHERE CODRE LIKE ''' + '9999.' + FORMATCURR('00', strtoint(empresa)) + '%'' ORDER BY CODRE DESC';
      DM.QSCPI.OPEN;
      if not DM.QSCPI.IsEmpty then
        UNID_R := strtoint(copy(DM.QSCPI.FieldByName('codre').AsString, 12, 2))
      else
        UNID_R := 0;
      inc(UNID_R);
      desdobro := '00';
      if UNID_R > 99 then
      begin
        UNID_R := (UNID_R - 99);
        desdobro := '01';
      end;
      CODRE := '9999.' + FORMATCURR('00', strtoint(empresa)) + '.00' + '.' + FORMATCURR('00', UNID_R);

      DM.CdsRecdis.close;
      DM.CdsRecdis.Commandtext := 'SELECT * FROM RECDIS WHERE FICHA = -1';
      DM.CdsRecdis.OPEN;
      DM.CdsRecdis.append;
      DM.CdsRecdis.FieldByName('FICHA').AsString := extra;
      DM.CdsRecdis.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(empresa, balco, nome_extra);
      DM.CdsRecdis.FieldByName('FICHA_EXTRA').AsString := extra;
      DM.CdsRecdis.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, nome_extra,nome_extra);
      DM.CdsRecdis.FieldByName('VINGRUPO').AsString := Vingrupo;
      DM.CdsRecdis.FieldByName('VINCODIGO').AsString := Vincodigo;
      Existe_Vincodigo(DM.CdsRecdis.FieldByName('VINGRUPO').AsString, DM.CdsRecdis.FieldByName('VINCODIGO').AsString, '');
      DM.CdsRecdis.FieldByName('FONGRUPO').AsString := FORMATCURR('00', DM.LocalizaOrigem3.FieldByName('fongrupo').AsInteger);
      DM.CdsRecdis.FieldByName('EMPRESA').AsString := empresa;
      DM.CdsRecdis.FieldByName('EXTRA').AsString := 'S';
      DM.CdsRecdis.FieldByName('ID_extra').AsString := trim(DM.LocalizaOrigem3.FieldByName('extra').AsString);
      DM.CdsRecdis.FieldByName('ID_balco').AsString := trim(DM.LocalizaOrigem3.FieldByName('balco').AsString);
      DM.CdsRecdis.FieldByName('ID_ficha').AsString := trim(DM.LocalizaOrigem3.FieldByName('ficha').AsString);
      DM.CdsRecdis.post;
      DM.CdsRecdis.ApplyUpdates(-1);
      DM.CdsRecdis.close;
{$ENDREGION}
{$REGION '  Cria DesDis'}
      // inclui na desdis
      Existe_TabPoder('99', 'EXTRA ORÇAMENTARIA');
      Existe_TabOrgao('99', FORMATCURR('00', strtoint(empresa)), 'EXTRA - ' + Traz_NomeEntidade(empresa));

      DM.QSCPI.close;
      DM.QSCPI.Commandtext := 'SELECT FIRST 1 * FROM TABUNIDADE WHERE PODER = 99 AND ORGAO = ''' + FORMATCURR('00', strtoint(empresa)) + ''' ORDER BY UNIDADE DESC';
      DM.QSCPI.OPEN;
      if not DM.QSCPI.IsEmpty then
        UNID_D := DM.QSCPI.FieldByName('UNIDADE').AsInteger + 1
      else
        UNID_D := 1;
      if UNID_D > 99 then
      BEGIN
        UNID_D := 99;
      END;
      Existe_TabUnidade('99', FORMATCURR('00', strtoint(empresa)), FORMATCURR('00', UNID_D), 'EXTRA - ' + nome_extra);

      DM.CdsDesDis.close;
      DM.CdsDesDis.Commandtext := 'SELECT * FROM DESDIS WHERE FICHA = -1';
      DM.CdsDesDis.OPEN;

      DM.CdsDesDis.append;
      DM.CdsDesDis.FieldByName('FICHA').AsString := extra;
      DM.CdsDesDis.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(empresa, balco, nome_extra);
      DM.CdsDesDis.FieldByName('FICHA_EXTRA').AsString := extra;
      DM.CdsDesDis.FieldByName('VINGRUPO').AsString := Vingrupo;
      DM.CdsDesDis.FieldByName('VINCODIGO').AsString := Vincodigo;
      Existe_Vincodigo(DM.CdsDesDis.FieldByName('VINGRUPO').AsString, DM.CdsDesDis.FieldByName('VINCODIGO').AsString, '');
      DM.CdsDesDis.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', DM.LocalizaOrigem3.FieldByName('FONGRUPO').AsInteger), '???');
      DM.CdsDesDis.FieldByName('EMPRESA').AsString := empresa;
      DM.CdsDesDis.FieldByName('EXTRA').AsString := 'S';
      DM.CdsDesDis.FieldByName('PODER').AsString := '99';
      DM.CdsDesDis.FieldByName('ORGAO').AsString := FORMATCURR('00', strtoint(empresa));
      DM.CdsDesDis.FieldByName('UNIDADE').AsString := FORMATCURR('00', UNID_D);
      DM.CdsDesDis.FieldByName('RESTOS').AsString := 'N';
      DM.CdsDesDis.FieldByName('ID_extra').AsString := trim(DM.LocalizaOrigem3.FieldByName('extra').AsString);
      DM.CdsDesDis.FieldByName('ID_balco').AsString := trim(DM.LocalizaOrigem3.FieldByName('balco').AsString);
      DM.CdsDesDis.FieldByName('ID_ficha').AsString := ''; // trim(DM.cdsOrigem.FieldByName('ficha').AsString);
      DM.CdsDesDis.post;
      DM.CdsDesDis.ApplyUpdates(-1);
      DM.CdsDesDis.close;
{$ENDREGION}
      Result := extra;
    end;
  end;
end;

function TTfrmprincipal_Conversao.Traz_Ficha_RecDis_EX(empresa, receita: string): string;
begin
  if not dm.CdsRecDis1.Active then
  begin
    dm.CdsRecDis1.CommandText := 'select ficha, id_cdunidadegestora,id_cdcontacontabil from recdis where id_cdcontacontabil is not null ';
    dm.CdsRecDis1.active:= true;
    dm.CdsRecDis1.IndexFieldNames := 'id_cdunidadegestora;id_cdcontacontabil';
  end;
  if dm.CdsRecDis1.FindKey([trim(empresa),trim(receita)]) then
    result := dm.CdsRecDis1.FieldByName('ficha').AsString
  else
    result := '';
end;

function TTfrmprincipal_Conversao.Traz_Ficha_RecDis_OR(empresa,   receita: string): string;
begin
  if not dm.CdsRecDis.Active then
  begin
    dm.CdsRecDis.CommandText := 'select ficha, id_cdunidadegestora,id_cdreceita from recdis where id_cdreceita is not null ';
    dm.CdsRecDis.active:= true;
    dm.CdsRecDis.IndexFieldNames := 'id_cdunidadegestora;id_cdreceita';
  end;
  if dm.CdsRecDis.FindKey([trim(empresa),trim(receita)]) then
    result := dm.CdsRecDis.FieldByName('ficha').AsString
  else
    result := '';
end;

function TTfrmprincipal_Conversao.Traz_Ficha_Restos(empresa, PROC: STRING): STRING;
begin
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select ficha from desdis where empresa =' + trim(empresa) + ' and rproc = ''' + trim(PROC) + ''' ';
  DM.cdsTemp.OPEN;
  if not DM.cdsTemp.IsEmpty then
    Result := DM.cdsTemp.FieldByName('ficha').AsString;
end;

FUNCTION TTfrmprincipal_Conversao.Traz_Fundo(ID_ENT_CODIGO: STRING): STRING;
BEGIN
  if rdfundo.ItemIndex = 0 then
  begin
    IF NOT DM.cdsfundo.Active THEN
      DM.cdsfundo.OPEN;
    DM.cdsfundo.IndexFieldNames := 'id_cdunidadegestora';
    IF DM.cdsfundo.FindKey([ID_ENT_CODIGO]) THEN
      Result := DM.cdsfundo.FieldByName('fundo').AsString
    ELSE
      Result := '';
  end
  else
    Result := '';
END;

function TTfrmprincipal_Conversao.Traz_NomeEntidade(empresa: string): string;
begin
  if not DM.CdstabEmpresa.Active then
    DM.CdstabEmpresa.OPEN;
  DM.CdstabEmpresa.IndexFieldNames := 'empresa';
  IF DM.CdstabEmpresa.FindKey([empresa]) THEN
    Result := DM.CdstabEmpresa.FieldByName('nome').AsString
  ELSE
    Result := ''
end;

function TTfrmprincipal_Conversao.Traz_Poder(PK: string): string;
begin
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select first 1 poder from tabpoder where id_orgao_municip_id=''' + trim(PK) + ''' ';
  DM.cdsTemp.OPEN;
  Result := DM.cdsTemp.FieldByName('poder').AsString;
end;

function TTfrmprincipal_Conversao.Traz_Prefeitura: string;
begin
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select first 1 empresa from tabempresa where tipo =1';
  DM.cdsTemp.OPEN;
  Result := DM.cdsTemp.FieldByName('empresa').AsString;
end;

function TTfrmprincipal_Conversao.Traz_Reserva(empresa, CodDespesa, CodCredor, NumEmpenho: string): string;
begin
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select reserva from reserva where id_codAdministracao =''' + trim(empresa) + ''' and id_CodDespesa = ''' + trim(CodDespesa) + ''' ' +
    ' and id_codcredor = ''' + trim(CodCredor) + ''' and id_numempenho = ''' + trim(NumEmpenho) + ''' ' +
    ' and (cast(valor as numeric(14,2)) - cast(anula as numeric(14,2)) - cast(empenhado as numeric(14,2))) > 0.00 ';
  DM.cdsTemp.OPEN;
  if not DM.cdsTemp.IsEmpty then
    Result := DM.cdsTemp.FieldByName('reserva').AsString
  else
    Result := '';
end;

function TTfrmprincipal_Conversao.Traz_Saldo_Inicial(CodConta, entidade: string): real;
begin
  if not DM.cdsDescon.Active then
  begin
    DM.cdsDescon.Commandtext := 'select saldoinicial, conta, empresa from descon';
    DM.cdsDescon.OPEN;
    DM.cdsDescon.IndexFieldNames := 'conta;empresa';
  end;
  if DM.cdsDescon.FindKey([trim(CodConta), trim(entidade)]) then
    Result := DM.cdsDescon.FieldByName('saldoinicial').AsFloat
  else
    Result := 0;
end;

function TTfrmprincipal_Conversao.Traz_VinGrupo_da_DESDIS(ficha: string): string;
begin
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select vingrupo from desdis where ficha = ' + trim(ficha);
  DM.cdsTemp.OPEN;
  if not DM.cdsTemp.IsEmpty then
    Result := DM.cdsTemp.FieldByName('vingrupo').AsString
  else
    Result := '110';
end;

procedure TTfrmprincipal_Conversao.Usa_Departamento;
begin
  DM.AuxOrigem.close;
  DM.AuxOrigem.Commandtext :=

//  ' SELECT * FROM [' + BNC_PPA + '].DBO.PPAOrgaoUnidade a WHERE a.cdChavePrimaria = 0 AND ' + 'A.dtAlteracao = ( SELECT top 1 dtAlteracao from [' +
//    BNC_PPA + '].DBO.PPAOrgaoUnidade where ' + 'cdChavePrimaria = 0 and cdOrgao = A.cdOrgao and cdUnidade = A.cdUnidade and ' +
//    'cdDepartamento = a.cdDepartamento and dtAlteracao < ''31.12.' + ano.text + ''' ' + 'order by dtAlteracao desc )  and CDDEPARTAMENTO<>''0'' ';

      'SELECT * ' +
      'FROM ['+BNC_PPA+'].DBO.PPAOrgaoUnidade a ' +
      'WHERE a.cdChavePrimaria = 0 AND A.dtAlteracao = ' +
      '( SELECT top 1 dtAlteracao from ['+BNC_PPA+'].DBO.PPAOrgaoUnidade where cdChavePrimaria = 0 and cdOrgao = A.cdOrgao and cdUnidade = A.cdUnidade and ' +
      'cdDepartamento = a.cdDepartamento and dtAlteracao < ''31.12.'+Ano.Text+''' order by dtAlteracao desc ) ' +
      'and CDDEPARTAMENTO <> ''0''';

  DM.AuxOrigem.OPEN;
  IF NOT DM.AuxOrigem.IsEmpty THEN
    USADEPARTAMENTO := true
  ELSE
    USADEPARTAMENTO := false;
end;

PROCEDURE TTfrmprincipal_Conversao.Centro_Custo;
VAR COD: STRING;
BEGIN
  // CriaCampo('EVENTOGRUPO', 'ID_cdCentroCusto', '20');
  // CriaCampo('EVCODIGO', 'ID_cdCentroCusto', '20');
  SITU.caption := 'EVENTOS (OBJETO DE EMPENHO)- Centro de Custos ...';
  SITU.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := ' select cdObjetoDespesa,dsObjetoDespesa from ' + BNC_CPC + '.dbo.ObjetoDespesa order by 1 ';
  DM.QOrigem.OPEN;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM EVCODIGO  ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM EVENTOGRUPO ';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM EVCODIGO';
  DM.QDESTINO.OPEN;

  DM.Localiza.close;
  DM.Localiza.Commandtext := 'SELECT * FROM EVENTOGRUPO';
  DM.Localiza.OPEN;
  DM.Localiza.IndexFieldNames := 'EVGRUPO';

  DM.Localiza.append;
  DM.Localiza.FieldByName('EVGRUPO').AsString := '000';
  DM.Localiza.FieldByName('EVGRUPONOME').AsString := 'GASTOS DIVERSOS';
  DM.Localiza.post;
  DM.Localiza.append;
  DM.Localiza.FieldByName('EVGRUPO').AsString := '001';
  DM.Localiza.FieldByName('EVGRUPONOME').AsString := 'GASTOS DIVERSOS';
  DM.Localiza.post;
  DM.Localiza.ApplyUpdates(-1);
  DM.QDESTINO.append;
  DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
  DM.QDESTINO.FieldByName('EVCODIGO').AsString := '001';
  DM.QDESTINO.FieldByName('EVNOME').AsString := 'GASTOS DIVERSOS';
  DM.QDESTINO.post;
  DM.QDESTINO.append;
  DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
  DM.QDESTINO.FieldByName('EVCODIGO').AsString := '980';
  DM.QDESTINO.FieldByName('EVNOME').AsString := 'RESTOS A PAGAR';
  DM.QDESTINO.post;
  DM.QDESTINO.append;
  DM.QDESTINO.FieldByName('EVGRUPO').AsString := '001';
  DM.QDESTINO.FieldByName('EVCODIGO').AsString := '998';
  DM.QDESTINO.FieldByName('EVNOME').AsString := 'EXTRA ORÇAMENTARIA';
  DM.QDESTINO.post;
  DM.QDESTINO.ApplyUpdates(-1);

  IF NOT DM.QOrigem.IsEmpty THEN
  BEGIN
    DM.QOrigem.first;
    p.Max := dm.QOrigem.RecordCount;
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      p.Position := dm.QOrigem.RecNo;
      em.Caption := inttostr(p.Position) +  ' de ' + inttostr(p.max);
      update;
      COD := FORMATCURR('000000', DM.QOrigem.FieldByName('cdObjetoDespesa').AsInteger);
      IF NOT DM.Localiza.FindKey([copy(COD, 1, 3)]) THEN
      BEGIN
        DM.Localiza.append;
        DM.Localiza.FieldByName('EVGRUPO').AsString := copy(COD, 1, 3);
        DM.Localiza.FieldByName('EVGRUPONOME').AsString := DM.QOrigem.FieldByName('dsObjetoDespesa').AsString;
        // DM.Localiza.FieldByName('ID_cdCentroCusto').AsString := dm.QOrigem.FieldByName('dsObjetoDespesa').AsString;
        DM.Localiza.post;
        DM.Localiza.ApplyUpdates(-1);
      END;
      DM.QOrigem.next;
    END;
  END;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM EVCODIGO';
  DM.QDESTINO.OPEN;

  DM.ATUALIZAORIGEM.close;
  DM.ATUALIZAORIGEM.Commandtext := ' select cdObjetoDespesa,dsObjetoDespesa from ' + BNC_CPC + '.dbo.ObjetoDespesa order by 1 ';
  DM.ATUALIZAORIGEM.OPEN;
  p.Position := 0;
  p.Max := DM.ATUALIZAORIGEM.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;
  DM.ATUALIZAORIGEM.first;

  WHILE NOT DM.ATUALIZAORIGEM.eof DO
  BEGIN
    p.Position := dm.QOrigem.RecNo;
    em.Caption := inttostr(p.Position) +  ' de ' + inttostr(p.max);
    update;
    COD := FORMATCURR('000000', DM.ATUALIZAORIGEM.FieldByName('cdObjetoDespesa').AsInteger);
    IF NOT DM.QDESTINO.Locate('EVGRUPO;EVCODIGO', Vararrayof([copy(COD, 1, 3), copy(COD, 4, 3)]), []) THEN
    // dm.QDESTINO.EDIT
    // ELSE
    BEGIN
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('EVGRUPO').AsString := copy(COD, 1, 3);
      DM.QDESTINO.FieldByName('EVCODIGO').AsString := copy(COD, 4, 3);
      DM.QDESTINO.FieldByName('EVNOME').AsString := trim(DM.ATUALIZAORIGEM.FieldByName('dsObjetoDespesa').AsString);
      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
      DM.QDESTINO.close;
      DM.QDESTINO.OPEN;
    END;
    DM.ATUALIZAORIGEM.next;
  END;

  STATUS.caption := 'Centro de Custos OK';
  STATUS.update;
  memoStatus.Lines.Add('Centro de Custos OK');
  Desconecta_Conecta;
END;

procEDURE TTfrmprincipal_Conversao.CODIGO_APLICACAO;
var Vingrupo: string; Vincodigo: string;
BEGIN
  // CriaCampo('VINCODIGO', 'ID_ap_cod', '20');
  SITU.caption := 'CODIGO DE APLICAÇÃO (VINCODIGO)...';
  SITU.update;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'SELECT * FROM [' + BNC_CPE + '].[dbo].CODIGOAPLICACAO ';
  DM.QOrigem.OPEN;
  IF NOT DM.QOrigem.IsEmpty THEN
  BEGIN
    DM.Atualiza.close;
    DM.Atualiza.SQL.text := 'DELETE FROM VINCODIGO WHERE VINGRUPO not in (''001'',''110'') ';
    DM.Atualiza.ExecSQL;

    DM.Atualiza.close;
    DM.Atualiza.SQL.text := 'DELETE FROM VINGRUPO WHERE VINGRUPO not in (''001'',''110'')  ';
    DM.Atualiza.ExecSQL;

    DM.QDESTINO.close;
    DM.QDESTINO.Commandtext := 'SELECT * FROM VINGRUPO';
    DM.QDESTINO.OPEN;
    p.max := dm.qorigem.recordcount;
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      p.Position := dm.QOrigem.RecNo;
      em.Caption := inttostr(p.Position) +  ' de ' + inttostr(p.max);
      update;
      Vingrupo := copy(DM.QOrigem.FieldByName('CDAPLICACAO').AsString, 1, 3);
      IF NOT DM.QDESTINO.Locate('VINGRUPO', Vingrupo, []) THEN
        DM.QDESTINO.append
      ELSE
        DM.QDESTINO.edit;
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := Vingrupo;
      DM.QDESTINO.FieldByName('VINGRUPONOME').AsString := Tira_Char39(40, DM.QOrigem.FieldByName('NMAPLICACAO').AsString);
      DM.QDESTINO.post;
      DM.QOrigem.next;
    END;
    IF DM.QDESTINO.Changecount > 0 THEN
      DM.QDESTINO.ApplyUpdates(-1);

    DM.QDESTINO.close;
    DM.QDESTINO.Commandtext := 'SELECT * FROM VINCODIGO';
    DM.QDESTINO.OPEN;
    DM.QOrigem.first;
    p.max := dm.qorigem.recordcount;
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      p.Position := dm.QOrigem.RecNo;
      em.Caption := inttostr(p.Position) +  ' de ' + inttostr(p.max);
      update;
      Vingrupo := copy(DM.QOrigem.FieldByName('CDAPLICACAO').AsString, 1, 3);
      Vincodigo := copy(DM.QOrigem.FieldByName('CDAPLICACAO').AsString, 5, 3);
      IF NOT DM.QDESTINO.Locate('VINGRUPO;VINCODIGO', Vararrayof([Vingrupo, Vincodigo]), ([])) THEN
        DM.QDESTINO.append
      ELSE
        DM.QDESTINO.edit;
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := Vingrupo; // copy(DM.QORIGEM.FieldByName('ap_cod').AsString, 1, 3);
      DM.QDESTINO.FieldByName('VINCODIGO').AsString := Vincodigo; // formatcurr('000',strtoint(copy(DM.QORIGEM.FieldByName('ap_cod').AsString, 4, 2)));
      DM.QDESTINO.FieldByName('VINCODIGONOME').AsString := Tira_Char39(40, DM.QOrigem.FieldByName('NMAPLICACAO').AsString);
      DM.QDESTINO.FieldByName('detalhamento').AsString := Tira_Char39(255, DM.QOrigem.FieldByName('NMAPLICACAO').AsString);
      // DM.QDESTINO.FieldByName('ID_ap_cod').AsString := Trim(DM.QORIGEM.FieldByName('ap_cod').AsString);
      // DM.QDESTINO.FieldByName('ID_CODAPLICACAORECURSO').AsString := Tira_Char39(255,DM.QORIGEM.FieldByName('CodAplicacaoRecurso').AsString);
      DM.QDESTINO.post;
      DM.QOrigem.next;
    END;
    IF DM.QDESTINO.Changecount > 0 THEN
      DM.QDESTINO.ApplyUpdates(-1);
  END;
  STATUS.caption := 'Codigo de Aplicação - OK';
  memoStatus.Lines.Add('Codigo de Aplicação - OK');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.Conciliacao_Bancaria;
begin
  Entrada_nao_Contabilizada;
  Entrada_Contabilizada;
  Saida_nao_Contabilizada;
  Saida_Contabilizada;
  Transferencia_Conciliadas;
end;


PROCEDURE TTfrmprincipal_Conversao.Conecta_Destino;
BEGIN
  TRY
    SITU.caption := 'CONECTANDO DESTINO...';
    SITU.update;
    DM.Conexao_Destino.Connected := false;
    DM.Conexao_Destino.Params.Values['Database'] := edtservidordestino.text + ':' + edtdestino.text;
    DM.Conexao_Destino.Connected := true;
    SITU.caption := ' ';
    SITU.update;
  EXCEPT
    ON E: Exception DO
    BEGIN
      Showmessage('Erro de conexão com a Destino: ' + E.Message);
      RAISE;
    END;
  END;
END;

PROCEDURE TTfrmprincipal_Conversao.Conecta_Origem;
BEGIN
  TRY
    SITU.caption := 'CONECTANDO ORIGEM...';
    SITU.update;
    DM.Conexao_Origem.Connected := false;
    // dm.Conexao_Origem.ConnectionString := 'Provider=MSDASQL.1;Password=sql;Persist Security Info=True;User ID=dba;Data Source=' + Cb_origem.Text + ';Extended Properties="DSN=' + Cb_origem.Text + ';UID=dba;PWD=sql"';
    // dm.Conexao_Origem.ConnectionString :='Provider=MSDASQL.1;Password=22222222222222222222;Persist Security Info=True;User ID=sa;Data Source=' + Cb_origem.Text; // postgres
    DM.Conexao_Origem.ConnectionString := CB_ORIGEM.text;
    // DM.Conexao_Origem.Params.Values['Database'] := edtservidororigem.text + ':' + edtorigem.text; // firebird
    DM.Conexao_Origem.Connected := true;
    SITU.caption := ' ';
    SITU.update;
    Usa_Departamento;
  EXCEPT
    ON E: Exception DO
    BEGIN
      Showmessage('Erro de conexão com a Origem: ' + E.Message);
      RAISE;
    END;
  END;
END;

PROCEDURE TTfrmprincipal_Conversao.CONTA_BANCARIA;
VAR empresa, CONTA, NOME_BALCO, balco: STRING; C1, C2, QUANTOS, BALCO3111, BALCO3112, BALCO3114, BALCO3121: integer;
BEGIN
  SITU.caption := 'CONTA BANCÁRIA...';
  SITU.update;

  CriaCampo('DESCON', 'AGENCIA', '6');
  CriaCampo('DESCON', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('DESCON', 'ID_CDCONTACONTABIL', '20');
  // CriaCampo('DESCON', 'ID_', '20');
  // CriaCampo('DESCON', 'ID_cod_pcontas', '20');
  // CriaCampo('DESCON', 'ID_red_pcontas', '20');

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=

      'SELECT cdnivelcontabil, left(p.dsContaContabil,250) as dsContaContabil ,cc.[cdContaContabil] , ' +
      '       case ' +
      '          when ((LEFT(p.cdnivelcontabil,6)=''111115'') or (LEFT(p.cdnivelcontabil,5)=''11411'')) then ''3114'' ' +
      '          when ((LEFT(p.cdnivelcontabil,7)=''1111106'') Or (LEFT(p.cdnivelcontabil,7)=''1111119'') OR (LEFT(p.cdnivelcontabil,7)=''1111130'')) then ''3112'' ' +
      '       else ''3112'' end as balco, ' +
      '       coalesce((SELECT TOP 1 (B.CDUNIDADEGESTORA) FROM ['+BNC_CPE+'].[dbo].[MOVIMENTO] B WHERE B.CDCONTACONTABIL=cc.CDCONTACONTABIL),coalesce(cc.cdugvinculada,p.CDUNIDADEGESTORA)) as CDUNIDADEGESTORA, ' +
      '       cc.[cdBanco],cc.[cdAgencia],cc.[cdContaCorrente] ,cc.[dgAgencia]  ,cc.[dgContaCorrente] ,cc.[idNumCheque], ' +
      '       cc.[nrProximoCheque] ,cc.[cdFormularioCheque] ,cc.[nrConvenio] ,cc.[idContaConvenio] ,cc.[cdUGVinculada] ,cc.[cdContaOriginal], ' +
      '       cc.[cdUGCriacao] ,cc.[idTipoContaCorrente] ,cc.[cdAgenciaTC] ,cc.[cdContaCorrenteTC] ,cc.[idOperacao] ,cc.[dtAberturaContaBancaria], ' +
      '       p.idContaContabil,p.cdGrupoUnidadeGestora,p.cdUGVinculada, ' +
      '       p.cdFonteRecurso, coalesce(ca.cdAplicacao,''1100000'') as vingrupo, coalesce(ca.nmAplicacao, ''GERAL'') as nmaplicacao, ' +
      '       (SELECT coalesce(CAST(SUM(coalesce(VLDEBITO,0)-coalesce(vlcredito,0)) AS DOUBLE PRECISION),0) FROM ['+BNC_CPE+'].[dbo].[SALDOCONTACONTABIL]C ' +
      '	      	WHERE CDCONTACONTABIL = cc.CDCONTACONTABIL AND DTMESMOVIMENTO=0) as SALDOinicial ' +
      'FROM ['+BNC_PPA+'].[dbo].[PPAContaCorrente] cc ' +
      'inner join ['+BNC_CPC+'].[dbo].[ContaContabil] p on (p.cdUnidadeGestora=cc.cdUnidadeGestora and p.cdContaContabil=cc.cdContaContabil and p.idContaContabil= ''A'') ' +
      'left join ['+BNC_PPA+'].[dbo].[PPACodigoAplicacao] ca on (ca.idCodigoAplicacao=p.cdAplicacao) ' +
      'order by 1';

  DM.QOrigem.OPEN;




  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

{$REGION 'Limpa tabela...'}
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'UPDATE DESCON SET SALDOINICIAL=0';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECEIT';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESCON';
  DM.Atualiza.ExecSQL;
{$ENDREGION}

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESCON';
  DM.QDESTINO.OPEN;

  dm.qscpi.Close;
  dm.qscpi.CommandText := 'select * from descon_detalhe';
  dm.qscpi.Open;

  DM.QOrigem.first;
  BALCO3111 := 311100;
  BALCO3112 := 311200;
  BALCO3121 := 312100;
  BALCO3114 := 311400;
  QUANTOS := 0;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    // TRY
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    DM.QDESTINO.append;
    DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);
    DM.QDESTINO.FieldByName('ID_CDCONTACONTABIL').AsString := trim(DM.QOrigem.FieldByName('cdContaContabil').AsString);
    DM.QDESTINO.FieldByName('CONTA').AsString := trim(DM.QOrigem.FieldByName('cdContaContabil').AsString);
    if trim(DM.QOrigem.FieldByName('dgContaCorrente').AsString) <> '' then
      DM.QDESTINO.FieldByName('CONTAC').AsString := Tira_Char39(16, trim(DM.QOrigem.FieldByName('cdContaCorrente').AsString) + '-' +
        trim(DM.QOrigem.FieldByName('dgContaCorrente').AsString))
    else
      DM.QDESTINO.FieldByName('CONTAC').AsString := Tira_Char39(16, trim(DM.QOrigem.FieldByName('cdContaCorrente').AsString));
    DM.QDESTINO.FieldByName('balco_tce').AsString := trim(DM.QOrigem.FieldByName('cdnivelcontabil').AsString);
    if rdfundo.ItemIndex = 1 then
      if trim(Traz_Fundo(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString)) <> '' then
          DM.QDESTINO.FieldByName('fundo').AsString := Traz_Fundo(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);
    DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);
    if trim(DM.QOrigem.FieldByName('dtAberturaContaBancaria').AsString) <> '' then
      DM.QDESTINO.FieldByName('dtlan').AsString := DM.QOrigem.FieldByName('dtAberturaContaBancaria').AsString
    else
      DM.QDESTINO.FieldByName('dtlan').AsString := '01/01/' + inttostr(ano.Value);
    DM.QDESTINO.FieldByName('SALDOINICIAL').ascurrency := DM.QOrigem.FieldByName('SALDOinicial').ascurrency;
    DM.QDESTINO.FieldByName('SALDOBANCO').ascurrency := DM.QOrigem.FieldByName('SALDOinicial').ascurrency;
    DM.QDESTINO.FieldByName('FONINDUSO').AsString := '0';
    DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', DM.QOrigem.FieldByName('cdFonteRecurso').AsInteger), '???');
    DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???'); // DM.QORIGEM.FieldByName('bc_vinc').AsString);
    if trim(DM.QOrigem.FieldByName('balco').AsString) <> '3111' then
    begin
      DM.QDESTINO.FieldByName('AGENCIA').AsString := Existe_Agencia(trim(DM.QOrigem.FieldByName('cdAgencia').AsString), '');
      DM.QDESTINO.FieldByName('AGENCIA_xml').AsString := FORMATCURR('00000', DM.QDESTINO.FieldByName('Agencia').AsInteger);
      DM.QDESTINO.FieldByName('dvagencia_xml').AsString := Nao_Vazio(copy(DM.QOrigem.FieldByName('dgAgencia').AsString, 1, 1));
      DM.QDESTINO.FieldByName('conta_xml').AsString := DM.QOrigem.FieldByName('cdContaCorrente').AsString;
      DM.QDESTINO.FieldByName('dv_conta_xml').AsString := copy(DM.QOrigem.FieldByName('dgContaCorrente').AsString, 1, 1);
      DM.QDESTINO.FieldByName('BANCO').AsString := Existe_banco(FORMATCURR('000', strtoint(trim(DM.QOrigem.FieldByName('cdBanco').AsString))), '');
    end
    else
    begin
      DM.QDESTINO.FieldByName('BANCO').AsString := Existe_banco('000', 'CAIXA');
    end;
    // if trim(DM.QORIGEM.FieldByName('bc_dvag').AsString)<>'' then
    // DM.QDESTINO.FieldByName('AGENCIA').AsString :=trim(DM.QORIGEM.FieldByName('bc_Agencia').AsString)+'-'+ trim(DM.QORIGEM.FieldByName('bc_dvag').AsString)
    // else
    // DM.QDESTINO.FieldByName('AGENCIA').AsString :=trim(DM.QORIGEM.FieldByName('Agencia').AsString);

    DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(DM.QOrigem.FieldByName('vingrupo').AsString, 1, 3);
    DM.QDESTINO.FieldByName('VINCODIGO').AsString := FORMATCURR('000', strtoint(copy(DM.QOrigem.FieldByName('vingrupo').AsString, 5, 3)));
    Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, DM.QOrigem.FieldByName('nmaplicacao').AsString);

    DM.QDESTINO.FieldByName('RECUR').AsString := Tira_Char39(16, DM.QOrigem.FieldByName('dsContaContabil').AsString);
    DM.QDESTINO.FieldByName('NOME_COMPLETO').AsString := Tira_Char39(150, DM.QOrigem.FieldByName('dsContaContabil').AsString);

    NOME_BALCO := DM.QOrigem.FieldByName('dsContaContabil').AsString;

    if DM.QOrigem.FieldByName('BALCO').AsString = '3111' then
    begin
      if BALCO3111 < 311199 then
      begin
        inc(BALCO3111);
        balco := inttostr(BALCO3111);
      end
      else
      begin
        NOME_BALCO := 'DEMAIS CAIXAS';
        balco := inttostr(BALCO3111);
      end;
    end
    else if DM.QOrigem.FieldByName('BALCO').AsString = '3112' then
    begin
      if BALCO3112 < 311299 then
      begin
        inc(BALCO3112);
        balco := inttostr(BALCO3112);
      end
      else
      begin
        NOME_BALCO := 'DEMAIS CONTAS MOVIMENTO';
        balco := inttostr(BALCO3112);
      end;
    end
    else if DM.QOrigem.FieldByName('BALCO').AsString = '3121' then
    begin
      if BALCO3121 < 312199 then
      begin
        inc(BALCO3121);
        balco := inttostr(BALCO3121);
      end
      else
      begin
        NOME_BALCO := 'DEMAIS CONTAS VINCULADA';
        balco := inttostr(BALCO3121);
      end;
    end
    else if DM.QOrigem.FieldByName('BALCO').AsString = '3114' then
    begin
      if BALCO3114 < 311499 then
      begin
        inc(BALCO3114);
        balco := inttostr(BALCO3114);
      end
      else
      begin
        NOME_BALCO := 'DEMAIS CONTAS APLICAÇÃO';
        balco := inttostr(BALCO3114);
      end;
    end;
    DM.QDESTINO.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.QDESTINO.FieldByName('EMPRESA').AsString, balco, NOME_BALCO);
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);

    {$region ' Descon_Detalhe '}
    dm.qscpi.Append;
//    DM.qscpi.FieldByName('id_codigo_empresa').AsString := DM.QDestino.FieldByName('id_codigo_empresa').AsString;
//    DM.qscpi.FieldByName('ID_cd_contacontabil').AsString := DM.QDestino.FieldByName('ID_cd_contacontabil').AsString;
    dm.qscpi.fieldbyname('contad').Asinteger := 0;
    dm.qscpi.fieldbyname('contadnum').Asinteger := 0;
    dm.qscpi.fieldbyname('conta').Asstring := dm.QDestino.FieldByName('conta').AsString;
    dm.qscpi.fieldbyname('descricao').Asstring := dm.QDestino.FieldByName('NOME_COMPLETO').AsString;
    dm.qscpi.fieldbyname('balco_scpi').Asstring := dm.QDestino.FieldByName('BALCO').AsString;
    dm.qscpi.fieldbyname('balco_tce').Asstring := dm.QDestino.FieldByName('balco_tce').AsString;
    dm.qscpi.fieldbyname('foninduso').Asstring := dm.QDestino.FieldByName('foninduso').AsString;
    dm.qscpi.fieldbyname('fongrupo').Asstring := dm.QDestino.FieldByName('fongrupo').AsString;
    dm.qscpi.fieldbyname('foncodigo').Asstring := dm.QDestino.FieldByName('foncodigo').AsString;
    dm.qscpi.fieldbyname('fonro').Asstring := dm.QDestino.FieldByName('fonro').AsString;
    dm.qscpi.fieldbyname('vingrupo').Asstring := dm.QDestino.FieldByName('vingrupo').AsString;
    dm.qscpi.fieldbyname('vincodigo').Asstring := dm.QDestino.FieldByName('vincodigo').AsString;
    dm.qscpi.fieldbyname('vintipo').Asstring := '110';//dm.QDestino.FieldByName('conta').AsString;
    dm.qscpi.fieldbyname('saldoinicial').ascurrency := dm.QDestino.FieldByName('saldoinicial').ascurrency;
    dm.qscpi.fieldbyname('padrao').Asstring := 'S';//dm.QDestino.FieldByName('conta').ascurrency;
//    dm.qscpi.fieldbyname('sequencial').Asstring := dm.QDestino.FieldByName('conta').AsString;
//    dm.qscpi.fieldbyname('contad_ug').Asstring := dm.QDestino.FieldByName('conta').AsString;
    dm.qscpi.fieldbyname('data_encerra').Asstring := dm.QDestino.FieldByName('data_encerra').AsString;
    dm.qscpi.post;
    dm.qscpi.ApplyUpdates(-1);
    {$endregion}

    // EXCEPT
    // Showmessage('conta: ' + conta);
    // END;
    DM.QOrigem.next;
  END;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update cadcli set contatce= ''S'' ';
  DM.Atualiza.ExecSQL;
  STATUS.caption := 'Conta Corrente - OK';
  memoStatus.Lines.Add('Conta Corrente - OK');
  Desconecta_Conecta;
  CONTA_CAIXA;
END;

PROCEDURE TTfrmprincipal_Conversao.CONTA_CAIXA;
VAR C3: integer;
BEGIN
  DM.ATUALIZAORIGEM.FILTER := '';
  DM.ATUALIZAORIGEM.FiLTERED := false;
  SITU.caption := 'CONTA CAIXA...';
  SITU.update;
  CriaCampo('DESCON', 'id_CDCONTACONTABIL', '20');

  C3 := 0;
  // CONTAS
  SITU.caption := 'CONTA CAIXA...';
  SITU.update;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESCON where conta = '''' ';
  DM.QDESTINO.OPEN;

  dm.qscpi.Close;
  dm.qscpi.CommandText := 'select * from descon_detalhe';
  dm.qscpi.Open;

  DM.QOrigem.close;

  if Ano.Value > 2012 then
    DM.QOrigem.Commandtext :=
      'SELECT p.cdnivelcontabil,cc.[cdContaContabil] ,''3111'' as balco,cc.[dsContaContabil], ' +
      '       cc.[cdGrupoUnidadeGestora] ,cc.[cdUGVinculada] ,cc.[cdFonteRecurso] ,cc.[cdUnidadeGestora], ' +
      '       coalesce(ca.cdAplicacao,''1100000'') as cdaplicacao, coalesce(ca.nmAplicacao, ''GERAL'') as nmaplicacao, ' +
      '    (SELECT coalesce(CAST(SUM(coalesce(VLDEBITO,0)-coalesce(vlcredito,0)) AS DOUBLE PRECISION),0) FROM ['+BNC_CPE+'].[dbo].[SALDOCONTACONTABIL]C ' +
	    '  	  WHERE CDCONTACONTABIL = cc.CDCONTACONTABIL AND DTMESMOVIMENTO=0) as SALDOinicial ' +
      'FROM ['+BNC_CPC+'].[dbo].[ContaContabil] cc ' +
      'inner join ['+BNC_CPC+'].[dbo].[ContaContabil] p on (p.cdUnidadeGestora=cc.cdUnidadeGestora and p.cdContaContabil=cc.cdContaContabil and p.idContaContabil= ''A'') ' +
      'left join ['+BNC_PPA+'].[dbo].[PPACodigoAplicacao] ca on (ca.idCodigoAplicacao=p.cdAplicacao) ' +
      'where cc.cdnivelcontabil like ''1111101%'''
  else
  if ((ano.Value=2010) or (ano.Value=2011)) then
    DM.QOrigem.Commandtext :=
      'SELECT coalesce(a.cdaplicacao, ''1100000'') as vingrupo,  case when a.cdfonterecurso = 0 then  1 ' +
      'else a.cdfonterecurso end as fongrupo,  A.*,(SELECT TOP 1 (B.CDUNIDADEGESTORA) FROM ['+BNC_CPE+'].[dbo].[MOVIMENTO] B ' +
      '											                        WHERE B.CDCONTACONTABIL=A.CDCONTACONTABIL) EMPRESA ' +
      'FROM ['+BNC_CPC+'].[dbo].CONTACONTABIL A ' +
      'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON D.CDAPLICACAO = A.CDAPLICACAO ' +
      'WHERE (cdGRUPOCONTABIL=''1101010000'' OR CDNIVELCONTABIL=''111110000000000'') AND ' +
      'IDCONTACONTABIL=''A'''
   else
    DM.QOrigem.Commandtext :=
      'SELECT coalesce(a.cdaplicacao, ''1100000'') as vingrupo,  case when a.cdfonterecurso = 0 then  1 ' +
      'else a.cdfonterecurso end as fongrupo,  A.*,(SELECT TOP 1 (B.CDUNIDADEGESTORA) FROM ['+BNC_CPE+'].[dbo].[MOVIMENTO] B ' +
      '											                        WHERE B.CDCONTACONTABIL=A.CDCONTACONTABIL) EMPRESA ' +
      'FROM ['+BNC_CPC+'].[dbo].CONTACONTABIL A ' +
      'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON D.IDCODIGOAPLICACAO = A.CDAPLICACAO ' +
      'WHERE (cdGRUPOCONTABIL=''1101010000'' OR CDNIVELCONTABIL=''111110000000000'') AND ' +
      'IDCONTACONTABIL=''A''';

  DM.QOrigem.OPEN;

  DM.QOrigem.first;
  IF NOT DM.QOrigem.IsEmpty THEN
  BEGIN
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      if Ano.Value > 2012 then
      begin
       {$REGION ' EXERCICIO MAIOR QUE 2012 '}

        DM.QDESTINO.append;
        DM.QDESTINO.FieldByName('dtlan').AsString := '01/01/' + copy(ano.text, 3, 2);
        DM.QDESTINO.FieldByName('id_CDCONTACONTABIL').AsString := DM.QOrigem.FieldByName('CDCONTACONTABIL').AsString;
        DM.QDESTINO.FieldByName('BANCO').AsString := '000';
  //      DM.QDESTINO.FieldByName('ID_cdUnidadeGestora').AsString := DM.QOrigem.FieldByName('cdGrupoUnidadeGestora').AsString;
        DM.QDESTINO.FieldByName('ID_cdUnidadeGestora').AsString := DM.QOrigem.FieldByName('cdUnidadeGestora').AsString;
        DM.QDESTINO.FieldByName('balco_TCE').AsString := DM.QOrigem.FieldByName('CDNIVELCONTABIL').AsString;
  //      DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('cdGrupoUnidadeGestora').AsString);
        DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);

        if rdfundo.ItemIndex = 1 then
          if trim(Traz_Fundo(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString)) <> '' then
            DM.QDESTINO.FieldByName('fundo').AsString := Traz_Fundo(DM.QOrigem.FieldByName('cdGrupoUnidadeGestora').AsString);

        if trim(DM.QDESTINO.FieldByName('EMPRESA').AsString) = '' then
          DM.QDESTINO.FieldByName('EMPRESA').AsString := Ent_padrao.text;

        DM.QDESTINO.FieldByName('CONTA').AsString := trim(DM.QOrigem.FieldByName('cdContaContabil').AsString);

        DM.QDESTINO.FieldByName('SALDOINICIAL').ascurrency := DM.QOrigem.FieldByName('SALDOinicial').ascurrency;
        DM.QDESTINO.FieldByName('SALDOBANCO').ascurrency := DM.QOrigem.FieldByName('SALDOinicial').ascurrency;


        DM.QDESTINO.FieldByName('FONINDUSO').AsString := '0';
        DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', DM.QOrigem.FieldByName('cdFonteRecurso').AsInteger),'???');
        DM.QDESTINO.FieldByName('CONTAC').AsString := DM.QDESTINO.FieldByName('CONTA').AsString;
        DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00','???');
        DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(DM.QOrigem.FieldByName('cdaplicacao').AsString, 1, 3);
        DM.QDESTINO.FieldByName('VINCODIGO').AsString := copy(DM.QOrigem.FieldByName('cdaplicacao').AsString, 5, 3);
        Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString,DM.QDESTINO.FieldByName('VINcodigo').AsString,'GERAL');
        DM.QDESTINO.FieldByName('RECUR').AsString := DM.QOrigem.FieldByName('DSCONTACONTABIL').AsString;
        DM.QDESTINO.FieldByName('NOME_COMPLETO').AsString := DM.QOrigem.FieldByName('DSCONTACONTABIL').AsString;
        DM.QDESTINO.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.QDESTINO.FieldByName('EMPRESA').AsString, '311101', 'CAIXA');
        DM.QDESTINO.post;
        DM.QDESTINO.ApplyUpdates(-1);

       {$region ' Descon_Detalhe '}
          dm.qscpi.Append;
    //      DM.qscpi.FieldByName('id_codigo_empresa').AsString := DM.qaux.FieldByName('id_codigo_empresa').AsString;
    //      DM.qscpi.FieldByName('ID_cd_contacontabil').AsString := DM.QDestino.FieldByName('ID_cd_contacontabil').AsString;
          dm.qscpi.fieldbyname('contad').Asinteger := 0;
          dm.qscpi.fieldbyname('contadnum').Asinteger := 0;
          dm.qscpi.fieldbyname('conta').Asstring := dm.QDestino.FieldByName('conta').AsString;
          dm.qscpi.fieldbyname('descricao').Asstring := dm.QDestino.FieldByName('RECUR').AsString;
          dm.qscpi.fieldbyname('balco_scpi').Asstring := dm.QDestino.FieldByName('BALCO').AsString;
          dm.qscpi.fieldbyname('balco_tce').Asstring := dm.QDestino.FieldByName('balco_tce').AsString;
          dm.qscpi.fieldbyname('foninduso').Asstring := dm.QDestino.FieldByName('foninduso').AsString;
          dm.qscpi.fieldbyname('fongrupo').Asstring := dm.QDestino.FieldByName('fongrupo').AsString;
          dm.qscpi.fieldbyname('foncodigo').Asstring := dm.QDestino.FieldByName('foncodigo').AsString;
          dm.qscpi.fieldbyname('fonro').Asstring := dm.QDestino.FieldByName('fonro').AsString;
          dm.qscpi.fieldbyname('vingrupo').Asstring := dm.QDestino.FieldByName('vingrupo').AsString;
          dm.qscpi.fieldbyname('vincodigo').Asstring := dm.QDestino.FieldByName('vincodigo').AsString;
          dm.qscpi.fieldbyname('vintipo').Asstring := '110';//dm.QDestino.FieldByName('conta').AsString;
          dm.qscpi.fieldbyname('saldoinicial').ascurrency := dm.QDestino.FieldByName('saldoinicial').ascurrency;
          dm.qscpi.fieldbyname('padrao').Asstring := 'S';//dm.QDestino.FieldByName('conta').ascurrency;
      //    dm.qscpi.fieldbyname('sequencial').Asstring := dm.QDestino.FieldByName('conta').AsString;
      //    dm.qscpi.fieldbyname('contad_ug').Asstring := dm.QDestino.FieldByName('conta').AsString;
    //      dm.qscpi.fieldbyname('data_encerra').Asstring := dm.QDestino.FieldByName('data_encerra').AsString;
          dm.qscpi.post;
          dm.qscpi.ApplyUpdates(-1);
       {$endregion}

        DM.QOrigem.next;

       {$ENDREGION}
      end
      else
      begin
       {$REGION ' EXERCICIO MENOR OU IGUAL A 2012 '}

       if trim(DM.QOrigem.FieldByName('empresa').AsString) <> '' then
       begin

          DM.LocalizaDestino.Close;
          DM.LocalizaDestino.CommandText := 'select conta,empresa from descon where empresa = (select empresa from tabempresa where id_cdunidadegestora = '+DM.QOrigem.FieldByName('empresa').AsString+') and balco like ''3111%'' ';
          DM.LocalizaDestino.Open;

          if DM.LocalizaDestino.IsEmpty then
          begin

              DM.QDESTINO.append;
              DM.QDESTINO.FieldByName('dtlan').AsString := '01/01/' + copy(ano.text, 3, 2);

              DM.QDESTINO.FieldByName('ID_CDCONTACONTABIL').AsString := DM.QOrigem.FieldByName('CDCONTACONTABIL').AsString;

              DM.QDESTINO.FieldByName('BANCO').AsString := '000';

              DM.QDESTINO.FieldByName('ID_cdUnidadeGestora').AsString := DM.QOrigem.FieldByName('EMPRESA').AsString;

              DM.QDESTINO.FieldByName('balco_TCE').AsString := DM.QOrigem.FieldByName('CDNIVELCONTABIL').AsString;

              DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('empresa').AsString);

              if rdfundo.ItemIndex = 1 then
                if trim(Traz_Fundo(DM.QOrigem.FieldByName('empresa').AsString)) <> '' then
                  DM.QDESTINO.FieldByName('fundo').AsString := Traz_Fundo(DM.QOrigem.FieldByName('cdGrupoUnidadeGestora').AsString);

              if trim(DM.QDESTINO.FieldByName('EMPRESA').AsString) = '' then
                DM.QDESTINO.FieldByName('EMPRESA').AsString := Ent_padrao.text;

              DM.QDESTINO.FieldByName('CONTA').AsString := trim(DM.QOrigem.FieldByName('cdContaContabil').AsString);
              DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', DM.QOrigem.FieldByName('cdFonteRecurso').AsInteger),'???');
              DM.QDESTINO.FieldByName('CONTAC').AsString := DM.QDESTINO.FieldByName('CONTA').AsString;
              DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00','???');
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';//copy(DM.QOrigem.FieldByName('cdaplicacao').AsString, 1, 3);
              DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';//copy(DM.QOrigem.FieldByName('cdaplicacao').AsString, 5, 3);
              Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString,DM.QDESTINO.FieldByName('VINcodigo').AsString,'GERAL');
              DM.QDESTINO.FieldByName('RECUR').AsString := DM.QOrigem.FieldByName('DSCONTACONTABIL').AsString;
              DM.QDESTINO.FieldByName('NOME_COMPLETO').AsString := DM.QOrigem.FieldByName('DSCONTACONTABIL').AsString;
              DM.QDESTINO.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.QDESTINO.FieldByName('EMPRESA').AsString, '311101', 'CAIXA');
              DM.QDESTINO.post;
              DM.QDESTINO.ApplyUpdates(-1);

              {$region ' Descon_Detalhe '}
              dm.qscpi.Append;
        //      DM.qscpi.FieldByName('id_codigo_empresa').AsString := DM.qaux.FieldByName('id_codigo_empresa').AsString;
        //      DM.qscpi.FieldByName('ID_cd_contacontabil').AsString := DM.QDestino.FieldByName('ID_cd_contacontabil').AsString;
              dm.qscpi.fieldbyname('contad').Asinteger := 0;
              dm.qscpi.fieldbyname('contadnum').Asinteger := 0;
              dm.qscpi.fieldbyname('conta').Asstring := dm.QDestino.FieldByName('conta').AsString;
              dm.qscpi.fieldbyname('descricao').Asstring := dm.QDestino.FieldByName('RECUR').AsString;
              dm.qscpi.fieldbyname('balco_scpi').Asstring := dm.QDestino.FieldByName('BALCO').AsString;
              dm.qscpi.fieldbyname('balco_tce').Asstring := dm.QDestino.FieldByName('balco_tce').AsString;
              dm.qscpi.fieldbyname('foninduso').Asstring := dm.QDestino.FieldByName('foninduso').AsString;
              dm.qscpi.fieldbyname('fongrupo').Asstring := dm.QDestino.FieldByName('fongrupo').AsString;
              dm.qscpi.fieldbyname('foncodigo').Asstring := dm.QDestino.FieldByName('foncodigo').AsString;
              dm.qscpi.fieldbyname('fonro').Asstring := dm.QDestino.FieldByName('fonro').AsString;
              dm.qscpi.fieldbyname('vingrupo').Asstring := dm.QDestino.FieldByName('vingrupo').AsString;
              dm.qscpi.fieldbyname('vincodigo').Asstring := dm.QDestino.FieldByName('vincodigo').AsString;
              dm.qscpi.fieldbyname('vintipo').Asstring := '110';//dm.QDestino.FieldByName('conta').AsString;
              dm.qscpi.fieldbyname('saldoinicial').ascurrency := dm.QDestino.FieldByName('saldoinicial').ascurrency;
              dm.qscpi.fieldbyname('padrao').Asstring := 'S';//dm.QDestino.FieldByName('conta').ascurrency;
          //    dm.qscpi.fieldbyname('sequencial').Asstring := dm.QDestino.FieldByName('conta').AsString;
          //    dm.qscpi.fieldbyname('contad_ug').Asstring := dm.QDestino.FieldByName('conta').AsString;
        //      dm.qscpi.fieldbyname('data_encerra').Asstring := dm.QDestino.FieldByName('data_encerra').AsString;
              dm.qscpi.post;
              dm.qscpi.ApplyUpdates(-1);
             {$endregion}

          end
          else
            memoStatus.Lines.Add('Já existe uma conta caixa para entidade '+DM.LocalizaDestino.FieldByName('Empresa').AsString+' conta caixa da Cetil não sera convertida: Conta/Desc: '+trim(DM.QOrigem.FieldByName('cdContaContabil').AsString)+'/'+DM.QOrigem.FieldByName('DSCONTACONTABIL').AsString);

       end
       else
         memoStatus.Lines.Add('Conta caixa na CETIL não possui empresa informada. A conta não será convertida! Conta/Desc: '+trim(DM.QOrigem.FieldByName('cdContaContabil').AsString)+'/'+DM.QOrigem.FieldByName('DSCONTACONTABIL').AsString);

       DM.QOrigem.next;

       {$ENDREGION}
      end;
    END;
  END;

  // CRIA AS CONTAS CAIXA DE OUTRAS ENTIDADES QUE NAO POSSUEM CAIXA
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT * FROM TABEMPRESA WHERE EMPRESA NOT IN (SELECT EMPRESA FROM DESCON WHERE BALCO LIKE ''3111%'')';
  DM.QAUX.OPEN;
  WHILE NOT DM.QAUX.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    inc(C3);
    IF NOT DM.QDESTINO.Locate('CONTA', '111.' + FORMATCURR('00', DM.QAUX.FieldByName('EMPRESA').AsInteger), ([])) THEN
    BEGIN
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('CONTA').AsString := '111.' + FORMATCURR('00', DM.QAUX.FieldByName('EMPRESA').AsInteger);
      DM.QDESTINO.FieldByName('BANCO').AsString := Existe_banco('000', 'CAIXA');
      DM.QDESTINO.FieldByName('EMPRESA').AsString := DM.QAUX.FieldByName('EMPRESA').AsString;
      DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := trim(DM.QAUX.FieldByName('EMPRESA').AsString);
      DM.QDESTINO.FieldByName('ID_CDCONTACONTABIL').AsString := '6';
      DM.QDESTINO.FieldByName('FONINDUSO').AsString := '0';
      DM.QDESTINO.FieldByName('FONGRUPO').AsString := '01';
      DM.QDESTINO.FieldByName('FONCODIGO').AsString := '00';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
      DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
      Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString,DM.QDESTINO.FieldByName('VINcodigo').AsString,'GERAL');
      DM.QDESTINO.FieldByName('RECUR').AsString := 'CAIXA';
      DM.QDESTINO.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.QAUX.FieldByName('EMPRESA').AsString, '311101', 'CAIXA');
      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);

      {$region ' Descon_Detalhe '}
      dm.qscpi.Append;
//      DM.qscpi.FieldByName('id_codigo_empresa').AsString := DM.qaux.FieldByName('id_codigo_empresa').AsString;
//      DM.qscpi.FieldByName('ID_cd_contacontabil').AsString := DM.QDestino.FieldByName('ID_cd_contacontabil').AsString;
      dm.qscpi.fieldbyname('contad').Asinteger := 0;
      dm.qscpi.fieldbyname('contadnum').Asinteger := 0;
      dm.qscpi.fieldbyname('conta').Asstring := dm.QDestino.FieldByName('conta').AsString;
      dm.qscpi.fieldbyname('descricao').Asstring := dm.QDestino.FieldByName('RECUR').AsString;
      dm.qscpi.fieldbyname('balco_scpi').Asstring := dm.QDestino.FieldByName('BALCO').AsString;
      dm.qscpi.fieldbyname('balco_tce').Asstring := dm.QDestino.FieldByName('balco_tce').AsString;
      dm.qscpi.fieldbyname('foninduso').Asstring := dm.QDestino.FieldByName('foninduso').AsString;
      dm.qscpi.fieldbyname('fongrupo').Asstring := dm.QDestino.FieldByName('fongrupo').AsString;
      dm.qscpi.fieldbyname('foncodigo').Asstring := dm.QDestino.FieldByName('foncodigo').AsString;
      dm.qscpi.fieldbyname('fonro').Asstring := dm.QDestino.FieldByName('fonro').AsString;
      dm.qscpi.fieldbyname('vingrupo').Asstring := dm.QDestino.FieldByName('vingrupo').AsString;
      dm.qscpi.fieldbyname('vincodigo').Asstring := dm.QDestino.FieldByName('vincodigo').AsString;
      dm.qscpi.fieldbyname('vintipo').Asstring := '110';//dm.QDestino.FieldByName('conta').AsString;
      dm.qscpi.fieldbyname('saldoinicial').ascurrency := dm.QDestino.FieldByName('saldoinicial').ascurrency;
      dm.qscpi.fieldbyname('padrao').Asstring := 'S';//dm.QDestino.FieldByName('conta').ascurrency;
  //    dm.qscpi.fieldbyname('sequencial').Asstring := dm.QDestino.FieldByName('conta').AsString;
  //    dm.qscpi.fieldbyname('contad_ug').Asstring := dm.QDestino.FieldByName('conta').AsString;
//      dm.qscpi.fieldbyname('data_encerra').Asstring := dm.QDestino.FieldByName('data_encerra').AsString;
      dm.qscpi.post;
      dm.qscpi.ApplyUpdates(-1);
      {$endregion}
    END;
    DM.QAUX.next;
  END;
  STATUS.caption := 'Conta Caixa - OK';
  memoStatus.Lines.Add('Conta Caixa - OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.Contratos;
VAR CODIGO_NEW: integer; diaad: STRING; mesad: STRING; anoad: STRING; ano_ant: integer; codigo: integer; ent_ant: integer; contrato: string; contrato_com_letra: boolean;
BEGIN
  CODIGO_NEW := 0;

  SITU.caption := 'Contratos....';
  SITU.update;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from CONTRATOSADITAMENTO  ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from contratos ';
  DM.Atualiza.ExecSQL;

  CriaCampo('CONTRATOS', 'ID_CONTRATO', '20');
  CriaCampo('CONTRATOS', 'ID_CDFORNECEDOR', '20');
  CriaCampo('CONTRATOS', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('CONTRATOSADITAMENTO', 'ID_CONTRATO', '20');
  CriaCampo('CONTRATOSADITAMENTO', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('CONTRATOSADITAMENTO', 'ID_NRTERMOADITIVO', '20');

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
              'SELECT  cdUnidadeGestora as empresa, dtAnoContratoInicial as ano, nrContratoInicial as contrato, cdTipoContratacao as tipoco, cdFornecedor as codif, ' +
              '        dtAnoProcesso as anoprocesso, nrProcesso as processo, dsObjeto as objeto, ' +
              '        vlGarantia, dtAssinatura, dtTermino, idOperacao, vlContratoInicial, dtInicioVigencia, dtRescisao, vlSaldoRemanescente ' +
              'FROM ['+BNC_CPE+'].dbo.ContratoInicial ' +
              'order by cdUnidadeGestora, dtAnoContratoInicial, nrContratoInicial';
  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;

  DM.LOCALIZAORIGEM.close;
  DM.LOCALIZAORIGEM.Commandtext := 'SELECT [cdUnidadeGestora] ,[nrTermoAditivo] ,[dtAnoContratoInicial] ,[nrContratoInicial] ,[dtAnoTermoAditivo] ' +
    '      ,[dsAlteracao] ,[dtAssinatura] ,[idOperacao] ,[dtTermino] ,[vlTermoAditivo] FROM [' + BNC_CPE + '].[dbo].[TermosAditivosContrato]';
  DM.LOCALIZAORIGEM.OPEN;

  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  ano_ant := 0;
  ent_ant := strtoint(Ent_padrao.text);
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    if ((ano_ant <> DM.QOrigem.FieldByName('ANO').AsInteger)) then // and (ent_ant = DM.QOrigem.FieldByName('red_gestora').AsInteger)) then
    begin
      try
        contrato_com_letra := false;
        DM.cdsOrigem.close;
        DM.cdsOrigem.Commandtext := ' select c.dtanocontratoinicial,max(cast(c.nrcontratoinicial as integer)) as max ' + ' from ' + BNC_CPE + '.dbo.contratoinicial c ' +
          'where c.dtanocontratoinicial = ''' + DM.QOrigem.FieldByName('ano').AsString + ''' ' + 'group by c.dtanocontratoinicial ';
        DM.cdsOrigem.OPEN;
      except
        contrato_com_letra := true;
      end;
      codigo := 0;
    end;
    if not contrato_com_letra then
    begin
      contrato := FORMATCURR('0000', DM.QOrigem.FieldByName('contrato').AsInteger) + '/' + copy(DM.QOrigem.FieldByName('ano').AsString, 3, 2);
      DM.QDESTINO.close;
      DM.QDESTINO.Commandtext := ' SELECT * FROM contratos where codigo = ''' + contrato + ''' ';
      DM.QDESTINO.OPEN;
      if not DM.QDESTINO.IsEmpty then
      begin

        if Ano.Value > 2012 then
        begin
            inc(codigo);
            DM.cdsOrigem.close;
            DM.cdsOrigem.Commandtext := 'select c.dtanocontratoinicial,max(cast(c.nrcontratoinicial as integer)) as maxcontrato from ['+BNC_CPE+'].dbo.contratoinicial c ' +
              'where c.dtanocontratoinicial = ''' + DM.QOrigem.FieldByName('ano').AsString + ''' ' + 'group by c.dtanocontratoinicial ';
            DM.cdsOrigem.OPEN;
            contrato := FORMATCURR('0000', DM.cdsOrigem.FieldByName('maxcontrato').AsInteger + codigo) + '/' + copy(DM.QOrigem.FieldByName('ano').AsString, 3, 2);
        end
        else
        begin
             inc(codigo);
             contrato := FORMATCURR('0000', (DM.QOrigem.FieldByName('contrato').AsInteger + codigo)) + '/' + copy(DM.QOrigem.FieldByName('ano').AsString, 3, 2);
             DM.QDESTINO.close;
             DM.QDESTINO.Commandtext := ' SELECT * FROM contratos where codigo = ''' + contrato + ''' ';
             DM.QDESTINO.OPEN;
             if not DM.QDESTINO.IsEmpty then
             begin
               DM.LocalizaDestino.close;
               DM.LocalizaDestino.Commandtext :=
                     'select max(CAST(substring(codigo from 1 for 4) AS INTEGER)) as maxcodigo from contratos where ano = '+DM.QOrigem.FieldByName('ano').AsString;
               DM.LocalizaDestino.OPEN;
               codigo := DM.LocalizaDestino.FieldByName('maxcodigo').AsInteger + 1;
               contrato := FORMATCURR('0000', codigo) + '/' + copy(DM.QOrigem.FieldByName('ano').AsString, 3, 2);
             end;
        end;



      end;
    end
    else
    begin
      inc(codigo);
      contrato := FORMATCURR('0000', codigo) + '/' + copy(DM.QOrigem.FieldByName('ano').AsString, 3, 2);

      if Ano.Value <= 2012 then
      begin
          DM.QDESTINO.close;
          DM.QDESTINO.Commandtext := ' SELECT * FROM contratos where codigo = ''' + contrato + ''' ';
          DM.QDESTINO.OPEN;
          if not DM.QDESTINO.IsEmpty then
          begin
            DM.LocalizaDestino.close;
            DM.LocalizaDestino.Commandtext :=
                  'select max(CAST(substring(codigo from 1 for 4) AS INTEGER)) as maxcodigo from contratos where ano = '+DM.QOrigem.FieldByName('ano').AsString;
            DM.LocalizaDestino.OPEN;
            codigo := DM.LocalizaDestino.FieldByName('maxcodigo').AsInteger + 1;
            contrato := FORMATCURR('0000', codigo) + '/' + copy(DM.QOrigem.FieldByName('ano').AsString, 3, 2);
          end;
      end
      else
      begin
          DM.QDESTINO.close;
          DM.QDESTINO.Commandtext := ' SELECT * FROM contratos where codigo = '' '' ';
          DM.QDESTINO.OPEN;
      end;
    end;

    DM.QDESTINO.append;
    ano_ant := DM.QOrigem.FieldByName('ano').AsInteger;
    DM.QDESTINO.FieldByName('codigo').AsString := contrato;
    DM.QDESTINO.FieldByName('contratonum').AsString := DM.QOrigem.FieldByName('contrato').AsString + '/' + DM.QOrigem.FieldByName('ANO').AsString;
    DM.QDESTINO.FieldByName('empresa').AsInteger := DM.QOrigem.FieldByName('empresa').AsInteger;
    DM.QDESTINO.FieldByName('ano').AsInteger := DM.QOrigem.FieldByName('ano').AsInteger;
    DM.QDESTINO.FieldByName('ID_CONTRATO').AsString := DM.QOrigem.FieldByName('contrato').AsString;
    DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('empresa').AsString);
    DM.QDESTINO.FieldByName('ID_CDFORNECEDOR').AsString := trim(DM.QOrigem.FieldByName('codif').AsString);
    DM.QDESTINO.FieldByName('dtassi').AsString := DM.QOrigem.FieldByName('dtAssinatura').AsString;
    DM.QDESTINO.FieldByName('vigenf').AsString := DM.QOrigem.FieldByName('dtTermino').AsString;
    DM.QDESTINO.FieldByName('vigeni').AsString := DM.QOrigem.FieldByName('dtInicioVigencia').AsString;
    // if ((DM.QOrigem.FieldByName('DAT_publicacao').AsString <> '30.12.1899') and (DM.QOrigem.FieldByName('DAT_publicacao').AsString <> '')) then
    // DM.QDESTINO.FieldByName('dtpubl').AsString := DM.QOrigem.FieldByName('modforn_data').AsString;
    DM.QDESTINO.FieldByName('nproli').AsString := DM.QOrigem.FieldByName('processo').AsString;
    DM.QDESTINO.FieldByName('objeti').AsString := DM.QOrigem.FieldByName('objeto').AsString;
    DM.QDESTINO.FieldByName('codif').AsString := Traz_Codif(DM.QOrigem.FieldByName('empresa').AsString, DM.QOrigem.FieldByName('codif').AsString);
    // Traz_Codif(DM.QOrigem.FieldByName('red_gestora').AsString, DM.QOrigem.FieldByName('COD_FORNECEDOR').AsString);
    // DM.QDESTINO.FieldByName('ID_COD_FORNECEDOR').AsInteger := DM.QOrigem.FieldByName('COD_FORNECEDOR').AsInteger;
    DM.QDESTINO.FieldByName('objeto').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('OBJETO').AsString);
    DM.QDESTINO.FieldByName('objeto_completo').AsString := Tira_Char39(4096, DM.QOrigem.FieldByName('OBJETO').AsString);
    DM.QDESTINO.FieldByName('valcon').ascurrency := DM.QOrigem.FieldByName('vlContratoInicial').ascurrency;
    DM.QDESTINO.FieldByName('TIPOCO').AsString := DM.QOrigem.FieldByName('TIPOCO').AsString;
    DM.QDESTINO.FieldByName('garant').AsString := DM.QOrigem.FieldByName('vlgarantia').AsString;
    // DM.QDESTINO.FieldByName('forpag').AsString := DM.QOrigem.FieldByName('des_pgto').AsString;
    DM.QDESTINO.FieldByName('fLegal').AsString := 'DISPENSA';
    DM.QDESTINO.FieldByName('fundlegal').AsString := 'DISPENSA';
    DM.QDESTINO.FieldByName('TIPO_CONTRATO').AsString := 'P';
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    /// /************************** ADTITIVOS DOS CONTRATOS *******************************
    DM.LOCALIZAORIGEM.FiLTERED := false;
    DM.LOCALIZAORIGEM.FILTER := '  CDUNIDADEGESTORA = ''' + DM.QOrigem.FieldByName('empresa').AsString + ''' ' + ' and DTANOCONTRATOINICIAL = ''' +
      DM.QOrigem.FieldByName('ano').AsString + ''' and NRCONTRATOINICIAL = ''' + DM.QOrigem.FieldByName('contrato').AsString + ''' ';
    DM.LOCALIZAORIGEM.FiLTERED := true;
    IF NOT DM.LOCALIZAORIGEM.IsEmpty THEN
    BEGIN
      DM.LOCALIZAORIGEM.first;
      WHILE NOT DM.LOCALIZAORIGEM.eof DO
      BEGIN
        DM.Localiza.close;
        DM.Localiza.Commandtext :=
          'select contrato, dtlan, termo, descricao, datainsc, dataencerramento, valor, ID_nrtermoaditivo ,ID_CDUNIDADEGESTORA ,ID_CONTRATO from contratosaditamento ' +
          ' where contrato = ''' + DM.QDESTINO.FieldByName('codigo').AsString + ''' ' + ' and ID_CDUNIDADEGESTORA = ' + DM.QOrigem.FieldByName('empresa').AsString +
          ' and dtlan = ''' + stringreplace(DM.LOCALIZAORIGEM.FieldByName('dtAssinatura').AsString, '/', '.', [rfReplaceAll]) + ''' ';
        DM.Localiza.OPEN;
        IF not DM.Localiza.IsEmpty THEN
        BEGIN
          DM.Localiza.edit;
          DM.Localiza.FieldByName('valor').ascurrency := DM.Localiza.FieldByName('valor').ascurrency + DM.LOCALIZAORIGEM.FieldByName('vltermoaditivo').ascurrency;
          DM.Localiza.FieldByName('descricao').AsString := DM.Localiza.FieldByName('descricao').AsString + ' - Termo: ' +
            FORMATCURR('00000', DM.LOCALIZAORIGEM.FieldByName('nrTermoAditivo').AsInteger) + '/' + copy(DM.LOCALIZAORIGEM.FieldByName('dtAnoTermoAditivo').AsString, 3, 2) +
            ' - ' + DM.LOCALIZAORIGEM.FieldByName('dsalteracao').AsString;
        END
        ELSE
        BEGIN
          DM.Localiza.append;
          DM.Localiza.FieldByName('contrato').AsString := DM.QDESTINO.FieldByName('codigo').AsString;
          DM.Localiza.FieldByName('dtlan').AsString := ValiData(DM.LOCALIZAORIGEM.FieldByName('dtassinatura').AsString);
          DM.Localiza.FieldByName('termo').AsString := FORMATCURR('00000', DM.LOCALIZAORIGEM.FieldByName('nrtermoaditivo').AsInteger) + '/' +
            copy(DM.LOCALIZAORIGEM.FieldByName('dtAnoTermoAditivo').AsString, 3, 2);
          DM.Localiza.FieldByName('datainsc').AsString := ValiData(DM.LOCALIZAORIGEM.FieldByName('dtassinatura').AsString);
          DM.Localiza.FieldByName('dataencerramento').AsString := ValiData(DM.LOCALIZAORIGEM.FieldByName('dttermino').AsString);
          DM.Localiza.FieldByName('valor').ascurrency := DM.LOCALIZAORIGEM.FieldByName('vltermoaditivo').ascurrency;
          DM.Localiza.FieldByName('descricao').AsString := Tira_Char39(4096, DM.LOCALIZAORIGEM.FieldByName('dsalteracao').AsString);
          DM.Localiza.FieldByName('ID_CONTRATO').AsString := DM.LOCALIZAORIGEM.FieldByName('NRCONTRATOINICIAL').AsString;
          DM.Localiza.FieldByName('ID_CDUNIDADEGESTORA').AsString := DM.LOCALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString;
          DM.Localiza.FieldByName('ID_nrtermoaditivo').AsString := DM.LOCALIZAORIGEM.FieldByName('nrtermoaditivo').AsString;
          DM.Localiza.post;
        END;
        DM.Localiza.ApplyUpdates(-1);
        DM.LOCALIZAORIGEM.next;
      END;
    END;
    /// /************************** ADTITIVOS DOS CONTRATOS *******************************
    DM.QOrigem.next;
  END;
  APPLICATION.ProcessMessages;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := ' update CONTRATOS set fundlegal = ''DISPENSA'', flegal = ''DISPENSA''  ' +
    '                       where proclic is null and numlic is null and fundlegal is null and flegal is null';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := ' update contratos set dtpubl=null where dtpubl=''30.12.1899'' ';
  DM.Atualiza.ExecSQL;
  STATUS.caption := 'Contratos - OK';
  memoStatus.Lines.Add('Contratos - OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.CONVENIOS;
VAR Convenio_new: integer;
BEGIN
  Convenio_new := 0;
  SITU.caption := 'Convenio...';
  SITU.update;
  p.Position := 0;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from cadconvaditamento ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from cadconv ';
  DM.Atualiza.ExecSQL;

  CriaCampo('CADCONV', 'ID_COD_FORNECEDOR', '0');
  CriaCampo('CADCONV', 'ID_CONVENIOINICIAL', '20');
  CriaCampo('CADCONV', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('CADCONVADITAMENTO', 'ID_NRCONVENIOINICIAL', '20');
  CriaCampo('CADCONVADITAMENTO', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('CADCONVADITAMENTO', 'ID_NRTERMOADITIVO', '20');
  CriaCampo('CADCONVADITAMENTO', 'ID_DTANOCONVENIOINICIAL', '20');

  DM.QOrigem.close;
  if Ano.Value > 2012 then
      DM.QOrigem.Commandtext :=
          'select c.cdunidadegestora, c.nrconvenioinicial, c.dtanoconvenioinicial,c.cdtipoconvenio  ,tp.nmtipoconvenio, c.cdorgaoconcedente, ' +
          '       c.cdfonterecurso,  coalesce(ca.cdaplicacao,''1100000'') as cdaplicacao, coalesce(ca.nmaplicacao,''GERAL'') as nmaplicacao , ' +
          '       c.cdtipolegislacao, tl.nmtipolegislacao, c.cdfornecedor, c.nrautorizacaolegal, c.dtanoautorizacaolegal, ' +
          '       c.nrprocesso, c.dtanoprocesso, c.nrprocessoadministrativo,c.dtanoprocessoadministrativo, c.dtassinatura, c.dttermino, c.dsobjeto ' +
          'from ['+BNC_CPE+'].dbo.convenioinicial c ' +
          'left join ['+BNC_CPE+'].dbo.codigoaplicacao ca on ca.dtanoexercicio = c.dtanoconvenioinicial and ca.idcodigoaplicacao=c.cdaplicacao ' +
          'left join ['+BNC_CPE+'].dbo.tipoconvenio tp on (tp.cdtipoconvenio= c.cdtipoconvenio) ' +
          'left join ['+BNC_CPE+'].dbo.tipolegislacao tl on (c.cdtipolegislacao=tl.cdtipolegislacao) ' +
          'order by c.cdunidadegestora,c.dtanoconvenioinicial,c.nrconvenioinicial'
  else
  if ((ano.Value = 2010) or (ano.Value = 2011)) then
     DM.QOrigem.Commandtext :=
          'select c.cdunidadegestora, c.nrconvenioinicial, c.dtanoconvenioinicial,c.cdtipoconvenio  ,tp.nmtipoconvenio, c.cdorgaoconcedente, ' +
          '       c.cdfonterecurso,  coalesce(ca.cdaplicacao,''1100000'') as cdaplicacao, coalesce(ca.nmaplicacao,''GERAL'') as nmaplicacao , ' +
          '       c.cdtipolegislacao, tl.nmtipolegislacao, c.cdfornecedor, c.nrautorizacaolegal, c.dtanoautorizacaolegal, ' +
          '       c.nrprocesso, c.dtanoprocesso, /*c.nrprocessoadministrativo,c.dtanoprocessoadministrativo,*/ c.dtassinatura, c.dttermino, c.dsobjeto ' +
          'from ['+BNC_CPE+'].dbo.convenioinicial c ' +
          'left join ['+BNC_CPE+'].dbo.codigoaplicacao ca on ca.dtanoexercicio = c.dtanoconvenioinicial and ca.cdaplicacao=c.cdaplicacao ' +
          'left join ['+BNC_CPE+'].dbo.tipoconvenio tp on (tp.cdtipoconvenio= c.cdtipoconvenio) ' +
          'left join ['+BNC_CPE+'].dbo.tipolegislacao tl on (c.cdtipolegislacao=tl.cdtipolegislacao) ' +
          'order by c.cdunidadegestora,c.dtanoconvenioinicial,c.nrconvenioinicial'
  else
      DM.QOrigem.Commandtext :=
          'select c.cdunidadegestora, c.nrconvenioinicial, c.dtanoconvenioinicial,c.cdtipoconvenio  ,tp.nmtipoconvenio, c.cdorgaoconcedente, ' +
          '       c.cdfonterecurso,  coalesce(ca.cdaplicacao,''1100000'') as cdaplicacao, coalesce(ca.nmaplicacao,''GERAL'') as nmaplicacao , ' +
          '       c.cdtipolegislacao, tl.nmtipolegislacao, c.cdfornecedor, c.nrautorizacaolegal, c.dtanoautorizacaolegal, ' +
          '       c.nrprocesso, c.dtanoprocesso, /*c.nrprocessoadministrativo,c.dtanoprocessoadministrativo,*/ c.dtassinatura, c.dttermino, c.dsobjeto ' +
          'from ['+BNC_CPE+'].dbo.convenioinicial c ' +
          'left join ['+BNC_CPE+'].dbo.codigoaplicacao ca on ca.dtanoexercicio = c.dtanoconvenioinicial and ca.idcodigoaplicacao=c.cdaplicacao ' +
          'left join ['+BNC_CPE+'].dbo.tipoconvenio tp on (tp.cdtipoconvenio= c.cdtipoconvenio) ' +
          'left join ['+BNC_CPE+'].dbo.tipolegislacao tl on (c.cdtipolegislacao=tl.cdtipolegislacao) ' +
          'order by c.cdunidadegestora,c.dtanoconvenioinicial,c.nrconvenioinicial';

  DM.QOrigem.OPEN;
  p.Max := DM.QOrigem.RecordCount;

  DM.LOCALIZAORIGEM.close;
  DM.LOCALIZAORIGEM.Commandtext := ' select cdunidadegestora, nrconvenioinicial, nrtermoaditivo, dtanoconvenioinicial, dtanotermoaditivo, dsalteracao, ' +
    ' dtassinatura, dttermino  from ' + BNC_CPE + '.dbo.termosaditivosconvenio';
  DM.LOCALIZAORIGEM.OPEN;

  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM cadconv';
  DM.QDESTINO.OPEN;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max) + ' - Convenio: ' + DM.QOrigem.FieldByName('nrconvenioinicial').AsString;
    EM.update;
    DM.QDESTINO.append;
    inc(Convenio_new);
    DM.QDESTINO.FieldByName('convenio').AsInteger := Convenio_new;
    DM.QDESTINO.FieldByName('numconv').AsString := DM.QOrigem.FieldByName('nrconvenioinicial').AsString;
    DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := DM.QOrigem.FieldByName('cdunidadegestora').AsString;
    DM.QDESTINO.FieldByName('ID_CONVENIOINICIAL').AsString := DM.QOrigem.FieldByName('nrconvenioinicial').AsString;
    DM.QDESTINO.FieldByName('ano').AsInteger := DM.QOrigem.FieldByName('dtanoconvenioinicial').AsInteger;
    DM.QDESTINO.FieldByName('empresa').AsString := Traz_Entidade(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
    DM.QDESTINO.FieldByName('data').AsString := DM.QOrigem.FieldByName('dtAssinatura').AsString;
    DM.QDESTINO.FieldByName('dtvenc').AsString := DM.QOrigem.FieldByName('dtTermino').AsString;
    DM.QDESTINO.FieldByName('dtpub').AsString := DM.QOrigem.FieldByName('dtAssinatura').AsString;
    DM.QDESTINO.FieldByName('codif').AsString := Traz_Codif(DM.QOrigem.FieldByName('cdunidadegestora').AsString, DM.QOrigem.FieldByName('cdfornecedor').AsString);
    DM.QDESTINO.FieldByName('codif_conc').AsString := Traz_Codif(DM.QOrigem.FieldByName('cdunidadegestora').AsString, DM.QOrigem.FieldByName('cdfornecedor').AsString);
    DM.QDESTINO.FieldByName('vingrupo').AsString := '110';
    DM.QDESTINO.FieldByName('vincodigo').AsString := '000';
    if Length(DM.QOrigem.FieldByName('cdAplicacao').AsString) = 7 then
    begin
      DM.QDESTINO.FieldByName('vingrupo').AsString := copy(DM.QOrigem.FieldByName('cdAplicacao').AsString, 1, 3);
      DM.QDESTINO.FieldByName('vincodigo').AsString := FORMATCURR('000', strtoint(copy(DM.QOrigem.FieldByName('cdAplicacao').AsString, 5, 3)));
    end;
    Existe_Vincodigo(DM.QDESTINO.FieldByName('vingrupo').AsString, DM.QDESTINO.FieldByName('vincodigo').AsString, DM.QOrigem.FieldByName('nmaplicacao').AsString);
    // END;

    if Ano.Value > 2012 then
    begin
        if trim(DM.QOrigem.FieldByName('nrprocesso').AsString) <> '' then
          DM.QDESTINO.FieldByName('processo').AsString := trim(DM.QOrigem.FieldByName('nrprocesso').AsString) + '/' + copy(DM.QOrigem.FieldByName('dtanoprocesso').AsString, 3, 2)

        else if DM.QOrigem.FieldByName('dtanoprocessoadministrativo').AsInteger > 0 then
          DM.QDESTINO.FieldByName('processo').AsString := trim(DM.QOrigem.FieldByName('nrprocessoadministrativo').AsString) + '/' +
            copy(DM.QOrigem.FieldByName('dtanoprocessoadministrativo').AsString, 3, 2);
    end
    else
    begin
        if trim(DM.QOrigem.FieldByName('nrprocesso').AsString) <> '' then
          DM.QDESTINO.FieldByName('processo').AsString := trim(DM.QOrigem.FieldByName('nrprocesso').AsString) + '/' + copy(DM.QOrigem.FieldByName('dtanoprocesso').AsString, 3, 2)
    end;

    if trim(DM.QOrigem.FieldByName('nrautorizacaolegal').AsString) <> '' then
      DM.QDESTINO.FieldByName('LEGISLACAONUM').AsString := trim(DM.QOrigem.FieldByName('nrautorizacaolegal').AsString) + '/' +
        copy(DM.QOrigem.FieldByName('dtanoautorizacaolegal').AsString, 3, 2);

    DM.QDESTINO.FieldByName('nome').AsString := Tira_Char39(50, DM.QOrigem.FieldByName('dsObjeto').AsString);
    DM.QDESTINO.FieldByName('especif').AsString := Tira_Char39(254, DM.QOrigem.FieldByName('dsObjeto').AsString);
    DM.QDESTINO.FieldByName('fongrupo').AsString := Existe_FonGrupo(FORMATCURR('00', DM.QOrigem.FieldByName('cdFonteRecurso').AsInteger), '???');
    DM.QDESTINO.FieldByName('foncodigo').AsString := '00'; // Existe_FonCodigo(DM.QORIGEM.FieldByName('fonte_recurso').AsString);
    // DM.QDESTINO.FieldByName('valor').ASCURRENCY := DM.QOrigem.FieldByName('vlr_convenio').ASCURRENCY;
    // DM.QDESTINO.FieldByName('valorcontrapartida').ASCURRENCY := DM.QOrigem.FieldByName('Vlr_Contrapartida').ASCURRENCY;
    // if DM.QOrigem.FieldByName('TIP_PRESTCONTAS').AsString = 'MENSAL' then
    // DM.QDESTINO.FieldByName('tipopres').AsString := '4 - MENSAL'
    // else if DM.QOrigem.FieldByName('TIP_PRESTCONTAS').AsString = 'ANUAL' then
    // DM.QDESTINO.FieldByName('tipopres').AsString := '1 - ANUAL'
    // else if DM.QOrigem.FieldByName('TIP_PRESTCONTAS').AsString = 'DIARIA' then
    // DM.QDESTINO.FieldByName('tipopres').AsString := '3 - DIÁRIA'
    // else if DM.QOrigem.FieldByName('TIP_PRESTCONTAS').AsString = 'SEMESTRAL' then
    // DM.QDESTINO.FieldByName('tipopres').AsString := '8 - SEMESTRAL';

    if DM.QOrigem.FieldByName('cdtipolegislacao').AsInteger = 1 then // LEI FEDERAL
      DM.QDESTINO.FieldByName('legislacaotipo').AsInteger := 1
    else if DM.QOrigem.FieldByName('cdtipolegislacao').AsInteger = 2 then // LEI ESTADUAL
      DM.QDESTINO.FieldByName('legislacaotipo').AsInteger := 2
    else if DM.QOrigem.FieldByName('cdtipolegislacao').AsInteger = 3 then // LEI MUNICIPAL
      DM.QDESTINO.FieldByName('legislacaotipo').AsInteger := 3
    else if DM.QOrigem.FieldByName('cdtipolegislacao').AsInteger = 4 then // DECRETO FEDERAL
      DM.QDESTINO.FieldByName('legislacaotipo').AsInteger := 4
    else if DM.QOrigem.FieldByName('cdtipolegislacao').AsInteger = 5 then // DECRETO ESTADUAL
      DM.QDESTINO.FieldByName('legislacaotipo').AsInteger := 5
    else if DM.QOrigem.FieldByName('cdtipolegislacao').AsInteger = 6 then // DECRETO MUNICIPAL
      DM.QDESTINO.FieldByName('legislacaotipo').AsInteger := 6;

    if DM.QOrigem.FieldByName('cdtipoconvenio').AsInteger = 1 then // AUXILIO CONCESSAO
      DM.QDESTINO.FieldByName('TIPO').AsInteger := 1
    else if DM.QOrigem.FieldByName('cdtipoconvenio').AsInteger = 2 then // SUBVENCAO CONCESSAO
      DM.QDESTINO.FieldByName('TIPO').AsInteger := 2
    else if DM.QOrigem.FieldByName('cdtipoconvenio').AsInteger = 3 then // CONTRIBUICAO CONCESSAO
      DM.QDESTINO.FieldByName('TIPO').AsInteger := 8 // OUTROS
    else if DM.QOrigem.FieldByName('cdtipoconvenio').AsInteger = 4 then // AUXILIO RECEBIDO
      DM.QDESTINO.FieldByName('TIPO').AsInteger := 4
    else if DM.QOrigem.FieldByName('cdtipoconvenio').AsInteger = 5 then // SUBVENCAO RECEBIDO
      DM.QDESTINO.FieldByName('TIPO').AsInteger := 5
    else if DM.QOrigem.FieldByName('cdtipoconvenio').AsInteger = 6 then // CONTRIBUICAO RECEBIDO
      DM.QDESTINO.FieldByName('TIPO').AsInteger := 7; // OUTROS

    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    /// /************************* ADITIVOS DE CONVENIOS ***********************
    DM.LOCALIZAORIGEM.FiLTERED := false;
    DM.LOCALIZAORIGEM.FILTER := ' cdunidadegestora = ''' + DM.QOrigem.FieldByName('cdunidadegestora').AsString + ''' ' + ' and nrconvenioinicial = ''' +
      DM.QOrigem.FieldByName('nrconvenioinicial').AsString + ''' ' + ' and dtanoconvenioinicial = ''' + DM.QOrigem.FieldByName('dtanoconvenioinicial').AsString + ''' ';
    DM.LOCALIZAORIGEM.FiLTERED := true;
    IF NOT DM.LOCALIZAORIGEM.IsEmpty THEN
    BEGIN
      DM.LOCALIZAORIGEM.first;
      WHILE NOT DM.LOCALIZAORIGEM.eof DO
      BEGIN
        DM.Localiza.close;
        DM.Localiza.Commandtext := ' select c.convenio, c.dtlan, c.termo, c.dataencerramento, c.valor, c.descricao, c.id_cdunidadegestora, ' +
          ' c.id_nrconvenioinicial, c.id_nrtermoaditivo,c.ID_DTANOCONVENIOINICIAL from cadconvaditamento c where id_cdunidadegestora = ' +
          DM.QOrigem.FieldByName('cdunidadegestora').AsString + ' and id_nrconvenioinicial = ' + DM.LOCALIZAORIGEM.FieldByName('nrconvenioinicial').AsString +
          ' and dtlan = ''' + stringreplace(DM.LOCALIZAORIGEM.FieldByName('dtassinatura').AsString, '/', '.', [rfReplaceAll]) + ''' ';
        DM.Localiza.OPEN;
        IF not DM.Localiza.IsEmpty THEN
          DM.Localiza.edit
        ELSE
          DM.Localiza.append;
        DM.Localiza.FieldByName('id_cdunidadegestora').AsString := DM.LOCALIZAORIGEM.FieldByName('cdunidadegestora').AsString;
        DM.Localiza.FieldByName('id_nrconvenioinicial').AsString := DM.LOCALIZAORIGEM.FieldByName('nrconvenioinicial').AsString;
        DM.Localiza.FieldByName('id_nrtermoaditivo').AsString := DM.LOCALIZAORIGEM.FieldByName('nrtermoaditivo').AsString;
        DM.Localiza.FieldByName('ID_DTANOCONVENIOINICIAL').AsString := DM.LOCALIZAORIGEM.FieldByName('dtanoconvenioinicial').AsString;
        DM.Localiza.FieldByName('convenio').AsString := DM.QDESTINO.FieldByName('convenio').AsString;
        DM.Localiza.FieldByName('termo').AsString := DM.LOCALIZAORIGEM.FieldByName('nrtermoaditivo').AsString;
        DM.Localiza.FieldByName('dtlan').AsString := DM.LOCALIZAORIGEM.FieldByName('dtassinatura').AsString;
        DM.Localiza.FieldByName('dataencerramento').AsString := DM.LOCALIZAORIGEM.FieldByName('dttermino').AsString;
        DM.Localiza.FieldByName('descricao').AsString := Tira_Char39(1024, DM.LOCALIZAORIGEM.FieldByName('dsalteracao').AsString);
        // DM.Localiza.FieldByName('valor').ASCURRENCY := DM.LOCALIZAORIGEM.FieldByName('vlr_aditivo').ASCURRENCY;
        DM.Localiza.post;
        DM.Localiza.ApplyUpdates(-1);
        DM.LOCALIZAORIGEM.next;
      END;
    END;
    /// /************************* ADITIVOS DE CONVENIOS ***********************
    DM.QOrigem.next;
    APPLICATION.ProcessMessages;
  END;
  STATUS.caption := 'Convenios - OK';
  memoStatus.Lines.Add('Convenios - OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.Desconecta_Conecta;
BEGIN
  SITU.caption := '';
  SITU.update;
  EM.caption := '';
  EM.update;
  STATUS.caption := '';
  STATUS.update;

  DM.LOCALIZAORIGEM.close;
  DM.LOCALIZAORIGEM.FiLTERED := false;
  DM.LOCALIZAORIGEM.FILTER := '';
  DM.LOCALIZAORIGEM.IndexFieldNames := '';

  DM.LOCALIZAORIGEM2.close;
  DM.LOCALIZAORIGEM2.FiLTERED := false;
  DM.LOCALIZAORIGEM2.FILTER := '';
  DM.LOCALIZAORIGEM2.IndexFieldNames := '';

  DM.LocalizaOrigem3.close;
  DM.LocalizaOrigem3.FiLTERED := false;
  DM.LocalizaOrigem3.FILTER := '';
  DM.LocalizaOrigem3.IndexFieldNames := '';

  DM.LOCALIZAORIGEM4.close;
  DM.LOCALIZAORIGEM4.FiLTERED := false;
  DM.LOCALIZAORIGEM4.FILTER := '';
  DM.LOCALIZAORIGEM4.IndexFieldNames := '';

  DM.LOCALIZAORIGEM5.close;
  DM.LOCALIZAORIGEM5.FiLTERED := false;
  DM.LOCALIZAORIGEM5.FILTER := '';
  DM.LOCALIZAORIGEM5.IndexFieldNames := '';

  DM.ATUALIZAORIGEM.close;
  DM.ATUALIZAORIGEM.FiLTERED := false;
  DM.ATUALIZAORIGEM.FILTER := '';
  DM.ATUALIZAORIGEM.IndexFieldNames := '';

  DM.AuxOrigem.close;
  DM.AuxOrigem.FiLTERED := false;
  DM.AuxOrigem.FILTER := '';
  DM.AuxOrigem.IndexFieldNames := '';
  
  DM.QOrigem.close;
  DM.QOrigem.FiLTERED := false;
  DM.QOrigem.FILTER := '';
  DM.QOrigem.IndexFieldNames := '';

  DM.cdsOrigem.close;
  DM.cdsOrigem.FiLTERED := false;
  DM.cdsOrigem.FILTER := '';
  DM.cdsOrigem.IndexFieldNames := '';

  DM.cdsOrigem2.close;
  DM.cdsOrigem2.FiLTERED := false;
  DM.cdsOrigem2.FILTER := '';
  DM.cdsOrigem2.IndexFieldNames := '';

  DM.QDESTINO.close;
  DM.QDESTINO.FiLTERED := false;
  DM.QDESTINO.FILTER := '';
  DM.QDESTINO.IndexFieldNames := '';

  DM.QAUX.close;
  DM.QAUX.FiLTERED := false;
  DM.QAUX.FILTER := '';
  DM.QAUX.IndexFieldNames := '';

  DM.QAux2.close;
  DM.QAux2.FiLTERED := false;
  DM.QAux2.FILTER := '';
  DM.QAux2.IndexFieldNames := '';

  DM.Localiza.close;
  DM.Localiza.FILTER := '';
  DM.Localiza.FiLTERED := false;
  DM.Localiza.IndexFieldNames := '';

  DM.Localiza2.close;
  DM.Localiza2.FILTER := '';
  DM.Localiza2.FiLTERED := false;
  DM.Localiza2.IndexFieldNames := '';

  DM.Localiza3.close;
  DM.Localiza3.FILTER := '';
  DM.Localiza3.FiLTERED := false;
  DM.Localiza3.IndexFieldNames := '';

  DM.Localiza4.close;
  DM.Localiza4.FILTER := '';
  DM.Localiza4.FiLTERED := false;
  DM.Localiza4.IndexFieldNames := '';

  DM.Localiza5.close;
  DM.Localiza5.FILTER := '';
  DM.Localiza5.FiLTERED := false;
  DM.Localiza5.IndexFieldNames := '';

  DM.Localiza6.close;
  DM.Localiza6.FILTER := '';
  DM.Localiza6.FiLTERED := false;
  DM.Localiza6.IndexFieldNames := '';

  DM.Localiza7.close;
  DM.Localiza7.FILTER := '';
  DM.Localiza7.FiLTERED := false;
  DM.Localiza7.IndexFieldNames := '';

  DM.Localiza8.close;
  DM.Localiza8.FILTER := '';
  DM.Localiza8.FiLTERED := false;
  DM.Localiza8.IndexFieldNames := '';

  DM.QConta.close;
  DM.QConta.FILTER := '';
  DM.QConta.FiLTERED := false;
  DM.QConta.IndexFieldNames := '';

  DM.cdsTemp.close;
  DM.cdsTemp.FILTER := '';
  DM.cdsTemp.FiLTERED := false;
  DM.cdsTemp.IndexFieldNames := '';

  DM.cdstemp1.close;
  DM.cdstemp1.FILTER := '';
  DM.cdstemp1.FiLTERED := false;
  DM.cdstemp1.IndexFieldNames := '';

  DM.CdsDesDis.close;
  DM.CdsDesDis.FILTER := '';
  DM.CdsDesDis.FiLTERED := false;
  DM.CdsDesDis.IndexFieldNames := '';

  DM.CdsRecDis.close;
  DM.CdsRecDis.FILTER := '';
  DM.CdsRecDis.FiLTERED := false;
  DM.CdsRecDis.IndexFieldNames := '';

  Conecta_Origem;
  Conecta_Destino;

END;

PROCEDURE TTfrmprincipal_Conversao.CriaCampo(Tabela, Campo, Tamanho: STRING);
BEGIN
  TRY
    DM.QAUX.close;
    DM.QAUX.Commandtext := 'SELECT *  FROM RDB$RELATION_FIELDS WHERE RDB$RELATION_NAME=''' + UpperCase(Tabela) + ''' AND RDB$FIELD_NAME=''' + UpperCase(Campo) + ''' ';
    DM.QAUX.OPEN;
    IF DM.QAUX.IsEmpty THEN
    BEGIN
      DM.Atualiza.close;
      IF Tamanho <> '0' THEN
        DM.Atualiza.Commandtext := 'ALTER TABLE ' + UpperCase(Tabela) + ' ADD ' + UpperCase(Campo) + ' VARCHAR(' + Tamanho + ')'
      ELSE
        DM.Atualiza.Commandtext := 'ALTER TABLE ' + UpperCase(Tabela) + ' ADD ' + UpperCase(Campo) + ' INTEGER';
      DM.Atualiza.ExecSQL;
      DM.QAUX.close;
      DM.Conexao_Destino.Connected := false;
      DM.Conexao_Destino.Connected := true;
    END;
  FINALLY
  END;
END;

procedure TTfrmprincipal_Conversao.Cria_Fichas_Extras;
var ficha, FICHAEXTRA, FICHARESTOS, FICHAREPASSE, ID_EXTRA, ID_R, ID_D, BALCO3131, BALCO3232, BALCO3231, BALCO3241, BALCORESTO, BALCOREPASSE, Unidade, extra,
CONTARESTOS,
    codigo, UNID_D, UNID_R: integer; CODRE, CODLO, balco: string; TITCO: string; desdobro: string; Orgao: integer;
  Orgao_D: Integer;
  Orgao_R: Integer;
  EMPRESA_: string;
begin
  CriaCampo('EXTRA', 'ID_cdcontacontabil', '20');
  CriaCampo('EXTRA', 'ID_cdunidadegestora', '20');
  CriaCampo('DESDIS', 'ID_cdcontacontabil', '20');
  CriaCampo('RECDIS', 'ID_cdcontacontabil', '20');
  CriaCampo('DESDIS', 'ID_cdunidadegestora', '20');
  CriaCampo('RECDIS', 'ID_cdunidadegestora', '20');

{$REGION 'Limpa tabelas'}
  DM.SQL.close;
  DM.SQL.Commandtext := 'DELETE FROM RECDIS WHERE EXTRA = ''S''';
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'DELETE FROM DESDIS WHERE EXTRA = ''S''';
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'DELETE FROM EXTRA';
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'DELETE FROM TABUNIDADE WHERE PODER = 99';
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'DELETE FROM TABORGAO WHERE PODER = 99';
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'DELETE FROM TABPODER WHERE PODER = 99';
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'DELETE FROM RECDIS WHERE CODRE LIKE ''' + '9999' + '%''';
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'DELETE FROM RECTAB WHERE CODRE LIKE ''' + '9999' + '%''';
  DM.SQL.ExecSQL;
{$ENDREGION}
  FICHAEXTRA := 9000;
  FICHARESTOS := 8000;
  FICHAREPASSE := 7000;
  BALCOREPASSE := 323700;
  BALCORESTO := 321100;
  BALCO3231 := 323100;
  BALCO3241 := 324100;
  UNID_R := 0;
  UNID_D := 0;
  // // CRIA AS FICHAS DE REPASSE PARA AS ENTIDADES
{$REGION 'CRIA AS FICHAS DE REPASSES...'}
  // // CRIA AS FICHAS DE DESPESA PARA A PREFEITURA E CRIA FICHA DE RECEITA PARA AS DEMAIS ENTIDADES
//  DM.qscpi2.close;
//  DM.qscpi2.Commandtext := 'SELECT * FROM TABEMPRESA where tipo <> 1 ';
//  DM.qscpi2.OPEN;
//  p.Max := DM.qscpi2.RecordCount;
  SITU.caption := 'Fichas de Repasses...';
  SITU.update;
//  DM.qscpi2.first;
//  while not DM.qscpi2.eof do
//  begin
//    p.Position := DM.qscpi2.RecNo;
//    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
//    EM.update;
//    inc(FICHAREPASSE);
//    inc(BALCOREPASSE);
//    inc(UNID_D);
//    if UNID_D > 99 then
//    begin
//      UNID_R := UNID_R + 1;
//      UNID_D := 99;
//      desdobro := '01';
//    end
//    else
//    begin
//      desdobro := '70';
//    end;
//
//    DM.QSCPI.close;
//    DM.QSCPI.Commandtext := 'SELECT * FROM CONPLA WHERE BALCO = ''' + inttostr(BALCOREPASSE) + ''' ';
//    DM.QSCPI.OPEN;
//
//    if DM.QSCPI.IsEmpty then
//      DM.QSCPI.append
//    else
//      DM.QSCPI.edit;
//    DM.QSCPI.FieldByName('BALCO').AsString := inttostr(BALCOREPASSE);
//    DM.QSCPI.FieldByName('TIP').AsString := '3';
//
//    if DM.qscpi2.FieldByName('tipo').AsString <> '1' then
//    BEGIN
//      DM.QSCPI.FieldByName('D_C').AsString := 'C';
//      DM.QSCPI.FieldByName('TITCO').AsString := 'REPASSE DE DUODÉCIMO'
//    END
//    else
//    BEGIN
//      DM.QSCPI.FieldByName('D_C').AsString := 'D';
//      DM.QSCPI.FieldByName('TITCO').AsString := 'TRANSF. ' + DM.qscpi2.FieldByName('NOME').AsString;
//    END;
//    DM.QSCPI.post;
//    DM.QSCPI.ApplyUpdates(-1);
//
//    DM.QSCPI.close;
//    DM.QSCPI.Commandtext := 'SELECT * FROM CONPLA_SCPI WHERE BALCO = ''' + inttostr(BALCOREPASSE) + ''' AND EMPRESA = ''' + DM.qscpi2.FieldByName('EMPRESA').AsString + '''';
//    DM.QSCPI.OPEN;
//
//    if DM.QSCPI.IsEmpty then
//      DM.QSCPI.append
//    else
//      DM.QSCPI.edit;
//    DM.QSCPI.FieldByName('BALCO').AsString := inttostr(BALCOREPASSE);
//    DM.QSCPI.FieldByName('TIP').AsString := '3';
//    if DM.qscpi2.FieldByName('tipo').AsString <> '1' then
//    begin
//      DM.QSCPI.FieldByName('D_C').AsString := 'C';
//      DM.QSCPI.FieldByName('TITCO').AsString := 'REPASSE DE DUODÉCIMO'
//    end
//    else
//    begin
//      DM.QSCPI.FieldByName('D_C').AsString := 'D';
//      DM.QSCPI.FieldByName('TITCO').AsString := 'TRANSF. ' + DM.qscpi2.FieldByName('NOME').AsString;
//    end;
//    DM.QSCPI.FieldByName('EMPRESA').AsString := DM.qscpi2.FieldByName('EMPRESA').AsString;
//    DM.QSCPI.post;
//    DM.QSCPI.ApplyUpdates(-1);
//
//    DM.QSCPI.close;
//    DM.QSCPI.Commandtext := 'SELECT * FROM CONPLA_SCPI WHERE BALCO = ''' + inttostr(BALCOREPASSE) + ''' AND EMPRESA = ''' + DM.qscpi2.FieldByName('EMPRESA').AsString + '''';
//    DM.QSCPI.OPEN;
//
//    if DM.QSCPI.IsEmpty then
//      DM.QSCPI.append
//    else
//      DM.QSCPI.edit;
//    DM.QSCPI.FieldByName('BALCO').AsString := inttostr(BALCOREPASSE);
//    DM.QSCPI.FieldByName('TIP').AsString := '3';
//    if DM.qscpi2.FieldByName('tipo').AsString <> '1' then
//    begin
//      DM.QSCPI.FieldByName('D_C').AsString := 'C';
//      DM.QSCPI.FieldByName('TITCO').AsString := 'REPASSE DE DUODÉCIMO'
//    end
//    else
//    begin
//      DM.QSCPI.FieldByName('D_C').AsString := 'D';
//      DM.QSCPI.FieldByName('TITCO').AsString := 'TRANSF. ' + DM.qscpi2.FieldByName('NOME').AsString;
//    end;
//    DM.QSCPI.FieldByName('EMPRESA').AsString := DM.qscpi2.FieldByName('EMPRESA').AsString;
//    DM.QSCPI.post;
//    DM.QSCPI.ApplyUpdates(-1);
//
//    DM.QSCPI.close;
//    DM.QSCPI.Commandtext := 'SELECT * FROM CONPLA_SCPI WHERE BALCO = ''' + inttostr(BALCOREPASSE) + ''' AND EMPRESA = ''' + Traz_Prefeitura + '''';
//    DM.QSCPI.OPEN;
//
//    if DM.QSCPI.IsEmpty then
//      DM.QSCPI.append
//    else
//      DM.QSCPI.edit;
//    DM.QSCPI.FieldByName('BALCO').AsString := inttostr(BALCOREPASSE);
//    DM.QSCPI.FieldByName('TIP').AsString := '3';
//    DM.QSCPI.FieldByName('D_C').AsString := 'D';
//    DM.QSCPI.FieldByName('TITCO').AsString := 'REPASSE DE DUODÉCIMO';
//    DM.QSCPI.FieldByName('EMPRESA').AsString := Traz_Prefeitura;
//    DM.QSCPI.post;
//    DM.QSCPI.ApplyUpdates(-1);
//
//    DM.CdsDestino.close;
//    DM.CdsDestino.Commandtext := 'SELECT * FROM EXTRA WHERE EXTRA = -1';
//    DM.CdsDestino.OPEN;
//
//    DM.CdsDestino.append;
//    DM.CdsDestino.FieldByName('EXTRA').AsInteger := FICHAREPASSE;
//    DM.CdsDestino.FieldByName('EMPRESA').AsInteger := DM.qscpi2.FieldByName('EMPRESA').AsInteger;
//    DM.CdsDestino.FieldByName('BALCO').AsInteger := BALCOREPASSE;
//    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '001';
//    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '001';
//    DM.CdsDestino.FieldByName('CREDIT').AsString := '0';
//    DM.CdsDestino.FieldByName('DEBIT').AsString := '0';
//    DM.CdsDestino.FieldByName('SALDO_INICIAL').AsString := '0';
//    DM.CdsDestino.FieldByName('SALDO_INICIAL').AsString := '0';
//    DM.CdsDestino.FieldByName('DESCRICAO').AsString := 'REPASSE DE DUODÉCIMO - ' + DM.qscpi2.FieldByName('NOME').AsString;
//    DM.CdsDestino.post;
//    DM.CdsDestino.ApplyUpdates(-1);
//
//    DM.CdsDestino.append;
//    DM.CdsDestino.FieldByName('EXTRA').AsInteger := FICHAREPASSE;
//    DM.CdsDestino.FieldByName('EMPRESA').AsString := Traz_Prefeitura;
//    DM.CdsDestino.FieldByName('BALCO').AsInteger := BALCOREPASSE;
//    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '001';
//    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '001';
//    DM.CdsDestino.FieldByName('CREDIT').AsString := '0';
//    DM.CdsDestino.FieldByName('DEBIT').AsString := '0';
//    DM.CdsDestino.FieldByName('SALDO_INICIAL').AsString := '0';
//    DM.CdsDestino.FieldByName('SALDO_INICIAL').AsString := '0';
//    DM.CdsDestino.FieldByName('DESCRICAO').AsString := 'REPASSE DE DUODÉCIMO - ' + DM.qscpi2.FieldByName('NOME').AsString;
//    DM.CdsDestino.post;
//    DM.CdsDestino.ApplyUpdates(-1);
//
//    Existe_TabPoder('99', 'EXTRA-ORÇAMENTÁRIA');
//    Existe_TabOrgao('99', '70', 'EXTRA - PREFEITURA MUNICIPAL');
//    if DM.qscpi2.FieldByName('tipo').AsString <> '1' then
//      Existe_TabUnidade('99', '70', FORMATCURR('00', UNID_D), 'TRANSF. ' + DM.qscpi2.FieldByName('NOME').AsString)
//    else
//      Existe_TabUnidade('99', '70', FORMATCURR('00', UNID_D), 'REPASSE DE DUODÉCIMO');
//
//    DM.CdsDestino.close;
//    DM.CdsDestino.Commandtext := 'SELECT * FROM DESDIS where ficha = -1';
//    DM.CdsDestino.OPEN;
//
//    DM.CdsDestino.append;
//    DM.CdsDestino.FieldByName('FICHA').AsInteger := FICHAREPASSE;
//    DM.CdsDestino.FieldByName('BALCO').AsInteger := BALCOREPASSE;
//    DM.CdsDestino.FieldByName('FICHA_EXTRA').AsInteger := FICHAREPASSE;
//    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '001';
//    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '001';
//    DM.CdsDestino.FieldByName('FONGRUPO').AsString := '01';
//    DM.CdsDestino.FieldByName('EMPRESA').AsString := Traz_Prefeitura;
//    DM.CdsDestino.FieldByName('EXTRA').AsString := 'S';
//    DM.CdsDestino.FieldByName('PODER').AsString := '99';
//    DM.CdsDestino.FieldByName('ORGAO').AsString := '70';
//    DM.CdsDestino.FieldByName('UNIDADE').AsString := FORMATCURR('00', UNID_D);
//    DM.CdsDestino.FieldByName('RESTOS').AsString := 'N';
//    DM.CdsDestino.FieldByName('dotac').ascurrency := 0.00;
//    DM.CdsDestino.post;
//    DM.CdsDestino.ApplyUpdates(-1);
//
//    DM.CdsDestino.close;
//    DM.CdsDestino.Commandtext := 'SELECT * FROM RECDIS where ficha = -1';
//    DM.CdsDestino.OPEN;
//
//    DM.CdsDestino.append;
//    DM.CdsDestino.FieldByName('FICHA').AsInteger := FICHAREPASSE;
//    DM.CdsDestino.FieldByName('BALCO').AsInteger := BALCOREPASSE;
//    DM.CdsDestino.FieldByName('FICHA_EXTRA').AsInteger := FICHAREPASSE;
//    DM.CdsDestino.FieldByName('CODRE').AsString := Existe_RECTAB('9999.' + FORMATCURR('00', DM.qscpi2.FieldByName('EMPRESA').AsInteger) + '.' + desdobro + '.01',
//      'REPASSE DE DUODÉCIMO');
//    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '001';
//    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '001';
//    DM.CdsDestino.FieldByName('FONGRUPO').AsString := '01';
//    DM.CdsDestino.FieldByName('EMPRESA').AsInteger := DM.qscpi2.FieldByName('EMPRESA').AsInteger;
//    DM.CdsDestino.FieldByName('EXTRA').AsString := 'S';
//    DM.CdsDestino.post;
//    DM.CdsDestino.ApplyUpdates(-1);
//
//    DM.qscpi2.next;
//    APPLICATION.ProcessMessages;
//  end;
    dm.QORIGEM.CLOSE;

    if Ano.Value > 2012 then
      dm.QORIGEM.Commandtext :=
        'SELECT DISTINCT A.CDCONTACONTABIL, A.CDNIVELCONTABIL AS BALCOTCE, A.DSCONTACONTABIL AS NOME, B.CDFORNECEDOR, B.CDUNIDADEGESTORA ' +
        'FROM  ['+BNC_CPC+'].DBO.CONTACONTABIL A ' +
        'INNER JOIN  ['+BNC_CPE+'].DBO.MOVIMENTO B ON B.CDCONTACONTABIL = A.CDCONTACONTABIL ' +
        'WHERE  (A.CDNIVELCONTABIL LIKE ''3511%'' OR A.CDNIVELCONTABIL LIKE ''3512%''  OR A.CDNIVELCONTABIL LIKE ''4511%'' OR A.CDNIVELCONTABIL LIKE ''4512%'')'
    else
      dm.QORIGEM.Commandtext :=
        'SELECT DISTINCT A.CDCONTACONTABIL, A.CDNIVELCONTABIL, A.DSCONTACONTABIL AS NOME, B.CDUNIDADEGESTORA  FROM ' +
        '['+BNC_CPC+'].[DBO].CONTACONTABIL A ' +
        'INNER JOIN ['+BNC_CPE+'].[DBO].MOVIMENTO B ON B.CDCONTACONTABIL = A.CDCONTACONTABIL ' +
        'WHERE (A.CDNIVELCONTABIL LIKE ''51212%'' OR A.CDNIVELCONTABIL LIKE ''61212%'')  AND A.IDCONTACONTABIL = ''A''';
    dm.QORIGEM.OPEN;

    DM.CdsExtra.Close;
    DM.CdsExtra.Commandtext := 'SELECT * FROM EXTRA where extra = -1 ';
    DM.CdsExtra.OPEN;

    DM.CdsDesDis.close;
    DM.CdsDesDis.Commandtext := 'SELECT * FROM DESDIS WHERE FICHA = -1';
    DM.CdsDesDis.OPEN;

    DM.CdsRecDis.close;
    DM.CdsRecDis.Commandtext := 'SELECT * FROM RECDIS WHERE FICHA = -1';
    DM.CdsRecDis.OPEN;

    dm.cdsTabempresa.Close;
    dm.cdsTabempresa.CommandText := 'select * from tabempresa';
    dm.cdsTabempresa.open;
    dm.cdsTabempresa.IndexFieldNames := 'empresa';
    P.Position := 0;
    P.Max := dm.QORIGEM.RecordCount;

    BALCOREPASSE := 323700;
    FICHAREPASSE := 7000;
    Orgao_D := 70;
    UNID_D := 0;
    Orgao_R := 70;
    UNID_R := 0;

    WHILE NOT dm.QORIGEM.eof DO
    BEGIN
      p.Position := dm.QOrigem.RecNo;
      inc(FICHAREPASSE);
      inc(BALCOREPASSE);

      Existe_Conpla(inttostr(BALCOREPASSE), 'TRANSFERENCIAS ENTRE ENTIDADES');
      dm.cdsTabempresa.FindKey([Traz_Entidade(dm.QORIGEM.FieldByName('cdunidadegestora').AsString)]);
      IF dm.cdsTabempresa.FieldByName('tipo').AsString = '1' THEN
      BEGIN
        {$region 'Insere na extra..'}
        DM.CdsExtra.append;
        DM.CdsExtra.FieldByName('EXTRA').AsInteger := FICHAREPASSE;
        DM.CdsExtra.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QORIGEM.FieldByName('cdunidadegestora').AsString);
        DM.CdsExtra.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.CdsExtra.FieldByName('EMPRESA').AsString, inttostr(BALCOREPASSE), dm.QORIGEM.FieldByName('NOME').AsString);

        if ANO.VALUE > 2012 then        
        DM.CdsExtra.FieldByName('BALCO_TCE').AsString := Tira_Char39(21, DM.QORIGEM.FieldByName('balcotce').AsString);

        DM.CdsExtra.FieldByName('VINGRUPO').AsString := '110';
        DM.CdsExtra.FieldByName('VINCODIGO').AsString := '000';
        Existe_Vincodigo(DM.CdsExtra.FieldByName('VINGRUPO').AsString, DM.CdsExtra.FieldByName('VINCODIGO').AsString, '');
        DM.CdsExtra.FieldByName('CREDIT').AsString := '0';
        DM.CdsExtra.FieldByName('DEBIT').AsString := '0';
        DM.CdsExtra.FieldByName('SALDO_INICIAL').AsString := '0';
        DM.CdsExtra.FieldByName('DESCRICAO').AsString := '('+trim(DM.QORIGEM.FieldByName('cdcontacontabil').AsString)+') '+ Tira_Char39(80, DM.QORIGEM.FieldByName('nome').AsString);
        DM.CdsExtra.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QORIGEM.FieldByName('cdunidadegestora').AsString);
        DM.CdsExtra.FieldByName('ID_cdcontacontabil').AsString := trim(DM.QORIGEM.FieldByName('cdcontacontabil').AsString);
        DM.CdsExtra.post;
        {$endregion}
        {$region 'Insere na Desdis...'}
        inc(UNID_D);
        if UNID_D > 99 then
        BEGIN
          inc(Orgao_D);
          UNID_D := 1;
        END;
        Existe_TabPoder('99', 'EXTRA ORÇAMENTARIA');
        Existe_TabOrgao('99', FORMATCURR('00', Orgao_D), 'EXTRA - ' + Traz_NomeEntidade(DM.CdsExtra.FieldByName('empresa').AsString));
        Existe_TabUnidade('99', FORMATCURR('00', Orgao_D), FORMATCURR('00', UNID_D), 'EXTRA - ' + TITCO);

        DM.CdsDesDis.append;
        DM.CdsDesDis.FieldByName('FICHA').AsInteger := FICHAREPASSE;
        DM.CdsDesDis.FieldByName('BALCO').AsString := DM.CdsExtra.FieldByName('BALCO').AsString;
        DM.CdsDesDis.FieldByName('FICHA_EXTRA').AsInteger := FICHAREPASSE;
        DM.CdsDesDis.FieldByName('VINGRUPO').AsString := '110';
        DM.CdsDesDis.FieldByName('VINCODIGO').AsString := '000';
        Existe_Vincodigo(DM.CdsDesDis.FieldByName('VINGRUPO').AsString, DM.CdsDesDis.FieldByName('VINCODIGO').AsString, '');
        DM.CdsDesDis.FieldByName('FONinduso').AsString := '0';
        DM.CdsDesDis.FieldByName('FONGRUPO').AsString := Existe_FonGrupo('01', '???');
        DM.CdsDesDis.FieldByName('FONcodigo').AsString := Existe_Foncodigo('00', '???');
        DM.CdsDesDis.FieldByName('EMPRESA').AsInteger := DM.CdsExtra.FieldByName('empresa').AsInteger;
        DM.CdsDesDis.FieldByName('EXTRA').AsString := 'S';
        DM.CdsDesDis.FieldByName('PODER').AsString := '99';
        DM.CdsDesDis.FieldByName('ORGAO').AsString := FORMATCURR('00', Orgao_D);
        DM.CdsDesDis.FieldByName('UNIDADE').AsString := FORMATCURR('00', UNID_D);
        DM.CdsDesDis.FieldByName('RESTOS').AsString := 'N';
        DM.CdsDesDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QORIGEM.FieldByName('cdunidadegestora').AsString);
        DM.CdsDesDis.FieldByName('ID_cdcontacontabil').AsString := trim(DM.QORIGEM.FieldByName('cdcontacontabil').AsString);
        DM.CdsDesDis.post;
        {$endregion}
      END
      else
      BEGIN
        {$region 'Insere na Extra...}
        DM.CdsExtra.append;
        DM.CdsExtra.FieldByName('EXTRA').AsInteger := FICHAREPASSE;
        DM.CdsExtra.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QORIGEM.FieldByName('cdunidadegestora').AsString);
        DM.CdsExtra.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.CdsExtra.FieldByName('EMPRESA').AsString, inttostr(BALCOREPASSE), dm.QORIGEM.FieldByName('NOME').AsString);

        if Ano.Value > 2012 then
        DM.CdsExtra.FieldByName('BALCO_TCE').AsString := Tira_Char39(21, DM.QORIGEM.FieldByName('balcotce').AsString);

        DM.CdsExtra.FieldByName('VINGRUPO').AsString := '110';
        DM.CdsExtra.FieldByName('VINCODIGO').AsString := '000';
        Existe_Vincodigo(DM.CdsExtra.FieldByName('VINGRUPO').AsString, DM.CdsExtra.FieldByName('VINCODIGO').AsString, '');
        DM.CdsExtra.FieldByName('CREDIT').AsString := '0';
        DM.CdsExtra.FieldByName('DEBIT').AsString := '0';
        DM.CdsExtra.FieldByName('SALDO_INICIAL').AsString := '0';
        DM.CdsExtra.FieldByName('DESCRICAO').AsString := '('+trim(DM.QORIGEM.FieldByName('cdcontacontabil').AsString)+') '+Tira_Char39(80, DM.QORIGEM.FieldByName('nome').AsString);
        DM.CdsExtra.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QORIGEM.FieldByName('cdunidadegestora').AsString);
        DM.CdsExtra.FieldByName('ID_cdcontacontabil').AsString := trim(DM.QORIGEM.FieldByName('cdcontacontabil').AsString);
        DM.CdsExtra.post;
        {$endregion}
        {$region 'Insere na RecDis....}
        if UNID_R > 99 then
        BEGIN
          inc(Orgao_R);
          UNID_R := 1;
        END;
        CODRE := '9999.00' + FORMATCURR('00', Orgao_R) +  '.' + FORMATCURR('00', UNID_R);
        DM.CdsRecDis.append;
        DM.CdsRecDis.FieldByName('FICHA').AsInteger := FICHAREPASSE;
        DM.CdsRecDis.FieldByName('BALCO').AsString := DM.CdsExtra.FieldByName('BALCO').AsString;
        DM.CdsRecDis.FieldByName('FICHA_EXTRA').AsInteger := FICHAREPASSE;
        DM.CdsRecDis.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, DM.QORIGEM.FieldByName('nome').AsString,DM.QORIGEM.FieldByName('nome').AsString);
        DM.CdsRecDis.FieldByName('VINGRUPO').AsString := '110';
        DM.CdsRecDis.FieldByName('VINCODIGO').AsString := '000';
        Existe_Vincodigo(DM.CdsRecDis.FieldByName('VINGRUPO').AsString, DM.CdsRecDis.FieldByName('VINCODIGO').AsString, '');
        DM.CdsRecDis.FieldByName('FONinduso').AsString := '0';
        DM.CdsRecDis.FieldByName('FONGRUPO').AsString := Existe_FonGrupo('01', '???');
        DM.CdsRecDis.FieldByName('FONcodigo').AsString := Existe_Foncodigo('00', '???');
        DM.CdsRecDis.FieldByName('EMPRESA').AsInteger := DM.CdsExtra.FieldByName('empresa').AsInteger;
        DM.CdsRecDis.FieldByName('EXTRA').AsString := 'S';
        DM.CdsRecDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.QORIGEM.FieldByName('cdunidadegestora').AsString);
        DM.CdsRecDis.FieldByName('ID_cdcontacontabil').AsString := trim(DM.QORIGEM.FieldByName('cdcontacontabil').AsString);
        DM.CdsRecDis.post;
        {$endregion}
      END;
      dm.QORIGEM.Next;
  END;
  STATUS.Caption := 'Salvando Repasse Extra......';
  STATUS.Update;
  dm.CdsExtra.ApplyUpdates(-1);
  STATUS.Caption := 'Salvando Repasse Desdis......';
  STATUS.Update;
  dm.Cdsdesdis.ApplyUpdates(-1);
  STATUS.Caption := 'Salvando Repasse Recdis......';
  STATUS.Update;
  dm.Cdsrecdis.ApplyUpdates(-1);
  STATUS.Caption := 'Ficha Extra Repasse - OK';
  STATUS.Update;


  DM.Localiza.Close;
  DM.Localiza.CommandText :=
      'SELECT A.EMPRESA,A.NOME, ' +
      'CASE ' +
      '   WHEN COALESCE((SELECT FIRST 1 Z.FICHA FROM RECDIS Z WHERE Z.BALCO LIKE ''3237%'' AND Z.EMPRESA = A.EMPRESA),0) = 0 THEN ''SIM'' ' +
      '   ELSE (SELECT FIRST 1 Z.FICHA FROM RECDIS Z WHERE Z.BALCO LIKE ''3237%'' AND Z.EMPRESA = A.EMPRESA) ' +
      'END CRIA_RECDIS ' +
      'FROM TABEMPRESA A  WHERE A.TIPO <> 1';
  DM.Localiza.Open;

  P.Position := 0;
  P.Max := DM.Localiza.RecordCount;

  while NOT DM.Localiza.Eof do
  begin
       P.Position := DM.Localiza.RecNo;
       EM.Caption := IntToStr(P.Position)+' DE '+IntToStr(P.MAX);
       EM.Update;

       IF dm.Localiza.FieldByName('CRIA_RECDIS').AsString = 'SIM' THEN
       BEGIN
        {$region 'Insere na extra..'}
            inc(FICHAREPASSE);
            inc(BALCOREPASSE);
            DM.CdsExtra.append;
            DM.CdsExtra.FieldByName('EXTRA').AsInteger := FICHAREPASSE;
            DM.CdsExtra.FieldByName('EMPRESA').AsString := DM.Localiza.FieldByName('EMPRESA').AsString;
            Existe_Conpla(inttostr(BALCOREPASSE), 'TRANSFERENCIAS ENTRE ENTIDADES');
            DM.CdsExtra.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.CdsExtra.FieldByName('EMPRESA').AsString, inttostr(BALCOREPASSE), 'REPASSE DE DUODÉCIMO');

    //        DM.CdsExtra.FieldByName('BALCO_TCE').AsString := Tira_Char39(21, DM.QORIGEM.FieldByName('balcotce').AsString);

            DM.CdsExtra.FieldByName('VINGRUPO').AsString := '110';
            DM.CdsExtra.FieldByName('VINCODIGO').AsString := '000';
            Existe_Vincodigo(DM.CdsExtra.FieldByName('VINGRUPO').AsString, DM.CdsExtra.FieldByName('VINCODIGO').AsString, '');
            DM.CdsExtra.FieldByName('CREDIT').AsString := '0';
            DM.CdsExtra.FieldByName('DEBIT').AsString := '0';
            DM.CdsExtra.FieldByName('SALDO_INICIAL').AsString := '0';
            DM.CdsExtra.FieldByName('DESCRICAO').AsString := 'REPASSE '+DM.Localiza.FieldByName('NOME').AsString;
            DM.CdsExtra.post;
        {$endregion}
        {$region 'Insere na RecDis....}
            if UNID_R > 99 then
            BEGIN
              inc(Orgao_R);
              UNID_R := 1;
            END;
            CODRE := '9999.00' + FORMATCURR('00', Orgao_R) +  '.' + FORMATCURR('00', UNID_R);
            DM.CdsRecDis.append;
            DM.CdsRecDis.FieldByName('FICHA').AsInteger := FICHAREPASSE;
            DM.CdsRecDis.FieldByName('BALCO').AsString := DM.CdsExtra.FieldByName('BALCO').AsString;
            DM.CdsRecDis.FieldByName('FICHA_EXTRA').AsInteger := FICHAREPASSE;
            DM.CdsRecDis.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, 'REPASSE DE DUODÉCIMO', 'REPASSE DE DUODÉCIMO');
            DM.CdsRecDis.FieldByName('VINGRUPO').AsString := '110';
            DM.CdsRecDis.FieldByName('VINCODIGO').AsString := '000';
            Existe_Vincodigo(DM.CdsRecDis.FieldByName('VINGRUPO').AsString, DM.CdsRecDis.FieldByName('VINCODIGO').AsString, '');
            DM.CdsRecDis.FieldByName('FONinduso').AsString := '0';
            DM.CdsRecDis.FieldByName('FONGRUPO').AsString := Existe_FonGrupo('01', '???');
            DM.CdsRecDis.FieldByName('FONcodigo').AsString := Existe_Foncodigo('00', '???');
            DM.CdsRecDis.FieldByName('EMPRESA').AsInteger := DM.CdsExtra.FieldByName('empresa').AsInteger;
            DM.CdsRecDis.FieldByName('EXTRA').AsString := 'S';
            DM.CdsRecDis.post;
        {$endregion}
       END;


       DM.Localiza.Next;
       Application.ProcessMessages;
  end;
  STATUS.Caption := 'Salvando Repasse Extra......';
  STATUS.Update;
  dm.CdsExtra.ApplyUpdates(-1);
  STATUS.Caption := 'Salvando Repasse Recdis......';
  STATUS.Update;
  dm.Cdsrecdis.ApplyUpdates(-1);
  STATUS.Caption := 'Ficha Extra Repasse - OK';
  STATUS.Update;

  Desconecta_Conecta;
  memoStatus.Lines.Add('Repasse OK');
{$ENDREGION}
  // ************************************************************************************************************
{$REGION 'CRIAS AS FICHAS DE RESTOS ...... '}
  // INCLUI FICHA DE RESTOS A PAGAR
  SITU.caption := 'Fichas de Restos a Pagar...';
  SITU.update;
  DM.qscpi2.close;
  DM.qscpi2.Commandtext := 'SELECT * FROM TABEMPRESA ORDER BY EMPRESA';
  DM.qscpi2.OPEN;
  p.Max := DM.qscpi2.RecordCount;
  DM.qscpi2.first;
  while not DM.qscpi2.eof do
  begin
    p.Position := DM.qscpi2.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    inc(FICHARESTOS);

    DM.QSCPI.close;
    DM.QSCPI.Commandtext := 'SELECT * FROM CONPLA_SCPI WHERE BALCO = ''' + '321101' + ''' AND EMPRESA = ''' + DM.qscpi2.FieldByName('EMPRESA').AsString + '''';
    DM.QSCPI.OPEN;

    if DM.QSCPI.IsEmpty then
      DM.QSCPI.append
    else
      DM.QSCPI.edit;
    DM.QSCPI.FieldByName('BALCO').AsString := '321101';
    DM.QSCPI.FieldByName('TIP').AsString := '3';
    DM.QSCPI.FieldByName('D_C').AsString := 'D';
    DM.QSCPI.FieldByName('TITCO').AsString := 'RESTOS À PAGAR';
    DM.QSCPI.FieldByName('EMPRESA').AsString := DM.qscpi2.FieldByName('EMPRESA').AsString;
    DM.QSCPI.post;
    DM.QSCPI.ApplyUpdates(-1);

    DM.CdsDestino.close;
    DM.CdsDestino.Commandtext := 'SELECT * FROM EXTRA where extra = -1';
    DM.CdsDestino.OPEN;

    DM.CdsDestino.append;
    DM.CdsDestino.FieldByName('EXTRA').AsInteger := FICHARESTOS;
    DM.CdsDestino.FieldByName('EMPRESA').AsInteger := DM.qscpi2.FieldByName('EMPRESA').AsInteger;
    DM.CdsDestino.FieldByName('BALCO').AsInteger := 321101;
    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '110';
    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '000';
    DM.CdsDestino.FieldByName('CREDIT').AsString := '0';
    DM.CdsDestino.FieldByName('DEBIT').AsString := '0';
    DM.CdsDestino.FieldByName('SALDO_INICIAL').AsString := '0';
    DM.CdsDestino.FieldByName('DESCRICAO').AsString := 'RESTOS A PAGAR PROCESSADO';
    DM.CdsDestino.FieldByName('RPROC').AsString := 'S';
    DM.CdsDestino.post;
    DM.CdsDestino.ApplyUpdates(-1);

    Existe_TabPoder('99', 'EXTRA ORÇAMENTÁRIA');
    Orgao := 80; // strtoint(copy(DM.qscpi2.FieldByName('EMPRESA').asstring,1,2));
    Existe_TabOrgao('99', FORMATCURR('00', Orgao), 'RESTOS A PAGAR - ' + DM.qscpi2.FieldByName('NOME').AsString);

    DM.QSCPI.close;
    DM.QSCPI.Commandtext := 'SELECT FIRST 1 * FROM TABUNIDADE WHERE PODER = 99 AND ORGAO = ''' + FORMATCURR('00', Orgao) + ''' ORDER BY UNIDADE DESC';
    DM.QSCPI.OPEN;

    if DM.QSCPI.FieldByName('UNIDADE').AsInteger = 99 then
      UNID_D := DM.QSCPI.FieldByName('UNIDADE').AsInteger
    else
      UNID_D := DM.QSCPI.FieldByName('UNIDADE').AsInteger + 1;

    Existe_TabUnidade('99', FORMATCURR('00', Orgao), FORMATCURR('00', UNID_D), 'RESTOS A PAGAR PROCESSADO - ' + DM.qscpi2.FieldByName('NOME').AsString);

    DM.CdsDestino.close;
    DM.CdsDestino.Commandtext := 'SELECT * FROM DESDIS WHERE FICHA = -1';
    DM.CdsDestino.OPEN;

    DM.CdsDestino.append;
    DM.CdsDestino.FieldByName('FICHA').AsInteger := FICHARESTOS;
    DM.CdsDestino.FieldByName('BALCO').AsInteger := 321101;
    DM.CdsDestino.FieldByName('FICHA_EXTRA').AsInteger := FICHARESTOS;
    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '110';
    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '000';
    DM.CdsDestino.FieldByName('FONinduso').AsString := '0';
    DM.CdsDestino.FieldByName('FONGRUPO').AsString := '01';
    DM.CdsDestino.FieldByName('FONcodigo').AsString := '00';
    DM.CdsDestino.FieldByName('EMPRESA').AsInteger := DM.qscpi2.FieldByName('EMPRESA').AsInteger;
    DM.CdsDestino.FieldByName('RPROC').AsString := 'S';
    DM.CdsDestino.FieldByName('EXTRA').AsString := 'S';
    DM.CdsDestino.FieldByName('PODER').AsString := '99';
    DM.CdsDestino.FieldByName('ORGAO').AsString := FORMATCURR('00', Orgao);
    DM.CdsDestino.FieldByName('UNIDADE').AsString := FORMATCURR('00', UNID_D);
    DM.CdsDestino.FieldByName('RESTOS').AsString := 'S';
    DM.CdsDestino.post;
    DM.CdsDestino.ApplyUpdates(-1);

    // ***** NÃO PROCESSADO *****
    inc(FICHARESTOS);
    DM.CdsDestino.close;
    DM.CdsDestino.Commandtext := 'SELECT * FROM EXTRA where extra = -1';
    DM.CdsDestino.OPEN;

    DM.CdsDestino.append;
    DM.CdsDestino.FieldByName('EXTRA').AsInteger := FICHARESTOS;
    DM.CdsDestino.FieldByName('EMPRESA').AsInteger := DM.qscpi2.FieldByName('EMPRESA').AsInteger;
    DM.CdsDestino.FieldByName('BALCO').AsInteger := 321101;
    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '110';
    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '000';
    DM.CdsDestino.FieldByName('CREDIT').AsString := '0';
    DM.CdsDestino.FieldByName('DEBIT').AsString := '0';
    DM.CdsDestino.FieldByName('SALDO_INICIAL').AsString := '0';
    DM.CdsDestino.FieldByName('DESCRICAO').AsString := 'RESTOS A PAGAR NÃO PROCESSADO';
    DM.CdsDestino.FieldByName('RPROC').AsString := 'N';
    DM.CdsDestino.post;
    DM.CdsDestino.ApplyUpdates(-1);

    Existe_TabPoder('99', 'EXTRA ORÇAMENTÁRIA');
    Existe_TabOrgao('99', FORMATCURR('00', Orgao), 'RESTOS A PAGAR - ' + DM.qscpi2.FieldByName('NOME').AsString);

    DM.QSCPI.close;
    DM.QSCPI.Commandtext := 'SELECT FIRST 1 * FROM TABUNIDADE WHERE PODER = 99 AND ORGAO = ''' + FORMATCURR('00', Orgao) + ''' ORDER BY UNIDADE DESC';
    DM.QSCPI.OPEN;

    if DM.QSCPI.FieldByName('UNIDADE').AsInteger = 99 then
      UNID_D := DM.QSCPI.FieldByName('UNIDADE').AsInteger
    else
      UNID_D := DM.QSCPI.FieldByName('UNIDADE').AsInteger + 1;

    Existe_TabUnidade('99', FORMATCURR('00', Orgao), FORMATCURR('00', UNID_D), 'RESTOS A PAGAR NÃO PROCESSADO - ' + DM.qscpi2.FieldByName('NOME').AsString);

    DM.CdsDestino.close;
    DM.CdsDestino.Commandtext := 'SELECT * FROM DESDIS WHERE FICHA = -1';
    DM.CdsDestino.OPEN;

    DM.CdsDestino.append;
    DM.CdsDestino.FieldByName('FICHA').AsInteger := FICHARESTOS;
    DM.CdsDestino.FieldByName('BALCO').AsInteger := 321101;
    DM.CdsDestino.FieldByName('FICHA_EXTRA').AsInteger := FICHARESTOS;
    DM.CdsDestino.FieldByName('VINGRUPO').AsString := '110';
    DM.CdsDestino.FieldByName('VINCODIGO').AsString := '000';
    DM.CdsDestino.FieldByName('FONinduso').AsString := '0';
    DM.CdsDestino.FieldByName('FONGRUPO').AsString := '01';
    DM.CdsDestino.FieldByName('FONcodigo').AsString := '00';
    DM.CdsDestino.FieldByName('EMPRESA').AsInteger := DM.qscpi2.FieldByName('EMPRESA').AsInteger;
    DM.CdsDestino.FieldByName('RPROC').AsString := 'N';
    DM.CdsDestino.FieldByName('EXTRA').AsString := 'S';
    DM.CdsDestino.FieldByName('PODER').AsString := '99';
    DM.CdsDestino.FieldByName('ORGAO').AsString := FORMATCURR('00', Orgao);
    DM.CdsDestino.FieldByName('UNIDADE').AsString := FORMATCURR('00', UNID_D);
    DM.CdsDestino.FieldByName('RESTOS').AsString := 'S';
    DM.CdsDestino.post;
    DM.CdsDestino.ApplyUpdates(-1);

    DM.qscpi2.next;
    APPLICATION.ProcessMessages;
  end;

  STATUS.caption := ' Fichas Restos OK';
  STATUS.update;
  memoStatus.Lines.Add('Fichas Restos OK');

{$ENDREGION}
{$REGION 'CRIA AS FICHAS 1138 & 2188.....}
  // //*******************  fichas extras de 1138 e 2188
  SITU.caption := 'Fichas EXTRAS....';
  SITU.update;

  DM.cdsOrigem.close;

  if Ano.Value > 2012 then
    DM.cdsOrigem.Commandtext := // lista fichas extras
      'select coalesce(coalesce(m.cdunidadegestora ,s.cdunidadegestora),c.cdunidadegestora) as cdunidadegestora , c.cdcontacontabil, ' +
      'cast(c.cdnivelcontabil as varchar(20)) as balcotce, cast(c.dscontacontabil as varchar(120)) as nome, ' +
      'case when c.cdnivelcontabil like ''1138%'' then ''3131'' else ''3232'' end as balco, ' +
      'sum(coalesce(case when s.cdtipomovimento = 461 then s.vlmovimento else s.vlmovimento *-1 end,0)) as saldo ' +
      'from '+BNC_CPC+'.dbo.contacontabil c ' +
      'left join '+BNC_CPE+'.dbo.movimento m on ( m.cdtipomovimento in (464,465) and m.cdcontacontabil = c.cdcontacontabil) ' +
      'left join '+BNC_CPE+'.dbo.movimento s on (s.cdtipomovimento in (460,461) and m.cdcontacontabil = c.cdcontacontabil and m.cdunidadegestora = s.cdunidadegestora and m.cdcontacontabil = s.cdcontacontabil) ' +
      'where ((c.cdnivelcontabil like ''1138%'') or (c.cdnivelcontabil like ''2188%'')  or ((c.cdnivelcontabil like ''2143%'') and (upper(c.dscontacontabil) like ''%CLASSIFICAR%'' )) ) ' +
      'group by  coalesce(coalesce(m.cdunidadegestora ,s.cdunidadegestora),c.cdunidadegestora) , c.cdcontacontabil,cast(c.cdnivelcontabil as varchar(20)), cast(c.dscontacontabil as varchar(120)), ' +
      'case when c.cdnivelcontabil like ''1138%'' then ''3131'' else ''3232'' end ' +
      'order by 1,3'
  else
    DM.cdsOrigem.Commandtext :=
      'SELECT DISTINCT  C.CDUNIDADEGESTORA, M.CDUNIDADEGESTORA AS CDUNIDADEGESTORA_MOV, SUBSTRING(C.CDNIVELCONTABIL,1,9) AS COD_TCE  ,C.DSCONTACONTABIL AS NOME, C.CDCONTACONTABIL, ''3232'' AS BALCO ' +
      'FROM ['+BNC_CPC+'].[DBO].CONTACONTABIL C ' +
      'LEFT JOIN ['+BNC_CPE+'].[DBO].MOVIMENTO M ON (C.CDCONTACONTABIL=M.CDCONTACONTABIL) ' +
      'WHERE C.CDCONTACONTABIL <> 0 ' +
      'AND ((SUBSTRING(C.CDNIVELCONTABIL,1,3)=''211'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,4)=''2122'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,5)=''21411'') ' +
      'OR (SUBSTRING(C.CDNIVELCONTABIL,1,5)=''11219'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,4)=''1122'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,8)=''11411100'') ' +
      'OR (SUBSTRING(C.CDNIVELCONTABIL,1,8)=''11411106'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,7)=''1125000'') OR (SUBSTRING(C.CDNIVELCONTABIL,1,7)=''1125102'') ' +
      'OR C.CDNIVELCONTABIL LIKE ''41112043%'' OR CDNIVELCONTABIL LIKE ''11261%'' OR (CDNIVELCONTABIL LIKE ''1129%'' AND IDCONTACONTABIL = ''A'') ' +
      'OR (C.CDNIVELCONTABIL LIKE ''21216020%'' AND C.CDCONTACONTABIL IN (SELECT CASE ' +
      '                                                                            WHEN A.CDCONTACONTABIL <> 0 THEN A.CDCONTACONTABIL ' +
      '                                                                            WHEN A.CDCONTRAPARTIDA <> 0 THEN A.CDCONTRAPARTIDA ' +
      '                                                                        ELSE (SELECT B.CDCONTACONTABIL FROM ['+BNC_CPE+'].DBO.MOVIMENTO B ' +
      '                                                                              WHERE B.NRSEQUENCIASISTEMA = A.NRSEQUENCIA AND B.CDUNIDADEGESTORA = A.CDUNIDADEGESTORA AND ' +
      '                                                                              B.NREMPENHO = A.NREMPENHO AND B.CDCONTRAPARTIDA = 0 AND B.CDCONTACONTABIL <> 0) ' +
      '                                                                        END AS CONTA_DESCONTO ' +
      '                                                                FROM ['+BNC_CPE+'].DBO.MOVIMENTO A ' +
      '                                                                WHERE A.CDTIPOMOVIMENTO IN (453,472) AND A.CDHISTORICOSISTEMA = 455 ' +
      '                                                                AND A.DTANOEMISSAO < '+Ano.Text+' ))) ' +
      'ORDER BY 2,1';
  DM.cdsOrigem.OPEN;
  DM.cdsOrigem.first;
  BALCO3131 := 313100;
  BALCO3232 := 323200;
  Orgao_D := 0;
  Orgao_R := 0;
  UNID_D := 0;
  UNID_R := 0;
  FICHAEXTRA := 9000;
  p.Max := DM.cdsOrigem.RecordCount;

  DM.CdsExtra.Close;
  DM.CdsExtra.Commandtext := 'SELECT * FROM EXTRA where extra = -1 ';
  DM.CdsExtra.OPEN;

  DM.CdsDesDis.close;
  DM.CdsDesDis.Commandtext := 'SELECT * FROM DESDIS WHERE FICHA = -1';
  DM.CdsDesDis.OPEN;

  DM.CdsRecDis.close;
  DM.CdsRecDis.Commandtext := 'SELECT * FROM RECDIS WHERE FICHA = -1';
  DM.CdsRecDis.OPEN;

  while not DM.cdsOrigem.eof do
  begin
    p.Position := DM.cdsOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(DM.cdsOrigem.RecordCount);
    EM.update;
    inc(FICHAEXTRA);
    inc(UNID_D);
    inc(UNID_R);
    if DM.cdsOrigem.FieldByName('BALCO').AsString = '3131' then
    begin
      inc(BALCO3131);
      if BALCO3131 = 313200 then
      BEGIN
        BALCO3131 := 313199;
        TITCO := 'DEVEDORES DIVERSOS';
      END
      ELSE
        TITCO := Tira_Char39(80, trim(DM.cdsOrigem.FieldByName('nome').AsString));
      codigo := BALCO3131;
    end
    else if DM.cdsOrigem.FieldByName('BALCO').AsString = '3232' then
    begin
      inc(BALCO3232);
      if BALCO3232 = 323300 then
      BEGIN
        BALCO3232 := 323299;
        TITCO := 'OUTRAS CONSIGNAÇÕES';
      END
      ELSE
        TITCO := Tira_Char39(80, trim(DM.cdsOrigem.FieldByName('nome').AsString));
      codigo := BALCO3232;
    end;


    DM.CdsExtra.append;
    DM.CdsExtra.FieldByName('EXTRA').AsInteger := FICHAEXTRA;

    if ANO.Value > 2012 then
    DM.CdsExtra.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString)
    ELSE
    BEGIN
      if TRIM(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString) <> '' then
        DM.CdsExtra.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString)
      ELSE
        DM.CdsExtra.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString)
    END;

    DM.CdsExtra.FieldByName('BALCO').AsString := Existe_Conpla_SCPI(DM.CdsExtra.FieldByName('EMPRESA').AsString, inttostr(codigo), TITCO);

    if Ano.Value > 2012 then
      DM.CdsExtra.FieldByName('BALCO_TCE').AsString := Tira_Char39(21, DM.cdsOrigem.FieldByName('balcotce').AsString)
    else
      DM.CdsExtra.FieldByName('BALCO_TCE').AsString := Tira_Char39(21, DM.cdsOrigem.FieldByName('cod_tce').AsString);

    DM.CdsExtra.FieldByName('VINGRUPO').AsString := '110';
    DM.CdsExtra.FieldByName('VINCODIGO').AsString := '000';
    DM.CdsExtra.FieldByName('FONINDUSO').AsString := '0';
    DM.CdsExtra.FieldByName('FONGRUPO').AsString := Existe_FonGrupo('01', '???');
    DM.CdsExtra.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???');
    Existe_Vincodigo(DM.CdsExtra.FieldByName('VINGRUPO').AsString, DM.CdsExtra.FieldByName('VINCODIGO').AsString, '');
    DM.CdsExtra.FieldByName('CREDIT').AsString := '0';
    DM.CdsExtra.FieldByName('DEBIT').AsString := '0';

        DM.CdsExtra.FieldByName('DESCRICAO').AsString := '('+trim(DM.cdsOrigem.FieldByName('cdcontacontabil').AsString)+') '+ Tira_Char39(80, DM.cdsOrigem.FieldByName('nome').AsString);

    if Ano.Value > 2012 then
    BEGIN
      DM.CdsExtra.FieldByName('SALDO_INICIAL').AsString := DM.cdsOrigem.FieldByName('saldo').AsString;
      DM.CdsExtra.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString);
    END
    ELSE
    BEGIN
      if TRIM(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString) <> '' then
        DM.CdsExtra.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString)
      ELSE
        DM.CdsExtra.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString);
    END;


    DM.CdsExtra.FieldByName('ID_cdcontacontabil').AsString := trim(DM.cdsOrigem.FieldByName('cdcontacontabil').AsString);
    DM.CdsExtra.post;

    if UNID_D > 99 then
    BEGIN
      inc(Orgao_D);
      UNID_D := 1;
    END;
    Existe_TabPoder('99', 'EXTRA ORÇAMENTARIA');
    Existe_TabOrgao('99', FORMATCURR('00', Orgao_D), 'EXTRA - ' + Traz_NomeEntidade(DM.CdsExtra.FieldByName('empresa').AsString));
    Existe_TabUnidade('99', FORMATCURR('00', Orgao_D), FORMATCURR('00', UNID_D), 'EXTRA - ' + TITCO);

    DM.CdsDesDis.append;
    DM.CdsDesDis.FieldByName('FICHA').AsInteger := FICHAEXTRA;
    DM.CdsDesDis.FieldByName('BALCO').AsString := DM.CdsExtra.FieldByName('BALCO').AsString;
    DM.CdsDesDis.FieldByName('FICHA_EXTRA').AsInteger := FICHAEXTRA;
    DM.CdsDesDis.FieldByName('VINGRUPO').AsString := '110';
    DM.CdsDesDis.FieldByName('VINCODIGO').AsString := '000';
    Existe_Vincodigo(DM.CdsDesDis.FieldByName('VINGRUPO').AsString, DM.CdsDesDis.FieldByName('VINCODIGO').AsString, '');
    DM.CdsDesDis.FieldByName('FONINDUSO').AsString := '0';
    DM.CdsDesDis.FieldByName('FONGRUPO').AsString := Existe_FonGrupo('01', '???');
    DM.CdsDesDis.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???');
    DM.CdsDesDis.FieldByName('EMPRESA').AsInteger := DM.CdsExtra.FieldByName('empresa').AsInteger;
    DM.CdsDesDis.FieldByName('EXTRA').AsString := 'S';
    DM.CdsDesDis.FieldByName('PODER').AsString := '99';
    DM.CdsDesDis.FieldByName('ORGAO').AsString := FORMATCURR('00', Orgao_D);
    DM.CdsDesDis.FieldByName('UNIDADE').AsString := FORMATCURR('00', UNID_D);
    DM.CdsDesDis.FieldByName('RESTOS').AsString := 'N';

    if ANO.Value > 2012 then
    DM.CdsDesDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString)
    ELSE
    BEGIN
         if TRIM(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString) <> '' then
            DM.CdsDesDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString)
         ELSE
            DM.CdsDesDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString);
    END;

    DM.CdsDesDis.FieldByName('ID_cdcontacontabil').AsString := trim(DM.cdsOrigem.FieldByName('cdcontacontabil').AsString);
    DM.CdsDesDis.post;


    if UNID_R > 99 then
    BEGIN
      inc(Orgao_R);
      UNID_R := 1;
    END;
    CODRE := '9999.00' + FORMATCURR('00', Orgao_R) +  '.' + FORMATCURR('00', UNID_R);
    DM.CdsRecDis.append;
    DM.CdsRecDis.FieldByName('FICHA').AsInteger := FICHAEXTRA;
    DM.CdsRecDis.FieldByName('BALCO').AsString := DM.CdsExtra.FieldByName('BALCO').AsString;
    DM.CdsRecDis.FieldByName('FICHA_EXTRA').AsInteger := FICHAEXTRA;
    DM.CdsRecDis.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, DM.cdsOrigem.FieldByName('nome').AsString,DM.cdsOrigem.FieldByName('nome').AsString);
    DM.CdsRecDis.FieldByName('VINGRUPO').AsString := '110';
    DM.CdsRecDis.FieldByName('VINCODIGO').AsString := '000';
    Existe_Vincodigo(DM.CdsRecDis.FieldByName('VINGRUPO').AsString, DM.CdsRecDis.FieldByName('VINCODIGO').AsString, '');
    DM.CdsRecDis.FieldByName('FONINDUSO').AsString := '0';
    DM.CdsRecDis.FieldByName('FONGRUPO').AsString := Existe_FonGrupo('01', '???');
    DM.CdsRecDis.FieldByName('FONCODIGO').AsString := Existe_FonGrupo('00', '???');
    DM.CdsRecDis.FieldByName('EMPRESA').AsInteger := DM.CdsExtra.FieldByName('empresa').AsInteger;
    DM.CdsRecDis.FieldByName('EXTRA').AsString := 'S';

    if ANO.Value > 2012 then
      DM.CdsRecDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString)
    ELSE
    BEGIN
        if TRIM(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString) <> '' then
          DM.CdsRecDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora_MOV').AsString)
        ELSE
          DM.CdsRecDis.FieldByName('ID_cdunidadegestora').AsString := trim(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString);
    END;

    DM.CdsRecDis.FieldByName('ID_cdcontacontabil').AsString := trim(DM.cdsOrigem.FieldByName('cdcontacontabil').AsString);
    DM.CdsRecDis.post;

    DM.cdsOrigem.next;
  end;
  STATUS.caption := 'Salvando Tabela Extra....';
  STATUS.update;
  DM.CdsExtra.ApplyUpdates(-1);

  STATUS.caption := 'Salvando Tabela Desdis....';
  STATUS.update;
  DM.CdsDesDis.ApplyUpdates(-1);

  STATUS.caption := 'Salvando Tabela Recdis....';
  STATUS.update;
  DM.CdsRecDis.ApplyUpdates(-1);

  STATUS.caption := 'Fichas EXTRAS OK';
  STATUS.update;
  memoStatus.Lines.Add('Fichas EXTRAS OK');
  DM.cdsOrigem.FILTER := '';
  DM.cdsOrigem.FiLTERED := false;
  Desconecta_Conecta;
{$ENDREGION}
end;

PROCEDURE TTfrmprincipal_Conversao.Desliga_Triggers;
BEGIN
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TI_DESALD_SALDOFICHA' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESALD_SALDOFICHA' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TD_DESALD_SALDOFICHA' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TD_DESALD' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TI_DESPES_SALDOFICHA' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESPES_SALDOFICHA' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESDIS_SALDOFICHA' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESCEMP' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESPES_SALDO_SUBEMPENHAR' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESSUB_DESCO' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESPES' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_VIEWLIQ_SALDO_SUBEMPENHAR' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESDIS_SALDOFICHARESERVA' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TB_DESPES' + CHAR(39);
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=1 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TD_ORDPAG' + CHAR(39);
  DM.Atualiza.ExecSQL;



  TRY
    DM.Atualiza.SQL.text := 'alter table VIEWLIQ DROP constraint VALOR__MENOR_ANULADO';
    DM.Atualiza.ExecSQL;
  EXCEPT
    ON E: Exception DO
    BEGIN

    END;
  END;

  TRY
    DM.Atualiza.SQL.text := 'alter table DESSUB DROP constraint VALOR_MENOR_ANULADO';
    DM.Atualiza.ExecSQL;
  EXCEPT
    ON E: Exception DO
    BEGIN

    END;
  END;
  memoStatus.Lines.Add('Trigger Desligado');

END;

procedure TTfrmprincipal_Conversao.Devolucao_Adiantamento_Restos;
VAR FICHA_DEDUZ: Integer; ACHOU: BOOLEAN; Historico: STRING; FILTRO: STRING;
    nlanc_new: Integer;
  BEGIN
    SITU.Caption := 'Devolucao de Adiantamento de Restos...';
    SITU.Update;
    CriaCampo('RECEIT', 'modulo', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA', '20');
    CriaCampo('ORDCRE', 'ID_NRSEQUENCIA', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIA_TRANSF', '20');
    CriaCampo('RECEIT', 'ID_NRSEQUENCIASISTEMA_TRANSF', '20');
    CriaCampo('RECEIT', 'ID_CONCILIA', '20');

    dm.ATUALIZA.CLOSE;
    dm.ATUALIZA.Sql.text := ' update recdis r set r.contr_variacao = (select o.contr_variacao from recorc o where o.ficha = r.ficha ) where r.contr_variacao is null ';
    dm.ATUALIZA.ExecSQL;

    dm.ATUALIZA.Sql.text := ' select max(nlanc) as nlanc from receit';
    dm.ATUALIZA.open;
    nlanc_new := dm.ATUALIZA.FieldByName('nlanc').AsInteger;

    dm.localiza.CLOSE;
    dm.localiza.Commandtext :=
      'select r.ficha from recdis r ' +
      'inner join rectab t on r.codre=t.codre ' +
      'where upper(nomre) like ''OUTRAS RECEITAS%'' ' +
      'and r.fongrupo =''01'' and r.vingrupo= ''110''';
    dm.localiza.OPEN;
    if dm.localiza.IsEmpty then
    begin
      dm.localiza.CLOSE;
      dm.localiza.Commandtext :=
        'select r.ficha from recdis r ' +
        'inner join rectab t on r.codre=t.codre ' +
        'where upper(nomre) like ''OUTRAS RECEITAS%'' ' +
        'and r.fongrupo =''01'' ';
      dm.localiza.OPEN;
      if dm.localiza.IsEmpty then
      begin
        dm.localiza.CLOSE;
        dm.localiza.Commandtext :=
          'select r.ficha from recdis r ' +
          'inner join rectab t on r.codre=t.codre ' +
          'where upper(nomre) like ''OUTRAS RECEITAS%'' ';
        dm.localiza.OPEN;
      end;
    end;

    FICHA_DEDUZ := dm.localiza.FieldByName('FICHA').Asinteger;

    dm.QDESTINO.CLOSE;
    dm.QDESTINO.Commandtext := 'SELECT * FROM RECEIT where nlanc = 0 ';
    dm.QDESTINO.OPEN;

    dm.QORIGEM.CLOSE;


    dm.QORIGEM.Commandtext :=
      'SELECT p.[cdUnidadeGestora] ,p.[nrSequencia],p.[dtAnoEmissao] ,p.[nrEmpenho] ,p.[idEmpenho] ,p.[nrSequenciaSubempenho] ,p.[cdTipoMovimento] ' +
      '      ,p.[cdHistoricoSistema] ,p.[inMovimentoRestos] ,p.[nrSequenciaSistema] ,p.[dtMovimento] ,p.[cdContaContabil],p.[cdDespesa] ,p.[cdReceita] ' +
      '      ,p.[cdUnidadeFinanceira] ,p.[cdDespesaSecundaria] ,p.[cdObjetoDespesa] ,p.[cdFornecedor] ,p.[cdContrapartida] ,p.[cdHistoricoPadrao] ' +
      '      ,cast(substring(h.dsComplHistorico ,1,1024) as varchar(1024)) as dscomplhistorico ,p.[idBcteFinanceiro] ,p.[dtMesEmissaoEmpenho] ,p.[idDocumentoPagto] ,p.[nrDocumentoPagto] ,p.[idMovConciliado] ' +
      '      ,p.[dtDiaConciliacao] ,p.[dtMesConciliacao]  ,p.[nrArtigoCaixa] ,p.[vlReservado] ,p.[idFundamentoLegal] ,p.[nrFundamentoLegal] ' +
      '      ,p.[cdEmenta] ,p.[inCorrecao] ,p.[cdBanco]  ,p.[cdAgencia] ,p.[cdContaCorrente] ,p.[nrNotaReservaSaldo] ,p.[cdGrupoEvento] ' +
      '      ,p.[idClasseEvento] ,p.[cdEvento] ,p.[dtDocumentoPagto] ,p.[cdUsuario] ,p.[cdAplicacao] ,p.[cdFonteRecurso] ,p.[qtDiasAplicacao] ' +
      '      ,p.[cdInscricao] ,p.[tpIdentificacao] ,p.[cdControleExclusao] ,p.[sqEstornoBaixaRestos]  ,p.[sqBaixaRestos] ' +
      '      ,p.[vlEstornoBaixaRestos], m.vlmovimento ' +
      '      ,coalesce((select z.cdreceita from '+bnc_cpe+'.dbo.movimento z where z.cdunidadegestora=p.cdUnidadeGestora and z.dtanoemissao = p.dtAnoEmissao '+
      '           and z.nrempenho=p.nrEmpenho  and z.nrSequenciaSubempenho=p.nrSequenciaSubempenho and p.dtMovimento=z.dtMovimento  '+
      '           and p.cdContaContabil=z.cdContaContabil and z.nrSequenciaSistema=p.nrSequencia),0) as ficha    '+
      '  FROM ['+bnc_cpe+'].[dbo].[DATAVIEW_PAGAMENTO_RESTOS_ESTORNO] p ' +
      '  inner join '+bnc_cpe+'.dbo.movimento m on m.cdunidadegestora=p.cdunidadegestora and p.nrsequencia=m.nrsequencia ' +
      '  left join ['+bnc_cpe+'].[dbo].[COMPLEMENTOHISTORICO] h on (p.[nrComplHistorico]=h.nrComplHistorico and p.cdUnidadeGestora=h.cdUnidadeGestora) ' +
      '  where p.cdTipoMovimento in (454,537,544) and p.cdhistoricosistema = 512 ' +
      '  and p.cdHistoricopadrao not in (454,537,544) and YEAR(p.dtMovimento) =   ' + ano.Text +
      '  order by p.nrSequencia';
    dm.QORIGEM.OPEN;

    dm.Localiza2.CLOSE;
    dm.Localiza2.Commandtext := 'SELECT * FROM RECDIS ';
    dm.Localiza2.OPEN;
    dm.Localiza2.IndexFieldNames := 'id_cdunidadegestora;FICHA';


    P.Position := 0;
    P.Max := dm.QORIGEM.RecordCount;
    EM.Caption := inttostr(P.Position) + ' de ' + inttostr(P.Max);
    EM.Update;

    dm.CdsOrigem.CLOSE;
    dm.CdsOrigem.Commandtext :=
      'select a.nrsequenciasistema, a.cdunidadegestora, a.cdtipomovimento, a.idmovconciliado, a.dtdiaconciliacao, a.dtmesconciliacao, a.cdcontacontabil ' + 'from [' +
      bnc_cpe + '].DBO.movimento a ' + 'inner join ' + bnc_cpc + '.dbo.contacontabil b on b.cdcontacontabil = a.cdcontacontabil ' +
      'where a.cdtipomovimento IN (464,465) ' + 'and b.cdnivelcontabil like ''111%'' ';
    dm.CdsOrigem.OPEN;
    dm.CdsOrigem.IndexFieldNames := 'nrsequenciasistema; cdunidadegestora; cdtipomovimento';

    WHILE NOT dm.QORIGEM.eof DO
    BEGIN
      P.Position := dm.QORIGEM.RecNo;
      EM.Caption := inttostr(P.Position) + ' de ' + inttostr(P.Max);
      EM.Update;
      if dm.QORIGEM.FieldByName('ficha').AsInteger > 0 then
      begin
        inc(nlanc_new);
        dm.QDESTINO.APPEND;
        dm.QDESTINO.FieldByName('NLANC').Asinteger := nlanc_new;
        dm.QDESTINO.FieldByName('modulo').AsString := 'DEV_RP';
        dm.QDESTINO.FieldByName('ID_NRSEQUENCIA').AsString := dm.QORIGEM.FieldByName('NRSEQUENCIA').AsString;
        dm.QDESTINO.FieldByName('DTLAN').AsString := dm.QORIGEM.FieldByName('DTMOVIMENTO').AsString;
        dm.QDESTINO.FieldByName('DTREC').AsString := dm.QORIGEM.FieldByName('DTMOVIMENTO').AsString;
        dm.QDESTINO.FieldByName('HISTO').AsString := dm.QORIGEM.FieldByName('DSCOMPLHISTORICO').AsString + ' - Empenho: '+ dm.QORIGEM.FieldByName('nrempenho').AsString+'/'+
          dm.QORIGEM.FieldByName('dtanoemissao').AsString;

        ACHOU := dm.Localiza2.FindKey([dm.QORIGEM.FieldByName('cdunidadegestora').AsString, dm.QORIGEM.FieldByName('FICHA').AsString]);

        IF ACHOU THEN
        BEGIN
          dm.QDESTINO.FieldByName('ficha').AsString := dm.Localiza2.FieldByName('ficha').AsString;
          dm.QDESTINO.FieldByName('VAREC').AsCurrency := dm.QORIGEM.FieldByName('VLMOVIMENTO').AsCurrency;

          if dm.QDESTINO.FieldByName('VAREC').AsCurrency > 0 then
          begin
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '464']) then
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
          end
          else if dm.QDESTINO.FieldByName('VAREC').AsCurrency < 0 then
          begin
            if not dm.CdsOrigem.FindKey([dm.QORIGEM.FieldByName('nrsequencia').AsString, dm.QORIGEM.FieldByName('cdunidadegestora').AsString, '465']) then
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := 'N;00/00'
            else
              dm.QDESTINO.FieldByName('ID_CONCILIA').AsString := dm.CdsOrigem.FieldByName('IDMOVCONCILIADO').AsString + ';' +
                FORMATCURR('00', dm.CdsOrigem.FieldByName('DTDIACONCILIACAO').Asinteger) + '/' + FORMATCURR('00', dm.CdsOrigem.FieldByName('DTMESCONCILIACAO').Asinteger);
          end;
        END;

        dm.QDESTINO.FieldByName('CONTA').AsString := Traz_Conta_Descon( dm.QORIGEM.FieldByName('cdunidadegestora').AsString, dm.QORIGEM.FieldByName('cdcontacontabil').AsString);
        DM.QDESTINO.FieldByName('CONTAD').AsString := Traz_Conta_DesconD(DM.QDESTINO.FieldByName('CONTA').AsString);

        dm.QDESTINO.Post;
      end;
      dm.QORIGEM.Next;

    END;
    dm.QDESTINO.ApplyUpdates(-1);
    STATUS.Caption := 'Devolucao de Adiantamento de restos... OK';
    STATUS.Update;
    memoStatus.Lines.Add('Devolucao de Adiantamento de restos... OK');
    Desconecta_Conecta;

end;

procedure TTfrmprincipal_Conversao.FICHA_DESPESA;
var K: integer; J: integer; tipo, CODLO: string; FICHA_NEW: integer; Ficha_Repete: boolean;
begin
  SITU.caption := 'FICHAS DA DESPESA...';
  SITU.update;
  CriaCampo('DESDIS', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('DESDIS', 'ID_CDDESPESA', '20');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM DESDIS';
  DM.Atualiza.ExecSQL;


  if Ano.Value > 2012 then
  begin
      {$REGION ' SQL MAIOR QUE 2012 '}
        DM.Atualiza.close;
        DM.Atualiza.Commandtext :=
          'Insert Into DESDIS (FICHA,EMPRESA,PODER,ORGAO,UNIDADE,FUNDO,FUNCAO,SUBFUNCAO,PROGRAMA,PROJATIV,ACAO,CATEGORIA,GRUPO,MODALIDADE,ELEMENTO,DESDOBRO,' +
          'TIPO,VINGRUPO,VINCODIGO,INCI,FONINDUSO, FONGRUPO, FONCODIGO, EXTRA, ESFERA, id_cdunidadegestora, id_cddespesa,  DOTAC ) ' +
          'Select FICHA,EMPRESA,PODER,ORGAO,UNIDADE,FUNDO,FUNCAO,SUBFUNCAO,PROGRAMA,PROJATIV,ACAO,CATEGORIA,GRUPO,MODALIDADE,ELEMENTO,DESDOBRO,' +
          'TIPO,VINGRUPO,VINCODIGO,INCI,FONINDUSO, FONGRUPO, FONCODIGO,''N'',ESFERA, id_cdunidadegestora, id_cddespesa, SUM(DOTAC) FROM DESORC ' +
          '       GROUP BY FICHA,EMPRESA,PODER,ORGAO,UNIDADE,FUNDO,FUNCAO,SUBFUNCAO,PROGRAMA,PROJATIV,ACAO,CATEGORIA,GRUPO,MODALIDADE,ELEMENTO,DESDOBRO,' +
          'TIPO,VINGRUPO,VINCODIGO,INCI,FONINDUSO,FONGRUPO,FONCODIGO,ESFERA,id_cdunidadegestora, id_cddespesa ';
        DM.Atualiza.ExecSQL;

        memoStatus.Lines.Add('Desdis OR - ok');
        Desconecta_Conecta;

        // /////// desdis or/es
        DM.QOrigem.close;
        DM.QOrigem.Commandtext :=
              'select do.[cdUnidadeGestora] ,do.[cdDespesa], count(do.cddespesa) ' +
              'FROM ['+BNC_CPE+'].[dbo].DESPESA do ' +
              'inner join ['+BNC_CPE+'].[dbo].DATAVIEW_DESPESA dd on (dd.cdUnidadeGestora=Do.cdUnidadeGestora and dd.cdDespesa= Do.cdDespesa) ' +
              'left JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON (D.IDCODIGOAPLICACAO = Do.CDAPLICACAO  ) ' +
              'where exists (select z.cddespesa from ['+BNC_CPE+'].dbo.movimento z ' +
              '	          where z.cdunidadegestora = do.cdunidadegestora and do.cddespesa=z.cddespesa and z.cdtipomovimento in (402,403)) ' +
              'group by do.[cdUnidadeGestora] ,do.[cdDespesa] ' +
              'having count(do.cddespesa) > 1';
        DM.QOrigem.OPEN;

        if DM.QOrigem.RecordCount > 0 then
          Ficha_Repete := true
        else
          Ficha_Repete := false;

        DM.QOrigem.close;
        DM.QOrigem.Commandtext :=
              'select do.[cdUnidadeGestora], do.[cdDespesa], do.[cdDepartamento], do.[cdOrgao], do.[cdUnidade], do.[cdFuncao], ' +
              '       do.[cdPrograma], do.[cdSubprograma], do.[cdDestino], do.[cdProjetoAtividade], do.[cdSubprojetoSubatividade], ' +
              '       do.[cdCategoriaNivel1], do.[cdCategoriaNivel2], do.[cdCategoriaNivel3], do.[cdCategoriaNivel4], do.[cdCategoriaNivel5], ' +
              '       do.[cdCategoriaNivel6], do.[cdCategoriaNivel7], do.[cdCategoriaNivel8], do.[idTipoVinculo], do.[idTipoDotacao], ' +
              '       do.[idIncorporacaoPatrimonial], do.[idEsfera], do.[cdFonteRecurso], do.[idTipoDotacaoTCE], d.[cdAplicacao], ' +
              '       do.[idPrecatorio], do.[idNaturezaDespesa], do.[idConsorcioPublico], dd.cdNaturezaDespesa, ' +
              '       dd.dsDetalhadaNaturezaDespesa,dd.dsFonteRecurso, coalesce(d.nmAplicacao, ''GERAL'') as nmAplicacao, ' +
              '       case when d.cdaplicacao is null and do.cdfuncao = 8 then ''5000000'' ' +
              '            when d.cdaplicacao is null and do.cdfuncao = 9 then ''6000000'' ' +
              '               when d.cdaplicacao is null and do.cdfuncao = 10 then ''3000000'' ' +
              '            when d.cdaplicacao is null and do.cdfuncao = 12 then ''2000000'' ' +
              '           when d.IDCODIGOAPLICACAO is null then ''1100000'' else d.cdaplicacao end as VINGRUPO, ' +
              '            (select top 1 z.cdtipomovimento from ['+BNC_CPE+'].dbo.movimento z where z.cdunidadegestora = do.cdunidadegestora ' +
              '            and do.cddespesa=z.cddespesa and z.cdtipomovimento in (402,403) order by z.dtmovimento asc ) as cdtipomovimento ' +
              'FROM ['+BNC_CPE+'].[dbo].DESPESA do ' +
              'inner join ['+BNC_CPE+'].[dbo].DATAVIEW_DESPESA dd on (dd.cdUnidadeGestora=Do.cdUnidadeGestora and dd.cdDespesa= Do.cdDespesa) ' +
              'left JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON (D.IDCODIGOAPLICACAO = Do.CDAPLICACAO  ) ' +
              'where exists (select z.cddespesa from ['+BNC_CPE+'].dbo.movimento z where z.cdunidadegestora = do.cdunidadegestora and do.cddespesa=z.cddespesa and z.cdtipomovimento in (402,403)) ' +
              'order by 4,5,6,7,8,9,10,12,13,14,1';
        DM.QOrigem.OPEN;
      {$ENDREGION}
  end
  else
  begin
      {$REGION ' SQL MENOR/IGUAL QUE 2012 '}

        DM.QOrigem.close;
        DM.QOrigem.Commandtext :=
            'select *, ' +
            ' case ' +
            '     when d.cdaplicacao is null and cdfuncao = 8 then ''5000000'' ' +
            '     when d.cdaplicacao is null and cdfuncao = 9 then ''6000000'' ' +
            '     when d.cdaplicacao is null and cdfuncao = 10 then ''3000000'' ' +
            '     when d.cdaplicacao is null and cdfuncao = 12 then ''2000000'' ' +
            '     when d.CDAPLICACAO is null then ''1100000'' ' +
            '     else d.cdaplicacao ' +
            ' end as VINGRUPO ' +
            'FROM ['+BNC_CPE+'].[dbo].DESPESA ' +
            'LEFT JOIN ['+BNC_CPE+'].[dbo].movimento ON DESPESA.CDDESPESA=MOVIMENTO.CDDESPESA and movimento.cdtipomovimento in (401,402,403) ' +
            'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON D.CDAPLICACAO = DESPESA.CDAPLICACAO ' +
            'LEFT JOIN ['+BNC_CPC+'].dbo.CategoriaEconomica C ON (despesa.cdCategoriaNivel1 = c.cdCategoriaNivel1 and ' +
            '                                                       despesa.cdCategoriaNivel2 = c.cdCategoriaNivel2 and ' +
            '                                                       despesa.cdCategoriaNivel3 = c.cdCategoriaNivel3 and ' +
            '                                                       despesa.cdCategoriaNivel4 = c.cdCategoriaNivel4 and ' +
            '                                                       despesa.cdCategoriaNivel5 = c.cdCategoriaNivel5 and ' +
            '                                                       despesa.cdCategoriaNivel6 = c.cdCategoriaNivel6 and ' +
            '                                                       despesa.cdCategoriaNivel7 = c.cdCategoriaNivel7 and ' +
            '                                                       despesa.cdCategoriaNivel8 = c.cdCategoriaNivel8) ' +
            'LEFT JOIN ['+BNC_CPC+'].dbo.FonteRecurso FR on despesa.cdFonteRecurso = FR.cdFonteRecurso';
        DM.QOrigem.OPEN;


      {$ENDREGION}
  end;



  if not DM.QOrigem.IsEmpty then
  begin
    p.Position := 0;
    p.Max := DM.QOrigem.RecordCount;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    DM.QDESTINO.close;
    DM.QDESTINO.Commandtext := 'SELECT max(ficha) ficha FROM desdis';
    DM.QDESTINO.OPEN;
    FICHA_NEW := DM.QDESTINO.FieldByName('ficha').AsInteger;
    DM.QDESTINO.close;
    DM.QDESTINO.Commandtext := 'SELECT * FROM desdis ';
    DM.QDESTINO.OPEN;
    DM.QDESTINO.IndexFieldNames := 'id_cdunidadegestora; id_cddespesa';
    DM.QOrigem.first;
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      p.Position := DM.QOrigem.RecNo;
      EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
      EM.update;

      if Ano.Value > 2012 then
      begin
          {$REGION ' ROTINA MAIOR QUE 2012 ' }
          if not DM.QDESTINO.FindKey([trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString), trim(DM.QOrigem.FieldByName('CDDESPESA').AsString)]) then
          begin
            DM.QDESTINO.append;
            DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
            DM.QDESTINO.FieldByName('id_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
            DM.QDESTINO.FieldByName('id_CDDESPESA').AsString := trim(DM.QOrigem.FieldByName('CDDESPESA').AsString);
            if Ficha_Repete then
            begin
              inc(FICHA_NEW);
              DM.QDESTINO.FieldByName('FICHA').AsInteger := FICHA_NEW;
            end
            else
            begin
              DM.QDESTINO.FieldByName('FICHA').AsInteger := DM.QOrigem.FieldByName('CDDESPESA').AsInteger;
            end;
            DM.QDESTINO.FieldByName('extra').AsString := 'N';
            if DM.QOrigem.FieldByName('idEsfera').AsInteger > 0 then
              DM.QDESTINO.FieldByName('esfera').AsInteger := DM.QOrigem.FieldByName('idEsfera').AsInteger * 10
            else
              DM.QDESTINO.FieldByName('esfera').AsInteger := 10;
            if USADEPARTAMENTO then
            begin
              DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
              DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
              DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDDEPARTAMENTO').AsInteger);
            end
            else
            begin
              DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsInteger);
              DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
              DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
            end;
            Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, '');
            Existe_TabOrgao(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, '');
            Existe_TabUnidade(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('orgao').AsString, DM.QDESTINO.FieldByName('unidade').AsString, '???');
            DM.QDESTINO.FieldByName('FUNCAO').AsString := Existe_TabFuncao(DM.QOrigem.FieldByName('CDFUNCAO').AsString, '');
            DM.QDESTINO.FieldByName('SUBFUNCAO').AsString := Existe_TabSubFuncao(DM.QOrigem.FieldByName('CDPROGRAMA').AsString, '');
            DM.QDESTINO.FieldByName('PROGRAMA').AsString := Existe_TabPrograma(DM.QOrigem.FieldByName('CDSUBPROGRAMA').AsString, '');
            DM.QDESTINO.FieldByName('PROJATIV').AsString := Existe_TabProjAtiv(DM.QOrigem.FieldByName('CDdestino').AsString + FORMATCURR('000',
              DM.QOrigem.FieldByName('CDPROJETOATIVIDADE').AsInteger), '');
            DM.QDESTINO.FieldByName('ACAO').AsString := '0000';
            DM.QDESTINO.FieldByName('CATEGORIA').AsString := Existe_TabCategoria(DM.QOrigem.FieldByName('cdcategorianivel1').AsString, '');
            DM.QDESTINO.FieldByName('GRUPO').AsString := Existe_TabGrupo(DM.QOrigem.FieldByName('cdcategorianivel2').AsString, '');
            DM.QDESTINO.FieldByName('MODALIDADE').AsString := Existe_TabModalidade(DM.QOrigem.FieldByName('cdcategorianivel3').AsString, '');
            DM.QDESTINO.FieldByName('ELEMENTO').AsString := Existe_TabElemento(DM.QOrigem.FieldByName('cdcategorianivel4').AsString, '');
            DM.QDESTINO.FieldByName('DESDOBRO').AsString := '00'; // copy(DM.QOrigem.FieldByName('cod_despesa').AsString, 7, 2);
            Existe_TabCatec(DM.QDESTINO.FieldByName('CATEGORIA').AsString + DM.QDESTINO.FieldByName('grupo').AsString + DM.QDESTINO.FieldByName('modalidade').AsString +
              DM.QDESTINO.FieldByName('elemento').AsString + DM.QDESTINO.FieldByName('desdobro').AsString, '???');
            IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '08' THEN
            begin
              tipo := 'NV';
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '500'
            end
            else IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '09' THEN
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '600';
              DM.QDESTINO.FieldByName('esfera').AsString := '20';
              tipo := 'PR'
            end
            ELSE IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '10' THEN
            begin
              tipo := 'SD';
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '300';
            end
            ELSE IF ((DM.QDESTINO.FieldByName('FUNCAO').AsString = '12') AND ((DM.QDESTINO.FieldByName('subFUNCAO').AsString = '361') OR
              (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '366') OR (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '367'))) THEN
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
              tipo := 'EF';
            end
            ELSE IF ((DM.QDESTINO.FieldByName('FUNCAO').AsString = '12') AND (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '365')) THEN
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
              tipo := 'EI';
            end
            ELSE
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
              tipo := 'NV';
            end;
            DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
            if trim(DM.QOrigem.FieldByName('VINGRUPO').AsString) <> '' then
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(PEGANUMERO(DM.QOrigem.FieldByName('VINGRUPO').AsString), 1, 3);
              DM.QDESTINO.FieldByName('VINCODIGO').AsString := FORMATCURR('000', strtoint(copy(PEGANUMERO(DM.QOrigem.FieldByName('VINGRUPO').AsString), 5, 3)));
            end;
            DM.QDESTINO.FieldByName('TIPO').AsString := tipo;
            DM.QDESTINO.FieldByName('vinTIPO').AsString := DM.QDESTINO.FieldByName('VINGRUPO').AsString;
            DM.QDESTINO.FieldByName('FONINDUSO').AsString := '0';
            DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(trim(DM.QOrigem.FieldByName('CDFONTERECURSO').AsString), '???');
            // FORMATCURR('00',DM.QORIGEM.FieldByName('CDFONTERECURSO').Asinteger);
            DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???');
            Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, DM.QOrigem.FieldByName('nmaplicacao').AsString);
            DM.QDESTINO.FieldByName('DOTAC').ascurrency := 0.00;
            IF DM.QOrigem.FieldByName('cdtipomovimento').AsString = '403' THEN
              DM.QDESTINO.FieldByName('CREDITO').AsString := 'ES' // CREDITO ESPECIAL 403
            ELSE
              DM.QDESTINO.FieldByName('CREDITO').AsString := 'OR'; // CREDITO SUPLEMENTAR 402
            DM.QDESTINO.post;
            DM.QDESTINO.ApplyUpdates(-1);
          end;
          {$ENDREGION}
      end
      else
      begin
          {$REGION ' ROTINA MENOR QUE 2012 ' }
          if not DM.QDESTINO.FindKey([trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString), trim(DM.QOrigem.FieldByName('CDDESPESA').AsString)]) then
          begin
            DM.QDESTINO.append;
            DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
            DM.QDESTINO.FieldByName('id_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
            DM.QDESTINO.FieldByName('id_CDDESPESA').AsString := trim(DM.QOrigem.FieldByName('CDDESPESA').AsString);

            DM.QDESTINO.FieldByName('FICHA').AsInteger := DM.QOrigem.FieldByName('CDDESPESA').AsInteger;

            DM.QDESTINO.FieldByName('extra').AsString := 'N';

            if DM.QOrigem.FieldByName('idEsfera').AsInteger > 0 then
              DM.QDESTINO.FieldByName('esfera').AsInteger := DM.QOrigem.FieldByName('idEsfera').AsInteger * 10
            else
              DM.QDESTINO.FieldByName('esfera').AsInteger := 10;

            if USADEPARTAMENTO then
            begin
              DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
              DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
              DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDDEPARTAMENTO').AsInteger);
            end
            else
            begin
              DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsInteger);
              DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
              DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
            end;
            Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, '');
            Existe_TabOrgao(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, '');
            Existe_TabUnidade(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('orgao').AsString, DM.QDESTINO.FieldByName('unidade').AsString, '???');

            DM.QDESTINO.FieldByName('FUNCAO').AsString := Existe_TabFuncao(DM.QOrigem.FieldByName('CDFUNCAO').AsString, '');
            DM.QDESTINO.FieldByName('SUBFUNCAO').AsString := Existe_TabSubFuncao(DM.QOrigem.FieldByName('CDPROGRAMA').AsString, '');
            DM.QDESTINO.FieldByName('PROGRAMA').AsString := Existe_TabPrograma(DM.QOrigem.FieldByName('CDSUBPROGRAMA').AsString, '');
            DM.QDESTINO.FieldByName('PROJATIV').AsString := Existe_TabProjAtiv(DM.QOrigem.FieldByName('CDdestino').AsString + FORMATCURR('000', DM.QOrigem.FieldByName('CDPROJETOATIVIDADE').AsInteger), '');
            DM.QDESTINO.FieldByName('ACAO').AsString := '0000';
            DM.QDESTINO.FieldByName('CATEGORIA').AsString := Existe_TabCategoria(DM.QOrigem.FieldByName('cdcategorianivel1').AsString, '');
            DM.QDESTINO.FieldByName('GRUPO').AsString := Existe_TabGrupo(DM.QOrigem.FieldByName('cdcategorianivel2').AsString, '');
            DM.QDESTINO.FieldByName('MODALIDADE').AsString := Existe_TabModalidade(DM.QOrigem.FieldByName('cdcategorianivel3').AsString, '');
            DM.QDESTINO.FieldByName('ELEMENTO').AsString := Existe_TabElemento(DM.QOrigem.FieldByName('cdcategorianivel4').AsString, '');
            DM.QDESTINO.FieldByName('DESDOBRO').AsString := '00'; // copy(DM.QOrigem.FieldByName('cod_despesa').AsString, 7, 2);
            Existe_TabCatec(DM.QDESTINO.FieldByName('CATEGORIA').AsString + DM.QDESTINO.FieldByName('grupo').AsString + DM.QDESTINO.FieldByName('modalidade').AsString +
              DM.QDESTINO.FieldByName('elemento').AsString + DM.QDESTINO.FieldByName('desdobro').AsString, trim(DM.QOrigem.FieldByName('dsCatDetalhada').AsString));

            IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '08' THEN
            begin
              tipo := 'NV';
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '500'
            end
            else IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '09' THEN
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '600';
              DM.QDESTINO.FieldByName('esfera').AsString := '20';
              tipo := 'PR'
            end
            ELSE IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '10' THEN
            begin
              tipo := 'SD';
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '300';
            end
            ELSE IF ((DM.QDESTINO.FieldByName('FUNCAO').AsString = '12') AND ((DM.QDESTINO.FieldByName('subFUNCAO').AsString = '361') OR
              (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '366') OR (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '367'))) THEN
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
              tipo := 'EF';
            end
            ELSE IF ((DM.QDESTINO.FieldByName('FUNCAO').AsString = '12') AND (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '365')) THEN
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
              tipo := 'EI';
            end
            ELSE
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
              tipo := 'NV';
            end;
            DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
            if trim(DM.QOrigem.FieldByName('VINGRUPO').AsString) <> '' then
            begin
              DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(PEGANUMERO(DM.QOrigem.FieldByName('VINGRUPO').AsString), 1, 3);
              DM.QDESTINO.FieldByName('VINCODIGO').AsString := FORMATCURR('000', strtoint(copy(PEGANUMERO(DM.QOrigem.FieldByName('VINGRUPO').AsString), 5, 3)));
            end;
            DM.QDESTINO.FieldByName('TIPO').AsString := tipo;
            DM.QDESTINO.FieldByName('vinTIPO').AsString := DM.QDESTINO.FieldByName('VINGRUPO').AsString;
            DM.QDESTINO.FieldByName('FONINDUSO').AsString := '0';
            DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(trim(DM.QOrigem.FieldByName('CDFONTERECURSO').AsString), trim(DM.QOrigem.FieldByName('dsCatDetalhada').AsString));
            // FORMATCURR('00',DM.QORIGEM.FieldByName('CDFONTERECURSO').Asinteger);
            DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???');
            Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '????');

            DM.QDESTINO.FieldByName('DOTAC').ascurrency := 0.00;

            IF DM.QOrigem.FieldByName('cdtipomovimento').AsString = '403' THEN
              DM.QDESTINO.FieldByName('CREDITO').AsString := 'ES' // CREDITO ESPECIAL 403
            ELSE if DM.QOrigem.FieldByName('cdtipomovimento').AsString = '402' then
              DM.QDESTINO.FieldByName('CREDITO').AsString := 'OR' // CREDITO SUPLEMENTAR 402
            else
              DM.QDESTINO.FieldByName('DOTAC').ascurrency := DM.QOrigem.FieldByName('vlmovimento').AsCurrency;

            DM.QDESTINO.post;
            DM.QDESTINO.ApplyUpdates(-1);
          end
          else
          begin
               if DM.QOrigem.FieldByName('cdtipomovimento').AsString = '401' then
               begin
                     DM.Atualiza.close;
                     DM.Atualiza.CommandText := 'update desdis set dotac = dotac + '+StringReplace(CurrToStr(DM.QOrigem.FieldByName('vlmovimento').AsCurrency),',','+',[rfReplaceAll])+' '+
                                                'where ficha = '+DM.QDestino.FieldByName('ficha').AsString;
                     DM.Atualiza.ExecSQL;
               end;
          end;
          {$ENDREGION}
      end;

      DM.QOrigem.next;
    END;
    STATUS.caption := 'DESDIS - OK';
    memoStatus.Lines.Add('DESDIS ES - ok');
    Desconecta_Conecta;
  end;
end;

PROCEDURE TTfrmprincipal_Conversao.FICHA_RECEITA;
VAR K, J: integer; FICHA_NEW: integer; tipo: STRING; REC: STRING; Vingrupo: STRING; CODRE: string;
BEGIN
  SITU.caption := 'FICHAS DA RECEITA...';
  SITU.update;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM RECDIS';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM RECORC';
  DM.QDESTINO.OPEN;
  DM.QDESTINO.first;
  p.Max := DM.QDESTINO.RecordCount;
  DM.QAUX.close;
  DM.QAUX.Commandtext := 'SELECT * FROM RECDIS';
  DM.QAUX.OPEN;
  DM.QAUX.first;

  WHILE NOT DM.QDESTINO.eof DO
  BEGIN
    DM.QAUX.append;
    p.Position := DM.QDESTINO.RecNo;
    FOR K := 0 TO DM.QAUX.FieldDefs.count - 1 DO
    BEGIN
      FOR J := 0 TO DM.QDESTINO.FieldDefs.count - 1 DO
      BEGIN
        IF UpperCase(DM.QAUX.FieldDefs.Items[K].Name) = UpperCase(DM.QDESTINO.FieldDefs.Items[J].Name) THEN
          IF NOT(DM.QDESTINO.FieldByName(DM.QDESTINO.FieldDefs.Items[J].Name).Isnull) AND (DM.QDESTINO.FieldByName(DM.QDESTINO.FieldDefs.Items[J].Name).AsString <> '') THEN
          BEGIN
            DM.QAUX.FieldByName(DM.QDESTINO.FieldDefs.Items[J].Name).Value := DM.QDESTINO.FieldByName(DM.QAUX.FieldDefs.Items[K].Name).Value;
          END;
      END;
    END;
    DM.QAUX.FieldByName('EXTRA').AsString := 'N';
    DM.QAUX.post;
    DM.QDESTINO.next;
  END;
  DM.QAUX.ApplyUpdates(-1);
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := ' update recdis r set r.contr_variacao = (select o.contr_variacao from recorc o where o.ficha = r.ficha ) where r.contr_variacao is null ';
  DM.Atualiza.ExecSQL;
  memoStatus.Lines.Add('Recdis OR - OK');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := ' delete from recorc where totor = ''0.00'' ';
  DM.Atualiza.ExecSQL;

  // /// ///////// fichas EX/OR
//  DM.QOrigem.close;
//  DM.QOrigem.Commandtext := 'SELECT DISTINCT A.pcrec_numficha AS FICHA, A.pcrec_recorgao AS EMPRESA, A.pcrec_reccodfonterecurso AS FONGRUPO, ' +
//    'A.pcrec_reccateconomica||A.pcrec_recsubcategoria||A.pcrec_recfonte||A.pcrec_recrubr||''.''|| ' +
//    'CASE WHEN A.pcrec_recalinea < 10 THEN ''0''||A.pcrec_recalinea ELSE A.pcrec_recalinea END ||''.''||  ' +
//    ' CASE WHEN A.pcrec_recSUBalinea < 10 THEN ''0''||A.pcrec_recSUBalinea ELSE A.pcrec_recSUBalinea END||''.''|| ' +
//    ' CASE WHEN A.pcrec_reccoddesdobramento < 10 THEN ''0''||A.pcrec_reccoddesdobramento ELSE A.pcrec_reccoddesdobramento END AS CODRE, ' +
//    'COALESCE(B.subalinea_descricao, A.pcrec_recdesdobramento) AS NOMRE, a.pcrec_codapfixo as vingrupo, a.pcrec_codapvar as vincodigo ' + 'FROM planocontasreceita_cont A ' +
//    'LEFT JOIN SUBALINEAS_O B ON B.subalinea_cod_cat = A.pcrec_reccateconomica AND B.subalinea_cod_subcat = A.pcrec_recsubcategoria AND  ' +
//    '                   B.subalinea_cod_fonte = A.pcrec_recfonte AND  B.subalinea_cod_rubrica = A.pcrec_recrubr AND  ' +
//    '                   B.subalinea_cod_alinea = A.pcrec_recalinea AND B.subalinea_cod = A.pcrec_recSUBalinea  ' +
//    'WHERE A.pcrec_reccod IS NULL AND A.pcrec_codtiporeceita = 1 AND A.pcrec_recexercicio = ''' + ano.text + ''' ';
//  DM.QOrigem.OPEN;
//  p.Position := 0;
//  p.Max := DM.QOrigem.RecordCount;
//  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
//  EM.update;
//  if not DM.QOrigem.IsEmpty then
//  begin
//    DM.QDESTINO.close;
//    DM.QDESTINO.Commandtext := 'SELECT max(ficha) as  ficha FROM RECdis';
//    DM.QDESTINO.OPEN;
//    FICHA_NEW := DM.QDESTINO.FieldByName('ficha').AsInteger;
//    DM.QDESTINO.close;
//    DM.QDESTINO.Commandtext := 'SELECT * FROM RECdis where ficha = -1';
//    DM.QDESTINO.OPEN;
//    DM.QOrigem.first;
//    WHILE NOT DM.QOrigem.eof DO
//    BEGIN
//      p.Position := DM.QOrigem.RecNo;
//      EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
//      EM.update;
//      DM.QDESTINO.append;
//      // inc(ficha_new);
//      DM.QDESTINO.FieldByName('FICHA').AsInteger := DM.QOrigem.FieldByName('FICHA').AsInteger;
//      // Dm.QDestino.FieldByName('ID_cod_ficha').AsString := trim(dm.QOrigem.FieldByName('cod_ficha').AsString);
//      // Dm.QDestino.FieldByName('ID_red_gestora').AsString := trim(dm.QOrigem.FieldByName('red_gestora').AsString);
//      DM.QDESTINO.FieldByName('EMPRESA').AsString := trim(DM.QOrigem.FieldByName('EMPRESA').AsString);
//      // /// /      Dm.QDestino.FieldByName('id_CodAdministracao').AsString := trim(DM.QORIGEM.FieldByName('CodAdministracao').AsString);
//      // /// /      Dm.QDestino.FieldByName('ID_CodReceita').AsString := trim(dm.QOrigem.FieldByName('CodReceita').AsString);
//      DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(DM.QOrigem.FieldByName('fongrupo').AsString, '???');
//      DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???'); // dm.QOrigem.FieldByName('foncodigo').AsString);
//
//      CODRE := Formata_CODRE(PEGANUMERO(DM.QOrigem.FieldByName('codre').AsString));
//      DM.QDESTINO.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, DM.QOrigem.FieldByName('nomre').AsString);
//      if ((copy(CODRE, 1, 4) = '1112') or (copy(CODRE, 1, 4) = '1113') or (copy(CODRE, 1, 10) = '1721.01.02') or (copy(CODRE, 1, 10) = '1721.01.05') or
//        (copy(CODRE, 1, 10) = '1722.01.01') or (copy(CODRE, 1, 10) = '1722.01.02') or (copy(CODRE, 1, 10) = '1722.01.04') or (copy(CODRE, 1, 7) = '1911.38') or
//        (copy(CODRE, 1, 7) = '1911.39') or (copy(CODRE, 1, 7) = '1911.40') or (copy(CODRE, 1, 7) = '1913.11') or (copy(CODRE, 1, 7) = '1913.12') or
//        (copy(CODRE, 1, 7) = '1913.13') or (copy(CODRE, 1, 7) = '1931.11') or (copy(CODRE, 1, 7) = '1931.12') or (copy(CODRE, 1, 7) = '1931.13') or
//        (copy(CODRE, 1, 7) = '1721.36')) then
//      begin
//        DM.QDESTINO.FieldByName('tipo').AsString := 'ED';
//        DM.QDESTINO.FieldByName('PERCE').AsString := '25';
//        DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
//      end
//      else if ((copy(CODRE, 1, 7) = '1721.35') or (copy(CODRE, 1, 7) = '1761.02') or (copy(CODRE, 1, 7) = '1762.02') or (copy(CODRE, 1, 7) = '1763.02') or
//        (copy(CODRE, 1, 7) = '2421.02') or (copy(CODRE, 1, 7) = '2422.02') or (copy(CODRE, 1, 7) = '2423.02') or (copy(CODRE, 1, 7) = '2471.02') or
//        (copy(CODRE, 1, 7) = '2472.02') or (copy(CODRE, 1, 7) = '2473.02') or (copy(CODRE, 1, 10) = '1325.01.05')) then
//      begin
//        DM.QDESTINO.FieldByName('tipo').AsString := 'ED';
//        DM.QDESTINO.FieldByName('PERCE').AsString := '100';
//        DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
//      end
//      else if ((copy(CODRE, 1, 7) = '1724.01') OR (copy(CODRE, 1, 7) = '1724.02') or (copy(CODRE, 1, 10) = '1325.01.01') or (copy(CODRE, 1, 10) = '1325.01.02')) then
//      begin
//        DM.QDESTINO.FieldByName('tipo').AsString := 'FU';
//        DM.QDESTINO.FieldByName('PERCE').AsString := '100';
//        DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
//      end
//      else if ((copy(CODRE, 1, 7) = '1600.05') or (copy(CODRE, 1, 7) = '1600.14') or (copy(CODRE, 1, 7) = '1721.33') or (copy(CODRE, 1, 7) = '1722.33') or
//        (copy(CODRE, 1, 7) = '1723.01') or (copy(CODRE, 1, 7) = '1761.01') or (copy(CODRE, 1, 7) = '1762.00') or (copy(CODRE, 1, 7) = '1762.01') or
//        (copy(CODRE, 1, 7) = '1763.01') or (copy(CODRE, 1, 7) = '2421.01') or (copy(CODRE, 1, 7) = '2422.01') or (copy(CODRE, 1, 7) = '2423.01') or
//        (copy(CODRE, 1, 7) = '2471.01') or (copy(CODRE, 1, 7) = '2472.01') or (copy(CODRE, 1, 7) = '2473.01') or (copy(CODRE, 1, 10) = '1325.01.03')) then
//      begin
//        DM.QDESTINO.FieldByName('tipo').AsString := 'SD';
//        DM.QDESTINO.FieldByName('PERCE').AsString := '100';
//        DM.QDESTINO.FieldByName('VINGRUPO').AsString := '300';
//      end
//      else if ((copy(CODRE, 1, 4) = '1210') or (copy(CODRE, 1, 4) = '1328') or (copy(CODRE, 1, 4) = '7210')) then
//      begin
//        DM.QDESTINO.FieldByName('tipo').AsString := 'PR';
//        DM.QDESTINO.FieldByName('PERCE').AsString := '0';
//        DM.QDESTINO.FieldByName('VINGRUPO').AsString := '600'
//      end
//      else
//      begin
//        DM.QDESTINO.FieldByName('tipo').AsString := 'NV';
//        DM.QDESTINO.FieldByName('PERCE').AsString := '0';
//        DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
//      end;
//
//      DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
//      // if dm.QOrigem.FieldByName('cod_aplicacao').AsString<>'0000000' then
//      // begin
//      DM.QDESTINO.FieldByName('VINGRUPO').AsString := PEGANUMERO(DM.QOrigem.FieldByName('vingrupo').AsString);
//      DM.QDESTINO.FieldByName('VINCODIGO').AsString := FORMATCURR('000', strtoint(PEGANUMERO(DM.QOrigem.FieldByName('VINCODIGO').AsString)));
//      // end;
//      Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');
//
//      DM.QDESTINO.FieldByName('EXTRA').AsString := 'N';
//      DM.QDESTINO.FieldByName('TOTOR').ascurrency := 0.00; // DM.QOrigem.FieldByName('vlr_aplicado').AsCurrency;
//      DM.QOrigem.next;
//      DM.QDESTINO.post;
//      DM.QDESTINO.ApplyUpdates(-1);
//    END;
//  end;
//
//  STATUS.caption := 'RECDIS - ExtraOrdinaria ok';
//  memoStatus.Lines.Add('RECDIS - ExtraOrdinaria ok');
//  Desconecta_Conecta;

END;

PROCEDURE TTfrmprincipal_Conversao.FONTERECURSO;
var FonCodigo: string;
BEGIN
  SITU.caption := 'FONTE DE RECURSOS (FONGRUPO)...';
  SITU.update;
  // criacampo('FONGRUPO','ID_fr_cod','20');
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'SELECT * FROM  [' + BNC_CPC + '].[dbo].fonterecurso  ';
  DM.QOrigem.OPEN;
  IF NOT DM.QOrigem.IsEmpty THEN
  BEGIN
    DM.QDESTINO.close;
    DM.QDESTINO.Commandtext := 'SELECT * FROM FONGRUPO';
    DM.QDESTINO.OPEN;
    DM.QOrigem.first;
    WHILE NOT DM.QOrigem.eof DO
    BEGIN
      p.Position := DM.QOrigem.RecNo;

      IF NOT DM.QDESTINO.Locate('FONGRUPO', FORMATCURR('00', DM.QOrigem.FieldByName('CDFONTERECURSO').AsInteger), []) THEN
        DM.QDESTINO.append
      ELSE
        DM.QDESTINO.edit;
      DM.QDESTINO.FieldByName('FONGRUPO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDFONTERECURSO').AsInteger);
      DM.QDESTINO.FieldByName('FONTIPO').AsInteger := DM.QOrigem.FieldByName('CDFONTERECURSO').AsInteger;
      DM.QDESTINO.FieldByName('FONGRUPODESC').AsString := Tira_Char39(250, DM.QOrigem.FieldByName('DSFONTERECURSO').AsString);
      // DM.QDESTINO.FieldByName('ID_fr_cod').AsString := DM.QORIGEM.FieldByName('fr_cod').AsString;
      DM.QOrigem.next;
      DM.QDESTINO.post;
    END;
    DM.QDESTINO.ApplyUpdates(-1);
  END;
  STATUS.caption := 'FONTE GRUPO - OK';
  memoStatus.Lines.Add('FONTE GRUPO - OK');
  Desconecta_Conecta;

  // *********** FONCODIGO*********
  // sITU.Caption := 'FONTE DE RECURSOS (FONCODIGO)...';
  // SITU.Update;
  // CriaCampo('FONCODIGO','ID_vi_cod','20');
  //
  // dm.QORIGEM.CLOSE;
  // dm.QORIGEM.Commandtext := ' select vi_cod, vi_descr from vinculos ';
  // dm.QORIGEM.OPEN;
  // p.Max := dm.QOrigem.RecordCount;
  // IF NOT dm.QORIGEM.IsEmpty THEN
  // BEGIN
  // dm.QDESTINO.CLOSE;
  // dm.QDESTINO.Commandtext := 'SELECT * FROM FONCODIGO';
  // dm.QDESTINO.OPEN;
  // dm.QORIGEM.FIRST;
  // WHILE NOT dm.QORIGEM.eof DO
  // BEGIN
  // P.Position := dm.QOrigem.RecNo;
  // if dm.QORIGEM.FieldByName('vi_cod').Asinteger < 10 then
  // foncodigo := FormatCurr('00',dm.QORIGEM.FieldByName('vi_cod').Asinteger )
  // else
  // foncodigo := dm.QORIGEM.FieldByName('vi_cod').AsString;
  // IF NOT dm.QDESTINO.Locate('FONCODIGO', foncodigo, []) THEN
  // dm.QDESTINO.APPEND
  // ELSE
  // dm.QDESTINO.Edit;
  // dm.QDESTINO.FieldByName('FONCODIGO').AsString := foncodigo;
  // dm.QDESTINO.FieldByName('ID_vi_cod').AsString := dm.QORIGEM.FieldByName('vi_cod').AsString;
  // dm.QDESTINO.FieldByName('TIPO').AsString := 'P';
  // dm.QDESTINO.FieldByName('FONCODIGODESC').AsString := Tira_Char39(250, dm.QORIGEM.FieldByName('vi_descr').AsString);
  // dm.QORIGEM.Next;
  // dm.QDESTINO.Post;
  // END;
  // dm.QDESTINO.ApplyUpdates(-1);
  // END;
  // STATUS.Caption := 'FONTE CODIGO - OK';
  // memostatus.Lines.Add('FONTE CODIGO - OK');
  // Desconecta_Conecta;
END;

FUNCTION TTfrmprincipal_Conversao.FormataCNPJ_CPF(Numero: STRING): STRING;
VAR Tamanho: integer; formatado: STRING;
BEGIN
  Numero := PEGANUMERO(Numero);
  Tamanho := Length(Numero);
  IF Tamanho = 11 THEN
    formatado := copy(Numero, 1, 3) + '.' + copy(Numero, 4, 3) + '.' + copy(Numero, 7, 3) + '-' + copy(Numero, 10, 2)
  ELSE IF Tamanho = 14 THEN
    formatado := copy(Numero, 1, 2) + '.' + copy(Numero, 3, 3) + '.' + copy(Numero, 6, 3) + '/' + copy(Numero, 9, 4) + '-' + copy(Numero, 13, 2)
  ELSE
    formatado := Numero;
  Result := formatado;
END;

FUNCTION TTfrmprincipal_Conversao.Formata_CEP(cep: STRING): STRING;
VAR formatado: STRING; Tamanho: integer;
BEGIN
  formatado := PEGANUMERO(cep);
  Tamanho := Length(formatado);
  IF Tamanho = 8 THEN
    formatado := copy(formatado, 1, 5) + '-' + copy(formatado, 6, 3);
  Result := formatado;
END;

function TTfrmprincipal_Conversao.Formata_CODRE(CODRE: string): STRING;
var nivel_receita: integer; nv4, nv5, nv6, nv7, nv8, nv9, nv10, nv11, nv12: string;
begin
  nivel_receita := strtoint(DM.TrazNivelReceita);
  CODRE := PEGANUMERO(trim(CODRE)) + '00000000000000';

  nv4 := copy(CODRE, 1, 4);
  nv5 := copy(CODRE, 5, 2);
  nv6 := copy(CODRE, 7, 2);
  nv7 := copy(CODRE, 9, 2);
  nv8 := copy(CODRE, 11, 2);
  nv9 := copy(CODRE, 13, 2);
  nv10 := copy(CODRE, 15, 2);
  nv11 := copy(CODRE, 17, 2);
  nv12 := copy(CODRE, 19, 2);

  if nivel_receita = 12 then
    CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv7 + '.' + nv8 + '.' + nv9 + '.' + nv10 + '.' + nv11 + '.' + nv12
  else if nivel_receita = 11 then
    CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv7 + '.' + nv8 + '.' + nv9 + '.' + nv10 + '.' + nv11
  else if nivel_receita = 10 then
    CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv7 + '.' + nv8 + '.' + nv9 + '.' + nv10
  else if nivel_receita = 9 then
    CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv7 + '.' + nv8 + '.' + nv9
  else if nivel_receita = 8 then
    CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv7 + '.' + nv8
  else // if nivel_receita = 7 then
    if ((nv6<>'00') and (nv8 <> '00')) then
      CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv8
    else if ((nv6='00') and (nv7 <> '00') and (nv8 <> '00')) then
      CODRE := nv4 + '.' + nv5 + '.' + nv7 + '.' + nv8
    else if nv8 <>'00' then
      CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv8
    else
      CODRE := nv4 + '.' + nv5 + '.' + nv6 + '.' + nv7;

  Result := CODRE;
end;

PROCEDURE TTfrmprincipal_Conversao.FormClose(Sender: TObject; VAR Action: TCloseAction);
VAR Ini: TIniFile; I: integer;
BEGIN
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
  Ini.WriteString('CONEXAO', 'Exercicio', inttostr(ano.Value));
  Ini.WriteString('CONEXAO', 'Caminho_Origem', ConnectionString);
  Ini.WriteString('CONEXAO', 'Caminho_Origem', CB_ORIGEM.text);
  Ini.WriteString('CONEXAO', 'PPA', EDT_PPA.text);
  Ini.WriteString('CONEXAO', 'CPC', edt_cpc.text);
  Ini.WriteString('CONEXAO', 'CPE', edt_cpe.text);
  // Ini.WriteString('CONEXAO', 'Servidor_Origem', edtservidororigem.text);
  // Ini.WriteString('CONEXAO', 'Caminho_Origem', edtorigem.text);
  Ini.WriteString('CONEXAO', 'Servidor_Destino', edtservidordestino.text);
  Ini.WriteString('CONEXAO', 'Caminho_Destino', edtdestino.text);
  Ini.WriteString('CONEXAO', 'Entidade_Padrao', Ent_padrao.text);
  if rdprefeitura.ItemIndex = 0 then
    Ini.WriteString('CONEXAO', 'Prefeitura', 'S')
  else if rdprefeitura.ItemIndex = 1 then
    Ini.WriteString('CONEXAO', 'Prefeitura', 'N')
  else
    Ini.WriteString('CONEXAO', 'Prefeitura', '');
  if rdEntPadrao.ItemIndex = 0 then
    Ini.WriteString('CONEXAO', 'ApenasEntPadrao', 'S')
  else if rdEntPadrao.ItemIndex = 1 then
    Ini.WriteString('CONEXAO', 'ApenasEntPadrao', 'N')
  else
    Ini.WriteString('CONEXAO', 'ApenasEntPadrao', '');
  if rdfundo.ItemIndex = 0  then
    Ini.WriteString('CONEXAO', 'Possui_Fundo', 'S')
  else
    Ini.WriteString('CONEXAO', 'Possui_Fundo', 'N');

  Ini.Free;
  memoStatus.Lines.SaveToFile(ExtractFilePath(ParamStr(0)) + 'Log.ini');

END;

PROCEDURE TTfrmprincipal_Conversao.FormShow(Sender: TObject);
VAR Ini: TIniFile; CurrentAliases: TStringList;
BEGIN

  // CurrentAliases := TStringList.Create;
  // TRY
  // Session.GetAliasNames(CurrentAliases);
  // CB_ORIGEM.Items := CurrentAliases;
  // FINALLY
  // CurrentAliases.Free;
  // END;

  parar := false;
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
  IF Ini.ReadString('CONEXAO', 'Exercicio', '') <> '' THEN
    ano.Value := strtoint(Ini.ReadString('CONEXAO', 'Exercicio', ''));
  // IF Ini.ReadString('CONEXAO', 'Servidor_Origem', '') <> '' THEN
  // edtservidororigem.text := Ini.ReadString('CONEXAO', 'Servidor_Origem', '');
  // IF Ini.ReadString('CONEXAO', 'Caminho_Origem', '') <> '' THEN
  // edtorigem.text := Ini.ReadString('CONEXAO', 'Caminho_Origem', '');
  IF Ini.ReadString('CONEXAO', 'Caminho_Origem', '') <> '' THEN
  begin
    ConnectionString := Ini.ReadString('CONEXAO', 'Caminho_Origem', ''); // odbc
    CB_ORIGEM.text := Ini.ReadString('CONEXAO', 'Caminho_Origem', '');
  end;
  IF Ini.ReadString('CONEXAO', 'PPA', '') <> '' THEN
    EDT_PPA.text := Ini.ReadString('CONEXAO', 'PPA', '');
  IF Ini.ReadString('CONEXAO', 'CPC', '') <> '' THEN
    edt_cpc.text := Ini.ReadString('CONEXAO', 'CPC', '');
  IF Ini.ReadString('CONEXAO', 'CPE', '') <> '' THEN
    edt_cpe.text := Ini.ReadString('CONEXAO', 'CPE', '');
  IF Ini.ReadString('CONEXAO', 'Servidor_Destino', '') <> '' THEN
    edtservidordestino.text := Ini.ReadString('CONEXAO', 'Servidor_Destino', '');
  IF Ini.ReadString('CONEXAO', 'Caminho_Destino', '') <> '' THEN
    edtdestino.text := Ini.ReadString('CONEXAO', 'Caminho_Destino', '');
  IF Ini.ReadString('CONEXAO', 'Entidade_Padrao', '') <> '' THEN
    Ent_padrao.text := Ini.ReadString('CONEXAO', 'Entidade_Padrao', '');
  IF Ini.ReadString('CONEXAO', 'Prefeitura', '') = 'S' THEN
    rdprefeitura.ItemIndex := 0
  else IF Ini.ReadString('CONEXAO', 'Prefeitura', '') = 'N' THEN
    rdprefeitura.ItemIndex := 1
  else
    rdprefeitura.ItemIndex := -1;
  IF Ini.ReadString('CONEXAO', 'ApenasEntPadrao', '') = 'S' THEN
    rdEntPadrao.ItemIndex := 0
  else IF Ini.ReadString('CONEXAO', 'ApenasEntPadrao', '') = 'N' THEN
    rdEntPadrao.ItemIndex := 1
  else
    rdEntPadrao.ItemIndex := -1;
  IF Ini.ReadString('CONEXAO', 'Possui_Fundo', '') = 'S' THEN
    rdfundo.ItemIndex := 0
  else
  begin
    rdfundo.ItemIndex := 1;
  end;
  TRY
    memoStatus.Lines.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Log.ini');
    memoStatus.Lines.Add(' ');
  EXCEPT
    memoStatus.Lines.Add(' Arquivo Log.ini não localizado! ');
  END;
  SendMessage(memoStatus.Handle, EM_LINESCROLL, 0, 9999999); // posicionar o cursor na linha 9999999 ou eof
  chk.SetFocus;
END;

PROCEDURE TTfrmprincipal_Conversao.FORNECEDORES;
VAR Lista_Codif_Bloq: TStringList; max_codif: integer; DOC: STRING; FILTRO: string; I: integer; Repete_Fornecedor: boolean;
  FUNCTION STRZERO(Numero: STRING; Tamanho: integer): STRING;
  VAR TA, A: integer; NOVO: STRING;
  BEGIN
    TA := Length(PEGANUMERO(Numero));
    FOR A := 1 TO Tamanho - TA DO
    BEGIN
      NOVO := NOVO + '0';
    END;
    NOVO := NOVO + PEGANUMERO(Numero);
    Result := NOVO;
  END;

BEGIN
  SITU.caption := 'FORNECEDORES...';
  SITU.update;
  CriaCampo('DESFOR', 'ID_CDFORNECEDOR', '20');
  CriaCampo('DESFOR', 'ID_CDUNIDADEGESTORA', '20');

  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'delete from desfor_banco';
  DM.cdsTemp.Execute;
  //
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'delete from desfor where codif >0 ';
  DM.cdsTemp.Execute;

  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'delete from cadpenalidade ';
  DM.cdsTemp.Execute;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'select * from cadpenalidade';
  DM.Atualiza.OPEN;
  if DM.Atualiza.IsEmpty then
  begin
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'insert into cadpenalidade (codigo,descricao,tempo,qtdtempo) ' +
      ' values (''1'',''Bloqueio devido ao cadastro duplicado do sistema anterior'',''A'',''100'' )';
    DM.Atualiza.ExecSQL;
    DM.Atualiza.Commandtext := 'insert into cadpenalidade (codigo,descricao,tempo,qtdtempo) ' + ' values (''2'',''Fornecedor com CPF/CNPJ Inválido.'',''A'',''100'' )';
    DM.Atualiza.ExecSQL;
    DM.Atualiza.Commandtext := 'insert into cadpenalidade (codigo,descricao,tempo,qtdtempo) ' + ' values (''3'',''Fornecedor Bloqueado no Sistema.'',''A'',''100'' )';
    DM.Atualiza.ExecSQL;
  end;

  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select coalesce(max(codif),0) codif from desfor ';
  DM.cdsTemp.OPEN;
  max_codif := DM.cdsTemp.FieldByName('codif').AsInteger;
  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select cdfornecedor,COUNT(cdfornecedor) from ' + BNC_CPC + '.dbo.fornecedor ' + 'group by cdFornecedor ' + 'having COUNT(cdFornecedor)>1';
  DM.QOrigem.OPEN;
  if DM.QOrigem.RecordCount > 0 then
    Repete_Fornecedor := true
  else
    Repete_Fornecedor := false;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext :=
      ' SELECT f.*,l.* ' +
      ' FROM ['+BNC_CPC+'].[dbo].FORNECEDOR f ' +
      ' LEFT JOIN ['+BNC_CPC+'].[dbo].LOCALEXTRA l ON (L.CDFORNECEDOR=f.CDFORNECEDOR AND l.CDUNIDADEGESTORA=f.cdunidadegestora ) ' +
      ' order by f.cdunidadegestora, f.cdfornecedor';
  DM.QOrigem.OPEN;
  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  DM.QOrigem.first;
  Lista_Codif_Bloq := TStringList.Create;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESFOR where codif = -1';
  DM.QDESTINO.OPEN;
  if Repete_Fornecedor then
  begin
    DM.AuxOrigem.close;
    DM.AuxOrigem.Commandtext := 'select max(cdfornecedor) as cdfornecedor from [' + BNC_CPC + '].[dbo].fornecedor';
    DM.AuxOrigem.OPEN;
    max_codif := DM.AuxOrigem.FieldByName('cdfornecedor').AsInteger;
    if ((max_codif > 1000) and (max_codif < 10000)) then
      max_codif := 10000
    else if ((max_codif > 10000) and (max_codif < 100000)) then
      max_codif := 100000
    else if ((max_codif > 100000) and (max_codif < 1000000)) then
      max_codif := 1000000
    else
      max_codif := 1000;
  end
  else
    max_codif := 0;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max) + ' - Fornec : ' + trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
    EM.update;
    DM.QDESTINO.append;
    if Ent_padrao.text = trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString) then
      DM.QDESTINO.FieldByName('CODIF').AsInteger := DM.QOrigem.FieldByName('cdfornecedor').AsInteger
    else
      DM.QDESTINO.FieldByName('CODIF').AsInteger := max_codif * DM.QOrigem.FieldByName('cdunidadegestora').AsInteger + DM.QOrigem.FieldByName('cdfornecedor').AsInteger;
    DM.QDESTINO.FieldByName('id_cdfornecedor').AsString := trim(DM.QOrigem.FieldByName('cdfornecedor').AsString);
    DM.QDESTINO.FieldByName('id_cdunidadegestora').AsString := trim(DM.QOrigem.FieldByName('cdunidadegestora').AsString);
    DM.QDESTINO.FieldByName('dtcad').AsString := ValiData('01/01/' + DM.QOrigem.FieldByName('dtanocriacao').AsString);
    DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(50, DM.QOrigem.FieldByName('NMFORNECEDOR').AsString);
    DM.QDESTINO.FieldByName('nom_fant').AsString := Tira_Char39(50, DM.QOrigem.FieldByName('nmfantasia').AsString);
    DM.QDESTINO.FieldByName('NOMEfor').AsString := Tira_Char39(255, DM.QOrigem.FieldByName('NMFORNECEDOR').AsString);
    DM.QDESTINO.FieldByName('nomfor_fant').AsString := Tira_Char39(255, DM.QOrigem.FieldByName('nmfantasia').AsString);
    DM.QDESTINO.FieldByName('ENDER').AsString := Tira_Char39(80, DM.QOrigem.FieldByName('NMLOGRADOURO').AsString);
    DM.QDESTINO.FieldByName('numero').AsString := trim(DM.QOrigem.FieldByName('nrLOGRADOURO').AsString);
    DM.QDESTINO.FieldByName('COMPL').AsString := Tira_Char39(20, DM.QOrigem.FieldByName('NMBAIRRO').AsString);
    DM.QDESTINO.FieldByName('BAIRRO').AsString := Tira_Char39(60, DM.QOrigem.FieldByName('nmBAIRRO').AsString);
    IF trim(DM.QOrigem.FieldByName('CDCEP').AsString) <> '' THEN
      DM.QDESTINO.FieldByName('CEP').AsString := Formata_CEP(DM.QOrigem.FieldByName('CDCEP').AsString)
    ELSE
      DM.QDESTINO.FieldByName('CEP').AsString := '';
    DM.QDESTINO.FieldByName('CEPCI').AsString := Tira_Char39(30, DM.QOrigem.FieldByName('NMCIDADE').AsString);
    DM.QDESTINO.FieldByName('UF').AsString := trim(DM.QOrigem.FieldByName('SGUF').AsString);
    IF DM.QOrigem.FieldByName('NRCGCCPF').AsString <> '' THEN
    BEGIN
      DOC := STRZERO(DM.QOrigem.FieldByName('NRCGCCPF').AsString, 11);
      IF DM.QOrigem.FieldByName('IDTIPOFORNECEDOR').AsString = '1' THEN
      BEGIN
        DM.QDESTINO.FieldByName('INSMF').AsString := copy(DOC, 1, 3) + '.' + copy(DOC, 4, 3) + '.' + copy(DOC, 7, 3) + '-' + copy(DOC, 10, 2);
        DM.QDESTINO.FieldByName('CODTIP').AsString := '02';
        DM.QDESTINO.FieldByName('inest').AsString := trim(DM.QOrigem.FieldByName('nrinscricaoestadual').AsString);
        DM.QDESTINO.FieldByName('inscim').AsString := trim(DM.QOrigem.FieldByName('nrinscricaomunicipal').AsString);
        if DM.Evcpf.IsValid(DM.QDESTINO.FieldByName('INSMF').AsString) = false then
        begin
          memoStatus.Lines.Add('Fornecedor com CPF invalido. Código: ' + DM.QDESTINO.FieldByName('CODIF').AsString);
          Lista_Codif_Bloq.Add(DM.QDESTINO.FieldByName('codif').AsString)
        end;
      END
      ELSE
      BEGIN
        IF DM.QOrigem.FieldByName('IDTIPOFORNECEDOR').AsString = '2' THEN
        BEGIN
          DOC := STRZERO(DM.QOrigem.FieldByName('NRCGCCPF').AsString, 14);
          DM.QDESTINO.FieldByName('INSMF').AsString := copy(DOC, 1, 2) + '.' + copy(DOC, 3, 3) + '.' + copy(DOC, 6, 3) + '/' + copy(DOC, 9, 4) + '-' + copy(DOC, 13, 2);
          DM.QDESTINO.FieldByName('CODTIP').AsString := '01';
          DM.QDESTINO.FieldByName('inest').AsString := trim(DM.QOrigem.FieldByName('nrinscricaoestadual').AsString);
          DM.QDESTINO.FieldByName('inscim').AsString := trim(DM.QOrigem.FieldByName('nrinscricaomunicipal').AsString);
          if DM.Evcnpj.IsValid(DM.QDESTINO.FieldByName('INSMF').AsString) = false then
          begin
            memoStatus.Lines.Add('Fornecedor com CNPJ invalido. Código: ' + DM.QDESTINO.FieldByName('CODIF').AsString);
            Lista_Codif_Bloq.Add(DM.QDESTINO.FieldByName('codif').AsString)
          end;
        END
        ELSE
        BEGIN
          DM.QDESTINO.FieldByName('CODTIP').AsString := '03';
          DM.QDESTINO.FieldByName('inest').AsString := trim(DM.QOrigem.FieldByName('nrinscricaoestadual').AsString);
          DM.QDESTINO.FieldByName('inscim').AsString := trim(DM.QOrigem.FieldByName('nrinscricaomunicipal').AsString);
        END;
      END;
    END;
    // se o cpf ou cnpj nao eh valido
    if DM.QDESTINO.FieldByName('codtip').AsString = '02' then
    begin
      if DM.Evcpf.IsValid(DM.QDESTINO.FieldByName('INSMF').AsString) = false then
      begin
        memoStatus.Lines.Add('Fornecedor com CPF invalido. Código: ' + DM.QDESTINO.FieldByName('CODIF').AsString);
        Lista_Codif_Bloq.Add(DM.QDESTINO.FieldByName('codif').AsString)
      end;
    end
    else if DM.QDESTINO.FieldByName('codtip').AsString = '01' then
    begin
      if DM.Evcnpj.IsValid(DM.QDESTINO.FieldByName('INSMF').AsString) = false then
      begin
        memoStatus.Lines.Add('Fornecedor com CNPJ invalido. Código: ' + DM.QDESTINO.FieldByName('CODIF').AsString);
        Lista_Codif_Bloq.Add(DM.QDESTINO.FieldByName('codif').AsString);
      end;
    end;
    // IF DM.QORIGEM.FieldByName('PISPASEP').AsString <> '' THEN
    DM.QDESTINO.FieldByName('PISPASEP').AsString := DM.QOrigem.FieldByName('nrPIS').AsString;
    DM.QDESTINO.FieldByName('dtcad').AsString := '01/01/' + DM.QOrigem.FieldByName('dtanocriacao').AsString;
    DM.QDESTINO.FieldByName('TELEF').AsString := trim(DM.QOrigem.FieldByName('NRTELEFONE').AsString);
    DM.QDESTINO.FieldByName('FAX').AsString := trim(DM.QOrigem.FieldByName('NRFAXTELEX').AsString);

    // IF ((PEGANUMERO(DM.QOrigem.FieldByName('cdbanco').AsString) <> '') and (DM.QOrigem.FieldByName('cdbanco').AsInteger > 0)) THEN
    // DM.QDESTINO.FieldByName('BANCO').AsString := FORMATCURR('000', strtoint(trim(DM.QOrigem.FieldByName('cdbanco').AsString)));
    // if trim(DM.QOrigem.FieldByName('cdAGENCIA').AsString) <> '' then
    // DM.QDESTINO.FieldByName('AGENC').AsString := trim(DM.QOrigem.FieldByName('cdAGENCIA').AsString) + '-' + dm.QORIGEM.FieldByName('dgAGENCIA').AsString;
    // if trim(DM.QOrigem.FieldByName('cdcontacorrente').AsString) <> '' then
    // DM.QDESTINO.FieldByName('CONTA').AsString := trim(DM.QOrigem.FieldByName('cdcontacorrente').AsString) + '-' + dm.QORIGEM.FieldByName('dgcontacorrente').AsString;

    // IF DM.QORIGEM.FieldByName('contato').AsString <> '' THEN
    DM.QDESTINO.FieldByName('contato').AsString := Tira_Char39(30, DM.QOrigem.FieldByName('nmcontato').AsString);

    IF POS('@', DM.QOrigem.FieldByName('EDINTERNET').AsString) > 0 THEN
      DM.QDESTINO.FieldByName('email').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('EDINTERNET').AsString)
    else
      // IF DM.QOrigem.FieldByName('site').AsString <> '' THEN
      DM.QDESTINO.FieldByName('site').AsString := Tira_Char39(100, DM.QOrigem.FieldByName('edinternet').AsString);
    // if trim(DM.QOrigem.FieldByName('SIT_FORNECEDOR').AsString) = 'INATIVO' then
    // begin
    // DM.QDESTINO.FieldByName('BLOQ_OPCAO').AsString := 'B';
    // DM.QDESTINO.FieldByName('codpenalidade').AsString := '3';
    // DM.QDESTINO.FieldByName('TIPO_BLOQ').AsString := 'Fornecedor Bloqueado no Sistema Assessor Publico';
    // DM.QDESTINO.FieldByName('DATA_BLOQ').AsString := '31/12/2013';
    // DM.QDESTINO.FieldByName('DESCRICAO_BLOQ').AsString := 'Fornecedor Bloqueado no Sistema Assessor Publico';
    // DM.QDESTINO.FieldByName('MSG_BLOQ').AsString := 'Fornecedor Bloqueado no Sistema Assessor Publico';
    // DM.QDESTINO.FieldByName('RESTPED_BLOQ').AsString := 'S';
    // DM.QDESTINO.FieldByName('RESTEMP_BLOQ').AsString := 'S';
    // DM.QDESTINO.FieldByName('RESTPAG_BLOQ').AsString := 'S';
    // end;
    DM.QOrigem.next;
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
  END;

  /// //////////////   DESFOR_BANCO ///////////////////
  DM.cdsdesfor.close;
  DM.cdsOrigem.close;
  DM.cdsOrigem.Commandtext := 'select cf.cdunidadegestora, cf.cdFornecedor, cf.cdBanco, cf.cdAgencia, cf.dgAgencia, cf.cdContaCorrente,cf.dgContaCorrente from  [' + BNC_CPC +
    '].[dbo].contacorrentefornecedor cf order by 1,2';
  DM.cdsOrigem.OPEN;
  if not DM.cdsOrigem.IsEmpty then
  begin
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'delete from desfor_banco';
    DM.Atualiza.ExecSQL;
    DM.cdsOrigem.first;
    DM.CdsDestino.close;
    DM.CdsDestino.Commandtext := 'select codif, agencia,  banco, conta, padrao from desfor_banco where codif = -1 ';
    DM.CdsDestino.OPEN;
    p.Position := 0;
    p.Max := DM.cdsOrigem.RecordCount;
    while not DM.cdsOrigem.eof do
    begin
      EM.caption := 'Entidade : ' + DM.cdsOrigem.FieldByName('cdunidadegestora').AsString + '  Fornec: ' + DM.cdsOrigem.FieldByName('cdFornecedor').AsString;
      EM.update;
      p.Position := DM.cdsOrigem.RecNo;
      p.update;
      DM.CdsDestino.append;
      DM.CdsDestino.FieldByName('codif').AsString := Traz_Codif(DM.cdsOrigem.FieldByName('cdunidadegestora').AsString, DM.cdsOrigem.FieldByName('cdFornecedor').AsString);
      DM.CdsDestino.FieldByName('banco').AsString := FORMATCURR('000', DM.cdsOrigem.FieldByName('cdbanco').AsInteger);
      if trim(DM.cdsOrigem.FieldByName('dgagencia').AsString) <> '' then
        DM.CdsDestino.FieldByName('agencia').AsString := trim(DM.cdsOrigem.FieldByName('cdagencia').AsString) + '-' + trim(DM.cdsOrigem.FieldByName('dgagencia').AsString)
      else
        DM.CdsDestino.FieldByName('agencia').AsString := trim(DM.cdsOrigem.FieldByName('cdagencia').AsString);
      if trim(DM.cdsOrigem.FieldByName('dgContaCorrente').AsString) <> '' then
        DM.CdsDestino.FieldByName('conta').AsString := trim(DM.cdsOrigem.FieldByName('cdContaCorrente').AsString) + '-' +
          trim(DM.cdsOrigem.FieldByName('dgContaCorrente').AsString)
      else
        DM.CdsDestino.FieldByName('conta').AsString := trim(DM.cdsOrigem.FieldByName('cdContaCorrente').AsString);
      DM.CdsDestino.FieldByName('padrao').AsString := 'N';
      DM.CdsDestino.post;
      DM.CdsDestino.ApplyUpdates(-1);
      DM.cdsOrigem.next;
    end;
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := ' update desfor d set d.banco = (select first 1 z.banco from desfor_banco z where z.codif=d.codif ), ' +
      ' d.agenc = (select first 1 z.agencia from desfor_banco z where z.codif=d.codif ), ' + ' d.conta = (select first 1 z.conta from desfor_banco z where z.codif=d.codif ) '
      + ' where exists (select '''' from desfor_banco x where x.codif= d.codif ) ';
    DM.Atualiza.ExecSQL;
  end;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update desfor df set df.bloq_opcao=''B'',df.TIPO_BLOQ=''Bloqueio de Fornecedor Duplicado'', df.data_BLOQ=''' + FormatDateTime('DD.MM.YYYY', Date)
    + ''', ' + 'df.descricao_BLOQ=''Fornecedor duplicado do sistema anterior'', df.msg_BLOQ= ''Localizar outro cadastro deste, e desbloqueie o correto.'' , ' +
    'df.restped_BLOQ=''S'',df.restemp_BLOQ=''S'',df.restpag_BLOQ=''S'',df.codpenalidade=''1'' where df.insmf in (select a.insmf from desfor a group by 1 HAVING count(a.insmf) > 1)';
  DM.Atualiza.ExecSQL;

  // ****** bloqueio dos fornecedor com cpf/cnpj invalidos
  FILTRO := '';
  FOR I := 0 TO Lista_Codif_Bloq.count - 1 DO
  BEGIN
    IF I = 0 THEN
      FILTRO := FILTRO + ' in (' + Lista_Codif_Bloq.STRINGS[I] + ',';

    IF I > 0 THEN
      FILTRO := FILTRO + ' , ';
    FILTRO := FILTRO + Lista_Codif_Bloq.STRINGS[I];

    IF I = Lista_Codif_Bloq.count - 1 THEN
      FILTRO := FILTRO + ')';
  END;
  if trim(FILTRO) <> '' then
  begin
    DM.Atualiza.close;
    DM.Atualiza.Commandtext := 'update desfor df set df.bloq_opcao=''B'',df.TIPO_BLOQ=''Bloqueio de Fornecedor com CPF/CNPJ inválido!'', df.data_BLOQ=''' +
      FormatDateTime('DD.MM.YYYY', Date) + ''', ' + 'df.descricao_BLOQ=''Fornecedor com documento inválido!'', df.msg_BLOQ= ''Informe o CPF/CNPJ válido.'' , ' +
      'df.restped_BLOQ=''S'',df.restemp_BLOQ=''S'',df.restpag_BLOQ=''S'',df.codpenalidade=''2'' where df.codif ' + FILTRO;
    DM.Atualiza.ExecSQL;
    DM.Atualiza.Commandtext :=
      ' insert into desfor_bloqueiohis (codif,codigo,codpenalidade,bloq_opcao,restped_bloq,restemp_bloq,restpag_bloq,tipo_bloq,data_bloq,descricao_bloq,msg_bloq,opcao_bloq,data_bloq_fim) '
      + ' select codif, ''0'',''2'',bloq_opcao,restped_bloq,restemp_bloq,restpag_bloq,tipo_bloq,data_bloq,descricao_bloq,msg_bloq,opcao_bloq,data_bloq_fim from desfor where bloq_opcao=''B'' '
      + ' and codpenalidade=''2'' ';
    DM.Atualiza.ExecSQL;
  end;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'update desfor df set df.bloq_opcao=''B'',df.TIPO_BLOQ=''Bloqueio de Fornecedor Duplicado'', df.data_BLOQ=''' + FormatDateTime('DD.MM.YYYY', Date)
    + ''', ' + 'df.descricao_BLOQ=''Fornecedor duplicado do sistema anterior'', df.msg_BLOQ= ''Localizar outro cadastro deste, e desbloqueie o correto.'' , ' +
    'df.restped_BLOQ=''S'',df.restemp_BLOQ=''S'',df.restpag_BLOQ=''S'',df.codpenalidade=''1'' ' +
    'where df.insmf in (select a.insmf from desfor a where a.codpenalidade is null group by 1 HAVING count(a.insmf) > 1)';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext :=
    ' insert into desfor_bloqueiohis (codif,codigo,codpenalidade,bloq_opcao,restped_bloq,restemp_bloq,restpag_bloq,tipo_bloq,data_bloq,descricao_bloq,msg_bloq,opcao_bloq,data_bloq_fim) '
    + ' select codif, ''0'',''1'',bloq_opcao,restped_bloq,restemp_bloq,restpag_bloq,tipo_bloq,data_bloq,descricao_bloq,msg_bloq,opcao_bloq,data_bloq_fim from desfor where bloq_opcao=''B'' '
    + ' and codpenalidade=''1'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.close;
  DM.Atualiza.Commandtext :=
    ' insert into desfor_bloqueiohis (codif,codigo,codpenalidade,bloq_opcao,restped_bloq,restemp_bloq,restpag_bloq,tipo_bloq,data_bloq,descricao_bloq,msg_bloq,opcao_bloq,data_bloq_fim) '
    + ' select codif, ''0'',''3'',bloq_opcao,restped_bloq,restemp_bloq,restpag_bloq,tipo_bloq,data_bloq,descricao_bloq,msg_bloq,opcao_bloq,data_bloq_fim from desfor where bloq_opcao=''B'' '
    + ' and codpenalidade =''3'' ';
  DM.Atualiza.ExecSQL;
  STATUS.caption := 'DESFOR OK';
  memoStatus.Lines.Add('DESFOR OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.FUNCOES;
BEGIN
  SITU.caption := 'FUNÇÕES...';
  SITU.update;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM TABFUNCAO';
  DM.QDESTINO.OPEN;

  DM.QOrigem.close;
  DM.QOrigem.Commandtext := 'select * from [' + BNC_CPC + '].dbo.FUNCAO';
  DM.QOrigem.OPEN;
  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;
  DM.QOrigem.first;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    IF DM.QDESTINO.Locate('FUNCAO', FORMATCURR('00', DM.QOrigem.FieldByName('CDFUNCAO').AsInteger), []) THEN
      DM.QDESTINO.edit
    ELSE
    BEGIN
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('FUNCAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDFUNCAO').AsInteger);
    END;
    DM.QDESTINO.FieldByName('NOME').AsString := Tira_Char39(60, DM.QOrigem.FieldByName('DSFUNCAO').AsString);
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    DM.QOrigem.next;
  END;
  STATUS.caption := 'TABFUNÇÃO - OK';
  memoStatus.Lines.Add('TABFUNÇÃO - OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.FUNDO_ESPECIAL;
VAR ID_CDUNIDADEGESTORA_ORIGEM: STRING;
BEGIN
  SITU.caption := 'FUNDO ESPECIAL...';
  SITU.update;
  CriaCampo('CADFUNDO', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('CADFUNDO', 'ID_CDUNIDADEGESTORA_ORIGEM', '20');
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM CADFUNDO';
  DM.QDESTINO.OPEN;

  DM.LOCALIZAORIGEM.close;
  DM.LOCALIZAORIGEM.Commandtext := 'SELECT cdunidadegestoratce, count(cdunidadegestoratce) as fundo from '+BNC_CPE+'.dbo.unidadegestora ' +
      'where upper(dsunidadegestora) not like ''%CONSOLI%'' and upper(dsunidadegestora) not like ''%ADMINISTRA%'' ' +
      'group by cdunidadegestoratce  having count(cdunidadegestoratce) > 1';

  DM.LOCALIZAORIGEM.OPEN;
  if not DM.LOCALIZAORIGEM.IsEmpty then
    rdfundo.ItemIndex := 0
  else
    rdfundo.ItemIndex := 1;
  WHILE NOT DM.LOCALIZAORIGEM.eof DO
  BEGIN
    p.Position := 0;
    DM.ATUALIZAORIGEM.close;
    DM.ATUALIZAORIGEM.Commandtext := ' select TOP 1 CDUNIDADEGESTORA from UNIDADEGESTORA WHERE cdunidadegestoratce = ' + DM.LOCALIZAORIGEM.FieldByName('cdunidadegestoratce')
      .AsString + ' ORDER BY idtipoinstituicao ASC ';
    DM.ATUALIZAORIGEM.OPEN;
    ID_CDUNIDADEGESTORA_ORIGEM := DM.ATUALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString;

    DM.ATUALIZAORIGEM.close;
    DM.ATUALIZAORIGEM.Commandtext := ' select * from UNIDADEGESTORA WHERE cdunidadegestoratce = ' + DM.LOCALIZAORIGEM.FieldByName('cdunidadegestoratce').AsString +
      ' and idtipoinstituicao <> 1';
    DM.ATUALIZAORIGEM.OPEN;
    p.Max := DM.ATUALIZAORIGEM.RecordCount;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    DM.ATUALIZAORIGEM.first;

    WHILE NOT DM.ATUALIZAORIGEM.eof DO
    BEGIN
      p.Position := DM.ATUALIZAORIGEM.RecNo;
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('FUNDO').AsString := DM.ATUALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString;
      DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := DM.ATUALIZAORIGEM.FieldByName('CDUNIDADEGESTORA').AsString;
      DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA_ORIGEM').AsString := ID_CDUNIDADEGESTORA_ORIGEM;
      DM.QDESTINO.FieldByName('NOMEABREVIADO').AsString := DM.ATUALIZAORIGEM.FieldByName('DSUNIDADEGESTORA').AsString;
      DM.QDESTINO.FieldByName('NOMEFUNDO').AsString := DM.ATUALIZAORIGEM.FieldByName('DSUNIDADEGESTORA').AsString;
      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
      DM.ATUALIZAORIGEM.next;

      DM.Atualiza.close;
      DM.Atualiza.Commandtext := 'delete from tabempresa where ID_ENT_CODIGO = ' + DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString;
      DM.Atualiza.ExecSQL;
    END;
    DM.LOCALIZAORIGEM.next;
  END;

  STATUS.caption := 'Cadastro de Fundos - OK';
  STATUS.update;
  memoStatus.Lines.Add('Cadastro de Fundos - OK');
  Desconecta_Conecta;
END;

FUNCTION TTfrmprincipal_Conversao.Itens_Selecionados(total: integer): integer;
VAR cont, X: integer;
BEGIN
  cont := 0;
  FOR X := 0 TO Pred(chk.Items.count) DO
  BEGIN
    IF chk.Checked[X] THEN
      inc(cont);
  END;
  Result := cont;
END;

procedure TTfrmprincipal_Conversao.LEI_PPA;
var LEIPPA: string; leildo: string;
BEGIN
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from ppa_acoes';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from ppa_metas';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from ppa_programa';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'delete from ppa_cadastro';
  DM.Atualiza.ExecSQL;

  STATUS.caption := 'Lei PPA';
  STATUS.update;

  // Fazendo o PPA
//   dm.QORIGEM.CLOSE;
//   dm.QORIGEM.Commandtext :=
//   'Select * from '+BNC_PPA+'.DBO.PPA  where cdChavePrimaria In (Select Max(cdChavePrimaria) From  '+BNC_PPA+'.DBO.PPA )';
//   dm.QORIGEM.OPEN;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM PPA_CADASTRO';
  DM.QDESTINO.OPEN;

  DM.QDESTINO.append;
  DM.QDESTINO.FieldByName('CODLEI').AsString := '1';
  if strtoint(ano.text) >= 2014 then
  begin
    DM.QDESTINO.FieldByName('ANOINI').AsString := '2014'; // dm.QORIGEM.FieldByName('dtInicioPPA').AsString;
    DM.QDESTINO.FieldByName('ANOFIM').AsString := '2017' // dm.QORIGEM.FieldByName('dtFinalPPA').AsString;
  end
  else
  begin
    DM.QDESTINO.FieldByName('ANOINI').AsString := '2010';
    DM.QDESTINO.FieldByName('ANOFIM').AsString := '2013';
  end;
//  DM.QDESTINO.FieldByName('LEI').AsString := '693'; // TRIM(dm.QORIGEM.FieldByName('NumLei').AsString);
//  DM.QDESTINO.FieldByName('DTLEI').AsString := '14/11/' + inttostr(strtoint(DM.QDESTINO.FieldByName('ANOINI').AsString) - 1);
//  DM.QDESTINO.FieldByName('DTPUBL').AsString := '14/11/' + inttostr(strtoint(DM.QDESTINO.FieldByName('ANOINI').AsString) - 1);
  DM.QDESTINO.FieldByName('TIPO_LANC').AsString := 'NV';
  DM.QDESTINO.FieldByName('MODULO').AsString := 'PPA';
  DM.QDESTINO.post;
  DM.QDESTINO.ApplyUpdates(-1);
//  LEIPPA := DM.QDESTINO.FieldByName('LEI').AsString;

  // // Fazendo a LDO
  // dm.QORIGEM.CLOSE;
  // dm.QORIGEM.Commandtext :=
  // 'select l.referencial, l.competencia, l.sistema, l.tipo, l.numero_lei, l.data_lei, l.data_publ_lei, l.perc_suple, l.perc_opcred_aro, l.perc_opcred_int ' +
  // 'from fin_legislacao l ' +
  // 'where l.sistema= ''LDO'' AND substring(l.competencia from 1 for 4)='''+ANO.Text+''' ';
  // dm.QORIGEM.OPEN;
  //
  // DM.QDESTINO.CLOSE;
  // DM.QDESTINO.Commandtext := 'SELECT * FROM PPA_CADASTRO';
  // DM.QDESTINO.OPEN;
   DM.QDESTINO.Append;
   DM.QDESTINO.FieldByName('CODLEI').AsString := '2';
//   DM.QDESTINO.FIELDBYNAME('LEI').ASSTRING       := TRIM(dm.QORIGEM.FieldByName('numero_lei').AsString);
//   DM.QDESTINO.FIELDBYNAME('DTLEI').ASSTRING     := TRIM(dm.QORIGEM.FieldByName('data_lei').AsString);
//   DM.QDESTINO.FIELDBYNAME('DTPUBL').ASSTRING    := TRIM(dm.QORIGEM.FieldByName('data_publ_lei').AsString);
   DM.QDESTINO.FieldByName('ANOINI').AsString := ano.text;
   DM.QDESTINO.FieldByName('ANOFIM').AsString := ano.text;
   DM.QDESTINO.FieldByName('TIPO_LANC').AsString := 'NV';
   DM.QDESTINO.FieldByName('MODULO').AsString := 'LDO';
   DM.QDESTINO.Post;
   DM.QDESTINO.ApplyUpdates(-1);
  // leildo := DM.QDESTINO.FIELDBYNAME('LEI').ASSTRING ;
  // // LOA
  // dm.QORIGEM.CLOSE;
  // dm.QORIGEM.Commandtext :=
  // 'select l.referencial, l.competencia, l.sistema, l.tipo, l.numero_lei, l.data_lei, l.data_publ_lei, l.perc_suple, l.perc_opcred_aro, l.perc_opcred_int ' +
  // 'from fin_legislacao l ' +
  // 'where l.sistema= ''LOAW'' AND substring(l.competencia from 1 for 4)='''+ANO.Text+''' ';
  // dm.QORIGEM.OPEN;
  // // PARAMORC
  // DM.QDESTINO.CLOSE;
  // DM.QDESTINO.Commandtext := 'SELECT * FROM PARAMORC';
  // DM.QDESTINO.OPEN;
  // DM.QDESTINO.EDIT;
  // DM.QDESTINO.FIELDBYNAME('LEI').ASSTRING      := TRIM(dm.QORIGEM.FieldByName('numero_lei').AsString);
  // DM.QDESTINO.FIELDBYNAME('DTLEI').ASSTRING    := TRIM(dm.QORIGEM.FieldByName('data_lei').AsString);
  // DM.QDESTINO.FIELDBYNAME('LEI_ldo').ASSTRING      := leildo;
  // DM.QDESTINO.FIELDBYNAME('LEI_ppa').ASSTRING      := LEIPPA;
  // DM.QDESTINO.FIELDBYNAME('PERCE').ASSTRING    := TRIM(dm.QORIGEM.FieldByName('perc_suple').AsString);
  // DM.QDESTINO.Post;
  // DM.QDESTINO.ApplyUpdates(-1);

  Desconecta_Conecta;
  STATUS.caption := 'Lei PPA .. OK';
  STATUS.update;
  memoStatus.Lines.Add('Lei PPA .. OK');
end;

procedure TTfrmprincipal_Conversao.LIGA_TRIGGERS;
begin
  DM.SQL.close;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TI_DESALD_SALDOFICHA' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESALD_SALDOFICHA' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESPES_SALDOFICHA' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESDIS_SALDOFICHA' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESCEMP' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESPES_SALDO_SUBEMPENHAR' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESSUB_DESCO' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESPES' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TI_DESCSUB_DESCO' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESCSUB' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'SET_CHEQORD' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TI_CHEQORD' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESCSUB_DESCO' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TD_DESALD' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_VIEWLIQ_SALDO_SUBEMPENHAR' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TI_TRANSFENTIDADE' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_TRANSFENTIDADE' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TI_DESPES_SALDOFICHA' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TU_DESDIS_SALDOFICHARESERVA' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TB_DESPES' + CHAR(39);
  DM.SQL.ExecSQL;
  DM.SQL.Commandtext := 'UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE=0 WHERE RDB$TRIGGER_NAME=' + CHAR(39) + 'TB_ORDPAG' + CHAR(39);
  DM.SQL.ExecSQL;
  try
  DM.SQL.Commandtext := 'alter table DESSUB add constraint VALOR_MENOR_ANULADO check ((CAST(VADEM AS NUMERIC(14,2))-CAST(ANULA AS NUMERIC(14,2))>=0))';
  DM.SQL.ExecSQL;
  except
  end;
  try
  DM.SQL.Commandtext := 'alter table VIEWLIQ add constraint VALOR__MENOR_ANULADO check (CAST(VADEM AS NUMERIC(14,2))-CAST(ANULA AS NUMERIC(14,2))>=0)';
  DM.SQL.ExecSQL;
  except

  end;
  memoStatus.Lines.Add(' Triggers Ativados ');
end;

PROCEDURE TTfrmprincipal_Conversao.LIMPATABELAS;
BEGIN
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM TRANSFERENCIA';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECEIT';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESCSUB';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM CHEQORD';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCAI';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM SUBORD';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM EMPORD';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDPAG';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESSUB';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESCEMP';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM viewliq';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'UPDATE DESPES SET PKEMPA = NULL';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM NOTA';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESPESITEM';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESPESAD';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESPES';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESALD';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM CADDECRETO';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM FCADORC';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM CONTRATOS';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM CADCONV';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESFOR';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESDIS';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESORC';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECEIT';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECDIS';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECORC_DEDUCOES';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECORC';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESCON';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM EXTRA';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM TRANSFENTIDADE';
  DM.Atualiza.ExecSQL;
  memoStatus.Lines.Add('Tabelas Limpas');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.LIQUIDACAO;
VAR produ, documento: string;  notafiscal: string;   Emp_ant: string;  numsub: Integer;
  filtro: string;
BEGIN
  CriaCampo('VIEWLIQ', 'ID_nrempenho', '20');
  CriaCampo('VIEWLIQ', 'ID_NRSEQUENCIA', '20');
  CriaCampo('VIEWLIQ', 'ID_NRSEQUENCIASUBEMPENHO', '20');
  CriaCampo('VIEWLIQ', 'ID_CDFORNECEDOR', '20');
  CriaCampo('VIEWLIQ', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('VIEWLIQ', 'ID_DTANOEMISSAO', '20');

  SITU.caption := 'LIQUIDACAO OR ....';
  SITU.update;
{$REGION 'Limpa viewliq e dessub'}
  DM.Atualiza.close;
  DM.Atualiza.Commandtext := 'DELETE FROM DESCSUB';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'UPDATE DESSUB SET ANULA = 0, NUMSUBA = NULL ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'UPDATE DESSUB SET VADEM = 0 ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM DESSUB';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'UPDATE VIEWLIQ SET ANULA = 0, NUMSUBA = NULL where modulo like ''LIQ_OR%'' ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'UPDATE VIEWLIQ SET VADEM = 0 where modulo like ''LIQ_OR%''  ';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.Commandtext := 'DELETE FROM VIEWLIQ where modulo like ''LIQ_OR%''  ';
  DM.Atualiza.ExecSQL;
{$ENDREGION}
  DM.Localiza.close;
  DM.Localiza.Commandtext := ' SELECT despes.*, extract(year from despes.datae) as anoemp FROM DESPES INNER JOIN DESDIS ON DESDIS.FICHA=DESPES.FICHA ' +
    ' WHERE  desdis.BALCO IS NULL AND VADEM > 0.00 ';
  DM.Localiza.OPEN;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM VIEWLIQ WHERE PKEMP=0';
  DM.QDESTINO.OPEN;
  DM.QOrigem.close;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND A.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  if Ano.Value > 2012 then
    DM.QOrigem.Commandtext :=
      'SELECT A.NRSEQUENCIA , A.NRSEQUENCIASUBEMPENHO, a.CDUNIDADEGESTORA, A.*, ' +
      '(select top 1 v.DTVENCIMENTO from  ['+BNC_CPE+'].DBO.MovimentoVencimentoEmpenho v where v.cdunidadegestora = a.cdunidadegestora ' +
      '				and v.nrsequencia=a.nrsequencia and v.nrempenho=a.nrempenho order by v.dtvencimento desc) as DTVENCIMENTO , ' +
      'CAST(h.dsComplHistorico  as varchar(1024)) as produ ' +
      ' FROM  ['+BNC_CPE+'].DBO.DATAVIEW_LIQUIDADO_ORCAMENTARIO A ' +
      ' left join ['+ BNC_CPE+'].dbo.COMPLEMENTOHISTORICO h on h.cdUnidadeGestora=a.cdUnidadeGestora and h.nrComplHistorico=a.nrComplHistorico ' +
      ' WHERE a.DTANOEMISSAO =  ' + ano.Text +' '+filtro+' ' +
      ' ORDER BY A.DTMOVIMENTO, A.NREMPENHO ,a.nrsequencia, A.NRSEQUENCIASUBEMPENHO '
  else
    DM.QOrigem.Commandtext :=
      'SELECT M.NRSEQUENCIASUBEMPENHO AS NUMSUB , M.NRSEQUENCIA AS LIQ, '''' AS DTVENCIMENTO, M.* ' +
      'FROM ['+BNC_CPE+'].[DBO].MOVIMENTO M ' +
      'WHERE M.CDTIPOMOVIMENTO IN (440,443)  AND M.DTANOEMISSAO = '+Ano.Text;
  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  p.Max := DM.QOrigem.RecordCount;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    IF (DM.Localiza.Locate('ID_CDUNIDADEGESTORA;ID_nrempenho;ID_CDFORNECEDOR', Vararrayof([trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString),
      trim(DM.QOrigem.FieldByName('nrempenho').AsString), trim(DM.QOrigem.FieldByName('CDFORNECEDOR').AsString)]), [])) THEN
    begin
      DM.QDESTINO.append;
      DM.QDESTINO.FieldByName('PKEMP').AsString := DM.Localiza.FieldByName('PKEMP').AsString;
      DM.QDESTINO.FieldByName('numsub').AsInteger := DM.QOrigem.FieldByName('nRSEQUENCIASUBEMPENHO').AsInteger; // +1 ;//numliq;
      DM.QDESTINO.FieldByName('MODULO').AsString := 'LIQ_OR';
      DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
      DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('ID_NRSEQUENCIA').AsString := trim(DM.QOrigem.FieldByName('NRSEQUENCIA').AsString);
      DM.QDESTINO.FieldByName('ID_NRSEQUENCIASUBEMPENHO').AsString := trim(DM.QOrigem.FieldByName('nRSEQUENCIASUBEMPENHO').AsString);
      DM.QDESTINO.FieldByName('ID_CDFORNECEDOR').AsString := trim(DM.QOrigem.FieldByName('CDFORNECEDOR').AsString);
      DM.QDESTINO.FieldByName('ID_DTANOEMISSAO').AsString := trim(DM.QOrigem.FieldByName('DTANOEMISSAO').AsString);

      if Ano.Value > 2012 then
         produ := Tira_Char39(20,dm.QORIGEM.FieldByName('produ').AsString)
      else
         produ := Tira_Char39(20, dm.localiza.FieldByName('produ').AsString);

      if trim(produ)='' then
        produ := 'Liquidação nessa data - ' + DM.Localiza.fieldbyname('produ').AsString;

      DM.QDESTINO.FieldByName('PRODU').AsString := produ;

      DM.QDESTINO.FieldByName('NEMPF').AsInteger := 0;
      DM.QDESTINO.FieldByName('IE').AsInteger := 0;
      DM.QDESTINO.FieldByName('NEMPV').AsInteger := 0;
      DM.QDESTINO.FieldByName('FASE').AsInteger := 0;
      DM.QDESTINO.FieldByName('DATAE').AsString := trim(DM.QOrigem.FieldByName('DTMOVIMENTO').AsString);
      DM.QDESTINO.FieldByName('VENCI').AsString := trim(DM.QOrigem.FieldByName('DTVENCIMENTO').AsString);

      if Ano.Value > 2012 then
        DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('vlliquidado').ascurrency
      else
        DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency;

      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
    end
    else
      memoStatus.Lines.Add('     Liq OR - EMP:' + trim(DM.QOrigem.FieldByName('nrempenho').AsString));
    DM.QOrigem.next;
  END;
  STATUS.caption := 'Salvando Liquidação OR - OK';
  STATUS.update;

  STATUS.caption := 'Liquidação OR - OK';
  STATUS.update;
  memoStatus.Lines.Add('Liquidação  - OK');
  Desconecta_Conecta;

  // *******************************  ANULA LIQUIDACAO *************************
  SITU.caption := 'LIQUIDACAO OR AN....';
  SITU.update;

  DM.Localiza.close;
  DM.Localiza.Commandtext := 'select d.pkempa, d.tpem, v.* from viewliq v inner join despes d on d.pkemp = v.pkemp  where v.modulo like ''LIQ_OR%''';
  DM.Localiza.OPEN;
  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM VIEWLIQ WHERE PKEMP=0';
  DM.QDESTINO.OPEN;
  DM.QOrigem.close;

  if rdEntPadrao.ItemIndex = 0 then
     filtro := ' AND A.CDUNIDADEGESTORA = '+Ent_padrao.Text+' '
  else
     filtro := ' ';

  if ano.Value > 2012 then
    DM.QOrigem.Commandtext := 'SELECT A.NRSEQUENCIASISTEMA AS NUMSUBA, A.*, ' +
        '(select top 1 v.DTVENCIMENTO from  '+bnc_cpe+'.DBO.MovimentoVencimentoEmpenho v where v.cdunidadegestora = a.cdunidadegestora ' +
        '			and v.nrsequencia=a.nrsequencia and v.nrempenho=a.nrempenho order by v.dtvencimento desc) as DTVENCIMENTO, ' +
        ' CAST(h.dsComplHistorico  as varchar(1024)) as produ ' +
        ' FROM  ' + bnc_cpe + '.DBO.DATAVIEW_LIQUIDADO_ORCAMENTARIO_ESTORNO A ' +
        ' left join ' + bnc_cpe + '.dbo.COMPLEMENTOHISTORICO h on h.cdUnidadeGestora=a.cdUnidadeGestora and h.nrComplHistorico=a.nrComplHistorico ' +
        ' WHERE a.DTANOEMISSAO =  ' + ano.Text +' '+filtro+' ' +
        ' order by a.cdunidadegestora, a.nrempenho , a.NRSEQUENCIASISTEMA' //a.dtmovimento,a.nrempenho';
  else
    DM.QOrigem.Commandtext :=
      'SELECT NRSEQUENCIASISTEMA AS NUMSUBA, '''' AS DTVENCIMENTO, MOVIMENTO.* ' +
      'FROM ['+BNC_CPE+'].[DBO].MOVIMENTO ' +
      'WHERE ((CDTIPOMOVIMENTO IN (441,444)) OR((CDHISTORICOSISTEMA = 512 AND CDTIPOMOVIMENTO = 446) )) ' +
      'AND DTANOEMISSAO = '+Ano.Text;

  DM.QOrigem.OPEN;
  DM.QOrigem.first;
  p.Max := DM.QOrigem.RecordCount;
  Emp_ant := '';
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    APPLICATION.ProcessMessages;
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    IF (DM.Localiza.Locate('ID_CDUNIDADEGESTORA;ID_nrempenho;ID_CDFORNECEDOR',
      Vararrayof([trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString), trim(DM.QOrigem.FieldByName('nrempenho').AsString),
      trim(DM.QOrigem.FieldByName('CDFORNECEDOR').AsString)]), [])) THEN
    begin
      DM.QDESTINO.append;
      if ((trim(dm.Localiza.FieldByName('tpem').AsString) =  'AD') and (DM.Localiza.FieldByName('PKEMPA').asinteger > 0) ) then
        DM.QDESTINO.FieldByName('PKEMP').AsString := DM.Localiza.FieldByName('PKEMPA').AsString
      else
        DM.QDESTINO.FieldByName('PKEMP').AsString := DM.Localiza.FieldByName('PKEMP').AsString;
      DM.QDESTINO.FieldByName('MODULO').AsString := 'LIQ_OR_AN';
      DM.QDESTINO.FieldByName('ID_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
      DM.QDESTINO.FieldByName('ID_CDFORNECEDOR').AsString := trim(DM.QOrigem.FieldByName('CDFORNECEDOR').AsString);
      DM.QDESTINO.FieldByName('ID_nrempenho').AsString := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
      DM.QDESTINO.FieldByName('ID_NRSEQUENCIA').AsString := trim(DM.QOrigem.FieldByName('NUMSUBA').AsString);
      DM.QDESTINO.FieldByName('ID_NRSEQUENCIASUBEMPENHO').AsString := trim(DM.QOrigem.FieldByName('NRSEQUENCIASUBEMPENHO').AsString);
      DM.QDESTINO.FieldByName('ID_DTANOEMISSAO').AsString := trim(DM.QOrigem.FieldByName('DTANOEMISSAO').AsString);

      if Ano.Value > 2012 then
         produ := Tira_Char39(4096,dm.QORIGEM.FieldByName('produ').AsString)
      else
         produ := Tira_Char39(4096,dm.localiza.FieldByName('produ').AsString);

      if trim(produ)='' then
        produ := 'ANULAÇÃO';

      DM.QDESTINO.FieldByName('PRODU').AsString := produ;

//      if Emp_ant <> trim(DM.QOrigem.FieldByName('nrempenho').AsString) then
//      BEGIN
        DM.cdsTemp.close;
        DM.cdsTemp.Commandtext := 'select max(numsub) as numsub from viewliq where pkemp = ' + DM.QDESTINO.FieldByName('PKEMP').AsString;
        DM.cdsTemp.OPEN;
        numsub := dm.cdsTemp.FieldByName('numsub').AsInteger;
//      END;
      inc(numsub);
      DM.QDESTINO.FieldByName('numsub').AsInteger := NUMSUB;
      DM.QDESTINO.FieldByName('numsuba').AsInteger := DM.Localiza.FieldByName('numsub').AsInteger;
      DM.QDESTINO.FieldByName('NEMPF').AsInteger := 0;
      DM.QDESTINO.FieldByName('IE').AsInteger := 0;
      DM.QDESTINO.FieldByName('NEMPV').AsInteger := 0;
      DM.QDESTINO.FieldByName('FASE').AsInteger := 0;
      DM.QDESTINO.FieldByName('DATAE').AsString := trim(DM.QOrigem.FieldByName('dtmovimento').AsString);
      DM.QDESTINO.FieldByName('VENCI').AsString := trim(DM.QOrigem.FieldByName('DTVENCIMENTO').AsString);

      if Ano.Value > 2012 then
      begin
        DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('vlestornoliquidado').ascurrency *-1;
        DM.QDESTINO.FieldByName('anula').ascurrency := DM.QOrigem.FieldByName('vlestornoliquidado').ascurrency *-1;
      end
      else
      begin
        DM.QDESTINO.FieldByName('VADEM').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency *-1;
        DM.QDESTINO.FieldByName('anula').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency *-1;
      end;

      DM.QDESTINO.post;
      DM.QDESTINO.ApplyUpdates(-1);
      Emp_ant := trim(DM.QOrigem.FieldByName('nrempenho').AsString);
    end
    else
      memoStatus.Lines.Add('    Liq OR-AN  EMP/UG:' + trim(DM.QOrigem.FieldByName('nrempenho').AsString) + '/' + trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString));
    DM.QOrigem.next;
  END;
  STATUS.caption := 'Salvando Liquidação  AN  - OK';
  STATUS.update;

  STATUS.caption := 'Liquidação  AN  - OK';
  STATUS.update;
  memoStatus.Lines.Add('Liquidação  AN  - OK');
  Desconecta_Conecta;
end;

PROCEDURE TTfrmprincipal_Conversao.ORCAMENTO_DESPESA;
VAR FICHA_NEW: integer; tipo: STRING; CODLO: string; catec: string; Ficha_Repete: boolean;
BEGIN
  // ORCAMENTO DA DESPESA
  SITU.caption := 'ORÇAMENTO DA DESPESA...';
  SITU.update;
  CriaCampo('DESORC', 'ID_CDUNIDADEGESTORA', '20');
  CriaCampo('DESORC', 'ID_CDDESPESA', '20');

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM DESDIS';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM DESORC';
  DM.Atualiza.ExecSQL;


  if Ano.Value > 2012 then
  begin

      DM.QOrigem.close;
      DM.QOrigem.Commandtext :=
          'SELECT DO.[CDUNIDADEGESTORA] ,DO.[CDDESPESA] ,COUNT(DO.CDDESPESA) ' +
          'FROM ['+BNC_CPE+'].[DBO].DESPESA DO ' +
          'INNER JOIN ['+BNC_CPE+'].[DBO].MOVIMENTO M ON (DO.CDDESPESA=M.CDDESPESA AND M.CDTIPOMOVIMENTO = 401 AND DAY(M.DTMOVIMENTO) = 1  AND MONTH(M.DTMOVIMENTO) = 1) ' +
          'INNER JOIN ['+BNC_CPE+'].[DBO].DATAVIEW_DESPESA DD ON (DD.CDUNIDADEGESTORA = DO.CDUNIDADEGESTORA AND DD.CDDESPESA = DO.CDDESPESA) ' +
          'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON (D.IDCODIGOAPLICACAO = DO.CDAPLICACAO) ' +
          'GROUP BY DO.[CDUNIDADEGESTORA] ,DO.[CDDESPESA] ' +
          'HAVING COUNT(DO.CDDESPESA) > 1';
      DM.QOrigem.OPEN;

      if DM.QOrigem.RecordCount > 0 then
        Ficha_Repete := true
      else
        Ficha_Repete := false;

      DM.QOrigem.close;
      DM.QOrigem.Commandtext :=
        'SELECT DO.CDUNIDADEGESTORA, DO.CDDESPESA, DO.CDDEPARTAMENTO, DO.CDORGAO, DO.CDUNIDADE, DO.CDFUNCAO, DO.CDPROGRAMA, ' +
        '       DO.CDSUBPROGRAMA, DO.CDDESTINO, DO.CDPROJETOATIVIDADE, DO.CDSUBPROJETOSUBATIVIDADE, DO.CDCATEGORIANIVEL1, ' +
        '       DO.CDCATEGORIANIVEL2, DO.CDCATEGORIANIVEL3, DO.CDCATEGORIANIVEL4, DO.CDCATEGORIANIVEL5, DO.CDCATEGORIANIVEL6, ' +
        '       DO.CDCATEGORIANIVEL7, DO.CDCATEGORIANIVEL8, DO.IDTIPOVINCULO, DO.IDTIPODOTACAO, DO.IDINCORPORACAOPATRIMONIAL, ' +
        '       DO.IDESFERA, DO.CDFONTERECURSO, DO.IDTIPODOTACAOTCE, D.CDAPLICACAO, DO.IDPRECATORIO, DO.IDNATUREZADESPESA, ' +
        '       DO.IDCONSORCIOPUBLICO, M.VLMOVIMENTO, DD.CDNATUREZADESPESA, DD.DSDETALHADANATUREZADESPESA, DD.DSFONTERECURSO, ' +
        '       COALESCE(D.NMAPLICACAO, ''GERAL'') AS NMAPLICACAO, ' +
        'CASE ' +
        '    WHEN D.CDAPLICACAO IS NULL AND DO.CDFUNCAO = 8 THEN ''5000000'' ' +
        '	WHEN D.CDAPLICACAO IS NULL AND DO.CDFUNCAO = 9 THEN ''6000000'' ' +
        '    WHEN D.CDAPLICACAO IS NULL AND DO.CDFUNCAO = 10 THEN ''3000000'' ' +
        '    WHEN D.CDAPLICACAO IS NULL AND DO.CDFUNCAO = 12 THEN ''2000000'' ' +
        '    WHEN D.IDCODIGOAPLICACAO IS NULL THEN ''1100000'' ' +
        '    ELSE D.CDAPLICACAO ' +
        'END AS VINGRUPO ' +
        'FROM ['+BNC_CPE+'].[DBO].DESPESA DO ' +
        'INNER JOIN ['+BNC_CPE+'].[DBO].MOVIMENTO M ON (DO.CDDESPESA = M.CDDESPESA AND M.CDTIPOMOVIMENTO = 401 AND DAY(M.DTMOVIMENTO) = 1  AND MONTH(M.DTMOVIMENTO) = 1) ' +
        'LEFT JOIN ['+BNC_CPE+'].[DBO].DATAVIEW_DESPESA DD ON (DD.CDUNIDADEGESTORA = DO.CDUNIDADEGESTORA AND DD.CDDESPESA = DO.CDDESPESA) ' +
        'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON (D.IDCODIGOAPLICACAO = DO.CDAPLICACAO  ) ' +
        'ORDER BY 4,5,6,7,8,9,10,12,13,14,15';
      DM.QOrigem.OPEN;
  end
  else
  begin
      DM.QOrigem.close;
      DM.QOrigem.Commandtext :=
        'select *, ' +
        '  case when d.cdaplicacao is null and cdfuncao = 8 then ''5000000'' ' +
        '       when d.cdaplicacao is null and cdfuncao = 9 then ''6000000'' ' +
        '	      when d.cdaplicacao is null and cdfuncao = 10 then ''3000000'' ' +
        '       when d.cdaplicacao is null and cdfuncao = 12 then ''2000000'' ' +
        '       when d.cdAPLICACAO is null then ''1100000'' ' +
        '       else d.cdaplicacao ' +
        '  end as VINGRUPO ' +
        'FROM ['+BNC_CPE+'].[dbo].DESPESA ' +
        'LEFT JOIN ['+BNC_CPE+'].[dbo].movimento ON DESPESA.CDDESPESA=MOVIMENTO.CDDESPESA and movimento.cdtipomovimento = 401 ' +
        'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON D.cdAPLICACAO = DESPESA.CDAPLICACAO ' +
        'LEFT JOIN ['+BNC_CPC+'].[DBO].CategoriaEconomica C ON (despesa.cdCategoriaNivel1 = c.cdCategoriaNivel1 and ' +
        '                                                       despesa.cdCategoriaNivel2 = c.cdCategoriaNivel2 and ' +
        '                                                       despesa.cdCategoriaNivel3 = c.cdCategoriaNivel3 and ' +
        '                                                       despesa.cdCategoriaNivel4 = c.cdCategoriaNivel4 and ' +
        '                                                       despesa.cdCategoriaNivel5 = c.cdCategoriaNivel5 and ' +
        '                                                       despesa.cdCategoriaNivel6 = c.cdCategoriaNivel6 and ' +
        '                                                       despesa.cdCategoriaNivel7 = c.cdCategoriaNivel7 and ' +
        '                                                       despesa.cdCategoriaNivel8 = c.cdCategoriaNivel8) ' +
        'LEFT JOIN ['+BNC_CPC+'].dbo.FonteRecurso FR on despesa.cdFonteRecurso = FR.cdFonteRecurso ' +
        'order by 4,5,6,7,8,9,10,12,13,14,15';
      DM.QOrigem.OPEN;
  end;


  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM DESORC';
  DM.QDESTINO.OPEN;
  DM.QOrigem.first;
  FICHA_NEW := 0;
  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    // IF DM.QDESTINO.Locate('ficha',VarArrayOf([Trim(DM.QORIGEM.FieldByName('ficha').AsString)]),[]) THEN
    // DM.QDESTINO.edit
    // ELSE
    DM.QDESTINO.append;
    DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString));
    DM.QDESTINO.FieldByName('id_CDUNIDADEGESTORA').AsString := trim(DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsString);
    DM.QDESTINO.FieldByName('id_CDDESPESA').AsString := trim(DM.QOrigem.FieldByName('CDDESPESA').AsString);

    if Ficha_Repete then
    begin
      inc(FICHA_NEW);
      DM.QDESTINO.FieldByName('FICHA').AsInteger := FICHA_NEW;
    end
    else
    begin
      DM.QDESTINO.FieldByName('FICHA').AsInteger := DM.QOrigem.FieldByName('CDDESPESA').AsInteger;
    end;

    if DM.QOrigem.FieldByName('idesfera').AsInteger > 0 then
      DM.QDESTINO.FieldByName('esfera').AsInteger := DM.QOrigem.FieldByName('idesfera').AsInteger * 10
    else
      DM.QDESTINO.FieldByName('esfera').AsInteger := 10;
    if USADEPARTAMENTO then
    begin
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
      DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
      DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDDEPARTAMENTO').AsInteger);
    end
    else
    begin
      DM.QDESTINO.FieldByName('PODER').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADEGESTORA').AsInteger);
      DM.QDESTINO.FieldByName('ORGAO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDORGAO').AsInteger);
      DM.QDESTINO.FieldByName('UNIDADE').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('CDUNIDADE').AsInteger);
    end;
    Existe_TabPoder(DM.QDESTINO.FieldByName('PODER').AsString, '');
    Existe_TabOrgao(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('ORGAO').AsString, '');
    Existe_TabUnidade(DM.QDESTINO.FieldByName('PODER').AsString, DM.QDESTINO.FieldByName('orgao').AsString, DM.QDESTINO.FieldByName('unidade').AsString, '???');
    DM.QDESTINO.FieldByName('FUNCAO').AsString := Existe_TabFuncao(DM.QOrigem.FieldByName('CDFUNCAO').AsString, '');
    DM.QDESTINO.FieldByName('SUBFUNCAO').AsString := Existe_TabSubFuncao(DM.QOrigem.FieldByName('CDPROGRAMA').AsString, '');
    DM.QDESTINO.FieldByName('PROGRAMA').AsString := Existe_TabPrograma(DM.QOrigem.FieldByName('CDSUBPROGRAMA').AsString, '');
    DM.QDESTINO.FieldByName('PROJATIV').AsString := Existe_TabProjAtiv(DM.QOrigem.FieldByName('CDdestino').AsString + FORMATCURR('000',
      strtoint(DM.QOrigem.FieldByName('CDPROJETOATIVIDADE').AsString)), '');
    DM.QDESTINO.FieldByName('ACAO').AsString := '0000';
    DM.QDESTINO.FieldByName('CATEGORIA').AsString := Existe_TabCategoria(DM.QOrigem.FieldByName('cdcategorianivel1').AsString, '');
    DM.QDESTINO.FieldByName('GRUPO').AsString := Existe_TabGrupo(DM.QOrigem.FieldByName('cdcategorianivel2').AsString, '');
    DM.QDESTINO.FieldByName('MODALIDADE').AsString := Existe_TabModalidade(DM.QOrigem.FieldByName('cdcategorianivel3').AsString, '');
    DM.QDESTINO.FieldByName('ELEMENTO').AsString := Existe_TabElemento(DM.QOrigem.FieldByName('cdcategorianivel4').AsString, '');
    DM.QDESTINO.FieldByName('DESDOBRO').AsString := FORMATCURR('00', DM.QOrigem.FieldByName('cdcategorianivel5').AsInteger);

    if Ano.Value > 2012 then
    BEGIN
        if (TRIM(DM.QDestino.FieldByName('FUNCAO').AsString) = '99') AND (TRIM(DM.QDestino.FieldByName('SUBFUNCAO').AsString) = '999') AND (TRIM(DM.QDestino.FieldByName('PROGRAMA').AsString) = '0999') AND
           (TRIM(DM.QDestino.FieldByName('PROJATIV').AsString) = '9999') AND (TRIM(DM.QDestino.FieldByName('CATEGORIA').AsString) = '9') AND (TRIM(DM.QDestino.FieldByName('GRUPO').AsString) = '9') AND
           (TRIM(DM.QDestino.FieldByName('MODALIDADE').AsString) = '99') then
            Existe_TabCatec(DM.QDESTINO.FieldByName('CATEGORIA').AsString + DM.QDESTINO.FieldByName('grupo').AsString + DM.QDESTINO.FieldByName('modalidade').AsString +
          DM.QDESTINO.FieldByName('elemento').AsString + DM.QDESTINO.FieldByName('desdobro').AsString, 'RESERVA DE CONTINGÊNCIA')
        ELSE
            Existe_TabCatec(DM.QDESTINO.FieldByName('CATEGORIA').AsString + DM.QDESTINO.FieldByName('grupo').AsString + DM.QDESTINO.FieldByName('modalidade').AsString +
          DM.QDESTINO.FieldByName('elemento').AsString + DM.QDESTINO.FieldByName('desdobro').AsString, trim(DM.QOrigem.FieldByName('dsDetalhadaNaturezaDespesa').AsString));
    END
    else
      Existe_TabCatec(DM.QDESTINO.FieldByName('CATEGORIA').AsString + DM.QDESTINO.FieldByName('grupo').AsString + DM.QDESTINO.FieldByName('modalidade').AsString +
        DM.QDESTINO.FieldByName('elemento').AsString + DM.QDESTINO.FieldByName('desdobro').AsString, trim(DM.QOrigem.FieldByName('dsCatDetalhada').AsString));

    DM.QDESTINO.FieldByName('esfera').AsString := '10';
    IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '08' THEN
    begin
      tipo := 'NV';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '500'
    end
    else IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '09' THEN
    begin
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '600';
      DM.QDESTINO.FieldByName('esfera').AsString := '20';
      tipo := 'PR'
    end
    ELSE IF DM.QDESTINO.FieldByName('FUNCAO').AsString = '10' THEN
    begin
      tipo := 'SD';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '300';
    end
    ELSE IF ((DM.QDESTINO.FieldByName('FUNCAO').AsString = '12') AND ((DM.QDESTINO.FieldByName('subFUNCAO').AsString = '361') OR
      (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '366') OR (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '367'))) THEN
    begin
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
      tipo := 'EF';
    end
    ELSE IF ((DM.QDESTINO.FieldByName('FUNCAO').AsString = '12') AND (DM.QDESTINO.FieldByName('subFUNCAO').AsString = '365')) THEN
    begin
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
      tipo := 'EI';
    end
    ELSE
    begin
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
      tipo := 'NV';
    end;
    DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
    if trim(DM.QOrigem.FieldByName('VINGRUPO').AsString) <> '' then
    begin
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(PEGANUMERO(DM.QOrigem.FieldByName('VINGRUPO').AsString), 1, 3);
      DM.QDESTINO.FieldByName('VINCODIGO').AsString := FORMATCURR('000', strtoint(copy(PEGANUMERO(DM.QOrigem.FieldByName('VINGRUPO').AsString), 5, 3)));
    end;
    DM.QDESTINO.FieldByName('TIPO').AsString := tipo;
    DM.QDESTINO.FieldByName('vintipo').AsString := DM.QDESTINO.FieldByName('VINGRUPO').AsString;
    DM.QDESTINO.FieldByName('FONINDUSO').AsString := '0';
    DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(trim(DM.QOrigem.FieldByName('CDFONTERECURSO').AsString),
      trim(DM.QOrigem.FieldByName('dsFonteRecurso').AsString));
    DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???');
    Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, trim(DM.QOrigem.FieldByName('nmaplicacao').AsString));
    DM.QDESTINO.FieldByName('DOTAC').ascurrency := DM.QOrigem.FieldByName('VLMOVIMENTO').ascurrency;
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    DM.QOrigem.next;
  END;
  STATUS.caption := 'DESORC - OK';
  memoStatus.Lines.Add('DESORC - OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.ORCAMENTO_RECEITA;
VAR DEDU: CURRENCY; ULTIMA_FICHA: integer; ULTIMAFICHA: integer; desdobro: integer; REC: STRING; tipo: STRING; Vingrupo: STRING; CODRE: STRING; PERCE: STRING;
  FICHA_NEW: integer; sinal, nivel_receita: integer; nv4, nv5, nv6, nv7, nv8: string; Ficha_Repete: boolean;
BEGIN
  SITU.caption := 'ORÇAMENTO DA RECEITA...';
  SITU.update;
  // ORCAMENTO DA RECEITA
  CriaCampo('RECORC', 'ID_cdUnidadeGestora', '20');
  CriaCampo('RECORC_deducoes', 'ID_cdUnidadeGestora', '20');
  CriaCampo('RECDIS', 'ID_cdUnidadeGestora', '20');
  CriaCampo('RECORC', 'ID_cdReceita', '20');
  CriaCampo('RECORC_deducoes', 'ID_cdReceita', '20');
  CriaCampo('RECDIS', 'ID_cdReceita', '20');

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM RECORC_deducoes';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECORC';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECEIT';
  DM.Atualiza.ExecSQL;
  DM.Atualiza.SQL.text := 'DELETE FROM RECDIS';
  DM.Atualiza.ExecSQL;


  if Ano.Value > 2012 then
  begin
       {$REGION ' SQL MAIOR QUE 2012 '}
        DM.QOrigem.close;
        DM.QOrigem.Commandtext :=
          'select r.cdReceita,COUNT(r.cdReceita) ' +
          'FROM ['+BNC_CPE+'].[dbo].[RECEITA] r ' +
          'inner join ['+BNC_CPE+'].[dbo].MOVIMENTO m on (m.cdUnidadeGestora= r.cdUnidadeGestora and r.cdReceita=m.cdReceita and ' +
          '	                                      DAY(m.dtMovimento)=1 and MONTH(m.dtMovimento)=1 and m.cdTipoMovimento = 470 and m.cdHistoricoPadrao = 470 ) ' +
          'inner join ['+BNC_CPE+'].dbo.dataview_receita dr on (dr.cdUnidadeGestora=r.cdUnidadeGestora and dr.cdReceita=r.cdReceita and dr.cdAplicacao=r.cdAplicacao ) ' +
          'left join ['+BNC_CPE+'].[dbo].[DATAVIEW_NATUREZA_RECEITA] l on (l.idNaturezaReceita=r.idNaturezaReceita) ' +
          'left join ['+BNC_CPE+'].dbo.CodigoAplicacao c on (c.idCodigoAplicacao =r.cdAplicacao) ' +
          'group by r.cdReceita ' +
          'having COUNT(r.cdReceita)>1';

        DM.QOrigem.OPEN;

        if DM.QOrigem.RecordCount > 0 then
          Ficha_Repete := true
        else
          Ficha_Repete := false;

        DM.QOrigem.close;
        DM.QOrigem.Commandtext :=
          'SELECT r.[cdUnidadeGestora] ,r.[cdReceita] ,r.[cdCategoriaNivel1] ,r.[cdCategoriaNivel2] ,r.[cdCategoriaNivel3], ' +
          '       r.[cdCategoriaNivel4] ,r.[cdCategoriaNivel5] ,r.[cdCategoriaNivel6] ,r.[cdCategoriaNivel7] ,r.[cdCategoriaNivel8], ' +
          '       dr.dsDetalhadaNaturezaReceita ,dr.dsNaturezaReceita ,l.dsLegislacaoReceita ,r.[pcSegExercicio] ,r.[pcTerExercicio] ,r.[pcQuaExercicio], ' +
          '       r.[pcQuiExercicio] ,r.[idRendaLocal] ,r.[idOrigemTributaria] ,r.[cdElencoPadraoTC] ,r.[idContaRedutora], ' +
          '       r.[cdFonteRecurso],dr.dsFonteRecurso ,r.[idVinculoContrato] ,r.[idNaturezaReceita], ' +
          '       m.cdTipoMovimento, m.cdHistoricoPadrao,m.cdHistoricoSistema,coalesce(m.vlMovimento,0) as vlmovimento, m.vlReservado, c.cdAplicacao,c.nmAplicacao , dr.cdAplicacaoTC ' +
          'FROM ['+BNC_CPE+'].[dbo].[RECEITA] r ' +
          'left join ['+BNC_CPE+'].[dbo].MOVIMENTO m on (m.cdUnidadeGestora= r.cdUnidadeGestora and r.cdReceita=m.cdReceita and ' +
          '                                         DAY(m.dtMovimento)=1 and MONTH(m.dtMovimento)=1 and m.cdTipoMovimento= 470 and m.cdHistoricoPadrao=470) ' +
          'inner join ['+BNC_CPE+'].dbo.dataview_receita dr on (dr.cdUnidadeGestora=r.cdUnidadeGestora and dr.cdReceita=r.cdReceita  and dr.cdAplicacao=r.cdAplicacao ) ' +
          'left join ['+BNC_CPE+'].[dbo].[DATAVIEW_NATUREZA_RECEITA] l on (l.idNaturezaReceita=r.idNaturezaReceita) ' +
          'left join ['+BNC_CPE+'].dbo.CodigoAplicacao c on (c.idCodigoAplicacao =r.cdAplicacao) ' +
          'order by 1,2';
        DM.QOrigem.OPEN;
       {$ENDREGION}
  end
  else
  begin
       {$REGION ' SQL MENOR OU IGUAL QUE 2012 '}
        DM.QOrigem.close;
        DM.QOrigem.Commandtext :=
            'select *, ' +
            'COALESCE(['+BNC_CPE+'].[dbo].RECEITA.CDAPLICACAO, ''1100000'') AS VINGRUPO, ' +
            '(select sum(vlmovimento) as recvalor from ['+BNC_CPE+'].dbo.movimento Z where (Z.cdHISTORICOSISTEMA <> 606 ) AND ' +
            '	                                                                         (Z.cdtipomovimento = 470 or Z.cdtipomovimento = 471 )  and ' +
            '	                                                                         MONTH(Z.dtMovimento) = 1 and DAY(Z.dtmovimento) = 1 AND ' +
            '	                                                                         RECEITA.cdreceita = Z.cdreceita ' +
            'group by Z.cdreceita) as vlMovimento ' +
            'from ['+BNC_CPE+'].[dbo].receita ' +
            'LEFT JOIN ['+BNC_CPE+'].[DBO].CODIGOAPLICACAO D ON D.cdAPLICACAO = RECEITA.CDAPLICACAO ' +
            'LEFT JOIN ['+BNC_CPC+'].dbo.CategoriaEconomica C on (c.cdCategoriaNivel1 = receita.cdCategoriaNivel1 and ' +
            '                                                 c.cdCategoriaNivel2 = receita.cdCategoriaNivel2 and ' +
            '                                                 c.cdCategoriaNivel3 = receita.cdCategoriaNivel3 and ' +
            '                                                 c.cdCategoriaNivel4 = receita.cdCategoriaNivel4 and ' +
            '                                                 c.cdCategoriaNivel5 = receita.cdCategoriaNivel5 and ' +
            '                                                 c.cdCategoriaNivel6 = receita.cdCategoriaNivel6 and ' +
            '                                                 c.cdCategoriaNivel7 = receita.cdCategoriaNivel7 and ' +
            '                                                 c.cdCategoriaNivel8 = receita.cdCategoriaNivel8) ' +
            'LEFT JOIN ['+BNC_CPC+'].dbo.FonteRecurso FR on Receita.cdFonteRecurso = FR.cdFonteRecurso';
        DM.QOrigem.OPEN;
       {$ENDREGION}
  end;

  p.Position := 0;
  p.Max := DM.QOrigem.RecordCount;
  EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
  EM.update;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM RECORC ';
  DM.QDESTINO.OPEN;
  DM.QOrigem.first;
  desdobro := 0; FICHA_NEW := 0;

  WHILE NOT DM.QOrigem.eof DO
  BEGIN
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    nv4 := trim(DM.QOrigem.FieldByName('cdCategoriaNivel1').AsString) + trim(DM.QOrigem.FieldByName('cdCategoriaNivel2').AsString) +
      trim(DM.QOrigem.FieldByName('cdCategoriaNivel3').AsString) + trim(DM.QOrigem.FieldByName('cdCategoriaNivel4').AsString);
    nv5 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel5').AsInteger);
    nv6 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel6').AsInteger);
    nv7 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel7').AsInteger);
    nv8 := FORMATCURR('00', DM.QOrigem.FieldByName('cdCategoriaNivel8').AsInteger);
    CODRE := nv4 + nv5 + nv6 + nv7 + nv8;
    sinal := 1;
    CODRE := Formata_CODRE(CODRE);

    DM.QDESTINO.append;
    DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);

    if Traz_Fundo(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString) <> '' then
      DM.QDESTINO.FieldByName('fundo').AsString := Traz_Fundo(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);

    DM.QDESTINO.FieldByName('id_cdUnidadeGestora').AsString := trim(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);
    DM.QDESTINO.FieldByName('id_cdReceita').AsString := trim(DM.QOrigem.FieldByName('cdReceita').AsString);

    if Ano.Value > 2012 then
    begin
        if Ficha_Repete then
        begin
          inc(FICHA_NEW);
          DM.QDESTINO.FieldByName('FICHA').AsInteger := FICHA_NEW;
        end
        else
        begin
          DM.QDESTINO.FieldByName('FICHA').AsInteger := DM.QOrigem.FieldByName('cdReceita').AsInteger;
        end;
    end
    else
       DM.QDESTINO.FieldByName('FICHA').AsInteger := DM.QOrigem.FieldByName('cdReceita').AsInteger;

    DM.QDESTINO.FieldByName('esfera').AsString := '10';

    if Ano.Value > 2012 then
    begin
      DM.QDESTINO.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE,DM.QOrigem.FieldByName('dsNaturezaReceita').AsString, DM.QOrigem.FieldByName('dsDetalhadaNaturezaReceita').AsString);
      DM.QDESTINO.FieldByName('legis').AsString := Tira_Char39(60, DM.QOrigem.FieldByName('dsLegislacaoReceita').AsString);
    end
    else
      DM.QDESTINO.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE,DM.QOrigem.FieldByName('dsCatEconomica').AsString, DM.QOrigem.FieldByName('dsCatDetalhada').AsString);


    DM.QDESTINO.FieldByName('TOTOR').ascurrency := DM.QOrigem.FieldByName('vlMovimento').ascurrency * sinal;

    DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', DM.QOrigem.FieldByName('cdFonteRecurso').AsInteger),
      DM.QOrigem.FieldByName('dsFonteRecurso').AsString);
    DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???'); // dm.QOrigem.FieldByName('foncodigo').AsString);
    DM.QDestino.FieldByName('FONINDUSO').AsString := '0';

    if ((copy(CODRE, 1, 4) = '1112') or (copy(CODRE, 1, 4) = '1113') or (copy(CODRE, 1, 10) = '1721.01.02') or (copy(CODRE, 1, 10) = '1721.01.05') or
      (copy(CODRE, 1, 10) = '1722.01.01') or (copy(CODRE, 1, 10) = '1722.01.02') or (copy(CODRE, 1, 10) = '1722.01.04') or (copy(CODRE, 1, 7) = '1911.38') or
      (copy(CODRE, 1, 7) = '1911.39') or (copy(CODRE, 1, 7) = '1911.40') or (copy(CODRE, 1, 7) = '1913.11') or (copy(CODRE, 1, 7) = '1913.12') or
      (copy(CODRE, 1, 7) = '1913.13') or (copy(CODRE, 1, 7) = '1931.11') or (copy(CODRE, 1, 7) = '1931.12') or (copy(CODRE, 1, 7) = '1931.13') or
      (copy(CODRE, 1, 7) = '1721.36')) then
    begin
      DM.QDESTINO.FieldByName('tipo').AsString := 'ED';
      DM.QDESTINO.FieldByName('PERCE').AsString := '25';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
    end
    else if ((copy(CODRE, 1, 7) = '1721.35') or (copy(CODRE, 1, 7) = '1761.02') or (copy(CODRE, 1, 7) = '1762.02') or (copy(CODRE, 1, 7) = '1763.02') or
      (copy(CODRE, 1, 7) = '2421.02') or (copy(CODRE, 1, 7) = '2422.02') or (copy(CODRE, 1, 7) = '2423.02') or (copy(CODRE, 1, 7) = '2471.02') or
      (copy(CODRE, 1, 7) = '2472.02') or (copy(CODRE, 1, 7) = '2473.02') or (copy(CODRE, 1, 10) = '1325.01.05')) then
    begin
      DM.QDESTINO.FieldByName('tipo').AsString := 'ED';
      DM.QDESTINO.FieldByName('PERCE').AsString := '100';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
    end
    else if ((copy(CODRE, 1, 7) = '1724.01') OR (copy(CODRE, 1, 7) = '1724.02') or (copy(CODRE, 1, 10) = '1325.01.01') or (copy(CODRE, 1, 10) = '1325.01.02')) then
    begin
      DM.QDESTINO.FieldByName('tipo').AsString := 'FU';
      DM.QDESTINO.FieldByName('PERCE').AsString := '100';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '200';
    end
    else if ((copy(CODRE, 1, 7) = '1600.05') or (copy(CODRE, 1, 7) = '1600.14') or (copy(CODRE, 1, 7) = '1721.33') or (copy(CODRE, 1, 7) = '1722.33') or
      (copy(CODRE, 1, 7) = '1723.01') or (copy(CODRE, 1, 7) = '1761.01') or (copy(CODRE, 1, 7) = '1762.00') or (copy(CODRE, 1, 7) = '1762.01') or
      (copy(CODRE, 1, 7) = '1763.01') or (copy(CODRE, 1, 7) = '2421.01') or (copy(CODRE, 1, 7) = '2422.01') or (copy(CODRE, 1, 7) = '2423.01') or
      (copy(CODRE, 1, 7) = '2471.01') or (copy(CODRE, 1, 7) = '2472.01') or (copy(CODRE, 1, 7) = '2473.01') or (copy(CODRE, 1, 10) = '1325.01.03')) then
    begin
      DM.QDESTINO.FieldByName('tipo').AsString := 'SD';
      DM.QDESTINO.FieldByName('PERCE').AsString := '100';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '300';
    end
    else if ((copy(CODRE, 1, 4) = '1210') or (copy(CODRE, 1, 4) = '1328') or (copy(CODRE, 1, 4) = '7210')) then
    begin
      DM.QDESTINO.FieldByName('tipo').AsString := 'PR';
      DM.QDESTINO.FieldByName('PERCE').AsString := '0';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '600';
    end
    else
    begin
      DM.QDESTINO.FieldByName('tipo').AsString := 'NV';
      DM.QDESTINO.FieldByName('PERCE').AsString := '0';
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
    end;
    DM.QDESTINO.FieldByName('vintipo').AsString := DM.QDESTINO.FieldByName('VINGRUPO').AsString;

    DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
    if DM.QOrigem.FieldByName('cdAplicacao').AsString <> '0000000' then
    begin
      DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(PEGANUMERO(DM.QOrigem.FieldByName('cdAplicacao').AsString), 1, 3);
      DM.QDESTINO.FieldByName('VINCODIGO').AsString := copy(PEGANUMERO(DM.QOrigem.FieldByName('cdAplicacao').AsString), 5, 3);
    end;
    Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, DM.QOrigem.FieldByName('nmAplicacao').AsString);
    DM.QDESTINO.post;
    DM.QDESTINO.ApplyUpdates(-1);
    DM.QOrigem.next;
  END;

  STATUS.caption := 'Salvando Recorc... ';
  STATUS.update;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'Recorc OK';
  STATUS.update;
  memoStatus.Lines.Add('Recorc OK');

  // ******************************  FICHAS DE DEDUCAO *********************************
  SITU.caption := 'ORÇAMENTO DA RECEITA DEDUÇÕES...';
  SITU.update;
  DM.QDESTINO.close;
  DM.QDESTINO.OPEN;
  DM.cdsTemp.close;
  DM.cdsTemp.Commandtext := 'select max(ficha) as ficha from recorc';
  DM.cdsTemp.OPEN;
  FICHA_NEW := DM.cdsTemp.FieldByName('ficha').AsInteger;

  DM.QOrigem.close;

  if Ano.Value > 2012 then
  begin
    DM.QOrigem.Commandtext :=
        'SELECT r.[cdUnidadeGestora] ,r.[cdReceita],r.cdFonteRecurso,dr.dsFonteRecurso, c.cdAplicacao,c.nmAplicacao,dr.dsNaturezaReceita,dr.dsDetalhadaNaturezaReceita, ' +
        '       coalesce(sum(m.vlMovimento),0) as vlmovimento ' +
        'FROM ['+BNC_CPE+'].[dbo].[RECEITA] r ' +
        'inner join ['+BNC_CPE+'].[dbo].MOVIMENTO m on (m.cdUnidadeGestora= r.cdUnidadeGestora and r.cdReceita=m.cdReceita and ' +
        '	                                       DAY(m.dtMovimento)=1 and MONTH(m.dtMovimento)=1 and m.cdTipoMovimento= 470 and m.cdHistoricoPadrao <> 470) ' +
        'inner join ['+BNC_CPE+'].dbo.dataview_receita dr on (dr.cdUnidadeGestora=r.cdUnidadeGestora and dr.cdReceita = r.cdReceita and dr.cdAplicacao = r.cdAplicacao ) ' +
        'left join ['+BNC_CPE+'].[dbo].[DATAVIEW_NATUREZA_RECEITA] l on (l.idNaturezaReceita=r.idNaturezaReceita) ' +
        'left join ['+BNC_CPE+'].dbo.CodigoAplicacao c on (c.idCodigoAplicacao =r.cdAplicacao) ' +
        'group by r.[cdUnidadeGestora], r.[cdReceita], r.cdFonteRecurso, dr.dsFonteRecurso, ' +
        'c.cdAplicacao, c.nmAplicacao, dr.dsNaturezaReceita,dr.dsDetalhadaNaturezaReceita ' +
        'order by 1,2';
    DM.QOrigem.OPEN;
    DM.QOrigem.first;
  end
  else
  begin
    DM.QOrigem.Commandtext :=
          'select cdunidadegestora,cdreceita,sum(vlmovimento)VLMOVIMENTO ' +
          'from ['+BNC_CPE+'].[dbo].movimento ' +
          'where (movimento.cdHISTORICOSISTEMA = 606 ) AND (movimento.cdtipomovimento = 470 or movimento.cdtipomovimento = 471 ) ' +
          'group by cdunidadegestora, cdreceita ' +
          'order by cdreceita';
    DM.QOrigem.OPEN;
    DM.QOrigem.first;

    DM.LocalizaOrigem4.close;
    DM.LocalizaOrigem4.CommandText := 'select cdreceita,cdcategorianivel1, cdcategorianivel2, cdcategorianivel3, cdcategorianivel4, cdcategorianivel5, cdcategorianivel6, cdcategorianivel7, cdcategorianivel8 ' +
                                       'from ['+BNC_CPE+'].dbo.Receita';
    DM.LocalizaOrigem4.open;
    DM.LocalizaOrigem4.IndexFieldNames := 'cdreceita';

    DM.LocalizaOrigem5.close;
    DM.LocalizaOrigem5.CommandText := 'select cdcategorianivel1, cdcategorianivel2, cdcategorianivel3, cdcategorianivel4, cdcategorianivel5, cdcategorianivel6, cdcategorianivel7, cdcategorianivel8, dsCatEconomica, dsCatDetalhada ' +
                                       'from ['+BNC_CPC+'].dbo.CategoriaEconomica';
    DM.LocalizaOrigem5.open;
    DM.LocalizaOrigem5.IndexFieldNames := 'cdcategorianivel1; cdcategorianivel2; cdcategorianivel3; cdcategorianivel4; cdcategorianivel5; cdcategorianivel6; cdcategorianivel7; cdcategorianivel8';
  end;


  DEDU := 0;
  desdobro := 0;

  p.Max := DM.QOrigem.RecordCount;
  while not DM.QOrigem.eof do
  begin
    p.Position := DM.QOrigem.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;
    DM.QDESTINO.append;
    sinal := -1;
    // CODRE := trim(DM.QOrigem.FieldByName('codre').AsString);
    // if ((copy(CODRE, 1, 4) = '9721') or (copy(CODRE, 1, 4) = '9722')) then
    // begin
    inc(desdobro);
    CODRE := '95100000' + FORMATCURR('00', desdobro);
    // end
    // else if (copy(CODRE, 1, 4) = '9172') then
    // begin
    // sinal := sinal * (-1);
    // CODRE := '9' + copy(CODRE, 3, Length(CODRE));
    // end;
    CODRE := Formata_CODRE(CODRE);
    // Dm.QDestino.FieldByName('ID_re_cod').AsString := trim(DM.QORIGEM.FieldByName('re_cod').AsString);


    DM.QDESTINO.FieldByName('EMPRESA').AsString := Traz_Entidade(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString);

    // DM.QDESTINO.FieldByName('ID_red_gestora').AsString := trim(DM.QOrigem.FieldByName('red_gestora').AsString);
    // DM.QDESTINO.FieldByName('ID_cod_ficha').AsString := trim(DM.QOrigem.FieldByName('cod_ficha').AsString);



    if ANO.Value > 2012 then
      DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', DM.QOrigem.FieldByName('cdFonteRecurso').AsInteger),
        DM.QOrigem.FieldByName('dsFonteRecurso').AsString)
    else
      DM.QDESTINO.FieldByName('FONGRUPO').AsString := Existe_FonGrupo(FORMATCURR('00', 01), '');

    DM.QDESTINO.FieldByName('FONCODIGO').AsString := Existe_FonCodigo('00', '???'); // DM.QOrigem.FieldByName('foncodigo').AsString);
    DM.QDestino.FieldByName('FONINDUSO').AsString := '0';

    if Ano.Value > 2012 then
    begin
        if DM.QOrigem.FieldByName('cdAplicacao').AsString <> '0000000' then
        begin
          DM.QDESTINO.FieldByName('VINGRUPO').AsString := copy(PEGANUMERO(DM.QOrigem.FieldByName('cdAplicacao').AsString), 1, 3);
          DM.QDESTINO.FieldByName('VINCODIGO').AsString := copy(PEGANUMERO(DM.QOrigem.FieldByName('cdAplicacao').AsString), 5, 3);
        end
        else
        begin
          DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
          DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
        end;
        Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, DM.QOrigem.FieldByName('nmAplicacao').AsString);
    end
    else
    begin
          DM.QDESTINO.FieldByName('VINGRUPO').AsString := '110';
          DM.QDESTINO.FieldByName('VINCODIGO').AsString := '000';
          Existe_Vincodigo(DM.QDESTINO.FieldByName('VINGRUPO').AsString, DM.QDESTINO.FieldByName('VINCODIGO').AsString, '');
    end;





    inc(FICHA_NEW);
    DM.QDESTINO.FieldByName('FICHA').AsInteger := FICHA_NEW; // DM.QOrigem.FieldByName('cdReceita').AsInteger;

    if Ano.Value > 2012 then
        DM.QDESTINO.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, ('Dedução do FUNDEB - ' + DM.QOrigem.FieldByName('dsNaturezaReceita').AsString), ('Dedução do FUNDEB - ' + DM.QOrigem.FieldByName('dsDetalhadaNaturezaReceita').AsString))
    else
    begin
        DM.LocalizaOrigem4.First;
        DM.LocalizaOrigem5.First;

        if DM.LocalizaOrigem4.FindKey([DM.QOrigem.FieldByName('cdreceita').AsString]) then
        begin
              if DM.LocalizaOrigem5.FindKey([DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel1').AsString,
                                             DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel2').AsString,
                                             DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel3').AsString,
                                             DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel4').AsString,
                                             DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel5').AsString,
                                             DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel6').AsString,
                                             DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel7').AsString,
                                             DM.LocalizaOrigem4.FieldByName('cdCategoriaNivel8').AsString]) then
              begin
                  DM.QDESTINO.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, ('Dedução do FUNDEB - '+trim(DM.LocalizaOrigem5.FieldByName('dsCatEconomica').AsString)), ('Dedução do FUNDEB - '+trim(DM.LocalizaOrigem5.FieldByName('dsCatDetalhada').AsString)));
              end
              else
                DM.QDESTINO.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, ('Dedução do FUNDEB - ??????'), ('Dedução do FUNDEB - ??????'));
        end
        else
           DM.QDESTINO.FieldByName('CODRE').AsString := Existe_RECTAB(CODRE, ('Dedução do FUNDEB - ??????'), ('Dedução do FUNDEB - ??????'));
    end;


    DM.QDESTINO.FieldByName('TOTOR').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency * sinal;
    DM.QDESTINO.FieldByName('TIPO').AsString := 'NV';
    DM.QDESTINO.ApplyUpdates(-1);

    DM.QAUX.close;
    DM.QAUX.Commandtext := 'SELECT * FROM RECORC_deducoes '; // WHERE ficha = ' + DM.QOrigem.FieldByName('re_ficha').AsString;
    DM.QAUX.OPEN;
    // IF Dm.QAux.IsEmpty THEN
    DM.QAUX.append;
    // else
    // Dm.QAux.edit;
    // CODRE := Formata_CODRE(copy(PEGANUMERO(DM.QOrigem.FieldByName('codre').AsString), 2, Length(PEGANUMERO(DM.QOrigem.FieldByName('codre').AsString))));
    // CODRE := '1'+ copy(Formata_CODRE(DM.QOrigem.FieldByName('codre').AsString),2,12);
    // if copy(codre,1,4)<>'9510' then
    // CODRE := '1'+copy(codre,2,12);
    DM.QAUX.FieldByName('CODRE_REF').AsString := DM.QDESTINO.FieldByName('CODRE').AsString;
    DM.cdsTemp.close;
    DM.cdsTemp.Commandtext := 'select ficha,codre from recorc where id_cdUnidadeGestora = ''' + trim(DM.QOrigem.FieldByName('cdUnidadeGestora').AsString) + ''' ' +
      ' and id_cdReceita = ''' + trim(DM.QOrigem.FieldByName('cdReceita').AsString) + ''' ';
    DM.cdsTemp.OPEN;
    DM.QAUX.FieldByName('CODRE').AsString := DM.cdsTemp.FieldByName('codre').AsString;
    DM.QAUX.FieldByName('VINGRUPO').AsString := DM.QDESTINO.FieldByName('VINGRUPO').AsString;
    DM.QAUX.FieldByName('VINCODIGO').AsString := DM.QDESTINO.FieldByName('VINCODIGO').AsString;
    DM.QAUX.FieldByName('VALOR').ascurrency := DM.QOrigem.FieldByName('vlmovimento').ascurrency * sinal; // DM.QOrigem.FieldByName('re_vprev').AsCurrency;

    // DM.cdsTemp.close;
    // DM.cdsTemp.Commandtext := 'select ficha from recorc where codre = ''' + CODRE + ''' '+
    // ' and empresa = ''' + trim(DM.QOrigem.FieldByName('empresa').AsString) + ''' ';
    // DM.cdsTemp.OPEN;
    // if DM.cdsTemp.IsEmpty then
    // begin
    // DM.cdsTemp.close;
    // DM.cdsTemp.Commandtext := 'select ficha from recorc where codre like ''' + copy(CODRE,1,9) + '%'' '+
    // ' and empresa = ''' + trim(DM.QOrigem.FieldByName('empresa').AsString) + ''' ';
    // DM.cdsTemp.OPEN;
    // if DM.cdsTemp.IsEmpty then
    // begin
    // DM.cdsTemp.close;
    // DM.cdsTemp.Commandtext := 'select ficha from recorc where codre like ''' + copy(CODRE,1,9) + '%'' ';
    // DM.cdsTemp.OPEN;
    // end;
    // end;
    DM.QAUX.FieldByName('ficha').AsString := DM.cdsTemp.FieldByName('ficha').AsString;
    DM.QAUX.ApplyUpdates(-1);
    DM.QOrigem.next;
  end;

  STATUS.caption := 'Deduções OK';
  STATUS.update;
  memoStatus.Lines.Add('Recorc Deducoes OK');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.Ordens_Credito_OR;
VAR X: integer; ordcre_new: integer;
BEGIN
  SITU.caption := 'ORDENS DE CRÉDITO OR...';
  SITU.update;
  // CriaCampo('ORDCRE', 'ID_lr_seq', '20');
  // CriaCampo('ORDCRE', 'ID_lr_banco', '20');
  CriaCampo('ORDCRE', 'MODULO', '20');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE where  nome not like ''Devol.%'' ' +
    ' and TRANSFENTIDADE IS NULL AND ORDPG IS NULL  AND NOT EXISTS (SELECT Z.ORDCRE FROM DESPES Z WHERE Z.ORDCRE = ORDCRE.ORDCRE AND Z.TPEM = ''DA'') ' +
    ' AND MODULO = ''RECEITA_OR'' ';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT max(coalesce(ordcre,0)) as ordcre FROM ORDCRE  ';
  DM.QDESTINO.OPEN;
  ordcre_new := DM.QDESTINO.FieldByName('ordcre').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM ORDCRE where ordcre = -1 ';
  DM.QDESTINO.OPEN;

  DM.Localiza.close;
  // dm.Localiza.Commandtext := 'SELECT DTLAN,CONTA,cast(SUM(VAREC) as DOUBLE PRECISION) as varec FROM RECEIT GROUP BY DTLAN,CONTA';
  DM.Localiza.Commandtext := ' SELECT DTLAN,CONTA,CONTAD, cast(VAREC as double precision) as varec,histo, ID_nrsequencia, ID_concilia ' +
    '  FROM RECEIT where pkemp is null and transfentidade is null AND MODULO = ''RECEITA_OR'' order by dtlan ';
  DM.Localiza.OPEN;
  DM.Localiza.first;

  p.Max := DM.Localiza.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  APPLICATION.ProcessMessages;
  X := 0;
  WHILE NOT DM.Localiza.eof DO
  BEGIN
    inc(X);
    p.Position := DM.Localiza.RecNo;
    EM.caption := inttostr(DM.Localiza.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    APPLICATION.ProcessMessages;
    DM.QDESTINO.append;
    inc(ordcre_new);
    DM.QDESTINO.FieldByName('ORDCRE').AsInteger := ordcre_new;
    DM.QDESTINO.FieldByName('MODULO').AsString := 'RECEITA_OR';
    DM.QDESTINO.FieldByName('DTLAN').AsString := DM.Localiza.FieldByName('DTLAN').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequencia').AsString := DM.Localiza.FieldByName('ID_nrsequencia').AsString;
    DM.QDESTINO.FieldByName('ID_concilia').AsString := DM.Localiza.FieldByName('ID_concilia').AsString;
    // DM.QDESTINO.FieldByName('ID_lr_ano').AsString := DM.Localiza.FieldByName('ID_lr_ano').AsString;
    // DM.QDESTINO.FieldByName('ID_lr_banco').AsString := DM.Localiza.FieldByName('ID_lr_banco').AsString;
    DM.QDESTINO.FieldByName('CONTA').AsString := DM.Localiza.FieldByName('CONTA').AsString;
    DM.QDESTINO.FieldByName('CONTAD').AsString := DM.Localiza.FieldByName('CONTAD').AsString;
    DM.QDESTINO.FieldByName('NOME').AsString := DM.Localiza.FieldByName('histo').AsString;
    DM.QDESTINO.FieldByName('VALOR').ascurrency := DM.Localiza.FieldByName('VAREC').ascurrency;;
    DM.QDESTINO.post;
    DM.Localiza.next;
    IF X >= 3000 THEN
    BEGIN
      DM.QDESTINO.ApplyUpdates(-1);
      X := 0;
    END;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'ORDENS DE CRÉDITO OR... OK';
  STATUS.update;
  Atualiza_Generator;
  memoStatus.Lines.Add('ORDENS DE CRÉDITO OR... OK');
  Desconecta_Conecta;
end;

PROCEDURE TTfrmprincipal_Conversao.Ordens_Credito_EX;
VAR X: integer; ordcre_new: integer;
BEGIN
  SITU.caption := 'ORDENS DE CRÉDITO EX...';
  SITU.update;
  // CriaCampo('ORDCRE', 'ID_lr_ano', '20');
  // CriaCampo('ORDCRE', 'ID_lr_ficha', '20');
  // CriaCampo('ORDCRE', 'ID_lr_seq', '20');
  // CriaCampo('ORDCRE', 'ID_lr_banco', '20');
  // CriaCampo('ORDCRE', 'MODULO', '20');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE where nome not like ''Devol.%'' ' +
    ' and TRANSFENTIDADE IS NULL AND ORDPG IS NULL  AND NOT EXISTS (SELECT Z.ORDCRE FROM DESPES Z WHERE Z.ORDCRE = ORDCRE.ORDCRE AND Z.TPEM = ''DA'') ' +
    ' AND MODULO = ''RECEITA_EX'' ';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT max(coalesce(ordcre,0)) as ordcre FROM ORDCRE  ';
  DM.QDESTINO.OPEN;
  ordcre_new := DM.QDESTINO.FieldByName('ordcre').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM ORDCRE where ordcre = -1 ';
  DM.QDESTINO.OPEN;

  DM.Localiza.close;
  // dm.Localiza.Commandtext := 'SELECT DTLAN,CONTA,cast(SUM(VAREC) as DOUBLE PRECISION) as varec FROM RECEIT GROUP BY DTLAN,CONTA';
  DM.Localiza.Commandtext := ' SELECT DTLAN,CONTA,CONTAD, cast(VAREC as double precision) as varec,histo, id_nrsequencia, ID_concilia ' +
    '  FROM RECEIT where pkemp is null and transfentidade is null AND MODULO = ''RECEITA_EX'' order by dtlan ';
  DM.Localiza.OPEN;
  DM.Localiza.first;

  p.Max := DM.Localiza.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  APPLICATION.ProcessMessages;
  X := 0;
  WHILE NOT DM.Localiza.eof DO
  BEGIN
    inc(X);
    p.Position := DM.Localiza.RecNo;
    EM.caption := inttostr(DM.Localiza.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    APPLICATION.ProcessMessages;
    DM.QDESTINO.append;
    inc(ordcre_new);
    DM.QDESTINO.FieldByName('ORDCRE').AsInteger := ordcre_new;
    DM.QDESTINO.FieldByName('MODULO').AsString := 'RECEITA_EX';
    DM.QDESTINO.FieldByName('DTLAN').AsString := DM.Localiza.FieldByName('DTLAN').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequencia').AsString := DM.Localiza.FieldByName('ID_nrsequencia').AsString;
    DM.QDESTINO.FieldByName('ID_concilia').AsString := DM.Localiza.FieldByName('ID_concilia').AsString;
    // DM.QDESTINO.FieldByName('ID_lr_ano').AsString := DM.Localiza.FieldByName('ID_lr_ano').AsString;
    // DM.QDESTINO.FieldByName('ID_lr_banco').AsString := DM.Localiza.FieldByName('ID_lr_banco').AsString;
    DM.QDESTINO.FieldByName('CONTA').AsString := DM.Localiza.FieldByName('CONTA').AsString;
    DM.QDESTINO.FieldByName('CONTAD').AsString := DM.Localiza.FieldByName('CONTAD').AsString;
    DM.QDESTINO.FieldByName('NOME').AsString := DM.Localiza.FieldByName('histo').AsString;
    DM.QDESTINO.FieldByName('VALOR').ascurrency := DM.Localiza.FieldByName('VAREC').ascurrency;;
    DM.QDESTINO.post;
    DM.Localiza.next;
    IF X >= 3000 THEN
    BEGIN
      DM.QDESTINO.ApplyUpdates(-1);
      X := 0;
    END;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'ORDENS DE CRÉDITO EX... OK';
  STATUS.update;
  Atualiza_Generator;
  memoStatus.Lines.Add('ORDENS DE CRÉDITO EX... OK');
  Desconecta_Conecta;
END;

PROCEDURE TTfrmprincipal_Conversao.Ordens_Credito_EX_OR;
VAR X: integer; ordcre_new: integer;
BEGIN
  SITU.caption := 'ORDENS DE CRÉDITO EX -> OR...';
  SITU.update;
   CriaCampo('ORDCRE', 'ID_nrsequenciaSISTEMA_TRANSF', '20');
   CriaCampo('ORDCRE', 'ID_nrsequencia_TRANSF', '20');
  // CriaCampo('ORDCRE', 'ID_lr_seq', '20');
  // CriaCampo('ORDCRE', 'ID_lr_banco', '20');
  // CriaCampo('ORDCRE', 'MODULO', '20');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE where MODULO = ''EX->OR'' ';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT max(coalesce(ordcre,0)) as ordcre FROM ORDCRE  ';
  DM.QDESTINO.OPEN;
  ordcre_new := DM.QDESTINO.FieldByName('ordcre').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM ORDCRE where ordcre = -1 ';
  DM.QDESTINO.OPEN;

  DM.Localiza.close;
  // dm.Localiza.Commandtext := 'SELECT DTLAN,CONTA,cast(SUM(VAREC) as DOUBLE PRECISION) as varec FROM RECEIT GROUP BY DTLAN,CONTA';
  DM.Localiza.Commandtext := ' SELECT DTLAN,CONTA,CONTAD, cast(VAREC as double precision) as varec,histo, ID_nrsequencia_TRANSF, ID_nrsequenciaSISTEMA_TRANSF ,MODULO, id_concilia ' +
    '  FROM RECEIT where pkemp is null and transfentidade is null AND MODULO = ''EX->OR'' order by dtlan ';
  DM.Localiza.OPEN;
  DM.Localiza.first;

  p.Max := DM.Localiza.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  APPLICATION.ProcessMessages;
  X := 0;
  WHILE NOT DM.Localiza.eof DO
  BEGIN
    inc(X);
    p.Position := DM.Localiza.RecNo;
    EM.caption := inttostr(DM.Localiza.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    APPLICATION.ProcessMessages;
    DM.QDESTINO.append;
    inc(ordcre_new);
    DM.QDESTINO.FieldByName('ORDCRE').AsInteger := ordcre_new;
    DM.QDESTINO.FieldByName('MODULO').AsString := DM.Localiza.FieldByName('modulo').AsString;
    DM.QDESTINO.FieldByName('DTLAN').AsString := DM.Localiza.FieldByName('DTLAN').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequencia_TRANSF').AsString := DM.Localiza.FieldByName('ID_nrsequencia_TRANSF').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequenciaSISTEMA_TRANSF').AsString := DM.Localiza.FieldByName('ID_nrsequenciaSISTEMA_TRANSF').AsString;
    DM.QDESTINO.FieldByName('id_concilia').AsString := DM.Localiza.FieldByName('id_concilia').AsString;
    // DM.QDESTINO.FieldByName('ID_lr_banco').AsString := DM.Localiza.FieldByName('ID_lr_banco').AsString;
    DM.QDESTINO.FieldByName('CONTA').AsString := DM.Localiza.FieldByName('CONTA').AsString;
    DM.QDESTINO.FieldByName('CONTAD').AsString := DM.Localiza.FieldByName('CONTAD').AsString;
    DM.QDESTINO.FieldByName('NOME').AsString := DM.Localiza.FieldByName('histo').AsString;
    DM.QDESTINO.FieldByName('VALOR').ascurrency := DM.Localiza.FieldByName('VAREC').ascurrency;;
    DM.QDESTINO.post;
    DM.Localiza.next;
    IF X >= 3000 THEN
    BEGIN
      DM.QDESTINO.ApplyUpdates(-1);
      X := 0;
    END;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'ORDENS DE CRÉDITO EX -> OR... OK';
  STATUS.update;
  Atualiza_Generator;
  memoStatus.Lines.Add('ORDENS DE CRÉDITO EX -> OR... OK');
  Desconecta_Conecta;
END;

procedure TTfrmprincipal_Conversao.Ordens_Credito_Classificar;
VAR X: integer; ordcre_new: integer;
BEGIN
  SITU.caption := 'ORDENS DE CRÉDITO Classificar...';
  SITU.update;
   CriaCampo('ORDCRE', 'ID_nrsequenciaSISTEMA_TRANSF', '20');
   CriaCampo('ORDCRE', 'ID_nrsequencia_TRANSF', '20');
  // CriaCampo('ORDCRE', 'ID_lr_seq', '20');
  // CriaCampo('ORDCRE', 'ID_lr_banco', '20');
  // CriaCampo('ORDCRE', 'MODULO', '20');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE where MODULO = ''CLASSIF'' ';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT max(coalesce(ordcre,0)) as ordcre FROM ORDCRE  ';
  DM.QDESTINO.OPEN;
  ordcre_new := DM.QDESTINO.FieldByName('ordcre').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM ORDCRE where ordcre = -1 ';
  DM.QDESTINO.OPEN;

  DM.Localiza.close;
  // dm.Localiza.Commandtext := 'SELECT DTLAN,CONTA,cast(SUM(VAREC) as DOUBLE PRECISION) as varec FROM RECEIT GROUP BY DTLAN,CONTA';
  DM.Localiza.Commandtext := ' SELECT DTLAN,CONTA, contad,cast(VAREC as double precision) as varec,histo, ID_nrsequencia_TRANSF, ID_nrsequenciaSISTEMA_TRANSF ,MODULO, id_concilia ' +
    '  FROM RECEIT where pkemp is null and transfentidade is null AND MODULO = ''CLASSIF'' order by dtlan ';
  DM.Localiza.OPEN;
  DM.Localiza.first;

  p.Max := DM.Localiza.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  APPLICATION.ProcessMessages;
  X := 0;
  WHILE NOT DM.Localiza.eof DO
  BEGIN
    inc(X);
    p.Position := DM.Localiza.RecNo;
    EM.caption := inttostr(DM.Localiza.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    APPLICATION.ProcessMessages;
    DM.QDESTINO.append;
    inc(ordcre_new);
    DM.QDESTINO.FieldByName('ORDCRE').AsInteger := ordcre_new;
    DM.QDESTINO.FieldByName('MODULO').AsString := DM.Localiza.FieldByName('modulo').AsString;
    DM.QDESTINO.FieldByName('DTLAN').AsString := DM.Localiza.FieldByName('DTLAN').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequencia_TRANSF').AsString := DM.Localiza.FieldByName('ID_nrsequencia_TRANSF').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequenciaSISTEMA_TRANSF').AsString := DM.Localiza.FieldByName('ID_nrsequenciaSISTEMA_TRANSF').AsString;
    DM.QDESTINO.FieldByName('id_concilia').AsString := DM.Localiza.FieldByName('id_concilia').AsString;
    // DM.QDESTINO.FieldByName('ID_lr_banco').AsString := DM.Localiza.FieldByName('ID_lr_banco').AsString;
    DM.QDESTINO.FieldByName('CONTA').AsString := DM.Localiza.FieldByName('CONTA').AsString;
    DM.QDESTINO.FieldByName('CONTAD').AsString := DM.Localiza.FieldByName('CONTAD').AsString;
    DM.QDESTINO.FieldByName('NOME').AsString := DM.Localiza.FieldByName('histo').AsString;
    DM.QDESTINO.FieldByName('VALOR').ascurrency := DM.Localiza.FieldByName('VAREC').ascurrency;;
    DM.QDESTINO.post;
    DM.Localiza.next;
    IF X >= 3000 THEN
    BEGIN
      DM.QDESTINO.ApplyUpdates(-1);
      X := 0;
    END;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'ORDENS DE CRÉDITO CLASSIFICAR... OK';
  STATUS.update;
  Atualiza_Generator;
  memoStatus.Lines.Add('ORDENS DE CRÉDITO CLASSIFICAR... OK');
  Desconecta_Conecta;
end;
procedure TTfrmprincipal_Conversao.Ordens_Credito_Transf_EX;
VAR X: integer; ordcre_new: integer;
BEGIN
  SITU.caption := 'ORDENS DE CRÉDITO Transferencia entre extras...';
  SITU.update;
   CriaCampo('ORDCRE', 'ID_nrsequenciaSISTEMA_TRANSF', '20');
   CriaCampo('ORDCRE', 'ID_nrsequencia_TRANSF', '20');
  // CriaCampo('ORDCRE', 'ID_lr_seq', '20');
  // CriaCampo('ORDCRE', 'ID_lr_banco', '20');
  // CriaCampo('ORDCRE', 'MODULO', '20');
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'DELETE FROM ORDCRE where MODULO = ''EX-EX'' ';
  DM.Atualiza.ExecSQL;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT max(coalesce(ordcre,0)) as ordcre FROM ORDCRE  ';
  DM.QDESTINO.OPEN;
  ordcre_new := DM.QDESTINO.FieldByName('ordcre').AsInteger;

  DM.QDESTINO.close;
  DM.QDESTINO.Commandtext := 'SELECT * FROM ORDCRE where ordcre = -1 ';
  DM.QDESTINO.OPEN;

  DM.Localiza.close;
  // dm.Localiza.Commandtext := 'SELECT DTLAN,CONTA,cast(SUM(VAREC) as DOUBLE PRECISION) as varec FROM RECEIT GROUP BY DTLAN,CONTA';
  DM.Localiza.Commandtext := ' SELECT DTLAN,CONTA, contad,cast(VAREC as double precision) as varec,histo, ID_nrsequencia_TRANSF, ID_nrsequenciaSISTEMA_TRANSF ,MODULO, id_concilia ' +
    '  FROM RECEIT where pkemp is null and transfentidade is null AND MODULO = ''EX-EX'' order by dtlan ';
  DM.Localiza.OPEN;
  DM.Localiza.first;

  p.Max := DM.Localiza.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;
  APPLICATION.ProcessMessages;
  X := 0;
  WHILE NOT DM.Localiza.eof DO
  BEGIN
    inc(X);
    p.Position := DM.Localiza.RecNo;
    EM.caption := inttostr(DM.Localiza.RecNo) + ' de ' + inttostr(p.Max);
    EM.update;
    APPLICATION.ProcessMessages;
    DM.QDESTINO.append;
    inc(ordcre_new);
    DM.QDESTINO.FieldByName('ORDCRE').AsInteger := ordcre_new;
    DM.QDESTINO.FieldByName('MODULO').AsString := DM.Localiza.FieldByName('modulo').AsString;
    DM.QDESTINO.FieldByName('DTLAN').AsString := DM.Localiza.FieldByName('DTLAN').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequencia_TRANSF').AsString := DM.Localiza.FieldByName('ID_nrsequencia_TRANSF').AsString;
    DM.QDESTINO.FieldByName('ID_nrsequenciaSISTEMA_TRANSF').AsString := DM.Localiza.FieldByName('ID_nrsequenciaSISTEMA_TRANSF').AsString;
    DM.QDESTINO.FieldByName('id_concilia').AsString := DM.Localiza.FieldByName('id_concilia').AsString;
    // DM.QDESTINO.FieldByName('ID_lr_banco').AsString := DM.Localiza.FieldByName('ID_lr_banco').AsString;
    DM.QDESTINO.FieldByName('CONTA').AsString := DM.Localiza.FieldByName('CONTA').AsString;
    DM.QDESTINO.FieldByName('CONTAD').AsString := DM.Localiza.FieldByName('CONTAD').AsString;
    DM.QDESTINO.FieldByName('NOME').AsString := DM.Localiza.FieldByName('histo').AsString;
    DM.QDESTINO.FieldByName('VALOR').ascurrency := DM.Localiza.FieldByName('VAREC').ascurrency;;
    DM.QDESTINO.post;
    DM.Localiza.next;
    IF X >= 3000 THEN
    BEGIN
      DM.QDESTINO.ApplyUpdates(-1);
      X := 0;
    END;
  END;
  DM.QDESTINO.ApplyUpdates(-1);
  STATUS.caption := 'ORDENS DE CRÉDITO TRANSF ENTRE EXTRAS... OK';
  STATUS.update;
  Atualiza_Generator;
  memoStatus.Lines.Add('ORDENS DE CRÉDITO TRANSF ENTRE EXTRAS... OK');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Entrada_nao_Contabilizada;
var
  NLANC: Integer;
begin
  SITU.Caption := 'ENTRADA NÃO CONTABILIZADA CONSIDERADA PELO BANCO...';
  SITU.Update;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'SELECT MAX(NLANC) AS NLANC FROM ORDCAIBANCO ';
  dm.Localiza.OPEN;
  NLANC := dm.Localiza.FieldByName('NLANC').Asinteger;
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'delete from ordcaibanco where cast(credi as numeric(14,2)) <> 0';
  dm.ATUALIZA.ExecSQL;
  dm.QORIGEM.CLOSE;
  dm.QORIGEM.Commandtext := 'select distinct b.cdunidadegestora, b.cdcontacontabil, b.dtmovimento, b.vlmovimento ' + 'from ' + bnc_cpe + '.dbo.movimento B where (cdtipomovimento in (503)) and cdunidadegestora = 0';
  dm.QORIGEM.OPEN;
  P.Position := 0;
  P.Max := dm.QORIGEM.RecordCount;
  EM.Caption := inttostr(P.Position) + ' de ' + inttostr(P.Max);
  EM.Update;
  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'SELECT * FROM ORDCAIBANCO WHERE NLANC = -1';
  dm.QDESTINO.OPEN;
  dm.LOCALIZAORIGEM.CLOSE;
  dm.LOCALIZAORIGEM.Commandtext := ' select b.*, cast(substring(A.DSCOMPLHISTORICO,1,250) as varchar(250))  as nome ' + ' from ' + bnc_cpe + '.dbo.movimento B ' + ' left join ' + bnc_cpe + '.dbo.COMPLEMENTOHISTORICO  A on (A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA) ' + ' where ((b.cdtipomovimento in (503))) and b.cdunidadegestora = 0 order by b.dtmesconciliacao desc ';
  dm.LOCALIZAORIGEM.OPEN;
  while not dm.QORIGEM.eof do
  begin
    if trim(dm.QORIGEM.FieldByName('cdcontacontabil').AsString) = '3554' then
      Showmessage('');
    dm.LOCALIZAORIGEM.FILTER := 'cdcontacontabil = ''' + dm.QORIGEM.FieldByName('cdcontacontabil').AsString + ''' ' + 'and dtmovimento = ''' + validata(dm.QORIGEM.FieldByName('dtmovimento').AsString) + ''' ' + 'and vlmovimento = ''' + Stringreplace(dm.QORIGEM.FieldByName('vlmovimento').AsString, ',', '.', [RfReplaceAll]) + '''';
    dm.LOCALIZAORIGEM.FiLTERED := True;
    P.Position := dm.QORIGEM.RecNo;
    EM.Caption := inttostr(P.Position) + ' de ' + inttostr(P.Max);
    EM.Update;
    dm.LOCALIZAORIGEM.first;
    if not dm.LOCALIZAORIGEM.IsEmpty then
    begin
      inc(NLANC);
      dm.QDESTINO.APPEND;
      dm.QDESTINO.FieldByName('nlanc').Asinteger := NLANC;
      dm.QDESTINO.FieldByName('debit').AsFloat := 0;
      dm.QDESTINO.FieldByName('credi').AsFloat := dm.QORIGEM.FieldByName('vlmovimento').AsFloat;
      dm.QDESTINO.FieldByName('nome').AsString := dm.LOCALIZAORIGEM.FieldByName('nome').AsString;
      dm.QDESTINO.FieldByName('conta').AsString := Traz_Conta_Descon(dm.QORIGEM.FieldByName('cdunidadegestora').AsString, dm.QORIGEM.FieldByName('cdcontacontabil').AsString);
      if trim(dm.LOCALIZAORIGEM.FieldByName('nrdocumentopagto').AsString) <> '0' then
        dm.QDESTINO.FieldByName('cheqn').AsString := dm.LOCALIZAORIGEM.FieldByName('nrdocumentopagto').AsString;
      dm.QDESTINO.FieldByName('dtconcilia').AsString := validata(dm.QORIGEM.FieldByName('dtmovimento').AsString);
      if FORMATCURR('00', dm.LOCALIZAORIGEM.FieldByName('dtdiaconciliacao').Asinteger) <> '00' then
      begin
        dm.QDESTINO.FieldByName('dtcontabilizado').AsString := validata(FORMATCURR('00', 1) + '/' + FORMATCURR('00', dm.LOCALIZAORIGEM.FieldByName('dtmesconciliacao').Asinteger) + '/' + Ano.text);
      end;
      dm.QDESTINO.Post;
      APPLICATION.ProcessMessages;
    end;
    dm.QORIGEM.Next;
  end;
  status.Caption := ' Salvando Entrada não Contabilizada .... ';
  status.Update;
  if dm.QDestino.ChangeCount > 0 then
    dm.QDESTINO.ApplyUpdates(-1);
  memostatus.Lines.Add(' Entrada não Contabilizada - OK ');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Entrada_Contabilizada;
begin
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'update ordcai set dtconcilia = dtlan where ordcre is not null';
  dm.ATUALIZA.ExecSQL;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select * from ordcre where substring(id_concilia from 1 for 1) = ''S''';
  dm.Localiza.OPEN;
  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'select * from ordcai where ordcre is not null';
  dm.QDESTINO.OPEN;
  dm.QDESTINO.IndexFieldNames := 'ordcre';
  while not dm.Localiza.eof do
  begin
    if dm.QDESTINO.FindKey([dm.Localiza.FieldByName('ordcre').AsString]) then
    begin
      dm.QDESTINO.Edit;
      dm.QDESTINO.FieldByName('dtconcilia').AsString := validata(copy(dm.Localiza.FieldByName('id_concilia').AsString, 3, 2) + '/' + copy(dm.Localiza.FieldByName('id_concilia').AsString, 6, 2) + '/' + Ano.text);
      dm.QDESTINO.Post;
    end;
    dm.Localiza.Next;
  end;
  dm.QDESTINO.ApplyUpdates(-1);
  dm.Localiza3.CLOSE;
  dm.Localiza3.Commandtext := 'select * from receit where exists (select z.conta from descon z where z.conta = receit.conta and z.balco not like ''3111%'')  and ficha < 7000 AND PKEMP IS NULL AND SUBSTRING(ID_CONCILIA FROM 1 FOR 1) = ''N''';
  dm.Localiza3.OPEN;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select * from ordcre where substring(id_concilia from 1 for 1) = ''N'' AND ORDPG IS NULL and nome not like ''%Devolução de Adiantamento Emp.%''';
  dm.Localiza.OPEN;
  dm.Localiza.IndexFieldNames := 'conta;valor;dtlan';
  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'select * from ordcai where ordcre is not null';
  dm.QDESTINO.OPEN;
  dm.QDESTINO.IndexFieldNames := 'ordcre';
  while not dm.Localiza3.eof do
  begin
    if dm.Localiza.FindKey([dm.Localiza3.FieldByName('CONTA').AsString, dm.Localiza3.FieldByName('VAREC').AsString, dm.Localiza3.FieldByName('DTLAN').AsString]) then
    begin
      if dm.QDESTINO.FindKey([dm.Localiza.FieldByName('ordcre').AsString]) then
      begin
        dm.QDESTINO.Edit;
        dm.QDESTINO.FieldByName('dtconcilia').clear;
        dm.QDESTINO.Post;
      end;
    end;
    dm.Localiza3.Next;
  end;
  status.Caption := ' Salvando Entrada Contabilizada .... ';
  status.Update;
  if dm.QDestino.ChangeCount > 0 then
    dm.QDESTINO.ApplyUpdates(-1);
  memostatus.Lines.Add(' Entrada Contabilizada - OK ');
  Desconecta_Conecta;
end;

procedure TTfrmprincipal_Conversao.Saida_nao_Contabilizada;
var
  NLANC: Integer;
  MES: Integer;
begin
  SITU.Caption := 'SAIDA NÃO CONTABILIZADA CONSIDERADA PELO BANCO...';
  SITU.Update;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'SELECT MAX(NLANC) AS NLANC FROM ORDCAIBANCO ';
  dm.Localiza.OPEN;
  NLANC := dm.Localiza.FieldByName('NLANC').Asinteger;
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'delete from ordcaibanco where cast(DEBIT as numeric(14,2)) <> 0';
  dm.ATUALIZA.ExecSQL;
  dm.QORIGEM.CLOSE;
  dm.QORIGEM.Commandtext := 'select distinct b.cdunidadegestora, ' + 'b.cdcontacontabil, ' + 'b.dtmovimento, b.vlmovimento ' + 'from ' + bnc_cpe + '.dbo.movimento B ' + 'where (b.cdtipomovimento in (504)) and b.cdunidadegestora = 0';
  dm.QORIGEM.OPEN;
  P.Position := 0;
  P.Max := dm.QORIGEM.RecordCount;
  EM.Caption := inttostr(P.Position) + ' de ' + inttostr(P.Max);
  EM.Update;
  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'SELECT * FROM ORDCAIBANCO WHERE NLANC = -1';
  dm.QDESTINO.OPEN;
  dm.LOCALIZAORIGEM.CLOSE;
  dm.LOCALIZAORIGEM.Commandtext := 'select b.*,cast(substring(A.DSCOMPLHISTORICO,1,250) as varchar(250))  as nome ' + ' from movimento B ' + ' left join ' + bnc_cpe + '.dbo.COMPLEMENTOHISTORICO  A on (A.NRCOMPLHISTORICO=B.NRCOMPLHISTORICO AND A.CDUNIDADEGESTORA=B.CDUNIDADEGESTORA) ' + ' where ((b.cdtipomovimento in (504))) and b.cdunidadegestora = 0 order by b.dtmesconciliacao desc ';
  dm.LOCALIZAORIGEM.OPEN;
  while not dm.QORIGEM.eof do
  begin
    if trim(dm.QORIGEM.FieldByName('cdcontacontabil').AsString) = '3554' then
      Showmessage('');
    dm.LOCALIZAORIGEM.FILTER := 'cdcontacontabil = ''' + dm.QORIGEM.FieldByName('cdcontacontabil').AsString + ''' ' + 'and dtmovimento = ''' + dm.QORIGEM.FieldByName('dtmovimento').AsString + ''' ' + 'and vlmovimento = ''' + Stringreplace(dm.QORIGEM.FieldByName('vlmovimento').AsString, ',', '.', [RfReplaceAll]) + '''';
    dm.LOCALIZAORIGEM.FiLTERED := True;
    P.Position := dm.QORIGEM.RecNo;
    EM.Caption := inttostr(P.Position) + ' de ' + inttostr(P.Max);
    EM.Update;
    dm.LOCALIZAORIGEM.first;
    if not dm.LOCALIZAORIGEM.IsEmpty then
    begin
      inc(NLANC);
      dm.QDESTINO.APPEND;
      dm.QDESTINO.FieldByName('nlanc').Asinteger := NLANC;
      dm.QDESTINO.FieldByName('CREDI').AsFloat := 0;
      dm.QDESTINO.FieldByName('debit').AsFloat := dm.QORIGEM.FieldByName('vlmovimento').AsFloat;
      dm.QDESTINO.FieldByName('nome').AsString := dm.LOCALIZAORIGEM.FieldByName('nome').AsString;
      dm.QDESTINO.FieldByName('conta').AsString := Traz_Conta_Descon(dm.QORIGEM.FieldByName('cdunidadegestora').AsString, dm.QORIGEM.FieldByName('cdcontacontabil').AsString);
      if trim(dm.LOCALIZAORIGEM.FieldByName('nrdocumentopagto').AsString) <> '0' then
        dm.QDESTINO.FieldByName('cheqn').AsString := dm.LOCALIZAORIGEM.FieldByName('nrdocumentopagto').AsString;
      dm.QDESTINO.FieldByName('dtconcilia').AsString := dm.QORIGEM.FieldByName('dtmovimento').AsString;
      if FORMATCURR('00', dm.LOCALIZAORIGEM.FieldByName('dtdiaconciliacao').Asinteger) <> '00' then
      begin
        MES := dm.LOCALIZAORIGEM.FieldByName('dtmesconciliacao').Asinteger;
        if MES = 12 then
          MES := 11;
        dm.QDESTINO.FieldByName('dtcontabilizado').AsString := validata(FORMATCURR('00', 1) + '/' +  FORMATCURR('00', MES + 1) + '/' + Ano.text);
      end;
      dm.QDESTINO.Post;
      APPLICATION.ProcessMessages;
    end;
    dm.QORIGEM.Next;
  end;
  status.Caption := ' Salvando Saída não Contabilizada .... ';
  status.Update;
  if dm.QDestino.ChangeCount > 0 then
    dm.QDESTINO.ApplyUpdates(-1);
  Desconecta_Conecta;
  memostatus.Lines.Add(' Saída não Contabilizada - OK ');
end;

procedure TTfrmprincipal_Conversao.Saida_Contabilizada;
begin
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'update ordcai set dtconcilia = dtlan where cheqord is not null';
  dm.ATUALIZA.ExecSQL;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select * from cheqord where substring(id_concilia from 1 for 1) = ''S''';
  dm.Localiza.OPEN;
  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'select * from ordcai where cheqord is not null';
  dm.QDESTINO.OPEN;
  dm.QDESTINO.IndexFieldNames := 'cheqord';

  P.Position := 0;
  P.Max := Dm.Localiza.RecordCount;
  EM.caption := '0 de ' + inttostr(p.Max);
  EM.update;

  while not dm.Localiza.eof do
  begin

    P.Position := Dm.Localiza.RecNo;
    EM.caption := inttostr(p.Position) + ' de ' + inttostr(p.Max);
    EM.update;

    if dm.QDESTINO.FindKey([dm.Localiza.FieldByName('cheqord').AsString]) then
    begin
      dm.QDESTINO.Edit;
      dm.QDESTINO.FieldByName('dtconcilia').AsString := validata(copy(dm.Localiza.FieldByName('id_concilia').AsString, 3, 2) + '/' + copy(dm.Localiza.FieldByName('id_concilia').AsString, 6, 2) + '/' + Ano.text);
      dm.QDESTINO.Post;
    end;
    dm.Localiza.Next;
  end;
  dm.QDESTINO.ApplyUpdates(-1);
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select * from cheqord where substring(id_concilia from 1 for 1) = ''N'' AND CHEQORD NOT LIKE ''%DESCON%'' ' + 'and not exists (select y.ordpg from subord y ' + 'inner join dessub w on w.pkemp = y.pkemp and w.numsub = y.numsub ' + 'inner join despes h on h.pkemp = w.pkemp ' + 'inner join desdis i on i.ficha = h.ficha ' + 'where i.balco like ''3237%'' and y.ordpg = cheqord.ordpg)';
  dm.Localiza.OPEN;
  dm.QDESTINO.CLOSE;
  dm.QDESTINO.Commandtext := 'select * from ordcai where cheqord is not null';
  dm.QDESTINO.OPEN;
  dm.QDESTINO.IndexFieldNames := 'cheqord';
  while not dm.Localiza.eof do
  begin
    if dm.QDESTINO.FindKey([dm.Localiza.FieldByName('cheqord').AsString]) then
    begin
      dm.QDESTINO.Edit;
      dm.QDESTINO.FieldByName('dtconcilia').clear;
      dm.QDESTINO.Post;
    end;
    dm.Localiza.Next;
  end;
  status.Caption := ' Salvando Saída Contabilizada .... ';
  status.Update;
  if dm.QDestino.ChangeCount > 0 then
    dm.QDESTINO.ApplyUpdates(-1);
  Desconecta_Conecta;
  memostatus.Lines.Add(' Saída Contabilizada - OK ');
end;

procedure TTfrmprincipal_Conversao.Transferencia_Conciliadas;
begin
  dm.ATUALIZA.CLOSE;
  dm.ATUALIZA.Commandtext := 'update ordcai set dtconcilia = dtlan where NTRANSF is not null';
  dm.ATUALIZA.ExecSQL;
  dm.Localiza.CLOSE;
  dm.Localiza.Commandtext := 'select * from TRANSFERENCIA where substring(id_concilia from 1 for 1) = ''S''';
  dm.Localiza.OPEN;
  while not dm.Localiza.eof do
  begin
    dm.QDESTINO.CLOSE;
    dm.QDESTINO.Commandtext := 'select * from ordcai where NTRANSF = ''' + dm.Localiza.FieldByName('NTRANSF').AsString + '''';
    dm.QDESTINO.OPEN;
    while not dm.QDESTINO.eof do
    begin
      dm.QDESTINO.Edit;
      dm.QDESTINO.FieldByName('dtconcilia').AsString := validata(copy(dm.Localiza.FieldByName('id_concilia').AsString, 3, 2) + '/' + copy(dm.Localiza.FieldByName('id_concilia').AsString, 6, 2) + '/' + Ano.text);
      dm.QDESTINO.Post;
      dm.QDESTINO.Next;
    end;
    dm.Localiza.Next;
  end;
  status.Caption := ' Salvando Transferencia Conciliada .... ';
  status.Update;
  if dm.QDestino.ChangeCount > 0 then
    dm.QDESTINO.ApplyUpdates(-1);
  Desconecta_Conecta;
  memostatus.Lines.Add(' Transferencias conciliadas - OK ');
end;

PROCEDURE TTfrmprincipal_Conversao.ZERA_GENERATORS;
BEGIN
  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'SET GENERATOR GEN_DESPES TO 0';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'SET GENERATOR GEN_ORDCAI TO 0';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'SET GENERATOR GEN_FODEU TO 0';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'SET GENERATOR GEN_DESALD TO 0';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'SET GENERATOR GEN_TRANSFERENCIA TO 0';
  DM.Atualiza.ExecSQL;

  DM.Atualiza.close;
  DM.Atualiza.SQL.text := 'SET GENERATOR GEN_RECEIT TO 0';
  DM.Atualiza.ExecSQL;
  memoStatus.Lines.Add('Generator Zerados');

END;

END.
