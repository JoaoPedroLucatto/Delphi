unit URelTransfProp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, URelGenericoSimples, RzShellDialogs, frxDesgn, EMsgDlg,
  RzButton, StdCtrls, ExtCtrls, RzBckgnd, RzPanel, FMTBcd, frxClass, DB,
  DBClient, Provider, SqlExpr, frxDBSet;

type
  TFRelTransfProp = class(TFRelGenericoSimples)
    DBEmpresa: TfrxDBDataset;
    sql: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    ds: TDataSource;
    DBDados: TfrxDBDataset;
    Relatorio: TfrxReport;
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnLayoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RelatorioBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelTransfProp: TFRelTransfProp;
  LoadFile, Original:Boolean;
  CODRTP : string;

Implementation

Uses UDM, Funcoes, TrataErros, UPrin, URelatorios;

{$R *.dfm}

procedure TFRelTransfProp.BtnConfirmaClick(Sender: TObject);
var filtro, onde : string;
begin
  inherited;
  filtro := '';
  If GR.ItemIndex=0 Then onde := ' ORDER BY COD_EMP_RTP, CNTV.NOME_CNT'
  else onde := ' ORDER BY COD_EMP_RTP, COD_RTP';

  if trim(CODRTP) <> '' then filtro := ' AND COD_RTP = '+ CODRTP;

  cds.close;
  sql.CommandText := 'SELECT RR_TRANSPROP.*, '+
                            'CNTV.NOME_CNT NOMEVELHO, '+
                            'CNTV.CNPJ_CNT CPFVELHO, '+
                            'CNTV.RG_CNT RGVELHO, '+
                            'LOGV.NOME_LOG LOGVELHO, '+
                            'VELHO.COMPL_RRR COMPLVELHO, '+
                            'CNTN.NOME_CNT NOMENOVO, '+
                            'LOGN.NOME_LOG LOGNOVO, '+
                            'BAIN.NOME_BAI BAINOVO, '+
                            'CNTN.NUMERO_CNT NRONOVO, '+
                            'CNTN.COMPLE_CNT COMPLNOVO, '+
                            'CNTN.CNPJ_CNT CPFNOVO, '+
                            'CNTN.RG_CNT RGNOVO '+
                     'FROM RR_TRANSPROP '+
                     'INNER JOIN GR_CONTRIBUINTES CNTN ON CNTN.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP '+
                                                     'AND CNTN.COD_CNT = RR_TRANSPROP.COD_CNTN_RTP '+
                     'LEFT JOIN GR_LOGRA LOGN ON LOGN.COD_EMP_LOG = CNTN.COD_EMP_CNT '+
                                            'AND LOGN.COD_LOG = CNTN.COD_LOG_CNT '+
                     'LEFT JOIN GR_BAIRRO BAIN ON BAIN.COD_EMP_BAI = CNTN.COD_EMP_CNT '+
                                             'AND BAIN.COD_BAI = CNTN.COD_BAI_CNT '+
                     'INNER JOIN RR_CAD_RURAL VELHO ON VELHO.COD_EMP_RRR = RR_TRANSPROP.COD_EMP_RTP '+
                                                  'AND VELHO.COD_RRR = RR_TRANSPROP.COD_RRR_ANT_RTP '+
                     'INNER JOIN GR_CONTRIBUINTES CNTV ON CNTV.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP '+
                                                     'AND CNTV.COD_CNT = RR_TRANSPROP.COD_CNTV_RTP '+
                     'LEFT JOIN GR_LOGRA LOGV ON LOGV.COD_EMP_LOG = VELHO.COD_EMP_RRR '+
                                            'AND LOGV.COD_LOG = VELHO.COD_LOG_RRR '+
                     'WHERE RR_TRANSPROP.COD_EMP_RTP = '+ SIA_Empresa + filtro + onde;
  cds.open;

  If Not LoadFile Then Begin
    If (VerLayout(SIA_Aplicacao)<>'') Then
      Relatorio.LoadFromFile(CaminhoDB('RTM')+VerLayout(SIA_Aplicacao));
  End;

  If trim(ImpPadrao) <> '' Then Relatorio.PrintOptions.Printer := ImpPadrao
  Else begin
   try
    if VerImpPadrao <> '' then Relatorio.PrintOptions.Printer := VerImpPadrao;
   except
     messagedlg('Impressora Padrão não Definida.'+#13+'Instale uma Impressora e Defina como Padrão.',mtInformation,[mbok],0);
   end;
  end;

  relatorio.PreviewOptions.AllowEdit:=false;
  relatorio.PreviewOptions.DoubleBuffered:=false;
  relatorio.PreviewOptions.Maximized:=true;
  relatorio.PreviewOptions.MDIChild:=false;
  relatorio.PreviewOptions.Modal:=true;
  relatorio.PreviewOptions.OutlineExpand:=true;
  relatorio.PreviewOptions.ZoomMode:=zmPageWidth;
  relatorio.ReportOptions.Author:=dm.cdsEmpresa.FieldByName('NOME_EMP').AsString;
  relatorio.EngineOptions.UseFileCache:=true;

  If Not VerImpressao Then relatorio.ShowReport(true)
  Else begin
   relatorio.PrepareReport;
   relatorio.Print;
  end;
end;

procedure TFRelTransfProp.BtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFRelTransfProp.BtnLayoutClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFRelatorios, FRelatorios);

  If Not Original Then Begin
    If Not DirectoryExists(CaminhoDB('RTM')+'TMP\') Then
      ForceDirectories(CaminhoDB('RTM')+'TMP\');
    If FileExists(CaminhoDB('RTM')+'TMP\RELTMP_'+SIA_Aplicacao) Then
      DeleteFile(CaminhoDB('RTM')+'TMP\RELTMP_'+SIA_Aplicacao);
    Relatorio.SaveToFile(CaminhoDB('RTM')+'TMP\RELTMP_'+SIA_Aplicacao);
    FRelatorios.Rel_Original.LoadFromFile(CaminhoDB('RTM')+'TMP\RELTMP_'+SIA_Aplicacao);
    Original:=True;
  End
  Else
    FRelatorios.Rel_Original.LoadFromFile(CaminhoDB('RTM')+'TMP\RELTMP_'+SIA_Aplicacao);


  If (FRelatorios.ShowModal=mrOK) Then Begin
    If FileExists(CaminhoDB('RTM')+Selecionado) Then
      LoadFile:=Relatorio.LoadFromFile(CaminhoDB('RTM')+Selecionado);
  End
  Else Begin
    Relatorio.LoadFromFile(CaminhoDB('RTM')+'TMP\RELTMP_'+SIA_Aplicacao);
    LoadFile:=False;
  End;
  FRelatorios.Free;
end;

procedure TFRelTransfProp.FormShow(Sender: TObject);
begin
  inherited;
  LoadFile:=False;
  Original:=False;
end;

procedure TFRelTransfProp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFRelTransfProp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then BtnSair.Click;
end;

procedure TFRelTransfProp.RelatorioBeforePrint(Sender: TfrxReportComponent);
begin
  inherited;
  If Sender.Name = 'lbNomeRelatorio' Then
    (Sender As TfrxMemoView).Text:= 'Relatório de Trasferência de Propriedade';

  If Sender.Name = 'MUsu' Then
    (Sender As TfrxMemoView).Text:= SIA_Usuario;
end;

end.
