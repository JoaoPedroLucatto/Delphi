object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 493
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 474
    Width = 754
    Height = 19
    Panels = <>
    ExplicitLeft = 384
    ExplicitTop = 264
    ExplicitWidth = 0
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 104
    Top = 65520
    object Geral1: TMenuItem
      Caption = 'Tabelas Gerais'
      object MatriaPrima1: TMenuItem
        Caption = 'Mat'#233'ria Prima'
        OnClick = MatriaPrima1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
    end
  end
end
