unit UCadRRCRT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ImgList, DB, DBClient, Provider, SqlExpr, EMsgDlg, Grids,
  DBGrids, EDBCkBox, StdCtrls, Mask, DBCtrls, RzBckgnd, RzTabs, RzButton,
  RzPanel, ExtCtrls;

type
  TFCadRRCRT = class(TForm)
    Panel1: TPanel;
    RzPanel1: TRzPanel;
    BtnNovo: TRzBitBtn;
    BtnAlterar: TRzBitBtn;
    BtnExcluir: TRzBitBtn;
    BtnImprimir: TRzBitBtn;
    PG: TRzPageControl;
    tbCad: TRzTabSheet;
    Panel2: TPanel;
    RzBackground1: TRzBackground;
    Label2: TLabel;
    Panel3: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Panel12: TPanel;
    Label9: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Panel5: TPanel;
    DBCheckBox2: TEvDBCheckBox;
    DBGrid2: TDBGrid;
    tbVis: TRzTabSheet;
    Panel4: TPanel;
    RzBackground2: TRzBackground;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    RzPanel2: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnCancela: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnPrimeiro: TRzBitBtn;
    BtnAnterior: TRzBitBtn;
    BtnProximo: TRzBitBtn;
    BtnUltimo: TRzBitBtn;
    QVerCod: TSQLQuery;
    sqlVis: TSQLDataSet;
    dspVis: TDataSetProvider;
    cdsVis: TClientDataSet;
    dsVis: TDataSource;
    sqlCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    cdsCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    ImageList1: TImageList;
    sqlDesdo: TSQLDataSet;
    dspDesdo: TDataSetProvider;
    cdsDesdo: TClientDataSet;
    dsDesdo: TDataSource;
    sqlCadastroCOD_EMP_RR1: TIntegerField;
    sqlCadastroCOD_RR1: TStringField;
    sqlCadastroMOSTRAR_RR1: TStringField;
    sqlCadastroORDEM_RR1: TIntegerField;
    sqlCadastroDESCRI_RR1: TStringField;
    sqlCadastroLOGIN_INC_RR1: TStringField;
    sqlCadastroDTA_INC_RR1: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_RR1: TStringField;
    sqlCadastroDTA_ALT_RR1: TSQLTimeStampField;
    sqlDesdoCOD_EMP_RR2: TIntegerField;
    sqlDesdoCOD_CRT_RR2: TStringField;
    sqlDesdoCOD_RR2: TStringField;
    sqlDesdoTIPOCAMPO_RR2: TStringField;
    sqlDesdoDESCRI_RR2: TStringField;
    sqlDesdoORDEM_RR2: TIntegerField;
    sqlDesdoPADRAO_RR2: TStringField;
    sqlDesdoLOGIN_INC_RR2: TStringField;
    sqlDesdoDTA_INC_RR2: TSQLTimeStampField;
    sqlDesdoLOGIN_ALT_RR2: TStringField;
    sqlDesdoDTA_ALT_RR2: TSQLTimeStampField;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
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
    procedure cdsCadastroAfterOpen(DataSet: TDataSet);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dspDesdoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure dspDesdoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure dspDesdoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspDesdoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure cdsDesdoAfterOpen(DataSet: TDataSet);
    procedure cdsDesdoNewRecord(DataSet: TDataSet);
    procedure cdsDesdoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClicaGrid;
  end;

var
  FCadRRCRT: TFCadRRCRT;
  Condicao : string;
  Erros, ultCRT, ultOCRT, ultDCR, ultODCR : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros;

{$R *.dfm}

procedure TFCadRRCRT.BtnAlterarClick(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadRRCRT);
  cdsCadastro.Edit;

  DBEdit1.SetFocus;
end;

procedure TFCadRRCRT.BtnAnteriorClick(Sender: TObject);
begin
  If cdsVis.Active Then cdsVis.Prior;
  ClicaGrid;
end;

procedure TFCadRRCRT.BtnCancelaClick(Sender: TObject);
begin
  desabilita(FCadRRCRT);

  if cdsDesdo.State in [dsEdit, dsInsert] then cdsDesdo.Cancel;
  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;

  if cdsDesdo.ChangeCount > 0 then cdsDesdo.CancelUpdates;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsCadastro.Close;
  cdsDesdo.Close;
end;

procedure TFCadRRCRT.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  PG.ActivePageIndex := 0;
  Erros := 0;

  if trim(DBEdit1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Código é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit1.SetFocus;
    Exit;
  end;

  if trim(DBEdit2.Text) = '' then begin
    dm.msg.MessageDlg('O campo Descrição é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit2.SetFocus;
    Exit;
  end;

  if cdsDesdo.IsEmpty then begin
    dm.msg.MessageDlg('É necessário cadastrar pelo menos um Desdobro.',mtError, [mbok], 0);
    DBGrid2.SetFocus;
    Exit;
  end;

  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if cdsDesdo.State in [dsEdit, dsInsert] then cdsDesdo.Post;
  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Post;

  if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);
  if cdsDesdo.ChangeCount > 0 then Erros := Erros + cdsDesdo.ApplyUpdates(-1);

  if Erros = 0 then dm.Conexao.Commit(TD)
  else begin
    dm.Conexao.Rollback(TD);
    exit;
  end;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlCadastro.Params.ParamValues['cod'] := sqlCadastro.Params.ParamValues['cod'];
  cdsCadastro.Open;

  cdsDesdo.Close;
  cdsDesdo.Open;

  Book := cdsVis.GetBookmark;
  if Condicao <> 'Alterando' then begin
    cdsVis.Close;
    cdsVis.Open;
  end
  else
  cdsVis.Refresh;

  if not cdsVis.IsEmpty then
   if Book <> Nil then
    if cdsVis.BookmarkValid(Book) then cdsVis.GotoBookmark(Book);

  Book := Nil;

  desabilita(FCadRRCRT);

  if Condicao = 'Alterando' then
    dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadRRCRT.BtnExcluirClick(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  Erros := 0;

  abilita(FCadRRCRT);
  dm.msg.DefaultButton := mbNo;
  if dm.msg.MessageDlg('Deseja Realmente Excluir o Registro ?',mtConfirmation ,[mbyes,mbno] ,0) = mryes then begin
    if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

    while not cdsDesdo.Eof do cdsDesdo.Delete;

    cdsCadastro.Delete;

    if cdsDesdo.ChangeCount > 0 then Erros := cdsDesdo.ApplyUpdates(-1);
    if cdsCadastro.ChangeCount > 0 then Erros := Erros + cdsCadastro.ApplyUpdates(-1);

    if Erros=0 then begin
      dm.Conexao.Commit(TD);
      cdsVis.Close;
      cdsVis.Open;
    end
    else dm.Conexao.RollBack(TD);

  end;
  desabilita(FCadRRCRT);
  cdsCadastro.Close;
  cdsDesdo.Close;
end;

procedure TFCadRRCRT.BtnNovoClick(Sender: TObject);
begin
  Condicao := 'Incluindo';
  abilita(FCadRRCRT);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := '0000';
  cdsCadastro.Open;

  cdsDesdo.Close;
  cdsDesdo.Open;

  cdsCadastro.Append;

  DBEdit1.SetFocus;
end;

procedure TFCadRRCRT.BtnPrimeiroClick(Sender: TObject);
begin
  If cdsVis.Active Then cdsVis.First;
  ClicaGrid;
end;

procedure TFCadRRCRT.BtnProximoClick(Sender: TObject);
begin
  If cdsVis.Active Then cdsVis.Next;
  ClicaGrid;
end;

procedure TFCadRRCRT.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFCadRRCRT.BtnUltimoClick(Sender: TObject);
begin
  If cdsVis.Active Then cdsVis.Last;
  ClicaGrid;
end;

procedure TFCadRRCRT.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadRRCRT.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13]) then key := #0;
end;

procedure TFCadRRCRT.DBGrid1CellClick(Column: TColumn);
begin
  ClicaGrid;
end;

procedure TFCadRRCRT.DBGrid1DblClick(Sender: TObject);
begin
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadRRCRT.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(Tdbgrid(Sender).Datasource.Dataset.RecNo) then begin
    Tdbgrid(Sender).Canvas.Font.Color  := ClBlack;
    Tdbgrid(Sender).Canvas.Brush.Color := $00C5DADA;
  end
  else begin
    Tdbgrid(Sender).Canvas.Font.Color  := ClBlack;
    Tdbgrid(Sender).Canvas.Brush.Color := $00D9ECEC;
  end;

  if (State = [GdSelected]) or (State = [GdFocused]) or (State = [GdSelected, GdFocused]) then begin
    TDBGRID(SENDER).Canvas.Brush.Color := $00D2E6D2;
    TDBGRID(SENDER).Canvas.Font.Color  := ClBlack;
  end;

  if PG.ActivePage <> tbVis then begin
    //pinta checkbox
    if Column.Field = cdsDesdo.FieldByName('PADRAO_RR2') then begin
      DBGrid2.Canvas.FillRect(Rect);
      ImageList1.Draw(DBGrid2.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
      if cdsDesdo.FieldByName('PADRAO_RR2').AsString = 'S' then
        ImageList1.Draw(DBGrid2.Canvas, Rect.Left + 10, Rect.Top + 1, 1)
      else
        ImageList1.Draw(DBGrid2.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
    end;
  end;

  TDBGRID(SENDER).DefaultDrawDataCell(Rect, column.field, state);
end;

procedure TFCadRRCRT.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsVis, dsVis, Column);
end;

procedure TFCadRRCRT.DBGrid2CellClick(Column: TColumn);
var codigo : string;
begin
  if Column.Field = cdsDesdo.FieldByName('PADRAO_RR2') then begin
    cdsDesdo.DisableControls;

    codigo := cdsDesdo.FieldByName('COD_RR2').AsString;
    cdsDesdo.First;
    while not cdsDesdo.Eof do begin
     cdsDesdo.Edit;
     cdsDesdo.FieldByName('PADRAO_RR2').AsString := 'N';
     cdsDesdo.Post;
     cdsDesdo.Next;
    end;
    if cdsDesdo.Locate('COD_RR2',codigo,[]) then begin
      cdsDesdo.Edit;
      cdsDesdo.FieldByName('PADRAO_RR2').AsString := 'S';
      cdsDesdo.Post;
    end;

    cdsDesdo.EnableControls;
  end;
end;

procedure TFCadRRCRT.DBGrid2ColEnter(Sender: TObject);
begin
  if DBGrid2.SelectedField = cdsDesdo.FieldByName('PADRAO_RR2') then
    DBGrid2.Options := DBGrid2.Options - [dgEditing]
  else
    DBGrid2.Options := DBGrid2.Options + [dgEditing];
end;

procedure TFCadRRCRT.DBGrid2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_f5 then
    if cdsCadastro.State in [dsInsert, dsEdit] then cdsDesdo.Delete;
end;

procedure TFCadRRCRT.DBGrid2TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsDesdo, dsDesdo, Column);
end;

procedure TFCadRRCRT.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CAD_CRT', SIA_Modulo, UpperCase(FCadRRCRT.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRRCRT.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    sqlCadastro.Params.ParamValues['cod'] := cdsCadastro.FieldByName('COD_RR1').NewValue;

    DeltaDS.FieldByName('LOGIN_INC_RR1').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RR1').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RR1').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RR1').NewValue   := DataBanco;
  end;
end;

procedure TFCadRRCRT.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CAD_CRT';
end;

procedure TFCadRRCRT.dspCadastroUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  Tratar_Erro(E.Message);
end;

procedure TFCadRRCRT.dspDesdoAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_CAD_DESDOCRT', SIA_Modulo, UpperCase(FCadRRCRT.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadRRCRT.dspDesdoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    DeltaDS.FieldByName('COD_CRT_RR2').NewValue := sqlCadastro.Params.ParamValues['cod'];

    DeltaDS.FieldByName('LOGIN_INC_RR2').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RR2').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RR2').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RR2').NewValue   := DataBanco;
  end;
end;

procedure TFCadRRCRT.dspDesdoGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_CAD_DESDOCRT';
end;

procedure TFCadRRCRT.dspDesdoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Tratar_Erro(E.Message);
end;

procedure TFCadRRCRT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fecha_todos_cds(FCadRRCRT);
  Action := caFree;
end;

procedure TFCadRRCRT.FormDestroy(Sender: TObject);
begin
  FCadRRCRT := Nil;
end;

procedure TFCadRRCRT.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadRRCRT.FormShow(Sender: TObject);
begin
  PG.ActivePageIndex  := 0;
  desabilita(FCadRRCRT);

  cdsVis.Close;
  sqlVis.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  cdsVis.Open;

  Condicao := '';
end;

procedure TFCadRRCRT.cdsCadastroAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_RR1) AS COD, MAX(ORDEM_RR1) AS ORDEM '+
                  'FROM RR_CAD_CRT '+
                  'WHERE COD_EMP_RR1 = '+ SIA_Empresa;
  qrx.Open;
  if qrx.FieldByName('COD').IsNull then ultCRT := 0
  else ultCRT := qrx.FieldByName('COD').AsInteger;

  if qrx.FieldByName('ORDEM').IsNull then ultOCRT := 0
  else ultOCRT := qrx.FieldByName('ORDEM').AsInteger;

  FreeAndNil(qrx);
end;

procedure TFCadRRCRT.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  cdsCadastro.FieldValues['COD_EMP_RR1'] := strtoint(SIA_Empresa);
  cdsCadastro.FieldValues['COD_RR1']     := lpad(inttostr(ultCRT + 1),'0',4);
  cdsCadastro.FieldValues['MOSTRAR_RR1'] := 'S';
  cdsCadastro.FieldValues['ORDEM_RR1']   := ultOCRT + 1;
  inc(ultCRT); inc(ultOCRT);
end;

procedure TFCadRRCRT.cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if UpdateKind = ukDelete then Action := raCancel
  else Action := raCorrect;
end;

procedure TFCadRRCRT.cdsDesdoAfterOpen(DataSet: TDataSet);
var qrx : TSQLQuery;
begin
  inherited;
  qrx := TSQLQuery.Create(Application.Owner);
  qrx.SQLConnection := dm.Conexao;
  qrx.SQL.Text := 'SELECT MAX(COD_RR2) AS COD, MAX(ORDEM_RR2) AS ORDEM '+
                  'FROM RR_CAD_DESDOCRT '+
                  'WHERE COD_EMP_RR2 = '+ SIA_Empresa +
                   ' AND COD_CRT_RR2 = '+''''+ vartostr(sqlCadastro.Params.ParamValues['cod']) +'''';
  qrx.Open;
  if qrx.FieldByName('COD').IsNull then ultDCR := 0
  else ultDCR := qrx.FieldByName('COD').AsInteger;

  if qrx.FieldByName('ORDEM').IsNull then ultODCR := 0
  else ultODCR := qrx.FieldByName('ORDEM').AsInteger;

  FreeAndNil(qrx);
end;

procedure TFCadRRCRT.cdsDesdoNewRecord(DataSet: TDataSet);
begin
  cdsDesdo.FieldValues['COD_EMP_RR2']   := strtoint(SIA_Empresa);
  cdsDesdo.FieldValues['COD_CRT_RR2']   := lpad(inttostr(ultCRT),'0',4);
  cdsDesdo.FieldValues['COD_RR2']       := lpad(inttostr(ultDCR + 1),'0',4);
  cdsDesdo.FieldValues['TIPOCAMPO_RR2'] := 'CARACTER';
  cdsDesdo.FieldValues['PADRAO_RR2']    := 'N';
  cdsDesdo.FieldValues['ORDEM_RR2']     := ultODCR + 1;
  inc(ultDCR); inc(ultODCR);
end;

procedure TFCadRRCRT.cdsDesdoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if UpdateKind = ukDelete then Action := raCancel
  else Action := raCorrect;
end;

procedure TFCadRRCRT.ClicaGrid;
begin
  if cdsVis.IsEmpty then exit;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['COD_EMP_RR1'];
  sqlCadastro.Params.ParamValues['cod']     := cdsVis.FieldValues['COD_RR1'];
  cdsCadastro.Open;

  cdsDesdo.Close;
  cdsDesdo.Open;
end;

end.
