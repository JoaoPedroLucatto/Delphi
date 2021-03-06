unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.JSON, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    LabelResquest: TLinkLabel;
    LabelAtualizada: TLinkLabel;
    LabelError: TLinkLabel;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    SQLConnectionSIA: TSQLConnection;
    SQLQuerySN: TSQLQuery;
    procedure Button1Click(Sender: TObject);
    procedure RequestURL(cnpj: variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  URLBase: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var countResquest: integer;
begin
  Memo1.Text:= '';
  countResquest:=0;
  URLBase:= 'https://publica.cnpj.ws/';

   if SQLQuerySN.SQL.Count > 0 then
  begin

      while not SQLQuerySN.Eof do
      begin

       if countResquest <= 3 then
        begin

          countResquest:= countResquest + 1;
          RequestURL(SQLQuerySN.FieldByName('CPF_AUX').Value);
          SQLQuerySN.Next;
          //42872975000150

        end
        else
        begin
          countResquest:= 0;
          Sleep(1200);

        end;

    end

  end
  else
  begin

    ShowMessage('SQL Retornou NULL');

  end;





 // RequestURL('42872975000150');


end;


procedure TForm1.RequestURL(cnpj: variant);
var
  ResquestCount : integer;
  retorno: TJSONObject;
begin

  RESTClient1.BaseURL:= URLBase;
  RESTRequest1.Resource:= 'cnpj/'+cnpj;
  RESTRequest1.Method:= rmGET;
  RESTRequest1.Execute;
  ws:= RESTRequest1.Response.JSONValue as TJSONObject;

  Memo1.Lines.Add(retorno.GetValue('simples').ToJSON);


  //if retorno.GetValue('simples').Value <> ' ' then
  //  begin

  //    ShowMessage('? DO SIMPLES NACIONAL');
 //     Memo1.Lines.Add(RESTResponse1.JSONText);

 //   end;


end;



end.
