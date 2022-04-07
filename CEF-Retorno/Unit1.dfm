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
    Left = 0
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
  object DialogFile: TOpenDialog
    Left = 8
    Top = 8
  end
end
