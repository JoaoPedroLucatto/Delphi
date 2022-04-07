unit URelEtiquetaRR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, frxDesgn, Menus, RzButton, StdCtrls,
  RzBckgnd, ExtCtrls, RzPanel, FMTBcd, DB, DBClient, Provider, SqlExpr,
  IniFiles, frxBarCode, ECkBox, wwdblook, Mask, Buttons;

type
  TFRelEtiquetaRR = class(TForm)
    RzPanel3: TRzPanel;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    Label2: TLabel;
    Panel2: TPanel;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    DBEmpresa: TfrxDBDataset;
    frxDesigner: TfrxDesigner;
    Panel3: TPanel;
    p2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    ILinha: TEdit;
    IColuna: TEdit;
    DBDados: TfrxDBDataset;
    Relatorio: TfrxReport;
    RzPanel1: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnLayout: TRzBitBtn;
    rgForm: TRadioGroup;
    cbLayouts: TwwDBLookupCombo;
    GroupBox1: TGroupBox;
    btnCadINI: TSpeedButton;
    btnCadFIM: TSpeedButton;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    msk5: TMaskEdit;
    msk6: TMaskEdit;
    GroupBox4: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label5: TLabel;
    msk3: TMaskEdit;
    msk4: TMaskEdit;
    GSet: TGroupBox;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Label21: TLabel;
    Label22: TLabel;
    msk7: TMaskEdit;
    msk8: TMaskEdit;
    rdOrdem: TRadioGroup;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnLayoutClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure IColunaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCadINIClick(Sender: TObject);
    procedure btnCadFIMClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure msk1Enter(Sender: TObject);
    procedure msk2Enter(Sender: TObject);
    procedure msk1Exit(Sender: TObject);
    procedure msk2Exit(Sender: TObject);
    procedure msk3Enter(Sender: TObject);
    procedure msk4Enter(Sender: TObject);
    procedure msk3Exit(Sender: TObject);
    procedure msk4Exit(Sender: TObject);
    procedure msk5Exit(Sender: TObject);
    procedure msk6Exit(Sender: TObject);
    procedure msk7Exit(Sender: TObject);
    procedure msk8Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGO: string;
    ANO   : string;
  end;

var
  FRelEtiquetaRR             : TFRelEtiquetaRR;
  Original, LoadFile, SAntes : Boolean;
  StreamOriginal, StreamAntes: TMemoryStream;

implementation

uses UDM, UPrin, Funcoes, funcoesTela, TrataErros, URelatorios, UClasse_PesqPrin, UClasse_PesqRur;

{$R *.dfm}


procedure TFRelEtiquetaRR.btnCadFIMClick(Sender: TObject);
var
  Pesq: TPesq_Rural;
begin
  inherited;
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then
    msk2.Text := Pesq.CADASTRO;
  FreeAndNil(Pesq);
end;

procedure TFRelEtiquetaRR.btnCadINIClick(Sender: TObject);
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

procedure TFRelEtiquetaRR.BtnConfirmaClick(Sender: TObject);
var
  posX, posY, Ia, Fa, tL, tC: Integer;
  Consulta, ordem, filtro   : string;
  Stream                    : TMemoryStream;
begin
  if rdOrdem.ItemIndex = 0 then
    ordem := 'ORDER BY COD_RRR'
  else
    if rdOrdem.ItemIndex = 1 then
    ordem := 'ORDER BY LOGRA_RRR,'
  else
    if rdOrdem.ItemIndex = 2 then
    ordem := 'ORDER BY LOGRAE_RRR,NUMEROE_RRR'
  else
    if rdOrdem.ItemIndex = 3 then
    ordem := 'ORDER BY NOME_CNT';

  filtro := '';

  if ILinha.Text = '' then begin
    Application.MessageBox('Total de Linhas não é um Valor Válido!', 'Atenção', $40);
    ILinha.setfocus;
    Exit;
  end;

  if IColuna.Text = '' then begin
    Application.MessageBox('Total de Linhas não é um Valor Válido!', 'Atenção', $40);
    IColuna.setfocus;
    Exit;
  end;

  if (trim(msk1.Text) <> '') and (trim(msk2.Text) <> '') then begin
    filtro := filtro + ' AND RR_CAD_RURAL.COD_RRR BETWEEN ' + '''' + trim(msk1.Text) + '''' + ' AND ' + '''' + trim(msk2.Text) + '''';
  end;

  if (trim(msk3.Text) <> '') and (trim(msk4.Text) <> '') then begin
    filtro := filtro + ' AND RR_CAD_RURAL.COD_CNT_RRR BETWEEN ' + '''' + trim(msk3.Text) + '''' + ' AND ' + '''' + trim(msk4.Text) + '''';
  end;

  if (trim(msk5.Text) <> '') and (trim(msk6.Text) <> '') then begin
    filtro := filtro + ' AND RR_CAD_RURAL.COD_CLASS_RRR BETWEEN ' + trim(msk5.Text) + ' AND ' + trim(msk6.Text);
  end;

  if (trim(msk7.Text) <> '') and (trim(msk8.Text) <> '') then begin
    filtro := filtro + ' AND RR_CAD_RURAL.COD_STR_RRR BETWEEN ' + '''' + trim(msk7.Text) + '''' + ' AND ' + '''' + trim(msk8.Text) + '''';
  end;

  case rgForm.ItemIndex of
    0: begin
        tL := 10;
        tC := 3;
      end;
  end;

  Consulta := 'SELECT RR_CAD_RURAL.COD_RRR, ' +
    'GR_CONTRIBUINTES.NOME_CNT, ' +
    'GR_CONTRIBUINTES.CNPJ_CNT, ' +
    'RR_CAD_RURAL.PROPRIEDADE_RRR, ' +
    'RR_CAD_RURAL.LOGRAE_RRR, ' +
    'RR_CAD_RURAL.NUMEROE_RRR, ' +
    'RR_CAD_RURAL.BAIRROE_RRR, ' +
    'RR_CAD_RURAL.COMPLEE_RRR, ' +
    'RR_CAD_RURAL.CEPE_RRR, ' +
    'GR_CIDADE.NOME_CID, ' +
    'RR_CAD_RURAL.UFE_RRR ' +
    'FROM GR_CONTRIBUINTES ' +
    'INNER JOIN RR_CAD_RURAL ON COD_EMP_RRR=COD_EMP_CNT AND COD_CNT_RRR=COD_CNT ' +
    'LEFT JOIN GR_CIDADE ON COD_CID=COD_CIDE_RRR ' +
    'WHERE GR_CONTRIBUINTES.COD_EMP_CNT = ' + SIA_Empresa + Filtro;

  cds.Close;
  sql.CommandText := Consulta + ordem;
  cds.Open;

  posX := (tL * tC) - ((tL - StrToInt(ILinha.Text) + 1) * tC) + (StrToInt(iColuna.Text) - 1);

  cds.First;
  for Ia := 1 to posX do begin
    cds.Insert;
    cds.FieldByName('COD_RRR').asstring := '.';
  end;

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
    Relatorio.PrintOptions.Printer := ImpPadrao
  else begin
    try
      if VerImpPadrao <> '' then
        Relatorio.PrintOptions.Printer := VerImpPadrao;
    except
      messagedlg('Impressora Padrão não Definida.' + #13 + 'Instale uma Impressora e Defina como Padrão.', mtInformation, [mbok], 0);
    end;
  end;

  relatorio.PreviewOptions.AllowEdit      := false;
  relatorio.PreviewOptions.DoubleBuffered := false;
  relatorio.PreviewOptions.Maximized      := true;
  relatorio.PreviewOptions.MDIChild       := false;
  relatorio.PreviewOptions.Modal          := true;
  relatorio.PreviewOptions.OutlineExpand  := true;
  relatorio.ReportOptions.Author          := dm.cdsEmpresa.FieldByName('NOME_EMP').AsString;
  relatorio.EngineOptions.UseFileCache    := true;
  relatorio.EngineOptions.TempDir         := ExtractFilePath(ParamStr(0));

  if not VerImpressao then
    relatorio.ShowReport(true)
  else begin
    relatorio.PrepareReport;
    relatorio.Print;
  end;

  if SAntes then begin
    StreamAntes.Position := 0;
    Relatorio.LoadFromStream(StreamAntes);
  end;
end;

procedure TFRelEtiquetaRR.BtnLayoutClick(Sender: TObject);
begin
  Application.CreateForm(TFRelatorios, FRelatorios);
  StreamOriginal.Clear;
  Relatorio.SaveToStream(StreamOriginal);
  StreamOriginal.Position := 0;
  FRelatorios.Rel_Original.LoadFromStream(StreamOriginal);
  Original := True;

  FRelatorios.ShowModal;
  if CarregaLayoutStream(strtoint(Sia_Empresa), SIA_Aplicacao) then
    LoadFile := False
  else begin
    LoadFile                := True;
    StreamOriginal.Position := 0;
    Relatorio.LoadFromStream(StreamOriginal);
  end;
  FRelatorios.Free;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelEtiquetaRR.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFRelEtiquetaRR.FormShow(Sender: TObject);
begin
  Sia_Aplicacao := TForm(sender).Name;

  BuscaMetodoAntigoParametro(TForm(Sender).Name, 'siaparam', 'SIA_ETIQUETA', 'IColuna', 'STRING', ''); // remover mais pra frente 16/11/2017
  BuscaMetodoAntigoParametro(TForm(Sender).Name, 'siaparam', 'SIA_ETIQUETA', 'ILinha', 'STRING', '');  // remover mais pra frente 16/11/2017

  IColuna.Text := BuscarParametrosTela(TForm(Sender).Name, 'IColuna', ''); // Buscar parametros de tela
  ILinha.Text  := BuscarParametrosTela(TForm(Sender).Name, 'ILinha', '');  // Buscar parametros de tela

  StreamAntes    := TMemoryStream.Create;
  StreamOriginal := TMemoryStream.Create;
  LoadFile       := False;
  Original       := False;
  SAntes         := False;

  cbLayouts.Visible := BuscaLayout(SIA_Aplicacao); // Busca as configurações do layout de relatorios
end;

procedure TFRelEtiquetaRR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GravarParametrosTela(TForm(sender).Name, 'IColuna', IColuna.Text); // guardar parametros usados
  GravarParametrosTela(TForm(sender).Name, 'ILinha', ILinha.Text);   // guardar parametros usados

  FreeAndNil(StreamAntes);
  FreeAndNil(StreamOriginal);
  Action := caFree;
end;

procedure TFRelEtiquetaRR.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnConfirma.SetFocus;
end;

procedure TFRelEtiquetaRR.IColunaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnConfirma.SetFocus;
end;

procedure TFRelEtiquetaRR.msk1Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelEtiquetaRR.msk1Exit(Sender: TObject);
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

procedure TFRelEtiquetaRR.msk2Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('RUR', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelEtiquetaRR.msk2Exit(Sender: TObject);
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

procedure TFRelEtiquetaRR.msk3Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('CNT', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelEtiquetaRR.msk3Exit(Sender: TObject);
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

procedure TFRelEtiquetaRR.msk4Enter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).MaxLength := TamanhoMascara('CNT', SIA_Empresa);
  if trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := TiraCaracter(TMaskEdit(Sender).Text);
end;

procedure TFRelEtiquetaRR.msk4Exit(Sender: TObject);
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

procedure TFRelEtiquetaRR.msk5Exit(Sender: TObject);
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

procedure TFRelEtiquetaRR.msk6Exit(Sender: TObject);
var
  Pesq: TPesq_Classificacao_RR;
begin
  inherited;
  if trim(TMaskEdit(Sender).text) <> '' then begin
    Pesq := TPesq_Classificacao_RR.Create;
    Pesq.PesquisaClassificacaoRR(trim(TMaskEdit(Sender).text), Sia_exercicio);
    TMaskEdit(Sender).text := vartostr(Pesq.Codigo);
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelEtiquetaRR.msk7Exit(Sender: TObject);
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

procedure TFRelEtiquetaRR.msk8Exit(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  inherited;

  if trim(TMaskEdit(Sender).text) <> '' then begin
    TMaskEdit(Sender).text := Lpad(TMaskEdit(Sender).text, '0', 4);
    Pesq                   := TPesq_SetorRural.Create;
    Pesq.PesquisaSetor(trim(TMaskEdit(Sender).text), SIA_Exercicio);
    TMaskEdit(Sender).text := vartostr(Pesq.Setor);
    FreeAndNil(Pesq);
  end;
end;

procedure TFRelEtiquetaRR.SpeedButton13Click(Sender: TObject);
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

procedure TFRelEtiquetaRR.SpeedButton14Click(Sender: TObject);
var
  Pesq: TPesq_SetorRural;
begin
  inherited;

  Pesq := TPesq_SetorRural.Create;
  if Pesq.BotaoSetor then
    msk8.text := vartostr(Pesq.Setor);
  FreeAndNil(Pesq);
end;

procedure TFRelEtiquetaRR.SpeedButton1Click(Sender: TObject);
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

procedure TFRelEtiquetaRR.SpeedButton2Click(Sender: TObject);
var
  Pesq: TPesq_Classificacao_RR;
begin
  inherited;

  Pesq := TPesq_Classificacao_RR.Create;
  if Pesq.BotaoClassificacaoRR then
    msk6.text := vartostr(Pesq.Codigo);
  FreeAndNil(Pesq);
end;

procedure TFRelEtiquetaRR.SpeedButton3Click(Sender: TObject);
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

procedure TFRelEtiquetaRR.SpeedButton4Click(Sender: TObject);
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

procedure TFRelEtiquetaRR.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = 40) then
    SelectNext(twincontrol(sender), true, true);
  if (key = 38) then
    SelectNext(twincontrol(sender), false, true);
end;

end.
