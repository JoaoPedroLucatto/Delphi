unit UMudaCadastroRural;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, RzPanel, StdCtrls, Mask, Buttons, RzBckgnd,
  EMsgDlg;

type
  TFMudaCadastroRural = class(TForm)
    RzBackground1: TRzBackground;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    spCadastro1: TSpeedButton;
    msk1: TMaskEdit;
    msk2: TMaskEdit;
    RzPanel2: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    BtnSair: TRzBitBtn;
    msg: TEvMsgDlg;
    procedure BtnSairClick(Sender: TObject);
    procedure spCadastro1Click(Sender: TObject);
    procedure msk1Enter(Sender: TObject);
    procedure msk1Exit(Sender: TObject);
    procedure msk1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure msk2Exit(Sender: TObject);
    procedure GravaLOGAlteraoCadastral;
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMudaCadastroRural: TFMudaCadastroRural;

implementation

uses UDM, TrataErros, funcoes, UPrin, UClasse_PesqRur;

{$R *.dfm}

procedure TFMudaCadastroRural.GravaLOGAlteraoCadastral;
var Marcados : TStringList;
    i : integer;
begin
  Marcados := TStringList.Create;
  Marcados.Add('------------------ PARÂMETROS ---------------------');
  Marcados.Add('CADASTRO ANTIGO: '+ MSK1.TEXT);
  Marcados.Add('CADASTRO NOVO: '+ MSK2.TEXT);
  dm.Sia_Log_Execucao(Sia_Usuario, 'ALTERACAO CADASTRO RURAL', Marcados);
  FreeAndNil(Marcados);
end;

procedure TFMudaCadastroRural.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFMudaCadastroRural.msk1Enter(Sender: TObject);
begin
 msk1.MaxLength := TamanhoMascara('RUR', SIA_Empresa);
 If trim(msk1.Text)<>'' Then msk1.Text := TiraCaracter(msk1.Text);
end;

procedure TFMudaCadastroRural.msk1Exit(Sender: TObject);
var Pesq : TPesq_Rural;
begin
  msk1.MaxLength := 0;
  If trim(msk1.Text) <> '' Then begin
    Pesq := TPesq_Rural.Create;
    Pesq.PesquisaRural(msk1.Text);
    msk1.Text := TiraCaracter(vartostr(Pesq.CADASTRO));
    msk1.Text := MontaMascara(msk1.Text, 'RUR', SIA_Empresa);
   FreeAndNil(Pesq);
  end;
end;

procedure TFMudaCadastroRural.msk1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = 40) then SelectNext(twincontrol(sender), true, true);
  if (key = 38) then SelectNext(twincontrol(sender), false, true);
end;

procedure TFMudaCadastroRural.msk2Exit(Sender: TObject);
begin
  if trim(msk2.text)<>'' then begin
    msk2.Text := TiraCaracter(msk2.Text);
    msk2.Text := MontaMascara(msk2.Text, 'RUR', SIA_Empresa);
    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('SELECT COD_RRR FROM RR_CAD_RURAL '+
                          'WHERE COD_EMP_RRR='+Sia_Empresa+' AND COD_RRR='''+msk2.text+'''');
    dm.qrAtualiza.open;
    if not dm.qrAtualiza.IsEmpty then
    begin
       msg.MessageDlg('Esse cadastro já Existe !!',mtInformation,[mbok],0);
       msk2.setfocus;
       exit;
    end;
    dm.qrAtualiza.close;
  end;
end;

procedure TFMudaCadastroRural.RzBitBtn2Click(Sender: TObject);
begin
  if (trim(msk1.text)<>'') and (trim(msk2.Text)<>'')then begin
    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE RR_CAD_RURAL SET COD_RRR = '''+ msk2.text +''' '+
                          'WHERE COD_EMP_RRR = '+ Sia_Empresa +
                           ' AND COD_RRR = '''+ msk1.text +'''');
    dm.qrAtualiza.execsql;

    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE OU_DIVERSO SET CADAST_ODV = '''+msk2.text+''' '+
                          'WHERE COD_EMP_ODV = '+ Sia_Empresa +
                           ' AND CADAST_ODV = '''+ msk1.text +''''+
                           ' AND COD_MOD_ODV = 4');
    dm.qrAtualiza.execsql;

    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE OU_INFRACAO SET COD_ORIG_OIF = '''+msk2.text+''' '+
                          'WHERE COD_EMP_OIf = '+ Sia_Empresa +
                           ' AND COD_ORIG_OIF = '''+ msk1.text +''''+
                           ' AND COD_MOD_OIF = 4');
    dm.qrAtualiza.execsql;

    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE FI_DIVIDA SET COD_CAD_DIV = '''+ msk2.text +''' '+
                          'WHERE COD_EMP_DIV = '+ Sia_Empresa +
                           ' AND COD_MOD_DIV = 4 '+
                           ' AND COD_CAD_DIV = '''+ msk1.text +'''');
    dm.qrAtualiza.execsql;

    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE FI_LANCAMENTO SET COD_CAD_LAN = '''+ msk2.text +''' '+
                          'WHERE COD_EMP_LAN = '+ Sia_Empresa +
                           ' AND COD_MOD_LAN = 4 '+
                           ' AND COD_CAD_LAN = '''+ msk1.text +'''');
    dm.qrAtualiza.execsql;

    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE GR_CERTIDAOCONTROLE SET MATRICULAIMOVEL = '''+ msk2.text +''' '+
                          'WHERE CODEMPRESA = '+ Sia_Empresa +
                           ' AND CODMODULO = 4 '+
                           ' AND MATRICULAIMOVEL = '''+ msk1.text +'''');
    dm.qrAtualiza.execsql;

    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE AG_CADSS SET COD_CAD_CSS='''+ msk2.text +''''+
                          'WHERE COD_EMP_CSS = '+ Sia_Empresa +
                           ' AND COD_MOD_CSS = 4 '+
                           ' AND COD_CAD_CSS = '''+ msk1.text +'''');
    dm.qrAtualiza.execsql;

    dm.qrAtualiza.close;
    dm.qrAtualiza.sql.clear;
    dm.qrAtualiza.sql.add('UPDATE GR_HISTORICOS SET COD_ORIG_GHI = '+''''+ msk2.text +''''+
                         ' WHERE COD_EMP_GHI ='+ Sia_Empresa +
                         ' AND COD_ORIG_GHI ='+''''+ msk1.text +''''+
                         ' AND ORIGEM_GHI = ''RRR'' ');
    dm.qrAtualiza.execsql;

    GravaLOGAlteraoCadastral;
    msg.MessageDlg('Cadastro alterado com sucesso.!!!',mtConfirmation, [mbok], 0);
  end;
end;

procedure TFMudaCadastroRural.spCadastro1Click(Sender: TObject);
var Pesq : TPesq_Rural;
begin
  Pesq := TPesq_Rural.Create;
  if Pesq.BotaoRural then msk1.Text := vartoStr(Pesq.CADASTRO);
  FreeAndNil(Pesq);
end;

end.
