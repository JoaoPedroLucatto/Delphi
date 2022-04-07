unit UCadConfCalc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGenerico, FMTBcd, EDBCkBox, StdCtrls, DBCtrls, SqlExpr, DB,
  DBClient, Provider, EMsgDlg, RzButton, RzPanel, Grids, DBGrids, RzBckgnd,
  ExtCtrls, RzTabs, Buttons, Mask, EDBNum;

type
  TFCadConfCalc = class(TFGenerico)
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    EvDBCheckBox1: TEvDBCheckBox;
    sqlCadastroCOD_EMP_RCF: TIntegerField;
    sqlCadastroCOD_RCF: TIntegerField;
    sqlCadastroV01_RCF: TStringField;
    sqlCadastroV02_RCF: TStringField;
    sqlCadastroV03_RCF: TStringField;
    sqlCadastroV04_RCF: TStringField;
    sqlCadastroV05_RCF: TStringField;
    sqlCadastroV06_RCF: TStringField;
    sqlCadastroV07_RCF: TStringField;
    sqlCadastroV08_RCF: TStringField;
    sqlCadastroV09_RCF: TStringField;
    sqlCadastroV10_RCF: TStringField;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label25: TLabel;
    DBEdit8: TDBEdit;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    GroupBox4: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    sqlCob: TSQLDataSet;
    sqlCobCOD_EMP_COB: TIntegerField;
    sqlCobCOD_COB: TIntegerField;
    sqlCobPERIODO_COB: TIntegerField;
    sqlCobDESCRI_COB: TStringField;
    sqlCobNRO_LEI_COB: TStringField;
    sqlCobLOGIN_INC_COB: TStringField;
    sqlCobDTA_INC_COB: TSQLTimeStampField;
    sqlCobLOGIN_ALT_COB: TStringField;
    sqlCobDTA_ALT_COB: TSQLTimeStampField;
    sqlCobSORTEIO_COB: TStringField;
    dspCob: TDataSetProvider;
    cdsCob: TClientDataSet;
    dsCob: TDataSource;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EvDBCheckBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure dspCadastroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: WideString);
    procedure dspCadastroAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadConfCalc: TFCadConfCalc;
  Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros;

{$R *.dfm}

procedure TFCadConfCalc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  fecha_todos_cds(TForm(Sender));
  Action := caFree;
end;

procedure TFCadConfCalc.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := Nil;
end;

procedure TFCadConfCalc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
   if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadConfCalc.FormShow(Sender: TObject);
begin
  desabilita(FCadConfCalc);
  Condicao := '';

  BtnNovo.Visible    := False;
  BtnExcluir.Visible := False;

  cdsCob.Close;
  sqlCob.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
  cdsCob.Open;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamByName('cod').AsInteger := 1;
  cdsCadastro.Open;
  if cdsCadastro.IsEmpty then begin
    if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);
    cdsCadastro.Append;
    cdsCadastro.FieldByName('COD_EMP_RCF').AsInteger := strtoint(SIA_Empresa);
    cdsCadastro.FieldByName('COD_RCF').AsInteger := 1;
    cdsCadastro.Post;
    if cdsCadastro.ApplyUpdates(-1) = 0 then dm.Conexao.Commit(TD)
    else dm.Conexao.Rollback(TD);

    cdsCadastro.Close;
    sqlCadastro.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
    sqlCadastro.Params.ParamByName('cod').AsInteger := 1;
    cdsCadastro.Open;
  end;
end;

procedure TFCadConfCalc.EvDBCheckBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadConfCalc.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFCadConfCalc.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastro.FieldValues['V03_RCF'] := '11 - Informado'; //Cálculo do Valor Venal
  cdsCadastro.FieldValues['V05_RCF'] := 1; //Alqueire
  cdsCadastro.FieldValues['V06_RCF'] := 1; //Hectare
  cdsCadastro.FieldValues['V04_RCF'] := 1; //Pontos
  cdsCadastro.FieldValues['V08_RCF'] := 1; //Indice
  cdsCadastro.FieldValues['V09_RCF'] := 2.42; //1 Alqueira = Hectare
end;

procedure TFCadConfCalc.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if cdsCadastro.IsEmpty then exit;

  Condicao := 'Alterando';
  abilita(FCadConfCalc);
  cdsCadastro.Edit;
  DBComboBox1.SetFocus;
end;

procedure TFCadConfCalc.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  desabilita(FCadConfCalc);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);
end;

procedure TFCadConfCalc.BtnConfirmaClick(Sender: TObject);
begin
  inherited;
  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Post;
  if cdsCadastro.ChangeCount > 0 then Erros := cdsCadastro.ApplyUpdates(-1);

  if Erros = 0 then dm.Conexao.Commit(TD)
  else begin
    dm.Conexao.Rollback(TD);
    exit;
  end;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamByName('empresa').AsInteger := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamByName('cod').AsInteger     := 1;
  cdsCadastro.Open;

  desabilita(FCadConfCalc);

  if Condicao = 'Alterando' then
   dm.msg.MessageDlg('Alteração concluida!',mtInformation,[mbok],0);

  BtnAlterar.SetFocus;
end;

procedure TFCadConfCalc.dspCadastroUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  inherited;
  Tratar_Erro(E.Message);
end;

procedure TFCadConfCalc.dspCadastroGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: WideString);
begin
  inherited;
  TableName := 'RR_CONFIGURACOES';
end;

procedure TFCadConfCalc.dspCadastroAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  inherited;
  dm.Sia_Log(SIA_Usuario,'RR_CONFIGURACOES', SIA_Modulo, UpperCase(FCadConfCalc.Caption), DeltaDS, UpdateKind);
end;

procedure TFCadConfCalc.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9', #8, #13, ',', '.']) then key := #0;
  if key = '.' then key := ',';
end;

end.
