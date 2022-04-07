program Project1;

uses
  Vcl.Forms,
  UiPrincipal in 'UiPrincipal.pas' {Form1},
  cadTelas in 'cadTelas.pas' {Frame2: TFrame},
  DM in 'DM.pas' {DataModule1: TDataModule},
  UiRelMat in 'UiRelMat.pas' {UiRelMateriaPrima};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TUiRelMateriaPrima, UiRelMateriaPrima);
  Application.Run;
end.
