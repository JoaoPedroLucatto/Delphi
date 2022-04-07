unit UCadClassifica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, SqlExpr, DB, DBClient, Provider, EMsgDlg,
  RzButton, RzPanel, Grids, DBGrids, StdCtrls, RzBckgnd, ExtCtrls, RzTabs,
  Mask, DBCtrls, Buttons;

type
  TFCadClassifica = class(TFGenerico)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    sqlCadastroCOD_EMP_RCL: TIntegerField;
    sqlCadastroCOD_RCL: TIntegerField;
    sqlCadastroDESCR_RCL: TStringField;
    sqlCadastroLOGIN_INC_RCL: TStringField;
    sqlCadastroDTA_INC_RCL: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_RCL: TStringField;
    sqlCadastroDTA_ALT_RCL: TSQLTimeStampField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    sqlCadastroEXERCICIO_RCL: TIntegerField;
    sqlCadastroVALOR_RCL: TFloatField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    P1: TRzPanel;
    Label55: TLabel;
    Label57: TLabel;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    btnPesquisa: TBitBtn;
    msk3: TMaskEdit;
    Label7: TLabel;
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
    procedure dspCadastroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspCadastroBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dspCadastroAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisaClick(Sender: TObject);
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
  FCadClassifica: TFCadClassifica;
  SQL, Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros;

{$R *.dfm}

procedure TFCadClassifica.ClicaGrid;
begin
  if cdsVis.IsEmpty then exit;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa']   := cdsVis.FieldValues['cod_emp_rcl'];
  sqlCadastro.Params.ParamValues['cod']       := cdsVis.FieldValues['cod_rcl'];
  sqlCadastro.Params.ParamValues['exercicio'] := cdsVis.FieldValues['exercicio_rcl'];
  cdsCadastro.Open;
end;

procedure TFCadClassifica.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadClassifica.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13, ',', '.']) then key := #0;
  if key = '.' then key := ',';
end;

procedure TFCadClassifica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadClassifica.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := Nil;
end;

procedure TFCadClassifica.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
   if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadClassifica.FormShow(Sender: TObject);
begin
  inherited;
  PG.ActivePageIndex  := 0;
  desabilita(FCadClassifica);

  SQL := 'SELECT * '+
         'FROM RR_CLASSIFICA '+
         'WHERE COD_EMP_RCL = '+ SIA_Empresa; 

  cdsVis.Close;
  sqlVis.CommandText := SQL;
  cdsVis.Open;
  
  Condicao := '';
end;

procedure TFCadClassifica.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFCadClassifica.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Condicao := 'Incluindo';
  abilita(FCadClassifica);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa']   := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']       := -1;
  sqlCadastro.Params.ParamValues['exercicio'] := strtoint(SIA_Exercicio);
  cdsCadastro.Open;
  cdsCadastro.Append;

  DBEdit1.SetFocus;
end;

procedure TFCadClassifica.btnPesquisaClick(Sender: TObject);
var filtro : string;
Begin
  inherited;

  filtro := '';
  If trim(msk1.Text)  <> '' Then filtro := filtro + ' AND COD_RCL = '+ trim(msk1.Text);
  If trim(msk2.Text)  <> '' Then filtro := filtro + ' AND EXERCICIO_RCL = '+ trim(msk2.Text);
  If trim(msk3.Text)  <> '' Then filtro := filtro + ' AND DESCR_RCL like '+''''+ trim(msk3.Text) +'%''';

  cdsVis.Close;
  sqlVis.CommandText := SQL + filtro;
  cdsVis.Open;

  DBGrid1.SetFocus;
end;

procedure TFCadClassifica.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadClassifica.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadClassifica);
  cdsCadastro.Edit;

  DBEdit1.SetFocus;
end;

procedure TFCadClassifica.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadClassifica);
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
  desabilita(FCadClassifica);
  cdsCadastro.Close;
end;

procedure TFCadClassifica.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadClassifica.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadClassifica.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadClassifica.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadClassifica);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsCadastro.Close;
end;

procedure TFCadClassifica.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  inherited;

  Erros := 0;
  PG.ActivePageIndex := 0;

  if trim(DBEdit1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Código é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit1.SetFocus;
    Exit;
  end;

  if trim(DBEdit2.Text) = '' then begin
    dm.msg.MessageDlg('O campo Descrição é obrigatório. Você deve informar um valor!!!',mtError, [mbok], 0);
    DBEdit2.SetFocus;
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

  desabilita(FCadClassifica);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadClassifica.dspCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadClassifica.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_CLASSIFICA';
end;

procedure TFCadClassifica.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if UpdateKind = ukInsert then begin
    sqlCadastro.Params.ParamValues['cod'] := DeltaDS.FieldByName('COD_RCL').NewValue;
    sqlCadastro.Params.ParamValues['exercicio'] := DeltaDS.FieldByName('EXERCICIO_RCL').NewValue;    

    DeltaDS.FieldByName('LOGIN_INC_RCL').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RCL').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RCL').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RCL').NewValue   := DataBanco;
  end;
end;

procedure TFCadClassifica.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadClassifica.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadClassifica.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_CLASSIFICA',SIA_Modulo,UpperCase(FCadClassifica.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadClassifica.cdsCadastroReconcileError( DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
   if UpdateKind = ukDelete then Action := raCancel
   else Action := raCorrect;
end;

procedure TFCadClassifica.cdsCadastroNewRecord(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_RCL) AS TOT '+
                  'FROM RR_CLASSIFICA '+
                  'WHERE COD_EMP_RCL = '+ SIA_Empresa +
                   ' AND EXERCICIO_RCL = '+ SIA_Exercicio;
  qrx.Open;
  cdsCadastro.FieldValues['COD_EMP_RCL']   := strtoint(SIA_Empresa);
  cdsCadastro.FieldValues['COD_RCL']       := qrx.FieldByName('TOT').AsInteger + 1;
  cdsCadastro.FieldValues['EXERCICIO_RCL'] := strtoint(SIA_Exercicio);
  FreeAndNil(qrx);  
end;

end.
