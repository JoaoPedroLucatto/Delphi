unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Geral1: TMenuItem;
    MatriaPrima1: TMenuItem;
    Produtos1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure MatriaPrima1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Cad_Materia_Prima;

procedure TForm1.MatriaPrima1Click(Sender: TObject);
begin
  //if Cad_Materia_Prima.TForm2 = nil then
  //begin
      Form2:= TForm2.Create(Self);
      Form2.ShowModal;
  //end;
end;

end.
