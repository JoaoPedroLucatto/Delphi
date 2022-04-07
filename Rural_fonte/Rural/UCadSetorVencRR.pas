unit UCadSetorVencRR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, SqlExpr, DB, DBClient, Provider, EMsgDlg,
  RzButton, RzPanel, Grids, DBGrids, StdCtrls, RzBckgnd, ExtCtrls, RzTabs,
  DBCtrls, Buttons, Mask, ImgList;

type
  TFCadSetorVencRR = class(TFGenerico)
    sqlCadastroCOD_EMP_STR: TIntegerField;
    sqlCadastroCOD_STR: TStringField;
    sqlCadastroANO_STR: TIntegerField;
    sqlCadastroCOD_IND_STR: TIntegerField;
    sqlCadastroNOM_LANCA_STR: TStringField;
    sqlCadastroFATORCORRE_STR: TFloatField;
    sqlCadastroUFM_STR: TFloatField;
    sqlCadastroEXPED_STR: TFloatField;
    sqlCadastroVRMINIMO_STR: TFloatField;
    sqlCadastroLOGIN_INC_STR: TStringField;
    sqlCadastroDTA_INC_STR: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_STR: TStringField;
    sqlCadastroDTA_ALT_STR: TSQLTimeStampField;
    RzPanel8: TRzPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBLIndice: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    PGVenc: TRzPageControl;
    tbTerri: TRzTabSheet;
    Panel5: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label54: TLabel;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    Panel8: TPanel;
    DBMemo1: TDBMemo;
    sqlVencimentos: TSQLDataSet;
    sqlVencimentosCOD_EMP_VEN: TIntegerField;
    sqlVencimentosCOD_STR_VEN: TStringField;
    sqlVencimentosANO_STR_VEN: TIntegerField;
    sqlVencimentosNRPARCE_VEN: TIntegerField;
    sqlVencimentosVENCI_VEN: TDateField;
    sqlVencimentosUNICA_VEN: TStringField;
    sqlVencimentosMENS1_VEN: TMemoField;
    dspVencimentos: TDataSetProvider;
    cdsVencimentos: TClientDataSet;
    dsVencimentos: TDataSource;
    dsIndice: TDataSource;
    cdsIndice: TClientDataSet;
    dspIndice: TDataSetProvider;
    sqlIndice: TSQLDataSet;
    dsUFM: TDataSource;
    cdsUFM: TClientDataSet;
    dspUFM: TDataSetProvider;
    sqlUFM: TSQLDataSet;
    ImageList1: TImageList;
    qrVerCod: TSQLQuery;
    cdsVencimentosCOD_EMP_VEN: TIntegerField;
    cdsVencimentosCOD_STR_VEN: TStringField;
    cdsVencimentosANO_STR_VEN: TIntegerField;
    cdsVencimentosNRPARCE_VEN: TIntegerField;
    cdsVencimentosVENCI_VEN: TDateField;
    cdsVencimentosUNICA_VEN: TStringField;
    cdsVencimentosMENS1_VEN: TMemoField;
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
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure dspVencimentosGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: WideString);
    procedure dspVencimentosBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsVencimentosNewRecord(DataSet: TDataSet);
    procedure cdsVencimentosBeforeDelete(DataSet: TDataSet);
    procedure cdsVencimentosBeforeCancel(DataSet: TDataSet);
    procedure cdsVencimentosAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLIndiceEnter(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dspVencimentosAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClicaGrid;
  end;

var
  FCadSetorVencRR: TFCadSetorVencRR;
  Condicao : string;
  Erros, UltParcela : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros, URelSetVenc;

{$R *.dfm}

procedure TFCadSetorVencRR.ClicaGrid;
begin
  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['COD_EMP_STR'];
  sqlCadastro.Params.ParamValues['cod']     := cdsVis.FieldValues['COD_STR'];
  sqlCadastro.Params.ParamValues['ano']     := cdsVis.FieldValues['ANO_STR'];
  cdsCadastro.Open;

  cdsVencimentos.Close;
  sqlVencimentos.Params.ParamValues['empresa'] := cdsVis.FieldValues['COD_EMP_STR'];
  sqlVencimentos.Params.ParamValues['cod']     := cdsVis.FieldValues['COD_STR'];
  sqlVencimentos.Params.ParamValues['ano']     := cdsVis.FieldValues['ANO_STR'];
  cdsVencimentos.Open;

  cdsIndice.Close;
  sqlIndice.Params.ParamValues['empresa'] := cdsVis.FieldValues['COD_EMP_STR'];
  cdsIndice.Open;

  cdsUFM.Close;
  cdsUFM.Open;
end;

procedure TFCadSetorVencRR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadSetorVencRR.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := Nil;
end;

procedure TFCadSetorVencRR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
   if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadSetorVencRR.FormShow(Sender: TObject);
begin
  inherited;
  PG.ActivePageIndex  := 0;
  desabilita(FCadSetorVencRR);
  cdsVis.Close;
  sqlVis.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsVis.Open;
  Condicao := '';
end;

procedure TFCadSetorVencRR.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFCadSetorVencRR.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Condicao := 'Incluindo';
  abilita(FCadSetorVencRR);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := '0';
  sqlCadastro.Params.ParamValues['ano']     := strtoint(SIA_Exercicio);
  cdsCadastro.Open;

  cdsVencimentos.Close;
  sqlVencimentos.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlVencimentos.Params.ParamValues['cod']     := '0';
  sqlVencimentos.Params.ParamValues['ano']     := strtoint(SIA_Exercicio);
  cdsVencimentos.Open;

  cdsIndice.Close;
  sqlIndice.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsIndice.Open;

  cdsUFM.Close;
  cdsUFM.Open;

  cdsCadastro.Append;

  DBEdit7.SetFocus;
end;

procedure TFCadSetorVencRR.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadSetorVencRR.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;
  PGVenc.ActivePageIndex := 0;  

  Condicao := 'Alterando';
  abilita(FCadSetorVencRR);
  cdsCadastro.Edit;

  DBLIndice.SetFocus;
end;

procedure TFCadSetorVencRR.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadSetorVencRR);
  dm.msg.DefaultButton := mbNo;
  if dm.msg.MessageDlg('Deseja Realmente Excluir o Registro ?',mtConfirmation ,[mbyes,mbno] ,0) = mryes then begin
    if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

    cdsVencimentos.First;
    while not cdsVencimentos.Eof do cdsVencimentos.Delete;

    cdsCadastro.Delete;

    if cdsVencimentos.ChangeCount > 0 then Erros := cdsVencimentos.ApplyUpdates(-1);
    if cdsCadastro.ChangeCount > 0 then Erros := Erros + cdsCadastro.ApplyUpdates(-1);

    if Erros=0 then begin
     dm.Conexao.Commit(TD);
     cdsVis.Close;
     cdsVis.Open;
    end
    else dm.Conexao.RollBack(TD);

  end;
  desabilita(FCadSetorVencRR);
  cdsVencimentos.Close;
  cdsCadastro.Close;
  cdsIndice.Close;
  cdsUFM.Close;
end;

procedure TFCadSetorVencRR.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadSetorVencRR.BtnImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFRelSetVenc, FRelSetVenc);
  SIA_Aplicacao := 'FRelSetVenc';
  If PG.ActivePageIndex = 0 Then begin
     FRelSetVenc.CODIGO := DBEdit7.Text;
     FRelSetVenc.CODIGO1 := DBEdit8.Text;
  end;
  FRelSetVenc.ShowModal;
  FRelSetVenc.Free;
end;

procedure TFCadSetorVencRR.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadSetorVencRR.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadSetorVencRR.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadSetorVencRR);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if cdsVencimentos.State in [dsEdit, dsInsert] then cdsVencimentos.Cancel;
  if cdsVencimentos.ChangeCount > 0 then cdsVencimentos.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;

  cdsVencimentos.Close;
  cdsCadastro.Close;
  cdsIndice.Close;
  cdsUFM.Close;

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadSetorVencRR.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  Erros := 0;
  PG.ActivePageIndex := 0;

  if trim(DBLIndice.Text) = '' then begin
      dm.msg.MessageDlg('O campo Índice de Correção é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
      DBLIndice.SetFocus;
      Exit;
  end;

  if trim(DBEdit8.Text) = '' then begin
      dm.msg.MessageDlg('O campo Ano de Correção é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
      DBEdit8.SetFocus;
      Exit;
  end;

  if trim(DBEdit5.Text) = '' then begin
      dm.msg.MessageDlg('O campo Descrição é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
      DBEdit5.SetFocus;
      Exit;
  end;

  if cdsVencimentos.IsEmpty then begin
      dm.msg.MessageDlg('É necessário Cadastrar pelo menos um Vencimento!!!',mtError,[mbok],0);
      DBGrid2.SetFocus;
      Exit;
  end;

  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Post;
  if cdsVencimentos.State in [dsEdit, dsInsert] then cdsVencimentos.Post;

  if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);
  if cdsVencimentos.ChangeCount > 0 then Erros := Erros + cdsVencimentos.ApplyUpdates(-1);

  if Erros = 0 then dm.Conexao.Commit(TD)
  else begin
    dm.Conexao.Rollback(TD);
    exit;
  end;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlCadastro.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  sqlCadastro.Params.ParamValues['ano']     := sqlCadastro.Params.ParamValues['ano'];
  cdsCadastro.Open;

  cdsVencimentos.Close;
  sqlVencimentos.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlVencimentos.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  sqlVencimentos.Params.ParamValues['ano']     := sqlCadastro.Params.ParamValues['ano'];
  cdsVencimentos.Open;

  cdsIndice.Close;
  sqlIndice.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsIndice.Open;

  cdsVis.Close;
  sqlVis.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsVis.Open;

  cdsUFM.Close;
  cdsUFM.Open;

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

  desabilita(FCadSetorVencRR);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadSetorVencRR.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

  if trim(DBEdit7.Text) <> '' then DBEdit7.Text := STRZero(DBEdit7.Text,4);
end;

procedure TFCadSetorVencRR.DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadSetorVencRR.dspCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadSetorVencRR.dspCadastroGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_SETOR';
end;

procedure TFCadSetorVencRR.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
 if UpdateKind = ukInsert then begin
   sqlCadastro.Params.ParamValues['empresa'] := DeltaDS.FieldByName('COD_EMP_STR').NewValue;
   sqlCadastro.Params.ParamValues['cod']     := DeltaDS.FieldByName('COD_STR').NewValue;
   sqlCadastro.Params.ParamValues['ano']     := DeltaDS.FieldByName('ANO_STR').NewValue;

   DeltaDS.FieldByName('LOGIN_INC_STR').NewValue := SIA_Usuario;
   DeltaDS.FieldByName('DTA_INC_STR').NewValue   := DataBanco;
 end;

 if UpdateKind = ukModify then begin
   DeltaDS.FieldByName('LOGIN_ALT_STR').NewValue := SIA_Usuario;
   DeltaDS.FieldByName('DTA_ALT_STR').NewValue   := DataBanco;
 end;
end;

procedure TFCadSetorVencRR.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_SETOR' ,SIA_Modulo,UpperCase(FCadSetorVencRR.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadSetorVencRR.dspVencimentosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_VENCIMENTOS';
end;

procedure TFCadSetorVencRR.dspVencimentosAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_VENCIMENTOS' ,SIA_Modulo,UpperCase(FCadSetorVencRR.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadSetorVencRR.dspVencimentosBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
 if UpdateKind = ukInsert then begin
   DeltaDS.FieldByName('COD_EMP_VEN').newValue := sqlCadastro.Params.ParamValues['empresa'];
   DeltaDS.FieldByName('COD_STR_VEN').newValue := sqlCadastro.Params.ParamValues['cod'];
   DeltaDS.FieldByName('ANO_STR_VEN').newValue := sqlCadastro.Params.ParamValues['ano'];
 end;
 if UpdateKind = ukModify then
  DeltaDS.FieldByName('ANO_STR_VEN').newValue := sqlCadastro.Params.ParamValues['ano'];
end;

procedure TFCadSetorVencRR.cdsCadastroReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  if UpdateKind = ukDelete then Action := raCancel
  else Action := raCorrect;
end;

procedure TFCadSetorVencRR.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastro.FieldByName('COD_EMP_STR').AsInteger := strtoint(SIA_Empresa);
  cdsCadastro.FieldByName('COD_STR').AsString      := '0';
  cdsCadastro.FieldByName('ANO_STR').AsInteger     := strtoint(SIA_Exercicio);
end;

procedure TFCadSetorVencRR.cdsVencimentosNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsVencimentos.FieldByName('COD_EMP_VEN').AsInteger := strtoint(SIA_Empresa);
  cdsVencimentos.FieldByName('COD_STR_VEN').AsString  := '0';
  cdsVencimentos.FieldByName('ANO_STR_VEN').AsInteger := cdsCadastro.FieldByName('ANO_STR').AsInteger;
  cdsVencimentos.FieldByName('NRPARCE_VEN').asInteger := UltParcela + 1;
  UltParcela := UltParcela + 1;
  cdsVencimentos.FieldByName('UNICA_VEN').AsString    := 'N';
end;

procedure TFCadSetorVencRR.cdsVencimentosBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IF cdsVencimentos.State IN [dsInsert] THEN UltParcela := UltParcela - 1;
end;

procedure TFCadSetorVencRR.cdsVencimentosBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  IF cdsVencimentos.State IN [dsInsert] THEN UltParcela := UltParcela - 1;
end;

procedure TFCadSetorVencRR.cdsVencimentosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if cdsCadastro.FieldByName('COD_STR').Value = Null then begin
    UltParcela := 0;
    exit;
  end;
  dm.qrAtualiza.Close;
  dm.qrAtualiza.SQL.Text := 'select max(NRPARCE_VEN) Ultimo from IP_VENCIMENTOS '+
                            'where COD_EMP_VEN = '+ SIA_Empresa +
                             ' and COD_STR_VEN = '+''''+ cdsCadastro.FieldByName('COD_STR').AsString +''''+
                             ' and ANO_STR_VEN = '+ cdsCadastro.FieldByName('ANO_STR').AsString;
  dm.qrAtualiza.Open;
  UltParcela := dm.qrAtualiza.FieldByName('Ultimo').asInteger;
  dm.qrAtualiza.Close;
end;

procedure TFCadSetorVencRR.SpeedButton1Click(Sender: TObject);
var antes, unica : string;
    okuni : boolean;
begin
 inherited;

 antes := '';
 okuni := False;
 cdsVencimentos.First;
 while not cdsVencimentos.Eof do begin
  if cdsVencimentos.FieldByName('UNICA_VEN').AsString <> 'S' then begin
   if trim(DBMemo1.Text) <> '' then //trim(cdsVencimentos.FieldByName('MENS1_VEN').AsString) <> '' then
     if trim(antes) = '' then antes := DBMemo1.Text; //cdsVencimentos.FieldByName('MENS1_VEN').AsString;
  end
  else unica := DBMemo1.Text; //cdsVencimentos.FieldByName('MENS1_VEN').AsString;

  cdsVencimentos.Next;
 end;
 if trim(antes) = '' then begin
  if trim(unica) <> '' then begin
   if dm.msg.MessageDlg('Foi detectado que não existem mensagens nas demais parcelas, somente na Única.'+#13+
                     'Deseja Cadastrar a Mensagem da Parcela Única nas demais Parcela ?',mtConfirmation,[mbyes,mbno],0) = mryes then okuni := True;
  end;
 end;
 cdsVencimentos.First;
 while not cdsVencimentos.Eof do begin
  cdsVencimentos.Edit;
  if okuni = True then cdsVencimentos.FieldByName('MENS1_VEN').AsString := unica
  else begin
   if cdsVencimentos.FieldByName('UNICA_VEN').AsString <> 'S' then
    cdsVencimentos.FieldByName('MENS1_VEN').AsString := antes;
  end;
  cdsVencimentos.Post;
  cdsVencimentos.Next;
 end;
 cdsVencimentos.First;
end;

procedure TFCadSetorVencRR.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
  if Column.Field = cdsVencimentos.FieldByName('UNICA_VEN') then begin
   if not (cdsVencimentos.State in [dsEdit]) then cdsVencimentos.Edit;

   if cdsVencimentos.FieldByName('UNICA_VEN').AsString = 'S' then cdsVencimentos.FieldByName('UNICA_VEN').AsString := 'N'
   else cdsVencimentos.FieldByName('UNICA_VEN').AsString := 'S';

   cdsVencimentos.Post;
  end;
end;

procedure TFCadSetorVencRR.DBGrid2ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid2.SelectedField = cdsVencimentos.FieldByName('UNICA_VEN') then
    DBGrid2.Options := DBGrid2.Options - [dgEditing]
  else
    DBGrid2.Options := DBGrid2.Options + [dgEditing];
end;

procedure TFCadSetorVencRR.DBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = vk_f5 then
   if cdsCadastro.State in [dsInsert, dsEdit] then cdsVencimentos.Delete;
end;

procedure TFCadSetorVencRR.DBGrid2TitleClick(Column: TColumn);
begin
  inherited;
  OrdenarGRID(cdsVencimentos, dsVencimentos, Column);
end;

procedure TFCadSetorVencRR.DBLIndiceEnter(Sender: TObject);
begin
  inherited;
  DBLIndice.DropDown;
end;

procedure TFCadSetorVencRR.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  If cdsCadastro.State = dsInsert then begin
    qrVerCod.Close;
    qrVerCod.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
    qrVerCod.Params.ParamByName('cod').AsString      := DBEdit7.Text;
    qrVerCod.Params.ParamByName('ano').AsString      := DBEdit8.Text;
    qrVerCod.Open;
    if qrVerCod.FieldByName('TOT').AsInteger <> 0  Then begin
      showmessage('ATENÇÃO : Código '+ DBEdit7.Text +' já consta no Exercício de '+ DBEdit8.Text +'.');
      DBEdit7.SetFocus;
    end;
    qrVerCod.Close;
  end;
end;

procedure TFCadSetorVencRR.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadSetorVencRR.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadSetorVencRR.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;  //herda cores do form generico

  if PG.ActivePage = tbCad then begin
    if Column.Field = cdsVencimentos.FieldByName('UNICA_VEN') then begin
      DBGrid2.Canvas.FillRect(Rect);
      ImageList1.Draw(DBGrid2.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
      if cdsVencimentos.FieldByName('UNICA_VEN').AsString = 'S' then
        ImageList1.Draw(DBGrid2.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
      else
        ImageList1.Draw(DBGrid2.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
    end;
  end;
end;

end.
