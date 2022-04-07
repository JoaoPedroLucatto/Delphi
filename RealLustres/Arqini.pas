unit Arqini;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IniFiles;


type
  TForm2 = class(TForm)


  procedure LeIni();


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses DM, UiRelMat, MidasLib;

procedure TForm2.LeIni;
var
  Arqini: TIniFile;
  DadosArq: string;
begin

  Arqini:= TIniFile.Create('C:\REAL-LUSTRES\Real.ini');
  try
      DadosArq:= Arqini.ReadString('BANCO', 'Database', 'Erro ao Ler Arquivo ".ini"');
      try

       DM.DataModule1.Connection.Params.AddPair('Database', DadosArq);
       DM.DataModule1.Connection.Open;
      Except
       on E : Exception do

       ShowMessage('Erro Connetion: '+E.Message);

      end;

  finally
    Arqini.Free;
  end;

end;

{$R *.dfm}

end.
