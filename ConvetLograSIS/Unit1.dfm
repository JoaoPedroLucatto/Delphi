object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Convers'#227'o Logradouro - SIS'
  ClientHeight = 308
  ClientWidth = 456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 167
    Top = 145
    Width = 98
    Height = 16
    Caption = 'Conversor - SIS'
    Color = clDefault
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object LabelConvert: TLabel
    Left = 171
    Top = 170
    Width = 3
    Height = 13
    Color = 1776892
    ParentColor = False
  end
  object Label2: TLabel
    Left = 4
    Top = 3
    Width = 105
    Height = 13
    Caption = 'Caminho dos bancos !'
  end
  object ProgressBar1: TProgressBar
    Left = 42
    Top = 195
    Width = 369
    Height = 17
    TabOrder = 0
  end
  object Button1: TButton
    Left = 177
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object SIA: TLabeledEdit
    Left = 26
    Top = 34
    Width = 417
    Height = 21
    EditLabel.Width = 17
    EditLabel.Height = 13
    EditLabel.Caption = 'SIA'
    TabOrder = 2
    Text = 
      'localhost/3055:C:\Fiorilli\convers'#227'o\CIDADES\CAPELA\SIA\SGB_DADO' +
      'S\SIADADOS.FDB'
  end
  object SIS: TLabeledEdit
    Left = 26
    Top = 78
    Width = 417
    Height = 21
    EditLabel.Width = 16
    EditLabel.Height = 13
    EditLabel.Caption = 'SIS'
    TabOrder = 3
    Text = 
      'localhost/3055:C:\Fiorilli\convers'#227'o\CIDADES\CAPELA\SIS\DADOS\SS' +
      'A.FDB'
  end
  object codMunicipio: TLabeledEdit
    Left = 26
    Top = 118
    Width = 121
    Height = 21
    EditLabel.Width = 69
    EditLabel.Height = 13
    EditLabel.Caption = 'Cod. Munic'#237'pio'
    TabOrder = 4
  end
  object CheckTipoLogra: TCheckBox
    Left = 153
    Top = 122
    Width = 97
    Height = 17
    Caption = 'Tipo Logradouro'
    TabOrder = 5
  end
  object CheckLogra: TCheckBox
    Left = 264
    Top = 122
    Width = 97
    Height = 17
    Caption = 'Logradouro'
    TabOrder = 6
  end
  object CheckBairro: TCheckBox
    Left = 351
    Top = 122
    Width = 97
    Height = 17
    Caption = 'Bairro'
    TabOrder = 7
  end
  object dbConectSIS: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=localhost/3055:C:\Fiorilli\convers'#227'o\CIDADES\CAPELA\SIS' +
        '\DADOS\SSA.FDB'
      'RoleName=RoleName'
      'User_Name=FSCSCPI8'
      'Password=scpi'
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
    Left = 13
    Top = 225
  end
  object dbConectSIA: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=localhost/3055:C:\Fiorilli\convers'#227'o\CIDADES\CAPELA\SIA' +
        '\SGB_DADOS\SIADADOS.FDB'
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
    Left = 403
    Top = 8
  end
  object QueryLogradouroSIA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConectSIA
    Left = 316
    Top = 8
  end
  object QueryTipoLograSIA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConectSIA
    Left = 208
    Top = 8
  end
  object QueryBairroSIS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConectSIS
    Left = 388
    Top = 225
  end
  object QueryBairroSIA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConectSIA
    Left = 104
    Top = 8
  end
  object QueryTipoLogradouroSIS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConectSIS
    Left = 296
    Top = 225
  end
  object QueryLogradouroSIS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dbConectSIS
    Left = 96
    Top = 225
  end
end
