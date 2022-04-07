unit UCadCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, EDBCkBox, StdCtrls, Mask, DBCtrls, ExtCtrls,
  SqlExpr, DB, DBClient, Provider, EMsgDlg, RzButton, RzPanel, Grids,
  DBGrids, RzBckgnd, RzTabs;

type
  TFCadCobranca = class(TFGenerico)
    DBText1: TDBText;
    Panel3: TPanel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    EvDBCheckBox1: TEvDBCheckBox;
    DBGrid2: TDBGrid;
    sqlRelCob: TSQLDataSet;
    sqlRelCobCOD_EMP_RCO: TIntegerField;
    sqlRelCobCOD_COB_RCO: TIntegerField;
    sqlRelCobCOD_REC_RCO: TIntegerField;
    sqlRelCobGERA_LANCA_RCO: TStringField;
    sqlRelCobVALOR_RCO: TFloatField;
    sqlRelCobRECEITA: TStringField;
    dspRelCob: TDataSetProvider;
    cdsRelCob: TClientDataSet;
    dsRelCob: TDataSource;
    sqlCadastroCOD_EMP_COB: TIntegerField;
    sqlCadastroCOD_COB: TIntegerField;
    sqlCadastroPERIODO_COB: TIntegerField;
    sqlCadastroDESCRI_COB: TStringField;
    sqlCadastroNRO_LEI_COB: TStringField;
    sqlCadastroLOGIN_INC_COB: TStringField;
    sqlCadastroDTA_INC_COB: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_COB: TStringField;
    sqlCadastroDTA_ALT_COB: TSQLTimeStampField;
    sqlCadastroSORTEIO_COB: TStringField;
    Panel12: TPanel;
    Label3: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel4: TPanel;
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
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
    procedure dspCadastroAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure dspRelCobGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspRelCobBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspRelCobAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PGChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsRelCobNewRecord(DataSet: TDataSet);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
     function VerReceita(receita : string) : boolean;
    procedure ClicaGrid;
  end;

var
  FCadCobranca: TFCadCobranca;
  Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros, URelCodCob, UClasse_PesqPrin;

{$R *.dfm}

function TFCadCobranca.VerReceita(receita : string) : boolean;
begin
  result := False;
  cdsRelCob.DisableControls;
  cdsRelCob.First;
  while not cdsRelCob.Eof do begin
   if cdsRelCob.FieldByName('RECEITA').AsString = receita then begin
    result := True;
    break;
   end;
   cdsRelCob.Next;
  end;
  cdsRelCob.EnableControls;
end;

procedure TFCadCobranca.ClicaGrid;
begin
  if cdsVis.IsEmpty then exit;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['cod_emp_cob'];
  sqlCadastro.Params.ParamValues['cod']     := cdsVis.FieldValues['cod_cob'];
  cdsCadastro.Open;

  cdsRelCob.Close;
  sqlRelCob.Params.ParamValues['empresa']  := cdsVis.FieldValues['cod_emp_cob'];
  sqlRelCob.Params.ParamValues['cod']      := cdsVis.FieldValues['cod_cob'];
  cdsRelCob.Open;
end;

procedure TFCadCobranca.DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadCobranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadCobranca.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := Nil;
end;

procedure TFCadCobranca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
   if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadCobranca.FormShow(Sender: TObject);
begin
  inherited;
  PG.ActivePageIndex  := 0;
  desabilita(FCadCobranca);

  cdsVis.Close;
  sqlVis.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsVis.Open;
  Condicao := '';
end;

procedure TFCadCobranca.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadCobranca.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadCobranca.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFCadCobranca.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Condicao := 'Incluindo';
  abilita(FCadCobranca);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := -1;
  cdsCadastro.Open;

  cdsRelCob.Close;
  sqlRelCob.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlRelCob.Params.ParamValues['cod']     := -1;
  cdsRelCob.Open;

  cdsCadastro.Append;

  DBEdit5.SetFocus;
end;

procedure TFCadCobranca.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadCobranca.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadCobranca);
  cdsCadastro.Edit;

  DBEdit5.SetFocus;
end;

procedure TFCadCobranca.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadCobranca);
  dm.msg.DefaultButton := mbNo;
  if dm.msg.MessageDlg('Deseja Realmente Excluir o Registro ?',mtConfirmation ,[mbyes,mbno] ,0) = mryes then begin
    if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

    cdsRelCob.First;
    while not cdsRelCob.Eof do cdsRelCob.Delete;

    cdsCadastro.Delete;

    if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);

    if Erros=0 then begin
     dm.Conexao.Commit(TD);
     cdsVis.Close;
     cdsVis.Open;
    end
    else dm.Conexao.RollBack(TD);

  end;
  desabilita(FCadCobranca);
  cdsRelCob.Close;
  cdsCadastro.Close;
end;

procedure TFCadCobranca.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadCobranca.BtnImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFRelCodCob, FRelCodCob);
  SIA_Aplicacao := 'FRelCodCob';
  If PG.ActivePageIndex = 0 Then FRelCodCob.CODIGO := DBText1.Caption;
  FRelCodCob.ShowModal;
  FRelCodCob.Free;
end;

procedure TFCadCobranca.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadCobranca.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadCobranca.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadCobranca);

  if cdsRelCob.State in [dsEdit, dsInsert] then cdsRelCob.Cancel;
  if cdsRelCob.ChangeCount > 0 then cdsRelCob.CancelUpdates;

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsRelCob.Close;
  cdsCadastro.Close;
end;

procedure TFCadCobranca.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  inherited;

  Erros := 0;
  PG.ActivePageIndex := 0;

  if trim(DBEdit5.Text) = '' then begin
    dm.msg.MessageDlg('O campo Descrição é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit5.SetFocus;
    Exit;
  end;

  if not cdsRelCob.IsEmpty then begin
    if trim(DBEdit1.Text) = '' then begin
      dm.msg.MessageDlg('O campo Período é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
      DBEdit1.SetFocus;
      Exit;
    end;
  end;

  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Post;
  if cdsRelCob.State in [dsEdit, dsInsert] then cdsRelCob.Post;

  if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);
  if cdsRelCob.ChangeCount > 0 then Erros := Erros + cdsRelCob.ApplyUpdates(-1);

  if Erros = 0 then dm.Conexao.Commit(TD)
  else begin
    dm.Conexao.Rollback(TD);
    exit;
  end;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlCadastro.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  cdsCadastro.Open;

  cdsRelCob.Close;
  sqlRelCob.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlRelCob.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  cdsRelCob.Open;

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

  desabilita(FCadCobranca);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadCobranca.dspCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadCobranca.dspCadastroGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_COBRANCA';
end;

procedure TFCadCobranca.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if UpdateKind = ukInsert then begin
    dm.qrAtualiza.Close;
    dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_COBRANCA,1) AS INTEGER) CODIGO from RDB$DATABASE';
    dm.qrAtualiza.Open;
    DeltaDS.FieldByName('COD_COB').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    sqlCadastro.Params.ParamValues['cod']   := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
    dm.qrAtualiza.Close;
    DeltaDS.FieldByName('LOGIN_INC_COB').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_COB').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_COB').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_COB').NewValue   := DataBanco;
  end;
end;

procedure TFCadCobranca.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_COBRANCA' ,SIA_Modulo, UpperCase(FCadCobranca.Caption),DeltaDS, UpdateKind);
end;

procedure TFCadCobranca.dspRelCobGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_RELCOBRANCA';
end;

procedure TFCadCobranca.dspRelCobBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if UpdateKind = ukInsert then begin
    DeltaDS.FieldByName('COD_EMP_RCO').newValue := sqlCadastro.Params.ParamValues['empresa'];
    DeltaDS.FieldByName('COD_COB_RCO').newValue := sqlCadastro.Params.ParamValues['cod'];
  end;
end;

procedure TFCadCobranca.dspRelCobAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_RELCOBRANCA' ,SIA_Modulo,UpperCase(FCadCobranca.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadCobranca.DBGrid2ColExit(Sender: TObject);
var Pesq : TPesq_Receita;
begin
 inherited;
 if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

 if DBGrid2.Columns.Grid.SelectedIndex = 0 then begin
  if cdsRelCob.FieldByName('COD_REC_RCO').Value = NULL then exit;

  if VerReceita(cdsRelCob.FieldByName('COD_REC_RCO').AsString) then begin
    dm.msg.MessageDlg('Receita já Informada.',mtInformation,[mbok],0);
    exit;
  end;

  Pesq := TPesq_Receita.Create;
  Pesq.PesquisaReceita(cdsRelCob.FieldByName('COD_REC_RCO').AsString);
  if trim(Pesq.Codigo) <> '' then begin
   if not (cdsRelCob.State in [dsEdit]) then cdsRelCob.Edit;
   cdsRelCob.FieldByName('COD_REC_RCO').AsInteger := strtoint(Pesq.Codigo);
   cdsRelCob.FieldByName('RECEITA').AsString      := Pesq.Descri;
   cdsRelCob.Post;
  end;
  FreeAndNil(Pesq);
 end;
end;

procedure TFCadCobranca.DBGrid2EditButtonClick(Sender: TObject);
var Pesq : TPesq_Receita;
begin
 inherited;
 if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

 if DBGrid2.Columns.Grid.SelectedIndex = 1 then begin
  Pesq := TPesq_Receita.Create;
  if Pesq.BotaoReceita then begin
   if not (cdsRelCob.State in [dsEdit]) then cdsRelCob.Edit;
   cdsRelCob.FieldByName('COD_REC_RCO').AsInteger := strtoint(Pesq.Codigo);
   cdsRelCob.FieldByName('RECEITA').AsString      := Pesq.Descri;
   cdsRelCob.Post;
  end;
  FreeAndNil(Pesq);
 end;
end;

procedure TFCadCobranca.DBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var qrx : TSQLQuery;
    Pesq : TPesq_Receita;
begin
  inherited;
  if key = vk_f5 then
    if (Condicao = 'Incluindo') or (Condicao = 'Alterando') then cdsRelCob.Delete;

  if key = vk_f6 then
   if (Condicao = 'Incluindo') or (Condicao = 'Alterando') then begin
     if not cdsRelCob.IsEmpty then begin
       if dm.msg.MessageDlg('Atenção!!!'+#13+
                         'Já existem receitas que estão configuradas, o sistema irá excluí-las para importar novamente.'+#13+
                         'Deseja Continuar ?', mtConfirmation, [mbyes,mbno], 0) = mrno then exit;
     end;
     cdsRelCob.First;
     while not cdsRelCob.Eof do
       cdsRelCob.Delete;

     qrx := TSQLQuery.Create(Application.Owner);
     qrx.SQLConnection := dm.Conexao;
     qrx.SQL.Text := 'SELECT * '+
                     'FROM GR_REL_RECEITAS '+
                     'WHERE GR_REL_RECEITAS.COD_EMP_RRC = '+ SIA_Empresa +
                      ' AND GR_REL_RECEITAS.TP_RRC LIKE ''11%'' '+ //RURAL
                     'UNION '+
                     'SELECT * '+
                     'FROM GR_REL_RECEITAS '+
                     'WHERE GR_REL_RECEITAS.COD_EMP_RRC = '+ SIA_Empresa +
                      ' AND GR_REL_RECEITAS.TP_RRC LIKE ''03%'' '; //EXPEDIENTE
     qrx.Open;

     Pesq := TPesq_Receita.Create;
     while not qrx.Eof do begin
       cdsRelCob.Append;
       cdsRelCob.FieldValues['COD_EMP_RCO']    := SIA_Empresa;
       cdsRelCob.FieldValues['COD_COB_RCO']    := cdsCadastro.FieldValues['COD_COB'];
       cdsRelCob.FieldValues['COD_REC_RCO']    := qrx.FieldValues['COD_REC_RRC'];
       cdsRelCob.FieldValues['GERA_LANCA_RCO'] := 'N';
       cdsRelCob.FieldValues['VALOR_RCO']      := 100;
       Pesq.PesquisaReceita(vartostr(qrx.FieldValues['COD_REC_RRC']));
       cdsRelCob.FieldValues['RECEITA']        := Pesq.Descri;
       cdsRelCob.Post;

       qrx.Next;
     end;
     FreeAndNil(Pesq);
     FreeAndNil(qrx);
   end;    
end;

procedure TFCadCobranca.DBGrid2TitleClick(Column: TColumn);
begin
  inherited;
  OrdenarGRID(cdsRelCob, dsRelCob, Column);
end;

procedure TFCadCobranca.PGChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
begin
  inherited;
  if cdsCadastro.State in [dsEdit, dsInsert] then AllowChange := False;
end;

procedure TFCadCobranca.cdsCadastroReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
   if UpdateKind = ukDelete then Action := raCancel
   else Action := raCorrect;
end;

procedure TFCadCobranca.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastro.FieldByName('cod_emp_cob').AsInteger := strtoint(SIA_Empresa);
  cdsCadastro.FieldByName('cod_cob').AsInteger     := -1;
end;

procedure TFCadCobranca.cdsRelCobNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsRelCob.FieldByName('cod_emp_rco').AsInteger   := strtoint(SIA_Empresa);
  cdsRelCob.FieldByName('cod_cob_rco').AsInteger   := -1;
  cdsRelCob.FieldByName('GERA_LANCA_RCO').AsString := 'N';
  cdsRelCob.FieldByName('VALOR_RCO').AsInteger     := 1;
end;

end.
