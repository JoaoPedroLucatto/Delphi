unit UiRelMat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TUiRelMateriaPrima = class(TForm)
    PRelMateriaPrima: TPanel;
    ComboBox1: TComboBox;
    BtImprimirMateriaPrima: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UiRelMateriaPrima: TUiRelMateriaPrima;

implementation

{$R *.dfm}



end.
