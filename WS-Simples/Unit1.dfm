object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 414
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 101
    Width = 427
    Height = 305
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object LabelResquest: TLinkLabel
    Left = 304
    Top = 8
    Width = 4
    Height = 4
    TabOrder = 1
  end
  object LabelAtualizada: TLinkLabel
    Left = 336
    Top = 23
    Width = 4
    Height = 4
    TabOrder = 2
  end
  object LabelError: TLinkLabel
    Left = 304
    Top = 54
    Width = 4
    Height = 4
    TabOrder = 3
  end
  object ProgressBar1: TProgressBar
    Left = 264
    Top = 76
    Width = 158
    Height = 17
    TabOrder = 4
  end
  object Button1: TButton
    Left = 57
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 24
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 96
    Top = 8
  end
  object RESTResponse1: TRESTResponse
    Left = 176
    Top = 8
  end
  object SQLConnectionSIA: TSQLConnection
    Left = 392
    Top = 8
  end
  object SQLQuerySN: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from SIMPLES_NACIONAL_AUX2')
    SQLConnection = SQLConnectionSIA
    Left = 320
    Top = 8
  end
end
