unit UExportaLanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzShellDialogs, EMsgDlg, RzButton, RzSplit, StdCtrls, RzBckgnd, IniFiles,
  ExtCtrls, RzPanel, Gauges, Mask, Buttons, RzEdit, RzBtnEdt, RzRadGrp, SqlExpr,
  FMTBcd, DB, DBClient, Provider, Grids, DBGrids, ComCtrls, DBCtrls, RzLabel, ECkBox, RzCmboBx;

type
  TFExportaLanc = class(TForm)
    RzPanel2: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    RzPanel10: TRzPanel;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    Label3: TLabel;
    rdOrdem: TRadioGroup;
    GroupBox3: TGroupBox;
    mkExercicio: TMaskEdit;
    GroupBox2: TGroupBox;
    mkSetor1: TMaskEdit;
    mkSetor2: TMaskEdit;
    Label4: TLabel;
    sqlResumo: TSQLDataSet;
    dspResumo: TDataSetProvider;
    cdsResumo: TClientDataSet;
    btnSetVenc: TSpeedButton;
    SpeedButton1: TSpeedButton;
    sqlResumoParcela: TSQLDataSet;
    dspResumoParcela: TDataSetProvider;
    cdsResumoParcela: TClientDataSet;
    BtnSair: TRzBitBtn;
    QVerifica: TSQLQuery;
    RzURLLabel1: TRzURLLabel;
    GroupBox4: TGroupBox;
    btnAbrirPasta: TSpeedButton;
    PathDestino: TMaskEdit;
    NomeArquivo: TMaskEdit;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    gpTipoGuia: TGroupBox;
    checkCobrRegistrada: TEvCheckBox;
    gpConvenio: TGroupBox;
    comboConvenio: TDBLookupComboBox;
    comboTipoGuia: TRzComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnSetVencClick(Sender: TObject);
    procedure mkSetor1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure mkSetor1Exit(Sender: TObject);
    procedure mkSetor2Exit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure mkExercicioExit(Sender: TObject);
    procedure btnAbrirPastaClick(Sender: TObject);
    procedure comboTipoGuiaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExportaLanc: TFExportaLanc;

implementation

uses UDM, UPrin, Funcoes, funcoesTela, TrataErros, UClasse_Financeiro, aguarde, UClasse_PesqImob;

{$R *.dfm}


procedure TFExportaLanc.FormShow(Sender: TObject);
begin
  if ParamStr(2) = 'design' then
    TForm(Sender).Caption := TForm(Sender).Caption + ' (Top = ' + inttostr(TForm(Sender).Top) + ')' +
      ' (Left = ' + inttostr(TForm(Sender).Left) + ')';
  Sia_Aplicacao    := TForm(sender).Name;
  mkExercicio.text := Sia_exercicio;

  if Sia_PadraoGuia = 'F' then begin
    comboTipoGuia.ItemIndex := 1; // Ficha de Compensação
    comboConvenio.Enabled   := True;
    comboConvenio.Color     := clWhite;
  end
  else begin
    comboTipoGuia.ItemIndex := 0; // Carnê
    comboConvenio.Enabled   := False;
    comboConvenio.Color     := clBtnFace;
  end;

  BuscaMetodoAntigoParametro(TForm(Sender).Name, 'siaparam', Sia_Aplicacao + '_' + Sia_Usuario, 'PathDestino', 'STRING', 'C:\Fiorilli\'); // remover mais pra frente 16/11/2017
  BuscaMetodoAntigoParametro(TForm(Sender).Name, 'siaparam', Sia_Aplicacao + '_' + Sia_Usuario, 'NomeArquivo', 'STRING', 'CarneRural' + SIA_Exercicio + '.txt'); // remover mais pra frente 16/11/2017
  PathDestino.Text := BuscarParametrosTela(TForm(Sender).Name, 'PathDestino', 'C:\Fiorilli\');                        // Buscar parametros de tela
  NomeArquivo.Text := BuscarParametrosTela(TForm(Sender).Name, 'NomeArquivo', 'CarneRural' + SIA_Exercicio + '.txt'); // Buscar parametros de tela
end;

procedure TFExportaLanc.FormCreate(Sender: TObject);
begin
  dm.cdsCadConvenios.close;
  dm.sqlCadConvenios.Params.ParamValues['empresa'] := sia_empresa;
  dm.cdsCadConvenios.Open;
end;

procedure TFExportaLanc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = VK_F5) then begin
    DepuraSQLResultados(sql.CommandText);
  end;
end;

procedure TFExportaLanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GravarParametrosTela(TForm(sender).Name, 'PathDestino', PathDestino.Text); // guardar parametros usados
  GravarParametrosTela(TForm(sender).Name, 'NomeArquivo', NomeArquivo.Text); // guardar parametros usados

  dm.cdsCadConvenios.close;
  Action := caFree;
end;

procedure TFExportaLanc.SpeedButton1Click(Sender: TObject);
var
  Pesq: TPesq_IP_VENCIMENTO;
begin
  Pesq := TPesq_IP_VENCIMENTO.Create;

  if Pesq.BotaoIPVencimento('') then
    mksetor1.Text := vartostr(Pesq.COD_STR_VEN);

  FreeAndNil(Pesq);
end;

procedure TFExportaLanc.btnSetVencClick(Sender: TObject);
var
  Pesq: TPesq_IP_VENCIMENTO;
begin
  Pesq := TPesq_IP_VENCIMENTO.Create;

  if Pesq.BotaoIPVencimento('') then
    mkSetor2.Text := vartostr(Pesq.COD_STR_VEN);

  FreeAndNil(Pesq);
end;

procedure TFExportaLanc.comboTipoGuiaChange(Sender: TObject);
begin
  if comboTipoGuia.ItemIndex = 0 then begin // Carnê
    comboConvenio.Enabled  := False;
    comboConvenio.Color    := clBtnFace;
    comboConvenio.KeyValue := '';
  end
  else begin // Ficha de Compensação
    comboConvenio.Enabled := True;
    comboConvenio.Color   := clWhite;
  end;
end;

procedure TFExportaLanc.mkSetor1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFExportaLanc.RzBitBtn2Click(Sender: TObject);
var
  filtro, coddiv, ordem                                                                               : string;
  ArqTXT                                                                                              : TextFile;
  valor, totalAnual                                                                                   : Double;
  digverif, codbarra, nnumero, codcedente, digitavel, parte1, parte2, parte3, parte4, codrep1, codrep2: string;
  nparcela, i, cont, numerodereceitas, numerodeunica, espacounica                                     : Integer;
begin
  if not DirectoryExists(PathDestino.Text) then begin
    dm.Msg.MessageDlg('Diretório Informado não Existe.', MtInformation, [Mbok], 0);
    BtnAbrirPasta.Click;
    Exit;
  end;

  if Trim(NomeArquivo.Text) = '' then begin
    dm.Msg.MessageDlg('Informe o nome do Arquivo.', MtInformation, [Mbok], 0);
    NomeArquivo.SetFocus;
    Exit;
  end;

  if ExtractFileExt(UpperCase(NomeArquivo.Text)) <> '.TXT' then begin
    dm.Msg.MessageDlg('A Extensão do Arquivo deve ser [TXT].', MtInformation, [Mbok], 0);
    NomeArquivo.SetFocus;
    Exit;
  end;

  if trim(mkSetor1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Setor de Vencimento Inicial é Obrigatorio. Você deve informa-lo!!!', mtError, [mbok], 0);
    mkSetor1.SetFocus;
    Exit;
  end;

  if trim(mkSetor2.Text) = '' then begin
    dm.msg.MessageDlg('O campo Setor de Vencimento Final é Obrigatorio. Você deve informa-lo!!!', mtError, [mbok], 0);
    mkSetor2.SetFocus;
    Exit;
  end;

  if trim(mkExercicio.Text) = '' then begin
    dm.msg.MessageDlg('O campo Exercício é Obrigatorio. Você deve informa-lo!!!', mtError, [mbok], 0);
    mkExercicio.SetFocus;
    Exit;
  end;

  if rdOrdem.ItemIndex = 0 then // Cadastro
    ordem := 'ORDER BY COD_CAD_DIV,COD_DIV_PAR,TP_PAR,UNICA_PAR DESC,PARCELA_PAR '
  else if rdOrdem.ItemIndex = 1 then // Alfabetica
    ordem := 'ORDER BY NOME_CNT,COD_CAD_DIV,COD_DIV_PAR,UNICA_PAR DESC,PARCELA_PAR '
  else if rdOrdem.ItemIndex = 2 then // CEP Corresp
    ordem := 'ORDER BY CEPE_RRR,LOGRAE_RRR,NUMEROE_RRR,COD_CAD_DIV,COD_DIV_PAR,UNICA_PAR DESC,PARCELA_PAR '
  else if rdOrdem.ItemIndex = 3 then // Nome Log Corresp
    ordem := 'ORDER BY LOGRAE_RRR,NUMEROE_RRR,COD_MOD_DIV,COD_REP_DIV,COD_CAD_DIV,COD_DIV_PAR,UNICA_PAR DESC,PARCELA_PAR '
  else if rdOrdem.ItemIndex = 7 then // Cod Log Corresp
    ordem := 'ORDER BY COD_LOGE_RRR,NUMEROE_RRR,COD_MOD_DIV,COD_REP_DIV,COD_CAD_DIV,COD_DIV_PAR,UNICA_PAR DESC,PARCELA_PAR ';

  if (trim(mkSetor1.Text) <> '/  /') and (trim(mkSetor2.Text) <> '/  /') then
    filtro := filtro + ' AND COD_STR_RRR >= ' + '''' + mkSetor1.Text + '''' +
      ' AND COD_STR_RRR <= ' + '''' + mkSetor2.text + '''';

  if trim(mkExercicio.Text) <> '' then
    filtro := filtro + ' AND ANO_DIV=''' + mkExercicio.Text + ''' ';

  filtro := filtro + ' AND NOT EXISTS (SELECT 1 FROM OU_REL_GUIAS WHERE COD_EMP_ORG=COD_EMP_DIV AND COD_DIV_ORG=COD_DIV)';

  Application.CreateForm(Tfrmaguarde, frmaguarde);
  frmaguarde.LMens.Caption := 'Gerando Dados'; // Mensagem Principal
  frmaguarde.PB.Visible    := False;           // Barra de Progresso
  frmaguarde.Show;

  cds.close;
  sql.CommandText := 'SELECT TP_PAR,COD_DIV_PAR,SITUACAO_PAR,ANO_DIV,COD_REP_DIV, ' +
    'SUM(COALESCE(LVALOR_FRC,0)-COALESCE(LISENTO_FRC,0)) AS VALOR, ' +
    'DATAVENCI,PARCELA_PAR,DTCORRECAO_PAR,COTACAO_PAR,NNUMERO_PAR,UNICA_PAR, ' +
    'NOME_CNT,DESCRICAO_REP,COD_MOD_DIV,COD_CNT,COD_IND_PAR,CNPJ_CNT,RG_CNT,COD_CAD_DIV, ' +
    'LOGRA_RRR AS LOGRAI,OBSLOGRA_RRR AS OBSLOGRA,COMPL_RRR AS COMPLEI,MATRIC_RRR,' +
    'LOGRAE_RRR AS LOGRAE,BAIRROE_RRR AS BAIRROE,NUMEROE_RRR AS NUMEROE, ' +
    'CEPE_RRR AS CEPE,COMPLEE_RRR AS COMPLEE,NOME_CID AS CIDADE,UF_CID AS UF,' +
    'INCRA_RRR,INSCRP_RRR,PROPRIEDADE_RRR,TIPOLOGE_RRR AS TIPOLOGE,TITULOLOGE_RRR AS TITULOLOGE,' +
    'COD_LOGE_RRR,COD_LOG_RRR,AREAH_RRR,AREAE_RRR,AREAM_RRR,DISTANCIA_RRR,PONTOS_RRR,VVENAL_RRR,DEBAU_RRR, ' +
    'SUM(LVRCORRE_FRC) AS LCORRECAO,SUM(LVRMULTA_FRC) AS LMULTA,SUM(COALESCE(LVRJUROS_FRC,0)+COALESCE(LACRES_FRC,0)) AS LJUROS,SUM(LDESCOR_FRC) AS LDESCOR, ' +
    'SUM(LDESCOC_FRC) AS LDESCOC,SUM(LDESCOM_FRC) AS LDESCOM,SUM(LDESCOJ_FRC) AS LDESCOJ,SUM(LDESCOVENCI_FRC) AS LDESCOVENCI,FAIXANNUMERO_PAR ' +
    'FROM FI_PARCELA ' +
    'INNER JOIN FI_RECEITAS ON COD_EMP_PAR=COD_EMP_FRC AND COD_DIV_PAR=COD_DIV_FRC AND TP_PAR=TP_PAR_FRC AND PARCELA_PAR=PARCELA_PAR_FRC ' +
    'INNER JOIN FI_DIVIDA ON COD_EMP_PAR=COD_EMP_DIV AND COD_DIV_PAR=COD_DIV ' +
    'INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_PAR AND COD_CAD_DIV=COD_RRR ' +
    'INNER JOIN FI_RECPRINCIPAL ON COD_EMP_DIV=COD_EMP_REP AND COD_REP_DIV=COD_REP AND COD_MOD_DIV=COD_MOD_REP ' +
    'INNER JOIN GR_CONTRIBUINTES P ON P.COD_EMP_CNT=COD_EMP_PAR AND P.COD_CNT=COD_CNT_RRR ' +
    'LEFT JOIN GR_CIDADE ON COD_CID=COD_CIDE_RRR ' +
    'WHERE COD_EMP_PAR = ' + Sia_Empresa +
    ' AND SITUACAO_PAR >= 0 ' +
    ' AND SITUACAO_PAR <= 1 ' +
    ' AND PARCE_PAR = ''N'' ' +
    ' AND COD_MOD_DIV = 4 ' +
    ' AND SUBSTRING(AGRUPAMENTO_REP FROM 1 FOR 2)=''13'' ' +
    filtro +
    'GROUP BY TP_PAR,COD_DIV_PAR,SITUACAO_PAR,ANO_DIV,COD_REP_DIV,DATAVENCI,PARCELA_PAR,DTCORRECAO_PAR,COTACAO_PAR,NNUMERO_PAR,UNICA_PAR, ' +
    'NOME_CNT,DESCRICAO_REP,COD_MOD_DIV,COD_CNT,COD_IND_PAR,CNPJ_CNT,RG_CNT,COD_CAD_DIV, ' +
    'LOGRA_RRR,OBSLOGRA_RRR,COMPL_RRR,MATRIC_RRR,' +
    'LOGRAE_RRR,BAIRROE_RRR,NUMEROE_RRR,CEPE_RRR,COMPLEE_RRR,NOME_CID,UF_CID,' +
    'INCRA_RRR,INSCRP_RRR,PROPRIEDADE_RRR,TIPOLOGE_RRR,TITULOLOGE_RRR,' +
    'COD_LOGE_RRR,COD_LOG_RRR,AREAH_RRR,AREAE_RRR,AREAM_RRR,DISTANCIA_RRR,PONTOS_RRR,VVENAL_RRR,DEBAU_RRR,FAIXANNUMERO_PAR ' +
    Ordem;
  cds.open;

  frmaguarde.LMens.Caption  := 'Gerando Arquivo';
  frmaguarde.LMens1.Visible := True;
  frmaguarde.PB.Visible     := True;
  // frmaguarde.PB.TotalParts   := cds.RecordCount;

{$I-}
  try
    assignFile(ArqTXT, PathDestino.Text + NomeArquivo.Text);
    erase(ArqTXT);

    if not FileExists(PathDestino.Text + NomeArquivo.Text) then
      rewrite(ArqTXT);

    nparcela := 0;
    coddiv   := '';
    cont     := 0;

    while not cds.Eof do begin
      inc(cont);
      if coddiv <> cds.fieldByName('cod_div_par').AsString then begin
        numerodeunica := 0;
        espacoUnica   := 0;

        frmaguarde.LMens1.Caption := 'Dívida: ' + cds.fieldByName('cod_div_par').AsString;
        Application.ProcessMessages;

        write(ArqTXT, BrancoDireita(25, cds.fieldByName('cod_cad_div').AsString));
        write(ArqTXT, BrancoDireita(25, cds.fieldByName('cod_cnt').AsString));
        write(ArqTXT, BrancoDireita(50, cds.fieldByName('nome_cnt').AsString));
        write(ArqTXT, BrancoDireita(14, cds.fieldByName('rg_cnt').AsString));
        write(ArqTXT, BrancoDireita(18, cds.fieldByName('cnpj_cnt').AsString));
        write(ArqTXT, BrancoDireita(70, cds.fieldByName('LOGRAI').AsString));
        write(ArqTXT, BrancoDireita(100, RetiraChar(cds.fieldByName('OBSLOGRA').AsString, char(13))));
        write(ArqTXT, BrancoDireita(50, cds.fieldByName('complei').AsString));
        write(ArqTXT, BrancoDireita(50, trim(cds.fieldByName('TIPOLOGE').AsString + ' ' + cds.fieldByName('TITULOLOGE').AsString + ' ' + cds.fieldByName('lograe').AsString)));
        write(ArqTXT, BrancoDireita(50, cds.fieldByName('bairroe').AsString));
        write(ArqTXT, BrancoDireita(10, cds.fieldByName('numeroe').AsString));
        write(ArqTXT, BrancoDireita(30, cds.fieldByName('complee').AsString));
        write(ArqTXT, BrancoDireita(15, cds.fieldByName('cepe').AsString));
        write(ArqTXT, BrancoDireita(40, cds.fieldByName('cidade').AsString));
        write(ArqTXT, BrancoDireita(2, cds.fieldByName('uf').AsString));

        write(ArqTXT, BrancoDireita(25, cds.fieldByName('INCRA_RRR').AsString));
        write(ArqTXT, BrancoDireita(25, cds.fieldByName('INSCRP_RRR').AsString));
        write(ArqTXT, BrancoDireita(25, cds.fieldByName('MATRIC_RRR').AsString));
        write(ArqTXT, BrancoDireita(70, cds.fieldByName('PROPRIEDADE_RRR').AsString));
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', cds.fieldByName('AREAH_RRR').AsCurrency))));
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', cds.fieldByName('AREAE_RRR').AsCurrency))));
        write(ArqTXT, ZeraEsquerda(15, tiravirg(formatFloat('0.00', cds.fieldByName('AREAM_RRR').AsCurrency))));
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', cds.fieldByName('DISTANCIA_RRR').AsCurrency))));
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', cds.fieldByName('VVENAL_RRR').AsCurrency))));
        write(ArqTXT, ZeraEsquerda(15, tiravirg(formatFloat('0.0000000', cds.fieldByName('PONTOS_RRR').AsCurrency))));

        dm.cdsAtualiza.close;
        dm.sqlAtualiza.commandText := 'SELECT COUNT(*) AS QTDE ' +
          'FROM FI_PARCELA  ' +
          'WHERE COD_EMP_PAR = ' + SIA_Empresa +
          ' AND COD_DIV_PAR = ' + cds.fieldByName('cod_div_par').AsString +
          ' AND UNICA_PAR = ''N'' ';
        dm.cdsAtualiza.open;
        write(ArqTXT, BrancoDireita(3, dm.cdsAtualiza.fieldByName('qtde').AsString));
        dm.cdsAtualiza.close;

        write(ArqTXT, BrancoDireita(2, '1'));

        write(ArqTXT, BrancoDireita(20, '')); // sorteio

        /// ///////////////////// VERIFICA SE O CADASTRO TEM DIVIDA OU NÃO///////////////////////
        dm.cdsAtualiza.close;
        dm.sqlAtualiza.commandText := 'SELECT COD_DIV FROM FI_PARCELA ' +
          'INNER JOIN FI_RECEITAS ON COD_EMP_FRC=COD_EMP_PAR AND COD_DIV_FRC=COD_DIV_PAR AND PARCELA_PAR_FRC=PARCELA_PAR AND TP_PAR_FRC=TP_PAR ' +
          'INNER JOIN FI_DIVIDA ON COD_EMP_DIV=COD_EMP_PAR AND COD_DIV=COD_DIV_PAR ' +
          'WHERE COD_EMP_PAR = ' + Sia_Empresa +
          ' AND COD_MOD_DIV = 4 ' +
          ' AND COD_DIV_PAR <> ' + cds.fieldByName('COD_DIV_PAR').AsString +
          ' AND COD_CAD_DIV = ' + '''' + cds.fieldByName('COD_CAD_DIV').AsString + '''' +
          ' AND SITUACAO_PAR >= 1 AND SITUACAO_PAR <= 3 ' +
          ' AND DATAVENCI <= ''' + INVERTEDATA(DATETOSTR(DATE)) + '''' +
          ' GROUP BY COD_DIV ' +
          'HAVING SUM(LVALOR_FRC-LISENTO_FRC-LDESCOR_FRC) > 0 ';
        dm.cdsAtualiza.open;
        if not dm.cdsAtualiza.IsEmpty then
          write(ArqTXT, BrancoDireita(1, 'S'))
        else
          write(ArqTXT, BrancoDireita(1, 'N'));

        dm.cdsAtualiza.close;
        dm.sqlAtualiza.commandText := 'SELECT COUNT(*) AS QTDE FROM FI_PARCELA ' +
          'INNER JOIN FI_DIVIDA ON COD_EMP_DIV=COD_EMP_PAR AND COD_DIV=COD_DIV_PAR ' +
          'WHERE COD_EMP_PAR = ' + Sia_Empresa +
          ' AND COD_MOD_DIV=4 ' +
          ' AND ANO_DIV = ' + '''' + IntToStr(cds.fieldByName('ANO_DIV').AsInteger - 1) + '''' +
          ' AND UNICA_PAR = ''N'' ' +
          ' AND COD_CAD_DIV = ' + '''' + cds.fieldByName('COD_CAD_DIV').AsString + '''' +
          ' AND COD_REP_DIV = ' + cds.fieldByName('COD_REP_DIV').AsString;
        dm.cdsAtualiza.open;
        write(ArqTXT, BrancoDireita(3, dm.cdsAtualiza.fieldByName('qtde').AsString));

        dm.cdsAtualiza.close;
        dm.sqlAtualiza.commandText := 'SELECT SUM(COALESCE(LVALOR_FRC,0)-COALESCE(LISENTO_FRC,0)) AS VALOR FROM FI_PARCELA ' +
          'INNER JOIN FI_RECEITAS ON COD_EMP_FRC=COD_EMP_PAR AND COD_DIV_FRC=COD_DIV_PAR AND PARCELA_PAR_FRC=PARCELA_PAR AND TP_PAR_FRC=TP_PAR ' +
          'INNER JOIN FI_DIVIDA ON COD_EMP_DIV=COD_EMP_PAR AND COD_DIV=COD_DIV_PAR ' +
          'WHERE COD_EMP_PAR = ' + Sia_Empresa +
          ' AND COD_MOD_DIV = 4 ' +
          ' AND ANO_DIV = ' + '''' + IntToStr(cds.fieldByName('ANO_DIV').AsInteger - 1) + '''' +
          ' AND UNICA_PAR = ''N'' ' +
          ' AND COD_CAD_DIV = ' + '''' + cds.fieldByName('COD_CAD_DIV').AsString + '''' +
          ' AND COD_REP_DIV = ' + cds.fieldByName('COD_REP_DIV').AsString;
        dm.cdsAtualiza.open;
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', dm.cdsAtualiza.fieldByName('valor').AsCurrency))));

        dm.cdsAtualiza.close;
        dm.sqlAtualiza.commandText := 'SELECT SUM(COALESCE(LVALOR_FRC,0)-COALESCE(LISENTO_FRC,0)) AS VALOR FROM FI_PARCELA ' +
          'INNER JOIN FI_RECEITAS ON COD_EMP_FRC=COD_EMP_PAR AND COD_DIV_FRC=COD_DIV_PAR AND PARCELA_PAR_FRC=PARCELA_PAR AND TP_PAR_FRC=TP_PAR ' +
          'INNER JOIN FI_DIVIDA ON COD_EMP_DIV=COD_EMP_PAR AND COD_DIV=COD_DIV_PAR ' +
          'WHERE COD_EMP_PAR = ' + Sia_Empresa +
          ' AND COD_MOD_DIV = 4 ' +
          ' AND ANO_DIV = ' + '''' + IntToStr(cds.fieldByName('ANO_DIV').AsInteger - 1) + '''' +
          ' AND UNICA_PAR = ''N'' ' +
          ' AND PARCELA_PAR = 1 ' +
          ' AND COD_CAD_DIV = ' + '''' + cds.fieldByName('COD_CAD_DIV').AsString + '''' +
          ' AND COD_REP_DIV = ' + cds.fieldByName('COD_REP_DIV').AsString;
        dm.cdsAtualiza.open;
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', dm.cdsAtualiza.fieldByName('valor').AsCurrency))));

        dm.cdsAtualiza.close;
        dm.sqlAtualiza.commandText := 'SELECT SUM(COALESCE(LVALOR_FRC,0)-COALESCE(LISENTO_FRC,0)-COALESCE(LDESCOVENCI_FRC,0)) AS VALOR FROM FI_PARCELA ' +
          'INNER JOIN FI_RECEITAS ON COD_EMP_FRC=COD_EMP_PAR AND COD_DIV_FRC=COD_DIV_PAR AND PARCELA_PAR_FRC=PARCELA_PAR AND TP_PAR_FRC=TP_PAR ' +
          'INNER JOIN FI_DIVIDA ON COD_EMP_DIV=COD_EMP_PAR AND COD_DIV=COD_DIV_PAR ' +
          'WHERE COD_EMP_PAR = ' + Sia_Empresa +
          ' AND COD_MOD_DIV = 4 ' +
          ' AND ANO_DIV = ' + '''' + IntToStr(cds.fieldByName('ANO_DIV').AsInteger - 1) + '''' +
          ' AND UNICA_PAR = ''S'' ' +
          ' AND PARCELA_PAR = 0 ' +
          ' AND COD_CAD_DIV = ' + '''' + cds.fieldByName('COD_CAD_DIV').AsString + '''' +
          ' AND COD_REP_DIV = ' + cds.fieldByName('COD_REP_DIV').AsString;
        dm.cdsAtualiza.open;
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', dm.cdsAtualiza.fieldByName('valor').AsCurrency))));

        if trim(cds.fieldByName('DEBAU_RRR').AsString) = '' then
          write(ArqTXT, BrancoDireita(1, 'N'))
        else
          write(ArqTXT, BrancoDireita(1, cds.fieldByName('DEBAU_RRR').AsString));

        write(ArqTXT, BrancoDireita(20, ''));
        nparcela := 0;

        /// //////////////////////// Coloca as Origens //////////////////////////////////////////////////
        cdsResumo.close;
        sqlResumo.Params.ParamValues['empresa'] := Sia_Empresa;
        sqlResumo.Params.ParamValues['divida']  := cds.fieldByName('cod_div_par').AsInteger;
        cdsResumo.open;

        totalAnual       := 0;
        numerodereceitas := 0;
        while (not cdsResumo.Eof) and (numerodereceitas <= 15) do begin
          inc(numerodereceitas);
          write(ArqTXT, BrancoDireita(5, cdsResumo.fieldByName('cod_rec_frc').AsString));
          write(ArqTXT, BrancoDireita(50, cdsResumo.fieldByName('descri_rec').AsString));
          write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', cdsResumo.fieldByName('valor').AsCurrency))));
          totalAnual := totalAnual + cdsResumo.fieldByName('valor').AsCurrency;
          cdsResumo.next;
        end;

        for i := numerodereceitas + 1 to 15 do // insere branco quando a origem não completar 15
          write(ArqTXT, BrancoDireita(65, ''));

        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', totalAnual))));

        write(ArqTXT, BrancoDireita(50, '')); // menssagem de dívida Ativa

      end;
      /// DADOS CADASTRAIS

      // se nao encontrar parcela unica preenche o espaço em branco para depois começar a preencher a parcela 1
      if ((cds.fieldByName('unica_par').AsString = 'N') and (espacoUnica = 0)) then begin
        espacoUnica := 1;
        for i       := numerodeUnica + 1 to 3 do // Insere branco quando das parcelas Unicas
          write(ArqTXT, BrancoDireita(568, ''));
      end;

      /// //////////////////////// Parcelas //////////////////////////
      write(ArqTXT, BrancoDireita(10, cds.fieldByName('datavenci').AsString));
      write(ArqTXT, BrancoDireita(3, cds.fieldByName('parcela_par').AsString));
      write(ArqTXT, BrancoDireita(20, '2-' + cds.fieldByName('cod_div_par').AsString + '-' + cds.fieldByName('tp_par').AsString + '-' + cds.fieldByName('parcela_par').AsString));

      codbarra   := '';
      parte1     := '';
      parte2     := '';
      parte3     := '';
      parte4     := '';
      digitavel  := '';
      nnumero    := '';
      codcedente := '';

      if cds.fieldByName('unica_par').AsString = 'S' then
        valor := cds.fieldByName('valor').AsCurrency - cds.fieldByName('ldescovenci').AsCurrency
      else
        valor := cds.fieldByName('valor').AsCurrency;

      if comboTipoGuia.ItemIndex = 0 then begin
        if cds.fieldByName('UNICA_PAR').AsString = 'S' then
          codbarra := '816'
        else
          codbarra := '817';

        codbarra  := codBarra + ZeraEsquerda(11, tiravirg(formatfloat('0.00', valor))) + ZeraEsquerda(4, dm.cdsEmpresa.fieldbyname('cod_FebraBan_emp').AsString) + formatdatetime('yyyymmdd', cds.fieldbyname('datavenci').AsDateTime);
        codbarra  := codbarra + ZeraEsquerda(2, cds.fieldbyname('cod_mod_div').Asstring) + ZeraEsquerda(2, cds.fieldbyname('tp_par').Asstring) + '2' + ZeraEsquerda(9, cds.fieldbyname('cod_div_par').AsString) + ZeraEsquerda(3, cds.fieldbyname('parcela_par').AsString);
        digverif  := DIGFEBRA(codbarra);
        codbarra  := copy(codbarra, 1, 3) + digverif + copy(codbarra, 4, length(codbarra));
        digitavel := copy(codbarra, 1, 11) + '-' + DIGFebra(copy(codbarra, 1, 11));
        digitavel := digitavel + ' ' + copy(codbarra, 12, 11) + '-' + DIGFebra(copy(codbarra, 12, 11));
        digitavel := digitavel + ' ' + copy(codbarra, 23, 11) + '-' + DIGFebra(copy(codbarra, 23, 11));
        digitavel := digitavel + ' ' + copy(codbarra, 34, 11) + '-' + DIGFebra(copy(codbarra, 34, 11));
      end
      else begin
        /// ///ficha de compensação
        codbarra := codigodebarra(Sia_Empresa, Sia_Exercicio, dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString,
          cds.fieldbyname('datavenci').AsString,
          cds.fieldbyname('cod_div_par').AsString,
          cds.fieldbyname('parcela_par').AsString,
          cds.fieldbyname('tp_par').AsString,
          cds.fieldbyname('nnumero_par').AsString,
          '2',
          dm.cdsCadConvenios.fieldbyname('cedente_cnv').AsString,
          Valor,
          cds.fieldbyname('FAIXANNUMERO_PAR').AsString);

        codcedente := dm.cdsCadConvenios.fieldbyname('AGENCIACEDENTE_CNV').AsString;
        nnumero    := NossoNumero(Sia_Empresa, Sia_exercicio, dm.cdsCadConvenios.fieldbyname('banco_cnv').AsString,
          dm.cdsCadConvenios.fieldbyname('cedente_cnv').AsString,
          cds.fieldbyname('cod_div_par').AsString,
          cds.fieldbyname('parcela_par').AsString,
          cds.fieldbyname('tp_par').AsString,
          cds.fieldbyname('nnumero_par').AsString,
          '2',
          cds.fieldByName('datavenci').AsString,
          cds.fieldbyname('FAIXANNUMERO_PAR').AsString);
        digitavel := linhadigitavel(codbarra, dm.cdsCadConvenios.fieldbyname('NDIGITO_CNV').AsString, dm.cdsCadConvenios.fieldbyname('cedente_cnv').AsString);
      end;

      write(ArqTXT, BrancoDireita(44, codbarra));
      write(ArqTXT, BrancoDireita(60, digitavel));
      write(ArqTXT, BrancoDireita(30, nnumero));
      write(ArqTXT, BrancoDireita(30, codcedente));
      write(ArqTXT, ZeraEsquerda(11, tiravirg(formatFloat('0.00', valor))));
      write(ArqTXT, BrancoDireita(10, '')); // desconto
      write(ArqTXT, BrancoDireita(200, ''));

      /// //////////////////// Discriminação das Receitas da Parcelas////////////////////////
      if cds.fieldByName('unica_par').AsString = 'S' then begin
        cdsResumoParcela.close;
        sqlResumoParcela.commandText := 'SELECT SUM(COALESCE(LVALOR_FRC,0) - COALESCE(LISENTO_FRC,0)- COALESCE(LDESCOVENCI_FRC,0)) AS VALOR , COD_REC_FRC, DESCRI_REC ' +
          'FROM  FI_RECEITAS ' +
          'INNER JOIN GR_RECEITA  ON COD_EMP_REC=COD_EMP_FRC AND COD_REC=COD_REC_FRC ' +
          'WHERE COD_EMP_FRC=' + Sia_Empresa + ' AND COD_DIV_FRC=' + cds.fieldByName('cod_div_par').AsString +
          ' AND PARCELA_PAR_FRC=' + cds.fieldByName('parcela_par').AsString + ' AND TP_PAR_FRC=' + cds.fieldByName('tp_par').AsString +
          ' GROUP BY COD_REC_FRC,DESCRI_REC ' +
          ' ORDER BY COD_REC_FRC ';
        cdsResumoParcela.open;
      end
      else begin
        cdsResumoParcela.close;
        sqlResumoParcela.commandText := 'SELECT SUM(COALESCE(LVALOR_FRC,0) - COALESCE(LISENTO_FRC,0) ) AS VALOR,COD_REC_FRC, DESCRI_REC ' +
          'FROM  FI_RECEITAS ' +
          'INNER JOIN GR_RECEITA ON COD_EMP_REC=COD_EMP_FRC AND COD_REC=COD_REC_FRC ' +
          'WHERE COD_EMP_FRC=' + Sia_Empresa + ' AND COD_DIV_FRC=' + cds.fieldByName('cod_div_par').AsString +
          ' AND PARCELA_PAR_FRC=' + cds.fieldByName('parcela_par').AsString + ' AND TP_PAR_FRC=' + cds.fieldByName('tp_par').AsString +
          ' GROUP BY COD_REC_FRC,DESCRI_REC ' +
          ' ORDER BY COD_REC_FRC ';
        cdsResumoParcela.open;
      end;

      numerodereceitas := 0;
      while (not cdsResumoParcela.Eof) and (numerodereceitas <= 15) do begin
        inc(numerodereceitas);
        write(ArqTXT, ZeraEsquerda(10, tiravirg(formatFloat('0.00', cdsResumoParcela.fieldByName('valor').AsCurrency))));
        cdsResumoParcela.next;
      end;

      // insere branco quando a origem não completar 15
      for i := numerodereceitas + 1 to 15 do
        write(ArqTXT, BrancoDireita(10, ''));

      /// ///////////////////////////////////////////////////////////////////////////////////
      if cds.fieldByName('unica_par').AsString = 'S' then
        inc(numerodeunica)
      else
        inc(nparcela);

      coddiv                      := cds.fieldByName('cod_div_par').AsString;
      frmaguarde.PB.PartsComplete := cds.RecNo;
      cds.Next;

      /// /////////////// preeche com branco para completar o numero de parcelas unica///////////////////////
      if ((cds.fieldByName('unica_par').AsString = 'N') and (espacoUnica = 0)) or ((coddiv <> cds.fieldByName('cod_div_par').AsString) and (espacoUnica = 0)) or ((cds.eof) and (espacoUnica = 0)) then begin
        espacoUnica := 1;
        for i       := numerodeUnica + 1 to 3 do // Insere branco quando das parcelas Unicas
          write(ArqTXT, BrancoDireita(568, ''));
      end;

      /// ////////preenche com espaços em branco para completar o tamanho do registro
      if (coddiv <> cds.fieldByName('cod_div_par').AsString) or (cds.eof) then begin // mudou de cadastro
        for i := nparcela + 1 to 12 do
          write(ArqTXT, BrancoDireita(568, ''));
        writeln(ArqTXT, '');
      end;
    end;
  finally
    CloseFile(ArqTXT);

    // aqui Gera a Guia de Cobrança Registrada
    if checkCobrRegistrada.Checked then begin
      if comboTipoGuia.ItemIndex = 1 then // Ficha de Compensação
        GerarGuiaRegistrada('2',
          True,
          null,
          cds);
    end;

    FreeAndNil(frmaguarde);

    if cds.IsEmpty then
      dm.msg.MessageDlg('Não encontrou registros para Geração.' + #13 + 'Nada foi feito!', mtInformation, [mbok], 0)
    else
      dm.msg.MessageDlg('Geração Realizada com Sucesso!!!', mtConfirmation, [mbok], 0);

    cds.close;
    cdsResumo.close;
  end;
{$I+}
end;

procedure TFExportaLanc.mkExercicioExit(Sender: TObject);
begin
  NomeArquivo.Text := 'CarneRural' + mkExercicio.Text + '.txt';
end;

procedure TFExportaLanc.mkSetor1Exit(Sender: TObject);
begin
  if trim(TMaskEdit(sender).text) <> '' then
    TMaskEdit(sender).text := ZeraEsquerda(4, TMaskEdit(sender).text);
end;

procedure TFExportaLanc.mkSetor2Exit(Sender: TObject);
begin
  if trim(TMaskEdit(sender).text) <> '' then
    TMaskEdit(sender).text := ZeraEsquerda(4, TMaskEdit(sender).text);
end;

procedure TFExportaLanc.btnAbrirPastaClick(Sender: TObject);
begin
  PathDestino.Text := dm.SelecionaDiretorio(PathDestino.Text);
end;

procedure TFExportaLanc.BtnSairClick(Sender: TObject);
begin
  close;
end;

end.
