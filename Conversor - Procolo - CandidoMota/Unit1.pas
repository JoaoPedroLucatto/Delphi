unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Data.DBXFirebird, Data.SqlExpr, Data.FMTBcd;

type
  TForm1 = class(TForm)
    Connection_Origem: TADOConnection;
    QLocais_Origem: TADOQuery;
    Q_Pessoa_Origem: TADOQuery;
    ProgressBar1: TProgressBar;
    Converter: TButton;
    Connection_Destino: TSQLConnection;
    Q_Setor_Destino: TSQLQuery;
    Q_Contribuinte_Destino: TSQLQuery;
    Q_Protocolo_Destino: TSQLQuery;
    Q_Protocolo_Origem: TADOQuery;
    Q_Assunto_Destino: TSQLQuery;
    Q_MAX_ITEM_PROTOCOLO: TSQLQuery;

    procedure InsertSetorDestino();
    procedure ConverterClick(Sender: TObject);

    function InsertContribuinte():variant;
    function InsertAssunto():variant;
    function InserProtocoloDestino():variant;

    function TrataDadosSize(valor, size:variant): String;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses

System.StrUtils;

//trata dados
function TForm1.TrataDadosSize(valor, size: Variant):String;
var dado: String;
    tamanho: integer;
begin

  dado:= VarToStr(valor);
  tamanho:= size;
  if dado.Length >= tamanho then
  begin
    dado:= Copy(dado, 0, tamanho);
  end;

  Result:=dado;
end;




procedure TForm1.ConverterClick(Sender: TObject);
begin
  InsertContribuinte;
  InsertSetorDestino;
  InserProtocoloDestino;
end;



//convert Asunto - se precisar
function TForm1.InsertAssunto():variant;
begin

  Q_Protocolo_Origem.Close;
  Q_Protocolo_Origem.Open;

  while not Q_Protocolo_Origem.Eof do
  begin

    Q_Assunto_Destino.Close;
    Q_Assunto_Destino.SQL.Clear;

    Q_Assunto_Destino.SQL.Text:='INSERT INTO SE_ASSUNTO (COD_EMP_ASU, COD_ASU, DESCRICAO_ASU, LOGIN_INC_ASU) VALUES' +
                                '(' +QuotedStr('1')+
                                ',' +QuotedStr(TrataDadosSize(Q_Protocolo_Origem.FieldByName('ASSUNTO').Value, 250))+
                                ',' +QuotedStr('ONVERS?O')+')';

    Q_Assunto_Destino.ExecSQL();

    Q_Protocolo_Origem.Next;
  end;

  ShowMessage('Assuntos Convertidos');

  end;



//convert Protocolos
function TForm1.InserProtocoloDestino():Variant;
var ANO, NRProtocolo, DATA, HORA:String;
    I :Integer;
begin

  Q_Protocolo_Origem.Close;
  Q_Protocolo_Origem.Open;

  ProgressBar1.Max:= Q_Protocolo_Origem.RecordCount;
  while not Q_Protocolo_Origem.Eof do
  begin

    Q_Protocolo_Destino.Close;
    Q_Protocolo_Destino.SQL.Clear;
    Q_Protocolo_Destino.SQL.Text:='';

    ANO:= Copy(Q_Protocolo_Origem.FieldByName('CODIGO').Value, Pos('/', Q_Protocolo_Origem.FieldByName('CODIGO').Value) + 1, 4);
    NRProtocolo:= LeftStr(Q_Protocolo_Origem.FieldByName('CODIGO').Value, Length(Q_Protocolo_Origem.FieldByName('CODIGO').Value) -5);
    DATA:= FormatDateTime('yyy.MM.dd' , StrToDateTime(Copy(Q_Protocolo_Origem.FieldByName('DATA_HORA').Value, 1, 10)));
    HORA:= Copy(Q_Protocolo_Origem.FieldByName('DATA_HORA').Value, 12, 23);

    Q_Protocolo_Destino.SQL.Text:= 'INSERT INTO SE_PPROTOCOLO (COD_EMP_PRT, CODIGO_PRT, EXERCICIO_PRT, DATA_PRT, HORA_PRT, ASSUNTO_PRT, DADOS_PRT, SETOR_PRT, INTERESSADO_PRT, TIPO_PRT, SIGILO_PRT, MATERIA_TIPO_PRT, LOGIN_INC_PRT) VALUES' +
                                    '('+QuotedStr('1')+
                                    ','+NRProtocolo+
                                    ','+QuotedStr(ANO)+
                                    ','+QuotedStr(DATA)+
                                    ','+QuotedStr(HORA)+
                                    ','+QuotedStr(TrataDadosSize(Q_Protocolo_Origem.FieldByName('ASSUNTO').Value, 250))+
                                    ','+QuotedStr(Q_Protocolo_Origem.FieldByName('ASSUNTO').Value)+
                                    ','+Q_Protocolo_Origem.FieldByName('T_LOCAIS_CODIGO_ORIGEM').Value+
                                    ','+Q_Protocolo_Origem.FieldByName('T_PESSOAS_CODIGO_ORIGEM').Value+
                                    ','+Q_Protocolo_Origem.FieldByName('T_ESPECIE_CODIGO').Value+
                                    ','+QuotedStr('N')+
                                    ','+QuotedStr(TrataDadosSize(Q_Protocolo_Origem.FieldByName('T_LOCAIS_DESCRICAO_ORIGEM').Value, 15))+
                                    ','+QuotedStr('COMVERSAO')+ ')';
   Q_Protocolo_Destino.ExecSQL();

   Q_Protocolo_Destino.Close;
   Q_Protocolo_Destino.SQL.Text:='';

//   Q_MAX_ITEM_PROTOCOLO.Params[0].AsString:= NRProtocolo;
///   Q_MAX_ITEM_PROTOCOLO.Params[1].AsString:= ANO;
//   Q_MAX_ITEM_PROTOCOLO.Open;

//   ShowMessage(Q_MAX_ITEM_PROTOCOLO.FieldByName('MAX').Value);

   Q_Protocolo_Destino.SQL.Text:= 'INSERT INTO SE_PTRAMITE(COD_EMP_PTR,'+
                                                           'CODIGO_PTR,' +
                                                           'EXERCICIO_PTR,'+
                                                            'ITEM_PTR,'+
                                                            'SETOR_ANT_PTR,'+
                                                            'SETOR_ATU_PTR,'+
                                                            'DATA_PTR,'     +
                                                            'HORA_PTR,'     +
                                                            //'RELATOR_PTR,' +
                                                            'RECEBIDO_PTR,' +
                                                            'ABERTO_PTR,'   +
                                                            'LOGIN_INC_PTR,'+
                                                            'DTA_INC_PTR,' +
                                                            'DATA_ENVIO_PTR,' +
                                                            'HORA_ENVIO_PTR,' +
                                                            'DATA_REC_PTR,' +
                                                           // 'ULTIMO, '        +
                                                           // 'ORDEM_ROTA_PRT,' +
                                                            'EXCLUIDO_PTR'    +
                                                            ') VALUES' +
                                                                    '('+QuotedStr('1')+
                                                                    ','+NRProtocolo+
                                                                    ','+QuotedStr(ANO)+
                                                                    ','+QuotedStr('1')+
                                                                    ','+QuotedStr(Q_Protocolo_Origem.FieldByName('T_LOCAIS_CODIGO_ORIGEM').Value)+
                                                                    ','+QuotedStr(Q_Protocolo_Origem.FieldByName('T_LOCAIS_CODIGO_DESTINO').Value)+
                                                                    ','+QuotedStr(DATA)+
                                                                    ','+QuotedStr(HORA)+
                                                                   // ','+QuotedStr('CONVERS?O')+
                                                                    ','+QuotedStr('1')+
                                                                    ','+QuotedStr('0')+
                                                                    ','+QuotedStr('CONVERS?O')+
                                                                    ','+QuotedStr(DATA)+
                                                                    ','+QuotedStr(DATA)+
                                                                    ','+QuotedStr(HORA)+
                                                                    ','+QuotedStr(DATA)+
                                                                    //','++
                                                                    //','++
                                                                    ','+QuotedStr('N')+ ');';

   Q_Protocolo_Destino.ExecSQL();
   Q_Protocolo_Origem.Next;

   ProgressBar1.Position:= ProgressBar1.Position +1;

  end;

   ShowMessage('PROTOCOLOS CONVERTIDOS');

end;





//covnert contribuinte
function TForm1.InsertContribuinte():Variant;
begin

  Q_Pessoa_Origem.Close;
  Q_Pessoa_Origem.Open;

  while not Q_Pessoa_Origem.Eof do
  begin

    Q_Contribuinte_Destino.Close;
    Q_Contribuinte_Destino.SQL.Clear;

    Q_Contribuinte_Destino.SQL.Text:= 'INSERT INTO GR_CONTRIBUINTES (COD_EMP_CNT, COD_CNT, NOME_CNT, LOGIN_INC_CNT) VALUES '+
                                                                   '(' +QuotedStr('1' )+
                                                                   ',' +Q_Pessoa_Origem.FieldByName('CODIGO').Value+
                                                                   ',' +QuotedStr(Q_Pessoa_Origem.FieldByName('DESCRICAO').Value)+
                                                                   ',' +QuotedStr('COVNERSAO')+ ')';
    Q_Contribuinte_Destino.ExecSQL();
    Q_Pessoa_Origem.Next;

  end;

  if Q_Contribuinte_Destino.RowsAffected > StrToInt('0') then
  begin
    ShowMessage('Contribuintes Convertidos !');
  end
  else
  begin
    ShowMessage('Error ao Converter Contribuintes');
    Exit;
  end;

end;



//convert setores
procedure TForm1.InsertSetorDestino;
begin

 QLocais_Origem.Close;
 QLocais_Origem.Open;
 QLocais_Origem.ExecSQL();

 while not QLocais_Origem.Eof do
 begin

  Q_Setor_Destino.Close;
  Q_Setor_Destino.SQL.Clear;
  Q_Setor_Destino.SQL.Text:= 'INSERT INTO SE_SETOR (COD_EMP_SET, COD_SET, DESCRICAO_SET, SIGLA_SET, LOGIN_INC_SET, ATIVADO_SET) VALUES ' +
                                                  '(' +'1' + ',' + QLocais_Origem.FieldByName('CODIGO').Value + ',' + QuotedStr(QLocais_Origem.FieldByName('DESCRICAO').Value) + ',' + QuotedStr('ttt') + ',' + QuotedStr('CONVERS?O') + ',' + QuotedStr('S') + ')';
  Q_Setor_Destino.ExecSQL();

  QLocais_Origem.Next;
 end;

  if Q_Setor_Destino.RowsAffected > 0 then
  begin
    ShowMessage('Setores Convertidos');
  end
  else
  begin
    ShowMessage('Erro ao Converter os Setores !');
    Exit;
  end;

end;




end.
