object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 561
  Width = 587
  object Connection: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=127.0.0.1/3055:C:\REAL-LUSTRES\DB.FDB'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet=WIN1252'
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False'
      'UseUnicode=False'
      '')
    Left = 16
    Top = 8
  end
  object QMateriaPrima: TSQLQuery
    DataSource = DSMateriaPrima
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *  FROM MATERIA_PRIMA')
    SQLConnection = Connection
    Left = 32
    Top = 88
  end
  object DSPMateriaPrima: TDataSetProvider
    DataSet = QMateriaPrima
    Left = 112
    Top = 88
  end
  object DSMateriaPrima: TDataSource
    DataSet = CDSMateriaPrima
    Left = 288
    Top = 91
  end
  object CDSMateriaPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMateriaPrima'
    AfterInsert = CDSMateriaPrimaAfterInsert
    AfterPost = CDSMateriaPrimaAfterPost
    AfterCancel = CDSMateriaPrimaAfterCancel
    AfterDelete = CDSMateriaPrimaAfterDelete
    Left = 200
    Top = 90
    object CDSMateriaPrimaID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object CDSMateriaPrimaNOME: TStringField
      DisplayWidth = 96
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object CDSMateriaPrimaVALOR: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 10
    end
    object CDSMateriaPrimaSTATUS: TStringField
      DisplayWidth = 6
      FieldName = 'STATUS'
      Required = True
      Size = 2
    end
  end
  object QMAX_ID_Materia_Prima: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(ID) FROM MATERIA_PRIMA')
    SQLConnection = Connection
    Left = 384
    Top = 88
  end
  object QProtudos: TSQLQuery
    DataSource = DSProdutos
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *  FROM produtos'
      '    order BY ID')
    SQLConnection = Connection
    Left = 24
    Top = 168
  end
  object DSPProdutos: TDataSetProvider
    DataSet = QProtudos
    Left = 88
    Top = 168
  end
  object CDSProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPProdutos'
    AfterInsert = CDSProdutosAfterInsert
    AfterPost = CDSProdutosAfterPost
    AfterCancel = CDSProdutosAfterCancel
    AfterDelete = CDSProdutosAfterDelete
    AfterScroll = CDSProdutosAfterScroll
    Left = 160
    Top = 168
    object CDSProdutosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSProdutosNOME: TStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Size = 300
    end
    object CDSProdutosPORCENTAGEM: TIntegerField
      Alignment = taCenter
      DisplayLabel = '(%)'
      DisplayWidth = 4
      FieldName = 'PORCENTAGEM'
    end
    object CDSProdutosSTATUS: TStringField
      DisplayLabel = 'ATIVO'
      FieldName = 'STATUS'
      Required = True
      Size = 1
    end
  end
  object DSProdutos: TDataSource
    DataSet = CDSProdutos
    Left = 232
    Top = 168
  end
  object QMAX_ID_Produtos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(ID) FROM PRODUTOS')
    SQLConnection = Connection
    Left = 384
    Top = 160
  end
  object CDSListaMateriais: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VALOR'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 10
      end
      item
        Name = 'STATUS'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'selecao'
        DataType = ftInteger
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'VALORITEM'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'OrderSelecao'
        Fields = 'selecao'
        Options = [ixDescending]
      end>
    Params = <>
    ProviderName = 'DSPListaMateriais'
    StoreDefs = True
    Left = 200
    Top = 248
    object CDSListaMateriaisselecao: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = '{....}'
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'selecao'
    end
    object CDSListaMateriaisID: TIntegerField
      DisplayWidth = 8
      FieldName = 'ID'
      ReadOnly = True
      Required = True
    end
    object CDSListaMateriaisNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object CDSListaMateriaisQTDE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'QTDE'
      OnChange = CDSListaMateriaisQTDEChange
      DisplayFormat = '0.000'
    end
    object CDSListaMateriaisVALOR: TFMTBCDField
      DisplayLabel = 'VALOR (R$)'
      DisplayWidth = 10
      FieldName = 'VALOR'
      ReadOnly = True
      Required = True
      Precision = 18
      Size = 10
    end
    object CDSListaMateriaisVALORITEM: TFloatField
      Alignment = taLeftJustify
      FieldKind = fkInternalCalc
      FieldName = 'VALORITEM'
    end
  end
  object QListaMateriais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *  FROM MATERIA_PRIMA'
      ' WHERE STATUS <> '#39'N'#39
      ' order by nome')
    SQLConnection = Connection
    Left = 24
    Top = 248
  end
  object DSListaMateriais: TDataSource
    DataSet = CDSListaMateriais
    Left = 296
    Top = 248
  end
  object DSPListaMateriais: TDataSetProvider
    DataSet = QListaMateriais
    Left = 104
    Top = 248
  end
  object QInsertProdutosMaterias: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID_MATERIA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'QTDE_MATERIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'INSERT INTO MATERIAPRIMA_PRODUTOS (ID, ID_PRODUTO, ID_MATERIA_PR' +
        'IMA, QTDE_MATERIA_PRIMA) VALUES (:ID, :ID_PRODUTO, :ID_MATERIA, ' +
        ':QTDE_MATERIA);')
    SQLConnection = Connection
    Left = 88
    Top = 328
  end
  object QMAX_ID_MATERIA_PRODUTOS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT gen_id(gen_materia_produto, 1) FROM RDB$DATABASE')
    SQLConnection = Connection
    Left = 384
    Top = 320
  end
  object QDeletMateriaPrimaProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '  DELETE  FROM materiaprima_produtos'
      '        WHERE id_produto=:PRODUTO')
    SQLConnection = Connection
    Left = 64
    Top = 392
  end
  object QListaMateriaPrimaProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      '    FROM materiaprima_produtos'
      '        WHERE id_produto=:PRODUTO'
      '')
    SQLConnection = Connection
    Left = 72
    Top = 448
  end
  object SQLQuery1: TSQLQuery
    GetMetadata = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM prc_calculo_valor3')
    SQLConnection = Connection
    Left = 48
    Top = 504
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 128
    Top = 504
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterScroll = ClientDataSet1AfterScroll
    Left = 224
    Top = 504
    object ClientDataSet1ID: TIntegerField
      FieldName = 'ID'
    end
    object ClientDataSet1PRODUTO: TStringField
      DisplayWidth = 140
      FieldName = 'PRODUTO'
      Size = 200
    end
    object ClientDataSet1VALOR: TSingleField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 320
    Top = 504
  end
  object SResumo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PRO_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        '  select MTP.id_produto, PRO.nome, sum((MATERIA.VALOR * MTP.QTDE' +
        '_MATERIA_PRIMA)) AS VALOR_UNITARIO , PRO.porcentagem'
      '    from MATERIA_PRIMA MATERIA'
      
        '    inner join MATERIAPRIMA_PRODUTOS MTP on MATERIA.ID = MTP.ID_' +
        'MATERIA_PRIMA'
      '    inner join PRODUTOS PRO on MTP.ID_PRODUTO = PRO.ID'
      '        WHERE PRO.status<>'#39'N'#39
      '        AND PRO.id=:PRO_ID'
      '    group BY MTP.id_produto, PRO.nome, PRO.porcentagem')
    SQLConnection = Connection
    Left = 456
    Top = 496
  end
end
