unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  QuickRpt, QRCtrls, qrpBaseCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    CaminhoSalvar: TLabeledEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function GeraPDFs(): String;
    function criarAqui(cpf: variant): string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin

  if OpenDialog1.FileName <> '' then
  begin

    GeraPDFs();

  end
  else
  begin
     ShowMessage('Carrege o Arquivo !');
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  OpenDialog1.Execute();
  Label1.Caption:= ExtractFileName(OpenDialog1.FileName);

end;


function TForm1.GeraPDFs;
  var
    linha, dirarqui, aux, cpf: string;
    arquivo, local: TextFile;
    countArquivo: TStringList;
    Nlinha: Integer;
begin
  dirarqui:= OpenDialog1.FileName;
  AssignFile(arquivo, dirarqui);
  {$I-}
  Reset(arquivo);
  {$I+}
  if IOResult <> 0 then
  begin

    ShowMessage('Erro ao abrir arquivo');

  end

  else
  begin

    ProgressBar1.Position:= 0;
    countArquivo:= TStringList.Create;

    try

      countArquivo.LoadFromFile(dirarqui);
      Nlinha:= countArquivo.Count;
      ProgressBar1.Max:= Nlinha;
      CaminhoSalvar.Text:= CaminhoSalvar.Text;

    finally

      FreeAndNil(countArquivo);
    end;

    while (not (eof(arquivo))) do
    begin

      Readln(arquivo, linha);
      cpf:= linha.Substring(0,11);

      criarAqui(cpf);

      ProgressBar1.Position:= ProgressBar1.Position + 1;

    end;

    ShowMessage('Processo Finalizado !');

  end;

end;


function TForm1.criarAqui(cpf: Variant): String;
var
  arqui_cpf : TextFile;
  caminho_salvar: String;
begin

  caminho_salvar:= CaminhoSalvar.Text +cpf+ '.txt';

  if not FileExists(caminho_salvar) then
  begin
    AssignFile(arqui_cpf, caminho_salvar);

    Rewrite(arqui_cpf);
    Writeln(arqui_cpf, cpf);

    CloseFile(arqui_cpf);
  end
  else
  begin
    ShowMessage('Arquivo Existente: ' +caminho_salvar);
  end;

end;

end.
