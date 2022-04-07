unit UCadPontos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, SqlExpr, DB, DBClient, Provider, EMsgDlg,
  RzButton, RzPanel, Grids, DBGrids, StdCtrls, RzBckgnd, ExtCtrls, RzTabs,
  DBCtrls, Mask;

type
  TFCadPontos = class(TFGenerico)
    sqlCadastroCOD_EMP_RPT: TIntegerField;
    sqlCadastroCOD_RPT: TIntegerField;
    sqlCadastroDESCR_RPT: TStringField;
    sqlCadastroLINI_RPT: TIntegerField;
    sqlCadastroLFIM_RPT: TIntegerField;
    sqlCadastroVALOR_RPT: TFloatField;
    sqlCadastroLOGIN_INC_RPT: TStringField;
    sqlCadastroDTA_INC_RPT: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_RPT: TStringField;
    sqlCadastroDTA_ALT_RPT: TSQLTimeStampField;
    DBText1: TDBText;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    sqlCadastroTP_VALOR_RPT: TStringField;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dspCadastroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspCadastroBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspCadastroAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClicaGrid;
  end;

var
  FCadPontos: TFCadPontos;
  Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros;

{$R *.dfm}

procedure TFCadPontos.ClicaGrid;
begin
  if cdsVis.IsEmpty then exit;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['cod_emp_rpt'];
  sqlCadastro.Params.ParamValues['cod']     := cdsVis.FieldValues['cod_rpt'];
  cdsCadastro.Open;
end;

procedure TFCadPontos.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadPontos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadPontos.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := Nil;
end;

procedure TFCadPontos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
   if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadPontos.FormShow(Sender: TObject);
begin
  inherited;
  PG.ActivePageIndex  := 0;
  desabilita(FCadPontos);

  cdsVis.Close;
  sqlVis.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsVis.Open;
  Condicao := '';
end;

procedure TFCadPontos.BtnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFCadPontos.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Condicao := 'Incluindo';
  abilita(FCadPontos);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := -1;
  cdsCadastro.Open;
  cdsCadastro.Append;

  DBEdit1.SetFocus;
end;

procedure TFCadPontos.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadPontos.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadPontos);
  cdsCadastro.Edit;

  DBEdit1.SetFocus;
end;

procedure TFCadPontos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadPontos);
  dm.msg.DefaultButton := mbNo;
  if dm.msg.MessageDlg('Deseja Realmente Excluir o Registro ?',mtConfirmation ,[mbyes,mbno] ,0) = mryes then begin
    if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

    cdsCadastro.Delete;

    if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);

    if Erros=0 then begin
     dm.Conexao.Commit(TD);
     cdsVis.Close;
     cdsVis.Open;
    end
    else dm.Conexao.RollBack(TD);

  end;
  desabilita(FCadPontos);
  cdsCadastro.Close;
end;

procedure TFCadPontos.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadPontos.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadPontos.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadPontos.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadPontos);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsCadastro.Close;
end;

procedure TFCadPontos.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  inherited;

  Erros := 0;
  PG.ActivePageIndex := 0;

  if trim(DBEdit1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Descrição é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit1.SetFocus;
    Exit;
  end;

  if trim(DBEdit4.Text) = '' then begin
    dm.msg.MessageDlg('O campo Valor é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit4.SetFocus;
    Exit;
  end;

  if trim(DBComboBox2.Text) = '' then begin
    dm.msg.MessageDlg('O campo Tipo de Valor é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBComboBox2.SetFocus;
    DBComboBox2.DroppedDown;
    Exit;
  end;

  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Post;

  if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);

  if Erros = 0 then dm.Conexao.Commit(TD)
  else begin
    dm.Conexao.Rollback(TD);
    exit;
  end;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlCadastro.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  cdsCadastro.Open;

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

  desabilita(FCadPontos);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadPontos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13]) then key := #0;
end;

procedure TFCadPontos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13, ',', '.']) then key := #0;
  if key = '.' then key := ',';
end;

procedure TFCadPontos.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadPontos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadPontos.dspCadastroUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadPontos.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_PONTOS';
end;

procedure TFCadPontos.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_PONTOS,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_RPT').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    sqlCadastro.Params.ParamValues['cod']   := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('LOGIN_INC_RPT').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RPT').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RPT').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RPT').NewValue   := DataBanco;
  end;
end;

procedure TFCadPontos.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario, 'RR_PONTOS',SIA_Modulo,UpperCase(FCadPontos.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadPontos.cdsCadastroReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
   if UpdateKind = ukDelete then Action := raCancel
   else Action := raCorrect;
end;

procedure TFCadPontos.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastro.FieldValues['cod_emp_rpt']  := strtoint(SIA_Empresa);
  cdsCadastro.FieldValues['cod_rpt']      := -1;
  cdsCadastro.FieldValues['TP_VALOR_RPT'] := '01 - Valor Real';
end;

end.
