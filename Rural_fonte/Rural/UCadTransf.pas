unit UCadTransf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, EMsgDlg, SqlExpr, Provider, DBClient, RzButton,
  RzPanel, StdCtrls, DBCtrls, Mask, Buttons, Grids, DBGrids, RzBckgnd,
  ExtCtrls, RzTabs;

type
  TFCadTransf = class(TForm)
    PG: TRzPageControl;
    tbCad: TRzTabSheet;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    Label2: TLabel;
    DBText1: TDBText;
    tbVis: TRzTabSheet;
    Panel2: TPanel;
    RzBackground2: TRzBackground;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    cdsVis: TClientDataSet;
    dspVis: TDataSetProvider;
    dsVis: TDataSource;
    sqlVis: TSQLDataSet;
    sqlCadastro: TSQLDataSet;
    dspCadastro: TDataSetProvider;
    cdsCadastro: TClientDataSet;
    dsCadastro: TDataSource;
    msk3: TRzPanel;
    Label55: TLabel;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    Label3: TLabel;
    cbSTS: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    btnPropAntigo: TSpeedButton;
    btnPropNovo: TSpeedButton;
    DBText3: TDBText;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    RzPanel1: TRzPanel;
    BtnNovo: TRzBitBtn;
    BtnExcluir: TRzBitBtn;
    BtnImprimir: TRzBitBtn;
    RzPanel2: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnCancela: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnPrimeiro: TRzBitBtn;
    BtnAnterior: TRzBitBtn;
    BtnProximo: TRzBitBtn;
    BtnUltimo: TRzBitBtn;
    btnPesquisa: TBitBtn;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    sqlCadastroCOD_EMP_RTP: TIntegerField;
    sqlCadastroCOD_RTP: TIntegerField;
    sqlCadastroCOD_RRR_ANT_RTP: TStringField;
    sqlCadastroSTATUS_RTP: TStringField;
    sqlCadastroMOTIVO_RTP: TStringField;
    sqlCadastroOBS_RTP: TMemoField;
    sqlCadastroCOD_CNTV_RTP: TStringField;
    sqlCadastroDTA_TRANSF_RTP: TDateField;
    sqlCadastroDTA_CANCELA_RTP: TDateField;
    sqlCadastroCOD_CNTN_RTP: TStringField;
    sqlCadastroLOGIN_INC_RTP: TStringField;
    sqlCadastroDTA_INC_RTP: TSQLTimeStampField;
    sqlCadastroLOGIN_ALT_RTP: TStringField;
    sqlCadastroDTA_ALT_RTP: TSQLTimeStampField;
    sqlCadastroCODCNTNOVO: TStringField;
    sqlCadastroNOMENOVO: TStringField;
    sqlCadastroCODCNTVELHO: TStringField;
    sqlCadastroNOMEVELHO: TStringField;
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnPropAntigoClick(Sender: TObject);
    procedure btnPropNovoClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure dspCadastroBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure dspCadastroUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspCadastroAfterUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnImprimirClick(Sender: TObject);
    procedure dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
    CODRURAL : string;
     function Pesquisa(ini, fim : string) : boolean;
    procedure ClicaGrid;
  end;

var
  FCadTransf: TFCadTransf;
  Condicao : string;
  Erros : integer;

implementation

uses UDM, UPrin, Funcoes, TrataErros, URelTransfProp, UClasse_PesqRur,
     UClasse_PesqPrin;

     //URelTransfProp;

{$R *.dfm}

function TFCadTransf.Pesquisa(ini, fim : string) : boolean;
var onde : string;
    qrx : TSQLQuery;
begin
 onde := '';

 qrx := TSQLQuery.Create(Application.Owner);
 qrx.SQLConnection := dm.Conexao;

 if trim(ini) <> '' then onde := ' AND RR_CAD_RURAL.COD_RRR = '+''''+ ini +''''
 else onde := ' AND RR_CAD_RURAL.COD_RRR = '+''''+ fim +'''';

 qrx.sql.Text := 'SELECT RR_CAD_RURAL.COD_RRR Cadastro_Rural, '+
                        'RR_CAD_RURAL.COD_CNT_RRR Cod_Contribuinte, '+
                        'GR_CONTRIBUINTES.NOME_CNT Nome_Contribuinte '+
                 'FROM RR_CAD_RURAL '+
                 'INNER JOIN GR_CONTRIBUINTES ON GR_CONTRIBUINTES.COD_EMP_CNT = RR_CAD_RURAL.COD_EMP_RRR '+
                                            'AND GR_CONTRIBUINTES.COD_CNT = RR_CAD_RURAL.COD_CNT_RRR '+
                 'WHERE RR_CAD_RURAL.COD_EMP_RRR = '+ SIA_Empresa + onde;
 qrx.Open;

 if qrx.IsEmpty then result := False
 else begin
  if trim(ini) <> '' then begin
    cdsCadastro.FieldByName('COD_CNTV_RTP').AsString := qrx.FieldByName('Cod_Contribuinte').AsString;
    cdsCadastro.FieldByName('NOMEVELHO').AsString    := qrx.FieldByName('Nome_Contribuinte').AsString;
  end
  else begin
    cdsCadastro.FieldByName('COD_CNTN_RTP').AsString := qrx.FieldByName('Cod_Contribuinte').AsString;
    cdsCadastro.FieldByName('NOMENOVO').AsString := qrx.FieldByName('Nome_Contribuinte').AsString;
  end;
  result := true;
 end;

 qrx.Close;
 qrx.Free;
end;

procedure TFCadTransf.ClicaGrid;
begin
  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := cdsVis.FieldValues['cod_emp_rtp'];
  sqlCadastro.Params.ParamValues['cod']     := cdsVis.FieldValues['cod_rtp'];
  cdsCadastro.Open;

  if cdsCadastro.FieldByName('status_rtp').AsString = 'CA' then BtnExcluir.Enabled := False
  else BtnExcluir.Enabled := True;

  if cdsCadastro.FieldByName('status_rtp').AsString = 'CA' then begin
    DBText3.Caption := 'CANCELADO';
    DBText3.Font.Color := clRed;
  end
  else begin
    DBText3.Caption := 'ATIVO';  
    DBText3.Font.Color := clLime;
  end;
end;

procedure TFCadTransf.BtnAnteriorClick(Sender: TObject);
begin
 if cdsVis.Active then cdsVis.Prior;
 ClicaGrid;
end;

procedure TFCadTransf.BtnPrimeiroClick(Sender: TObject);
begin
 if cdsVis.Active then cdsVis.First;
 ClicaGrid;
end;

procedure TFCadTransf.BtnProximoClick(Sender: TObject);
begin
 if cdsVis.Active then cdsVis.Next;
 ClicaGrid;
end;

procedure TFCadTransf.BtnUltimoClick(Sender: TObject);
begin
 if cdsVis.Active then cdsVis.Last;
 ClicaGrid;
end;

procedure TFCadTransf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fecha_todos_cds(TForm(Sender));
 Action := caFree;
end;

procedure TFCadTransf.FormDestroy(Sender: TObject);
begin
 TForm(Sender) := Nil;
end;

procedure TFCadTransf.FormShow(Sender: TObject);
begin
 PG.ActivePageIndex  := 0;
 desabilita(FCadTransf);

 cdsVis.Close;
 sqlVis.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
 cdsVis.Open;
 Condicao := '';

 if trim(CODRURAL) <> '' then begin
   BtnNovo.Click;
   cdsCadastro.FieldValues['COD_RRR_ANT_RTP'] := CODRURAL;
   DBEdit1.SetFocus;
 end;
end;

procedure TFCadTransf.DBGrid1CellClick(Column: TColumn);
begin
 ClicaGrid;
end;

procedure TFCadTransf.DBGrid1DblClick(Sender: TObject);
begin
 ClicaGrid;
 PG.ActivePageIndex  := 0;
end;

procedure TFCadTransf.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsVis, dsVis, Column);
end;

procedure TFCadTransf.btnPropAntigoClick(Sender: TObject);
var Pesq : TPesq_Rural;
begin
 Pesq := TPesq_Rural.Create;
 if Pesq.BotaoRural then begin
   cdsCadastro.FieldByName('COD_RRR_ANT_RTP').Value := Pesq.CADASTRO;
   cdsCadastro.FieldByName('NOMEVELHO').Value := Pesq.PROPRIETARIO;
 end;
 FreeAndNil(Pesq);
 DBEdit1.SetFocus;
end;

procedure TFCadTransf.btnPropNovoClick(Sender: TObject);
var Pesq : TPesq_CodCNT;
begin
 Pesq := TPesq_CodCNT.Create;
 Pesq.BotaoCodCNT;
 cdsCadastro.FieldByName('COD_CNTN_RPT').Value := Pesq.Codigo;
 cdsCadastro.FieldByName('NOMENOVO').Value := Pesq.Nome;
 FreeAndNil(Pesq);
 DBEdit2.SetFocus;
end;

procedure TFCadTransf.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFCadTransf.DBEdit1Enter(Sender: TObject);
begin
 if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

  If trim(DBEdit1.Text)<>'' Then
    cdsCadastro.FieldByName('COD_RRR_ANT_RTP').AsString := TiraCaracter(DBEdit1.Text);
end;

procedure TFCadTransf.DBEdit2Enter(Sender: TObject);
begin
 if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;
  DBEdit2.MaxLength := TamanhoMascara('CNT', SIA_Empresa);
  If trim(DBEdit2.Text)<>'' Then
    cdsCadastro.FieldByName('COD_CNTN_RTP').AsString := TiraCaracter(DBEdit2.Text);
end;

procedure TFCadTransf.DBEdit2Exit(Sender: TObject);
var Pesq : TPesq_CodCNT;
begin
 if BtnCancela.Focused then exit;
 if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

 DBEdit2.MaxLength := 0;
 If trim(DBEdit2.Text) <> '' Then begin
  cdsCadastro.FieldByName('COD_CNTN_RTP').AsString := MontaMascara(DBEdit2.Text, 'CNT', SIA_Empresa);
  Pesq := TPesq_CodCNT.Create;
  Pesq.PesquisaCodCNT(cdsCadastro.FieldByName('COD_CNTN_RTP').AsString);
  cdsCadastro.FieldByName('COD_CNTN_RTP').Value := Pesq.Codigo;
  cdsCadastro.FieldByName('NOMENOVO').Value     := Pesq.Nome;
  FreeAndNil(Pesq);
 end;

 if trim(DBEdit2.Text) <> '' then begin
  if trim(DBEdit2.Text) = trim(DBEdit8.Text) then begin
    showmessage('O Código Novo não pode ser igual ao Antigo.');
    cdsCadastro.FieldByName('COD_CNTN_RTP').Value := Null;
    cdsCadastro.FieldByName('NOMENOVO').Value     := Null;    
    DBEdit2.Text := '';
    DBEdit2.SetFocus;
  end;
 end;
end;

procedure TFCadTransf.DBEdit1Exit(Sender: TObject);
begin
 if BtnCancela.Focused then exit;
 if not (cdsCadastro.State in [dsInsert, dsEdit]) then exit;

 DBEdit1.MaxLength := 0;
 If trim(DBEdit1.Text) <> '' Then begin
  cdsCadastro.FieldByName('COD_RRR_ANT_RTP').AsString := DBEdit1.Text;
  if not Pesquisa(cdsCadastro.FieldByName('COD_RRR_ANT_RTP').AsString,'') then btnPropAntigo.Click;
 end;

 if trim(DBEdit1.Text) <> '' then begin
  if trim(DBEdit2.Text) = trim(DBEdit8.Text) then begin
    showmessage('O Código Antigo não pode ser igual ao Novo.');
    cdsCadastro.FieldByName('COD_RRR_ANT_RTP').Value := Null;
    cdsCadastro.FieldByName('COD_CNTV_RTP').Value    := Null;
    cdsCadastro.FieldByName('NOMEVELHO').Value       := Null;
    DBEdit1.Text := '';
    DBEdit1.SetFocus;
  end;
 end;
end;

procedure TFCadTransf.btnPesquisaClick(Sender: TObject);
Var SQL : String;
Begin
  SQL := 'SELECT RR_TRANSPROP.*, '+
                'CNTN.COD_CNT CODCNTNOVO, '+
                'CNTN.NOME_CNT NOMENOVO, '+
                'VELHO.COD_CNT_RRR CODCNTVELHO, '+
                'CNTV.NOME_CNT NOMEVELHO '+
         'FROM RR_TRANSPROP '+
         'INNER JOIN GR_CONTRIBUINTES CNTN ON CNTN.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP '+
                                         'AND CNTN.COD_CNT = RR_TRANSPROP.COD_CNTN_RTP '+
         'INNER JOIN RR_CAD_RURAL VELHO ON VELHO.COD_EMP_RRR = RR_TRANSPROP.COD_EMP_RTP '+
                                      'AND VELHO.COD_RRR = RR_TRANSPROP.COD_RRR_ANT_RTP '+
         'INNER JOIN GR_CONTRIBUINTES CNTV ON CNTV.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP '+
                                         'AND CNTV.COD_CNT = RR_TRANSPROP.COD_CNTV_RTP '+
         'WHERE RR_TRANSPROP.COD_EMP_RTP = '+ SIA_Empresa;

  If trim(msk1.Text)<>''  Then SQL := SQL + ' AND RR_TRANSPROP.COD_RRR_ANT_RTP = '+''''+ trim(msk1.Text) +'''';
  If trim(msk2.Text)<>''  Then SQL := SQL + ' AND RR_TRANSPROP.COD_CNTN_RTP = '+''''+ trim(msk2.Text) +'''';
  If trim(cbSTS.Text)<>'' Then SQL := SQL + ' AND RR_TRANSPROP.STATUS_RTP = '+''''+ trim(cbSTS.Text) +'''';

  cdsVis.Close;
  cdsVis.PacketRecords := -1;
  sqlVis.CommandText := SQL;
  cdsVis.PacketRecords := 30;
  cdsVis.Open;

  DBGrid1.SetFocus;
end;

procedure TFCadTransf.BtnNovoClick(Sender: TObject);
begin
  Condicao := 'Incluindo';
  abilita(FCadTransf);

  PG.ActivePageIndex := 0;

  cdsCadastro.Close;
  sqlCadastro.Params.ParamValues['empresa'] := strtoint(SIA_Empresa);
  sqlCadastro.Params.ParamValues['cod']     := 0;
  cdsCadastro.Open;
  cdsCadastro.Append;

  DBEdit1.SetFocus;
end;

procedure TFCadTransf.BtnExcluirClick(Sender: TObject);
var qrx : TSQLQuery;
    aux : string;
begin
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  PG.ActivePageIndex := 0;
  aux := '';

  Condicao := 'Alterando';
  abilita(FCadTransf);

  if msg.MessageDlg('Deseja Realmente Cancelar esta Transferência ?',mtConfirmation,[mbyes,mbno],0) = mryes then begin
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'select nome_cnt from gr_contribuintes where cod_emp_cnt = '+ SIA_Empresa +
                    ' and cod_cnt = '+''''+ cdsCadastro.FieldByName('cod_cntv_itp').AsString +'''';
    qrx.Open;
    aux := qrx.FieldByName('nome_cnt').asstring;
    FreeAndNil(qrx);

    msg.DefaultButton := mbNo;
    if msg.MessageDlg('Atenção !!!'+#13+#13+
                      'Ao Cancelar a Transferência, o Antigo Proprietário do Imóvel : '+#13+
                      'Sr(a) '+ aux +#13+
                      'Voltará a ser o Novo Propritário do Imóvel.'+#13+
                      'Deseja Realmente Cancelar esta Transferência ?',mtConfirmation,[mbyes,mbno],0) = mryes then begin

      cdsCadastro.Edit;
      cdsCadastro.FieldValues['DTA_CANCELA_RTP']  := now;
      cdsCadastro.FieldByName('status_rtp').AsString := 'CA';
      cdsCadastro.Post;
      
      BtnConfirma.Click;
    end;
  end
  else BtnCancela.Click;
end;

procedure TFCadTransf.BtnCancelaClick(Sender: TObject);
begin
  desabilita(FCadTransf);

  if cdsCadastro.State in [dsEdit, dsInsert] then cdsCadastro.Cancel;
  if cdsCadastro.ChangeCount > 0 then cdsCadastro.CancelUpdates;

  if dm.Conexao.InTransaction then dm.Conexao.Rollback(TD);

  PG.ActivePageIndex := 0;
  cdsCadastro.Close;
end;

procedure TFCadTransf.BtnConfirmaClick(Sender: TObject);
var qrx : TSQLQuery;
    aux : string;
begin
  PG.ActivePageIndex := 0;
  Erros := 0;

  if trim(DBEdit1.Text) = '' then begin
      msg.MessageDlg('O campo Código Antigo é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
      DBEdit1.SetFocus;
      Exit;
  end;

  if trim(DBEdit2.Text) = '' then begin
      msg.MessageDlg('O campo Código Novo é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
      DBEdit2.SetFocus;
      Exit;
  end;

  if trim(DBEdit3.Text) = '' then begin
      msg.MessageDlg('O campo Motivo é obrigatório. Você deve informar um número!!!',mtError, [mbok], 0);
      DBEdit3.SetFocus;
      Exit;
  end;

  if trim(DBEdit2.Text) = trim(DBEdit1.Text) then begin
    msg.MessageDlg('O Código Novo não pode ser igual ao Antigo!!!',mtError, [mbok], 0);
    DBEdit2.SetFocus;
    Exit;
  end;

  if not dm.Conexao.InTransaction then dm.Conexao.StartTransaction(TD);

  if Condicao = 'Incluindo' then begin
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'UPDATE RR_CAD_RURAL SET COD_CNT_RRR = '+''''+ cdsCadastro.FieldByName('COD_CNTN_RTP').AsString +''''+
                    ' WHERE COD_EMP_RRR = '+ SIA_Empresa +
                      ' AND COD_RRR = '+''''+ cdsCadastro.FieldByName('COD_RRR_ANT_RTP').AsString +'''';
    qrx.ExecSQL;
    FreeAndNil(qrx);
  end
  else begin
    qrx := TSQLQuery.Create(Application.Owner);
    qrx.SQLConnection := dm.Conexao;
    qrx.SQL.Text := 'UPDATE RR_CAD_RURAL SET COD_CNT_IPT = '+''''+ cdsCadastro.FieldByName('COD_CNTV_RTP').AsString +''''+
                    ' WHERE COD_EMP_RRR = '+ SIA_Empresa +
                      ' AND COD_RRR = '+''''+ cdsCadastro.FieldByName('COD_RRR_ANT_RTP').AsString +'''';
    qrx.ExecSQL;
    FreeAndNil(qrx);
  end;

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

  cdsVis.Close;
  cdsVis.Open;

  desabilita(FCadTransf);
  if BtnNovo.Visible then BtnNovo.SetFocus;

  if cdsCadastro.FieldByName('status_itp').AsString = 'CA' then begin
    DBText3.Caption := 'CANCELADO';
    DBText3.Font.Color := clRed;
  end
  else begin
    DBText3.Caption := 'ATIVO';  
    DBText3.Font.Color := clLime;
  end;    
end;

procedure TFCadTransf.BtnSairClick(Sender: TObject);
begin
 close;
 if FormStyle = fsMDIChild then FPrin.AbreMenu;  
end;

procedure TFCadTransf.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with DBGrid1.Canvas do begin
    if (cdsVis.FieldByName('STATUS_RTP').AsString = 'CA') then
      font.Style := [fsBold,fsStrikeOut];
  end;

  DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

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

procedure TFCadTransf.cdsCadastroReconcileError( DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if UpdateKind = ukDelete then Action := raCancel
  else Action := raCorrect;
end;

procedure TFCadTransf.cdsCadastroNewRecord(DataSet: TDataSet);
begin
 cdsCadastro.FieldValues['cod_emp_rtp'] := strtoint(SIA_Empresa);
 cdsCadastro.FieldValues['cod_rtp']     := 0;
 cdsCadastro.FieldValues['status_rtp']  := 'AT';
 cdsCadastro.FieldValues['MOTIVO_RTP']  := 'TRANSFERÊNCIA DE PROPRIETÁRIO';
 cdsCadastro.FieldValues['DTA_TRANSF_RTP']  := now;
end;

procedure TFCadTransf.dspCadastroBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
 if UpdateKind = ukInsert then begin
   dm.qrAtualiza.Close;
   dm.qrAtualiza.SQL.Text := 'select CAST(gen_id(GEN_RR_TRANSPROP,1) AS INTEGER) CODIGO from RDB$DATABASE';
   dm.qrAtualiza.Open;
   DeltaDS.FieldByName('COD_RTP').NewValue := dm.qrAtualiza.FieldbyName('CODIGO').asInteger;
   sqlCadastro.Params.ParamValues['cod']   := DeltaDS.FieldByName('COD_ITP').NewValue;
   dm.qrAtualiza.Close;

   DeltaDS.FieldByName('LOGIN_INC_RTP').NewValue := SIA_Usuario;
   DeltaDS.FieldByName('DTA_INC_RTP').NewValue   := DataBanco;
 end;

 if UpdateKind = ukModify then begin
   DeltaDS.FieldByName('LOGIN_ALT_RTP').NewValue := SIA_Usuario;
   DeltaDS.FieldByName('DTA_ALT_RTP').NewValue   := DataBanco;
 end;
end;

procedure TFCadTransf.dspCadastroGetTableName(Sender: TObject; DataSet: TDataSet; var TableName: WideString);
begin
  TableName := 'RR_TRANSPROP';
end;

procedure TFCadTransf.dspCadastroUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  Tratar_Erro(E.Message);
end;

procedure TFCadTransf.dspCadastroAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  dm.Sia_Log(SIA_Usuario, UpperCase(FCadTransf.Caption), SIA_Modulo, DeltaDS, UpdateKind);
end;

procedure TFCadTransf.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  if not BtnCancela.Enabled then BtnSair.Click;
end;

procedure TFCadTransf.BtnImprimirClick(Sender: TObject);
begin
  if cdsCadastro.IsEmpty then PG.ActivePageIndex := 1;
  if cdsCadastro.IsEmpty then Exit;

  if cdsCadastro.FieldByName('STATUS_RTP').AsString <> 'AT' then begin
    msg.MessageDlg('Só é permitido a impressão que apresenta Status de ATIVO.', mtInformation, [mbok], 0);
    exit;
  end;

  Application.CreateForm(TFRelTransfProp, FRelTransfProp);
  SIA_Aplicacao := 'FRelTransfPropRR';
  dm.Permissao(FRelTransfProp, 'RUR_FRelTransfProp', SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante);
  with FRelTransfProp do begin
   CODRTP := '';
   if not cdsCadastro.IsEmpty then
     CODRTP := cdsCadastro.FieldByName('COD_RTP').AsString;
  end;
  FRelTransfProp.ShowModal;
  FRelTransfProp.Free;
end;

end.
