unit cadTelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, System.ImageList, Vcl.ImgList;

type
  TFrame2 = class(TFrame)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    btNovo: TToolButton;
    btAlterar: TToolButton;
    btSalvar: TToolButton;
    btExlcuir: TToolButton;
    btCancelar: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


end.
