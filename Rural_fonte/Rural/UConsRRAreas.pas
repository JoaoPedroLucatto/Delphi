unit UConsRRAreas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Mask, ExtCtrls, EMsgDlg, DB, SqlExpr, Provider,
  DBClient, RzButton, RzPanel, Grids, DBGrids, Buttons, DBCtrls;

type
  TFConsRRAreas = class(TForm)
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
    msk1: TMaskEdit;
    RzPanel2: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnUltimo: TRzBitBtn;
    BtnProximo: TRzBitBtn;
    BtnAnterior: TRzBitBtn;
    BtnPrimeiro: TRzBitBtn;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    cdsAREA: TFloatField;
    cdsCODRES: TStringField;
    cdsDRES: TStringField;
    PQtd: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    pRes: TPanel;
    Label5: TLabel;
    mskRS: TMaskEdit;
    SpeedButton1: TSpeedButton;
    MaskEdit7: TMaskEdit;
    Panel4: TPanel;
    Label3: TLabel;
    btnMais: TSpeedButton;
    btnMenos: TSpeedButton;
    mskAP: TMaskEdit;
    sqlConsEMPRESA: TIntegerField;
    sqlConsCODIGO: TStringField;
    sqlConsDESCRICAO: TStringField;
    sqlConsOBSERVACAO: TMemoField;
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure msk1Change(Sender: TObject);
    procedure mskAPExit(Sender: TObject);
    procedure mskRSExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mskAPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mskAPKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure cdsConsAfterOpen(DataSet: TDataSet);
    procedure cdsConsAfterClose(DataSet: TDataSet);
    procedure cdsConsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriaTMP;
    procedure GravaTMP(ID, COD_PRO, PRODUTO, AREA, CODRES, DRES : Variant);
  end;

var
  FConsRRAreas: TFConsRRAreas;
  vID : Integer;

implementation

uses UDM, UPrin, Funcoes, aguarde, TrataErros, UClasse_PesqRur;

{$R *.dfm}

procedure TFConsRRAreas.BtnAnteriorClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Prior;
end;

procedure TFConsRRAreas.BtnConfirmaClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFConsRRAreas.btnMaisClick(Sender: TObject);
begin
  if cdsCons.IsEmpty then exit;

  if trim(mskAP.Text) = '' then begin
    dm.msg.MessageDlg('Informe a Área.',mtinformation,[mbok],0);
    mskAP.SetFocus;
    exit;
  end;

  GravaTMP(1,                                                 // ID,
           cdsCons.FieldValues['CODIGO'],                     // COD_PRO,
           cdsCons.FieldValues['DESCRICAO'],                  // PRODUTO,
           iif(trim(mskAP.Text)='', 1, trim(mskAP.Text)),     // AREAPLAN,
           iif(trim(mskRS.Text)='', NULL, trim(mskRS.Text)),  // CODRES
           MaskEdit7.Text);                                   // DRES

  mskAP.Clear;
  mskRS.Clear;
  MaskEdit7.Clear;
end;

procedure TFConsRRAreas.btnMenosClick(Sender: TObject);
begin
  if cds.IsEmpty then exit;
  cds.Delete;

  mskAP.Clear;
  mskRS.Clear;
  MaskEdit7.Clear;
end;

procedure TFConsRRAreas.BtnPrimeiroClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.First;
end;

procedure TFConsRRAreas.BtnProximoClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Next;
end;

procedure TFConsRRAreas.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFConsRRAreas.BtnUltimoClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Last;
end;

procedure TFConsRRAreas.cdsConsAfterClose(DataSet: TDataSet);
begin
  BtnConfirma.Visible := False;
end;

procedure TFConsRRAreas.cdsConsAfterOpen(DataSet: TDataSet);
begin
  BtnConfirma.Visible := True;
end;

procedure TFConsRRAreas.cdsConsAfterScroll(DataSet: TDataSet);
begin
  if not cdsCons.IsEmpty then
    DBMemo1.Visible := (not cdsCons.FieldByName('OBSERVACAO').IsNull);
end;

procedure TFConsRRAreas.FormCreate(Sender: TObject);
begin
  vID := 1;
end;

procedure TFConsRRAreas.FormDestroy(Sender: TObject);
begin
  FConsRRAreas := Nil;
end;

procedure TFConsRRAreas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then BtnSair.Click;
end;

procedure TFConsRRAreas.FormShow(Sender: TObject);
var SQL : String;
begin
  CriaTMP;
  BtnConfirma.Visible := False;

  pRes.Visible := False;

  if Tag = 0 then begin
    pRes.Visible := True;

    SQL := 'SELECT COD_EMP_RTS Empresa, CAST(COD_RTS AS VARCHAR(2)) Codigo, DESCR_RTS Descricao, CAST('''' AS BLOB) Observacao '+
           'FROM RR_TPPASTAGEM '+
           'WHERE RR_TPPASTAGEM.COD_EMP_RTS = '+ SIA_Empresa +
            ' AND NOT EXISTS (SELECT 1 FROM RR_CADRR_AREAPASTO '+
                             'WHERE RR_CADRR_AREAPASTO.COD_EMP_ARP = RR_TPPASTAGEM.COD_EMP_RTS '+
                              ' AND RR_CADRR_AREAPASTO.COD_TPPASTO_ARP = RR_TPPASTAGEM.COD_RTS) ';
  end;

  if Tag = 1 then begin
    pRes.Visible := True;

    SQL := 'SELECT COD_EMP_RPG Empresa, COD_RPG Codigo, DESCR_RPG Descricao, OBS_RPG Observacao '+
           'FROM RR_TPPRODGRANJAQU '+
           'WHERE COD_EMP_RPG = '+ SIA_Empresa +
            ' AND COD_RPG IN (''18'',''26'',''34'',''42'',''50'',''69'',''77'',''85'') '+
            ' AND NOT EXISTS (SELECT 1 FROM RR_CADRR_AREAGRAJ '+
                             'WHERE COD_EMP_AGQ = COD_EMP_RPG '+
                              ' AND COD_PRO_AGQ = COD_RPG)';
  end;

  if Tag = 2 then begin
    pRes.Visible := True;

    SQL := 'SELECT COD_EMP_RPO Empresa, COD_RPO Codigo, DESCR_RPO Descricao, OBS_RPO Observacao '+
           'FROM RR_TPPRODOUTROS '+
           'WHERE RR_TPPRODOUTROS.COD_EMP_RPO = '+ SIA_Empresa +
            ' AND RR_TPPRODOUTROS.COD_RPO IN (''01'',''02'') '+
            ' AND NOT EXISTS (SELECT 1 FROM RR_CADRR_AREAOUT '+
                             'WHERE RR_CADRR_AREAOUT.COD_EMP_AOT = RR_TPPRODOUTROS.COD_EMP_RPO '+
                              ' AND RR_CADRR_AREAOUT.COD_BEN_AOT = RR_TPPRODOUTROS.COD_RPO) ';
  end;

  if Tag = 3 then begin

    SQL := 'SELECT COD_EMP_RIU Empresa, COD_RIU Codigo, DESCR_RIU Descricao, OBS_RIU Observacao '+
           'FROM RR_TPINDRESTUSO '+
           'WHERE RR_TPINDRESTUSO.COD_EMP_RIU = '+ SIA_Empresa +
            ' AND RR_TPINDRESTUSO.COD_RIU IN (''02'',''03'',''04'',''05'',''06'',''07'') '+
            ' AND NOT EXISTS (SELECT 1 FROM RR_CADRR_AREAREST '+
                             'WHERE RR_CADRR_AREAREST.COD_EMP_ART = RR_TPINDRESTUSO.COD_EMP_RIU '+
                              ' AND RR_CADRR_AREAREST.COD_INDRESTUSO_ART = RR_TPINDRESTUSO.COD_RIU) ';
  end;

  cdsCons.Close;
  sqlCons.CommandText := SQL;
  cdsCons.Open;
end;

procedure TFConsRRAreas.CriaTMP;
begin
  cds.Close;
  cds.FieldDefs.Clear;
  cds.FieldDefs.Add('ID', ftInteger);
  cds.FieldDefs.Add('COD_PRO', ftFixedChar, 3);
  cds.FieldDefs.Add('PRODUTO', ftFixedChar, 70);
  cds.FieldDefs.Add('AREA', ftFloat);
  cds.FieldDefs.Add('CODRES', ftFixedChar, 2);
  cds.FieldDefs.Add('DRES', ftFixedChar, 70);
  cds.CreateDataSet;
end;

procedure TFConsRRAreas.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFConsRRAreas.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsCons, dsCons, Column);
end;

procedure TFConsRRAreas.DBGrid2TitleClick(Column: TColumn);
begin
  OrdenarGRID(cds, ds, Column);
end;

procedure TFConsRRAreas.GravaTMP(ID, COD_PRO, PRODUTO, AREA, CODRES, DRES : Variant);
begin
  if cds.Locate('COD_PRO', COD_PRO, ([])) then cds.Edit
  else cds.Append;

  if cds.State = dsInsert then begin
    cds.FieldValues['ID']      := vID;
    cds.FieldValues['COD_PRO'] := COD_PRO;
    cds.FieldValues['PRODUTO'] := PRODUTO;
    cds.FieldValues['AREA']    := AREA;
  end
  else begin
    cds.FieldValues['AREA'] := AREA + cds.FieldValues['AREA'];
  end;
  cds.FieldValues['CODRES'] := CODRES;
  cds.FieldValues['DRES']   := DRES;
  inc(vID);
  cds.Post;
end;

procedure TFConsRRAreas.msk1Change(Sender: TObject);
begin
  if cdsCons.Active then
    if trim(msk1.Text) <> '' then
      cdsCons.Locate('DESCRICAO', UpperCase(msk1.Text), [loPartialKey, loCaseInsensitive]);
end;

procedure TFConsRRAreas.mskAPExit(Sender: TObject);
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Item foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;
end;

procedure TFConsRRAreas.mskAPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFConsRRAreas.mskAPKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13, ',', '.']) then key := #0;
  if key = '.' then key := ',';
end;

procedure TFConsRRAreas.mskRSExit(Sender: TObject);
var Pesq : TPesq_RR_TPINDRESTUSO;
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Item foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;

  if trim(TMaskEdit(Sender).Text) <> '' then begin
    Pesq := TPesq_RR_TPINDRESTUSO.Create;
    Pesq.PesquisaRR_TPINDRESTUSO(trim(TMaskEdit(Sender).Text));
    TMaskEdit(Sender).Text := vartostr(Pesq.COD_RIU);
    MaskEdit7.Text := vartostr(Pesq.DESCR_RIU);
    FreeAndNil(Pesq);
  end;
end;

procedure TFConsRRAreas.SpeedButton1Click(Sender: TObject);
var Pesq : TPesq_RR_TPINDRESTUSO;
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Item foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;

  Pesq := TPesq_RR_TPINDRESTUSO.Create;
  if Pesq.BotaoRR_TPINDRESTUSO then begin
    mskRS.Text := vartostr(Pesq.COD_RIU);
    MaskEdit7.Text := vartostr(Pesq.DESCR_RIU);
  end;
  FreeAndNil(Pesq);  
end;

end.
