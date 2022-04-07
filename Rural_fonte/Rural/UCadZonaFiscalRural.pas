unit UCadZonaFiscalRural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, RzBckgnd, ExtCtrls, RzTabs, RzButton, RzPanel, FMTBcd, DB,
  DBClient, Provider, SqlExpr, EMsgDlg;

type
  TFCadZonaFiscalRural = class(TForm)
    RzPanel1: TRzPanel;
    BtnNovo: TRzBitBtn;
    BtnAlterar: TRzBitBtn;
    BtnExcluir: TRzBitBtn;
    PG: TRzPageControl;
    tbCad: TRzTabSheet;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    Label2: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label10: TLabel;
    DBGrid4: TDBGrid;
    Panel10: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    tbVis: TRzTabSheet;
    Panel2: TPanel;
    RzBackground2: TRzBackground;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    RzPanel3: TRzPanel;
    Label15: TLabel;
    Label16: TLabel;
    btnPesquisa: TBitBtn;
    mkZona: TMaskEdit;
    mkDescricao: TMaskEdit;
    RzPanel2: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnCancela: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnPrimeiro: TRzBitBtn;
    BtnAnterior: TRzBitBtn;
    BtnProximo: TRzBitBtn;
    BtnUltimo: TRzBitBtn;
    sqlCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    cdsCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    sqlValor: TSQLDataSet;
    dspValor: TDataSetProvider;
    cdsValor: TClientDataSet;
    sqlCadastroCOD_EMP_RZN: TIntegerField;
    sqlCadastroCOD_RZN: TIntegerField;
    sqlCadastroDESCR_RZN: TStringField;
    sqlCadastroLOGIN_INC_RZN: TStringField;
    sqlCadastroDTA_INC_RZN: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_RZN: TStringField;
    sqlCadastroDTA_ALT_RZN: TSQLTimeStampField;
    cdsCadastroCOD_EMP_RZN: TIntegerField;
    cdsCadastroCOD_RZN: TIntegerField;
    cdsCadastroDESCR_RZN: TStringField;
    cdsCadastroLOGIN_INC_RZN: TStringField;
    cdsCadastroDTA_INC_RZN: TSQLTimeStampField;
    cdsCadastroLOGIN_ALT_RZN: TStringField;
    cdsCadastroDTA_ALT_RZN: TSQLTimeStampField;
    sqlValorCOD_EMP_RZV: TIntegerField;
    sqlValorCOD_RZN_RZV: TIntegerField;
    sqlValorEXERCICIO_RZV: TIntegerField;
    sqlValorVALOR_RZV: TFloatField;
    sqlValorLOGIN_INC_RZV: TStringField;
    sqlValorDTA_INC_RZV: TSQLTimeStampField;
    sqlValorLOGIN_ALT_RZV: TStringField;
    sqlValorDTA_ALT_RZV: TSQLTimeStampField;
    cdsValorCOD_EMP_RZV: TIntegerField;
    cdsValorCOD_RZN_RZV: TIntegerField;
    cdsValorEXERCICIO_RZV: TIntegerField;
    cdsValorVALOR_RZV: TFloatField;
    cdsValorLOGIN_INC_RZV: TStringField;
    cdsValorDTA_INC_RZV: TSQLTimeStampField;
    cdsValorLOGIN_ALT_RZV: TStringField;
    cdsValorDTA_ALT_RZV: TSQLTimeStampField;
    Panel13: TPanel;
    Panel6: TPanel;
    dsValor: TDataSource;
    sqlVis: TSQLDataSet;
    dspVis: TDataSetProvider;
    cdsVis: TClientDataSet;
    dsVis: TDataSource;
    procedure BtnSairClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspCadastroUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
    procedure dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure dspValorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
    procedure dspValorBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspValorAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure cdsValorNewRecord(DataSet: TDataSet);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure DBGrid4TitleClick(Column: TColumn);
  private
    procedure ClicaGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadZonaFiscalRural: TFCadZonaFiscalRural;
  Condicao, SQL : string;
  Erros: integer;

implementation

uses UDM, funcoes, UPrin, TrataErros;

{$R *.dfm}

procedure TFCadZonaFiscalRural.BtnAlterarClick(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadZonaFiscalRural);
  cdsCadastro.Edit;

  DBEdit1.SetFocus;
end;

procedure TFCadZonaFiscalRural.BtnAnteriorClick(Sender: TObject);
begin
  if cdsVis.Active then cdsVis.Prior;
  ClicaGrid;
end;

procedure TFCadZonaFiscalRural.BtnCancelaClick(Sender: TObject);
begin
  desabilita(FCadZonaFiscalRural);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if cdsValor.State in [dsEdit, dsInsert] then cdsValor.Cancel;
  if cdsValor.ChangeCount > 0 then cdsValor.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsValor.Close;
  cdsCadastro.Close;
end;

procedure TFCadZonaFiscalRural.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  PG.ActivePageIndex := 0;

  if trim(DBEdit1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Código é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit1.SetFocus;
    Exit;
  end;

  if trim(DBEdit10.Text) = '' then begin
    dm.msg.MessageDlg('O campo Descrição é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit10.SetFocus;
    Exit;
  end;

  if cdsValor.IsEmpty then begin
    dm.msg.MessageDlg('É necessário Relacionar pelo menos 1 Valor!',mtError, [mbok], 0);
    DBGrid4.SetFocus;
    Exit;
  end;
  
  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Post;
  if cdsValor.State in [dsEdit, dsInsert] then cdsValor.Post;

  if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);
  if cdsValor.ChangeCount > 0 then Erros := Erros + cdsValor.ApplyUpdates(-1);

  if Erros = 0 then dm.Conexao.Commit(TD)
  else begin
    dm.Conexao.Rollback(TD);
    exit;
  end;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := sqlCadastro.Params.ParamValues['empresa'];
  sqlCadastro.Params.ParamValues['cod']     := sqlCadastro.Params.ParamValues['cod'];
  cdsCadastro.Open;

  cdsValor.Close;
  cdsValor.Open;

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

  desabilita(FCadZonaFiscalRural);

  if Condicao = 'Alterando' then
    dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadZonaFiscalRural.BtnExcluirClick(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadZonaFiscalRural);
  dm.msg.DefaultButton := mbNo;
  if dm.msg.MessageDlg('Deseja Realmente Excluir o Registro ?',mtConfirmation ,[mbyes,mbno] ,0) = mryes then begin
    if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

    cdsValor.First;
    while not cdsValor.Eof do cdsValor.Delete;

    cdsCadastro.Delete;

    if cdsValor.ChangeCount > 0 then Erros := cdsValor.ApplyUpdates(-1);
    if cdsCadastro.ChangeCount > 0 then Erros := Erros + cdsCadastro.ApplyUpdates(-1);

    if Erros=0 then begin
     dm.Conexao.Commit(TD);
     cdsVis.Close;
     cdsVis.Open;
    end
    else dm.Conexao.RollBack(TD);

  end;
  desabilita(FCadZonaFiscalRural);
  cdsCadastro.Close;
  cdsValor.Close;
end;

procedure TFCadZonaFiscalRural.BtnNovoClick(Sender: TObject);
begin
  Condicao := 'Incluindo';
  abilita(FCadZonaFiscalRural);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := -1;
  cdsCadastro.Open;

  cdsValor.Close;
  cdsValor.Open;

  cdsCadastro.Append;

  DBEdit1.SetFocus;
end;

procedure TFCadZonaFiscalRural.btnPesquisaClick(Sender: TObject);
var
  filtro : string;
begin
  if (mkZona.Text <> '') then filtro := filtro + ' AND COD_RZN = ' + mkZona.Text;
  if (mkDescricao.Text <> '') then filtro := filtro + ' AND DESCR_RZN like '  + QuotedStr(mkDescricao.Text + '%');

  cdsVis.Close;
  sqlVis.CommandText := SQL + filtro;
  sqlVis.ParamByName('empresa').AsString := SIA_empresa;
  cdsVis.Open;
end;

procedure TFCadZonaFiscalRural.BtnPrimeiroClick(Sender: TObject);
begin
  if cdsVis.Active then cdsVis.First;
  ClicaGrid;
end;

procedure TFCadZonaFiscalRural.BtnProximoClick(Sender: TObject);
begin
  if cdsVis.Active then cdsVis.Next;
  ClicaGrid;
end;

procedure TFCadZonaFiscalRural.BtnSairClick(Sender: TObject);
begin
  Close;
  if FormStyle = fsMDIChild then FPrin.AbreMenu; 
end;

procedure TFCadZonaFiscalRural.BtnUltimoClick(Sender: TObject);
begin
  if cdsVis.Active then cdsVis.Last;
  ClicaGrid;
end;

procedure TFCadZonaFiscalRural.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  cdsCadastro.FieldByName('COD_EMP_RZN').AsString := SIA_Empresa;
end;

procedure TFCadZonaFiscalRural.cdsCadastroReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if UpdateKind = ukDelete then Action := raCancel
  else Action := raCorrect;
end;

procedure TFCadZonaFiscalRural.cdsValorNewRecord(DataSet: TDataSet);
begin
  cdsValor.FieldByName('COD_EMP_RZV').AsString := sqlCadastro.Params.ParamValues['empresa'];
  cdsValor.FieldByName('COD_RZN_RZV').AsString := sqlCadastro.Params.ParamValues['cod'];
end;

procedure TFCadZonaFiscalRural.DBGrid1CellClick(Column: TColumn);
begin
  ClicaGrid;
end;

procedure TFCadZonaFiscalRural.DBGrid1DblClick(Sender: TObject);
begin
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadZonaFiscalRural.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

  TDBGRID(SENDER).DefaultDrawDataCell(Rect, column.field, state);
end;

procedure TFCadZonaFiscalRural.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsVis, dsVis, Column);
end;

procedure TFCadZonaFiscalRural.DBGrid4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if cdsValor.IsEmpty then exit;
  
  if key = vk_f5 then
    if (cdsCadastro.State in [dsInsert, dsEdit]) then cdsValor.Delete;
end;

procedure TFCadZonaFiscalRural.DBGrid4TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsValor, dsValor, Column);
end;

procedure TFCadZonaFiscalRural.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_ZONAFISCAL', SIA_Modulo, UpperCase(FCadZonaFiscalRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadZonaFiscalRural.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    sqlCadastro.Params.ParamValues['empresa'] := DeltaDS.FieldByName('COD_EMP_RZN').NewValue;
    sqlCadastro.Params.ParamValues['cod']     := DeltaDS.FieldByName('COD_RZN').NewValue;

    DeltaDS.FieldByName('LOGIN_INC_RZN').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RZN').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RZN').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RZN').NewValue   := DataBanco;
  end;
end;

procedure TFCadZonaFiscalRural.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_ZONAFISCAL';
end;

procedure TFCadZonaFiscalRural.dspCadastroUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  Tratar_erro(e.Message);
end;

procedure TFCadZonaFiscalRural.dspValorAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, 'RR_ZONA_VALOR', SIA_Modulo, UpperCase(FCadZonaFiscalRural.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadZonaFiscalRural.dspValorBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then begin
    DeltaDS.FieldByName('COD_EMP_RZV').NewValue := sqlCadastro.Params.ParamValues['empresa'];
    DeltaDS.FieldByName('COD_RZN_RZV').NewValue := sqlCadastro.Params.ParamValues['cod'];

    DeltaDS.FieldByName('LOGIN_INC_RZV').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RZV').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RZV').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RZV').NewValue   := DataBanco;
  end;
end;

procedure TFCadZonaFiscalRural.dspValorGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_ZONA_VALOR';
end;

procedure TFCadZonaFiscalRural.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fecha_todos_cds(FCadZonaFiscalRural);
  Action := caFree;
end;

procedure TFCadZonaFiscalRural.FormDestroy(Sender: TObject);
begin
  FCadZonaFiscalRural := Nil;
end;

procedure TFCadZonaFiscalRural.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadZonaFiscalRural.FormShow(Sender: TObject);
begin
  SQL := sqlVis.CommandText;

  PG.ActivePageIndex  := 0;
  desabilita(FCadZonaFiscalRural);

  cdsVis.Close;
  sqlVis.CommandText := SQL;
  sqlVis.ParamByName('empresa').AsString := SIA_Empresa;
  cdsVis.Open;

  Condicao := '';
end;

procedure TFCadZonaFiscalRural.ClicaGrid;
begin
  cdsCadastro.Close;
  sqlCadastro.ParamByName('empresa').AsInteger := cdsVis.FieldByName('COD_EMP_RZN').AsInteger;
  sqlCadastro.ParamByName('cod').AsInteger := cdsVis.FieldByName('COD_RZN').AsInteger;
  cdsCadastro.Open;

  cdsValor.Close;
  cdsValor.Open;
end;

end.
