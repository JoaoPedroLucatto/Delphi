program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Cad_Materia_Prima in 'Cad_Materia_Prima.pas' {Form2},
  MenuBarButtons in 'MenuBarButtons.pas' {Frame3: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
