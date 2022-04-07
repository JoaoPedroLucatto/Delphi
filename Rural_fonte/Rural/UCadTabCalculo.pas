unit UCadTabCalculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, SqlExpr, DB, DBClient, Provider, EMsgDlg,
  RzButton, RzPanel, Grids, DBGrids, StdCtrls, RzBckgnd, ExtCtrls, RzTabs,
  EDBCkBox, DBCtrls, Mask, Buttons;

type
  TFCadTabCalculo = class(TFGenerico)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    btnRec: TSpeedButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox1: TEvDBCheckBox;
    sqlCadastroCOD_EMP_RCA: TIntegerField;
    sqlCadastroCOD_REC_RCA: TIntegerField;
    sqlCadastroCOD_DESDOREC_RCA: TIntegerField;
    sqlCadastroABRE_GUIA_RCA: TStringField;
    sqlCadastroDESCRI_RCA: TStringField;
    sqlCadastroTIP_CALC_RCA: TStringField;
    sqlCadastroVALOR_RCA: TFloatField;
    sqlCadastroTIP_VALOR_RCA: TStringField;
    sqlCadastroLINF_RCA: TFloatField;
    sqlCadastroLSUP_RCA: TFloatField;
    sqlCadastroCALC_RCA: TStringField;
    sqlCadastroHIS_GUIA_RCA: TMemoField;
    sqlCadastroDIVIDA_RCA: TStringField;
    sqlCadastroEXCED_RCA: TFloatField;
    sqlCadastroLOGIN_INC_RCA: TStringField;
    sqlCadastroDTA_INC_RCA: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_RCA: TStringField;
    sqlCadastroDTA_ALT_RCA: TSQLTimeStampField;
    sqlCadastroDESCRI_REC: TStringField;
    PCons: TRzPanel;
    Label55: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    msk4: TMaskEdit;
    btnPesquisa: TBitBtn;
    msk3: TMaskEdit;
    cbTpCalc: TComboBox;
    cbTpValor: TComboBox;
    cdsCadastroCOD_EMP_RCA: TIntegerField;
    cdsCadastroCOD_REC_RCA: TIntegerField;
    cdsCadastroCOD_DESDOREC_RCA: TIntegerField;
    cdsCadastroABRE_GUIA_RCA: TStringField;
    cdsCadastroDESCRI_RCA: TStringField;
    cdsCadastroTIP_CALC_RCA: TStringField;
    cdsCadastroVALOR_RCA: TFloatField;
    cdsCadastroTIP_VALOR_RCA: TStringField;
    cdsCadastroLINF_RCA: TFloatField;
    cdsCadastroLSUP_RCA: TFloatField;
    cdsCadastroCALC_RCA: TStringField;
    cdsCadastroHIS_GUIA_RCA: TMemoField;
    cdsCadastroDIVIDA_RCA: TStringField;
    cdsCadastroEXCED_RCA: TFloatField;
    cdsCadastroLOGIN_INC_RCA: TStringField;
    cdsCadastroDTA_INC_RCA: TSQLTimeStampField;
    cdsCadastroLOGIN_ALT_RCA: TStringField;
    cdsCadastroDTA_ALT_RCA: TSQLTimeStampField;
    cdsCadastroDESCRI_REC: TStringField;
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
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnRecClick(Sender: TObject);
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
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NovoAtend : String;
    procedure ClicaGrid;
  end;

var
  FCadTabCalculo: TFCadTabCalculo;
  SQL, Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros, URelTabCalculo, UClasse_PesqPrin;

{$R *.dfm}

procedure TFCadTabCalculo.ClicaGrid;
begin
  if cdsVis.IsEmpty then exit;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['cod_emp_rca'];
  sqlCadastro.Params.ParamValues['cod']     := cdsVis.FieldValues['COD_REC_RCA'];
  sqlCadastro.Params.ParamValues['cod1']    := cdsVis.FieldValues['COD_DESDOREC_RCA'];
  cdsCadastro.Open;
end;

procedure TFCadTabCalculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadTabCalculo.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := Nil;
end;

procedure TFCadTabCalculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
   if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadTabCalculo.FormShow(Sender: TObject);
begin
  inherited;
  PG.ActivePageIndex  := 0;
  desabilita(FCadTabCalculo);
  
  SQL := 'SELECT RR_CALCULO.*, GR_RECEITA.DESCRI_REC '+
         'FROM RR_CALCULO '+
         'LEFT JOIN GR_RECEITA ON GR_RECEITA.COD_EMP_REC = RR_CALCULO.COD_EMP_RCA '+
                             'AND GR_RECEITA.COD_REC = RR_CALCULO.COD_REC_RCA '+
         'WHERE RR_CALCULO.COD_EMP_RCA = '+ SIA_Empresa;

  cdsVis.Close;
  sqlVis.CommandText := SQL;
  cdsVis.Open;

  Condicao := '';

  if (NovoAtend = 'NOVO') and (BtnNovo.Visible) then
    BtnNovo.Click;
end;

procedure TFCadTabCalculo.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFCadTabCalculo.BtnNovoClick(Sender: TObject);
begin
  inherited;
  Condicao := 'Incluindo';
  abilita(FCadTabCalculo);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := -1;
  sqlCadastro.Params.ParamValues['cod1']    := -1;  
  cdsCadastro.Open;
  cdsCadastro.Append;

  DBEdit1.SetFocus;
end;

procedure TFCadTabCalculo.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;

  Condicao := 'Alterando';
  abilita(FCadTabCalculo);
  cdsCadastro.Edit;

  DBEdit1.SetFocus;
end;

procedure TFCadTabCalculo.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  abilita(FCadTabCalculo);
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
  desabilita(FCadTabCalculo);
  cdsCadastro.Close;
end;

procedure TFCadTabCalculo.btnFirstClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadTabCalculo.BtnImprimirClick(Sender: TObject);
begin
  Application.CreateForm(TFRelTabCalculo, FRelTabCalculo);
  SIA_Aplicacao := 'FRelTabCalculo';
  If PG.ActivePageIndex = 0 Then Begin
    FRelTabCalculo.CODIGO := CdsCadastro.FieldByName('COD_REC_RCA').AsString;
    FRelTabCalculo.CODIGO1 := CdsCadastro.FieldByName('COD_DESDOREC_RCA').AsString;
  End;
  FRelTabCalculo.ShowModal;
  FRelTabCalculo.Free;
end;

procedure TFCadTabCalculo.btnLastClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadTabCalculo.btnNextClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadTabCalculo.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadTabCalculo);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsCadastro.Close;
end;

procedure TFCadTabCalculo.BtnConfirmaClick(Sender: TObject);
var Book : Pointer;
begin
  inherited;
  Erros := 0;
  PG.ActivePageIndex := 0;

  if trim(DBEdit1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Receita é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit1.SetFocus;
    Exit;
  end;

  if trim(DBEdit3.Text) = '' then begin
    dm.msg.MessageDlg('O campo Desdobramento é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit3.SetFocus;
    Exit;
  end;

  if strtoint(DBEdit3.Text) <= 0 then begin
    dm.msg.MessageDlg('O campo Desdobramento deve ser maior que Zero.',mtError, [mbok], 0);
    DBEdit3.SetFocus;
    Exit;
  end;

  if Condicao = 'Incluindo' then begin
    QVerCod.Close;
    QVerCod.SQL.Text := 'Select count(*) as TOT '+
                        'from RR_CALCULO '+
                        'WHERE COD_EMP_RCA = '+ SIA_Empresa +
                         ' AND COD_REC_RCA = '+ trim(DBEdit1.text) +
                         ' AND COD_DESDOREC_RCA = '+ trim(DBEdit3.text);
    QVerCod.Open;
    if QVerCod.FieldByName('TOT').AsInteger <> 0 Then begin
      showmessage('ATENÇÃO : Este Código já consta no Banco de Dados !');
      DBEdit3.SetFocus;
      exit;
    end;
  end;

  if trim(DBComboBox1.Text) = '' then begin
    dm.msg.MessageDlg('O campo Tipo de Cálculo é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBComboBox1.SetFocus;
    DBComboBox1.DroppedDown;
    Exit;
  end;

  if trim(DBComboBox2.Text) = '' then begin
    dm.msg.MessageDlg('O campo Tipo de Valor é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBComboBox2.SetFocus;
    DBComboBox2.DroppedDown;
    Exit;
  end;

  if trim(DBEdit5.Text) = '' then begin
    dm.msg.MessageDlg('O campo Valor é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
    DBEdit5.SetFocus;
    Exit;
  end;

  if strtofloat(DBEdit5.Text) <= 0 then begin
    dm.msg.MessageDlg('O campo Valor deve ser Positivo !!!',mtError, [mbok], 0);
    DBEdit5.SetFocus;
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
  sqlCadastro.Params.ParamValues['cod1']    := sqlCadastro.Params.ParamValues['cod1'];  
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

  desabilita(FCadTabCalculo);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  if BtnNovo.Visible then BtnNovo.SetFocus;
end;

procedure TFCadTabCalculo.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadTabCalculo.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
  if BtnAlterar.Visible then BtnAlterar.Click;
end;

procedure TFCadTabCalculo.btnPesquisaClick(Sender: TObject);
var onde : string;
begin
  inherited;

  onde := '';
  If trim(msk1.Text) <> ''  Then onde := onde + ' AND RR_CALCULO.COD_REC_RCA = '+ trim(msk1.Text);
  If trim(msk2.Text) <> ''  Then onde := onde + ' AND GR_RECEITA.DESCRI_REC LIKE '+''''+ trim(msk2.Text) +'%''';
  If trim(msk3.Text) <> ''  Then onde := onde + ' AND RR_CALCULO.COD_DESDOREC_RCA = '+ trim(msk3.Text);
  If trim(msk4.Text) <> ''  Then onde := onde + ' AND RR_CALCULO.DESCRI_RCA LIKE '+''''+ trim(msk4.Text) +'%''';
  If trim(cbTpCalc.Text) <> ''  Then onde := onde + ' AND RR_CALCULO.TIP_CALC_RCA = '+''''+ trim(cbTpCalc.Text) +'''';
  If trim(cbTpValor.Text) <> '' Then onde := onde + ' AND RR_CALCULO.TIP_VALOR_RCA = '+''''+ trim(cbTpValor.Text) +'''';

  cdsVis.Close;
  cdsVis.PacketRecords := -1;
  sqlVis.CommandText := SQL + onde;
  cdsVis.PacketRecords := 100;
  cdsVis.Open;

  DBGrid1.SetFocus;
end;

procedure TFCadTabCalculo.btnPriorClick(Sender: TObject);
begin
  inherited;
  ClicaGrid;
end;

procedure TFCadTabCalculo.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadTabCalculo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then key := #0;
end;

procedure TFCadTabCalculo.DBEdit1Exit(Sender: TObject);
var Pesq : TPesq_Receita;
begin
 inherited;
 if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;
 If trim(TDBedit(sender).Text) <> '' Then begin
   Pesq := TPesq_Receita.Create;
   Pesq.PesquisaReceita(trim(TDBedit(sender).Text));
   cdsCadastro.FieldByName('COD_REC_RCA').Value := Pesq.Codigo;
   cdsCadastro.FieldByName('DESCRI_REC').Value  := Pesq.Descri;
   FreeAndNil(Pesq);
 end;
end;

procedure TFCadTabCalculo.btnRecClick(Sender: TObject);
var Pesq : TPesq_Receita;
begin
  inherited;
  Pesq := TPesq_Receita.Create;
  if Pesq.BotaoReceita then begin
    cdsCadastro.FieldByName('COD_REC_RCA').Value := Pesq.Codigo;
    cdsCadastro.FieldByName('DESCRI_REC').Value  := Pesq.Descri;
  end;
  FreeAndNil(Pesq);
end;

procedure TFCadTabCalculo.dspCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadTabCalculo.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_CALCULO';
end;

procedure TFCadTabCalculo.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  inherited;
  if UpdateKind = ukInsert then begin
    sqlCadastro.Params.ParamValues['cod']  := DeltaDS.FieldByName('COD_REC_RCA').NewValue;
    sqlCadastro.Params.ParamValues['cod1'] := DeltaDS.FieldByName('COD_DESDOREC_RCA').NewValue;

    DeltaDS.FieldByName('LOGIN_INC_RCA').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_INC_RCA').NewValue   := DataBanco;
  end;

  if UpdateKind = ukModify then begin
    DeltaDS.FieldByName('LOGIN_ALT_RCA').NewValue := SIA_Usuario;
    DeltaDS.FieldByName('DTA_ALT_RCA').NewValue   := DataBanco;
  end;
end;

procedure TFCadTabCalculo.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_CALCULO',SIA_Modulo,UpperCase(FCadTabCalculo.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadTabCalculo.cdsCadastroReconcileError( DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
   if UpdateKind = ukDelete then Action := raCancel
   else Action := raCorrect;
end;

procedure TFCadTabCalculo.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastro.FieldValues['cod_emp_rca']      := strtoint(SIA_Empresa);
  cdsCadastro.FieldValues['COD_REC_RCA']      := -1;
  cdsCadastro.FieldValues['COD_DESDOREC_RCA'] := 1;
  cdsCadastro.FieldValues['DIVIDA_RCA']       := 'S';
end;

end.
