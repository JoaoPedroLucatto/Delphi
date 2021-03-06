unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.FileCtrl,
  Vcl.ExtDlgs, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    LabeledEditNumeroGuia: TLabeledEdit;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    ButtonFechar: TButton;
    Memo1: TMemo;
    LinkLabel1: TLinkLabel;
    CheckTotalizador: TCheckBox;
    procedure Button1Click(Sender: TObject);
    function AnalisaDAF():String;
    procedure ButtonFecharClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  OpenDialog1.Execute();
  LabeledEdit1.Text:= ExtractFilePath(OpenDialog1.FileName);
  LinkLabel1.Caption:= 'Qtde: ' + OpenDialog1.Files.Count.ToString;


end;


procedure TForm1.Button2Click(Sender: TObject);
begin

  Memo1.Text:= '';
  AnalisaDAF;

end;

procedure TForm1.ButtonFecharClick(Sender: TObject);
begin

  Close;

end;

function TForm1.AnalisaDAF;
var
  arq : TextFile;
  count, Nlinha: Integer;
  linha: string;
  convertFloat, soma, auxSoma: Double;
  conteudo: TStringList;
begin
    ProgressBar1.Position:= 0;
    ProgressBar1.Max:= OpenDialog1.Files.Count;
    soma:=0;

  for count := 0 to OpenDialog1.Files.Count - 1  do
  begin

    AssignFile(arq, OpenDialog1.Files[count]);

    {$I-}
    Reset(arq);
    {$I+}
    if IOResult <> 0 then
    begin

      ShowMessage('Erro ao ler o arquivo: ' +OpenDialog1.Files[count]);

    end
    else
    begin

      if CheckTotalizador.Checked then
      begin

        conteudo:= TStringList.Create;
        conteudo.LoadFromFile(OpenDialog1.Files[count]);
        Nlinha:= conteudo.Count;

        linha:= conteudo[Nlinha - 1].Substring(15,17);
        convertFloat:= ((StrToFloat(linha))/100);
        Memo1.Lines.Add(convertFloat.ToString);

        soma:= soma + convertFloat;

      end;




      //while (not Eof(arq)) do
      //begin

       // Readln(arq, linha);





        //if linha.Substring(461, 17) = trim(LabeledEditNumeroGuia.Text) then
        //begin

        //  Memo1.Text:= ExtractFileName(OpenDialog1.Files[count]);

        //end;

       // ProgressBar1.Position:= ProgressBar1.Position + 1;

      end;


    end;

    Memo1.Lines.Add('--------------------');
    Memo1.Lines.Add('TOTAL: ' + soma.ToString);
    ShowMessage('Varredura Concluida !');

  end;



end.
