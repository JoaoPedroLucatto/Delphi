object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DAF - Simples Nacional'
  ClientHeight = 223
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  PixelsPerInch = 96
  TextHeight = 13
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 40
    Width = 377
    Height = 21
    EditLabel.Width = 95
    EditLabel.Height = 13
    EditLabel.Caption = 'DIR - Arquivo - DAF'
    TabOrder = 0
  end
  object Button1: TButton
    Left = 388
    Top = 38
    Width = 41
    Height = 25
    Caption = '...'
    TabOrder = 1
    OnClick = Button1Click
  end
  object LabeledEditNumeroGuia: TLabeledEdit
    Left = 8
    Top = 88
    Width = 185
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero Guia:'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 296
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Analisar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 123
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object ProgressBar1: TProgressBar
    Left = 221
    Top = 193
    Width = 216
    Height = 17
    TabOrder = 5
  end
  object ButtonFechar: TButton
    Left = 296
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = ButtonFecharClick
  end
  object LinkLabel1: TLinkLabel
    Left = 248
    Top = 67
    Width = 4
    Height = 4
    Color = clRed
    ParentColor = False
    TabOrder = 7
  end
  object CheckTotalizador: TCheckBox
    Left = 296
    Top = 88
    Width = 97
    Height = 17
    Caption = 'CheckTotalizador'
    TabOrder = 8
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 408
    Top = 72
  end
end
