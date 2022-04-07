program Conversao;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UnitFuncoes in 'UnitFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
