object Form1: TForm1
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Caixa Econ'#244'mica'
  ClientHeight = 221
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Total: TLabel
    Left = 363
    Top = 204
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Button1: TButton
    Left = 31
    Top = 34
    Width = 75
    Height = 25
    Caption = 'Arquivo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 31
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    Left = 7
    Top = 166
    Width = 133
    Height = 17
    TabOrder = 2
  end
  object Button3: TButton
    Left = 31
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = Button3Click
  end
  object MemoArqui: TMemo
    Left = 150
    Top = 8
    Width = 294
    Height = 191
    Lines.Strings = (
      'MemoArqui')
    ParentShowHint = False
    ScrollBars = ssBoth
    ShowHint = True
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 13
    Top = 12
    Width = 122
    Height = 17
    Caption = 'Insert Table RET_CEF'
    TabOrder = 5
  end
  object DialogFile: TOpenDialog
    Left = 8
    Top = 8
  end
  object DBConnectSIA: TSQLConnection
    ConnectionName = 'FBConnection'
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
    Left = 112
    Top = 8
  end
  object QInsertRET_CEF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConnectSIA
    Left = 56
    Top = 56
  end
end
