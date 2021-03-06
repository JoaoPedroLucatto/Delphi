object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Convert Protocolo'
  ClientHeight = 252
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 128
    Width = 561
    Height = 25
    TabOrder = 0
  end
  object Converter: TButton
    Left = 256
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 1
    OnClick = ConverterClick
  end
  object Connection_Origem: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=T_PROTOCOLO;Data Source=DES' +
      'KTOP-PV4IV93;Initial File Name="";Server SPN=0207'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 32
    Top = 17
  end
  object QLocais_Origem: TADOQuery
    Connection = Connection_Origem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM dbo.T_LOCAIS')
    Left = 128
    Top = 16
  end
  object Q_Pessoa_Origem: TADOQuery
    Active = True
    Connection = Connection_Origem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM dbo.T_PESSOAS')
    Left = 226
    Top = 17
  end
  object Connection_Destino: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=localhost/3055:C:\Fiorilli\SECRETARIA\SECRETARIA.FDB'
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
      'UseUnicode=False')
    Connected = True
    Left = 40
    Top = 200
  end
  object Q_Setor_Destino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Connection_Destino
    Left = 136
    Top = 200
  end
  object Q_Contribuinte_Destino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Connection_Destino
    Left = 240
    Top = 200
  end
  object Q_Protocolo_Destino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Connection_Destino
    Left = 360
    Top = 200
  end
  object Q_Protocolo_Origem: TADOQuery
    Active = True
    Connection = Connection_Origem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM dbo.T_PROTOCOLO'
      '  order by CODIGO')
    Left = 328
    Top = 16
  end
  object Q_Assunto_Destino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Connection_Destino
    Left = 488
    Top = 208
  end
  object Q_MAX_ITEM_PROTOCOLO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT MAX(ITEM_PTR) FROM SE_PTRAMITE WHERE cod_emp_ptr = 1 AND ' +
        'codigo_ptr=: CODIGO AND exercicio_ptr=: EXERCICIO')
    SQLConnection = Connection_Destino
    Left = 488
    Top = 160
  end
end
