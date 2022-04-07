unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls, ShellApi;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    Button3: TButton;
    DialogFile: TOpenDialog;
    MemoArqui: TMemo;
    Total: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//LE O ARQUIVO INTEIRO E JOGA NO MEMO
procedure TForm1.Button1Click(Sender: TObject);
begin
  DialogFile.Execute();
  MemoArqui.Clear;
  MemoArqui.Lines.LoadFromFile(DialogFile.FileName);
end;



//PEGA O NOSSO NUMERO
procedure TForm1.Button2Click(Sender: TObject);
  var
    linha, dirarqui, aux : string;
    arquivo : TextFile;
    countArquivo: TStringList;
    Nlinha: Integer;

begin
  dirarqui:= DialogFile.FileName;
  AssignFile(arquivo, dirarqui);
  {$I-}
  Reset(arquivo);
  {$I+}
  if(IOResult <> 0)then
  begin

    ShowMessage('Erro ao abrir o Arquivo');

  end

  else
  begin

    MemoArqui.Clear;
    ProgressBar1.Position:= 0;
    countArquivo:= TStringList.Create;

    try

      countArquivo.LoadFromFile(dirarqui);
      Nlinha:=countArquivo.Count;

    finally

      FreeAndNil(countArquivo);

    end;

    Total.Caption:= VarToStr(Nlinha);
    ProgressBar1.Max:= Nlinha;

    while (not eof(arquivo)) do
    begin
      Readln(arquivo, linha);

      if(linha.Substring(0,14).Substring(13,14).Equals('T'))then
      begin

        MemoArqui.Lines.Add(linha.Substring(51,6));

      end;

      ProgressBar1.Position:= ProgressBar1.Position + 1;

    end;

    ShowMessage('Dados Filtrados !');

  end;

end;





//CLOSE
procedure TForm1.Button3Click(Sender: TObject);
begin

  close;

end;

end.
