program Conversao;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {Tfrmprincipal_Conversao},
  Udm in 'Udm.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTfrmprincipal_Conversao, Tfrmprincipal_Conversao);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
