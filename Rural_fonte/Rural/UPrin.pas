unit UPrin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, EXPStyle, EFocCol, RzBHints, EMsgDlg, ECripto, RzCommon,
  ImgList, RzGroupBar, StdCtrls, DBCtrls, Buttons, ExtCtrls, ActnList,
  RzStatus, RzPanel, MsgRcvr, uTFSCModulo, UClasse_UsuariosSIA, Grids, DBGrids,
  RzTabs, ComCtrls, RzSplit;

type
  TFPrin = class(TForm)
    Menu: TRzMenuController;
    IMG: TImage;
    Bevel2: TBevel;
    Panel1: TPanel;
    IInicio: TImage;
    Panel3: TPanel;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    btnCalc: TSpeedButton;
    Panel2: TPanel;
    IMeio: TImage;
    DBText1: TDBText;
    Panel4: TPanel;
    x: TImage;
    btnSair: TSpeedButton;
    RzG: TRzGroupBar;
    GTab: TRzGroup;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    GCad: TRzGroup;
    btnImobiliario: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    MainMenu1: TMainMenu;
    Parmetros1: TMenuItem;
    SetordeVencimentos1: TMenuItem;
    abeladeClculos1: TMenuItem;
    ManutenodasClassificaes1: TMenuItem;
    ManutenodasDistnciaPontos1: TMenuItem;
    Configuraes1: TMenuItem;
    Cadastro1: TMenuItem;
    ManutenodoCadastros1: TMenuItem;
    ClculoAnual1: TMenuItem;
    Relatrios1: TMenuItem;
    RolCadastraldoMobilirio1: TMenuItem;
    RoldeLancamentos1: TMenuItem;
    N3: TMenuItem;
    ListagemdosCadastros1: TMenuItem;
    EmissodeGuiasLaserJatodeTinta1: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    Sobre1: TMenuItem;
    RUR_FCadSetorVencRR: TAction;
    RUR_FCadCobranca: TAction;
    RUR_FCadDescontos: TAction;
    SpeedButton9: TSpeedButton;
    Descontos1: TMenuItem;
    CdigosdeCobrana1: TMenuItem;
    N6: TMenuItem;
    RzStatusBar1: TRzStatusBar;
    StsLivre: TRzStatusPane;
    StsUsu: TRzStatusPane;
    StsVersao: TRzStatusPane;
    StsSistema: TRzStatusPane;
    StsTabDef: TRzStatusPane;
    RUR_FCadTabCalculo: TAction;
    RUR_FCadClassifica: TAction;
    RUR_FCadPontos: TAction;
    RUR_FCadConfCalc: TAction;
    N2: TMenuItem;
    RUR_FCadRural: TAction;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    RUR_FCadTransfRR: TAction;
    ransfernciadeProprietrio1: TMenuItem;
    RUR_FCalcRural: TAction;
    RUR_FRelRolRR: TAction;
    RUR_FRelRolLancRR: TAction;
    RUR_FRelEtiquetaRR: TAction;
    RUR_FRelGuiasRR: TAction;
    ImageList1: TImageList;
    MsgReceiver: TMsgReceiver;
    RUR_FExportaLanc: TAction;
    Exportao1: TMenuItem;
    Exportaarquivo1: TMenuItem;
    RUR_FCadObrigRUR: TAction;
    CamposObrigatriosCadProp1: TMenuItem;
    RUR_FMudaCadastroRural: TAction;
    AlteraCadastro1: TMenuItem;
    N4: TMenuItem;
    N7: TMenuItem;
    RUR_FCadRRCRT: TAction;
    PGMenu: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    DBGrid1: TDBGrid;
    Caractersticas1: TMenuItem;
    RUR_FCadZonaFiscalRural: TAction;
    ZonaFiscalRural1: TMenuItem;
    StsExer: TRzStatusPane;
    PainelLEFT: TRzSizePanel;
    Panel6: TPanel;
    TreeMenu: TTreeView;
    Panel7: TPanel;
    edtPesquisa: TEdit;
    SizePanelBotoes: TRzSizePanel;
    Consultas1: TMenuItem;
    N51ConsultadeDbito1: TMenuItem;
    RUR_FConsultaDebito: TAction;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure GTabCanOpen(Sender: TObject; var CanOpen: Boolean);
    procedure GCadCanOpen(Sender: TObject; var CanOpen: Boolean);
    procedure RUR_FCadCobrancaExecute(Sender: TObject);
    procedure RUR_FCadSetorVencRRExecute(Sender: TObject);
    procedure RUR_FCadDescontosExecute(Sender: TObject);
    procedure RUR_FCadTabCalculoExecute(Sender: TObject);
    procedure RUR_FCadClassificaExecute(Sender: TObject);
    procedure RUR_FCadPontosExecute(Sender: TObject);
    procedure RUR_FCadConfCalcExecute(Sender: TObject);
    procedure RUR_FCadRuralExecute(Sender: TObject);
    procedure RUR_FCadTransfRRExecute(Sender: TObject);
    procedure RUR_FCalcRuralExecute(Sender: TObject);
    procedure RUR_FRelRolRRExecute(Sender: TObject);
    procedure RUR_FRelRolLancRRExecute(Sender: TObject);
    procedure RUR_FRelEtiquetaRRExecute(Sender: TObject);
    procedure RUR_FRelGuiasRRExecute(Sender: TObject);
    function MsgReceiverIDMessage(wParam: Word; iParam: Integer): Integer;
    procedure RUR_FExportaLancExecute(Sender: TObject);
    procedure RUR_FCadObrigRURExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RUR_FMudaCadastroRuralExecute(Sender: TObject);
    procedure RUR_FCadRRCRTExecute(Sender: TObject);
    procedure PGMenuChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure RUR_FCadZonaFiscalRuralExecute(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure TreeMenuClick(Sender: TObject);
    procedure TreeMenuCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure RUR_FConsultaDebitoExecute(Sender: TObject);
  private
    { Private declarations }
    recSolicitacao: TFSCModuloSolicitacaoRecord;
    function SolicitaDadosModPrincipal: boolean;
    procedure WMCopyData(var Msg: TWMCopyData); message WM_COPYDATA;
    procedure ChamaHelp(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
    procedure AbreMenu;
    procedure FechaMenu;
    procedure CarregaTrabalhos;
  end;

var
  FPrin: TFPrin;
  act  : integer;
  SIA_Senha, SIA_Usuario, SIA_Empresa, SIA_Aplicacao, SIA_Exercicio, Sia_CnpjCpfUsu,
    SIA_Modulo, SIA_Acao, Sia_PadraoGuia, SIA_CNPJ, SIA_CodPerfil, SIA_CodModulo, Sia_Pais, SIA_PermiteFiscais,
    Sia_TipoUsuario, Sia_dvexercicio, Sia_dvativa, Sia_dvajuizada, MaskMob, SIA_UsuLogin: string;
  SIA_Representante                                                                     : boolean;
  vResposta                                                                             : TFSCPrincipalRespostaRecord;

implementation

uses UDM, USobre, funcoes, funcoesTela, FmxUtils, UCadCobranca, UCadSetorVencRR, UCadDescontos,
  UCadTabCalculo, UCadClassifica, UCadPontos, UCadConfCalc, UCadRural,
  UCadTransfRR, UCalcRural, URelRolRR, URelRolLancRR, URelEtiquetaRR,
  URelGuiasRR, UExportaLanc, UClasse_Principal, UCadObrigRUR,
  UMudaCadastroRural, UCadRRCRT, UCadZonaFiscalRural, UClasse_Debito, UConsultaDebito, UConsultaDivida;

{$R *.dfm}


procedure TFPrin.ChamaHelp(var Msg: TMsg; var Handled: Boolean);
var
  parametros: string;
begin
  if Msg.message = WM_KEYDOWN then begin
    if Msg.wParam = VK_F1 then begin
      if not FileExists(ExtractFilePath(ParamStr(0)) + 'AjudaSia.exe') then begin
        MessageDlg('O Aplicativo [AjudaSia.exe] não foi localizado em ' + ExtractFilePath(ParamStr(0)) + #13 +
          'Atulize o SIA através do Atualizador em [Módulo Principal] menu [Utilitários] opção [5.3 - Atualizações]', mtInformation, [mbok], 0);
      end
      else begin
        parametros := 'ajudasia';
        if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
          parametros := parametros + ' ' + ActiveMDIChild.Name;

        ExecAndWait2(ExtractFilePath(ParamStr(0)) + 'AjudaSia.exe', parametros, SW_ShowNormal); // , False);
      end;
    end;
    if Msg.wParam = VK_F12 then begin
      Application.CreateForm(TFSobre, FSobre);
      FSobre.Suporte;
      FSobre.Free;
    end;
  end;
end;

procedure TFPrin.DBGrid1DblClick(Sender: TObject);
var
  i: integer;
begin
  if dm.cdsMenu.IsEmpty then
    exit;

  for i := 0 to ActionList1.ActionCount - 1 do
    if (trim(ActionList1.Actions[i].Name) = trim(dm.cdsMenu.FieldByName('ACAO_GLC').AsString)) then begin
      TAction(ActionList1.Actions[i]).Execute;
      break;
    end;
end;

procedure TFPrin.RUR_FExportaLancExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFExportaLanc);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  Application.CreateForm(TFExportaLanc, FExportaLanc);
  if dm.Permissao(FExportaLanc, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    SIA_Aplicacao := 'FExportaLanc';
    FExportaLanc.ShowModal;
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
  FExportaLanc.Free;
end;

procedure TFPrin.RUR_FMudaCadastroRuralExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFMudaCadastroRural);
    exit;
  end;

  Application.CreateForm(TFMudaCadastroRural, FMudaCadastroRural);
  if dm.Permissao(FMudaCadastroRural, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then
    FMudaCadastroRural.ShowModal
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
  FMudaCadastroRural.Free;
end;

procedure TFPrin.AbreMenu;
begin
  if screen.Width <= 800 then
    RzG.Visible := True;
end;

procedure TFPrin.FechaMenu;
begin
  if screen.Width <= 800 then
    RzG.Visible := False;
end;

procedure TFPrin.CarregaTrabalhos;
begin
  //
end;

procedure TFPrin.btnSairClick(Sender: TObject);
begin
  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then begin
    ActiveMDIChild.Close;
    ActiveMDIChild.Free;
    AbreMenu;
  end
  else
    Application.Terminate;
end;

procedure TFPrin.WMCopyData(var Msg: TWMCopyData);
begin
  vResposta.Liberacao  := dm.Crip.CriptoHexToText(TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).Liberacao);
  vResposta.Usuario    := TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).Usuario;
  vResposta.Senha      := TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).Senha;
  vResposta.Login      := TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).Login;
  vResposta.Empresa    := TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).Empresa;
  vResposta.Exercicio  := TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).Exercicio;
  vResposta.IDAcaoMenu := TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).IDAcaoMenu;
  vResposta.Perfil     := TFSCPrincipalRespostaRecord(Msg.copyDataStruct.lpData^).Perfil;
end;

function TFPrin.SolicitaDadosModPrincipal: boolean;
var
  copyDataStruct   : TCopyDataStruct;
  HandlePrincipal  : THandle;
  caminho, nomeprin: string;
begin
  caminho  := ExtractFilePath(ParamStr(0));
  nomeprin := 'SIA 7.5 - MÓDULO PRINCIPAL - Atualizado dia ' + DateTimeToStr(FileDateToDateTime(FileAge(caminho + 'sia7.exe')));

  // HandlePrincipal := FindWindow(pWideChar('TFPrin'), nil);
  HandlePrincipal := FindWindow(nil, pWideChar(nomeprin));
  if HandlePrincipal > 0 then begin
    recSolicitacao.handle       := dm.crip.TextToCriptoHex(IntToStr(handle));
    recSolicitacao.data         := dm.crip.TextToCriptoHex(FormatDateTime('dd/mm/yyyy', date));
    recSolicitacao.hora         := dm.crip.TextToCriptoHex(FormatDateTime('hh:nn', time));
    recSolicitacao.requisitante := dm.crip.TextToCriptoHex('RUR');

    copyDataStruct.dwData := 0;
    copyDataStruct.cbData := SizeOf(recSolicitacao);
    copyDataStruct.lpData := @recSolicitacao;
    SendMessage(HandlePrincipal, WM_COPYDATA, Integer(handle), Integer(@copyDataStruct));
    result := True;
  end
  else
    result := False;
end;

procedure TFPrin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fecha_todos_cds(FPrin);
  Action := caFree;
end;

procedure TFPrin.FormCreate(Sender: TObject);
var
  a     : integer;
  Existe: Boolean;
  cUSU  : TUsuSIA;
begin
  if ParamStr(2) = 'menus' then
    exit;

  Application.OnMessage   := ChamaHelp;
  Application.OnException := dm.AppException;

  if ParamStr(2) <> 'design' then begin
    if SolicitaDadosModPrincipal then begin
      if trim(vResposta.Liberacao) <> 'FSCS_LiberaSiaRUR' then begin
        Application.MessageBox('Este programa só pode ser executado pelo Módulo Principal !', 'Atenção', mb_IconError);
        Application.Terminate;
      end;
    end
    else begin
      Application.MessageBox('Este programa só pode ser executado pelo Módulo Principal !', 'Atenção', mb_IconError);
      Application.Terminate;
    end;
  end;

  // pega todos os parametros iniciados com SIA_
  cPrin := TGeral.Create;
  cPrin.PegaParametros_SIA(ParamStr(2), '04 RURAL', 'Rural');
  FreeAndNil(cPrin);

  if SIA_Representante = True then begin
    for a                                     := 0 to ActionList1.ActionCount - 1 do begin
      TAction(ActionList1.Actions[a]).Visible := True;
      TAction(ActionList1.Actions[a]).Enabled := True;
    end;
  end
  else begin
    if (SIA_Acao <> 'P') and (ParamStr(2) <> 'MASTER') and (ParamStr(2) <> 'design') then begin
      for a                                     := 0 to ActionList1.ActionCount - 1 do begin
        TAction(ActionList1.Actions[a]).Enabled := False;
        TAction(ActionList1.Actions[a]).Visible := True;
        TAction(ActionList1.Actions[a]).Enabled := dm.LocalizaPermissoes(SIA_Empresa, SIA_CodPerfil, ActionList1.Actions[a].Name, Existe);

        if not Existe then begin
          SIA_Acao                                := 'P';
          TAction(ActionList1.Actions[a]).Enabled := True;
          act                                     := a;
          TAction(ActionList1.Actions[a]).Execute;
          SIA_Acao := 'X';
        end;
      end;
    end;
  end;

  dm.DadosdoLoginUsuarioSia(Sia_Empresa, Sia_Usuario);
  dm.AbreLogMenu(SIA_Empresa, dm.VerCodUSU(SIA_Usuario), SIA_Modulo, '', '');
end;

procedure TFPrin.FormDestroy(Sender: TObject);
begin
  FPrin := nil;
end;

procedure TFPrin.SpeedButton13Click(Sender: TObject);
begin
  RzG.Visible           := False;
  SpeedButton13.Visible := False;
  SpeedButton12.Visible := True;
end;

procedure TFPrin.SpeedButton12Click(Sender: TObject);
begin
  RzG.Visible           := True;
  SpeedButton12.Visible := False;
  SpeedButton13.Visible := True;
end;

procedure TFPrin.edtPesquisaChange(Sender: TObject);
begin
  FazPesquisaMenu(edtPesquisa.Text, TreeMenu);
end;

procedure TFPrin.TreeMenuClick(Sender: TObject);
begin
  AbreMenuPesquisado(MainMenu1.Items, TreeMenu, PainelLEFT);
end;

procedure TFPrin.TreeMenuCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  with TreeMenu.Canvas do begin
    if cdsSelected in State then begin
      Font.Color  := clBlack;
      Font.Style  := [fsBold];
      Brush.Color := TreeMenu.Color;
    end;
  end;
end;

procedure TFPrin.FormShow(Sender: TObject);
begin
  if ParamStr(2) = 'menus' then
    exit;

  PainelLeft.CloseHotSpot;
  PercorreMenu(MainMenu1.Items, TreeMenu);

  GTab.Close;
  GCad.Close;

  if (SIA_Acao <> 'X') and (SIA_Acao <> 'P') then
    ActionList1.Actions[strtoint(SIA_Acao)].Execute;

  if (SIA_Acao = 'P') then begin
    for act := 0 to ActionList1.ActionCount - 1 do
      ActionList1.Actions[act].Execute;

    Application.Terminate;
  end;

  if VerificaVersaoCritica = False then begin // browser chromium
    Application.Terminate;
    exit;
  end;

  // TrimAppMemorySize; .. para alguns windows isso pesa o sistema
  FPrin.WindowState := wsMaximized;
end;

procedure TFPrin.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
  if trim(Action.Name) <> '' then
    dm.AbreLogMenu(SIA_Empresa, dm.VerCodUSU(SIA_Usuario), SIA_Modulo, Action.Name, dm.LocalizaMenu(FPrin, Action.Name, MainMenu1));

  // TrimAppMemorySize; .. para alguns windows isso pesa o sistema
end;

procedure TFPrin.btnCalcClick(Sender: TObject);
var
  Handle: THandle;
begin
  Handle := FindWindow(nil, pchar('MoffSoft FreeCalc'));
  if Handle <> 0 then begin
    if not IsWindowVisible(Handle) then
      ShowWindow(Handle, SW_SHOWMAXIMIZED);
    SetForegroundWindow(Handle);
    Exit;
  end;
  ExecAndWait(ExtractFilePath(ParamStr(0)) + 'Calculadora\MoffFreeCalc.exe', '', SW_ShowNormal, False);
end;

procedure TFPrin.Sobre1Click(Sender: TObject);
begin
  if (SIA_Acao = 'P') then
    exit;
  Application.CreateForm(TFSobre, FSobre);
  FSobre.ShowModal;
  FSobre.Free;
end;

procedure TFPrin.GTabCanOpen(Sender: TObject; var CanOpen: Boolean);
begin
  GCad.Close;
end;

function TFPrin.MsgReceiverIDMessage(wParam: Word; iParam: Integer): Integer;
begin
  if wParam = 4 then
    ActionList1.Actions[iParam].Execute;
end;

procedure TFPrin.PGMenuChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
begin
  if NewIndex = 1 then begin
    PGMenu.Width := 235;
  end
  else begin
    PGMenu.Width := 147;
  end;
end;

procedure TFPrin.GCadCanOpen(Sender: TObject; var CanOpen: Boolean);
begin
  GTab.Close;
end;

procedure TFPrin.RUR_FCadCobrancaExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadCobranca);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadCobranca, FCadCobranca);
  if dm.Permissao(FCadCobranca, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadCobranca.FormStyle   := fsMDIChild;
    FCadCobranca.WindowState := wsMaximized;
    FCadCobranca.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadCobranca.Free;
  end;
end;

procedure TFPrin.RUR_FCadSetorVencRRExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadSetorVencRR);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadSetorVencRR, FCadSetorVencRR);
  if dm.Permissao(FCadSetorVencRR, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadSetorVencRR.FormStyle   := fsMDIChild;
    FCadSetorVencRR.WindowState := wsMaximized;
    FCadSetorVencRR.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadSetorVencRR.Free;
  end;
end;

procedure TFPrin.RUR_FCadDescontosExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadDescontos);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadDescontos, FCadDescontos);
  if dm.Permissao(FCadDescontos, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadDescontos.FormStyle   := fsMDIChild;
    FCadDescontos.WindowState := wsMaximized;
    FCadDescontos.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadDescontos.Free;
  end;
end;

procedure TFPrin.RUR_FCadObrigRURExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadObrigRUR);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadObrigRUR, FCadObrigRUR);
  if dm.Permissao(FCadObrigRUR, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadObrigRUR.FormStyle   := fsMDIChild;
    FCadObrigRUR.WindowState := wsMaximized;
    FCadObrigRUR.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadObrigRUR.Free;
  end;
end;

procedure TFPrin.RUR_FCadTabCalculoExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadTabCalculo);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadTabCalculo, FCadTabCalculo);
  if dm.Permissao(FCadTabCalculo, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadTabCalculo.FormStyle   := fsMDIChild;
    FCadTabCalculo.WindowState := wsMaximized;
    FCadTabCalculo.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadTabCalculo.Free;
  end;
end;

procedure TFPrin.RUR_FCadClassificaExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadClassifica);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadClassifica, FCadClassifica);
  if dm.Permissao(FCadClassifica, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadClassifica.FormStyle   := fsMDIChild;
    FCadClassifica.WindowState := wsMaximized;
    FCadClassifica.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadClassifica.Free;
  end;
end;

procedure TFPrin.RUR_FCadPontosExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadPontos);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadPontos, FCadPontos);
  if dm.Permissao(FCadPontos, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadPontos.FormStyle   := fsMDIChild;
    FCadPontos.WindowState := wsMaximized;
    FCadPontos.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadPontos.Free;
  end;
end;

procedure TFPrin.RUR_FCadConfCalcExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadConfCalc);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadConfCalc, FCadConfCalc);
  if dm.Permissao(FCadConfCalc, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadConfCalc.FormStyle   := fsMDIChild;
    FCadConfCalc.WindowState := wsMaximized;
    FCadConfCalc.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadConfCalc.Free;
  end;
end;

procedure TFPrin.RUR_FCadRRCRTExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadRRCRT);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadRRCRT, FCadRRCRT);
  if dm.Permissao(FCadRRCRT, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadRRCRT.FormStyle   := fsMDIChild;
    FCadRRCRT.WindowState := wsMaximized;
    FCadRRCRT.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadRRCRT.Free;
  end;
end;

procedure TFPrin.RUR_FCadRuralExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadRural);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadRural, FCadRural);
  if dm.Permissao(FCadRural, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadRural.FormStyle   := fsMDIChild;
    FCadRural.WindowState := wsMaximized;
    FCadRural.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadRural.Free;
  end;
end;

procedure TFPrin.RUR_FCadTransfRRExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadTransfRR);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadTransfRR, FCadTransfRR);
  if dm.Permissao(FCadTransfRR, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadTransfRR.FormStyle   := fsMDIChild;
    FCadTransfRR.WindowState := wsMaximized;
    FCadTransfRR.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadTransfRR.Free;
  end;
end;

procedure TFPrin.RUR_FCadZonaFiscalRuralExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCadZonaFiscalRural);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;
  Application.CreateForm(TFCadZonaFiscalRural, FCadZonaFiscalRural);
  if dm.Permissao(FCadZonaFiscalRural, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCadZonaFiscalRural.FormStyle   := fsMDIChild;
    FCadZonaFiscalRural.WindowState := wsMaximized;
    FCadZonaFiscalRural.Show;
    LockWindowUpdate(0);
  end
  else begin
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
    FCadZonaFiscalRural.Free;
  end;
end;

procedure TFPrin.RUR_FCalcRuralExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFCalcRural);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  Application.CreateForm(TFCalcRural, FCalcRural);
  if dm.Permissao(FCalcRural, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    FCalcRural.chkExp.Checked := True;
    FCalcRural.ShowModal;
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
  FCalcRural.Free;
end;

procedure TFPrin.RUR_FConsultaDebitoExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFConsultaDivida); // Antigo
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFConsultaDebito); // Novo
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;

  ActiveMDIChild.Free;
  LockWindowUpdate(Handle);
  FechaMenu;

  AbreConsultaDebito('', // codigo
    '',                  // Divida
    '4',                 // Modulo
    False,               // Bloqueia Desconto/Parcelamento
    True                 // TelaFilha
    );
end;

procedure TFPrin.RUR_FRelRolRRExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFRelRolRR);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  Application.CreateForm(TFRelRolRR, FRelRolRR);
  if dm.Permissao(FRelRolRR, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    SIA_Aplicacao := 'FRelRolRR';
    FRelRolRR.ShowModal;
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
  FRelRolRR.Free;
end;

procedure TFPrin.RUR_FRelRolLancRRExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFRelRolLancRR);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  Application.CreateForm(TFRelRolLancRR, FRelRolLancRR);
  if dm.Permissao(FRelRolLancRR, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    SIA_Aplicacao := 'FRelRolLancRR';
    FRelRolLancRR.ShowModal;
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
  FRelRolLancRR.Free;
end;

procedure TFPrin.RUR_FRelEtiquetaRRExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFRelEtiquetaRR);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  Application.CreateForm(TFRelEtiquetaRR, FRelEtiquetaRR);
  if dm.Permissao(FRelEtiquetaRR, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    SIA_Aplicacao := 'FRelEtiquetaRR';
    FRelEtiquetaRR.ShowModal;
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
  FRelEtiquetaRR.Free;
end;

procedure TFPrin.RUR_FRelGuiasRRExecute(Sender: TObject);
begin
  if (SIA_Acao = 'P') then begin
    dm.CadastraPermissoes(SIA_Empresa, SIA_CodPerfil, SIA_Modulo, ActionList1, act, TFRelGuiasRR);
    exit;
  end;

  if (ActiveMDIChild <> nil) and (ActiveMDIChild.Visible = true) then
    ActiveMDIChild.Close;
  ActiveMDIChild.Free;
  Application.CreateForm(TFRelGuiasRR, FRelGuiasRR);
  if dm.Permissao(FRelGuiasRR, TAction(Sender).Name, SIA_Empresa, SIA_Usuario, SIA_Modulo, SIA_Representante) then begin
    SIA_Aplicacao := 'FRelGuiasRR';
    FRelGuiasRR.ShowModal;
  end
  else
    dm.msg.MessageDlg('Você não tem permissão para acessar essa aplicação.', mtInformation, [mbok], 0);
  FRelGuiasRR.Free;
end;

procedure TFPrin.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // EVENTO DrawColumnCell
  if odd(tdbgrid(sender).datasource.dataset.RecNo) then begin
    tdbgrid(sender).Canvas.Font.Color  := clBlack;
    tdbgrid(sender).Canvas.Brush.Color := $00E3E8D7;
  end
  else begin
    tdbgrid(sender).Canvas.Font.Color  := clBlack;
    tdbgrid(sender).Canvas.Brush.Color := $00F8FAF5;
  end;
  if (State = [gdSelected]) or (state = [gdFocused]) or (State = [gdSelected, gdFocused]) then
  begin
    TDBGRID(SENDER).canvas.Brush.color := $00CEFFFF;
    TDBGRID(SENDER).Canvas.Font.color  := clBlack;
  end;
  TDBGRID(SENDER).DefaultDrawDataCell(Rect, column.field, state);
end;

procedure TFPrin.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 46) then
    Key := 0;
end;

procedure TFPrin.DBGrid1TitleClick(Column: TColumn);
begin
  with dm.cdsMenu do begin
    application.processmessages;
    IndexFieldNames := column.fieldname;
    if active then
      first;
  end;
end;

end.
