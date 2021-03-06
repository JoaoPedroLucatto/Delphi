unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    dbConectSIS: TSQLConnection;
    dbConectSIA: TSQLConnection;
    QueryLogradouroSIA: TSQLQuery;
    QueryTipoLograSIA: TSQLQuery;
    QueryBairroSIS: TSQLQuery;
    QueryBairroSIA: TSQLQuery;
    QueryTipoLogradouroSIS: TSQLQuery;
    QueryLogradouroSIS: TSQLQuery;
    Button1: TButton;
    Label1: TLabel;
    LabelConvert: TLabel;
    Label2: TLabel;
    SIA: TLabeledEdit;
    SIS: TLabeledEdit;
    codMunicipio: TLabeledEdit;
    CheckTipoLogra: TCheckBox;
    CheckLogra: TCheckBox;
    CheckBairro: TCheckBox;

    function DadosNull(dados: VARIANT): string;
    function TrataDadosSize (valor, size:VARIANT): string;
    function InsertBairroSIS(CD_BAIRRO, DESCRICAO: Variant): string;
    function InsertTipoLograSIS(CD_TIPOLOGR, TIPO: VARIANT): string;
    function InsertLogradouroSIS(CD_LOGRADOURO, CD_TIPOLOGR, NOME, CD_BAIRRO, CEP_LOG: VARIANT): string;
    function SizeBairro(CD_BAIRRO: Variant) : string;

    procedure tipoLogradouroSIA;
    procedure BairroSIA;
    procedure LogradouroSIA;
    procedure Button1Click(Sender: TObject);


  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses

System.StrUtils;

procedure TForm1.Button1Click(Sender: TObject);
begin

   if ((SIS.Text <> '') and (SIA.Text <> '') and (codMunicipio.Text <> '') ) then
   begin

      dbConectSIA.Params.AddPair('Database', SIA.Text);
      dbConectSIS.Params.AddPair('Database', SIS.Text);
      if((CheckTipoLogra.Checked) and (CheckLogra.Checked) and (CheckBairro.Checked))then
      begin
        tipoLogradouroSIA;
        BairroSIA;
        LogradouroSIA;
      end
      else if ((CheckTipoLogra.Checked)) then
      begin
        tipoLogradouroSIA;
      end
      else if((CheckBairro.Checked))then
      begin
       BairroSIA
      end
      else if((CheckLogra.Checked))then
      begin
       LogradouroSIA;
      end
      else if((CheckLogra.Checked) and (CheckBairro.Checked))then
      begin
        BairroSIA;
        LogradouroSIA
      end;

   end
   else
   begin
       ShowMessage('Preencha os campos: SIA, SIS e cod.Munic?pio');
   end;

end;


function Tform1.SizeBairro(CD_BAIRRO: Variant): string;
begin

  Result:= RightStr(StringOfChar('0', 5) + IntToStr(CD_BAIRRO), 5);

end;


function TForm1.TrataDadosSize(valor, size: Variant): string;
  var  dado : string;
  var tamanho : Integer;
begin
  dado:= VarToStr(valor);
  tamanho := size;
  if(dado.Length >= tamanho) then
  begin
    dado:= Copy(dado,0,tamanho);
  end;
  Result:= dado;
end;



function TForm1.DadosNull(dados: VARIANT): string;
  var dadosNull : string;
begin

  dadoSNull:= VarToStr(dados);

  if(dadosNull = '')then
  begin

    dadosNull :='NULL';

  end;

  Result := dadosNull;

end;




//CONVERT TIPO DE LOGRADOURO
function TForm1.InsertTipoLograSIS(CD_TIPOLOGR, TIPO: VARIANT): string;
begin
  QueryTipoLogradouroSIS.Close;
  QueryTipoLogradouroSIS.SQL.Clear;
  QueryTipoLogradouroSIS.SQL.Text :='INSERT INTO TIPOLOGR (CD_TIPOLOGR, TIPO)' +
                                                         'VALUES(' +
                                                          ' '+FloatToStr(CD_TIPOLOGR)+
                                                          ','+QuotedStr(TrataDadosSize(VarToStr(TIPO), 20))+')';
  QueryTipoLogradouroSIS.ExecSQL();
end;



procedure TForm1.tipoLogradouroSIA;
begin
  LabelConvert.Caption:='Convert Tipos de Logradouro....';
  QueryTipoLograSIA.Close;
  QueryTipoLograSIA.SQL.Clear;
  QueryTipoLograSIA.SQL.Add('SELECT COD_TIP_CEP, NOM_TIP_CEP '+
                            ' FROM CEP_TIPOLOGIA');
  QueryTipoLograSIA.Open;

  if(not QueryTipoLograSIA.IsEmpty)then
  begin

    ProgressBar1.Max:= QueryTipoLograSIA.RecordCount;

    while not QueryTipoLograSIA.Eof do
    begin

      Button1.Enabled:= false;
      InsertTipoLograSIS(QueryTipoLograSIA.FieldByName('COD_TIP_CEP').Value,
                        QueryTipoLograSIA.FieldByName('NOM_TIP_CEP').Value);

      ProgressBar1.Position:= ProgressBar1.Position+1;
      QueryTipoLograSIA.Next;

    end;

    ShowMessage('Tipo de Logradouros Inseridos !');

  end

  else
  begin

    ShowMessage('Select N?o Retornou Registro');

  end;
end;
//...........



//CONVERT BAIRRO
function TForm1.InsertBairroSIS(CD_BAIRRO, DESCRICAO: Variant): string;
begin

  QueryBairroSIS.Close;
  QueryBairroSIS.SQL.Clear;
  QueryBairroSIS.SQL.Text:='INSERT INTO REGIAO (CD_BAIRRO, DESCRICAO, CD_MUNICIPIO)'+
                          'VALUES'+
                          '('+QuotedStr(SizeBairro(CD_BAIRRO))+
                          ','+QuotedStr(TrataDadosSize(DESCRICAO, 60))+
                          ','+QuotedStr(codMunicipio.Text)+')';
  QueryBairroSIS.ExecSQL;

end;

procedure TForm1.BairroSIA;
var municipio : String;
begin
    municipio := codMunicipio.Text;
    LabelConvert.Caption:='Convert Bairro....';
    QueryBairroSIA.Close;
    QueryBairroSIA.SQL.Clear;
    QueryBairroSIA.SQL.Text :='SELECT COD_BAI, NOME_BAI FROM GR_BAIRRO WHERE COD_EMP_BAI =1';

    QueryBairroSIA.Open;

    if(not QueryBairroSIA.IsEmpty)then
    begin
      ProgressBar1.Position:=0;
      ProgressBar1.Max:= QueryBairroSIA.RecordCount;

      while not QueryBairroSIA.Eof do
      begin

        InsertBairroSIS(QueryBairroSIA.FieldByName('COD_BAI').Value,+
                        QueryBairroSIA.FieldByName('NOME_BAI').Value);

        ProgressBar1.Position := ProgressBar1.Position + 1;
        QueryBairroSIA.Next;

      end;

      ShowMessage('Bairros Incluidos !');

    end
    else
    begin
      ShowMessage('Select Bairros, n?o ternou registro !');
    end;
end;
//..............



//CONVERT LOGRADOURO
procedure TForm1.LogradouroSIA;
begin

    LabelConvert.Caption:= 'Convert Logradouro...';

    QueryLogradouroSIA.Close;
    QueryLogradouroSIA.SQL.Clear;
    QueryLogradouroSIA.SQL.Text:='select cod_log, cod_tpl_log, nome_log, cod_bair_log, cep_log'+
                                 '    from gr_logra'+
                                 '        where cod_emp_log = 1'+
                                 '            and cod_tpl_log is not null';

    QueryLogradouroSIA.Open;

    if(not QueryLogradouroSIA.IsEmpty) then
    begin

      ProgressBar1.Position:= 0;
      ProgressBar1.Max:= QueryLogradouroSIA.RecordCount;

      while not QueryLogradouroSIA.Eof do
      begin

        InsertLogradouroSIS(QueryLogradouroSIA.FieldByName('COD_LOG').Value,+
                            QueryLogradouroSIA.FieldByName('COD_TPL_LOG').Value,+
                            QueryLogradouroSIA.FieldByName('NOME_LOG').Value,+
                            QueryLogradouroSIA.FieldByName('COD_BAIR_LOG').Value,+
                            QueryLogradouroSIA.FieldByName('CEP_LOG').Value);

        ProgressBar1.Position := ProgressBar1.Position + 1;
        QueryLogradouroSIA.Next;
      end;

      ShowMessage('Logradouro Incluido !!');
      ShowMessage('Convers?o Concluida');
      Exit;

    end;
end;


function TForm1.InsertLogradouroSIS(CD_LOGRADOURO, CD_TIPOLOGR, NOME, CD_BAIRRO, CEP_LOG: variant): string;
begin

  QueryLogradouroSIS.Close;
  QueryLogradouroSIS.SQL.Clear;
  QueryLogradouroSIS.SQL.Text:= 'INSERT INTO RUAS (CD_LOGRADOURO, CD_TIPOLOGR, NOME, CD_BAIRRO, CEP, CD_MUNICIPIO)'+
                                '   VALUES ('+FloatToStr(CD_LOGRADOURO)+
                                ','          +FloatToStr(CD_TIPOLOGR)+
                                ','          +QuotedStr(TrataDadosSize(NOME, 60))+
                                ','          +DadosNull(CD_BAIRRO)+
                                ','          +QuotedStr(DadosNull(CEP_LOG))+
                                ','          +QuotedStr(codMunicipio.Text)+');';
  QueryLogradouroSIS.ExecSQL;

end;
//...............

end.
