unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    ButtonLocalizar: TButton;
    ProgressBar1: TProgressBar;
    CheckAnalisar: TCheckBox;
    CheckUpdate: TCheckBox;
    DialogFile: TOpenDialog;
    MemoExibi: TMemo;
    LabelNomeArqui: TLabel;
    ButtonAnalisar: TButton;
    DBConnectSIA: TSQLConnection;
    QueryUpdate: TSQLQuery;
    QuerySelect: TSQLQuery;
    procedure ButtonLocalizarClick(Sender: TObject);
    procedure ButtonAnalisarClick(Sender: TObject);
    function analisaDB(linharq: variant): string;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.ButtonAnalisarClick(Sender: TObject);

var
  arquivo: TextFile;
  linha: String;

begin

  AssignFile(arquivo, DialogFile.FileName);
  Reset(arquivo);

  while not Eof(arquivo) do
  begin

    if CheckAnalisar.Checked then
    begin

      CheckUpdate.Checked:= 0;
      analisaDB(ReadLn(arquivo, linha));

    end
    else
    begin

      CheckAnalisar.Checked:= 1;
      updateDB(ReadLn(arquivo, linha));

    end;



  end;



end;

procedure TForm1.ButtonLocalizarClick(Sender: TObject);
begin

  DialogFile.Execute();
  MemoExibi.Clear;
  LabelNomeArqui.Caption:=DialogFile.FileName;

end;

function TForm1.analisaDB(linharq: Variant): string;
begin

  ShowMessage('teste');


end;

end.
