unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TDataModule1 = class(TDataModule)
    Connection: TSQLConnection;
    QMateriaPrima: TSQLQuery;
    DSPMateriaPrima: TDataSetProvider;
    DSMateriaPrima: TDataSource;
    CDSMateriaPrima: TClientDataSet;
    QMAX_ID_Materia_Prima: TSQLQuery;
    CDSMateriaPrimaID: TIntegerField;
    CDSMateriaPrimaNOME: TStringField;
    CDSMateriaPrimaVALOR: TFMTBCDField;
    CDSMateriaPrimaSTATUS: TStringField;
    QProtudos: TSQLQuery;
    DSPProdutos: TDataSetProvider;
    CDSProdutos: TClientDataSet;
    DSProdutos: TDataSource;
    CDSProdutosID: TIntegerField;
    CDSProdutosNOME: TStringField;
    CDSProdutosSTATUS: TStringField;
    QMAX_ID_Produtos: TSQLQuery;
    CDSListaMateriais: TClientDataSet;
    QListaMateriais: TSQLQuery;
    DSListaMateriais: TDataSource;
    DSPListaMateriais: TDataSetProvider;
    CDSListaMateriaisID: TIntegerField;
    CDSListaMateriaisNOME: TStringField;
    CDSListaMateriaisVALOR: TFMTBCDField;
    CDSListaMateriaisselecao: TIntegerField;
    QInsertProdutosMaterias: TSQLQuery;
    QMAX_ID_MATERIA_PRODUTOS: TSQLQuery;
    CDSProdutosPORCENTAGEM: TIntegerField;
    QDeletMateriaPrimaProduto: TSQLQuery;
    CDSListaMateriaisQTDE: TFloatField;
    QListaMateriaPrimaProdutos: TSQLQuery;
    CDSListaMateriaisVALORITEM: TFloatField;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1PRODUTO: TStringField;
    ClientDataSet1VALOR: TSingleField;
    procedure CDSMateriaPrimaAfterCancel(DataSet: TDataSet);
    procedure CDSMateriaPrimaAfterDelete(DataSet: TDataSet);
    procedure CDSMateriaPrimaAfterPost(DataSet: TDataSet);
    procedure CDSMateriaPrimaAfterInsert(DataSet: TDataSet);
    procedure CDSProdutosAfterCancel(DataSet: TDataSet);
    procedure CDSProdutosAfterDelete(DataSet: TDataSet);
    procedure CDSProdutosAfterPost(DataSet: TDataSet);
    procedure CDSProdutosAfterInsert(DataSet: TDataSet);
    procedure CDSListaMateriaisQTDEChange(Sender: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UiPrincipal, cadTelas, MidasLib;

{$R *.dfm}



procedure TDataModule1.CDSListaMateriaisQTDEChange(Sender: TField);
begin

 //CDSListaMateriaisVALORITEM.Value:= CDSListaMateriaisQTDE.Value * UiPrincipal.Form1.DBGrid4.Fields[4].Value;
 UiPrincipal.Form1.DBGrid4.Fields[5].AsFloat:= UiPrincipal.Form1.DBGrid4.Fields[3].Value * UiPrincipal.Form1.DBGrid4.Fields[4].Value ;
end;

procedure TDataModule1.CDSMateriaPrimaAfterCancel(DataSet: TDataSet);
begin
 CDSMateriaPrima.CancelUpdates;

end;

procedure TDataModule1.CDSMateriaPrimaAfterDelete(DataSet: TDataSet);
begin
   CDSMateriaPrima.ApplyUpdates(-1);
end;



procedure TDataModule1.CDSMateriaPrimaAfterInsert(DataSet: TDataSet);
begin
  QMAX_ID_Materia_Prima.Close;
  QMAX_ID_Materia_Prima.Open;

  CDSMateriaPrimaID.AsInteger:= QMAX_ID_Materia_Prima.FieldByName('MAX').Value + 1;
  CDSMateriaPrimaSTATUS.AsString:= 'S';
  CDSMateriaPrimaVALOR.AsFloat:= 0;
end;

procedure TDataModule1.CDSMateriaPrimaAfterPost(DataSet: TDataSet);
begin
  CDSMateriaPrima.ApplyUpdates(-1);
end;




//PRODUTOS
procedure TDataModule1.CDSProdutosAfterCancel(DataSet: TDataSet);
begin
  CDSProdutos.CancelUpdates;
end;

procedure TDataModule1.CDSProdutosAfterDelete(DataSet: TDataSet);
begin
  CDSProdutos.ApplyUpdates(-1);
end;

procedure TDataModule1.CDSProdutosAfterInsert(DataSet: TDataSet);
begin
 QMAX_ID_Produtos.Close;
 QMAX_ID_Produtos.Open;

  CDSProdutosID.AsInteger := QMAX_ID_Produtos.FieldByName('MAX').Value + 1;
  CDSProdutosPORCENTAGEM.AsInteger:= 70;
  CDSProdutosSTATUS.AsString:= 'S';
end;

procedure TDataModule1.CDSProdutosAfterPost(DataSet: TDataSet);
begin
  CDSProdutos.ApplyUpdates(-1);
end;


end.
