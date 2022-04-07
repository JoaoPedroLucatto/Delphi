unit UConsProVegISO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, EMsgDlg, DBClient, Provider, SqlExpr, Grids, DBGrids,
  StdCtrls, Mask, Buttons, ExtCtrls, RzButton, RzPanel, DBCtrls;

type
  TFConsProVegISO = class(TForm)
    RzPanel2: TRzPanel;
    BtnConfirma: TRzBitBtn;
    BtnSair: TRzBitBtn;
    BtnUltimo: TRzBitBtn;
    BtnProximo: TRzBitBtn;
    BtnAnterior: TRzBitBtn;
    BtnPrimeiro: TRzBitBtn;
    Panel21: TPanel;
    Label29: TLabel;
    msk1: TMaskEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PQtd: TPanel;
    Label3: TLabel;
    sqlCons: TSQLDataSet;
    dspCons: TDataSetProvider;
    cdsCons: TClientDataSet;
    dsCons: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    Unidade: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    cds: TClientDataSet;
    ds: TDataSource;
    btnMais: TSpeedButton;
    btnMenos: TSpeedButton;
    mskAP: TMaskEdit;
    mskAC: TMaskEdit;
    mskQC: TMaskEdit;
    mskUN: TMaskEdit;
    mskRS: TMaskEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    Label1: TLabel;
    sqlCateg: TSQLDataSet;
    dspCateg: TDataSetProvider;
    cdsCateg: TClientDataSet;
    dsCateg: TDataSource;
    sqlCategCOD_RCV: TIntegerField;
    sqlCategDESCR_RCV: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    sqlCategCOD_EMP_RCV: TIntegerField;
    DBMemo1: TDBMemo;
    cdsID: TIntegerField;
    cdsCOD_PRO: TStringField;
    cdsPRODUTO: TStringField;
    cdsAREAPLAN: TFloatField;
    cdsAREACOLH: TFloatField;
    cdsQTDCOLH: TFloatField;
    cdsCODUNI: TStringField;
    cdsDUNI: TStringField;
    cdsCODRES: TStringField;
    cdsDRES: TStringField;
    sqlConsCOD_EMP_RPR: TIntegerField;
    sqlConsCOD_RPR: TStringField;
    sqlConsDESCR_RPR: TStringField;
    sqlConsCODCATEG_RPR: TIntegerField;
    sqlConsOBS_RPR: TMemoField;
    sqlConsLOGIN_INC_RPR: TStringField;
    sqlConsDTA_INC_RPR: TSQLTimeStampField;
    sqlConsLOGIN_ALT_RPR: TStringField;
    sqlConsDTA_ALT_RPR: TSQLTimeStampField;
    mskSeqGrupo: TMaskEdit;
    Label11: TLabel;
    Label12: TLabel;
    mskForma: TComboBox;
    cdsFEXP: TStringField;
    cdsSEQG: TIntegerField;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure msk1Change(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure cdsConsAfterClose(DataSet: TDataSet);
    procedure cdsConsAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mskAPKeyPress(Sender: TObject; var Key: Char);
    procedure mskAPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mskAPExit(Sender: TObject);
    procedure mskUNExit(Sender: TObject);
    procedure mskRSExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cdsConsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure mskFormaExit(Sender: TObject);
    procedure mskSeqGrupoExit(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriaTMP;
    procedure GravaTMP(ID, COD_PRO, PRODUTO, AREAPLAN, AREACOLH,
                       QTDCOLH, CODUNI, DUNI, CODRES, DRES, FEXP, SEQG : Variant);
  end;

var
  FConsProVegISO: TFConsProVegISO;
  vID : Integer;

implementation

uses UDM, UPrin, Funcoes, aguarde, TrataErros, UClasse_PesqRur;

{$R *.dfm}

procedure TFConsProVegISO.FormCreate(Sender: TObject);
begin
  vID := 1;
end;

procedure TFConsProVegISO.FormDestroy(Sender: TObject);
begin
  FConsProVegISO := Nil;
end;

procedure TFConsProVegISO.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then BtnSair.Click;
end;

procedure TFConsProVegISO.FormShow(Sender: TObject);
begin
  CriaTMP;
  BtnConfirma.Visible := False;
  
  cdsCateg.Close;
  sqlCateg.Params.ParamValues['empresa'] := SIA_Empresa;
  cdsCateg.Open;

  cdsCons.Close;
  cdsCons.Open;

  if Tag = 0 then PQtd.Height := 47
  else PQtd.Height := 88;
end;

procedure TFConsProVegISO.CriaTMP;
begin
  cds.Close;
  cds.FieldDefs.Clear;
  cds.FieldDefs.Add('ID', ftInteger);
  cds.FieldDefs.Add('COD_PRO', ftFixedChar, 3);
  cds.FieldDefs.Add('PRODUTO', ftFixedChar, 70);
  cds.FieldDefs.Add('AREAPLAN', ftFloat);
  cds.FieldDefs.Add('AREACOLH', ftFloat);
  cds.FieldDefs.Add('QTDCOLH', ftFloat);
  cds.FieldDefs.Add('CODUNI', ftFixedChar, 2);
  cds.FieldDefs.Add('DUNI', ftFixedChar, 70);
  cds.FieldDefs.Add('CODRES', ftFixedChar, 2);
  cds.FieldDefs.Add('DRES', ftFixedChar, 70);
  cds.FieldDefs.Add('FEXP', ftFixedChar, 35);
  cds.FieldDefs.Add('SEQG', ftInteger);
  cds.CreateDataSet;
end;

procedure TFConsProVegISO.DBGrid1CellClick(Column: TColumn);
begin
  mskAP.SetFocus;
end;

procedure TFConsProVegISO.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFConsProVegISO.DBGrid1TitleClick(Column: TColumn);
begin
  OrdenarGRID(cdsCons, dsCons, Column);
end;

procedure TFConsProVegISO.DBGrid2TitleClick(Column: TColumn);
begin
  OrdenarGRID(cds, ds, Column);
end;

procedure TFConsProVegISO.GravaTMP(ID, COD_PRO, PRODUTO, AREAPLAN, AREACOLH, QTDCOLH, CODUNI, DUNI, CODRES, DRES, FEXP, SEQG : Variant);
begin
  if cds.Locate('COD_PRO', COD_PRO, ([])) then cds.Edit
  else cds.Append;

  if cds.State = dsInsert then begin
    cds.FieldValues['ID']       := vID;
    cds.FieldValues['COD_PRO']  := COD_PRO;
    cds.FieldValues['PRODUTO']  := PRODUTO;
    cds.FieldValues['AREAPLAN'] := AREAPLAN;
    cds.FieldValues['AREACOLH'] := AREACOLH;
    cds.FieldValues['QTDCOLH']  := QTDCOLH;
  end
  else begin
    cds.FieldValues['AREAPLAN'] := AREAPLAN + cds.FieldValues['AREAPLAN'];
    cds.FieldValues['AREACOLH'] := AREACOLH + cds.FieldValues['AREACOLH'];
    cds.FieldValues['QTDCOLH']  := QTDCOLH + cds.FieldValues['QTDCOLH'];
  end;
  cds.FieldValues['CODUNI']   := CODUNI;
  cds.FieldValues['DUNI']     := DUNI;
  cds.FieldValues['CODRES']   := CODRES;
  cds.FieldValues['DRES']     := DRES;
  cds.FieldValues['FEXP']     := FEXP;
  cds.FieldValues['SEQG']     := SEQG;
  inc(vID);
  cds.Post;
end;

procedure TFConsProVegISO.msk1Change(Sender: TObject);
begin
  if cdsCons.Active then
    if trim(msk1.Text) <> '' then
      cdsCons.Locate('DESCR_RPR', UpperCase(msk1.Text), [loPartialKey, loCaseInsensitive]);
end;

procedure TFConsProVegISO.mskAPExit(Sender: TObject);
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Produto foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;
end;

procedure TFConsProVegISO.mskAPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (key = VK_RETURN) or (key = VK_DOWN) then
    SelectNext(twincontrol(sender), true, true);
  if (key = VK_UP) then
    SelectNext(twincontrol(sender), false, true);
end;

procedure TFConsProVegISO.mskAPKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13, ',', '.']) then key := #0;
  if key = '.' then key := ',';
end;

procedure TFConsProVegISO.mskFormaExit(Sender: TObject);
begin
  mskSeqGrupo.SetFocus;
end;

procedure TFConsProVegISO.mskRSExit(Sender: TObject);
var Pesq : TPesq_RR_TPINDRESTPROD;
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Produto foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;

  if trim(TMaskEdit(Sender).Text) <> '' then begin
    Pesq := TPesq_RR_TPINDRESTPROD.Create;
    Pesq.PesquisaRR_TPINDRESTPROD(trim(TMaskEdit(Sender).Text));
    TMaskEdit(Sender).Text := vartostr(Pesq.COD_RIP);
    MaskEdit7.Text := vartostr(Pesq.DESCR_RIP);
    FreeAndNil(Pesq);
  end;
end;

procedure TFConsProVegISO.mskSeqGrupoExit(Sender: TObject);
begin
  mskRS.SetFocus;
end;

procedure TFConsProVegISO.mskUNExit(Sender: TObject);
var Pesq : TPesq_RR_TPUNIDPROD;
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Produto foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;

  if trim(TMaskEdit(Sender).Text) <> '' then begin
    Pesq := TPesq_RR_TPUNIDPROD.Create;
    Pesq.PesquisaRR_TPUNIDPROD(trim(TMaskEdit(Sender).Text));
    TMaskEdit(Sender).Text := vartostr(Pesq.COD_RUP);
    MaskEdit6.Text := vartostr(Pesq.DESCR_RUP);
    FreeAndNil(Pesq);
  end;

  if tag = 1 then mskForma.SetFocus;
end;

procedure TFConsProVegISO.SpeedButton1Click(Sender: TObject);
var Pesq : TPesq_RR_TPINDRESTPROD;
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Produto foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;

  Pesq := TPesq_RR_TPINDRESTPROD.Create;
  if Pesq.BotaoRR_TPINDRESTPROD then begin
    mskRS.Text := vartostr(Pesq.COD_RIP);
    MaskEdit7.Text := vartostr(Pesq.DESCR_RIP);
  end;
  FreeAndNil(Pesq);  
end;

procedure TFConsProVegISO.SpeedButton2Click(Sender: TObject);
var Pesq : TPesq_RR_TPUNIDPROD;
begin
  if cdsCons.IsEmpty then begin
    dm.msg.MessageDlg('Nenhum Produto foi Selecionado.',mtInformation,[mbok],0);
    msk1.SetFocus;
  end;

  Pesq := TPesq_RR_TPUNIDPROD.Create;
  if Pesq.BotaoRR_TPUNIDPROD then begin
    mskUN.Text := vartostr(Pesq.COD_RUP);
    MaskEdit6.Text := vartostr(Pesq.DESCR_RUP);
  end;
  FreeAndNil(Pesq);  
end;

procedure TFConsProVegISO.BtnAnteriorClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Prior;
end;

procedure TFConsProVegISO.BtnConfirmaClick(Sender: TObject);
begin
  {if PQtd.Visible then
    if cds.IsEmpty then begin
      dm.msg.MessageDlg('Para confirmar é necessário que seja selecionado pelo menos um item.', mtInformation, [mbok], 0);
      exit;
    end;}

  ModalResult := mrOk;
end;

procedure TFConsProVegISO.btnMaisClick(Sender: TObject);
begin
  if cdsCons.IsEmpty then exit;

  if trim(mskAP.Text) = '' then begin
    dm.msg.MessageDlg('Informe a Área Plantada.',mtinformation,[mbok],0);
    mskAP.SetFocus;
    exit;
  end;

  if trim(mskAC.Text) = '' then begin
    dm.msg.MessageDlg('Informe a Área Colhida.',mtinformation,[mbok],0);
    mskAC.SetFocus;
    exit;
  end;

  if trim(mskQC.Text) = '' then begin
    dm.msg.MessageDlg('Informe a Quantidade Colhida.',mtinformation,[mbok],0);
    mskQC.SetFocus;
    exit;
  end;

  if trim(mskUN.Text) = '' then begin
    dm.msg.MessageDlg('Informe a Unidade de Medida.',mtinformation,[mbok],0);
    mskUN.SetFocus;
    exit;
  end;

  if Tag = 1 then begin
    if trim(mskForma.Text) = '' then begin
      dm.msg.MessageDlg('Informe a Forma de Exploração.',mtinformation,[mbok],0);
      mskForma.SetFocus;
      exit;
    end;

    if trim(mskSeqGrupo.Text) = '' then begin
      dm.msg.MessageDlg('Informe a Sequência de Consórcio ou Rotação.',mtinformation,[mbok],0);
      mskSeqGrupo.SetFocus;
      exit;
    end;
  end;

  GravaTMP(1,                                                 // ID,
           cdsCons.FieldValues['COD_RPR'],                    // COD_PRO,
           cdsCons.FieldValues['DESCR_RPR'],                  // PRODUTO,
           iif(trim(mskAP.Text)='', 1, trim(mskAP.Text)),     // AREAPLAN,
           iif(trim(mskAC.Text)='', 1, trim(mskAC.Text)),     // AREACOLH,
           iif(trim(mskQC.Text)='', 0, trim(mskQC.Text)),     // QTDCOLH,
           iif(trim(mskUN.Text)='', NULL, trim(mskUN.Text)),  // CODUNI,
           MaskEdit6.Text,                                    // DUNI
           iif(trim(mskRS.Text)='', NULL, trim(mskRS.Text)),  // CODRES
           MaskEdit7.Text,                                    // DRES
           iif(trim(mskForma.Text)='', NULL, trim(mskForma.Text)), // FEXP
           iif(trim(mskSeqGrupo.Text)='', 0, trim(mskSeqGrupo.Text))); // SEQG

  mskAP.Clear;
  mskAC.Clear;
  mskQC.Clear;
  mskUN.Clear;
  MaskEdit6.Clear;
  mskRS.Clear;
  MaskEdit7.Clear;
  mskForma.Text := '';
  mskSeqGrupo.Clear;
end;

procedure TFConsProVegISO.btnMenosClick(Sender: TObject);
begin
  if cds.IsEmpty then exit;
  cds.Delete;

  mskAP.Clear;
  mskAC.Clear;
  mskQC.Clear;
  mskUN.Clear;
  MaskEdit6.Clear;
  mskRS.Clear;
  MaskEdit7.Clear;
  mskForma.Text := '';
  mskSeqGrupo.Clear;
end;

procedure TFConsProVegISO.BtnPrimeiroClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.First;
end;

procedure TFConsProVegISO.BtnProximoClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Next;
end;

procedure TFConsProVegISO.BtnUltimoClick(Sender: TObject);
begin
  if cdsCons.Active then cdsCons.Last;
end;

procedure TFConsProVegISO.cdsConsAfterClose(DataSet: TDataSet);
begin
  BtnConfirma.Visible := False;
end;

procedure TFConsProVegISO.cdsConsAfterOpen(DataSet: TDataSet);
begin
  BtnConfirma.Visible := True;
end;

procedure TFConsProVegISO.cdsConsAfterScroll(DataSet: TDataSet);
begin
  if not cdsCons.IsEmpty then 
    DBMemo1.Visible := (not cdsCons.FieldByName('OBS_RPR').IsNull);
end;

procedure TFConsProVegISO.BtnSairClick(Sender: TObject);
begin
  close;
end;

end.
