unit UConsRural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, PesqAvancada_Fiorilli, DB, DBClient, Provider, SqlExpr,
  RzButton, StdCtrls, Mask, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids,
  RzPanel, PesqAvancada_retSQL_Fiorilli, EMsgDlg;

type
  TFConsRural = class(TForm)
    RzPanel3: TRzPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label55: TLabel;
    Label57: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label69: TLabel;
    BitBtn1: TBitBtn;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    msk4: TMaskEdit;
    msk5: TMaskEdit;
    msk6: TMaskEdit;
    msk8: TMaskEdit;
    msk9: TMaskEdit;
    BtnPesqAvanc: TBitBtn;
    RzPanel1: TRzPanel;
    BtnSair: TRzBitBtn;
    BtnNovo: TRzBitBtn;
    BtnPrimeiro: TRzBitBtn;
    BtnAnterior: TRzBitBtn;
    BtnProximo: TRzBitBtn;
    BtnUltimo: TRzBitBtn;
    BtnConfirma: TRzBitBtn;
    sqlCons: TSQLDataSet;
    dspCons: TDataSetProvider;
    cdsCons: TClientDataSet;
    dsCons: TDataSource;
    msk7: TMaskEdit;
    Label1: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    btnContrib: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    LCalss: TLabel;
    LEnde: TLabel;
    PesqAvancada_retSQL: TPesqAvancada_retSQL_Fiorilli;
    procedure msk6Exit(Sender: TObject);
    procedure btnContribClick(Sender: TObject);
    procedure msk9Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure msk1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure cdsConsAfterOpen(DataSet: TDataSet);
    procedure cdsConsAfterClose(DataSet: TDataSet);
    procedure BtnSairClick(Sender: TObject);
    procedure msk1Enter(Sender: TObject);
    procedure msk1Exit(Sender: TObject);
    procedure BtnPesqAvancClick(Sender: TObject);
    procedure msk4Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    varSQLRur : string;
  end;

var
  FConsRural: TFConsRural;

implementation

uses UDM, UPrin, Funcoes, TrataErros, aguarde, UClasse_PesqPrin,
     UClasse_PesqRur;

{$R *.dfm}

procedure TFConsRural.msk6Exit(Sender: TObject);
var Pesq : TPesq_Logra;
begin
  If trim(TMaskEdit(sender).text) <> '' Then begin
    Pesq := TPesq_Logra.Create;
    Pesq.PesquisaLogr(TMaskEdit(sender).text);
    TMaskEdit(Sender).Text := Pesq.Codigo;
    LEnde.Caption := Pesq.Descri;
    FreeAndNil(Pesq);
  end;
end;

procedure TFConsRural.btnContribClick(Sender: TObject);
var Pesq : TPesq_Logra;
begin
  Pesq := TPesq_Logra.Create;

  if Pesq.BotaoLogra then begin
    msk6.Text := Pesq.Codigo;
    LEnde.Caption := Pesq.Descri;
  end;

  FreeAndNil(Pesq);
end;

procedure TFConsRural.msk9Exit(Sender: TObject);
var Pesq : TPesq_Classificacao_RR;
begin
  If trim(TMaskEdit(sender).text) <> '' Then begin
    Pesq := TPesq_Classificacao_RR.Create;
    Pesq.PesquisaClassificacaoRR(TMaskEdit(sender).text,Sia_Exercicio);
    TMaskEdit(Sender).Text := Pesq.Codigo;
    LCalss.Caption := Pesq.Descricao;
    FreeAndNil(Pesq);
  end;
end;

procedure TFConsRural.SpeedButton2Click(Sender: TObject);
var Pesq : TPesq_Classificacao_RR;
begin
  inherited;
  Pesq := TPesq_Classificacao_RR.Create;
  if Pesq.BotaoClassificacaoRR then begin
    msk9.Text := Pesq.Codigo;
    LCalss.Caption := Pesq.Descricao;
  end;
  FreeAndNil(Pesq);
end;

procedure TFConsRural.msk1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFConsRural.BitBtn1Click(Sender: TObject);
var Filtro : String;
Begin
  If trim(msk1.Text)<>''  Then Filtro := Filtro + ' AND RR_CAD_RURAL.COD_RRR = ' + QuotedSTR(trim(msk1.Text));
  If trim(msk2.Text)<>''  Then Filtro := Filtro + ' AND RR_CAD_RURAL.MATRIC_RRR = ' + QuotedSTR(trim(msk2.Text));
  If trim(msk4.Text)<>''  Then Filtro := Filtro + ' AND RR_CAD_RURAL.COD_CNT_RRR = ' + QuotedSTR(trim(msk4.Text));
  If trim(msk5.Text)<>''  Then Filtro := Filtro + ' AND UPPER(GR_CONTRIBUINTES.NOME_CNT) LIKE ' + QuotedSTR('%' +AnsiUpperCase(MontaFiltroLike(msk5.Text)) + '%');
  If trim(msk6.Text)<>''  Then Filtro := Filtro + ' AND RR_CAD_RURAL.COD_LOG_RRR = ' + msk6.Text;
  If trim(msk7.Text)<>''  Then Filtro := Filtro + ' AND RR_CAD_RURAL.INCRA_RRR = ' + QuotedSTR(msk7.Text);
  If trim(msk8.Text)<>''  Then Filtro := Filtro + ' AND RR_CAD_RURAL.INSCRP_RRR = ' + QuotedSTR(msk8.Text);
  If trim(msk9.Text)<>''  Then Filtro := Filtro + ' AND RR_CAD_RURAL.COD_CLASS_RRR = ' + msk9.Text;

  if trim(Filtro) = '' then begin
    showmessage('Informe pelo menos um campo para filtrar');
    exit;
  end;

  cdsCons.Close;
  sqlCons.CommandText := varSQLRur + Filtro;
  cdsCons.Open;

  DBGrid1.SetFocus;
end;

procedure TFConsRural.FormActivate(Sender: TObject);
begin
 msk1.SetFocus;;
end;

procedure TFConsRural.FormShow(Sender: TObject);
begin
 BtnConfirma.Visible := False;
 if tag = 1 then begin
  BtnNovo.Visible := True;
  BtnNovo.Enabled := False;
 end
 else BtnNovo.Visible := False;
end;

procedure TFConsRural.FormDestroy(Sender: TObject);
begin
 TForm(Sender) := Nil;
end;

procedure TFConsRural.DBGrid1DblClick(Sender: TObject);
begin
  BtnConfirma.Click;
end;

procedure TFConsRural.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

  TDBGRID(SENDER).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFConsRural.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 IF key = #13 THEN BtnConfirma.Click;
end;

procedure TFConsRural.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsCons, dsCons, Column);
end;

procedure TFConsRural.cdsConsAfterOpen(DataSet: TDataSet);
begin
 if BtnNovo.Visible then BtnNovo.Enabled := True;
 BtnConfirma.Visible := True;
end;

procedure TFConsRural.cdsConsAfterClose(DataSet: TDataSet);
begin
 if BtnNovo.Visible then BtnNovo.Enabled := False;
end;

procedure TFConsRural.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFConsRural.msk1Enter(Sender: TObject);
begin
  If trim(msk1.Text)<>'' Then msk1.Text := TiraCaracter(msk1.Text);
end;

procedure TFConsRural.msk1Exit(Sender: TObject);
begin
  if trim(msk1.text) <> '' then begin
    If trim(msk1.Text) <> '' Then msk1.Text := MontaMascara(msk1.Text, 'RUR', SIA_Empresa);
  end;
end;

procedure TFConsRural.BtnPesqAvancClick(Sender: TObject);
begin
  if not BtnPesqAvanc.Enabled then exit;

  Application.CreateForm(Tfrmaguarde, frmaguarde);
  frmaguarde.LMens.Caption   := 'Pesquisando...'; // Mensagem Principal
  frmaguarde.PB.Visible      := False;  // Barra de Progresso
  frmaguarde.PB.TotalParts   := 0; // Total Maximo da Barra de Progresso
  frmaguarde.ImagemPadrao    := True;

  cdsCons.Close;
  sqlCons.CommandText := PesqAvancada_retSQL.Execute(varSQLRur);
  if PesqAvancada_retSQL.OK then begin
    frmaguarde.Show;
    Application.ProcessMessages;
    cdsCons.Open;
  end
  else begin
    dm.msg.DefaultButton := mbNo;
    if dm.msg.MessageDlg('Nenhuma consulta foi efetuada.'+#13+
                      'Deseja visualizar todos os cadastros ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      frmaguarde.Show;
      Application.ProcessMessages;
      sqlCons.CommandText := varSQLRur;
      cdsCons.Open
    end;
  end;
  FreeAndNil(frmaguarde);
end;

procedure TFConsRural.msk4Exit(Sender: TObject);
begin
 if trim(TMaskEdit(sender).text) <> '' then
   TMaskEdit(sender).Text := MontaMascara(TMaskEdit(sender).Text, 'CNT', SIA_Empresa);
end;

procedure TFConsRural.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then BtnSair.Click;
end;

procedure TFConsRural.BtnAnteriorClick(Sender: TObject);
begin
  If cdsCons.Active Then cdsCons.Prior;
end;

procedure TFConsRural.BtnPrimeiroClick(Sender: TObject);
begin
  If cdsCons.Active Then cdsCons.First;
end;

procedure TFConsRural.BtnProximoClick(Sender: TObject);
begin
  If cdsCons.Active Then cdsCons.Next;
end;

procedure TFConsRural.BtnUltimoClick(Sender: TObject);
begin
  If cdsCons.Active Then cdsCons.Last;
end;

end.
