unit UCadDescontos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, wwdblook, StdCtrls, DBCtrls, Mask, Buttons,
  SqlExpr, DB, DBClient, Provider, EMsgDlg, RzButton, RzPanel, Grids,
  DBGrids, RzBckgnd, ExtCtrls, RzTabs;

type
  TFCadDescontos = class(TFGenerico)
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnReceita: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBLParcelas: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBLSetor: TwwDBLookupCombo;
    DBEdit4: TDBEdit;
    sqlSetor: TSQLDataSet;
    dspSetor: TDataSetProvider;
    cdsSetor: TClientDataSet;
    dsSetor: TDataSource;
    dsParcela: TDataSource;
    cdsParcela: TClientDataSet;
    dspParcela: TDataSetProvider;
    sqlParcela: TSQLDataSet;
    sqlCadastroCOD_EMP_DSC: TIntegerField;
    sqlCadastroCOD_STR_DSC: TStringField;
    sqlCadastroANO_STR_DSC: TIntegerField;
    sqlCadastroCOD_REC_DSC: TIntegerField;
    sqlCadastroPARCELA_DSC: TIntegerField;
    sqlCadastroTIPO_DSC: TStringField;
    sqlCadastroVRDESCONTO_DSC: TFloatField;
    sqlCadastroCONDICAO_DSC: TStringField;
    sqlCadastroLOGIN_INC_DSC: TStringField;
    sqlCadastroDTA_INC_DSC: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_DSC: TStringField;
    sqlCadastroDTA_ALT_DSC: TSQLTimeStampField;
    sqlCadastroDESCRI_REC: TStringField;
    sqlCadastroCHAVE: TStringField;
    RzPanel3: TRzPanel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    msk1: TMaskEdit;
    btnPesquisa: TBitBtn;
    msk2: TMaskEdit;
    msk3: TMaskEdit;
    msk4: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBLSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure DBLSetorCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnReceitaClick(Sender: TObject);
    procedure DBLParcelasEnter(Sender: TObject);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure btnPesquisaClick(Sender: TObject);
    procedure msk1Exit(Sender: TObject);
    procedure msk2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnImprimirClick(Sender: TObject);
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
  FCadDescontos: TFCadDescontos;
  Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros, URelDescontos, UClasse_PesqPrin;

{$R *.dfm}

procedure TFCadDescontos.ClicaGrid;
begin
  if cdsVis.IsEmpty then exit;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['cod_emp_dsc'];
  sqlCadastro.Params.ParamValues['setor']   := cdsVis.FieldValues['cod_str_dsc'];
  sqlCadastro.Params.ParamValues['ano']     := cdsVis.FieldValues['ano_str_dsc'];
  sqlCadastro.Params.ParamValues['receita'] := cdsVis.FieldValues['cod_rec_dsc'];
  sqlCadastro.Params.ParamValues['parcela'] := cdsVis.FieldValues['parcela_dsc'];
  cdsCadastro.Open;

  cdsSetor.Close;
  sqlSetor.Params.ParamValues['empresa'] := cdsVis.FieldValues['cod_emp_dsc'];
  cdsSetor.Open;

  cdsParcela.Close;
  sqlParcela.Params.ParamValues['empresa'] := cdsVis.FieldValues['cod_emp_dsc'];
  sqlParcela.Params.ParamValues['setor']   := cdsVis.FieldValues['cod_str_dsc'];
  sqlParcela.Params.ParamValues['ano']     := cdsVis.FieldValues['ano_str_dsc'];
  cdsParcela.Open;
end;


procedure TFCadDescontos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadDescontos.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := Nil;
end;

procedure TFCadDescontos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
   if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadDescontos.FormShow(Sender: TObject);
begin
  inherited;
  PG.ActivePageIndex  := 0;
  desabilita(FCadDescontos);
  
  cdsVis.Close;
  sqlVis.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsVis.Open;
  Condicao := '';
end;

procedure TFCadDescontos.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadDescontos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadDescontos.DBLSetorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadDescontos.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFCadDescontos.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Condicao := 'Incluindo';
  abilita(FCadDescontos);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['setor']   := 0;
  sqlCadastro.Params.ParamValues['ano']     := strtoint(SIA_Exercicio);
  sqlCadastro.Params.ParamValues['receita'] := 0;
  sqlCadastro.Params.ParamValues['parcela'] := 0;
  cdsCadastro.Open;

  cdsSetor.Close;
  sqlSetor.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsSetor.Open;

  cdsParcela.Close;

  cdsCadastro.Append;
  cdsCadastro.fieldByName('condicao_dsc').AsString:='01 - Todos';

  DBLSetor.SetFocus;
  DBLSetor.DropDown;
end;

procedure TFCadDescontos.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadDescontos);
  cdsCadastro.Edit;

  DBLSetor.SetFocus;
end;

procedure TFCadDescontos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadDescontos);
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
  desabilita(FCadDescontos);
  cdsCadastro.Close;
  cdsSetor.Close;
  cdsParcela.Close;
end;

procedure TFCadDescontos.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadDescontos.BtnImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFRelDescontos, FRelDescontos);
  SIA_Aplicacao:='FRelDescontos';
  dm.Permissao(FRelDescontos, 'IMO_FRelDescontos', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante);
  FRelDescontos.ShowModal;
  FRelDescontos.Free;
end;

procedure TFCadDescontos.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadDescontos.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadDescontos.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadDescontos);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsCadastro.Close;
  cdsSetor.Close;
  cdsParcela.Close;  
end;

procedure TFCadDescontos.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
    Pesq : TPesq_Receita;
begin
  Erros := 0;
  PG.ActivePageIndex := 0;

  if trim(DBLSetor.Text) = '' then begin
    dm.msg.MessageDlg('O campo Setor é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBLSetor.SetFocus;
    DBLSetor.DropDown;
    Exit;
  end;

  if trim(DBEdit1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Receita é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit1.SetFocus;
    Exit;
  end
  else begin
    Pesq := TPesq_Receita.Create;
    if not Pesq.ValidaReceita(trim(DBEdit1.Text)) then begin
      dm.msg.MessageDlg('Receita Inválida.', mtError, [mbok], 0);
      DBEdit1.SetFocus;
      FreeAndNil(Pesq);
      exit;
    end;
    FreeAndNil(Pesq);
  end;

  if trim(DBLParcelas.Text) = '' then begin
    dm.msg.MessageDlg('O campo Número da Parcela é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBLParcelas.SetFocus;
    DBLParcelas.DropDown;
    Exit;
  end;

  if trim(DBEdit7.Text) = '' then begin
    dm.msg.MessageDlg('O campo Valor do Desconto é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit7.SetFocus;
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
  sqlCadastro.Params.ParamValues['setor']   := sqlCadastro.Params.ParamValues['setor'];
  sqlCadastro.Params.ParamValues['ano']     := sqlCadastro.Params.ParamValues['ano'];
  sqlCadastro.Params.ParamValues['receita'] := sqlCadastro.Params.ParamValues['receita'];
  sqlCadastro.Params.ParamValues['parcela'] := sqlCadastro.Params.ParamValues['parcela'];
  cdsCadastro.Open;

  cdsSetor.Close;
  sqlSetor.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  cdsSetor.Open;

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

  desabilita(FCadDescontos);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadDescontos.dspCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadDescontos.dspCadastroGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_DESCONTO';
end;

procedure TFCadDescontos.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if UpdateKind = ukInsert then begin
    sqlCadastro.Params.ParamValues['empresa'] := DeltaDS.FieldByName('cod_emp_dsc').NewValue;
    sqlCadastro.Params.ParamValues['setor']   := DeltaDS.FieldByName('cod_str_dsc').NewValue;
    sqlCadastro.Params.ParamValues['ano']     := DeltaDS.FieldByName('ano_str_dsc').NewValue;
    sqlCadastro.Params.ParamValues['receita'] := DeltaDS.FieldByName('cod_rec_dsc').NewValue;
    sqlCadastro.Params.ParamValues['parcela'] := DeltaDS.FieldByName('parcela_dsc').NewValue;

    DeltaDS.FieldByName('LOGIN_INC_DSC').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_DSC').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    sqlCadastro.Params.ParamValues['empresa'] := cdsCadastro.FieldByName('cod_emp_dsc').Value;
    sqlCadastro.Params.ParamValues['setor']   := cdsCadastro.FieldByName('cod_str_dsc').Value;
    sqlCadastro.Params.ParamValues['ano']     := cdsCadastro.FieldByName('ano_str_dsc').Value;
    sqlCadastro.Params.ParamValues['receita'] := cdsCadastro.FieldByName('cod_rec_dsc').Value;
    sqlCadastro.Params.ParamValues['parcela'] := cdsCadastro.FieldByName('parcela_dsc').Value;

    DeltaDS.FieldByName('LOGIN_ALT_DSC').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_DSC').NewValue   := DataBanco;
  end;
end;

procedure TFCadDescontos.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_DESCONTO',SIA_Modulo,UpperCase(FCadDescontos.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadDescontos.DBLSetorCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  inherited;
  if not(cdsCadastro.State in [dsInsert, dsEdit]) then exit;

  if not cdsSetor.Active then exit;
  if cdsSetor.IsEmpty then exit;
  if trim(DBLSetor.Text) = '' then exit;

  cdsParcela.Close;
  sqlParcela.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlParcela.Params.ParamValues['setor']   := cdsSetor.FieldValues['COD_STR'];
  sqlParcela.Params.ParamValues['ano']     := cdsSetor.FieldValues['ANO_STR'];
  cdsParcela.Open;

  cdsCadastro.FieldValues['COD_STR_DSC'] := cdsSetor.FieldValues['COD_STR'];
  cdsCadastro.FieldValues['ANO_STR_DSC'] := cdsSetor.FieldValues['ANO_STR'];

  if cdsParcela.IsEmpty then
    dm.msg.MessageDlg('Não Existem Parcelas para este Setor.'+#13+
                   'O Cadastramento não poderá se Finalizado sem antes Cadastrar as Parcelas deste Setor.',mtError,[mbok],0);
end;

procedure TFCadDescontos.DBEdit1Exit(Sender: TObject);
var Pesq : TPesq_Receita;
begin
  inherited;
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;
  if trim(TDBedit(sender).text) = '' then exit;

  Pesq := TPesq_Receita.Create;
  Pesq.PesquisaReceita(TDBedit(sender).text);
  if not (cdsCadastro.State in [dsEdit]) then cdsCadastro.Edit;
  cdsCadastro.FieldByName('COD_REC_DSC').AsInteger := Pesq.Codigo;
  cdsCadastro.FieldByName('DESCRI_REC').AsString   := Pesq.Descri;
  cdsCadastro.Post;
  FreeAndNil(Pesq);
end;

procedure TFCadDescontos.btnReceitaClick(Sender: TObject);
var Pesq : TPesq_Receita;
begin
  inherited;
  Pesq := TPesq_Receita.Create;
  if Pesq.BotaoReceita then begin
   if trim(Pesq.Codigo) <> '' then begin
    if not (cdsCadastro.State in [dsEdit]) then cdsCadastro.Edit;
    cdsCadastro.FieldByName('COD_REC_DSC').AsInteger := strtoint(Pesq.Codigo);
    cdsCadastro.FieldByName('DESCRI_REC').AsString   := Pesq.Descri;
    cdsCadastro.Post;
   end;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadDescontos.DBLParcelasEnter(Sender: TObject);
begin
  inherited;
  DBLParcelas.DropDown;
end;

procedure TFCadDescontos.cdsCadastroReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
   if UpdateKind = ukDelete then Action := raCancel
   else Action := raCorrect;
end;

procedure TFCadDescontos.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastro.FieldValues['cod_emp_dsc']    := strtoint(SIA_Empresa);
  cdsCadastro.FieldValues['cod_str_dsc']    := '0';
  cdsCadastro.FieldValues['ano_str_dsc']    := strtoint(SIA_Exercicio);
  cdsCadastro.FieldValues['cod_rec_dsc']    := 0;
  cdsCadastro.FieldValues['parcela_dsc']    := 0;
  cdsCadastro.FieldValues['VRDESCONTO_DSC'] := 0;
end;

procedure TFCadDescontos.btnPesquisaClick(Sender: TObject);
var SQL : string;
begin
  inherited;

  SQL := 'select * from RR_DESCONTO '+
         'where COD_EMP_DSC = '+ Sia_Empresa;

  If trim(msk1.Text) <> ''  Then SQL := SQL + ' AND COD_STR_DSC = '+''''+ trim(msk1.Text) +'''';
  If trim(msk2.Text) <> ''  Then SQL := SQL + ' AND ANO_STR_DSC = '+ trim(msk2.Text);
  If trim(msk3.Text) <> ''  Then SQL := SQL + ' AND COD_REC_DSC = '+ trim(msk3.Text);
  If trim(msk4.Text) <> ''  Then SQL := SQL + ' AND PARCELA_DSC = '+ trim(msk4.Text);

  cdsVis.Close;
  cdsVis.PacketRecords := -1;
  sqlVis.CommandText := SQL;
  cdsVis.PacketRecords := 100;
  cdsVis.Open;

  DBGrid1.SetFocus;
end;

procedure TFCadDescontos.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadDescontos.msk1Exit(Sender: TObject);
begin
  inherited;
  if trim(msk1.Text) <> '' then msk1.Text := lpad(msk1.Text,'0',4);
end;

procedure TFCadDescontos.msk2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13]) then key := #0;
end;

end.
