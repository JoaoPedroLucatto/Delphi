unit UCadObrigRUR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, SqlExpr, DB, DBClient, Provider, EMsgDlg,
  RzButton, RzPanel, Grids, DBGrids, StdCtrls, RzBckgnd, ExtCtrls, RzTabs,
  DBCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TFCadObrigRUR = class(TFGenerico)
    DBText4: TDBText;
    Label3: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    sqlCadastroCOD_EMP_ROB: TIntegerField;
    sqlCadastroCOD_ROB: TIntegerField;
    sqlCadastroIDCAMPO_ROB: TStringField;
    sqlCadastroDESCRCAMPO_ROB: TMemoField;
    sqlCadastroLOGIN_INC_ROB: TStringField;
    sqlCadastroDTA_INC_ROB: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_ROB: TStringField;
    sqlCadastroDTA_ALT_ROB: TSQLTimeStampField;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspCadastroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PGChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
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
  FCadObrigRUR: TFCadObrigRUR;
  Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros;

{$R *.dfm}

procedure TFCadObrigRUR.ClicaGrid;
begin
  if cdsVis.IsEmpty then exit;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['COD_EMP_ROB'];
  sqlCadastro.Params.ParamValues['cod']     := cdsVis.FieldValues['COD_ROB'];
  cdsCadastro.Open;
end;

procedure TFCadObrigRUR.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadObrigRUR.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadObrigRUR.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario, 'RR_CAMPOSOBRIGATORIOS', SIA_Modulo, UpperCase(FCadObrigRUR.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadObrigRUR.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_CAMPOSOBRIGATORIOS,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_ROB').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    sqlCadastro.Params.ParamValues['cod']   := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;

    DeltaDS.FieldByName('LOGIN_INC_ROB').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_ROB').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_ROB').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_ROB').NewValue   := DataBanco;
  end;
end;

procedure TFCadObrigRUR.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_CAMPOSOBRIGATORIOS';
end;

procedure TFCadObrigRUR.dspCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadObrigRUR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadObrigRUR.FormDestroy(Sender: TObject);
begin
  inherited;
  FCadObrigRUR := Nil;
end;

procedure TFCadObrigRUR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadObrigRUR.FormShow(Sender: TObject);
var qrx : TSQLQuery;
    campo, descr : string;
begin
  inherited;
  PG.ActivePageIndex  := 0;
  desabilita(FCadObrigRUR);

  cdsVis.Close;
  cdsVis.Open;

  wwDBComboBox1.Items.Clear;

  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT c.RDB$FIELD_NAME CAMPO '+
                  'FROM RDB$RELATION_FIELDS c '+
                  'WHERE c.RDB$RELATION_NAME = ''RR_CAD_RURAL'' '+
                   ' AND c.RDB$FIELD_NAME NOT LIKE ''RDB$%'' '+
                  'ORDER BY C.RDB$FIELD_POSITION';
  qrx.Open;
  while not qrx.Eof do begin
    campo := trim(qrx.FieldByName('CAMPO').AsString);
    descr := trim(RetornaNomeCampo('RUR', campo, ''));
    if descr <> '' then
      wwDBComboBox1.Items.Add(descr+#9+campo);
    qrx.Next;
  end;
  FreeAndNil(qrx);

  Condicao := '';
end;

procedure TFCadObrigRUR.PGChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  inherited;
  If cdsCadastro.State In [dsEdit, dsInsert] Then AllowChange:=False;
end;

procedure TFCadObrigRUR.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadObrigRUR);
  cdsCadastro.Edit;

  wwDBComboBox1.SetFocus;
end;

procedure TFCadObrigRUR.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadObrigRUR);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsCadastro.Close;
end;

procedure TFCadObrigRUR.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  inherited;
  Erros := 0;
  PG.ActivePageIndex := 0;

  if (trim(wwDBComboBox1.Text) = '') then begin
    dm.msg.MessageDlg('Informe o Tipo de campo.',mtError, [mbok], 0);
    wwDBComboBox1.SetFocus;
    Exit;
  end;

  if trim(DBMemo1.Text) = '' then begin
    dm.msg.MessageDlg('A Descrição é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBMemo1.SetFocus;
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

  desabilita(FCadObrigRUR);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadObrigRUR.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadObrigRUR);
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
  desabilita(FCadObrigRUR);
  cdsCadastro.Close;
end;

procedure TFCadObrigRUR.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadObrigRUR.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadObrigRUR.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadObrigRUR.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Condicao := 'Incluindo';
  abilita(FCadObrigRUR);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := SIA_Empresa;
  sqlCadastro.Params.ParamValues['cod'] := -1;
  cdsCadastro.Open;

  cdsCadastro.Append;

  wwDBComboBox1.SetFocus;
end;

procedure TFCadObrigRUR.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadObrigRUR.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFCadObrigRUR.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastro.FieldValues['cod_emp_rob'] := strtoint(SIA_Empresa);
  cdsCadastro.FieldValues['cod_rob']     := -1;
end;

procedure TFCadObrigRUR.cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  if UpdateKind = ukDelete then Action := raCancel
  else Action := raCorrect;
end;

end.
