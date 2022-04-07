unit UConsProAni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, RzButton, RzPanel, FMTBcd, DB,
  EMsgDlg, DBClient, Provider, SqlExpr, Grids, DBGrids, Buttons;

type
  TFConsProAni = class(TForm)
    RzPanel2: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnUltimo: TRzBitBtn;
    BtnProximo: TRzBitBtn;
    BtnAnterior: TRzBitBtn;
    BtnPrimeiro: TRzBitBtn;
    sqlCateg: TSQLDataSet;
    dspCateg: TDataSetProvider;
    cdsCateg: TClientDataSet;
    dsCateg: TDataSource;
    dsCons: TDataSource;
    cdsCons: TClientDataSet;
    dspCons: TDataSetProvider;
    sqlCons: TSQLDataSet;
    cds: TClientDataSet;
    cdsID: TIntegerField;
    cdsCOD_PRO: TStringField;
    cdsPRODUTO: TStringField;
    ds: TDataSource;
    Panel21: TPanel;
    Label29: TLabel;
    Label1: TLabel;
    msk1: TMaskEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cdsQTDANI: TIntegerField;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    PQtd: TPanel;
    Label3: TLabel;
    btnMais: TSpeedButton;
    btnMenos: TSpeedButton;
    mskAP: TMaskEdit;
    sqlConsCOD_EMP_RPA: TIntegerField;
    sqlConsCOD_RPA: TStringField;
    sqlConsDESCR_RPA: TStringField;
    sqlConsCODCATEG_RPA: TIntegerField;
    sqlConsOBS_RPA: TMemoField;
    sqlConsLOGIN_INC_RPA: TStringField;
    sqlConsDTA_INC_RPA: TSQLTimeStampField;
    sqlConsLOGIN_ALT_RPA: TStringField;
    sqlConsDTA_ALT_RPA: TSQLTimeStampField;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    sqlCategCOD_EMP_RCN: TIntegerField;
    sqlCategCOD_RCN: TIntegerField;
    sqlCategDESCR_RCN: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure msk1Change(Sender: TObject);
    procedure mskAPExit(Sender: TObject);
    procedure mskAPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mskAPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure cdsConsAfterClose(DataSet: TDataSet);
    procedure cdsConsAfterOpen(DataSet: TDataSet);
    procedure cdsConsAfterScroll(DataSet: TDataSet);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriaTMP;
    procedure GravaTMP(ID, COD_PRO, PRODUTO, QTDANI : Variant);
  end;

var
  FConsProAni: TFConsProAni;
  vID : Integer;
  
implementation

uses UDM, UPrin, Funcoes, aguarde, TrataErros;

{$R *.dfm}

procedure TFConsProAni.DBGrid1CellClick(Column: TColumn);
begin
  mskAP.SetFocus;
end;

procedure TFConsProAni.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFConsProAni.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsCons, dsCons, Column);
end;

procedure TFConsProAni.FormCreate(Sender: TObject);
begin
  vID := 1;
end;

procedure TFConsProAni.FormDestroy(Sender: TObject);
begin
  FConsProAni := Nil;
end;

procedure TFConsProAni.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then BtnSair.Click;
end;

procedure TFConsProAni.FormShow(Sender: TObject);
begin
  CriaTMP;
  BtnConfirma.Visible := False;
  
  cdsCateg.Close;
  sqlCateg.Params.ParamValues['empresa'] := SIA_Empresa;
  cdsCateg.Open;

  cdsCons.Close;
  cdsCons.Open;
end;

procedure TFConsProAni.BtnAnteriorClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Prior;
end;

procedure TFConsProAni.BtnConfirmaClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFConsProAni.btnMaisClick(Sender: TObject);
begin
  if cdsCons.IsEmpty then exit;

  if trim(mskAP.Text) = '' then begin
    dm.msg.MessageDlg('Informe a Quantidade de Animais.',mtinformation,[mbok],0);
    mskAP.SetFocus;
    exit;
  end;

  GravaTMP(1,                                                 // ID,
           cdsCons.FieldValues['COD_RPA'],                    // COD_PRO,
           cdsCons.FieldValues['DESCR_RPA'],                  // PRODUTO,
           iif(trim(mskAP.Text)='', 1, trim(mskAP.Text)));    // QTDANI,

  mskAP.Clear;
end;

procedure TFConsProAni.btnMenosClick(Sender: TObject);
begin
  if cds.IsEmpty then exit;
  cds.Delete;

  mskAP.Clear;
end;

procedure TFConsProAni.BtnPrimeiroClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.First;
end;

procedure TFConsProAni.BtnProximoClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Next;
end;

procedure TFConsProAni.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFConsProAni.BtnUltimoClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Last;
end;

procedure TFConsProAni.cdsConsAfterClose(DataSet: TDataSet);
begin
  BtnConfirma.Visible := False;
end;

procedure TFConsProAni.cdsConsAfterOpen(DataSet: TDataSet);
begin
  BtnConfirma.Visible := True;
end;

procedure TFConsProAni.cdsConsAfterScroll(DataSet: TDataSet);
begin
  if not cdsCons.IsEmpty then
    DBMemo1.Visible := (not cdsCons.FieldByName('OBS_RPA').IsNull);
end;

procedure TFConsProAni.CriaTMP;
begin
  cds.Close;
  cds.FieldDefs.Clear;
  cds.FieldDefs.Add('ID', ftInteger);
  cds.FieldDefs.Add('COD_PRO', ftFixedChar, 3);
  cds.FieldDefs.Add('PRODUTO', ftFixedChar, 70);
  cds.FieldDefs.Add('QTDANI', ftInteger);
  cds.CreateDataSet;
end;

procedure TFConsProAni.GravaTMP(ID, COD_PRO, PRODUTO, QTDANI : Variant);
begin
  if cds.Locate('COD_PRO', COD_PRO, ([])) then cds.Edit
  else cds.Append;

  if cds.State = dsInsert then begin
    cds.FieldValues['ID']      := vID;
    cds.FieldValues['COD_PRO'] := COD_PRO;
    cds.FieldValues['PRODUTO'] := PRODUTO;
    cds.FieldValues['QTDANI']  := QTDANI;
  end
  else begin
    cds.FieldValues['QTDANI']  := QTDANI + cds.FieldValues['QTDANI'];
  end;
  inc(vID);
  cds.Post;
end;

procedure TFConsProAni.msk1Change(Sender: TObject);
begin
  if cdsCons.Active then
    if trim(msk1.Text) <> '' then
      cdsCons.Locate('DESCR_RPA', UpperCase(msk1.Text), [loPartialKey, loCaseInsensitive]);
end;

procedure TFConsProAni.mskAPExit(Sender: TObject);
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Produto foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;
end;

procedure TFConsProAni.mskAPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFConsProAni.mskAPKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13]) then key := #0;
end;

end.
