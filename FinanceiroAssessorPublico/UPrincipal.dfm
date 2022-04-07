object FPrincipal: TFPrincipal
  Left = 190
  Top = 107
  Caption = 'Sistema de Convers'#227'o do SIA 7'
  ClientHeight = 348
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbItem: TLabel
    Left = 16
    Top = 224
    Width = 12
    Height = 24
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
    Top = 48
    Width = 240
    Height = 24
    Caption = 'Financeiro Assessor Publico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 160
    Top = 224
    Width = 29
    Height = 24
    Caption = 'DE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTotal: TLabel
    Left = 216
    Top = 222
    Width = 12
    Height = 24
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbChave: TLabel
    Left = 16
    Top = 278
    Width = 12
    Height = 24
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 440
    Top = 288
    Width = 6
    Height = 13
    Caption = '0'
  end
  object lbFuncao: TLabel
    Left = 16
    Top = 308
    Width = 12
    Height = 24
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 252
    Width = 513
    Height = 16
    TabOrder = 0
  end
  object Button1: TButton
    Left = 96
    Top = 152
    Width = 329
    Height = 36
    Caption = 'Converte'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBRichEdit1: TDBRichEdit
    Left = 432
    Top = 8
    Width = 82
    Height = 25
    DataField = 'ITEM_M_DIS'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabOrder = 2
    Zoom = 100
  end
  object Conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=localhost/3050:C:\Fiorilli\SIA7\CIDADES\Cameta\SGB_DADO' +
        'S\SIADADOS.FDB'
      'RoleName=RoleName'
      'User_Name=FSCSIA'
      'Password=csfais'
      'ServerCharSet=WIN1252'
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False'
      'UseUnicode=False')
    Left = 21
    Top = 30
  end
  object QDestino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 21
    Top = 88
  end
  object sqlDestino: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 304
    Top = 86
  end
  object dspDestino: TDataSetProvider
    DataSet = sqlDestino
    Left = 336
    Top = 86
  end
  object cdsDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDestino'
    Left = 370
    Top = 86
  end
  object QVerifica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 24
    Top = 144
  end
  object QAuxiliar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 40
    Top = 184
  end
  object QBaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 480
    Top = 136
  end
  object sqlAtualiza: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 13
    Top = 300
  end
  object dspAtualiza: TDataSetProvider
    DataSet = sqlAtualiza
    Left = 56
    Top = 300
  end
  object cdsAtualiza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtualiza'
    Left = 91
    Top = 300
  end
  object dbOrigem: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=localhost/3050:C:\BancosConversoes\cameta\RECEITAS.FDB'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet=ISO8859_1'
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False'
      'UseUnicode=False=False')
    Left = 197
    Top = 6
  end
  object QOrigem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbOrigem
    Left = 256
    Top = 8
  end
  object QEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbOrigem
    Left = 296
    Top = 8
  end
  object QCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbOrigem
    Left = 336
    Top = 8
  end
  object QPagamentos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbOrigem
    Left = 376
    Top = 8
  end
  object qrAtualiza: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 136
    Top = 288
  end
  object sqlReceitasDiferenca: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10' FROM FI_RECEITAS '#13#10' WHERE COD_EMP_FRC=:EMPRESA AND CO' +
      'D_DIV_FRC=:DIVIDA AND TP_PAR_FRC=:TIPO AND PARCELA_PAR_FRC=:PARC' +
      'ELA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIVIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARCELA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 312
    Top = 196
    object sqlReceitasDiferencaCOD_EMP_FRC: TIntegerField
      FieldName = 'COD_EMP_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaCOD_DIV_FRC: TIntegerField
      FieldName = 'COD_DIV_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaPARCELA_PAR_FRC: TIntegerField
      FieldName = 'PARCELA_PAR_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaTP_PAR_FRC: TIntegerField
      FieldName = 'TP_PAR_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaCOD_REC_FRC: TIntegerField
      FieldName = 'COD_REC_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaANO_FRC: TStringField
      FieldName = 'ANO_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object sqlReceitasDiferencaSITUACAO_FRC: TIntegerField
      FieldName = 'SITUACAO_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaCODORIGEM_FRC: TIntegerField
      FieldName = 'CODORIGEM_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaCODULTORI_FRC: TIntegerField
      FieldName = 'CODULTORI_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasDiferencaCOD_IND_FRC: TIntegerField
      FieldName = 'COD_IND_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLVALOR_FRC: TFloatField
      FieldName = 'LVALOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLVRCORRE_FRC: TFloatField
      FieldName = 'LVRCORRE_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLVRMULTA_FRC: TFloatField
      FieldName = 'LVRMULTA_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLVRJUROS_FRC: TFloatField
      FieldName = 'LVRJUROS_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLISENTO_FRC: TFloatField
      FieldName = 'LISENTO_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLDESCOVENCI_FRC: TFloatField
      FieldName = 'LDESCOVENCI_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLDESCOR_FRC: TFloatField
      FieldName = 'LDESCOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLDESCOC_FRC: TFloatField
      FieldName = 'LDESCOC_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLDESCOM_FRC: TFloatField
      FieldName = 'LDESCOM_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLDESCOJ_FRC: TFloatField
      FieldName = 'LDESCOJ_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLACRES_FRC: TFloatField
      FieldName = 'LACRES_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPVALOR_FRC: TFloatField
      FieldName = 'PVALOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPVRCORRE_FRC: TFloatField
      FieldName = 'PVRCORRE_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPVRMULTA_FRC: TFloatField
      FieldName = 'PVRMULTA_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPVRJUROS_FRC: TFloatField
      FieldName = 'PVRJUROS_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPISENTO_FRC: TFloatField
      FieldName = 'PISENTO_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPDESCOVENCI_FRC: TFloatField
      FieldName = 'PDESCOVENCI_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPDESDCO_FRC: TFloatField
      FieldName = 'PDESDCO_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLOGIN_INC_FRC: TStringField
      FieldName = 'LOGIN_INC_FRC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlReceitasDiferencaDTA_INC_FRC: TSQLTimeStampField
      FieldName = 'DTA_INC_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaLOGIN_ALT_FRC: TStringField
      FieldName = 'LOGIN_ALT_FRC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlReceitasDiferencaDTA_ALT_FRC: TSQLTimeStampField
      FieldName = 'DTA_ALT_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaOUTRAS_FRC: TStringField
      FieldName = 'OUTRAS_FRC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlReceitasDiferencaPDESCOR_FRC: TFloatField
      FieldName = 'PDESCOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPDESCOC_FRC: TFloatField
      FieldName = 'PDESCOC_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPDESCOM_FRC: TFloatField
      FieldName = 'PDESCOM_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasDiferencaPDESCOJ_FRC: TFloatField
      FieldName = 'PDESCOJ_FRC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspReceitasDiferenca: TDataSetProvider
    DataSet = sqlReceitasDiferenca
    Options = [poIncFieldProps, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 196
  end
  object cdsReceitasDiferenca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReceitasDiferenca'
    Left = 394
    Top = 196
  end
  object QVerificaDesconto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 61
  end
  object sqlParcelas: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT * FROM FI_PARCELA WHERE COD_EMP_PAR=:EMPRESA AND COD_DIV_' +
      'PAR=:DIVIDA AND TP_PAR=:TIPO AND PARCELA_PAR=:PARCELA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIVIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARCELA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 216
    Top = 244
    object sqlParcelasCOD_EMP_PAR: TIntegerField
      FieldName = 'COD_EMP_PAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlParcelasCOD_DIV_PAR: TIntegerField
      FieldName = 'COD_DIV_PAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlParcelasTP_PAR: TIntegerField
      FieldName = 'TP_PAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlParcelasPARCELA_PAR: TIntegerField
      FieldName = 'PARCELA_PAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlParcelasDATAPAGTO_PAR: TDateField
      FieldName = 'DATAPAGTO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasDATAMOVIM_PAR: TDateField
      FieldName = 'DATAMOVIM_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasLOTE_PAR: TIntegerField
      FieldName = 'LOTE_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasCOD_BCO_PAR: TIntegerField
      FieldName = 'COD_BCO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasSITUACAO_PAR: TIntegerField
      FieldName = 'SITUACAO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasUNICA_PAR: TStringField
      FieldName = 'UNICA_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlParcelasEXECUTADA_PAR: TStringField
      FieldName = 'EXECUTADA_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlParcelasATIVA_PAR: TStringField
      FieldName = 'ATIVA_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlParcelasSITUACAOANTIGA_PAR: TIntegerField
      FieldName = 'SITUACAOANTIGA_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasLIVRO_PAR: TIntegerField
      FieldName = 'LIVRO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasFOLHA_PAR: TIntegerField
      FieldName = 'FOLHA_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasINSCRI_PAR: TIntegerField
      FieldName = 'INSCRI_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasDATAINSCRI_PAR: TDateField
      FieldName = 'DATAINSCRI_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasDATAVENCI: TDateField
      FieldName = 'DATAVENCI'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasMOEDA_PAR: TStringField
      FieldName = 'MOEDA_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlParcelasCOD_IND_PAR: TIntegerField
      FieldName = 'COD_IND_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasDATAGERACAO_PAR: TDateField
      FieldName = 'DATAGERACAO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasDATAEXEC_PARC: TDateField
      FieldName = 'DATAEXEC_PARC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasCANCELADO_PAR: TStringField
      FieldName = 'CANCELADO_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlParcelasPARCE_PAR: TStringField
      FieldName = 'PARCE_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlParcelasDATACANCELA_PAR: TDateField
      FieldName = 'DATACANCELA_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasDATAPARCE_PAR: TDateField
      FieldName = 'DATAPARCE_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasPROCESSO_PAR: TStringField
      FieldName = 'PROCESSO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasNNUMERO_PAR: TFloatField
      FieldName = 'NNUMERO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasVALOR_PAR: TFloatField
      FieldName = 'VALOR_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasLOGIN_INC_PAR: TStringField
      FieldName = 'LOGIN_INC_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlParcelasDTA_INC_PAR: TSQLTimeStampField
      FieldName = 'DTA_INC_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasLOGIN_ALT_PAR: TStringField
      FieldName = 'LOGIN_ALT_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlParcelasDTA_ALT_PAR: TSQLTimeStampField
      FieldName = 'DTA_ALT_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasDUPLICADA_PAR: TStringField
      FieldName = 'DUPLICADA_PAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlParcelasREFLIVRO_PAR: TIntegerField
      FieldName = 'REFLIVRO_PAR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlParcelasFAIXANNUMERO_PAR: TIntegerField
      FieldName = 'FAIXANNUMERO_PAR'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspParcelas: TDataSetProvider
    DataSet = sqlParcelas
    Options = [poIncFieldProps, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 244
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParcelas'
    Left = 298
    Top = 244
  end
  object sqlReceitas: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10' FROM FI_RECEITAS '#13#10' WHERE COD_EMP_FRC=:EMPRESA AND CO' +
      'D_DIV_FRC=:DIVIDA AND TP_PAR_FRC=:TIPO AND PARCELA_PAR_FRC=:PARC' +
      'ELA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIVIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARCELA'
        ParamType = ptInput
      end>
    SQLConnection = Conexao
    Left = 224
    Top = 295
    object sqlReceitasCOD_EMP_FRC: TIntegerField
      FieldName = 'COD_EMP_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasCOD_DIV_FRC: TIntegerField
      FieldName = 'COD_DIV_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasPARCELA_PAR_FRC: TIntegerField
      FieldName = 'PARCELA_PAR_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasTP_PAR_FRC: TIntegerField
      FieldName = 'TP_PAR_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasCOD_REC_FRC: TIntegerField
      FieldName = 'COD_REC_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasANO_FRC: TStringField
      FieldName = 'ANO_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object sqlReceitasSITUACAO_FRC: TIntegerField
      FieldName = 'SITUACAO_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasCODORIGEM_FRC: TIntegerField
      FieldName = 'CODORIGEM_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasCODULTORI_FRC: TIntegerField
      FieldName = 'CODULTORI_FRC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlReceitasCOD_IND_FRC: TIntegerField
      FieldName = 'COD_IND_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLVALOR_FRC: TFloatField
      FieldName = 'LVALOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLVRCORRE_FRC: TFloatField
      FieldName = 'LVRCORRE_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLVRMULTA_FRC: TFloatField
      FieldName = 'LVRMULTA_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLVRJUROS_FRC: TFloatField
      FieldName = 'LVRJUROS_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLISENTO_FRC: TFloatField
      FieldName = 'LISENTO_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLDESCOVENCI_FRC: TFloatField
      FieldName = 'LDESCOVENCI_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLDESCOR_FRC: TFloatField
      FieldName = 'LDESCOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLDESCOC_FRC: TFloatField
      FieldName = 'LDESCOC_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLDESCOM_FRC: TFloatField
      FieldName = 'LDESCOM_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLDESCOJ_FRC: TFloatField
      FieldName = 'LDESCOJ_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLACRES_FRC: TFloatField
      FieldName = 'LACRES_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPVALOR_FRC: TFloatField
      FieldName = 'PVALOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPVRCORRE_FRC: TFloatField
      FieldName = 'PVRCORRE_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPVRMULTA_FRC: TFloatField
      FieldName = 'PVRMULTA_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPVRJUROS_FRC: TFloatField
      FieldName = 'PVRJUROS_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPISENTO_FRC: TFloatField
      FieldName = 'PISENTO_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPDESCOVENCI_FRC: TFloatField
      FieldName = 'PDESCOVENCI_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPDESDCO_FRC: TFloatField
      FieldName = 'PDESDCO_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLOGIN_INC_FRC: TStringField
      FieldName = 'LOGIN_INC_FRC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlReceitasDTA_INC_FRC: TSQLTimeStampField
      FieldName = 'DTA_INC_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasLOGIN_ALT_FRC: TStringField
      FieldName = 'LOGIN_ALT_FRC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlReceitasDTA_ALT_FRC: TSQLTimeStampField
      FieldName = 'DTA_ALT_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasOUTRAS_FRC: TStringField
      FieldName = 'OUTRAS_FRC'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlReceitasPDESCOR_FRC: TFloatField
      FieldName = 'PDESCOR_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPDESCOC_FRC: TFloatField
      FieldName = 'PDESCOC_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPDESCOM_FRC: TFloatField
      FieldName = 'PDESCOM_FRC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlReceitasPDESCOJ_FRC: TFloatField
      FieldName = 'PDESCOJ_FRC'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspReceitas: TDataSetProvider
    DataSet = sqlReceitas
    Options = [poIncFieldProps, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 263
  end
  object cdsReceitas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReceitas'
    Left = 314
    Top = 271
  end
  object QEndereco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbOrigem
    Left = 448
    Top = 24
  end
  object sqlDestino1: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 128
    Top = 78
  end
  object dspDestino1: TDataSetProvider
    DataSet = sqlDestino1
    Left = 160
    Top = 78
  end
  object cdsDestino1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDestino1'
    Left = 194
    Top = 78
  end
  object QContribuinte: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 69
    Top = 64
  end
  object adoOrigem: TADOConnection
    CommandTimeout = 150000
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=CONVE' +
      'RSAOPOSTGRES;'
    ConnectionTimeout = 150000
    CursorLocation = clUseServer
    IsolationLevel = ilReadCommitted
    LoginPrompt = False
    Mode = cmRead
    Provider = 'MSDASQL.1'
    Left = 464
    Top = 272
  end
  object QNOrigem: TADOQuery
    Connection = adoOrigem
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    CommandTimeout = 150000
    Parameters = <>
    SQL.Strings = (
      'select id_natureza_credito,exercicio from ocn_natureza_credito '
      ' INNER join ocn_enumerado on id_tipo_especial=id_enumerado '
      
        ' inner join ocn_destinacao on ocn_natureza_credito.id_destinacao' +
        '=ocn_destinacao.id_destinacao '
      
        ' inner join ocn_receita ex on ex.id_receita=ocn_destinacao.id_re' +
        'ceita '
      '  where ocn_enumerado.codigo='#39'PR'#39' and exercicio=2011')
    Left = 408
    Top = 256
  end
  object QNCadastro: TADOQuery
    Connection = adoOrigem
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    Parameters = <>
    SQL.Strings = (
      'select id_natureza_credito,exercicio from ocn_natureza_credito '
      ' INNER join ocn_enumerado on id_tipo_especial=id_enumerado '
      
        ' inner join ocn_destinacao on ocn_natureza_credito.id_destinacao' +
        '=ocn_destinacao.id_destinacao '
      
        ' inner join ocn_receita ex on ex.id_receita=ocn_destinacao.id_re' +
        'ceita '
      '  where ocn_enumerado.codigo='#39'PR'#39' and exercicio=2011')
    Left = 472
    Top = 216
  end
  object QNitens: TADOQuery
    Connection = adoOrigem
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    Parameters = <>
    SQL.Strings = (
      'select id_natureza_credito,exercicio from ocn_natureza_credito '
      ' INNER join ocn_enumerado on id_tipo_especial=id_enumerado '
      
        ' inner join ocn_destinacao on ocn_natureza_credito.id_destinacao' +
        '=ocn_destinacao.id_destinacao '
      
        ' inner join ocn_receita ex on ex.id_receita=ocn_destinacao.id_re' +
        'ceita '
      '  where ocn_enumerado.codigo='#39'PR'#39' and exercicio=2011')
    Left = 432
    Top = 248
  end
  object sqlItens: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 120
    Top = 118
  end
  object dspItens: TDataSetProvider
    DataSet = sqlItens
    Left = 152
    Top = 118
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    Left = 186
    Top = 118
  end
  object QNPagamentos: TADOQuery
    Connection = adoOrigem
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    Parameters = <>
    SQL.Strings = (
      'select id_natureza_credito,exercicio from ocn_natureza_credito '
      ' INNER join ocn_enumerado on id_tipo_especial=id_enumerado '
      
        ' inner join ocn_destinacao on ocn_natureza_credito.id_destinacao' +
        '=ocn_destinacao.id_destinacao '
      
        ' inner join ocn_receita ex on ex.id_receita=ocn_destinacao.id_re' +
        'ceita '
      '  where ocn_enumerado.codigo='#39'PR'#39' and exercicio=2011')
    Left = 576
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = QItens
    Left = 448
    Top = 80
  end
  object QGenerator: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 88
    Top = 200
  end
  object dbArquivosOrigem: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=localhost/3050:C:\BancosConversoes\DRACENA\DIGITALIZACA' +
        'O.FDB'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet=ISO8859_1'
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False'
      'UseUnicode=False=False')
    Left = 357
    Top = 238
  end
  object dbArquivoDestino: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=localhost/3050:C:\Fiorilli\SIA7\CIDADES\Dracena\SGB_DAD' +
        'OS\SIAARQUIVOS.FDB'
      'RoleName=RoleName'
      'User_Name=FSCSIA'
      'Password=csfais'
      'ServerCharSet=WIN1252'
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False'
      'UseUnicode=False')
    Left = 69
    Top = 110
  end
  object QImagemOrigem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbArquivosOrigem
    Left = 360
    Top = 288
  end
  object sqlImagem: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = 1
    Params = <>
    SQLConnection = dbArquivoDestino
    Left = 32
    Top = 254
  end
  object dspImagem: TDataSetProvider
    DataSet = sqlImagem
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 254
  end
  object cdsImagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspImagem'
    Left = 98
    Top = 254
  end
  object QItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbOrigem
    Left = 480
    Top = 80
  end
  object SQLQueryTableProducer1: TSQLQueryTableProducer
    Left = 40
    Top = 112
  end
end