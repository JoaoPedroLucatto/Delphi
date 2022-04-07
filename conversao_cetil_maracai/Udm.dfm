object dm: Tdm
  OldCreateOrder = False
  Height = 779
  Width = 1041
  object Conexao_Destino: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=LOCALHOST/3055:C:\SCPI_8\Cidades\Laguna Carapa PM - MS\' +
        'ARQ2013\SCPI2013.FDB'
      'RoleName=RoleName'
      'User_Name=FSCSCPI8'
      'Password=scpi'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 32
    Top = 16
  end
  object Atualiza: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 96
    Top = 4
  end
  object cdsCadcli: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cadcli'
    Params = <>
    ProviderName = 'dspcadcli'
    Left = 92
    Top = 452
  end
  object dspcadcli: TDataSetProvider
    DataSet = sqldscadcli
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 60
    Top = 452
  end
  object sqldscadcli: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 28
    Top = 452
  end
  object cdsTabempresa: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tabempresa'
    Params = <>
    ProviderName = 'dspcadcli'
    Left = 92
    Top = 496
  end
  object dspTabempresa: TDataSetProvider
    DataSet = sqldsTabempresa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 60
    Top = 496
  end
  object sqldsTabempresa: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 28
    Top = 496
  end
  object Localiza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaliza'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 104
  end
  object dsplocaliza: TDataSetProvider
    DataSet = SQLDSlocaliza
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 104
  end
  object SQLDSlocaliza: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 104
  end
  object Localiza1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaliza1'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 147
  end
  object dsplocaliza1: TDataSetProvider
    DataSet = sqldsLocaliza1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 147
  end
  object sqldsLocaliza1: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 147
  end
  object Localiza2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaliza2'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 191
  end
  object dsplocaliza2: TDataSetProvider
    DataSet = sqldslocaliza2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 191
  end
  object sqldslocaliza2: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 191
  end
  object Localiza3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaliza3'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 235
  end
  object dsplocaliza3: TDataSetProvider
    DataSet = sqldslocaliza3
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 235
  end
  object sqldslocaliza3: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 235
  end
  object Localiza4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaliza4'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 279
  end
  object dsplocaliza4: TDataSetProvider
    DataSet = sqldslocaliza4
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 279
  end
  object sqldslocaliza4: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 279
  end
  object Localiza5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaliza5'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 323
  end
  object dsplocaliza5: TDataSetProvider
    DataSet = sqldslocaliza5
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 323
  end
  object sqldslocaliza5: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 323
  end
  object Localiza6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaliza6'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 368
  end
  object dsplocaliza6: TDataSetProvider
    DataSet = sqldsLocaliza6
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 368
  end
  object sqldsLocaliza6: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 368
  end
  object QDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspdestino'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 80
  end
  object dspdestino: TDataSetProvider
    DataSet = sqldestino
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 64
    Top = 80
  end
  object sqldestino: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 80
  end
  object QAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspqaux'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 172
  end
  object dspqaux: TDataSetProvider
    DataSet = sqlqaux
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 64
    Top = 172
  end
  object sqlqaux: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 172
  end
  object QAux2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQAux2'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 220
  end
  object dspQAux2: TDataSetProvider
    DataSet = sqldsQAux2
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 64
    Top = 220
  end
  object sqldsQAux2: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 220
  end
  object QConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspqconta'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 268
  end
  object dspqconta: TDataSetProvider
    DataSet = sqldsqconta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 64
    Top = 268
  end
  object sqldsqconta: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 268
  end
  object DSPQORIGEM: TDataSetProvider
    DataSet = SQLDSQORIGEM
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 924
    Top = 120
  end
  object QOrigem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQORIGEM'
    Left = 956
    Top = 120
  end
  object dspAtualizaOrigem: TDataSetProvider
    DataSet = sqldsAtualizaOrigem
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 932
    Top = 506
  end
  object AtualizaOrigem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtualizaOrigem'
    Left = 960
    Top = 506
  end
  object dspcdsorigem: TDataSetProvider
    DataSet = sqldscdsorigem
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 924
    Top = 168
  end
  object cdsOrigem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcdsorigem'
    Left = 956
    Top = 168
  end
  object dspLocalizaOrigem: TDataSetProvider
    DataSet = sqldsLocalizaORigem
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 924
    Top = 262
  end
  object LocalizaOrigem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalizaOrigem'
    Left = 956
    Top = 262
  end
  object cdsFundo: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cadfundo'
    Params = <>
    ProviderName = 'dspFundo'
    Left = 204
    Top = 64
  end
  object dspFundo: TDataSetProvider
    DataSet = sqldsFundo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 172
    Top = 64
  end
  object sqldsFundo: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 140
    Top = 64
  end
  object CdsCodif: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from desfor'
    Params = <>
    ProviderName = 'dspcodif'
    Left = 204
    Top = 110
  end
  object dspcodif: TDataSetProvider
    DataSet = sqldscodif
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 172
    Top = 110
  end
  object sqldscodif: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 140
    Top = 110
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsptemp'
    Left = 76
    Top = 555
  end
  object dsptemp: TDataSetProvider
    DataSet = sqldstemp
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 44
    Top = 555
  end
  object sqldstemp: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 12
    Top = 555
  end
  object SQL: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 152
    Top = 8
  end
  object qscpi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspscpi'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 312
  end
  object dspscpi: TDataSetProvider
    DataSet = sqldsscpi
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 64
    Top = 312
  end
  object sqldsscpi: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 312
  end
  object QSCPI2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQSCPI2'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 360
  end
  object dspQSCPI2: TDataSetProvider
    DataSet = SqlDsQSCPI2
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 64
    Top = 360
  end
  object SqlDsQSCPI2: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 360
  end
  object CdsDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCdsdestino'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 408
  end
  object dspCdsdestino: TDataSetProvider
    DataSet = SQLSDCDSDESTINO
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 64
    Top = 408
  end
  object SQLSDCDSDESTINO: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 408
  end
  object cdsTemp1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsptemp1'
    Left = 80
    Top = 599
  end
  object dsptemp1: TDataSetProvider
    DataSet = sqldstemp1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 44
    Top = 598
  end
  object sqldstemp1: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 12
    Top = 598
  end
  object Localiza7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocaliza7'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 416
  end
  object dspLocaliza7: TDataSetProvider
    DataSet = sqldsLocaliza7
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 416
  end
  object sqldsLocaliza7: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 416
  end
  object Localiza8: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocaliza8'
    OnReconcileError = QDestinoReconcileError
    Left = 622
    Top = 463
  end
  object dspLocaliza8: TDataSetProvider
    DataSet = sqldsLocaliza8
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 590
    Top = 463
  end
  object sqldsLocaliza8: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 558
    Top = 463
  end
  object CdsDes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCdDes'
    OnReconcileError = QDestinoReconcileError
    Left = 96
    Top = 128
  end
  object dspCdDes: TDataSetProvider
    DataSet = sqldsCdDes
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 64
    Top = 128
  end
  object sqldsCdDes: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 32
    Top = 128
  end
  object CdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcaixa'
    Left = 208
    Top = 328
  end
  object dspcaixa: TDataSetProvider
    DataSet = sqldscaixa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 176
    Top = 328
  end
  object sqldscaixa: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 144
    Top = 328
  end
  object cdsDescon: TClientDataSet
    Aggregates = <>
    CommandText = 'select conta, cod,empresa from descon'
    Params = <>
    ProviderName = 'dspDescon'
    Left = 208
    Top = 373
  end
  object dspDescon: TDataSetProvider
    DataSet = SQLDsDescon
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 176
    Top = 373
  end
  object SQLDsDescon: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 144
    Top = 373
  end
  object CdsRecDis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecdis'
    Left = 209
    Top = 501
  end
  object dspRecdis: TDataSetProvider
    DataSet = sqldsRecdis
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 177
    Top = 501
  end
  object sqldsRecdis: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 145
    Top = 501
  end
  object CdsDesDis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDesDis'
    Left = 209
    Top = 597
  end
  object dspDesDis: TDataSetProvider
    DataSet = SQLDSDESDIS
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 177
    Top = 597
  end
  object SQLDSDESDIS: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 145
    Top = 597
  end
  object CdsExtra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExtra'
    Left = 209
    Top = 457
  end
  object dspExtra: TDataSetProvider
    DataSet = sqldsExtra
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 177
    Top = 457
  end
  object sqldsExtra: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 145
    Top = 457
  end
  object cdsdesfor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspdesfor'
    Left = 209
    Top = 645
  end
  object dspdesfor: TDataSetProvider
    DataSet = sqldsdesfor
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 177
    Top = 645
  end
  object sqldsdesfor: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 145
    Top = 645
  end
  object EvCPF: TEvCheckCPF
    Left = 800
    Top = 588
  end
  object EvCNPJ: TEvCheckCNPJ
    Left = 852
    Top = 588
  end
  object cdsTipDocFinan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipDocFinan'
    Left = 208
    Top = 694
  end
  object dspTipDocFinan: TDataSetProvider
    DataSet = sqldsTipDocFinan
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 180
    Top = 694
  end
  object sqldsTipDocFinan: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 144
    Top = 694
  end
  object Conexao_Origem_: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database='
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 880
    Top = 12
  end
  object SQLDSQORIGEM__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 880
    Top = 120
  end
  object sqldscdsorigem__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 880
    Top = 168
  end
  object sqldsLocalizaORigem__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 884
    Top = 262
  end
  object sqldsAtualizaOrigem__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 888
    Top = 506
  end
  object SQLDSQORIGEM: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 788
    Top = 120
  end
  object sqldscdsorigem: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 788
    Top = 171
  end
  object sqldsLocalizaORigem: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 790
    Top = 263
  end
  object sqldsLocalizaOrigem3: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 792
    Top = 353
  end
  object cdsPoder: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPoder'
    Left = 324
    Top = 62
  end
  object dspPoder: TDataSetProvider
    DataSet = SQLDsPoder
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 292
    Top = 62
  end
  object SQLDsPoder: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 260
    Top = 62
  end
  object cdsOrgao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrgao'
    Left = 324
    Top = 106
  end
  object dspOrgao: TDataSetProvider
    DataSet = SQLDSOrgao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 292
    Top = 106
  end
  object SQLDSOrgao: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 260
    Top = 106
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 324
    Top = 154
  end
  object dspUnidade: TDataSetProvider
    DataSet = sqldsUnidade
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 292
    Top = 154
  end
  object sqldsUnidade: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 260
    Top = 154
  end
  object cdsVingrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVingrupo'
    Left = 446
    Top = 10
  end
  object dspVingrupo: TDataSetProvider
    DataSet = sqldsVingrupo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 414
    Top = 10
  end
  object sqldsVingrupo: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 382
    Top = 10
  end
  object cdsVinCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVincodigo'
    Left = 448
    Top = 58
  end
  object dspVincodigo: TDataSetProvider
    DataSet = sqldsVincodigo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 416
    Top = 58
  end
  object sqldsVincodigo: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 384
    Top = 58
  end
  object LocalizaDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalizaDestino'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 12
  end
  object dspLocalizaDestino: TDataSetProvider
    DataSet = sqldsLocalizaDestino
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 12
  end
  object sqldsLocalizaDestino: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 12
  end
  object dspLocalizaOrigem2: TDataSetProvider
    DataSet = sqldsLocalizaOrigem2
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 928
    Top = 310
  end
  object LocalizaOrigem2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalizaOrigem2'
    Left = 960
    Top = 310
  end
  object sqldsLocalizaOrigem2__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 888
    Top = 310
  end
  object sqldsLocalizaDestino2: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 554
    Top = 56
  end
  object dspLocalizaDestino2: TDataSetProvider
    DataSet = sqldsLocalizaDestino2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 586
    Top = 56
  end
  object LocalizaDestino2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalizaDestino2'
    OnReconcileError = QDestinoReconcileError
    Left = 618
    Top = 56
  end
  object dspcdsOrigem2: TDataSetProvider
    DataSet = sqldscdsOrigem2
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 924
    Top = 212
  end
  object cdsOrigem2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcdsOrigem2'
    Left = 956
    Top = 212
  end
  object sqldscdsOrigem2__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 880
    Top = 212
  end
  object sqldscdsOrigem2: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 789
    Top = 217
  end
  object sqldsLocalizaOrigem2: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 791
    Top = 308
  end
  object Conexao_Origem: TADOConnection
    ConnectionTimeout = 99999
    LoginPrompt = False
    Left = 788
    Top = 12
  end
  object cdsFuncao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncao'
    Left = 324
    Top = 206
  end
  object dspFuncao: TDataSetProvider
    DataSet = SQLDsFuncao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 292
    Top = 206
  end
  object SQLDsFuncao: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 260
    Top = 206
  end
  object cdsSubFuncao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSubFuncao'
    Left = 324
    Top = 254
  end
  object dspSubFuncao: TDataSetProvider
    DataSet = sqldsSubFuncao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 292
    Top = 254
  end
  object sqldsSubFuncao: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 260
    Top = 254
  end
  object cdsPrograma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrograma'
    Left = 328
    Top = 302
  end
  object dspPrograma: TDataSetProvider
    DataSet = sqldsPrograma
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 302
  end
  object sqldsPrograma: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 264
    Top = 302
  end
  object cdsProjAtiv: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProjAtiv'
    Left = 328
    Top = 350
  end
  object dspProjAtiv: TDataSetProvider
    DataSet = sqldsProjAtiv
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 350
  end
  object sqldsProjAtiv: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 264
    Top = 350
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    Left = 328
    Top = 398
  end
  object dspCategoria: TDataSetProvider
    DataSet = sqldsCategoria
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 398
  end
  object sqldsCategoria: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 264
    Top = 398
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 330
    Top = 442
  end
  object dspGrupo: TDataSetProvider
    DataSet = sqldsGrupo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 298
    Top = 442
  end
  object sqldsGrupo: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 266
    Top = 442
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModalidade'
    Left = 330
    Top = 490
  end
  object dspModalidade: TDataSetProvider
    DataSet = sqldsModalidade
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 298
    Top = 490
  end
  object sqldsModalidade: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 266
    Top = 490
  end
  object cdsElemento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspElemento'
    Left = 330
    Top = 538
  end
  object dspElemento: TDataSetProvider
    DataSet = sqldsElemento
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 298
    Top = 538
  end
  object sqldsElemento: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 266
    Top = 538
  end
  object cdsCatec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCatec'
    Left = 330
    Top = 586
  end
  object dspCatec: TDataSetProvider
    DataSet = sqldsCatec
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 298
    Top = 586
  end
  object sqldsCatec: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 266
    Top = 586
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    Left = 204
    Top = 155
  end
  object dspBanco: TDataSetProvider
    DataSet = sqldsBanco
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 172
    Top = 155
  end
  object sqldsBanco: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 140
    Top = 155
  end
  object cdsAgencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgencia'
    Left = 202
    Top = 199
  end
  object dspAgencia: TDataSetProvider
    DataSet = sqldsAgencia
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 170
    Top = 199
  end
  object sqldsAgencia: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 138
    Top = 199
  end
  object cdsConpla: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConpla'
    Left = 203
    Top = 243
  end
  object dspConpla: TDataSetProvider
    DataSet = sqldsConpla
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 170
    Top = 243
  end
  object sqldsConpla: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 138
    Top = 243
  end
  object cdsConplaSCPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConplaSCPI'
    Left = 205
    Top = 287
  end
  object dspConplaSCPI: TDataSetProvider
    DataSet = sqldsConplaSCPI
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 171
    Top = 287
  end
  object sqldsConplaSCPI: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 139
    Top = 287
  end
  object cdsRecTab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecTab'
    Left = 324
    Top = 10
  end
  object dspRecTab: TDataSetProvider
    DataSet = sqldsRecTab
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 292
    Top = 10
  end
  object sqldsRecTab: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 260
    Top = 10
  end
  object dspLocalizaOrigem3: TDataSetProvider
    DataSet = sqldsLocalizaOrigem3
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 928
    Top = 358
  end
  object LocalizaOrigem3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalizaOrigem3'
    Left = 960
    Top = 358
  end
  object sqldsLocalizaOrigem3__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 888
    Top = 358
  end
  object dspLocalizaOrigem4: TDataSetProvider
    DataSet = sqldsLocalizaOrigem4
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 928
    Top = 406
  end
  object LocalizaOrigem4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalizaOrigem4'
    Left = 960
    Top = 406
  end
  object sqldsLocalizaOrigem4__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 888
    Top = 406
  end
  object dspLocalizaOrigem5: TDataSetProvider
    DataSet = sqldsLocalizaOrigem5
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 932
    Top = 454
  end
  object LocalizaOrigem5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocalizaOrigem5'
    Left = 964
    Top = 454
  end
  object sqldsLocalizaOrigem5__: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 892
    Top = 454
  end
  object sqldsLocalizaOrigem4: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 794
    Top = 407
  end
  object sqldsAtualizaOrigem: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 796
    Top = 497
  end
  object sqldsLocalizaOrigem5: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 795
    Top = 452
  end
  object AdoListaBco: TADODataSet
    CursorType = ctDynamic
    CommandTimeout = 1000
    Parameters = <>
    Left = 708
    Top = 4
  end
  object DspListaBco: TDataSetProvider
    DataSet = AdoListaBco
    Options = [poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 716
    Top = 16
  end
  object CdsListaBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspListaBco'
    Left = 720
    Top = 32
  end
  object dspAuxOrigem: TDataSetProvider
    DataSet = sqldsauxOrigem
    Options = [poFetchBlobsOnDemand, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    Left = 924
    Top = 72
  end
  object AuxOrigem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAuxOrigem'
    Left = 956
    Top = 72
  end
  object SQLDataSet1: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Origem_
    Left = 880
    Top = 72
  end
  object sqldsauxOrigem: TADODataSet
    Connection = Conexao_Origem
    CommandTimeout = 9999999
    Parameters = <>
    Left = 788
    Top = 72
  end
  object cdsFongrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFongrupo'
    Left = 444
    Top = 118
  end
  object dspFongrupo: TDataSetProvider
    DataSet = SQLDSFongrupo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 412
    Top = 118
  end
  object SQLDSFongrupo: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 380
    Top = 118
  end
  object cdsFonCodigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFonCodigo'
    Left = 444
    Top = 166
  end
  object dspFonCodigo: TDataSetProvider
    DataSet = SQLDSFonCodigo
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 412
    Top = 166
  end
  object SQLDSFonCodigo: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 380
    Top = 166
  end
  object sqldsRecdis1: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 145
    Top = 549
  end
  object dspRecdis1: TDataSetProvider
    DataSet = sqldsRecdis1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 177
    Top = 549
  end
  object CdsRecDis1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecdis1'
    Left = 209
    Top = 549
  end
  object cdsdesconD: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from descon_detalhe'
    Params = <>
    ProviderName = 'dspdesconD'
    Left = 208
    Top = 418
  end
  object dspdesconD: TDataSetProvider
    DataSet = sqldsdesconD
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 176
    Top = 418
  end
  object sqldsdesconD: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao_Destino
    Left = 144
    Top = 418
  end
end
