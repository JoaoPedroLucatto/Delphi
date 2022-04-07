unit UCalcRural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, CheckLst, ExtCtrls, DBCtrls, RzPanel,
  RzBckgnd, RzButton, Gauges, DB, DBClient, frxClass, frxDBSet, SqlExpr,
  EMsgDlg, FMTBcd, Provider, ECkBox, UClasse_Financeiro;

type
  TFCalcRural = class(TForm)
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    LC: TLabel;
    RzPanel1: TRzPanel;
    GB1: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    edTOT: TDBText;
    edVR: TDBText;
    edTotE: TDBText;
    edVRE: TDBText;
    edTotGeral: TDBText;
    Label13: TLabel;
    Label15: TLabel;
    edExped: TDBText;
    btnNaoCalculado: TBitBtn;
    btnImpGuias: TBitBtn;
    btnLancamentos: TBitBtn;
    RG: TRadioGroup;
    GCob: TGroupBox;
    lstCob: TCheckListBox;
    GroupBox10: TGroupBox;
    EdRef: TComboBox;
    GCad: TGroupBox;
    btnCadINI: TSpeedButton;
    BtnCadFim: TSpeedButton;
    edINI: TEdit;
    edFIM: TEdit;
    GLog: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    Label4: TLabel;
    msk5: TMaskEdit;
    msk6: TMaskEdit;
    GSet: TGroupBox;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Label21: TLabel;
    Label22: TLabel;
    msk9: TMaskEdit;
    msk10: TMaskEdit;
    RzPanel2: TRzPanel;
    bar: TGauge;
    edCadast: TDBText;
    BtnConfirma: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnProjeta: TRzBitBtn;
    DBDados: TfrxDBDataset;
    DBEmpresa: TfrxDBDataset;
    Relatorio: TfrxReport;
    CDSERR: TClientDataSet;
    DSERR: TDataSource;
    sqlCal: TSQLDataSet;
    dspCal: TDataSetProvider;
    cdsCal: TClientDataSet;
    dsCal: TDataSource;
    Label9: TLabel;
    edIndice: TDBText;
    edMes: TDBText;
    edvrIndice: TDBText;
    GroupBox1: TGroupBox;
    chkExp: TEvCheckBox;
    sqlInd: TSQLDataSet;
    dspInd: TDataSetProvider;
    cdsInd: TClientDataSet;
    dsInd: TDataSource;
    sqlIndCOD_IND_IDO: TIntegerField;
    sqlIndDATA_IDO: TDateField;
    sqlIndVRINDICE_IDO: TFloatField;
    ckValorVenal: TEvCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure msk5Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure msk6Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure msk9Exit(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure msk10Exit(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure edINIEnter(Sender: TObject);
    procedure edFIMEnter(Sender: TObject);
    procedure edINIExit(Sender: TObject);
    procedure edFIMExit(Sender: TObject);
    procedure EdRefKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure btnLancamentosClick(Sender: TObject);
    procedure btnCadINIClick(Sender: TObject);
    procedure BtnCadFimClick(Sender: TObject);
    procedure BtnProjetaClick(Sender: TObject);
    procedure btnNaoCalculadoClick(Sender: TObject);
    procedure btnImpGuiasClick(Sender: TObject);
  private
    { Private declarations }
    function AcertaReceitasTruncadas(CodRural, coddiv: string): integer;
  public
    { Public declarations }
    procedure AlteraTaxasRR(Taxa, Valor: string);
    function BuscaTaxasRR(Taxa: string): boolean;
    procedure Limpa;
    procedure CriaXML;
    procedure GravaErro(CodRUR, ERRO: string);
    function PontosDistancia(distancia: Double): Double;
    function VerificaSituacaoDivida(ano, modulo, cadastro, recRUR: string): boolean;
    function VerificaUltimaDivida(ano, modulo, cadastro, recRUR: string): integer;
    function VerificaDividas(ano, modulo, cadastro, recRUR: string): boolean;
    procedure InsereReceitas(Empresa, CodRUR, codrec: string; coddivida, idparcela, unica, totparcela: Integer; PARCELA, Desconto, Isencao: Double);
    procedure VerMatrizFinRec(Empresa, CodRUR: string; coddivida, idparcela, unica, totparcela: Integer; RUR, EXP, AreaAlqueire, Pontos: Double; ParExp: string; var Erro: string);
    function VerIsencoes(Empresa, CodRUR, CodRec: string; Valor: Double; var Gera: boolean): Double;
    function VerDesconto(Empresa, CodRUR, CodRec: string; idParcela: integer; Valor: Double): Double;
  end;

var
  FCalcRural                                                                   : TFCalcRural;
  Projeta                                                                      : boolean = False;
  ReceitaEXP, ReceitaRUR, PrincipalRUR, IndCorr, vrALQ, vrHEQ, vrPTO, temDivida: string;
  matTaxasRR                                                                   : array [1 .. 10, 1 .. 3] of string;
  cFin                                                                         : TTabelasFin;

implementation

uses UPrin, TrataErros, UDM, funcoes, funcoesTela, System_log, UConsultaLancamentos,
  URelGuiasRR, UClasse_PesqRur, UClasse_PesqPrin;

{$R *.dfm}


procedure TFCalcRural.CriaXML;
begin
  CDSERR.Close;
  CDSERR.FieldDefs.Clear;
  CDSERR.FieldDefs.Add('COD_RUR_ERR', ftFixedChar, 50);
  CDSERR.FieldDefs.Add('DESCR_ERR', ftFixedChar, 256);
  CDSERR.FieldDefs.Add('LOGIN_INC_ERR', ftFixedChar, 10);
  CDSERR.CreateDataSet;
  CDSERR.SaveToFile(ExtractFilePath(Application.ExeName) + 'ERRCALCRURAL.XML', dfXML);
end;

procedure TFCalcRural.GravaErro(CodRUR, ERRO: string);
begin
  CDSERR.Append;
  CDSERR.FieldByName('COD_RUR_ERR').AsString   := CodRUR;
  CDSERR.FieldByName('DESCR_ERR').AsString     := ERRO;
  CDSERR.FieldByName('LOGIN_INC_ERR').AsString := SIA_Usuario;
  CDSERR.Post;
end;

procedure TFCalcRural.Limpa;
begin
  edTotGeral.Caption := '0';
  edTotE.Caption     := '0';
  edVRE.Caption      := '0';
  edTOT.Caption      := '0';
  edVR.Caption       := '0';
  edCadast.Caption   := '';
  edExped.Caption    := '0';
end;

procedure TFCalcRural.FormDestroy(Sender: TObject);
begin
  FreeAndNil(cFin); // no form destroy
  FCalcRural := nil;
end;

procedure TFCalcRural.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    if BtnConfirma.Enabled then
      BtnSair.Click;
end;

procedure TFCalcRural.FormShow(Sender: TObject);
var
  qrx : TSQLQuery;
  Pesq: TPesq_ConfCalcRR;
begin
  Limpa;
  edINI.SetFocus;
  cFin := TTabelasFin.Create;

  LC.Caption := 'Calcula Rural';

  if FileExists(ExtractFilePath(Application.ExeName) + 'ERRCALCRURAL.XML') then
    DeleteFile(ExtractFilePath(Application.ExeName) + 'ERRCALCRURAL.XML');

  CriaXML;

  CDSERR.Close;
  CDSERR.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ERRCALCRURAL.XML');
  CDSERR.Open;

  Pesq := TPesq_ConfCalcRR.Create;
  Pesq.CarregaConfig;
  if trim(vartostr(Pesq.v03)) = '' then begin
    dm.msg.MessageDlg('Atenção!!!' + #13 +
      'Para se efetuar o Cálculo é necessário que a Fórmula de Cálculo do Valor Venal esteja definida.' + #13 +
      'Entrar em [TABELAS GERAIS] - [1.7 - Configurações]', mtWarning, [mbok], 0);
    FreeAndNil(Pesq);
    close;
    exit;
  end;

  if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '09') then begin
    qrx               := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text      := 'SELECT COD_RRR, COD_CLASS_RRR, AREAH_RRR ' +
      'FROM RR_CAD_RURAL ' +
      'WHERE COD_EMP_RRR = ' + SIA_Empresa +
      ' AND COD_CLASS_RRR IS NULL ' +
      ' AND (AREAH_RRR IS NULL OR AREAH_RRR <= 0) ';
    qrx.Open;
    if not qrx.IsEmpty then begin
      while not qrx.Eof do begin
        if (qrx.FieldByName('COD_CLASS_RRR').IsNull) and (qrx.FieldByName('AREAH_RRR').IsNull) then
          GravaErro(qrx.FieldByName('COD_RRR').AsString, 'ALQUEIRE E CLASSIFICAÇÃO NÃO INFORMADO')
        else if (qrx.FieldByName('COD_CLASS_RRR').IsNull) then
          GravaErro(qrx.FieldByName('COD_RRR').AsString, 'CLASSIFICAÇÃO NÃO INFORMADO')
        else if (qrx.FieldByName('AREAH_RRR').IsNull) then
          GravaErro(qrx.FieldByName('COD_RRR').AsString, 'ALQUEIRE NÃO INFORMADO')
        else if (qrx.FieldByName('AREAH_RRR').AsInteger <= 0) then
          GravaErro(qrx.FieldByName('COD_RRR').AsString, 'ALQUEIRE MENOR OU IGUAL A ZERO');

        qrx.Next;
      end;
      dm.msg.MessageDlg('ATENÇÃO... ' + #13 + 'Existem Cadastros que devem ser Corrigidos para Geração do Cálculo.' + #13 +
        'Será mostrado um Relatório com as Inconsistências.', mtWarning, [mbok], 0);

      btnNaoCalculado.Click;

      FreeAndNil(Pesq);
      FreeAndNil(qrx);
      close;
      exit;
    end;
  end;

  vrPTO   := Replace(VarToStr(Pesq.v04), ',', '.');
  vrALQ   := Replace(VarToStr(Pesq.v05), ',', '.');
  vrHEQ   := Replace(VarToStr(Pesq.v06), ',', '.');
  IndCorr := Replace(VarToStr(Pesq.v08), ',', '.');

  vrPTO   := Replace(VarToStr(Pesq.v04), '.', ',');
  vrALQ   := Replace(VarToStr(Pesq.v05), '.', ',');
  vrHEQ   := Replace(VarToStr(Pesq.v06), '.', ',');
  IndCorr := Replace(VarToStr(Pesq.v08), '.', ',');

  FreeAndNil(Pesq);

  // Receita Principal do Rural
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text      := 'SELECT COD_REP ' +
    'FROM FI_RECPRINCIPAL ' +
    'WHERE COD_EMP_REP = ' + SIA_Empresa +
    ' AND COD_MOD_REP = 4 ' +
    ' AND AGRUPAMENTO_REP LIKE ''13%'' ';
  qrx.Open;
  if trim(qrx.FieldByName('COD_REP').AsString) = '' then begin
    dm.msg.MessageDlg('ATENÇÃO... ' + #13 + 'Será necessário definir uma Receita Principal para o RURAL.' + #13 +
      '[Opção 1.2] do Módulo Financeiro.', mtWarning, [mbok], 0);
    FreeAndNil(qrx);
    close;
    exit;
  end
  else
    PrincipalRUR := qrx.FieldByName('COD_REP').AsString;

  // Receita de Expediente
  qrx.Close;
  qrx.SQL.Text := 'SELECT COD_REC_RRC, COD_CRT_RRC ' +
    'FROM GR_REL_RECEITAS ' +
    'WHERE COD_EMP_RRC = ' + SIA_Empresa +
    ' AND TP_RRC LIKE ''03%'' ';
  qrx.Open;
  if trim(qrx.FieldByName('COD_REC_RRC').AsString) = '' then begin
    dm.msg.MessageDlg('ATENÇÃO... ' + #13 + 'Será necessário relacionar uma Receita para Expediente.' + #13 +
      '[Opção 2.14] do Módulo Principal', mtWarning, [mbok], 0);
    FreeAndNil(qrx);
    close;
    exit;
  end
  else
    ReceitaEXP := qrx.FieldByName('COD_REC_RRC').AsString;

  // Receita de Rural
  qrx.Close;
  qrx.SQL.Text := 'SELECT COD_REC_RRC, COD_CRT_RRC ' +
    'FROM GR_REL_RECEITAS ' +
    'WHERE COD_EMP_RRC = ' + SIA_Empresa +
    ' AND TP_RRC LIKE ''11%'' ';
  qrx.Open;
  if trim(qrx.FieldByName('COD_REC_RRC').AsString) = '' then begin
    dm.msg.MessageDlg('ATENÇÃO... ' + #13 + 'Será necessário relacionar uma Receita para o Rural.' + #13 +
      '[Opção 2.14] do Módulo Principal', mtWarning, [mbok], 0);
    FreeAndNil(qrx);
    close;
    exit;
  end
  else
    ReceitaRUR := qrx.FieldByName('COD_REC_RRC').AsString;

  lstCob.Clear;
  qrx.Close;
  qrx.SQL.Text := 'SELECT * FROM RR_COBRANCA WHERE COD_EMP_COB = ' + SIA_Empresa;
  qrx.Open;
  while not qrx.Eof do begin
    lstCob.Items.Add(ZeraEsquerda(2, qrx.FieldByName('COD_COB').AsString) + ' - ' +
      qrx.FieldByName('DESCRI_COB').AsString);
    qrx.Next;
  end;

  EdRef.Clear;
  qrx.Close;
  qrx.SQL.Text := 'SELECT DISTINCT ANO_STR FROM RR_SETOR WHERE COD_EMP_STR = ' + SIA_Empresa;
  qrx.Open;
  while not qrx.Eof do begin
    EdRef.Items.Add(qrx.FieldByName('ANO_STR').AsString);
    qrx.Next;
  end;
  FreeAndNil(qrx);

  EdRef.Text := SIA_Exercicio;
end;

procedure TFCalcRural.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFCalcRural.msk5Exit(Sender: TObject);
var
  Pesq: TPesq_Logra;
begin
  if trim(msk5.text) <> '' then begin
    Pesq := TPesq_Logra.Create;
    Pesq.PesquisaLogr(trim(msk5.text));
    msk5.Text := vartostr(Pesq.Codigo);
    msk6.text := msk5.Text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCalcRural.SpeedButton5Click(Sender: TObject);
var
  Pesq: TPesq_Logra;
begin
  Pesq := TPesq_Logra.Create;
  if Pesq.BotaoLogra then begin
    msk5.Text := vartostr(Pesq.Codigo);
    msk6.text := msk5.Text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCalcRural.msk6Exit(Sender: TObject);
var
  Pesq: TPesq_Logra;
begin
  if trim(msk6.text) <> '' then begin
    Pesq := TPesq_Logra.Create;
    Pesq.PesquisaLogr(trim(msk6.text));
    msk6.Text := vartostr(Pesq.Codigo);
    FreeAndNil(Pesq);
  end;
end;

procedure TFCalcRural.SpeedButton6Click(Sender: TObject);
var
  Pesq: TPesq_Logra;
begin
  Pesq := TPesq_Logra.Create;
  if Pesq.BotaoLogra then
    msk6.Text := vartostr(Pesq.Codigo);
  FreeAndNil(Pesq);
end;

procedure TFCalcRural.msk9Exit(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  if trim(TMaskEdit(Sender).text) <> '' then begin
    if trim(EdRef.Text) = '' then begin
      dm.msg.MessageDlg('Infome o Exercício.', mtInformation, [mbok], 0);
      EdRef.SetFocus;
      exit;
    end;

    TMaskEdit(sender).text := STRZero(TMaskEdit(sender).text, 4);

    Pesq := TPesq_SetorRural.Create;
    Pesq.PesquisaSetor(trim(TMaskEdit(Sender).text), trim(EdRef.Text));
    TMaskEdit(Sender).Text := vartostr(Pesq.Setor);
    msk10.text             := TMaskEdit(Sender).Text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCalcRural.SpeedButton13Click(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  if trim(EdRef.Text) = '' then begin
    dm.msg.MessageDlg('Infome o Exercício.', mtInformation, [mbok], 0);
    EdRef.SetFocus;
    exit;
  end;

  Pesq := TPesq_SetorRural.Create;
  if Pesq.BotaoSetor then begin
    msk9.Text  := vartostr(Pesq.Setor);
    msk10.Text := msk9.Text;
    FreeAndNil(Pesq);
  end;
end;

procedure TFCalcRural.msk10Exit(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  if trim(TMaskEdit(Sender).text) <> '' then begin
    if trim(EdRef.Text) = '' then begin
      dm.msg.MessageDlg('Infome o Exercício.', mtInformation, [mbok], 0);
      EdRef.SetFocus;
      exit;
    end;

    TMaskEdit(sender).text := STRZero(TMaskEdit(sender).text, 4);

    Pesq := TPesq_SetorRural.Create;
    Pesq.PesquisaSetor(trim(TMaskEdit(Sender).text), trim(EdRef.Text));
    TMaskEdit(Sender).Text := vartostr(Pesq.Setor);
    FreeAndNil(Pesq);
  end;
end;

procedure TFCalcRural.SpeedButton14Click(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  if trim(EdRef.Text) = '' then begin
    dm.msg.MessageDlg('Infome o Exercício.', mtInformation, [mbok], 0);
    EdRef.SetFocus;
    exit;
  end;

  Pesq := TPesq_SetorRural.Create;
  if Pesq.BotaoSetor then
    msk10.Text := vartostr(Pesq.Setor);
  FreeAndNil(Pesq);
end;

procedure TFCalcRural.edINIEnter(Sender: TObject);
begin
  edINI.MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  if trim(edINI.Text) <> '' then
    edINI.Text := TiraCaracter(edINI.Text);
end;

procedure TFCalcRural.edFIMEnter(Sender: TObject);
begin
  edFIM.MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  if trim(edFIM.Text) <> '' then
    edFIM.Text := TiraCaracter(edFIM.Text);
end;

procedure TFCalcRural.edINIExit(Sender: TObject);
begin
  edINI.MaxLength := 0;
  if trim(edINI.Text) <> '' then begin
    edINI.Text := MontaMascara(edINI.Text, 'RUR', SIA_Empresa);
    if trim(edFIM.Text) = '' then
      edFIM.Text := edINI.Text;
  end;
end;

procedure TFCalcRural.edFIMExit(Sender: TObject);
begin
  edFIM.MaxLength := 0;
  if trim(edFIM.Text) <> '' then begin
    edFIM.Text := MontaMascara(edFIM.Text, 'RUR', SIA_Empresa);
  end;
  BtnConfirma.SetFocus;
end;

procedure TFCalcRural.EdRefKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

function TFCalcRural.PontosDistancia(distancia: Double): Double;
var
  qrx: TSQLQuery;
begin
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text      := 'SELECT VALOR_RPT, TP_VALOR_RPT ' +
    'FROM RR_PONTOS ' +
    'WHERE COD_EMP_RPT = ' + SIA_Empresa +
    ' AND LINI_RPT <= ' + Replace(FloatToStr(distancia), ',', '.') +
    ' AND LFIM_RPT >= ' + Replace(FloatToStr(distancia), ',', '.');
  qrx.Open;
  if not qrx.IsEmpty then
    result := qrx.fieldByName('VALOR_RPT').asFloat
  else
    result := 0;
  FreeAndNil(qrx);
end;

function TFCalcRural.VerificaSituacaoDivida(ano, modulo, cadastro, recRUR: string): boolean;
var
  qrx  : TSQLQuery;
  teste: string;
begin
  result            := False;
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text      := 'SELECT COUNT(*) TOT ' +
    'FROM FI_DIVIDA ' +
    'INNER JOIN FI_PARCELA ON FI_PARCELA.COD_EMP_PAR = FI_DIVIDA.COD_EMP_DIV ' +
    'AND FI_PARCELA.COD_DIV_PAR = FI_DIVIDA.COD_DIV ' +
    'WHERE FI_DIVIDA.COD_EMP_DIV = ' + SIA_Empresa +
    ' AND FI_DIVIDA.ANO_DIV = ' + ANO +
    ' AND FI_DIVIDA.COD_CAD_DIV = ' + '''' + CADASTRO + '''' +
    ' AND FI_DIVIDA.COD_MOD_DIV = ' + modulo +
    ' AND FI_DIVIDA.COD_REP_DIV = ' + recRUR +
    ' AND (FI_PARCELA.SITUACAO_PAR >= 1 AND FI_PARCELA.SITUACAO_PAR <= 3) ' +
    ' AND FI_PARCELA.PARCE_PAR = ''N'' ' +
    ' AND NOT EXISTS (SELECT 1 FROM OU_REL_GUIAS WHERE COD_EMP_ORG=COD_EMP_DIV AND COD_DIV_ORG=COD_DIV) ';
  teste := qrx.SQL.Text;
  qrx.Open;
  if qrx.FieldByName('TOT').AsInteger <> 0 then
    result := True;
  FreeAndNil(qrx);
end;

function TFCalcRural.VerificaUltimaDivida(ano, modulo, cadastro, recRUR: string): integer;
var
  qrx: TSQLQuery;
begin
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text      := 'SELECT max(FI_DIVIDA.COD_DIV) Divida ' +
    'FROM FI_DIVIDA ' +
    'WHERE FI_DIVIDA.COD_EMP_DIV = ' + SIA_Empresa +
    ' AND FI_DIVIDA.ANO_DIV = ' + ANO +
    ' AND FI_DIVIDA.COD_MOD_DIV = ' + modulo +
    ' AND FI_DIVIDA.COD_CAD_DIV = ' + '''' + CADASTRO + '''' +
    ' AND FI_DIVIDA.COD_REP_DIV = ' + recRUR +
    ' AND NOT EXISTS (SELECT 1 FROM OU_REL_GUIAS WHERE COD_EMP_ORG=COD_EMP_DIV AND COD_DIV_ORG=COD_DIV) ';
  qrx.Open;
  Result := qrx.FieldByName('Divida').AsInteger;
  FreeAndNil(qrx);
end;

function TFCalcRural.VerificaDividas(ano, modulo, cadastro, recRUR: string): boolean;
var
  qrx   : TSQLQuery;
  Divida: Integer;
begin
  result            := False;
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;

  // Ultima Divida
  Divida := VerificaUltimaDivida(ano, modulo, cadastro, recRUR);

  // Parcelas Unicas
  qrx.Close;
  qrx.SQL.Text := 'SELECT COUNT(*) TOT ' +
    'FROM FI_DIVIDA ' +
    'INNER JOIN FI_PARCELA ON FI_PARCELA.COD_EMP_PAR = FI_DIVIDA.COD_EMP_DIV ' +
    'AND FI_PARCELA.COD_DIV_PAR = FI_DIVIDA.COD_DIV ' +
    'WHERE FI_DIVIDA.COD_EMP_DIV = ' + SIA_Empresa +
    ' AND FI_DIVIDA.COD_DIV = ' + inttostr(Divida) +
    ' AND FI_DIVIDA.ANO_DIV = ' + ANO +
    ' AND FI_DIVIDA.COD_CAD_DIV = ' + '''' + CADASTRO + '''' +
    ' AND FI_DIVIDA.COD_MOD_DIV = ' + modulo +
    ' AND FI_DIVIDA.COD_REP_DIV = ' + recRUR +
    ' AND ((FI_PARCELA.SITUACAO_PAR <> 1 AND FI_PARCELA.UNICA_PAR=''N'') OR ' +
    ' (FI_PARCELA.SITUACAO_PAR <> 0 AND FI_PARCELA.UNICA_PAR=''S'')) ' +
    ' AND NOT EXISTS (SELECT 1 FROM OU_REL_GUIAS WHERE COD_EMP_ORG=COD_EMP_DIV AND COD_DIV_ORG=COD_DIV) ';

  qrx.Open;
  if qrx.FieldByName('TOT').AsInteger <> 0 then
    result := True;

  FreeAndNil(qrx);
end;

function TFCalcRural.VerIsencoes(Empresa, CodRUR, CodRec: string; Valor: Double; var Gera: boolean): Double;
var
  qrx  : TSQLQuery;
  Idade: Integer;
  vAux : double;
begin
  Result            := 0;
  vAux              := 0;
  Gera              := True;
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text      := 'SELECT DTCAD_RRR, PERIODO_COB, GERA_LANCA_RCO, VALOR_RCO ' +
    'FROM RR_CAD_RURAL ' +
    'INNER JOIN RR_COBRANCA ON RR_COBRANCA.COD_EMP_COB = RR_CAD_RURAL.COD_EMP_RRR ' +
    'AND RR_COBRANCA.COD_COB = RR_CAD_RURAL.COD_COB_RRR ' +
    'INNER JOIN RR_RELCOBRANCA ON RR_RELCOBRANCA.COD_EMP_RCO = RR_COBRANCA.COD_EMP_COB ' +
    'AND RR_RELCOBRANCA.COD_COB_RCO = RR_COBRANCA.COD_COB ' +
    'WHERE RR_CAD_RURAL.COD_EMP_RRR = ' + Empresa +
    ' AND RR_CAD_RURAL.COD_RRR = ' + '''' + CodRUR + '''' +
    ' AND RR_RELCOBRANCA.COD_REC_RCO = ' + CodRec;
  qrx.Open;
  qrx.First;
  while not qrx.Eof do begin
    Idade := (strtoint(formatdatetime('YYYY', date)) - strtoint(formatdatetime('YYYY', qrx.FieldByName('DTCAD_RRR').AsDateTime)));
    if not(qrx.FieldByName('GERA_LANCA_RCO').IsNull) then begin
      if qrx.FieldByName('GERA_LANCA_RCO').AsString = 'S' then begin
        if Idade <= qrx.FieldByName('PERIODO_COB').AsInteger then begin
          if qrx.FieldByName('VALOR_RCO').IsNull then
            vAux := 0
          else if qrx.FieldByName('VALOR_RCO').AsFloat < 0 then
            vAux := 0
          else
            vAux := qrx.FieldByName('VALOR_RCO').AsFloat;

          if vAux <> 0 then
            Result := Valor * (vAux / 100)
          else if vAux = 100 then
            Result := Valor
          else
            Result := vAux;
        end;
      end
      else
        Gera := False;
    end;
    qrx.Next;
  end;

  FreeAndNil(qrx);
end;

function TFCalcRural.VerDesconto(Empresa, CodRUR, CodRec: string; idParcela: integer; Valor: Double): Double;
var
  qrx : TSQLQuery;
  vAux: double;
begin
  Result            := 0;
  vAux              := 0;
  qrx               := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text      := 'SELECT RR_DESCONTO.TIPO_DSC, RR_DESCONTO.VRDESCONTO_DSC, RR_DESCONTO.CONDICAO_DSC ' +
    'FROM RR_CAD_RURAL ' +
    'INNER JOIN RR_DESCONTO ON RR_DESCONTO.COD_EMP_DSC = RR_CAD_RURAL.COD_EMP_RRR ' +
    'AND RR_DESCONTO.COD_STR_DSC = RR_CAD_RURAL.COD_STR_RRR ' +
    'WHERE RR_CAD_RURAL.COD_EMP_RRR = ' + Empresa +
    ' AND RR_CAD_RURAL.COD_RRR = ' + '''' + CodRUR + '''' +
    ' AND RR_DESCONTO.COD_REC_DSC = ' + CodRec +
    ' AND RR_DESCONTO.PARCELA_DSC = ' + inttostr(idParcela) +
    ' AND RR_DESCONTO.ANO_STR_DSC = ' + EdRef.Text;
  qrx.Open;

  while not qrx.Eof do begin
    if not(qrx.FieldByName('TIPO_DSC').IsNull) then begin
      if qrx.FieldByName('VRDESCONTO_DSC').IsNull then
        vAux := 0
      else
        vAux := qrx.FieldByName('VRDESCONTO_DSC').AsFloat;

      if (copy(qrx.FieldByName('CONDICAO_DSC').AsString, 1, 2) = '02') then begin
        if temDivida = 'N' then begin                                           // não possui divida
          if copy(qrx.FieldByName('TIPO_DSC').AsString, 1, 2) = '01' then begin // Porcentagem
            if vAux <> 0 then
              Result := Valor * (vAux / 100)
            else if vAux = 100 then
              Result := Valor
            else
              Result := vAux;
          end;
          if copy(qrx.FieldByName('TIPO_DSC').AsString, 1, 2) = '02' then begin // Valor Fixo
            if Valor < vAux then
              Result := Valor
            else
              Result := vAux;
          end;
        end
        else
          Result := 0; // possui divida
      end
      else begin                                                              // todo cadastro possui desconto
        if copy(qrx.FieldByName('TIPO_DSC').AsString, 1, 2) = '01' then begin // Porcentagem
          if vAux <> 0 then
            Result := Valor * (vAux / 100)
          else if vAux = 100 then
            Result := Valor
          else
            Result := vAux;
        end;
        if copy(qrx.FieldByName('TIPO_DSC').AsString, 1, 2) = '02' then begin // Valor Fixo
          if Valor < vAux then
            Result := Valor
          else
            Result := vAux;
        end;
      end;
    end;
    qrx.Next;
  end;
  FreeAndNil(qrx);
end;

procedure TFCalcRural.InsereReceitas(Empresa, CodRUR, codrec: string; coddivida, idparcela, unica, totparcela: Integer; PARCELA, Desconto, Isencao: Double);
begin
  if PARCELA > 0 then
    SalvaFinanceiro_FI_RECEITAS(' Where COD_DIV_FRC = ' + inttostr(coddivida) +
      ' and PARCELA_PAR_FRC = ' + inttostr(idparcela) +
      ' and TP_PAR_FRC = 1 ' +
      ' and COD_REC_FRC = ' + codrec +
      ' and ANO_FRC = ' + EdRef.Text,
      SIA_Empresa,                                       // COD_EMP_FRC
      coddivida,                                         // COD_DIV_FRC
      idparcela,                                         // PARCELA_PAR_FRC
      1,                                                 // TP_PAR_FRC
      codrec,                                            // COD_REC_FRC
      EdRef.Text,                                        // ANO_FRC
      unica,                                             // SITUACAO_FRC
      coddivida,                                         // CODORIGEM_FRC
      coddivida,                                         // CODULTORI_FRC
      1,                                                 // COD_IND_FRC
      IIF(Projeta, 'E', 'N'),                            // OUTRAS_FRC
      PARCELA,                                           // LVALOR_FRC
      0,                                                 // LVRCORRE_FRC
      0,                                                 // LVRMULTA_FRC
      0,                                                 // LVRJUROS_FRC
      IIF((PARCELA - Isencao) <= 0, PARCELA, Isencao),   // Isencao,       //LISENTO_FRC
      IIF((PARCELA - Desconto) <= 0, PARCELA, Desconto), // Desconto,      //LDESCOVENCI_FRC
      0,                                                 // LDESCOR_FRC
      0,                                                 // LDESCOC_FRC
      0,                                                 // LDESCOM_FRC
      0,                                                 // LDESCOJ_FRC
      0,                                                 // LACRES_FRC
      0,                                                 // PVALOR_FRC
      0,                                                 // PVRCORRE_FRC
      0,                                                 // PVRMULTA_FRC
      0,                                                 // PVRJUROS_FRC
      0,                                                 // PISENTO_FRC
      0,                                                 // PDESCOVENCI_FRC
      0,                                                 // PDESDCO_FRC
      '',                                                // DESCR_FRC
      SIA_Usuario,                                       // LOGIN_INC_FRC
      DataBanco,                                         // DTA_INC_FRC
      SIA_Usuario,                                       // LOGIN_ALT_FRC
      DataBanco);                                        // DTA_ALT_FRC
end;

procedure TFCalcRural.AlteraTaxasRR(Taxa, Valor: string);
var
  i       : integer;
  auxValor: Double;
begin
  auxValor := 0;
  for i    := 1 to 10 do begin
    if matTaxasRR[i][1] = Taxa then begin
      auxValor         := strtofloat(matTaxasRR[i][2]) + strtofloat(Valor);
      matTaxasRR[i][2] := floattostr(arredonda(auxValor, 2));
      break;
    end;
  end;
end;

function TFCalcRural.BuscaTaxasRR(Taxa: string): boolean;
var
  i: integer;
begin
  Result := False;
  for i  := 1 to 10 do begin
    if matTaxasRR[i][1] = Taxa then begin
      Result := True;
      break;
    end;
  end;
end;

procedure TFCalcRural.VerMatrizFinRec(Empresa, CodRUR: string; coddivida, idparcela, unica, totparcela: Integer; RUR, EXP, AreaAlqueire, Pontos: Double; ParExp: string; var Erro: string);
var
  qrRec, qrx                                             : TSQLQuery;
  vUFM, auxValor, auxEXP, auxQTD, Isencao, Desconto, taxa: Double;
  Gerar                                                  : Boolean;
  recTaxa, tpValor, tpCalc                               : string;
  i                                                      : integer;
begin
  auxEXP   := 0;
  auxValor := 0;

  // RURAL
  Isencao  := 0;
  Desconto := 0;
  Isencao  := VerIsencoes(Empresa, CodRUR, ReceitaRUR, TruncaSIA7(RUR), Gerar);
  Desconto := VerDesconto(Empresa, CodRUR, ReceitaRUR, idParcela, TruncaSIA7(RUR - Isencao));

  if Gerar then begin
    if unica = 0 then
      InsereReceitas(Empresa, CodRUR, ReceitaRUR, coddivida, idparcela, unica, totparcela, TruncaSIA7(RUR), Desconto, Isencao)
    else
      InsereReceitas(Empresa, CodRUR, ReceitaRUR, coddivida, idparcela, unica, totparcela, TruncaSIA7(RUR / totparcela), (Desconto / totparcela), (Isencao / totparcela));
  end;

  // EXP
  if (ParExp = 'S') and (unica = 0) then
    auxEXP := EXP * totparcela
  else
    auxEXP := EXP;

  Isencao  := 0;
  Desconto := 0;
  Isencao  := VerIsencoes(Empresa, CodRUR, ReceitaEXP, TruncaSIA7(auxEXP), Gerar);
  Desconto := VerDesconto(Empresa, CodRUR, ReceitaEXP, idParcela, TruncaSIA7(auxEXP - Isencao));

  if Gerar then begin
    if unica = 0 then
      InsereReceitas(Empresa, CodRUR, ReceitaEXP, coddivida, idparcela, unica, totparcela, auxEXP, Desconto, Isencao)
    else
      InsereReceitas(Empresa, CodRUR, ReceitaEXP, coddivida, idparcela, unica, totparcela, EXP, Desconto, Isencao);
  end;

  // Taxas Adicionais
  qrRec               := TSQLQuery.Create(Application.Owner);
  qrRec.SQLConnection := dm.Conexao;
  qrRec.SQL.Text      := 'SELECT VALOR_UFM ' +
    'FROM GR_UFM ' +
    'WHERE COD_EMP_UFM = ' + SIA_Empresa +
    ' AND ANO_UFM = ' + SIA_Exercicio;
  qrRec.Open;
  vUFM := qrRec.FieldByName('VALOR_UFM').AsFloat;

  qrRec.Close;
  qrRec.SQL.Text := 'SELECT RR_REL_RECEITAS.COD_REC_RCT, RR_REL_RECEITAS.QTD_RCT, ' +
    'RR_CALCULO.DIVIDA_RCA, RR_CALCULO.TIP_CALC_RCA, ' +
    'RR_CALCULO.TIP_VALOR_RCA, RR_CALCULO.ABRE_GUIA_RCA, ' +
    'RR_CALCULO.VALOR_RCA ' +
    'FROM RR_REL_RECEITAS ' +
    'LEFT JOIN RR_CALCULO ON RR_CALCULO.COD_EMP_RCA = RR_REL_RECEITAS.COD_EMP_RCT ' +
    'AND RR_CALCULO.COD_REC_RCA = RR_REL_RECEITAS.COD_REC_RCT ' +
    'AND RR_CALCULO.COD_DESDOREC_RCA = RR_REL_RECEITAS.COD_DDO_RCT ' +
    'WHERE RR_REL_RECEITAS.COD_EMP_RCT = ' + SIA_Empresa +
    'AND RR_REL_RECEITAS.COD_RRR_RCT = ' + '''' + cdsCal.FieldByName('COD_RRR').AsString + '''';
  qrRec.Open;
  if not qrRec.IsEmpty then begin
    i := 1;
    while not qrRec.Eof do begin
      recTaxa  := qrRec.FieldByName('COD_REC_RCT').AsString;
      auxValor := qrRec.FieldByName('VALOR_RCA').AsFloat;
      auxQTD   := qrRec.FieldByName('QTD_RCT').AsFloat;
      tpValor  := copy(qrRec.FieldByName('TIP_VALOR_RCA').AsString, 1, 2);
      tpCalc   := copy(qrRec.FieldByName('TIP_CALC_RCA').AsString, 1, 2);

      // 01 - Valor Fixo
      if tpCalc = '01' then
        if tpValor = '02' then
          auxValor := auxValor * (auxValor / 100);

      // 02 - QTD x Valor
      if tpCalc = '02' then begin
        if tpValor = '01' then
          auxValor := auxValor * auxQTD;
        if tpValor = '02' then
          auxValor := (auxValor * auxQTD) * ((auxValor * auxQTD) / 100);
      end;

      // 03 - Sobre a UFM
      if tpCalc = '03' then begin
        if tpValor = '01' then
          auxValor := auxValor * vUFM;
        if tpValor = '02' then
          auxValor := auxValor + (vUFM * (vUFM / 100));
      end;

      // 04 - Valor * Area Alqueire
      if tpCalc = '04' then begin
        if tpValor = '01' then
          auxValor := (auxValor * AreaAlqueire);
        if tpValor = '02' then
          auxValor := ((auxValor / 100) * AreaAlqueire);
      end;

      // 05 - QTD x Pontos
      if tpCalc = '05' then begin
        if tpValor = '01' then
          auxValor := (auxQTD * Pontos);
        if tpValor = '02' then
          auxValor := ((auxQTD / 100) * Pontos);
      end;

      if BuscaTaxasRR(recTaxa) then begin
        AlteraTaxasRR(recTaxa, floattostr(arredonda(auxValor, 2)));
      end
      else begin
        matTaxasRR[i][1] := recTaxa;
        matTaxasRR[i][2] := floattostr(arredonda(auxValor, 2));
        matTaxasRR[i][3] := qrRec.FieldByName('ABRE_GUIA_RCA').AsString;
        inc(i);
      end;

      qrRec.Next;
    end;

    for i := 1 to 10 do begin
      if trim(matTaxasRR[i][1]) = '' then
        break;

      Isencao  := 0;
      Desconto := 0;
      Taxa     := 0;
      Isencao  := VerIsencoes(Empresa, CodRUR, recTaxa, TruncaSIA7(strtofloat(matTaxasRR[i][2])), Gerar);
      Desconto := VerDesconto(Empresa, CodRUR, recTaxa, idParcela, TruncaSIA7(strtofloat(matTaxasRR[i][2]) - Isencao));

      if Gerar then begin
        if unica = 0 then begin
          isencao  := Isencao;
          desconto := Desconto;
          InsereReceitas(Empresa, CodRUR, recTaxa, coddivida, idparcela, unica, totparcela, TruncaSIA7(strtofloat(matTaxasRR[i][2])), desconto, isencao);
        end
        else begin
          isencao  := (Isencao / totParcela);
          desconto := (Desconto / totParcela);
          taxa     := TruncaSIA7(strtofloat(matTaxasRR[i][2]) / totparcela);
          InsereReceitas(Empresa, CodRUR, recTaxa, coddivida, idparcela, unica, totparcela, taxa, desconto, Isencao);
        end;
      end;
    end;
  end;
  FreeAndNil(qrRec);
end;

function TFCalcRural.AcertaReceitasTruncadas(CodRural, coddiv: string): integer;
var
  qrx, qry                                              : TSQLQuery;
  aux, Receita, PARCELA                                 : string;
  VlrUnica, VlrDemais, VlrIsento, VlrDesconto, Diferenca: double;
  Gera                                                  : Boolean;
begin
  try
    qrx               := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    // Verifica Parcela Unica
    qrx.SQL.Text := 'SELECT COD_REC_FRC RECEITA, LVALOR_FRC TOT, LISENTO_FRC ISENTO, LDESCOVENCI_FRC DESCONTO ' +
      'FROM FI_RECEITAS ' +
      'INNER JOIN FI_PARCELA ON COD_EMP_PAR = COD_EMP_FRC ' +
      ' AND COD_DIV_PAR = COD_DIV_FRC ' +
      'AND PARCELA_PAR = PARCELA_PAR_FRC ' +
      'AND TP_PAR = TP_PAR_FRC ' +
      'Where COD_EMP_FRC = ' + SIA_Empresa +
      '  AND COD_DIV_FRC = ' + coddiv +
      '  AND TP_PAR_FRC = 1 ' +
      '  AND ANO_FRC = ' + EdRef.Text +
      '  AND UNICA_PAR = ''S'' ';
    qrx.Open;

    qry               := TSQLQuery.Create(Application.Owner);
    qry.SQLConnection := dm.Conexao;
    while not qrx.Eof do begin
      Receita     := qrx.FieldValues['RECEITA'];
      VlrUnica    := qrx.FieldValues['TOT'];
      VlrIsento   := qrx.FieldValues['ISENTO'];
      VlrDesconto := qrx.FieldValues['DESCONTO'];

      // Verifica valor das demais Parcelas para achar a diferenca
      qry.Close;
      qry.SQL.Text := 'SELECT SUM(LVALOR_FRC) TOT, SUM(LISENTO_FRC) ISENTO, SUM(LDESCOVENCI_FRC) DESCONTO ' +
        'FROM FI_RECEITAS ' +
        'INNER JOIN FI_PARCELA ON COD_EMP_PAR = COD_EMP_FRC ' +
        ' AND COD_DIV_PAR = COD_DIV_FRC ' +
        'AND PARCELA_PAR = PARCELA_PAR_FRC ' +
        'AND TP_PAR = TP_PAR_FRC ' +
        'WHERE COD_EMP_FRC = ' + SIA_Empresa +
        ' AND COD_DIV_FRC = ' + coddiv +
        ' AND TP_PAR_FRC = 1 ' +
        ' AND ANO_FRC = ' + EdRef.Text +
        ' AND COD_REC_FRC = ' + Receita +
        ' AND UNICA_PAR <> ''S'' ';
      qry.Open;
      VlrDemais := qry.FieldByName('TOT').AsFloat;
      Diferenca := VlrUnica - VlrDemais;
      if Diferenca < 0 then
        Diferenca := 0;

      // Verifica ultima Parcela
      qry.Close;
      qry.SQL.Text := 'SELECT MAX(PARCELA_PAR) PARCELA ' +
        'FROM FI_PARCELA ' +
        'INNER JOIN FI_RECEITAS ON COD_EMP_FRC = COD_EMP_PAR ' +
        ' AND COD_DIV_FRC = COD_DIV_PAR ' +
        'AND PARCELA_PAR_FRC = PARCELA_PAR ' +
        'AND TP_PAR_FRC = TP_PAR ' +
        'WHERE COD_EMP_PAR = ' + SIA_Empresa +
        ' AND COD_DIV_PAR = ' + coddiv +
        ' AND UNICA_PAR=''N'' ';
      qry.Open;
      Parcela := IntToStr(StrToInt(PreencheZero(qry.FieldByName('PARCELA').AsString, 2)));

      // Acrescenta a Diferenca na ultima Parcela
      qry.Close;
      qry.SQL.Text := 'UPDATE FI_RECEITAS SET LVALOR_FRC = LVALOR_FRC + ' + Replace(floattostr(Diferenca), ',', '.') + // ','+
        ' WHERE COD_EMP_FRC = ' + SIA_Empresa +
        ' AND COD_DIV_FRC = ' + coddiv +
        ' AND TP_PAR_FRC = 1 ' +
        ' AND ANO_FRC = ' + EdRef.Text +
        ' AND COD_REC_FRC = ' + Receita +
        ' AND PARCELA_PAR_FRC = ' + Parcela;
      qry.ExecSQL;

      // Ver o Valor Atualizado da Ultima Parcela
      qry.Close;
      qry.SQL.Text := 'SELECT LVALOR_FRC TOT ' +
        ' FROM FI_RECEITAS ' +
        ' WHERE COD_EMP_FRC = ' + SIA_Empresa +
        ' AND COD_DIV_FRC = ' + coddiv +
        ' AND TP_PAR_FRC = 1 ' +
        ' AND ANO_FRC = ' + EdRef.Text +
        ' AND COD_REC_FRC = ' + Receita +
        ' AND PARCELA_PAR_FRC = ' + Parcela;
      qry.Open;
      VlrIsento   := VerIsencoes(SIA_Empresa, CodRural, Receita, qry.FieldByName('TOT').AsFloat, Gera);
      VlrDesconto := VerDesconto(SIA_Empresa, CodRural, Receita, strtoint(Parcela), TruncaSIA7(qry.FieldByName('TOT').AsFloat - VlrIsento));

      // Atualiza da Descontos e Isenções da Ultima Parcela
      qry.Close;
      qry.SQL.Text := 'UPDATE FI_RECEITAS SET LDESCOVENCI_FRC = ' + Replace(floattostr(VlrDesconto), ',', '.') + ',' +
        'LISENTO_FRC = ' + Replace(floattostr(VlrIsento), ',', '.') +
        ' WHERE COD_EMP_FRC = ' + SIA_Empresa +
        ' AND COD_DIV_FRC = ' + coddiv +
        ' AND TP_PAR_FRC = 1 ' +
        ' AND ANO_FRC = ' + EdRef.Text +
        ' AND COD_REC_FRC = ' + Receita +
        ' AND PARCELA_PAR_FRC = ' + Parcela;
      qry.ExecSQL;

      qrx.Next;
    end;

    FreeAndNil(qrx);
    FreeAndNil(qry);
    result := 0;
  except
    on E: Exception do begin
      dm.msg.MessageDlg('Erro Acertando Diferença das Receitas Truncadas.' + #13 +
        'Entrar em Contato com seu Representante.' + #13 +
        'Erro : ' + E.Message, mtError, [mbok], 0);
      result := 1;
      FreeAndNil(qrx);
      FreeAndNil(qry);
    end;
  end;
end;

procedure TFCalcRural.BtnConfirmaClick(Sender: TObject);
var
  TempoInicial, TempoFinal, Intervalo, i, j, achou              : Integer;
  Erro, idparcela, matric, verlanc, onde, rec, Prj, HoraI, HoraF: string;
  qrx, qry, qValorVenal                                         : TSQLQuery;
  Marcados                                                      : TStringList;
  Pesq                                                          : TPesq_ConfCalcRR;
  PCls                                                          : TPesq_Classificacao_RR;
  EXP, TAXAS, PARCELA, totReceita, vrReceita, vvenal            : Double;
  verDiv, verSituDiv                                            : boolean;
  ultdivida, coddivida, idtotparcs, totparcela                  : integer;
  aux                                                           : variant;
begin
  if trim(EdRef.Text) = '' then begin
    dm.msg.MessageDlg('Informe uma Referência!', mtinformation, [mbok], 0);
    EdRef.SetFocus;
    exit;
  end;

  // ----------- CRIA XML PARA VERIFICAÇÃO DE ERRO ----------- //
  if FileExists(ExtractFilePath(Application.ExeName) + 'ERRCALCRURAL.XML') then
    DeleteFile(ExtractFilePath(Application.ExeName) + 'ERRCALCRURAL.XML');

  CriaXML;

  CDSERR.Close;
  CDSERR.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ERRCALCRURAL.XML');
  CDSERR.Open;
  // -----------------

  TempoInicial := GetTickCount;
  HoraI        := FormatDateTime('HH:MM:SS', Time);
  if Projeta then
    Prj := 'P'
  else
    Prj := 'C';

  onde := '';
  if RG.ItemIndex = 0 then begin
    if (trim(edINI.Text) = '') or (trim(edFIM.Text) = '') then begin
      dm.msg.MessageDlg('Selecione o Cadastro Inicial e um Final!', mtinformation, [mbok], 0);
      if (trim(edINI.Text) = '') then
        edINI.SetFocus
      else
        edFIM.SetFocus;
      exit;
    end;
    onde := ' AND COD_RRR BETWEEN ' + '''' + edINI.Text + '''' + ' AND ' + '''' + edFIM.Text + '''';
  end;

  if (trim(msk5.Text) <> '') and (trim(msk6.Text) <> '') then
    onde := onde + ' AND COD_LOG_RRR >= ' + '''' + trim(msk5.Text) + '''' +
      ' AND COD_LOG_RRR <= ' + '''' + trim(msk6.Text) + '''';

  if (trim(msk9.Text) <> '') and (trim(msk10.Text) <> '') then
    onde := onde + ' AND COD_STR_RRR >= ' + '''' + trim(msk9.Text) + '''' +
      ' AND COD_STR_RRR <= ' + '''' + trim(msk10.Text) + '''';

  rec   := '';
  for i := 0 to lstCob.Items.Count - 1 do begin
    if lstCob.Checked[i] then
      rec := rec + copy(lstCob.Items.Strings[i], 1, 2) + ',';
  end;
  if trim(rec) <> '' then
    if length(trim(copy(rec, 1, length(rec) - 1))) = 1 then
      onde := onde + ' AND COD_COB_RRR = ' + trim(copy(rec, 1, length(rec) - 1))
    else
      onde := onde + ' AND COD_COB_RRR IN (' + trim(copy(rec, 1, length(rec) - 1)) + ')';

  rec := '';

  cdsCal.Close;
  sqlCal.CommandText := 'SELECT COD_RRR, MATRIC_RRR, COD_LOG_RRR, COMPL_RRR, COD_CNT_RRR, ' +
    'COD_LOGE_RRR, LOGRAE_RRR, COD_BAIE_RRR, BAIRROE_RRR, ' +
    'NUMEROE_RRR, CEPE_RRR, COMPLEE_RRR, COD_CIDE_RRR, UFE_RRR, ' +
    'DEBAU_RRR, COD_BCO_RRR, COD_BANCO_RRR, COD_AGEN_RRR, ' +
    'COD_CONTA_RRR, DTDEBAU_INC_RRR, DTDEBAU_IXC_RRR, HISTO_RRR, ' +
    'AREAH_RRR, AREAE_RRR, AREAM_RRR, DISTANCIA_RRR, PONTOS_RRR, ' +
    'VVENAL_RRR, COD_COB_RRR, COD_STR_RRR, COD_CLASS_RRR, ' +
    'COD_TIPE_RRR, COD_TITE_RRR, TIPOLOGE_RRR, TITULOLOGE_RRR ' +
    'FROM RR_CAD_RURAL ' +
    'WHERE COD_EMP_RRR = ' + SIA_Empresa + onde +
    ' ORDER BY COD_RRR';
  cdsCal.Open;
  if cdsCal.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Cadastro foi Encontrado!', mtinformation, [mbok], 0);
    cdsCal.Close;
    exit;
  end;

  try
    Limpa;
    qrx               := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text      := 'SELECT COUNT(*) TOT FROM RR_CAD_RURAL ' +
      'WHERE COD_EMP_RRR = ' + SIA_Empresa + onde;
    qrx.Open;
    bar.Visible            := True;
    BtnConfirma.Enabled    := False;
    BtnProjeta.Enabled     := False;
    btnImpGuias.Enabled    := False;
    btnLancamentos.Enabled := False;
    bar.MaxValue           := qrx.FieldValues['TOT'];
    bar.Progress           := 0;
    edTotGeral.Caption     := vartostr(qrx.FieldValues['TOT']);
    FreeAndNil(qrx);

    // ---------------------//
    // Calculando Rural  //
    // ---------------------//

    Pesq := TPesq_ConfCalcRR.Create;
    Pesq.PesquisaConfig('1');
    if trim(vartostr(Pesq.v03)) = '' then begin
      dm.msg.MessageDlg('Atenção!!!' + #13 +
        'Para se efetuar um Cadastro é necessário que as Configurações estejam cadastradas.' + #13 +
        'Entrar em [TABELAS GERAIS] - [1.7 - Configurações]', mtWarning, [mbok], 0);
      FreeAndNil(Pesq);
      exit;
    end;
    FreeAndNil(Pesq);

    vrReceita  := 0;
    totReceita := 0;
    cdsCal.First;
    while not cdsCal.Eof do begin
      vrReceita        := 0;
      edCadast.Caption := cdsCal.FieldByName('COD_RRR').AsString;
      Application.ProcessMessages;
      Pesq := TPesq_ConfCalcRR.Create;
      Pesq.PesquisaConfig('1');

      // ((((Área Alqu. * indice Aum. * 1,50) / 100) + PontDistância) * VrPonto
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '01') then begin
        vvenal := cdsCal.fieldByName('AREAH_RRR').AsCurrency * StrToFloat(vrALQ);
      end;

      // Valor do ponto * Nº do Pontos
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '02') then begin
        vvenal := cdsCal.fieldByName('AREAE_RRR').AsCurrency * StrToFloat(vrHEQ);
      end;

      // Valor Alqueire * Alqueire
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '03') then begin
        vvenal := cdsCal.fieldByName('AREAH_RRR').AsCurrency * StrToFloat(vrALQ);
      end;

      // (Valor do Ponto * Nponto) * (100 - Valor TabDistancia) / 100
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '04') then begin
        vvenal := cdsCal.fieldByName('AREAE_RRR').AsCurrency * StrToFloat(vrHEQ);
      end;

      // (Valor do Ponto * Nponto) * (Valor TabDistancia/100)
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '05') then begin
        vvenal := cdsCal.fieldByName('AREAE_RRR').AsCurrency * StrToFloat(vrHEQ);
      end;

      // Indice * Area em Alqueire
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '07') then begin
        vvenal := cdsCal.fieldByName('AREAH_RRR').AsCurrency * StrToFloat(vrALQ);
      end;

      // Indice * Area em Equitare
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '08') then begin
        vvenal := cdsCal.fieldByName('AREAE_RRR').AsCurrency * StrToFloat(vrHEQ);
      end;

      // Area em Alqueire * Classificação
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '09') then begin
        PCls := TPesq_Classificacao_RR.Create;
        PCls.PesquisaClassificacaoRR(cdsCal.FieldByName('COD_CLASS_RRR').AsString, EdRef.Text);
        vvenal := Arredonda(cdsCal.fieldByName('AREAH_RRR').AsFloat * PCls.Valor, 2);
        FreeAndNil(PCls);
      end;

      // Area em Hectare * Classificação * PONTOS
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '10') then begin
        PCls := TPesq_Classificacao_RR.Create;
        PCls.PesquisaClassificacaoRR(cdsCal.FieldByName('COD_CLASS_RRR').AsString, EdRef.Text);
        vvenal := Arredonda(cdsCal.fieldByName('AREAE_RRR').AsFloat * PCls.Valor * ((cdsCal.fieldByName('PONTOS_RRR').AsFloat / 100) + 1), 2);
        FreeAndNil(PCls);
      end;

      // Informado
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '11') then begin
        vvenal := Arredonda(cdsCal.fieldByName('VVENAL_RRR').AsFloat, 2);
      end;

      // Area em Hectare * Classificação
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '12') then begin
        PCls := TPesq_Classificacao_RR.Create;
        PCls.PesquisaClassificacaoRR(cdsCal.FieldByName('COD_CLASS_RRR').AsString, EdRef.Text);
        vvenal := Arredonda(cdsCal.fieldByName('AREAE_RRR').AsFloat * PCls.Valor, 2);
        FreeAndNil(PCls);
      end;

      // Area em Hectare * Hectare
      if (copy(trim(vartostr(Pesq.v03)), 1, 2) = '15') then begin
        vvenal := cdsCal.fieldByName('AREAE_RRR').AsCurrency * StrToFloat(vrHEQ);
      end;

      verDiv    := VerificaDividas(EdRef.Text, '4', cdsCal.FieldValues['COD_RRR'], PrincipalRUR);
      ultdivida := VerificaUltimaDivida(EdRef.Text, '4', cdsCal.FieldValues['COD_RRR'], PrincipalRUR);

      if verDiv then begin // Possui divida em andamento
        if dm.msg.MessageDlg('Há parcela Baixada, parcelada, ajuizada ou Inscrita em Divida Ativa.' + char(13) +
          ' Será criado um lançamento novo para esse cálculo. Os lançamentos existentes, e que estão em aberto' + char(13) +
          ' terão que ser baixado para que a divida nao fique duplicada. Deseja Cancelar o Calculo ?', mtConfirmation, [mbyes, mbno], 0) = mrYes then
          exit
        else
          verlanc := ' WHERE COD_EMP_DIV = ' + SIA_Empresa + ' AND COD_DIV IS NULL';
      end
      else begin
        verlanc := ' WHERE COD_EMP_DIV = ' + SIA_Empresa + ' AND COD_DIV = ' + inttostr(ultdivida) + ' AND ANO_DIV = ' + EdRef.Text + ' AND COD_CAD_DIV = ' + '''' + cdsCal.FieldValues['COD_RRR'] + '''' + ' AND COD_MOD_DIV = 4 AND COD_REP_DIV = ' + PrincipalRUR;
      end;

      if (cdsCal.FieldValues['MATRIC_RRR'] = NULL) or (cdsCal.FieldValues['MATRIC_RRR'] = '') then
        matric := '.'
      else
        matric := cdsCal.FieldValues['MATRIC_RRR'];

      edVR.Caption  := formatCurr('0.00', strtofloat(edVR.Caption) + (vrReceita));
      edTOT.Caption := formatCurr('0.00', strtofloat(edTOT.Caption) + (totReceita));
      Application.ProcessMessages;

      if not dm.Conexao.InTransaction then
        dm.Conexao.StartTransaction(TD);
      try
        if not(ckValorVenal.Checked) then begin
          SalvaFinanceiro_FI_DIVIDA(verlanc,
            coddivida,                                               // Retorna o Codigo da Divida
            SIA_Empresa,                                             // COD_EMP_DIV
            0,                                                       // COD_DIV
            4,                                                       // COD_MOD_DIV
            PrincipalRUR,                                            // COD_REP_DIV
            EdRef.Text,                                              // ANO_DIV
            EdRef.Text,                                              // ANOREF_DIV
            date,                                                    // DATACADAST_DIV
            '01 - Dívida do Exercício',                              // ORIGEM_DIV
            cdsCal.FieldValues['COD_CNT_RRR'],                       // COD_CNT_DIV
            NULL,                                                    // CODC_CNT_DIV
            matric,                                                  // MATRICULA_DIV
            cdsCal.FieldValues['COD_RRR'],                           // COD_CAD_DIV
            0,                                                       // VRPREDIAL_DIV
            0,                                                       // VREXCEDENTE_DIV
            vvenal,                                                  // VRTERRIT_DIV
            0,                                                       // AREAEDI_DIV
            cdsCal.FieldValues['AREAM_RRR'],                         // AREATER_DIV
            0,                                                       // AREAEXCE_DIV
            0,                                                       // TESTADA_DIV
            NULL,                                                    // NOMEF_DIV
            NULL,                                                    // SECAO_DIV
            NULL,                                                    // SETOR_DIV
            NULL,                                                    // QUADRA_DIV
            NULL,                                                    // LOTE_DIV
            NULL,                                                    // UNIDADE_DIV
            NULL,                                                    // COD_BAI_DIV
            cdsCal.FieldValues['COD_LOG_RRR'],                       // COD_LOG_DIV
            NULL,                                                    // NUMERO_DIV
            copy(cdsCal.fieldByName('COMPL_RRR').AsString, 1, 40),   // COMPLE_DIV
            NULL,                                                    // CEPI_DIV
            NULL,                                                    // FORA_DIV
            cdsCal.FieldValues['COD_BAIE_RRR'],                      // COD_BAIE_DIV
            cdsCal.FieldValues['BAIRROE_RRR'],                       // BAIRRO_DIV
            cdsCal.FieldValues['COD_LOGE_RRR'],                      // COD_LOGE_DIV
            cdsCal.FieldValues['LOGRAE_RRR'],                        // LOGRA_DIV
            cdsCal.FieldValues['NUMEROE_RRR'],                       // NUMEROE_DIV
            cdsCal.FieldValues['CEPE_RRR'],                          // CEPE_DIV
            copy(cdsCal.fieldByName('COMPLEE_RRR').AsString, 1, 40), // COMPLEE_DIV
            cdsCal.FieldValues['COD_CIDE_RRR'],                      // COD_CID_DIV
            cdsCal.FieldValues['DEBAU_RRR'],                         // DEBAU_DIV
            cdsCal.FieldValues['COD_BCO_RRR'],                       // COD_BCO_DIV
            cdsCal.FieldValues['COD_AGEN_RRR'],                      // COD_AGEN_DIV
            cdsCal.FieldValues['COD_CONTA_RRR'],                     // COD_CONTA_DIV
            cdsCal.FieldValues['HISTO_RRR'],                         // HISTO_DIV
            NULL,                                                    // FACE_DIV
            cdsCal.FieldValues['DTDEBAU_INC_RRR'],                   // DTDEBAU_INC_DIV
            cdsCal.FieldValues['DTDEBAU_IXC_RRR'],                   // DTDEBAU_IXC_DIV
            SIA_Usuario,                                             // LOGIN_INC_DIV
            DataBanco,                                               // DTA_INC_DIV
            SIA_Usuario,                                             // LOGIN_ALT_DIV
            DataBanco,                                               // DTA_ALT_DIV
            formatdatetime('MM', Date),                              // REFER_DIV
            cdsCal.FieldValues['COD_COB_RRR'],                       // COD_COB_DIV
            cdsCal.FieldValues['COD_STR_RRR'],                       // COD_STR_DIV
            strtoint(EdRef.Text),                                    // ANO_STR_DIV
            NULL,                                                    // COD_PRO_DIV
            NULL,                                                    // ANO_PRO_DIV
            NULL,                                                    // COD_TIPLOG_DIV
            NULL,                                                    // TIPOLOG_DIV
            NULL,                                                    // COD_TITLOG_DIV
            NULL,                                                    // TITLOG_DIV
            cdsCal.FieldValues['COD_TIPE_RRR'],                      // COD_TIPLOGE_DIV
            retornaTipoLog(cdsCal.FieldValues['COD_TIPE_RRR']),      // TIPOLOGE_DIV
            cdsCal.FieldValues['COD_TITE_RRR'],                      // COD_TITLOGE_DIV
            retornaTitLog(cdsCal.FieldValues['COD_TITE_RRR'])        // TITLOGE_DIV
            );

          // Parcelas
          qrx               := TSQLQuery.Create(Application.Owner);
          qrx.SQLConnection := dm.Conexao;
          qrx.SQL.Text      := 'SELECT COD_EMP_STR, ANO_STR, COD_STR, COD_IND_STR, NOM_LANCA_STR, ' +
            'FATORCORRE_STR, UFM_STR, EXPED_STR, VRMINIMO_STR, ' +
            '(SELECT COUNT(*) FROM RR_VENCIMENTOS ' +
            'WHERE RR_VENCIMENTOS.COD_EMP_VEN = RR_SETOR.COD_EMP_STR ' +
            ' AND RR_VENCIMENTOS.COD_STR_VEN = RR_SETOR.COD_STR ' +
            ' AND RR_VENCIMENTOS.ANO_STR_VEN = RR_SETOR.ANO_STR ' +
            ' AND (RR_VENCIMENTOS.UNICA_VEN = ''N'' OR RR_VENCIMENTOS.UNICA_VEN IS NULL)) AS TOTPARC ' +
            'FROM RR_SETOR ' +
            'WHERE RR_SETOR.COD_EMP_STR = ' + SIA_Empresa +
            ' AND RR_SETOR.COD_STR = ' + '''' + cdsCal.FieldByName('COD_STR_RRR').AsString + '''' +
            ' AND RR_SETOR.ANO_STR = ' + EdRef.Text;
          qrx.Open;
          if qrx.IsEmpty then begin
            GravaErro(cdsCal.FieldByName('COD_RRR').AsString,
              'Código do Setor de Vencimento Inexistente no Cadastro.');
          end;

          // acertando valor das parcelas de acordo com o valor minimo das mesmas
          totparcela := qrx.FieldValues['TOTPARC'];

          if totparcela <= 0 then begin
            GravaErro(cdsCal.FieldByName('COD_RRR').AsString,
              'Parcelas Inválidas no Setor de Vencimento.');
          end
          else
            PARCELA := vrReceita / totparcela;

          if (chkExp.Checked) then
            EXP := qrx.fieldByName('EXPED_STR').AsCurrency
          else
            EXP := 0;

          if not(qrx.FieldByName('VRMINIMO_STR').IsNull) then begin
            if qrx.FieldByName('VRMINIMO_STR').AsInteger > 0 then begin
              while (PARCELA + EXP) < qrx.FieldValues['VRMINIMO_STR'] do begin
                totparcela := totparcela - 1;
                if totparcela <= 0 then begin
                  totparcela := 1;
                  break;
                end;
                PARCELA := vrReceita / totparcela;
              end;
            end;
          end;

          // Ajusta Parcelas
          idparcela  := '';
          idtotparcs := 1;
          if totparcela <> qrx.FieldValues['TOTPARC'] then begin
            // Acrescenta todas as Unicas
            qry               := TSQLQuery.Create(Application.Owner);
            qry.SQLConnection := dm.Conexao;
            qry.SQL.Text      := 'SELECT NRPARCE_VEN, VENCI_VEN, UNICA_VEN, MENS1_VEN ' +
              'FROM RR_VENCIMENTOS ' +
              'WHERE RR_VENCIMENTOS.COD_EMP_VEN = ' + qrx.FieldByName('COD_EMP_STR').AsString +
              ' AND RR_VENCIMENTOS.COD_STR_VEN = ' + '''' + qrx.FieldByName('COD_STR').AsString + '''' +
              ' AND RR_VENCIMENTOS.ANO_STR_VEN = ' + qrx.FieldByName('ANO_STR').AsString +
              ' ORDER BY RR_VENCIMENTOS.UNICA_VEN';
            qry.Open;
            while not qry.Eof do begin
              if qry.FieldByName('UNICA_VEN').AsString = 'S' then
                idparcela := idparcela + '''' + qry.FieldByName('NRPARCE_VEN').AsString + ''',';
              qry.Next;
            end;

            // Acrescenta o restante das parcelas subtraindo as sobressalentes
            qry.Close;
            qry.SQL.Text := 'SELECT NRPARCE_VEN, VENCI_VEN, MENS1_VEN ' +
              'FROM RR_VENCIMENTOS ' +
              'WHERE RR_VENCIMENTOS.COD_EMP_VEN = ' + qrx.FieldByName('COD_EMP_STR').AsString +
              ' AND RR_VENCIMENTOS.COD_STR_VEN = ' + '''' + qrx.FieldByName('COD_STR').AsString + '''' +
              ' AND RR_VENCIMENTOS.ANO_STR_VEN = ' + qrx.FieldByName('ANO_STR').AsString +
              ' AND (RR_VENCIMENTOS.UNICA_VEN = ''N'' OR  RR_VENCIMENTOS.UNICA_VEN is NULL) ' +
              ' ORDER BY RR_VENCIMENTOS.NRPARCE_VEN';
            qry.Open;
            while not qry.Eof do begin
              if totparcela < idtotparcs then
                break;
              idparcela := idparcela + '''' + qry.FieldByName('NRPARCE_VEN').AsString + ''',';
              inc(idtotparcs);
              qry.Next;
            end;
            FreeAndNil(qry);

            // Tira a Virgula do Final
            idparcela := copy(idparcela, 1, length(idparcela) - 1);
          end;

          edExped.Caption := formatCurr('0.00', strtofloat(edExped.Caption) + (EXP * totparcela));

          Erro := '';
          onde := '';
          if trim(idparcela) <> '' then
            onde := ' AND NRPARCE_VEN IN (' + idparcela + ') ORDER BY NRPARCE_VEN'
          else
            onde := ' ORDER BY NRPARCE_VEN';

          qry               := TSQLQuery.Create(Application.Owner);
          qry.SQLConnection := dm.Conexao;
          qry.SQL.Text      := 'SELECT NRPARCE_VEN, VENCI_VEN, UNICA_VEN, MENS1_VEN ' +
            'FROM RR_VENCIMENTOS ' +
            'WHERE COD_EMP_VEN = ' + qrx.FieldByName('COD_EMP_STR').AsString +
            ' AND COD_STR_VEN = ' + '''' + qrx.FieldByName('COD_STR').AsString + '''' +
            ' AND ANO_STR_VEN = ' + qrx.FieldByName('ANO_STR').AsString +
            onde;
          qry.Open;
          while not qry.Eof do begin

            for i              := 1 to 10 do begin
              matTaxasRR[i][1] := '';
              matTaxasRR[i][2] := '';
              matTaxasRR[i][3] := '';
            end;

            if qry.FieldByName('UNICA_VEN').AsString = 'S' then
              aux := 0
            else
              aux := 1;

            SalvaFinanceiro_FI_PARCELA(' Where COD_DIV_PAR = ' + inttostr(coddivida) + ' And PARCELA_PAR = ' + qry.FieldByName('NRPARCE_VEN').AsString,
              SIA_Empresa,                                                   // COD_EMP_PAR
              coddivida,                                                     // COD_DIV_PAR
              qry.FieldByName('NRPARCE_VEN').AsInteger,                      // PARCELA_PAR
              1,                                                             // TP_PAR
              Null,                                                          // LIVRO_PAR
              Null,                                                          // FOLHA_PAR
              Null,                                                          // INSCRI_PAR
              Null,                                                          // DATAINSCRI_PAR
              Null,                                                          // DATAPAGTO_PAR
              Null,                                                          // DATAMOVIM_PAR
              Null,                                                          // LOTE_PAR
              Null,                                                          // COD_BCO_PAR
              qry.FieldByName('VENCI_VEN').AsDateTime,                       // DATAVENCI
              'N',                                                           // MOEDA_PAR
              1,                                                             // COD_IND_PAR
              date,                                                          // DATAGERACAO_PAR
              Null,                                                          // DATAEXEC_PARC
              aux,                                                           // SITUACAO_PAR
              'N',                                                           // CANCELADO_PAR
              'N',                                                           // ATIVA_PAR
              'N',                                                           // EXECUTADA_PAR
              'N',                                                           // PARCE_PAR
              Null,                                                          // DATACANCELA_PAR
              Null,                                                          // DATAPARCE_PAR
              Null,                                                          // PROCESSO_PAR
              qry.FieldByName('UNICA_VEN').AsString,                         // UNICA_PAR
              'N',                                                           // CCAGUA_PAR
              'TAXA RURAL',                                                  // DESCR_PAR
              BuscaDataSetorUFM(SIA_Empresa, SIA_Modulo, SIA_Exercicio, ''), // DTCORRECAO_PAR
              SIA_Usuario,                                                   // LOGIN_INC_PAR
              DataBanco,                                                     // DTA_INC_PAR
              SIA_Usuario,                                                   // LOGIN_ALT_PAR
              DataBanco);                                                    // DTA_ALT_PAR

            cFin._InsereFI_EVENTO_PARCELA(SIA_Empresa,
              coddivida,
              qry.FieldByName('NRPARCE_VEN').AsInteger,
              1,
              'CALCULO RURAL - ' + IIF(Projeta = True, 'PROJETADO', 'CALCULADO'), // EVENTO
              'Gerada a partir do calculo dos impostos ou taxas do módulo rural',
              SIA_Usuario,
              DataBanco,
              'LANCAMENTO'
              );

            if Pesq.v01 <> 'S' then
              Pesq.v01 := 'N';

            VerMatrizFinRec(SIA_Empresa,
              cdsCal.FieldByName('COD_RRR').AsString,
              coddivida,
              qry.FieldByName('NRPARCE_VEN').AsInteger,
              aux,
              totparcela,
              vrReceita,
              EXP,
              cdsCal.FieldByName('AREAH_RRR').AsCurrency,
              cdsCal.FieldByName('PONTOS_RRR').AsCurrency,
              Pesq.v01,
              Erro);

            if trim(Erro) <> '' then begin
              Limpa;
              dm.Conexao.Rollback(TD);
              dm.msg.MessageDlg('Cálculo Cancelado por Falta de Dados.', mtwarning, [mbok], 0);
              FreeAndNil(qry);
              FreeAndNil(qrx);
              FreeAndNil(Pesq);
              exit;
            end;
            qry.Next;
          end;

        end; // nao gera valores

        // Altera Valor Venal Calculado no Cadastro
        qValorVenal               := TSQLQuery.Create(Application.Owner);
        qValorVenal.SQLConnection := dm.Conexao;
        qValorVenal.close;
        qValorVenal.SQL.Text := 'UPDATE RR_CAD_RURAL SET VVENAL_RRR = ' + Subs_Virgula_por_Ponto(CurrToStr(vvenal)) +
          ' WHERE COD_EMP_RRR = ' + Sia_Empresa +
          ' AND COD_RRR = ''' + cdsCal.fieldByName('COD_RRR').AsString + '''';
        qValorVenal.execsql;

        FreeAndNil(qvalorvenal);
        FreeAndNil(qry);
        FreeAndNil(qrx);
        FreeAndNil(Pesq);

        dm.Conexao.Commit(TD);

        if AcertaReceitasTruncadas(cdsCal.FieldValues['COD_RRR'], inttostr(coddivida)) <> 0 then
          GravaErro(cdsCal.FieldByName('COD_RRR').AsString, 'Acertando Receitas Truncadas.');

      except
        on E: Exception do begin
          GravaErro(cdsCal.FieldByName('COD_RRR').AsString, 'Erro ao Salvar Lançamento Calculado. ' + E.Message);
          dm.Conexao.Rollback(TD);
        end;
      end;

      bar.Progress := bar.Progress + 1;
      Application.ProcessMessages;
      cdsCal.Next;
    end;

    Projeta    := False;
    TempoFinal := GetTickCount;
    HoraF      := FormatDateTime('HH:MM:SS', Time);

    Intervalo       := TempoFinal - TempoInicial;
    Label13.Visible := False;
    if ParamStr(2) = 'design' then begin
      Label13.Visible := True;
      Label13.Caption := inttostr(Intervalo);
    end;

    bar.Visible         := False;
    BtnConfirma.Enabled := True;
    BtnProjeta.Enabled  := True;
    btnImpGuias.Enabled := True;
    if (trim(edINI.Text) = trim(edFIM.Text)) then
      btnLancamentos.Enabled := True;
    Projeta                  := False;

    Marcados := TStringList.Create;
    Marcados.Add('------------------ PARÂMETROS ---------------------');
    if RG.ItemIndex = 1 then
      Marcados.Add('Todos os Cadastros')
    else
      Marcados.Add('Cadastros - Parcial');
    Marcados.Add('');
    Marcados.Add('Exercícios de ' + trim(EdRef.Text));
    if (trim(edINI.Text) <> '') then
      Marcados.Add('Cadastros de ' + trim(edINI.Text) + ' até ' + trim(edFIM.Text));
    if (trim(msk5.Text) <> '') then
      Marcados.Add('Logradouros de ' + trim(msk5.Text) + ' até ' + trim(msk6.Text));
    if (trim(msk9.Text) <> '') then
      Marcados.Add('Setor de Vencimento de ' + trim(msk9.Text) + ' até ' + trim(msk10.Text));
    rec   := '';
    for i := 0 to lstCob.Items.Count - 1 do begin
      if lstCob.Checked[i] then
        rec := rec + copy(lstCob.Items.Strings[i], 1, 2) + ',';
    end;
    if (trim(rec) <> '') then
      Marcados.Add('Códigos de Cobrança = (' + trim(copy(rec, 1, length(rec) - 1)) + ')');
    Marcados.Add('');
    Marcados.Add('');
    Marcados.Add('--------------------- AÇÃO -----------------------');
    if Prj = 'P' then
      Marcados.Add('PROJETOU')
    else
      Marcados.Add('CALCULOU');
    Marcados.Add('');
    Marcados.Add('-------------------- TEMPO -----------------------');
    Marcados.Add('INICIOU : ' + HoraI + ' - TERMINOU : ' + HoraF);

    dm.Sia_Log_Execucao(Sia_Usuario, 'CALCULOU RURAL', Marcados);
    FreeAndNil(Marcados);

    dm.msg.MessageDlg('Cálculo Finalizado.', mtinformation, [mbok], 0);

    if not CDSERR.IsEmpty then
      btnNaoCalculado.Enabled := True
    else
      btnNaoCalculado.Enabled := False;

  except
    on E: Exception do begin

      if not CDSERR.IsEmpty then
        btnNaoCalculado.Enabled := True
      else
        btnNaoCalculado.Enabled := False;

      dm.msg.MessageDlg('Problemas com o Cálculo.' + #13 +
        'Verificar o Cadastro nro : ' + cdsCal.FieldByName('COD_RRR').AsString + #13 +
        'Erro : ' + E.Message, mterror, [mbok], 0);

      bar.Visible         := False;
      BtnConfirma.Enabled := True;
      BtnProjeta.Enabled  := True;
      btnImpGuias.Enabled := True;
      if (trim(edINI.Text) = trim(edFIM.Text)) then
        btnLancamentos.Enabled := True;
      dm.Conexao.Rollback(TD);
      Projeta := False;
    end;
  end;
end;

procedure TFCalcRural.btnLancamentosClick(Sender: TObject);
begin
  Application.CreateForm(TFConsultaLancamento, FConsultaLancamento);
  FConsultaLancamento.comboModulo.Value   := '4'; // Rural
  FConsultaLancamento.mkdata.Text         := formatdatetime('dd/mm/yyyy', now);
  FConsultaLancamento.comboModulo.Enabled := False;
  FConsultaLancamento.mkCadastro.Text     := edINI.Text;
  FConsultaLancamento.mkCadastroExit(nil);
  FConsultaLancamento.ShowModal;
  FConsultaLancamento.Free;
end;

procedure TFCalcRural.btnCadINIClick(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then begin
    edINI.Text := vartostr(Pesq.CADASTRO);
    if trim(edFIM.Text) = '' then
      edFIM.Text := edINI.Text;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCalcRural.BtnCadFimClick(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then
    edFIM.Text := vartostr(Pesq.CADASTRO);
  FreeAndNil(Pesq);
end;

procedure TFCalcRural.BtnProjetaClick(Sender: TObject);
begin
  Projeta := True;
  BtnConfirmaClick(@Sender);
end;

procedure TFCalcRural.btnNaoCalculadoClick(Sender: TObject);
begin
  if not CDSERR.Active then
    CDSERR.Open;

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
end;

procedure TFCalcRural.btnImpGuiasClick(Sender: TObject);
begin
  Application.CreateForm(TFRelGuiasRR, FRelGuiasRR);
  SIA_Aplicacao         := 'FRelGuiasRR';
  FRelGuiasRR.msk1.text := edINI.Text;
  FRelGuiasRR.msk2.text := edFIM.Text;
  FRelGuiasRR.ShowModal;
  FRelGuiasRR.Free;
end;

end.
