object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Optante - Simples Nacional | Cetil'
  ClientHeight = 337
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelNomeArqui: TLabel
    Left = 8
    Top = 125
    Width = 3
    Height = 13
  end
  object Label1: TLabel
    Left = 8
    Top = 30
    Width = 49
    Height = 13
    Caption = 'Banco SIA'
  end
  object Edit1: TEdit
    Left = 8
    Top = 49
    Width = 413
    Height = 21
    TabOrder = 0
    Text = 
      'localhost/3055:C:\Fiorilli\convers'#227'o\CIDADES\CAPELA\SIS\DADOS\SS' +
      'A.FDB'
  end
  object ButtonLocalizar: TButton
    Left = 40
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Arquivo'
    TabOrder = 1
    OnClick = ButtonLocalizarClick
  end
  object MemoExibi: TMemo
    Left = 8
    Top = 144
    Width = 413
    Height = 153
    Lines.Strings = (
      'MemoExibi')
    TabOrder = 2
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 303
    Width = 413
    Height = 26
    TabOrder = 3
  end
  object CheckAnalisar: TCheckBox
    Left = 256
    Top = 100
    Width = 97
    Height = 17
    Caption = 'Analisar'
    TabOrder = 4
  end
  object CheckUpdate: TCheckBox
    Left = 324
    Top = 99
    Width = 97
    Height = 17
    Caption = 'Update'
    TabOrder = 5
  end
  object ButtonAnalisar: TButton
    Left = 152
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Analisar'
    TabOrder = 6
    OnClick = ButtonAnalisarClick
  end
  object DialogFile: TOpenDialog
    Top = 65534
  end
  object DBConnectSIA: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=192.168.0.118/3055:C:\Fiorilli\SIA7\CIDADES\MARACAI-PM\' +
        'SGB_DADOS\SIADADOS.FDB'
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
    Left = 272
    Top = 9
  end
  object QueryUpdate: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConnectSIA
    Left = 328
    Top = 8
  end
  object QuerySelect: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConnectSIA
    Left = 384
    Top = 8
  end
end
