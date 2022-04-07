unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DBXFirebird, Data.SqlExpr, Data.FMTBcd, StrUtils;

type
  TForm1 = class(TForm)
    ADOCetil: TADOConnection;
    BancoOrigem: TComboBoxEx;
    DataBases: TADOQuery;
    Label1: TLabel;
    LBancoSIA: TLabeledEdit;
    LIncriMunicipal: TLabeledEdit;
    LTitle: TLabel;
    QNotasCetil: TADOQuery;
    MemoScripy: TMemo;
    ConSIA: TSQLConnection;
    QNotaSIA: TSQLQuery;
    Comparar: TButton;
    procedure FormShow(Sender: TObject);
    procedure BancoOrigemChange(Sender: TObject);
    procedure NotasCetil(incricao:string);
    procedure NotasSIA(incricao:variant);
    function TrataTamanhoIncricao(incricao:variant):string;
    procedure comparaNotas();
    procedure CompararClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.comparaNotas;
begin
   MemoScripy.Text:='';
  if LIncriMunicipal.Text <> '' then
  begin

     try
      ConSIA.Params.AddPair('Database', LBancoSIA.Text);
      except
      on E: Exception do
      begin
       ShowMessage(E.Message);
      end;

     end;

    NotasCetil(QuotedStr(LIncriMunicipal.Text));
    NotasSIA(LIncriMunicipal.Text);

    while not QNotasCetil.Eof do
    begin

      while not QNotaSIA.Eof do
      begin

        if QNotasCetil.FieldByName('PKID').Value <> QNotaSIA.FieldByName('cod_nfs').Value then
        begin

          MemoScripy.Lines.Add(QNotasCetil.FieldByName('NR_NOTA').Value);

        end;


      end;

    end;

  end;

end;


procedure TForm1.CompararClick(Sender: TObject);
begin
  comparaNotas();
end;

//TRATAR TAMANHO INCRICAO
function TForm1.TrataTamanhoIncricao(incricao: variant):STRING;
begin

   Result:= RightStr(StringOfChar('0', 9) + IntToStr(incricao), 9); ;


end;





//SQL NOTAS SIA
procedure TForm1.NotasSIA(incricao:variant);
begin
  QNotaSIA.SQL.Clear;
  QNotaSIA.Close;

  if incricao <>''  then
  begin

    QNotaSIA.SQL.Text:='SELECT * FROM LI_NOTAFISCAL WHERE COD_EMP_NFS = 1 '
                    +' AND COD_MOD_NFS = 2 '
                    +' AND CADASTRO_NFS = '+QuotedStr(TrataTamanhoIncricao(incricao));

   QNotaSIA.Open;

  end;
end;




//SQL NOTAS CETIL
procedure TForm1.NotasCetil(incricao:string);
begin
    QNotasCetil.SQL.Clear;
    QNotasCetil.Close;
    if incricao <> '' then
    begin

      QNotasCetil.SQL.Add('SELECT * '
                           + ' FROM NOTA_ITEM '
                           + ' INNER JOIN NOTA ON NOTA.FK_NOTA_ITEM_ITEM=NOTA_ITEM.PKID '
                           + ' LEFT JOIN SERVICO_ASSOCIADO ON SERVICO_ASSOCIADO.PKID=NOTA_ITEM.FK_SERVICO_ASSOCIADO_SERVICO '
                           + ' LEFT JOIN SERVICO_CLASSIFICACAO A ON  A.PKID=SERVICO_ASSOCIADO.FK_SERVICO_CLASSIFICACAO_SERVICO_MUNICIPAL '
                           + ' LEFT JOIN SERVICO_CLASSIFICACAO B ON  B.PKID=SERVICO_ASSOCIADO.FK_SERVICO_CLASSIFICACAO_SERVICO_FEDERAL '
                           + ' LEFT JOIN CONTRIBUINTE C ON C.PKID = NOTA.FK_CONTRIBUINTE_PRESTADOR '
                           + ' where c.INSCRICAO_MUNICIPAL = '+incricao+';');
      QNotasCetil.Open;
    end;

end;





procedure TForm1.BancoOrigemChange(Sender: TObject);
begin

  if BancoOrigem.Text <> 'Banco Origem' then
     ADOCetil.DefaultDatabase:= BancoOrigem.Text;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //POPULA COMBOBOX
  while not DataBases.Eof do
  begin
      BancoOrigem.Items.AddObject(Trim(DataBases.FieldByName('name').AsString), tObject(DataBases.FieldByName('database_id').AsInteger));
      DataBases.Next;
  end;

end;

end.
