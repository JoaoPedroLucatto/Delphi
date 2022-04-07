inherited FCadRural: TFCadRural
  Left = 241
  Top = 116
  Caption = 'Cadastro das Propriedades'
  ClientHeight = 519
  ClientWidth = 720
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitLeft = 241
  ExplicitTop = 116
  ExplicitWidth = 736
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 13
  inherited PG: TRzPageControl
    Width = 720
    Height = 441
    ExplicitWidth = 720
    ExplicitHeight = 441
    FixedDimension = 19
    inherited tbCad: TRzTabSheet
      ExplicitWidth = 718
      ExplicitHeight = 420
      inherited Panel1: TPanel
        Width = 718
        ExplicitWidth = 718
        inherited RzBackground1: TRzBackground
          Width = 718
          ExplicitWidth = 718
        end
        inherited Label2: TLabel
          Width = 219
          Caption = 'Cadastro das Propriedades'
          ExplicitWidth = 219
        end
      end
      object PGGeral: TRzPageControl
        Left = 0
        Top = 23
        Width = 718
        Height = 397
        ActivePage = tbCadastral
        ActivePageDefault = tbCadastral
        Align = alClient
        BoldCurrentTab = True
        UseColoredTabs = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        FlatColor = 10263441
        ImagePosition = ipTop
        HotTrackColor = 10987091
        HotTrackStyle = htsTabBar
        ParentColor = False
        ParentFont = False
        ShowShadow = False
        TextOrientation = orVertical
        TabColors.HighlightBar = 3983359
        TabColors.Unselected = clBtnFace
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toLeft
        TabSequence = tsReverse
        TabStyle = tsCutCorner
        Transparent = True
        FixedDimension = 22
        object tbCadastral: TRzTabSheet
          Caption = 'Propriedade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object RzPanel3: TRzPanel
            Left = 0
            Top = 0
            Width = 694
            Height = 46
            Align = alTop
            BorderOuter = fsBump
            TabOrder = 0
            object Label3: TLabel
              Left = 5
              Top = 4
              Width = 52
              Height = 13
              Caption = 'Cadastro'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 149
              Top = 4
              Width = 52
              Height = 13
              Caption = 'Inscri'#231#227'o'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 293
              Top = 4
              Width = 83
              Height = 13
              Caption = 'Data Cadastro'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 620
              Top = 4
              Width = 66
              Height = 13
              Caption = 'Setor Venc.'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object btnSetVenc: TSpeedButton
              Left = 666
              Top = 19
              Width = 23
              Height = 23
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                CE070000424DCE07000000000000360000002800000024000000120000000100
                18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
              NumGlyphs = 2
              ParentFont = False
              OnClick = btnSetVencClick
            end
            object Label74: TLabel
              Left = 394
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Cobran'#231'a'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton2: TSpeedButton
              Left = 426
              Top = 19
              Width = 23
              Height = 22
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                CE070000424DCE07000000000000360000002800000024000000120000000100
                18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton2Click
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 20
              Width = 142
              Height = 21
              Ctl3D = True
              DataField = 'COD_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyDown = DBEdit1KeyDown
              OnMouseDown = DBEdit1MouseDown
            end
            object DBEdit6: TDBEdit
              Left = 149
              Top = 20
              Width = 142
              Height = 21
              Ctl3D = True
              DataField = 'MATRIC_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnKeyDown = DBEdit1KeyDown
            end
            object EvDBDateEdit14: TEvDBDateEdit
              Left = 293
              Top = 20
              Width = 99
              Height = 21
              Ctl3D = True
              DataField = 'DTCAD_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                56060000424D560600000000000036000000280000001C0000000E0000000100
                2000000000002006000000000000000000000000000000000000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0000080
                8000008080000080800000808000008080000080800000808000008080000080
                80000080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                8000808080808080800080808080808080008080808080808000808080808080
                8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C0C0C0C0
                C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                8000FF0000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
                FF00FF00000000808000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0FFFFFF
                FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00C0C0C0808080
                8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                8000808080808080800080808080808080008080808080808000808080808080
                80008080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                8000808080808080800080808080808080008080808080808000808080808080
                8000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
              ParentCtl3D = False
              ParentFont = False
              ShowButton = True
              TabOrder = 2
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit28: TDBEdit
              Left = 620
              Top = 20
              Width = 44
              Height = 21
              Ctl3D = True
              DataField = 'COD_STR_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              OnExit = DBEdit28Exit
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit63: TDBEdit
              Left = 394
              Top = 20
              Width = 31
              Height = 21
              Ctl3D = True
              DataField = 'COD_COB_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              OnExit = DBEdit63Exit
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit30: TDBEdit
              Tag = 1
              Left = 450
              Top = 20
              Width = 169
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'DESCRI_COB'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnKeyDown = DBEdit1KeyDown
            end
          end
          object PGImovel: TRzPageControl
            Left = 0
            Top = 46
            Width = 694
            Height = 349
            ActivePage = tbDadosG
            ActivePageDefault = tbDadosG
            Align = alClient
            BoldCurrentTab = True
            Color = 16119543
            FlatColor = 10263441
            HotTrackColor = 3983359
            HotTrackStyle = htsTabBar
            ParentColor = False
            TabColors.HighlightBar = 3983359
            TabIndex = 0
            TabOrder = 1
            TabStyle = tsRoundCorners
            FixedDimension = 19
            object tbDadosG: TRzTabSheet
              Color = 16119543
              Caption = 'Dados Gerais'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label13: TLabel
                Left = 6
                Top = 42
                Width = 72
                Height = 13
                Caption = 'Respons'#225'vel'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 569
                Top = 4
                Width = 27
                Height = 13
                Caption = 'Fone'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label15: TLabel
                Left = 335
                Top = 42
                Width = 84
                Height = 13
                Caption = 'Inscr. Produtor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 451
                Top = 42
                Width = 30
                Height = 13
                Caption = 'Incra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 193
                Top = 83
                Width = 68
                Height = 13
                Caption = #193'rea em M'#178
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 108
                Top = 83
                Width = 53
                Height = 13
                Caption = 'Alqueires'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label21: TLabel
                Left = 6
                Top = 83
                Width = 50
                Height = 13
                Caption = 'Hect'#225'res'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 319
                Top = 83
                Width = 52
                Height = 13
                Caption = 'Dist'#226'ncia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label24: TLabel
                Left = 6
                Top = 4
                Width = 69
                Height = 13
                Caption = 'Propriedade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label25: TLabel
                Left = 436
                Top = 83
                Width = 38
                Height = 13
                Caption = 'Pontos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label28: TLabel
                Left = 553
                Top = 83
                Width = 64
                Height = 13
                Caption = 'Valor Venal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label30: TLabel
                Left = 6
                Top = 122
                Width = 53
                Height = 13
                Caption = 'Endere'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 6
                Top = 162
                Width = 80
                Height = 13
                Caption = 'Complemento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object btnLogr: TSpeedButton
                Left = 68
                Top = 137
                Width = 23
                Height = 23
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = btnLogrClick
              end
              object Label26: TLabel
                Left = 6
                Top = 202
                Width = 149
                Height = 13
                Caption = 'Observa'#231#245'es do Endere'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label38: TLabel
                Left = 359
                Top = 162
                Width = 107
                Height = 13
                Caption = 'Destina'#231#227'o Im'#243'vel'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton9: TSpeedButton
                Left = 411
                Top = 178
                Width = 23
                Height = 23
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton9Click
              end
              object Label40: TLabel
                Left = 359
                Top = 202
                Width = 97
                Height = 13
                Caption = 'Origem do Lit'#237'gio'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton10: TSpeedButton
                Left = 411
                Top = 218
                Width = 23
                Height = 23
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton10Click
              end
              object Label34: TLabel
                Left = 359
                Top = 242
                Width = 107
                Height = 13
                Caption = 'Tipo Zona Especial'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton7: TSpeedButton
                Left = 411
                Top = 257
                Width = 23
                Height = 23
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton7Click
              end
              object Label76: TLabel
                Left = 575
                Top = 42
                Width = 41
                Height = 13
                Caption = 'N.I.R.F.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 359
                Top = 281
                Width = 74
                Height = 13
                Caption = 'Classifica'#231#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton1: TSpeedButton
                Left = 411
                Top = 296
                Width = 23
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton1Click
              end
              object Label77: TLabel
                Left = 483
                Top = 122
                Width = 64
                Height = 13
                Caption = 'Zona Fiscal'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton14: TSpeedButton
                Left = 523
                Top = 137
                Width = 23
                Height = 23
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton14Click
              end
              object Image1: TImage
                Left = 168
                Top = 81
                Width = 17
                Height = 16
                Hint = 
                  'Os campos abaixo bloqueados s'#227'o calculados automaticamente ap'#243's ' +
                  'o campo'#13'"Hect'#225'res" ser informado.'#13#13'Obs.: Para que o alquere seja' +
                  ' calculado corretamente '#233' necess'#225'rio cadastrar as '#13'medidas padr'#245 +
                  'es por alquere no Menu abaixo:'#13#13'Configura'#231#245'es de Calculo -> Menu' +
                  ' Tabelas Gerais > 1.9 Configura'#231#245'es > Quadro'#13'Medidas > Campo Hec' +
                  'tare'
                ParentShowHint = False
                Picture.Data = {
                  0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000011
                  000000110802000000B40FD0AD0000000467414D410000B18F0BFC6105000000
                  097048597300000B0F00000B0F0192F903A5000002A349444154384F5590DD4F
                  D35018C6ABFF845E6042A233106EA684044434014D8CE04CB8D270C32E4CC444
                  22988046CC882123316A2278E160A0CC0DB60932E3DA0DD8101086E3433694C9
                  BA0FD63206EDCA3E645FA880EFA10D9137A76F9FF39CE797B7A758EC70C5E371
                  411D2EF00F8E04E6606F5DA06E75CCE43DB662F74C794D56D05607FD7F0004C6
                  6FA0D3EB6199CE59289F544C052DFEC42CBB63F1274117CABF800FA77C0C3A62
                  A01C9E75ACDEDCD8EF325199E6F974D558EACA70A2EA73523697365319F0B13A
                  1364D0209E8157C3BBF956934FB194918C6CA9DD1926B5BBB7B7C7247734EEED
                  6BC3BFC07F6AF637AAE7F93062C61DD4A56793EDDFD3A544AC048F417AEBF72E
                  8F41357D4D9412D1F61F69C88CEFDF0D31773AEDF2A1C07573B4C8B05964E054
                  4B2910E73E6EFAA27F80512D25C184D3D6A100240546F4C0DC32C5151BC2F9FD
                  4C7E3F9B3FC02231C06E24FE0223B7C7C12C1E0CB7D8B8D30F87208FFE35566B
                  AC1BDB2CD087C4DA905887D6E50F1B0E661B00B32F894C6DA84017AA1BE3B0BB
                  4681C96EC0A5F8DA99BE60AE6635478D967201DD0AF72440F3E6596D506A5CCB
                  6E20846FAB7E357153E32AD1D1A2B72BA29E15E8DF4269602EF606F69D00ACF3
                  5AFA86DA55DD3E21CCC16DAE1C99B5D2101475FBB294DEAC2EEF892E1F74B494
                  48835F39B89A2B1B256C3F85392CCB4ADB2CE59DCE326DE094923CAE7093E10C
                  CC7964593FF6DA7DB2932CEB5BB9DAE190BEB4300C83E6C0138944ACB3CB58CD
                  E085367B85DE2F7E43926C0A3123417137090EF8703A3AB70C498181E2386E76
                  D15DFD9CC0EEE315CA45492F594B04257D9E0AA513AB374A5F1033CE65C8F061
                  8181AF048BA669153E5DFEE4D391DB7A4CAA3F5AF31E748F719AA2A80300DD07
                  1E287E03057703D2EBF59224091D34DC211A8DF200AA78FC1FAF49897FBDD002
                  280000000049454E44AE426082}
                ShowHint = True
              end
              object DBEdit5: TDBEdit
                Left = 6
                Top = 58
                Width = 326
                Height = 21
                DataField = 'RESPONSA_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit8: TDBEdit
                Left = 569
                Top = 20
                Width = 115
                Height = 21
                DataField = 'FONEP_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit17: TDBEdit
                Left = 335
                Top = 58
                Width = 113
                Height = 21
                DataField = 'INSCRP_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit7: TDBEdit
                Left = 451
                Top = 58
                Width = 121
                Height = 21
                DataField = 'INCRA_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit21: TDBEdit
                Left = 6
                Top = 20
                Width = 560
                Height = 21
                DataField = 'PROPRIEDADE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit29: TDBEdit
                Left = 6
                Top = 179
                Width = 350
                Height = 21
                DataField = 'COMPL_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 16
                OnKeyDown = DBEdit1KeyDown
              end
              object DBMemo2: TDBMemo
                Left = 6
                Top = 217
                Width = 350
                Height = 102
                DataField = 'OBSLOGRA_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 17
              end
              object DBEdit26: TDBEdit
                Left = 6
                Top = 138
                Width = 60
                Height = 21
                Ctl3D = True
                DataField = 'COD_LOG_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 12
                OnExit = DBEdit26Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit42: TDBEdit
                Tag = 1
                Left = 92
                Top = 138
                Width = 388
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'LOGRA_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 13
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit39: TDBEdit
                Left = 359
                Top = 179
                Width = 51
                Height = 21
                Ctl3D = True
                DataField = 'COD_DESTIMOV_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 18
                OnExit = DBEdit39Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit40: TDBEdit
                Tag = 1
                Left = 437
                Top = 179
                Width = 247
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'DESCR_RDI'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 19
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit41: TDBEdit
                Left = 359
                Top = 219
                Width = 51
                Height = 21
                Ctl3D = True
                DataField = 'COD_ORIGLITIGIO_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 20
                OnExit = DBEdit41Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit43: TDBEdit
                Tag = 1
                Left = 437
                Top = 219
                Width = 247
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'DESCR_ROL'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 21
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit35: TDBEdit
                Left = 359
                Top = 258
                Width = 51
                Height = 21
                Ctl3D = True
                DataField = 'COD_TPZONAESP_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 22
                OnExit = DBEdit35Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit36: TDBEdit
                Tag = 1
                Left = 437
                Top = 258
                Width = 247
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'DESCR_RTZ'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 23
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit67: TDBEdit
                Left = 575
                Top = 58
                Width = 109
                Height = 21
                DataField = 'NIRF_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit3: TDBEdit
                Left = 359
                Top = 297
                Width = 51
                Height = 21
                Ctl3D = True
                DataField = 'COD_CLASS_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 24
                OnExit = DBEdit3Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit4: TDBEdit
                Tag = 1
                Left = 436
                Top = 297
                Width = 248
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'DESCR_RCL'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 25
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit69: TDBEdit
                Left = 483
                Top = 138
                Width = 38
                Height = 21
                Ctl3D = True
                DataField = 'COD_ZNA_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 14
                OnExit = DBEdit69Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit71: TDBEdit
                Tag = 1
                Left = 549
                Top = 138
                Width = 135
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'DESCR_RZN'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 15
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBNumEdit1: TEvDBNumEdit
                Left = 6
                Top = 99
                Width = 99
                Height = 21
                AutoHideCalculator = False
                DataField = 'AREAE_RRR'
                DataSource = dsCadastro
                Decimals = 5
                Glyph.Data = {
                  7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                  2000000000004805000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF009A6A39009767360093643400906131008C5E2F00895B
                  2C0085582A00825527007F522500FF00FF00FF00FF00FF00FF00FF00FF008585
                  8500828282007F7F7F007D7D7D007A7A7A007777770075757500727272006F6F
                  6F00FF00FF00FF00FF00FF00FF00FF00FF009F6E3C00E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0082552700FF00FF00FF00FF00FF00
                  FF00FF00FF0089898900B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B0072727200FF00FF00FF00FF00FF00FF00FF00FF00A2713E00FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30085582A00FF00
                  FF00FF00FF00FF00FF00FF00FF008B8B8B00FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E00075757500FF00FF00FF00FF00FF00FF00FF00
                  FF00A5734000E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F00895B2C00FF00FF00FF00FF00FF00FF00FF00FF008D8D8D00B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0077777700FF00FF00FF00
                  FF00FF00FF00FF00FF00A8764200FFFFFF00D0A08000FFFFFF00D0A08000FFFF
                  FF00D0A08000E9D7C3008C5E2F00FF00FF00FF00FF00FF00FF00FF00FF008F8F
                  8F00FFFFFF00B7B7B700FFFFFF00B7B7B700FFFFFF00B7B7B700E0E0E0007A7A
                  7A00FF00FF00FF00FF00FF00FF00FF00FF00AB794400E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0090613100FF00FF00FF00FF00FF00
                  FF00FF00FF0092929200B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B007D7D7D00FF00FF00FF00FF00FF00FF00FF00FF00AE7B4600FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30093643400FF00
                  FF00FF00FF00FF00FF00FF00FF0093939300FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E0007F7F7F00FF00FF00FF00FF00FF00FF00FF00
                  FF00B17E4800E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F0097673600FF00FF00FF00FF00FF00FF00FF00FF0096969600B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0082828200FF00FF00FF00
                  FF00FF00FF00FF00FF00B4814A00FFF9F900FFF3F300FFEDED00FFE7E700FFDC
                  DC00FFD0D000FFD0D0009A6A3900FF00FF00FF00FF00FF00FF00FF00FF009999
                  9900FBFBFB00F8F8F800F4F4F400F0F0F000E9E9E900E2E2E200E2E2E2008585
                  8500FF00FF00FF00FF00FF00FF00FF00FF00B9854E00FFFFFF00FFF9F900FFF3
                  F300FFEDED00FFE7E700FFDCDC00FFDCDC009F6E3C00FF00FF00FF00FF00FF00
                  FF00FF00FF009C9C9C00FFFFFF00FBFBFB00F8F8F800F4F4F400F0F0F000E9E9
                  E900E9E9E90089898900FF00FF00FF00FF00FF00FF00FF00FF00BC875000B985
                  4E00B4814A00B17E4800AE7B4600AB794400A8764200A5734000A2713E00FF00
                  FF00FF00FF00FF00FF00FF00FF009E9E9E009C9C9C0099999900969696009393
                  9300929292008F8F8F008D8D8D008B8B8B00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00}
                TabOrder = 6
                OnExit = EvDBNumEdit1Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBNumEdit2: TEvDBNumEdit
                Tag = 66
                Left = 108
                Top = 99
                Width = 82
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = clBtnFace
                DataField = 'AREAH_RRR'
                DataSource = dsCadastro
                Decimals = 5
                Glyph.Data = {
                  7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                  2000000000004805000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF009A6A39009767360093643400906131008C5E2F00895B
                  2C0085582A00825527007F522500FF00FF00FF00FF00FF00FF00FF00FF008585
                  8500828282007F7F7F007D7D7D007A7A7A007777770075757500727272006F6F
                  6F00FF00FF00FF00FF00FF00FF00FF00FF009F6E3C00E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0082552700FF00FF00FF00FF00FF00
                  FF00FF00FF0089898900B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B0072727200FF00FF00FF00FF00FF00FF00FF00FF00A2713E00FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30085582A00FF00
                  FF00FF00FF00FF00FF00FF00FF008B8B8B00FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E00075757500FF00FF00FF00FF00FF00FF00FF00
                  FF00A5734000E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F00895B2C00FF00FF00FF00FF00FF00FF00FF00FF008D8D8D00B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0077777700FF00FF00FF00
                  FF00FF00FF00FF00FF00A8764200FFFFFF00D0A08000FFFFFF00D0A08000FFFF
                  FF00D0A08000E9D7C3008C5E2F00FF00FF00FF00FF00FF00FF00FF00FF008F8F
                  8F00FFFFFF00B7B7B700FFFFFF00B7B7B700FFFFFF00B7B7B700E0E0E0007A7A
                  7A00FF00FF00FF00FF00FF00FF00FF00FF00AB794400E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0090613100FF00FF00FF00FF00FF00
                  FF00FF00FF0092929200B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B007D7D7D00FF00FF00FF00FF00FF00FF00FF00FF00AE7B4600FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30093643400FF00
                  FF00FF00FF00FF00FF00FF00FF0093939300FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E0007F7F7F00FF00FF00FF00FF00FF00FF00FF00
                  FF00B17E4800E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F0097673600FF00FF00FF00FF00FF00FF00FF00FF0096969600B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0082828200FF00FF00FF00
                  FF00FF00FF00FF00FF00B4814A00FFF9F900FFF3F300FFEDED00FFE7E700FFDC
                  DC00FFD0D000FFD0D0009A6A3900FF00FF00FF00FF00FF00FF00FF00FF009999
                  9900FBFBFB00F8F8F800F4F4F400F0F0F000E9E9E900E2E2E200E2E2E2008585
                  8500FF00FF00FF00FF00FF00FF00FF00FF00B9854E00FFFFFF00FFF9F900FFF3
                  F300FFEDED00FFE7E700FFDCDC00FFDCDC009F6E3C00FF00FF00FF00FF00FF00
                  FF00FF00FF009C9C9C00FFFFFF00FBFBFB00F8F8F800F4F4F400F0F0F000E9E9
                  E900E9E9E90089898900FF00FF00FF00FF00FF00FF00FF00FF00BC875000B985
                  4E00B4814A00B17E4800AE7B4600AB794400A8764200A5734000A2713E00FF00
                  FF00FF00FF00FF00FF00FF00FF009E9E9E009C9C9C0099999900969696009393
                  9300929292008F8F8F008D8D8D008B8B8B00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00}
                TabOrder = 7
                OnExit = EvDBNumEdit2Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBNumEdit3: TEvDBNumEdit
                Tag = 66
                Left = 193
                Top = 99
                Width = 123
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = clBtnFace
                DataField = 'AREAM_RRR'
                DataSource = dsCadastro
                Decimals = 5
                Glyph.Data = {
                  7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                  2000000000004805000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF009A6A39009767360093643400906131008C5E2F00895B
                  2C0085582A00825527007F522500FF00FF00FF00FF00FF00FF00FF00FF008585
                  8500828282007F7F7F007D7D7D007A7A7A007777770075757500727272006F6F
                  6F00FF00FF00FF00FF00FF00FF00FF00FF009F6E3C00E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0082552700FF00FF00FF00FF00FF00
                  FF00FF00FF0089898900B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B0072727200FF00FF00FF00FF00FF00FF00FF00FF00A2713E00FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30085582A00FF00
                  FF00FF00FF00FF00FF00FF00FF008B8B8B00FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E00075757500FF00FF00FF00FF00FF00FF00FF00
                  FF00A5734000E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F00895B2C00FF00FF00FF00FF00FF00FF00FF00FF008D8D8D00B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0077777700FF00FF00FF00
                  FF00FF00FF00FF00FF00A8764200FFFFFF00D0A08000FFFFFF00D0A08000FFFF
                  FF00D0A08000E9D7C3008C5E2F00FF00FF00FF00FF00FF00FF00FF00FF008F8F
                  8F00FFFFFF00B7B7B700FFFFFF00B7B7B700FFFFFF00B7B7B700E0E0E0007A7A
                  7A00FF00FF00FF00FF00FF00FF00FF00FF00AB794400E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0090613100FF00FF00FF00FF00FF00
                  FF00FF00FF0092929200B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B007D7D7D00FF00FF00FF00FF00FF00FF00FF00FF00AE7B4600FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30093643400FF00
                  FF00FF00FF00FF00FF00FF00FF0093939300FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E0007F7F7F00FF00FF00FF00FF00FF00FF00FF00
                  FF00B17E4800E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F0097673600FF00FF00FF00FF00FF00FF00FF00FF0096969600B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0082828200FF00FF00FF00
                  FF00FF00FF00FF00FF00B4814A00FFF9F900FFF3F300FFEDED00FFE7E700FFDC
                  DC00FFD0D000FFD0D0009A6A3900FF00FF00FF00FF00FF00FF00FF00FF009999
                  9900FBFBFB00F8F8F800F4F4F400F0F0F000E9E9E900E2E2E200E2E2E2008585
                  8500FF00FF00FF00FF00FF00FF00FF00FF00B9854E00FFFFFF00FFF9F900FFF3
                  F300FFEDED00FFE7E700FFDCDC00FFDCDC009F6E3C00FF00FF00FF00FF00FF00
                  FF00FF00FF009C9C9C00FFFFFF00FBFBFB00F8F8F800F4F4F400F0F0F000E9E9
                  E900E9E9E90089898900FF00FF00FF00FF00FF00FF00FF00FF00BC875000B985
                  4E00B4814A00B17E4800AE7B4600AB794400A8764200A5734000A2713E00FF00
                  FF00FF00FF00FF00FF00FF00FF009E9E9E009C9C9C0099999900969696009393
                  9300929292008F8F8F008D8D8D008B8B8B00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00}
                TabOrder = 8
                OnExit = EvDBNumEdit3Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBNumEdit4: TEvDBNumEdit
                Left = 553
                Top = 99
                Width = 131
                Height = 21
                AutoHideCalculator = False
                DataField = 'VVENAL_RRR'
                DataSource = dsCadastro
                Decimals = 5
                Glyph.Data = {
                  7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                  2000000000004805000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF009A6A39009767360093643400906131008C5E2F00895B
                  2C0085582A00825527007F522500FF00FF00FF00FF00FF00FF00FF00FF008585
                  8500828282007F7F7F007D7D7D007A7A7A007777770075757500727272006F6F
                  6F00FF00FF00FF00FF00FF00FF00FF00FF009F6E3C00E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0082552700FF00FF00FF00FF00FF00
                  FF00FF00FF0089898900B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B0072727200FF00FF00FF00FF00FF00FF00FF00FF00A2713E00FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30085582A00FF00
                  FF00FF00FF00FF00FF00FF00FF008B8B8B00FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E00075757500FF00FF00FF00FF00FF00FF00FF00
                  FF00A5734000E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F00895B2C00FF00FF00FF00FF00FF00FF00FF00FF008D8D8D00B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0077777700FF00FF00FF00
                  FF00FF00FF00FF00FF00A8764200FFFFFF00D0A08000FFFFFF00D0A08000FFFF
                  FF00D0A08000E9D7C3008C5E2F00FF00FF00FF00FF00FF00FF00FF00FF008F8F
                  8F00FFFFFF00B7B7B700FFFFFF00B7B7B700FFFFFF00B7B7B700E0E0E0007A7A
                  7A00FF00FF00FF00FF00FF00FF00FF00FF00AB794400E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0090613100FF00FF00FF00FF00FF00
                  FF00FF00FF0092929200B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B007D7D7D00FF00FF00FF00FF00FF00FF00FF00FF00AE7B4600FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30093643400FF00
                  FF00FF00FF00FF00FF00FF00FF0093939300FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E0007F7F7F00FF00FF00FF00FF00FF00FF00FF00
                  FF00B17E4800E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F0097673600FF00FF00FF00FF00FF00FF00FF00FF0096969600B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0082828200FF00FF00FF00
                  FF00FF00FF00FF00FF00B4814A00FFF9F900FFF3F300FFEDED00FFE7E700FFDC
                  DC00FFD0D000FFD0D0009A6A3900FF00FF00FF00FF00FF00FF00FF00FF009999
                  9900FBFBFB00F8F8F800F4F4F400F0F0F000E9E9E900E2E2E200E2E2E2008585
                  8500FF00FF00FF00FF00FF00FF00FF00FF00B9854E00FFFFFF00FFF9F900FFF3
                  F300FFEDED00FFE7E700FFDCDC00FFDCDC009F6E3C00FF00FF00FF00FF00FF00
                  FF00FF00FF009C9C9C00FFFFFF00FBFBFB00F8F8F800F4F4F400F0F0F000E9E9
                  E900E9E9E90089898900FF00FF00FF00FF00FF00FF00FF00FF00BC875000B985
                  4E00B4814A00B17E4800AE7B4600AB794400A8764200A5734000A2713E00FF00
                  FF00FF00FF00FF00FF00FF00FF009E9E9E009C9C9C0099999900969696009393
                  9300929292008F8F8F008D8D8D008B8B8B00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00}
                TabOrder = 11
                OnExit = EvDBNumEdit1Exit
                OnKeyDown = DBEdit1KeyDown
                OnKeyPress = EvDBNumEdit4KeyPress
              end
              object EvDBNumEdit5: TEvDBNumEdit
                Left = 436
                Top = 99
                Width = 114
                Height = 21
                AutoHideCalculator = False
                DataField = 'PONTOS_RRR'
                DataSource = dsCadastro
                Decimals = 5
                Glyph.Data = {
                  7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                  2000000000004805000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF009A6A39009767360093643400906131008C5E2F00895B
                  2C0085582A00825527007F522500FF00FF00FF00FF00FF00FF00FF00FF008585
                  8500828282007F7F7F007D7D7D007A7A7A007777770075757500727272006F6F
                  6F00FF00FF00FF00FF00FF00FF00FF00FF009F6E3C00E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0082552700FF00FF00FF00FF00FF00
                  FF00FF00FF0089898900B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B0072727200FF00FF00FF00FF00FF00FF00FF00FF00A2713E00FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30085582A00FF00
                  FF00FF00FF00FF00FF00FF00FF008B8B8B00FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E00075757500FF00FF00FF00FF00FF00FF00FF00
                  FF00A5734000E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F00895B2C00FF00FF00FF00FF00FF00FF00FF00FF008D8D8D00B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0077777700FF00FF00FF00
                  FF00FF00FF00FF00FF00A8764200FFFFFF00D0A08000FFFFFF00D0A08000FFFF
                  FF00D0A08000E9D7C3008C5E2F00FF00FF00FF00FF00FF00FF00FF00FF008F8F
                  8F00FFFFFF00B7B7B700FFFFFF00B7B7B700FFFFFF00B7B7B700E0E0E0007A7A
                  7A00FF00FF00FF00FF00FF00FF00FF00FF00AB794400E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0090613100FF00FF00FF00FF00FF00
                  FF00FF00FF0092929200B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B007D7D7D00FF00FF00FF00FF00FF00FF00FF00FF00AE7B4600FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30093643400FF00
                  FF00FF00FF00FF00FF00FF00FF0093939300FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E0007F7F7F00FF00FF00FF00FF00FF00FF00FF00
                  FF00B17E4800E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F0097673600FF00FF00FF00FF00FF00FF00FF00FF0096969600B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0082828200FF00FF00FF00
                  FF00FF00FF00FF00FF00B4814A00FFF9F900FFF3F300FFEDED00FFE7E700FFDC
                  DC00FFD0D000FFD0D0009A6A3900FF00FF00FF00FF00FF00FF00FF00FF009999
                  9900FBFBFB00F8F8F800F4F4F400F0F0F000E9E9E900E2E2E200E2E2E2008585
                  8500FF00FF00FF00FF00FF00FF00FF00FF00B9854E00FFFFFF00FFF9F900FFF3
                  F300FFEDED00FFE7E700FFDCDC00FFDCDC009F6E3C00FF00FF00FF00FF00FF00
                  FF00FF00FF009C9C9C00FFFFFF00FBFBFB00F8F8F800F4F4F400F0F0F000E9E9
                  E900E9E9E90089898900FF00FF00FF00FF00FF00FF00FF00FF00BC875000B985
                  4E00B4814A00B17E4800AE7B4600AB794400A8764200A5734000A2713E00FF00
                  FF00FF00FF00FF00FF00FF00FF009E9E9E009C9C9C0099999900969696009393
                  9300929292008F8F8F008D8D8D008B8B8B00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00}
                TabOrder = 10
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBNumEdit6: TEvDBNumEdit
                Left = 319
                Top = 99
                Width = 114
                Height = 21
                AutoHideCalculator = False
                DataField = 'DISTANCIA_RRR'
                DataSource = dsCadastro
                Decimals = 5
                Glyph.Data = {
                  7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                  2000000000004805000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF009A6A39009767360093643400906131008C5E2F00895B
                  2C0085582A00825527007F522500FF00FF00FF00FF00FF00FF00FF00FF008585
                  8500828282007F7F7F007D7D7D007A7A7A007777770075757500727272006F6F
                  6F00FF00FF00FF00FF00FF00FF00FF00FF009F6E3C00E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0082552700FF00FF00FF00FF00FF00
                  FF00FF00FF0089898900B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B0072727200FF00FF00FF00FF00FF00FF00FF00FF00A2713E00FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30085582A00FF00
                  FF00FF00FF00FF00FF00FF00FF008B8B8B00FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E00075757500FF00FF00FF00FF00FF00FF00FF00
                  FF00A5734000E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F00895B2C00FF00FF00FF00FF00FF00FF00FF00FF008D8D8D00B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0077777700FF00FF00FF00
                  FF00FF00FF00FF00FF00A8764200FFFFFF00D0A08000FFFFFF00D0A08000FFFF
                  FF00D0A08000E9D7C3008C5E2F00FF00FF00FF00FF00FF00FF00FF00FF008F8F
                  8F00FFFFFF00B7B7B700FFFFFF00B7B7B700FFFFFF00B7B7B700E0E0E0007A7A
                  7A00FF00FF00FF00FF00FF00FF00FF00FF00AB794400E3947600DC8B6A00D682
                  5E00D07A5300CB724900C66B3F00C66B3F0090613100FF00FF00FF00FF00FF00
                  FF00FF00FF0092929200B1B1B100A9A9A900A1A1A10099999900929292008B8B
                  8B008B8B8B007D7D7D00FF00FF00FF00FF00FF00FF00FF00FF00AE7B4600FFFF
                  FF00D0A08000FFFFFF00D0A08000FFFFFF00D0A08000E9D7C30093643400FF00
                  FF00FF00FF00FF00FF00FF00FF0093939300FFFFFF00B7B7B700FFFFFF00B7B7
                  B700FFFFFF00B7B7B700E0E0E0007F7F7F00FF00FF00FF00FF00FF00FF00FF00
                  FF00B17E4800E3947600DC8B6A00D6825E00D07A5300CB724900C66B3F00C66B
                  3F0097673600FF00FF00FF00FF00FF00FF00FF00FF0096969600B1B1B100A9A9
                  A900A1A1A10099999900929292008B8B8B008B8B8B0082828200FF00FF00FF00
                  FF00FF00FF00FF00FF00B4814A00FFF9F900FFF3F300FFEDED00FFE7E700FFDC
                  DC00FFD0D000FFD0D0009A6A3900FF00FF00FF00FF00FF00FF00FF00FF009999
                  9900FBFBFB00F8F8F800F4F4F400F0F0F000E9E9E900E2E2E200E2E2E2008585
                  8500FF00FF00FF00FF00FF00FF00FF00FF00B9854E00FFFFFF00FFF9F900FFF3
                  F300FFEDED00FFE7E700FFDCDC00FFDCDC009F6E3C00FF00FF00FF00FF00FF00
                  FF00FF00FF009C9C9C00FFFFFF00FBFBFB00F8F8F800F4F4F400F0F0F000E9E9
                  E900E9E9E90089898900FF00FF00FF00FF00FF00FF00FF00FF00BC875000B985
                  4E00B4814A00B17E4800AE7B4600AB794400A8764200A5734000A2713E00FF00
                  FF00FF00FF00FF00FF00FF00FF009E9E9E009C9C9C0099999900969696009393
                  9300929292008F8F8F008D8D8D008B8B8B00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00}
                TabOrder = 9
                OnKeyDown = DBEdit1KeyDown
              end
            end
            object tbCorres: TRzTabSheet
              Color = 16119543
              Caption = 'Correspond'#234'ncia'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label4: TLabel
                Left = 6
                Top = 46
                Width = 65
                Height = 13
                Caption = 'Logradouro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object btnLogr1: TSpeedButton
                Left = 80
                Top = 60
                Width = 23
                Height = 22
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = btnLogr1Click
              end
              object Label5: TLabel
                Left = 423
                Top = 46
                Width = 45
                Height = 13
                Caption = 'N'#250'mero'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 506
                Top = 46
                Width = 23
                Height = 13
                Caption = 'CEP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label39: TLabel
                Left = 580
                Top = 126
                Width = 14
                Height = 13
                Caption = 'UF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 386
                Top = 86
                Width = 80
                Height = 13
                Caption = 'Complemento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object btnBai1: TSpeedButton
                Left = 80
                Top = 100
                Width = 23
                Height = 22
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = btnBai1Click
              end
              object Label58: TLabel
                Left = 6
                Top = 86
                Width = 35
                Height = 13
                Caption = 'Bairro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object btnCid1: TSpeedButton
                Left = 80
                Top = 140
                Width = 23
                Height = 22
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = btnCid1Click
              end
              object Label36: TLabel
                Left = 6
                Top = 126
                Width = 40
                Height = 13
                Caption = 'Cidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label118: TLabel
                Left = 6
                Top = 6
                Width = 93
                Height = 13
                Caption = 'Tipo Logradouro'
                FocusControl = DBEdit103
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton4: TSpeedButton
                Left = 64
                Top = 21
                Width = 23
                Height = 22
                Enabled = False
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                OnClick = SpeedButton4Click
              end
              object Label119: TLabel
                Left = 350
                Top = 6
                Width = 31
                Height = 13
                Caption = 'T'#237'tulo'
                FocusControl = DBEdit105
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton5: TSpeedButton
                Left = 393
                Top = 21
                Width = 23
                Height = 22
                Enabled = False
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                OnClick = SpeedButton5Click
              end
              object DBEdit18: TDBEdit
                Left = 6
                Top = 61
                Width = 72
                Height = 21
                Ctl3D = True
                DataField = 'COD_LOGE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit18Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit10: TDBEdit
                Left = 104
                Top = 61
                Width = 316
                Height = 21
                Ctl3D = True
                DataField = 'LOGRAE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit12: TDBEdit
                Left = 423
                Top = 61
                Width = 81
                Height = 21
                Ctl3D = True
                DataField = 'NUMEROE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
                OnKeyDown = DBEdit1KeyDown
                OnKeyPress = DBEdit14KeyPress
              end
              object DBEdit14: TDBEdit
                Left = 506
                Top = 61
                Width = 97
                Height = 21
                Ctl3D = True
                DataField = 'CEPE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
                OnEnter = DBEdit14Enter
                OnExit = DBEdit14Exit
                OnKeyDown = DBEdit1KeyDown
                OnKeyPress = DBEdit14KeyPress
              end
              object DBEdit13: TDBEdit
                Left = 386
                Top = 101
                Width = 275
                Height = 21
                Ctl3D = True
                DataField = 'COMPLEE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit11: TDBEdit
                Left = 104
                Top = 101
                Width = 280
                Height = 21
                Ctl3D = True
                DataField = 'BAIRROE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit24: TDBEdit
                Left = 6
                Top = 101
                Width = 72
                Height = 21
                Ctl3D = True
                DataField = 'COD_BAIE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
                OnExit = DBEdit24Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit15: TDBEdit
                Left = 6
                Top = 141
                Width = 72
                Height = 21
                Ctl3D = True
                DataField = 'COD_CIDE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
                OnExit = DBEdit15Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 580
                Top = 141
                Width = 49
                Height = 21
                Ctl3D = True
                DataField = 'UFE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                KeyField = 'COD_UF_CEP'
                ListField = 'COD_UF_CEP'
                ListSource = dm.dsUF
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 8
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit44: TDBEdit
                Tag = 1
                Left = 104
                Top = 141
                Width = 474
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'CIDENT'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 9
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit103: TDBEdit
                Left = 6
                Top = 22
                Width = 57
                Height = 21
                Ctl3D = True
                DataField = 'COD_TIPE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 10
                OnExit = DBEdit103Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit104: TDBEdit
                Tag = 1
                Left = 88
                Top = 22
                Width = 259
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'TIPOLOGE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 11
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit105: TDBEdit
                Left = 350
                Top = 22
                Width = 42
                Height = 21
                Ctl3D = True
                DataField = 'COD_TITE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 12
                OnExit = DBEdit105Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit106: TDBEdit
                Tag = 1
                Left = 417
                Top = 22
                Width = 240
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'TITULOLOGE_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 13
                OnKeyDown = DBEdit1KeyDown
              end
            end
            object tbEscritura: TRzTabSheet
              Color = 16119543
              Caption = 'Escritura'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Bevel3: TBevel
                Left = 342
                Top = 131
                Width = 6
                Height = 128
                Shape = bsLeftLine
              end
              object Label41: TLabel
                Left = 6
                Top = 6
                Width = 121
                Height = 13
                Caption = 'Cart'#243'rio do Munic'#237'pio'
                FocusControl = DBEdit45
              end
              object Label42: TLabel
                Left = 634
                Top = 4
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit50
              end
              object Label37: TLabel
                Left = 6
                Top = 87
                Width = 112
                Height = 13
                Caption = 'Forma de Obten'#231#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton8: TSpeedButton
                Left = 58
                Top = 102
                Width = 23
                Height = 22
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton8Click
              end
              object Label51: TLabel
                Left = 6
                Top = 46
                Width = 78
                Height = 13
                Caption = 'Data Registro'
              end
              object Label52: TLabel
                Left = 106
                Top = 46
                Width = 32
                Height = 13
                Caption = 'Of'#237'cio'
                FocusControl = DBEdit51
              end
              object Label56: TLabel
                Left = 201
                Top = 46
                Width = 51
                Height = 13
                Caption = 'Matr'#237'cula'
                FocusControl = DBEdit52
              end
              object Label62: TLabel
                Left = 339
                Top = 46
                Width = 47
                Height = 13
                Caption = 'Registro'
                FocusControl = DBEdit56
              end
              object Label64: TLabel
                Left = 441
                Top = 46
                Width = 28
                Height = 13
                Caption = 'Livro'
                FocusControl = DBEdit60
              end
              object Label65: TLabel
                Left = 339
                Top = 87
                Width = 123
                Height = 13
                Caption = #193'rea Total Registrada'
                FocusControl = DBEdit61
              end
              object Label66: TLabel
                Left = 9
                Top = 198
                Width = 112
                Height = 13
                Caption = 'Forma de Obten'#231#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton11: TSpeedButton
                Left = 61
                Top = 213
                Width = 23
                Height = 22
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton11Click
              end
              object Label69: TLabel
                Left = 348
                Top = 138
                Width = 184
                Height = 13
                Caption = 'Posse por Simples Obten'#231#227'o'
                Color = 16119543
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label70: TLabel
                Left = 348
                Top = 198
                Width = 112
                Height = 13
                Caption = 'Forma de Obten'#231#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton13: TSpeedButton
                Left = 400
                Top = 213
                Width = 23
                Height = 22
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  CE070000424DCE07000000000000360000002800000024000000120000000100
                  18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                  5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                  8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                  63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                  B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                  F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                  A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                  79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                  C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                  756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                  B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                  BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                  B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                  D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                  CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                  877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                  68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                  F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                  7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                  4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                  B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                  C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                NumGlyphs = 2
                ParentFont = False
                OnClick = SpeedButton13Click
              end
              object Label67: TLabel
                Left = 9
                Top = 138
                Width = 129
                Height = 13
                Align = alCustom
                Caption = 'Posse a Justo T'#237'tulo'
                Color = 16119543
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label71: TLabel
                Left = 9
                Top = 158
                Width = 64
                Height = 13
                Caption = 'Data Posse'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label72: TLabel
                Left = 110
                Top = 158
                Width = 82
                Height = 13
                Caption = #193'rea de Posse'
                FocusControl = DBEdit68
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label73: TLabel
                Left = 348
                Top = 158
                Width = 64
                Height = 13
                Caption = 'Data Posse'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label75: TLabel
                Left = 450
                Top = 158
                Width = 82
                Height = 13
                Caption = #193'rea de Posse'
                FocusControl = DBEdit70
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Bevel4: TBevel
                Left = 6
                Top = 130
                Width = 682
                Height = 15
                Shape = bsTopLine
              end
              object Label50: TLabel
                Left = 544
                Top = 46
                Width = 30
                Height = 13
                Caption = 'Folha'
                FocusControl = DBEdit54
              end
              object DBEdit45: TDBEdit
                Left = 6
                Top = 22
                Width = 626
                Height = 21
                DataField = 'MUNCARTORIO_RRR'
                DataSource = dsCadastro
                TabOrder = 0
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit50: TDBEdit
                Left = 634
                Top = 22
                Width = 29
                Height = 21
                DataField = 'UFCARTORIO_RRR'
                DataSource = dsCadastro
                TabOrder = 1
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit37: TDBEdit
                Left = 6
                Top = 103
                Width = 51
                Height = 21
                Ctl3D = True
                DataField = 'COD_FOBTENCAO_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 8
                OnExit = DBEdit37Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit38: TDBEdit
                Tag = 1
                Left = 84
                Top = 103
                Width = 253
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'FOBTENCAO'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 9
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBDateEdit1: TEvDBDateEdit
                Left = 6
                Top = 62
                Width = 99
                Height = 21
                Ctl3D = True
                DataField = 'DTAREG_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  56060000424D560600000000000036000000280000001C0000000E0000000100
                  2000000000002006000000000000000000000000000000000000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0000080
                  8000008080000080800000808000008080000080800000808000008080000080
                  80000080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                  0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FF0000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FF00FF00000000808000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0FFFFFF
                  FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                  0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  80008080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  8000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
                ParentCtl3D = False
                ParentFont = False
                ShowButton = True
                TabOrder = 2
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit51: TDBEdit
                Left = 106
                Top = 62
                Width = 93
                Height = 21
                DataField = 'OFICIO_RR'
                DataSource = dsCadastro
                TabOrder = 3
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit52: TDBEdit
                Left = 201
                Top = 62
                Width = 136
                Height = 21
                DataField = 'MATRICULA_RRR'
                DataSource = dsCadastro
                TabOrder = 4
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit56: TDBEdit
                Left = 339
                Top = 62
                Width = 100
                Height = 21
                DataField = 'REGISTRO_RRR'
                DataSource = dsCadastro
                TabOrder = 5
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit60: TDBEdit
                Left = 441
                Top = 62
                Width = 100
                Height = 21
                DataField = 'LIVRO_RRR'
                DataSource = dsCadastro
                TabOrder = 6
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit61: TDBEdit
                Left = 339
                Top = 103
                Width = 134
                Height = 21
                DataField = 'AREATOTREG_RRR'
                DataSource = dsCadastro
                TabOrder = 10
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit62: TDBEdit
                Left = 9
                Top = 214
                Width = 51
                Height = 21
                Ctl3D = True
                DataField = 'COD_FOBPOSSEJT_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 13
                OnExit = DBEdit62Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit64: TDBEdit
                Tag = 1
                Left = 86
                Top = 214
                Width = 253
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'FOBTENCAOJT'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 14
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit65: TDBEdit
                Left = 348
                Top = 214
                Width = 51
                Height = 21
                Ctl3D = True
                DataField = 'COD_FOBPOSSESO_RRR'
                DataSource = dsCadastro
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 17
                OnExit = DBEdit65Exit
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit66: TDBEdit
                Tag = 1
                Left = 425
                Top = 214
                Width = 244
                Height = 21
                TabStop = False
                Color = clBtnFace
                Ctl3D = True
                DataField = 'FOBTENCAOSO'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 18
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit68: TDBEdit
                Left = 110
                Top = 174
                Width = 134
                Height = 21
                DataField = 'AREAPOSSEJT_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 12
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit70: TDBEdit
                Left = 450
                Top = 174
                Width = 134
                Height = 21
                DataField = 'AREAPOSSESO_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 16
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBDateEdit2: TEvDBDateEdit
                Left = 9
                Top = 174
                Width = 99
                Height = 21
                Ctl3D = True
                DataField = 'DTPOSSEJT_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  56060000424D560600000000000036000000280000001C0000000E0000000100
                  2000000000002006000000000000000000000000000000000000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0000080
                  8000008080000080800000808000008080000080800000808000008080000080
                  80000080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                  0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FF0000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FF00FF00000000808000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0FFFFFF
                  FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                  0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  80008080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  8000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
                ParentCtl3D = False
                ParentFont = False
                ShowButton = True
                TabOrder = 11
                OnKeyDown = DBEdit1KeyDown
              end
              object EvDBDateEdit3: TEvDBDateEdit
                Left = 348
                Top = 174
                Width = 99
                Height = 21
                Ctl3D = True
                DataField = 'DTPOSSESO_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  56060000424D560600000000000036000000280000001C0000000E0000000100
                  2000000000002006000000000000000000000000000000000000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0000080
                  8000008080000080800000808000008080000080800000808000008080000080
                  80000080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FFFFFF0000000000000000FFFFFF
                  FF000000000000000000FFFFFF00000000000000000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000FFFFFF8080808000808080FFFFFFFF00808080808080
                  8000FFFFFF80808080008080808080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FFFFFFC0C0C0C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0
                  C000C0C0C00000808000C0C0C0C0C0C0C000C0C0C08080808000FFFFFFC0C0C0
                  C000C0C0C0FFFFFFFF00C0C0C0C0C0C0C000FFFFFFC0C0C0C000C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                  0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000FF0000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FF00FF00000000808000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0FFFFFF
                  FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00C0C0C0808080
                  8000C0C0C0C0C0C0C000C0C0C08080808000FF0000FFFF000000FF0000FFFF00
                  0000FF0000FFFF000000FF0000FFFF000000FF00000000808000C0C0C0C0C0C0
                  C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C08080808000C0C0C0C0C0C0C000C0C0C0808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  80008080800000808000C0C0C0C0C0C0C000C0C0C08080808000808080808080
                  8000808080808080800080808080808080008080808080808000808080808080
                  8000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0
                  C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000C0C0C0C0C0C0C000}
                ParentCtl3D = False
                ParentFont = False
                ShowButton = True
                TabOrder = 15
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit54: TDBEdit
                Left = 544
                Top = 62
                Width = 100
                Height = 21
                DataField = 'FOLHA_RRR'
                DataSource = dsCadastro
                TabOrder = 7
                OnKeyDown = DBEdit1KeyDown
              end
            end
            object tbTaxas: TRzTabSheet
              Color = 16119543
              Caption = 'Taxas Adicionais'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object RzPanel4: TRzPanel
                Left = 0
                Top = 0
                Width = 690
                Height = 47
                Align = alTop
                BorderOuter = fsBump
                TabOrder = 0
                object Label35: TLabel
                  Left = 8
                  Top = 4
                  Width = 48
                  Height = 13
                  Caption = 'Receitas'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object SpeedButton6: TSpeedButton
                  Left = 93
                  Top = 19
                  Width = 23
                  Height = 22
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    CE070000424DCE07000000000000360000002800000024000000120000000100
                    18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                    5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                    8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                    63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                    B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                    F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                    A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                    79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                    C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                    756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                    B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                    BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                    B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                    D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                    CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                    877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                    68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                    F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                    7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                    4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                    B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                  NumGlyphs = 2
                  ParentFont = False
                  OnClick = SpeedButton6Click
                end
                object Label11: TLabel
                  Left = 583
                  Top = 4
                  Width = 38
                  Height = 13
                  Caption = 'Quant.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object SpeedButton3: TSpeedButton
                  Left = 630
                  Top = 19
                  Width = 25
                  Height = 22
                  Cursor = crHandPoint
                  Glyph.Data = {
                    CE070000424DCE07000000000000360000002800000024000000120000000100
                    1800000000009807000000000000000000000000000000000000C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D457955D348B3C57955D57955DC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47E7E7E6A6A6A
                    7E7E7E7E7E7EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C7CFD3C8D0D4C8D0D457955D33AD433DC25846AC4B6A9C4D57955DC8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4CFCFCFC8D0D4
                    C8D0D47E7E7E8181819494948484847F7F7F7E7E7EC8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C7CFD3C8D0D4C8D0D4C8D0D418A12C43E36B50
                    EF7D58F78948E47966984AC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4CFCFCFC8D0D4C8D0D4C8D0D4707070AFAFAFBCBCBCC6C6C6B4B4B47B7B
                    7BC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B4BCBE5981602F
                    70363563392CB94746E66E48E6714FED7B4DEB7C467A3CC8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BBBBBB737373585858515151888888B2B2
                    B2B3B3B3BBBBBBB9B9B9626262C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D44F905616A82824CA4024BE3C2FCA4D39DC5E40E06647E67049E373
                    30763A83888BC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47878787373
                    73909090878787959595A5A5A5ABABABB2B2B2B2B2B25D5D5D888888C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D42D943722C73C1DC33525CB412DD04B
                    32D4523BDC5F41E16847E4702B9D3E3462384E6753737A7993999CBFC6CAC8D0
                    D4C8D0D4C8D0D46D6D6D8C8C8C8787879191919797979C9C9CA6A6A6ACACACB1
                    B1B17575755050505E5E5E797979999999C6C6C6C8D0D4C8D0D4C8D0D4379D46
                    31D35112BA261CC13424CA3F2ACE4832D65339DA5C42E1694AEA754BE47341D1
                    642697374C6852AEB5B9C8D0D4C8D0D4C8D0D47878789B9B9B7C7C7C8686868F
                    8F8F9595959E9E9EA4A4A4ADADADB6B6B6B2B2B2A1A1A16E6E6E5E5E5EB5B5B5
                    C8D0D4C8D0D4C8D0D43DA44F55F38525CA411BC13320C43726CA412ECF4C34D6
                    553CDA6041E0684BE97552F0804AE0733E7146AAB1B4C8D0D4C8D0D4C8D0D480
                    8080C2C2C29090908585858989899090909797979F9F9FA5A5A5ACACACB6B6B6
                    BEBEBEB0B0B05F5F5FB1B1B1C8D0D4C8D0D4C8D0D460A16A3DB25435C35128C6
                    4518BF2E1BC13326CB422BCE4934D55439D95D41E06849E67244DC6B3E7346AB
                    B2B5C8D0D4C8D0D4C8D0D48A8A8A8A8A8A9292928F8F8F828282858585919191
                    9595959E9E9EA3A3A3ACACACB3B3B3AAAAAA606060B2B2B2C8D0D4C8D0D4C8D0
                    D4BDC6C8A1ADAA7BA9844192490CAA1C16BF2D20C53A25CB412DCF4C3ADB5F42
                    E26944E36B3FD76245784DB4BCBFC8D0D4C8D0D4C8D0D4C5C5C5AAAAAA999999
                    7474746F6F6F8282828A8A8A919191979797A5A5A5ADADADAFAFAFA4A4A46666
                    66BCBCBCC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4ABBAB514A52517BF2E17
                    BD2E1EC43725C84032C14E50E47C59EE8831913E87988FC5CDD1C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4B7B7B77070708282828181818989898E8E8E9090
                    90B6B6B6C0C0C06E6E6E939393CDCDCDC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4A7B7B11DAC3115BE2B10B82418BE2E1EC036217829518B5A4A9C548FA497
                    C0C8CCC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B3B3B37878788181
                    817A7A7A8282828686865757577676767E7E7E9E9E9EC8C8C8C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4A9B9B428B6423ADD5F1FC5381BC13118B82D
                    367B3DB2B9BDC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4B5B5B5858585A6A6A68A8A8A8585857E7E7E616161B9B9B9C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BFCACB30963C
                    37C4544FE77B57F486299D3A7A8F81C3CBCFC8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C9C9C9707070949494B7B7B7C3C3C373
                    7373888888CBCBCBC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C2C9CD9EB1A757955D348B3C90A198C3CACEC8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C9
                    C9C9ACACAC7E7E7E6A6A6A9C9C9CCACACAC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
                  NumGlyphs = 2
                  Spacing = 0
                  OnClick = SpeedButton3Click
                end
                object SpeedButton12: TSpeedButton
                  Left = 656
                  Top = 19
                  Width = 25
                  Height = 22
                  Cursor = crHandPoint
                  Glyph.Data = {
                    CE070000424DCE07000000000000360000002800000024000000120000000100
                    1800000000009807000000000000000000000000000000000000C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C4CCD0B8BFC3A1A7AA8C91948C9194A5ACAFBFC6
                    CAC7CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4CCCCCCBFBFBFA7A7A7919191919191ACACACC6C6C6C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C3CBCFB0B8BB7C819B3643
                    A42633A4545A727D8385A8AFB2C3CACEC7CFD3C5CDD1BCC4C8B4BCBFBAC1C5C4
                    CCD0C8D0D4C8D0D4C8D0D4CBCBCBB8B8B88888885E5E5E535353606060838383
                    AFAFAFCACACAC8D0D4CDCDCDC4C4C4BCBCBCC1C1C1CCCCCCC8D0D4C8D0D4C8D0
                    D4B8C0C55D6AAE1238E1083EFF0840FF1B35BC5A5E68858B8DAEB5B9BBC3C7AD
                    B3B793999C84898C93999CB4BCBFC6CED2C8D0D4C8D0D4C0C0C07D7D7D666666
                    7272727373735A5A5A6060608B8B8BB5B5B5C3C3C3B3B3B39999998989899999
                    99BCBCBCCECECEC8D0D4C8D0D4636EBF578FFA336DFF0D41FF1348FF1148FF2B
                    389B65696B868B8E8C929A575F961631C8343B8B6B6F7193999CB7BEC2C8D0D4
                    C8D0D4858585A9A9A99393937474747979797979795454546969698B8B8B9393
                    936E6E6E5B5B5B5252526F6F6F999999BEBEBEC8D0D4C8D0D47E88C481BCFD80
                    BCFF2A60FE194EFF1D53FF1A4CFA3941854E53742137BB0938F40039FF0330F0
                    3E457C73787AA0A6AAC8D0D4C8D0D4999999C9C9C9CACACA8A8A8A7D7D7D8181
                    817B7B7B5454545C5C5C5C5C5C6B6B6B6E6E6E656565545454787878A6A6A6C8
                    D0D4C8D0D4C8D0D47083C895D6FF70AAFE2A61FE265CFE255BFF2049E91A42E6
                    154CFF0F45FF093DFF0138FF0A2FDF52578EA1A7AAC8D0D4C8D0D4C8D0D49595
                    95DBDBDBBDBDBD8A8A8A8787878686867474746F6F6F7C7C7C7777777272726E
                    6E6E606060676767A7A7A7C8D0D4C8D0D4C8D0D4B8BFCE7297DC8BCAFF538CFD
                    3066FE3066FE2B61FF255CFF1F54FE174CFF0F45FF073EFF1131D7696EA8B9C1
                    C4C8D0D4C8D0D4C8D0D4C2C2C2A8A8A8D3D3D3A8A8A88E8E8E8E8E8E8B8B8B87
                    87878181817C7C7C7777777272725F5F5F7E7E7EC1C1C1C8D0D4C8D0D4C8D0D4
                    C6CED29EA4C1557DE03A72FF3B72FE3B72FE356BFE2E64FE275CFE1F54FF1648
                    FB2842C99096B0BFC7CBC6CED2C8D0D4C8D0D4C8D0D4CECECEACACAC96969696
                    96969696969696969191918C8C8C8787878282827878786767679D9D9DC7C7C7
                    C8D0D4C8D0D4C8D0D4C6CED2BBC2C6A1A7AA364CBD3F79FF4A83FE457DFE3F75
                    FE376EFE2E65FF2455F638439583888DB3BABEC6CED2C8D0D4C8D0D4C8D0D4CE
                    CECEC2C2C2A7A7A76B6B6B9B9B9BA2A2A29E9E9E9898989393938D8D8D808080
                    5A5A5A898989BABABAC8D0D4C8D0D4C8D0D4C8D0D4BFC7CB8A90AA4359BA548C
                    FD5B95FF558EFE5088FE477FFE3F76FE366EFF295BF53F467F6D71749AA0A3BC
                    C4C8C7CFD3C8D0D4C8D0D4C7C7C7979797737373A8A8A8AFAFAFA9A9A9A5A5A5
                    9F9F9F999999939393848484565656717171A0A0A0C4C4C4C8D0D4C8D0D4C8D0
                    D48E94BF3961E2609DFF67A1FE659FFE619BFE5B96FF4E87FE447CFE3B72FE31
                    68FF2452F0474A6E767B7EA3AAADBFC6CAC8D0D4C8D0D4A0A0A0838383B4B4B4
                    B7B7B7B5B5B5B2B2B2AFAFAFA5A5A59D9D9D9696968F8F8F7C7C7C5454547B7B
                    7BAAAAAAC6C6C6C8D0D4C8D0D46C78C173B1FF7CB8FE71ABFD74B1FF6DA9FD5A
                    8EF470ACFD629BFD3E75FE346AFE2861FF2341CA545869818688AAB1B4C8D0D4
                    C8D0D48C8C8CC2C2C2C7C7C7BDBDBDC2C2C2BCBCBCA7A7A7BEBEBEB2B2B29898
                    989191918A8A8A6767675C5C5C868686B1B1B1C8D0D4C8D0D4AEB5CB7297DE91
                    D2FF8AC9FF78B1F85976CC6F74AC6791E276B4FF4C84FE346BFE2A60FF1F56FF
                    293EB0666A82A2A8ABC8D0D4C8D0D4BABABAA8A8A8D9D9D9D2D2D2C0C0C08C8C
                    8C848484A5A5A5C4C4C4A3A3A39191918A8A8A8383835E5E5E707070A8A8A8C8
                    D0D4C8D0D4C8D0D49DA3C66788D8729BE06E76B3ABB1BFC3CBCF828DC45F97FB
                    538DFF386FFE2A61FF1F58FF1941E35C62A0B3BABEC8D0D4C8D0D4C8D0D4ACAC
                    AC9C9C9CABABAB878787B4B4B4CBCBCB9C9C9CAFAFAFA9A9A99494948A8A8A84
                    84846D6D6D747474BABABAC8D0D4C8D0D4C8D0D4C8D0D4B2B9CCB5BDCDC6CED2
                    C7CFD3C8D0D4C8D0D46777C64079FF2F68FF265DFE2048EA646CADB1B8C1C4CC
                    D0C8D0D4C8D0D4C8D0D4C8D0D4BEBEBEC1C1C1CECECECFCFCFC8D0D4C8D0D48D
                    8D8D9B9B9B8F8F8F8787877474747E7E7EBABABACCCCCCC8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BEC5CF4052C81F45E5525E
                    BB9DA3BCC1C9CDC6CED2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C7C7C7737373717171787878A9A9A9C9C9C9CECECE
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
                  NumGlyphs = 2
                  Spacing = 0
                  OnClick = SpeedButton12Click
                end
                object Label31: TLabel
                  Left = 503
                  Top = 4
                  Width = 29
                  Height = 13
                  Caption = 'Valor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object DBEdit33: TEdit
                  Left = 8
                  Top = 20
                  Width = 41
                  Height = 21
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = DBEdit1KeyDown
                end
                object DBEdit34: TEdit
                  Tag = 1
                  Left = 117
                  Top = 20
                  Width = 384
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  OnKeyDown = DBEdit1KeyDown
                end
                object DBEdit27: TEdit
                  Left = 50
                  Top = 20
                  Width = 41
                  Height = 21
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  OnExit = DBEdit27Exit
                  OnKeyDown = DBEdit1KeyDown
                end
                object DBEdit31: TEdit
                  Left = 583
                  Top = 20
                  Width = 41
                  Height = 21
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                  OnKeyDown = DBEdit1KeyDown
                end
                object DBEdit32: TEdit
                  Tag = 1
                  Left = 503
                  Top = 20
                  Width = 79
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                  OnKeyDown = DBEdit1KeyDown
                end
              end
              object DBGrid2: TDBGrid
                Tag = 1
                Left = 0
                Top = 47
                Width = 690
                Height = 276
                Align = alClient
                DataSource = dsRec
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
                ParentFont = False
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'COD_EMP_RCT'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_RRR_RCT'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_RCT'
                    Title.Caption = 'C'#243'digo'
                    Width = 43
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_REC_RCT'
                    Title.Caption = 'Receita'
                    Width = 47
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_DDO_RCT'
                    Title.Caption = 'Desdo'
                    Width = 38
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRI_RCA'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 377
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTD_RCT'
                    Title.Caption = 'QTD'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_RCA'
                    Title.Caption = 'Valor'
                    Width = 76
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LOGIN_INC_RCT'
                    Visible = False
                  end
                  item
                    Expanded = False
                    FieldName = 'DTA_INC_RCT'
                    Visible = False
                  end>
              end
            end
            object tbProd: TRzTabSheet
              Color = 16119543
              Caption = 'Produ'#231#227'o'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object PGCad: TRzPageControl
                Left = 0
                Top = 0
                Width = 690
                Height = 323
                ActivePage = tbImovel
                ActivePageDefault = tbImovel
                Align = alClient
                BoldCurrentTab = True
                Color = 16119543
                UseColoredTabs = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsItalic]
                FlatColor = 10263441
                ImagePosition = ipTop
                HotTrackColor = 10987091
                HotTrackStyle = htsTabBar
                ParentColor = False
                ParentFont = False
                ShowShadow = False
                TextOrientation = orVertical
                TabColors.HighlightBar = 3983359
                TabColors.Unselected = clBtnFace
                TabIndex = 0
                TabOrder = 0
                TabOrientation = toLeft
                TabSequence = tsReverse
                TabStyle = tsCutCorner
                Transparent = True
                FixedDimension = 22
                object tbImovel: TRzTabSheet
                  Color = 16119543
                  Caption = 'Vegetal'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object Panel12: TPanel
                    Left = 0
                    Top = 0
                    Width = 666
                    Height = 14
                    Align = alTop
                    BevelOuter = bvNone
                    Color = 16119543
                    TabOrder = 0
                    object Label54: TLabel
                      Left = 0
                      Top = 0
                      Width = 171
                      Height = 13
                      Align = alLeft
                      Caption = ' Produ'#231#227'o Vegetal Isolado'
                      Color = 16119543
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                    object Panel13: TPanel
                      Left = 513
                      Top = 0
                      Width = 73
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F2] - Novo'
                      Color = clGray
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                    end
                    object Panel14: TPanel
                      Left = 586
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F5] - Excluir'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object Panel9: TPanel
                    Left = 0
                    Top = 157
                    Width = 666
                    Height = 14
                    Align = alTop
                    BevelOuter = bvNone
                    Color = 16119543
                    TabOrder = 1
                    object Label45: TLabel
                      Left = 0
                      Top = 0
                      Width = 286
                      Height = 13
                      Align = alLeft
                      Caption = ' Produ'#231#227'o Vegetal em Cons'#243'rcio ou Rota'#231#227'o'
                      Color = 16119543
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                    object Panel10: TPanel
                      Left = 513
                      Top = 0
                      Width = 73
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F2] - Novo'
                      Color = clGray
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                    end
                    object Panel11: TPanel
                      Left = 586
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F5] - Excluir'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object DBGrid7: TDBGrid
                    Tag = 2
                    Left = 0
                    Top = 171
                    Width = 666
                    Height = 150
                    Align = alClient
                    Color = clWhite
                    Ctl3D = True
                    DataSource = dsProRot
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Verdana'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    OnKeyDown = DBGrid7KeyDown
                    OnTitleClick = DBGrid7TitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCR_RPR'
                        Title.Caption = 'Produto'
                        Width = 266
                        Visible = True
                      end
                      item
                        ButtonStyle = cbsEllipsis
                        Expanded = False
                        FieldName = 'FORMAEXP_AVR'
                        PickList.Strings = (
                          'Cons'#243'rcio'
                          'Rota'#231#227'o')
                        Title.Caption = 'Forma'
                        Width = 93
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'SEQGRUPO_AVR'
                        Title.Caption = 'Seq.'
                        Width = 34
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_PLAN_AVR'
                        Title.Caption = #193'rea Plantada'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_COLH_AVR'
                        Title.Caption = #193'rea Colhida'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTD_COLH_AVR'
                        Title.Caption = 'QTD Colhida'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCR_RUP'
                        Title.Caption = 'Unidade'
                        Width = 50
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCR_RIP'
                        Title.Caption = 'Restri'#231#227'o'
                        Width = 500
                        Visible = True
                      end>
                  end
                  object DBGrid3: TDBGrid
                    Tag = 2
                    Left = 0
                    Top = 14
                    Width = 666
                    Height = 143
                    Align = alTop
                    Color = clWhite
                    Ctl3D = True
                    DataSource = dsProdIso
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Verdana'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    OnKeyDown = DBGrid3KeyDown
                    OnTitleClick = DBGrid3TitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCR_RPR'
                        Title.Caption = 'Produto'
                        Width = 266
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_PLAN_AVI'
                        Title.Caption = #193'rea Plantada'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_COLH_AVI'
                        Title.Caption = #193'rea Colhida'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTD_COLH_AVI'
                        Title.Caption = 'QTD Colhida'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCR_RUP'
                        Title.Caption = 'Unidade'
                        Width = 50
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCR_RIP'
                        Title.Caption = 'Restri'#231#227'o'
                        Width = 500
                        Visible = True
                      end>
                  end
                end
                object RzTabSheet1: TRzTabSheet
                  Color = 16119543
                  Caption = 'Animal'
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object Panel3: TPanel
                    Left = 0
                    Top = 145
                    Width = 666
                    Height = 14
                    Align = alTop
                    BevelOuter = bvNone
                    Color = 16119543
                    TabOrder = 0
                    object Label43: TLabel
                      Left = 0
                      Top = 0
                      Width = 114
                      Height = 13
                      Align = alLeft
                      Caption = ' Produ'#231#227'o Animal'
                      Color = 16119543
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                    object Panel5: TPanel
                      Left = 586
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F5] - Excluir'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                    end
                    object Panel4: TPanel
                      Left = 513
                      Top = 0
                      Width = 73
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F2] - Novo'
                      Color = clGray
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object DBGrid4: TDBGrid
                    Tag = 2
                    Left = 0
                    Top = 159
                    Width = 666
                    Height = 162
                    Align = alClient
                    Color = clWhite
                    Ctl3D = True
                    DataSource = dsPecuaria
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Verdana'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    OnKeyDown = DBGrid4KeyDown
                    OnTitleClick = DBGrid4TitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCR_RPA'
                        Title.Caption = 'Categoria Animal'
                        Width = 490
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTD_RPE'
                        Title.Caption = 'Quantidade'
                        Width = 69
                        Visible = True
                      end>
                  end
                  object Panel18: TPanel
                    Left = 0
                    Top = 0
                    Width = 666
                    Height = 14
                    Align = alTop
                    BevelOuter = bvNone
                    Color = 16119543
                    TabOrder = 2
                    object Label47: TLabel
                      Left = 0
                      Top = 0
                      Width = 130
                      Height = 13
                      Align = alLeft
                      Caption = ' '#193'reas de Pastagem'
                      Color = 16119543
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                    object Panel19: TPanel
                      Left = 586
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F5] - Excluir'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                    end
                    object Panel20: TPanel
                      Left = 513
                      Top = 0
                      Width = 73
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F2] - Novo'
                      Color = clGray
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object DBGrid9: TDBGrid
                    Tag = 2
                    Left = 0
                    Top = 14
                    Width = 666
                    Height = 131
                    Align = alTop
                    Color = clWhite
                    Ctl3D = True
                    DataSource = dsPasto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Verdana'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    OnKeyDown = DBGrid9KeyDown
                    OnTitleClick = DBGrid9TitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCR_RTS'
                        Title.Caption = 'Tipo Pastagem'
                        Width = 260
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_UTIL_ARP'
                        Title.Caption = #193'rea Utilizada'
                        Width = 84
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCR_RIU'
                        Title.Caption = 'Restri'#231#227'o'
                        Width = 279
                        Visible = True
                      end>
                  end
                end
                object tbDados: TRzTabSheet
                  Color = 16119543
                  Caption = 'Granj.'
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object Panel6: TPanel
                    Left = 0
                    Top = 0
                    Width = 666
                    Height = 14
                    Align = alTop
                    BevelOuter = bvNone
                    Color = 16119543
                    TabOrder = 0
                    object Label44: TLabel
                      Left = 0
                      Top = 0
                      Width = 211
                      Height = 13
                      Align = alLeft
                      Caption = ' Produ'#231#227'o Granjeira ou Aqu'#237'cola'
                      Color = 16119543
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                    object Panel8: TPanel
                      Left = 586
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F5] - Excluir'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                    end
                    object Panel7: TPanel
                      Left = 513
                      Top = 0
                      Width = 73
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F2] - Novo'
                      Color = clGray
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object DBGrid5: TDBGrid
                    Tag = 2
                    Left = 0
                    Top = 14
                    Width = 666
                    Height = 307
                    Align = alClient
                    Color = clWhite
                    Ctl3D = True
                    DataSource = dsGranj
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Verdana'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    OnKeyDown = DBGrid5KeyDown
                    OnTitleClick = DBGrid5TitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCR_RPG'
                        Title.Caption = 'Denomina'#231#227'o'
                        Width = 235
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_EXPLO_AGQ'
                        Title.Caption = #193'rea Explorada'
                        Width = 98
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCR_RIU'
                        Title.Caption = 'Restri'#231#245'es'
                        Width = 293
                        Visible = True
                      end>
                  end
                end
                object TabSheet7: TRzTabSheet
                  Color = 16119543
                  Caption = 'Outras'
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object Panel15: TPanel
                    Left = 0
                    Top = 157
                    Width = 666
                    Height = 14
                    Align = alTop
                    BevelOuter = bvNone
                    Color = 16119543
                    TabOrder = 0
                    object Label46: TLabel
                      Left = 0
                      Top = 0
                      Width = 138
                      Height = 13
                      Align = alLeft
                      Caption = ' '#193'reas com Restri'#231#227'o'
                      Color = 16119543
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                    object Panel16: TPanel
                      Left = 586
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F5] - Excluir'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                    end
                    object Panel17: TPanel
                      Left = 513
                      Top = 0
                      Width = 73
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F2] - Novo'
                      Color = clGray
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object Panel21: TPanel
                    Left = 0
                    Top = 0
                    Width = 666
                    Height = 14
                    Align = alTop
                    BevelOuter = bvNone
                    Color = 16119543
                    TabOrder = 1
                    object Label48: TLabel
                      Left = 0
                      Top = 0
                      Width = 154
                      Height = 13
                      Align = alLeft
                      Caption = ' '#193'reas com outros Usos'
                      Color = 16119543
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentColor = False
                      ParentFont = False
                    end
                    object Panel22: TPanel
                      Left = 586
                      Top = 0
                      Width = 80
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F5] - Excluir'
                      Color = clRed
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 0
                    end
                    object Panel23: TPanel
                      Left = 513
                      Top = 0
                      Width = 73
                      Height = 14
                      Align = alRight
                      Alignment = taLeftJustify
                      BevelOuter = bvNone
                      Caption = ' [F2] - Novo'
                      Color = clGray
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBackground = False
                      ParentFont = False
                      TabOrder = 1
                    end
                  end
                  object DBGrid10: TDBGrid
                    Tag = 2
                    Left = 0
                    Top = 171
                    Width = 666
                    Height = 108
                    Align = alClient
                    Color = clWhite
                    Ctl3D = True
                    DataSource = dsARest
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Verdana'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCR_RIU'
                        Title.Caption = #193'rea com Restri'#231#227'o'
                        Width = 473
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_UTIL_ART'
                        Title.Caption = #193'rea Total'
                        Width = 101
                        Visible = True
                      end>
                  end
                  object DBGrid11: TDBGrid
                    Tag = 2
                    Left = 0
                    Top = 14
                    Width = 666
                    Height = 143
                    Align = alTop
                    Color = clWhite
                    Ctl3D = True
                    DataSource = dsAOutUso
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Verdana'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCR_RPO'
                        Title.Caption = 'Denomina'#231#227'o'
                        Width = 220
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'AREA_UTIL_AOT'
                        Title.Caption = #193'rea Utilizada'
                        Width = 86
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCR_RIU'
                        Title.Caption = 'Restri'#231#227'o'
                        Width = 321
                        Visible = True
                      end>
                  end
                  object GroupBox1: TGroupBox
                    Left = 0
                    Top = 279
                    Width = 666
                    Height = 42
                    Align = alBottom
                    Caption = 
                      ' '#193'rea sem Restri'#231#227'o e Sem Uso ('#193'rea Aproveit'#225'vel as n'#227'o Utilizad' +
                      'a) '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                    object Label49: TLabel
                      Left = 156
                      Top = 25
                      Width = 16
                      Height = 13
                      Caption = 'ha'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBEdit53: TDBEdit
                      Left = 4
                      Top = 18
                      Width = 150
                      Height = 21
                      Ctl3D = True
                      DataField = 'AREASEMUSO_RRR'
                      DataSource = dsCadastro
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentCtl3D = False
                      ParentFont = False
                      TabOrder = 0
                    end
                  end
                end
              end
            end
            object tbCRT: TRzTabSheet
              Color = 16119543
              Caption = 'Caracter'#237'sticas'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel24: TPanel
                Left = 0
                Top = 0
                Width = 690
                Height = 42
                Align = alTop
                BevelOuter = bvNone
                Color = 16119543
                TabOrder = 0
                object Label139: TLabel
                  Left = 0
                  Top = 0
                  Width = 194
                  Height = 16
                  Align = alLeft
                  Caption = ' Caracter'#237'sticas Cadastrais'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsItalic]
                  ParentFont = False
                end
                object btnADDcrt: TSpeedButton
                  Left = 591
                  Top = 18
                  Width = 25
                  Height = 23
                  Cursor = crHandPoint
                  Glyph.Data = {
                    CE070000424DCE07000000000000360000002800000024000000120000000100
                    1800000000009807000000000000000000000000000000000000C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D457955D348B3C57955D57955DC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47E7E7E6A6A6A
                    7E7E7E7E7E7EC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C7CFD3C8D0D4C8D0D457955D33AD433DC25846AC4B6A9C4D57955DC8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4CFCFCFC8D0D4
                    C8D0D47E7E7E8181819494948484847F7F7F7E7E7EC8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C7CFD3C8D0D4C8D0D4C8D0D418A12C43E36B50
                    EF7D58F78948E47966984AC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4CFCFCFC8D0D4C8D0D4C8D0D4707070AFAFAFBCBCBCC6C6C6B4B4B47B7B
                    7BC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B4BCBE5981602F
                    70363563392CB94746E66E48E6714FED7B4DEB7C467A3CC8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BBBBBB737373585858515151888888B2B2
                    B2B3B3B3BBBBBBB9B9B9626262C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D44F905616A82824CA4024BE3C2FCA4D39DC5E40E06647E67049E373
                    30763A83888BC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47878787373
                    73909090878787959595A5A5A5ABABABB2B2B2B2B2B25D5D5D888888C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D42D943722C73C1DC33525CB412DD04B
                    32D4523BDC5F41E16847E4702B9D3E3462384E6753737A7993999CBFC6CAC8D0
                    D4C8D0D4C8D0D46D6D6D8C8C8C8787879191919797979C9C9CA6A6A6ACACACB1
                    B1B17575755050505E5E5E797979999999C6C6C6C8D0D4C8D0D4C8D0D4379D46
                    31D35112BA261CC13424CA3F2ACE4832D65339DA5C42E1694AEA754BE47341D1
                    642697374C6852AEB5B9C8D0D4C8D0D4C8D0D47878789B9B9B7C7C7C8686868F
                    8F8F9595959E9E9EA4A4A4ADADADB6B6B6B2B2B2A1A1A16E6E6E5E5E5EB5B5B5
                    C8D0D4C8D0D4C8D0D43DA44F55F38525CA411BC13320C43726CA412ECF4C34D6
                    553CDA6041E0684BE97552F0804AE0733E7146AAB1B4C8D0D4C8D0D4C8D0D480
                    8080C2C2C29090908585858989899090909797979F9F9FA5A5A5ACACACB6B6B6
                    BEBEBEB0B0B05F5F5FB1B1B1C8D0D4C8D0D4C8D0D460A16A3DB25435C35128C6
                    4518BF2E1BC13326CB422BCE4934D55439D95D41E06849E67244DC6B3E7346AB
                    B2B5C8D0D4C8D0D4C8D0D48A8A8A8A8A8A9292928F8F8F828282858585919191
                    9595959E9E9EA3A3A3ACACACB3B3B3AAAAAA606060B2B2B2C8D0D4C8D0D4C8D0
                    D4BDC6C8A1ADAA7BA9844192490CAA1C16BF2D20C53A25CB412DCF4C3ADB5F42
                    E26944E36B3FD76245784DB4BCBFC8D0D4C8D0D4C8D0D4C5C5C5AAAAAA999999
                    7474746F6F6F8282828A8A8A919191979797A5A5A5ADADADAFAFAFA4A4A46666
                    66BCBCBCC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4ABBAB514A52517BF2E17
                    BD2E1EC43725C84032C14E50E47C59EE8831913E87988FC5CDD1C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4B7B7B77070708282828181818989898E8E8E9090
                    90B6B6B6C0C0C06E6E6E939393CDCDCDC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4A7B7B11DAC3115BE2B10B82418BE2E1EC036217829518B5A4A9C548FA497
                    C0C8CCC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4B3B3B37878788181
                    817A7A7A8282828686865757577676767E7E7E9E9E9EC8C8C8C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4A9B9B428B6423ADD5F1FC5381BC13118B82D
                    367B3DB2B9BDC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4B5B5B5858585A6A6A68A8A8A8585857E7E7E616161B9B9B9C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BFCACB30963C
                    37C4544FE77B57F486299D3A7A8F81C3CBCFC8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C9C9C9707070949494B7B7B7C3C3C373
                    7373888888CBCBCBC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C2C9CD9EB1A757955D348B3C90A198C3CACEC8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C9
                    C9C9ACACAC7E7E7E6A6A6A9C9C9CCACACAC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
                  NumGlyphs = 2
                  Spacing = 0
                  OnClick = btnADDcrtClick
                end
                object btnDELcrt: TSpeedButton
                  Left = 616
                  Top = 18
                  Width = 25
                  Height = 23
                  Cursor = crHandPoint
                  Glyph.Data = {
                    CE070000424DCE07000000000000360000002800000024000000120000000100
                    1800000000009807000000000000000000000000000000000000C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C4CCD0B8BFC3A1A7AA8C91948C9194A5ACAFBFC6
                    CAC7CFD3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4CCCCCCBFBFBFA7A7A7919191919191ACACACC6C6C6C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C3CBCFB0B8BB7C819B3643
                    A42633A4545A727D8385A8AFB2C3CACEC7CFD3C5CDD1BCC4C8B4BCBFBAC1C5C4
                    CCD0C8D0D4C8D0D4C8D0D4CBCBCBB8B8B88888885E5E5E535353606060838383
                    AFAFAFCACACAC8D0D4CDCDCDC4C4C4BCBCBCC1C1C1CCCCCCC8D0D4C8D0D4C8D0
                    D4B8C0C55D6AAE1238E1083EFF0840FF1B35BC5A5E68858B8DAEB5B9BBC3C7AD
                    B3B793999C84898C93999CB4BCBFC6CED2C8D0D4C8D0D4C0C0C07D7D7D666666
                    7272727373735A5A5A6060608B8B8BB5B5B5C3C3C3B3B3B39999998989899999
                    99BCBCBCCECECEC8D0D4C8D0D4636EBF578FFA336DFF0D41FF1348FF1148FF2B
                    389B65696B868B8E8C929A575F961631C8343B8B6B6F7193999CB7BEC2C8D0D4
                    C8D0D4858585A9A9A99393937474747979797979795454546969698B8B8B9393
                    936E6E6E5B5B5B5252526F6F6F999999BEBEBEC8D0D4C8D0D47E88C481BCFD80
                    BCFF2A60FE194EFF1D53FF1A4CFA3941854E53742137BB0938F40039FF0330F0
                    3E457C73787AA0A6AAC8D0D4C8D0D4999999C9C9C9CACACA8A8A8A7D7D7D8181
                    817B7B7B5454545C5C5C5C5C5C6B6B6B6E6E6E656565545454787878A6A6A6C8
                    D0D4C8D0D4C8D0D47083C895D6FF70AAFE2A61FE265CFE255BFF2049E91A42E6
                    154CFF0F45FF093DFF0138FF0A2FDF52578EA1A7AAC8D0D4C8D0D4C8D0D49595
                    95DBDBDBBDBDBD8A8A8A8787878686867474746F6F6F7C7C7C7777777272726E
                    6E6E606060676767A7A7A7C8D0D4C8D0D4C8D0D4B8BFCE7297DC8BCAFF538CFD
                    3066FE3066FE2B61FF255CFF1F54FE174CFF0F45FF073EFF1131D7696EA8B9C1
                    C4C8D0D4C8D0D4C8D0D4C2C2C2A8A8A8D3D3D3A8A8A88E8E8E8E8E8E8B8B8B87
                    87878181817C7C7C7777777272725F5F5F7E7E7EC1C1C1C8D0D4C8D0D4C8D0D4
                    C6CED29EA4C1557DE03A72FF3B72FE3B72FE356BFE2E64FE275CFE1F54FF1648
                    FB2842C99096B0BFC7CBC6CED2C8D0D4C8D0D4C8D0D4CECECEACACAC96969696
                    96969696969696969191918C8C8C8787878282827878786767679D9D9DC7C7C7
                    C8D0D4C8D0D4C8D0D4C6CED2BBC2C6A1A7AA364CBD3F79FF4A83FE457DFE3F75
                    FE376EFE2E65FF2455F638439583888DB3BABEC6CED2C8D0D4C8D0D4C8D0D4CE
                    CECEC2C2C2A7A7A76B6B6B9B9B9BA2A2A29E9E9E9898989393938D8D8D808080
                    5A5A5A898989BABABAC8D0D4C8D0D4C8D0D4C8D0D4BFC7CB8A90AA4359BA548C
                    FD5B95FF558EFE5088FE477FFE3F76FE366EFF295BF53F467F6D71749AA0A3BC
                    C4C8C7CFD3C8D0D4C8D0D4C7C7C7979797737373A8A8A8AFAFAFA9A9A9A5A5A5
                    9F9F9F999999939393848484565656717171A0A0A0C4C4C4C8D0D4C8D0D4C8D0
                    D48E94BF3961E2609DFF67A1FE659FFE619BFE5B96FF4E87FE447CFE3B72FE31
                    68FF2452F0474A6E767B7EA3AAADBFC6CAC8D0D4C8D0D4A0A0A0838383B4B4B4
                    B7B7B7B5B5B5B2B2B2AFAFAFA5A5A59D9D9D9696968F8F8F7C7C7C5454547B7B
                    7BAAAAAAC6C6C6C8D0D4C8D0D46C78C173B1FF7CB8FE71ABFD74B1FF6DA9FD5A
                    8EF470ACFD629BFD3E75FE346AFE2861FF2341CA545869818688AAB1B4C8D0D4
                    C8D0D48C8C8CC2C2C2C7C7C7BDBDBDC2C2C2BCBCBCA7A7A7BEBEBEB2B2B29898
                    989191918A8A8A6767675C5C5C868686B1B1B1C8D0D4C8D0D4AEB5CB7297DE91
                    D2FF8AC9FF78B1F85976CC6F74AC6791E276B4FF4C84FE346BFE2A60FF1F56FF
                    293EB0666A82A2A8ABC8D0D4C8D0D4BABABAA8A8A8D9D9D9D2D2D2C0C0C08C8C
                    8C848484A5A5A5C4C4C4A3A3A39191918A8A8A8383835E5E5E707070A8A8A8C8
                    D0D4C8D0D4C8D0D49DA3C66788D8729BE06E76B3ABB1BFC3CBCF828DC45F97FB
                    538DFF386FFE2A61FF1F58FF1941E35C62A0B3BABEC8D0D4C8D0D4C8D0D4ACAC
                    AC9C9C9CABABAB878787B4B4B4CBCBCB9C9C9CAFAFAFA9A9A99494948A8A8A84
                    84846D6D6D747474BABABAC8D0D4C8D0D4C8D0D4C8D0D4B2B9CCB5BDCDC6CED2
                    C7CFD3C8D0D4C8D0D46777C64079FF2F68FF265DFE2048EA646CADB1B8C1C4CC
                    D0C8D0D4C8D0D4C8D0D4C8D0D4BEBEBEC1C1C1CECECECFCFCFC8D0D4C8D0D48D
                    8D8D9B9B9B8F8F8F8787877474747E7E7EBABABACCCCCCC8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BEC5CF4052C81F45E5525E
                    BB9DA3BCC1C9CDC6CED2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C7C7C7737373717171787878A9A9A9C9C9C9CECECE
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
                    D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
                    D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
                    C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
                  NumGlyphs = 2
                  Spacing = 0
                  OnClick = btnDELcrtClick
                end
                object btnCRT: TSpeedButton
                  Left = 104
                  Top = 18
                  Width = 23
                  Height = 23
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    CE070000424DCE07000000000000360000002800000024000000120000000100
                    18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                    5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                    8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                    63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                    B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                    F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                    A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                    79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                    C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                    756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                    B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                    BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                    B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                    D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                    CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                    877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                    68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                    F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                    7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                    4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                    B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                    C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
                  NumGlyphs = 2
                  ParentFont = False
                  OnClick = btnCRTClick
                end
                object btnIMPcrt: TSpeedButton
                  Left = 641
                  Top = 18
                  Width = 25
                  Height = 23
                  Cursor = crHandPoint
                  Hint = 'Importa todas as Caracter'#237'sticas marcadas como Padr'#227'o.'
                  Glyph.Data = {
                    36060000424D3606000000000000360000002800000020000000100000000100
                    18000000000000060000120B0000120B00000000000000000000C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7
                    CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7
                    CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3D3A276D1A47AC7CFD3C7CFD3C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD39F
                    A3A5A0A5A7C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C7CFD3D3AD8CC47E3BCB8039D2AE8FC7CFD3C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3A9AEB179
                    79797C7C7CA9AFB2C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3CFB5A0DE8633FFD09BD3A779C67123CEB7A3C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3B0B6B9828283C9
                    C9C9A2A2A26F6F6FB2B8BBC7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3CDBDAFD47928FEC991F7BA7DF7B776C99864C46A1ECBBEB2C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3B7BEC1777778C2C2C2B3
                    B3B3B0B0B09393936A6A6AB8BFC2C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3CBC2BCCD7425FAC289F4B577F0AF6CF0AB67EEA962C58C50C06920CAC3
                    BEC7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3BCC3C7737474BBBBBBAEAEAEA9
                    A9A9A4A4A4A2A2A2868686696A6ABDC4C7C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C9C9C7C97931FDC58AF8C48DF0B579EBA660EAA35AE99F55EBA052C28440BC6C
                    2CC8C8C8C7CFD3C7CFD3C7CFD3C7CFD3C2C9CD77797ABEBEBEBDBDBDAEAEAEA0
                    A0A09D9D9D9999999999997E7E7E6D6E6FC1C9CCC7CFD3C7CFD3C7CFD3C7CCCD
                    C37836CA6F20CB7731DD9656F2C18DE89D53E69A4EDD9348BA6B24B45A12B456
                    0EBC7239C7CCCFC7CFD3C7CFD3C4CCD077797A6C6C6C747474919191BABABA96
                    96969494948D8D8D6969695A5A5A575757737576C4CCD0C7CFD3C7CFD3C6CDD1
                    C8CACAC7C9CAC7CFD3CE782FF1BB84E49647E49445DC8F3EAA5511C7CFD3C6C9
                    CAC7CACAC7CDD1C7CFD3C7CFD3C6CED2C2CACEC2CACDC7CFD3757575B4B4B490
                    90908E8E8E898989555555C7CFD3C2CACDC2CACEC6CED2C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3CC762EEFB77AE08E3CE08E39D98834AA5410C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3747474B0B0B089
                    8989888888848484555555C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C9712AECAF70DD8630DB852ED68229A9500AC7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD36E6E6EA9A9A982
                    82828080807E7E7E505050C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C46C24E7A760D97E21D87D21D37A1CA74D07C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD36A6A6AA1A1A179
                    79797A7A7A7676764E4E4EC7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C46B20F0BC7EE49A4BE08B33D57B17A74A03C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3696969B4B4B494
                    94948686867777774D4D4DC7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3AB4707AF4D0BAD4807AA4A0BAD4C0AA34108C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD34C4C4C4F50504B
                    4C4C4E4F4F4F5050464747C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3
                    C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CF
                    D3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7
                    CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3C7CFD3}
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = btnIMPcrtClick
                end
                object mskCRT: TMaskEdit
                  Left = 4
                  Top = 19
                  Width = 49
                  Height = 21
                  TabOrder = 0
                  OnExit = mskCRTExit
                  OnKeyDown = DBEdit1KeyDown
                  OnKeyPress = mskCRTKeyPress
                end
                object mskDCR: TMaskEdit
                  Left = 54
                  Top = 19
                  Width = 49
                  Height = 21
                  TabOrder = 1
                  OnExit = mskDCRExit
                  OnKeyDown = DBEdit1KeyDown
                  OnKeyPress = mskCRTKeyPress
                end
                object mskDCRT: TMaskEdit
                  Tag = 2
                  Left = 129
                  Top = 19
                  Width = 216
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  TabOrder = 2
                  OnKeyDown = DBEdit1KeyDown
                end
                object mskVALOR: TMaskEdit
                  Left = 515
                  Top = 19
                  Width = 76
                  Height = 21
                  TabOrder = 4
                  OnExit = mskVALORExit
                  OnKeyDown = DBEdit1KeyDown
                end
                object mskDDESDO: TMaskEdit
                  Tag = 2
                  Left = 346
                  Top = 19
                  Width = 168
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  TabOrder = 3
                  OnKeyDown = DBEdit1KeyDown
                end
              end
              object DBGrid15: TDBGrid
                Tag = 2
                Left = 0
                Top = 42
                Width = 690
                Height = 281
                Align = alClient
                DataSource = dsCRT
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                OnCellClick = DBGrid15CellClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DESCRI_RR1'
                    Title.Caption = 'Caracter'#237'stica'
                    Width = 276
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRI_RR2'
                    Title.Caption = 'Desdobramento'
                    Width = 238
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_RR3'
                    Title.Caption = 'Valor'
                    Width = 116
                    Visible = True
                  end>
              end
            end
            object tbObs: TRzTabSheet
              Color = 16119543
              Caption = 'Obs.'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object DBMemo3: TDBMemo
                Left = 0
                Top = 0
                Width = 690
                Height = 323
                Align = alClient
                DataField = 'HISTO_RRR'
                DataSource = dsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
        object tbCNT: TRzTabSheet
          Caption = 'Contribuinte'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object PGCNT: TRzPageControl
            Left = 0
            Top = 168
            Width = 694
            Height = 227
            ActivePage = TabSheet12
            Align = alClient
            TabIndex = 0
            TabOrder = 0
            TabStyle = tsDoubleSlant
            FixedDimension = 19
            object TabSheet12: TRzTabSheet
              Caption = 'S'#243'cios/Co-Propriet'#225'rios'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Panel27: TPanel
                Left = 0
                Top = 0
                Width = 690
                Height = 14
                Align = alTop
                BevelOuter = bvNone
                Color = 16119543
                TabOrder = 0
                object Label99: TLabel
                  Left = 0
                  Top = 0
                  Width = 116
                  Height = 13
                  Align = alLeft
                  Caption = '  Co-Propriet'#225'rios'
                  Color = 16119543
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Panel28: TPanel
                  Left = 359
                  Top = 0
                  Width = 149
                  Height = 14
                  Align = alRight
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = ' [Seta para Baixo] - Novo'
                  Color = clGray
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                end
                object Panel63: TPanel
                  Left = 508
                  Top = 0
                  Width = 80
                  Height = 14
                  Align = alRight
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = ' [F5] - Excluir'
                  Color = clRed
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 1
                end
                object Panel64: TPanel
                  Left = 588
                  Top = 0
                  Width = 102
                  Height = 14
                  Align = alRight
                  Alignment = taLeftJustify
                  BevelOuter = bvNone
                  Caption = ' [F6] - Atualizar'
                  Color = clTeal
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 2
                end
              end
              object GridSocio: TDBGrid
                Tag = 1
                Left = 0
                Top = 14
                Width = 690
                Height = 190
                Align = alClient
                Ctl3D = True
                DataSource = dsSocios
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                OnColExit = GridSocioColExit
                OnDrawColumnCell = DBGrid8DrawColumnCell
                OnEditButtonClick = GridSocioEditButtonClick
                OnEnter = GridSocioEnter
                OnKeyDown = GridSocioKeyDown
                OnTitleClick = GridSocioTitleClick
                Columns = <
                  item
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'COD_CNT_SOC'
                    Title.Caption = 'C'#243'digo'
                    Width = 97
                    Visible = True
                  end
                  item
                    Color = clSilver
                    Expanded = False
                    FieldName = 'NOME_CNT'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ReadOnly = True
                    Title.Caption = 'Nome'
                    Width = 295
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CNPJ_CNT'
                    Title.Caption = 'CNPJ'
                    Width = 123
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RG_CNT'
                    Title.Caption = 'RG'
                    Width = 97
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUALIFIC_SOC'
                    Title.Caption = 'Qualifica'#231#227'o'
                    Width = 76
                    Visible = True
                  end
                  item
                    Color = clSilver
                    Expanded = False
                    FieldName = 'DTINI_SOC'
                    ReadOnly = True
                    Title.Caption = 'In'#237'cio'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTFIM_SOC'
                    Title.Caption = 'Fim'
                    Visible = True
                  end>
              end
            end
          end
          object Panel29: TPanel
            Left = 0
            Top = 0
            Width = 694
            Height = 168
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label19: TLabel
              Left = 8
              Top = 4
              Width = 67
              Height = 13
              Caption = 'Propriet'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object btnContrib: TSpeedButton
              Left = 116
              Top = 18
              Width = 23
              Height = 23
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                CE070000424DCE07000000000000360000002800000024000000120000000100
                18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
              NumGlyphs = 2
              ParentFont = False
              OnClick = btnContribClick
            end
            object Label23: TLabel
              Left = 8
              Top = 43
              Width = 17
              Height = 13
              Caption = 'RG'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 151
              Top = 43
              Width = 56
              Height = 13
              Caption = 'CPF/CNPJ'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 317
              Top = 43
              Width = 27
              Height = 13
              Caption = 'Fone'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object btnIE: TSpeedButton
              Tag = 1
              Left = 292
              Top = 56
              Width = 23
              Height = 23
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                20000000000000080000120B0000120B00000000000000000000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000CFCF
                CF00C6C6C600C6C6C600CDCDCD00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000CFCF
                CF00C6C6C600C6C6C600CDCDCD00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000CECECE009C99
                98009C746000A9755900A07762009F928D00C7C6C600D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000CECECE009999
                990075757500767676007878780093939300C6C6C600D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000C3C3C3009F75
                5E00D29B6E00E0C2B400C4AB9F00C7886B00C0775600A2938D00BCBCBC00C1C1
                C100CACACA00D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000C3C3C3007676
                760099999900C2C2C200AAAAAA00898989007A7A7A0094949400BCBCBC00C1C1
                C100CACACA00D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000C5C5C500AD79
                5A00D7AC9100CFCFCF00B1B1B10093827B00C2714C00DC723E00BD6B4400B470
                4F00AA745B009E8B8300C7C7C700D0D0D000D0D0D000D0D0D000C5C5C5007A7A
                7A00ACACAC00CFCFCF00B1B1B1008282820074747400777777006E6E6E007373
                7300777777008C8C8C00C7C7C700D0D0D000D0D0D000D0D0D000CDCDCD00A17B
                6500C6907000ADADAD00A5705900DF834C00D8925C00E1A57900DC926300D587
                5700D7895400E0804A00BB705200C6C5C500D0D0D000D0D0D000CDCDCD007B7B
                7B0091919100ADADAD00727272008686860090909000A2A2A200909090008787
                8700898989008181810074747400C5C5C500D0D0D000D0D0D000D0D0D000A297
                9300CD7F4F009C756400DE8B5500D3A36E00E1B78F00C2947800B6A39900B07F
                6500CD784B00D98E6300EF784600B5766200D0D0D000D0D0D000D0D0D0009898
                980080808000777777008B8B8B009E9E9E00B3B3B30093939300A3A3A3008080
                80007A7A7A008E8E8E007D7D7D007C7C7C00D0D0D000D0D0D000D0D0D000CACA
                CA00AC745400DA743E00D7A47000D3B27F00CC9B7300BAB9B900BEBEBE00B7B7
                B700998C8700C1694400ACA5A300C0C0C000D0D0D000D0D0D000D0D0D000CACA
                CA007474740076767600A0A0A000ACACAC0098989800B9B9B900BEBEBE00B7B7
                B7008D8D8D006F6F6F00A6A6A600C0C0C000D0D0D000D0D0D000D0D0D000D0D0
                D000948A8600D7713700D1A67300D4B98700D0A07200B9815F00BB765500BB78
                5700BA7E5D00C87E5500C8724900BD694800CDCCCB00D0D0D000D0D0D000D0D0
                D0008A8A8A0072727200A1A1A100B2B2B2009E9E9E0081818100787878007A7A
                7A007F7F7F007F7F7F00757575006E6E6E00CCCCCC00D0D0D000D0D0D000D0D0
                D000A7A4A400D5703E00D4824A00D2B98900E8C6A400EAA07500ED956800EB9B
                6F00E4A97B00DCAE7C00D69C6B00E47A4900CFCECE00D0D0D000D0D0D000D0D0
                D000A4A4A4007373730081818100B2B2B200C1C1C1009F9F9F00969696009B9B
                9B00A6A6A600A8A8A800999999007D7D7D00CECECE00D0D0D000D0D0D000D0D0
                D000B8B8B800D7825700D3865400D4875300C49C7A00C6C6C500CACAC900ACAA
                A900C19A7700DAC19200DAB98B00C56E4500CCC9C800D0D0D000D0D0D000D0D0
                D000B8B8B8008383830084848400858585009A9A9A00C6C6C600C9C9C900AAAA
                AA0098989800BABABA00B4B4B40070707000C9C9C900D0D0D000D0D0D000D0D0
                D000CDCDCD00A97F6C00E0A57500D68E5B00D57B47009A857A009F9D9B009783
                7800E3B08000DEC39400E9BD9700B46C4D00C89B8A00D0D0D000D0D0D000D0D0
                D000CDCDCD0080808000A1A1A1008C8C8C007C7C7C00858585009D9D9D008282
                8200ABABAB00BCBCBC00B9B9B900707070009D9D9D00D0D0D000D0D0D000D0D0
                D000D0D0D000BEBDBD00CC836000E5AC7F00DC936300D7784300D4895B00E3A8
                7800E6BB8E00EEC6A400DD927000ADA9A800D2775400D0D0D000D0D0D000D0D0
                D000D0D0D000BDBDBD0085858500A8A8A800929292007878780088888800A5A5
                A500B5B5B500C2C2C20093939300A9A9A9007D7D7D00D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000C6C6C500AF8A7900E0926A00E88A5C00DF7C4900D082
                5800CD8C6C00B0867400C4C3C300A8A8A800CA745000D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000C6C6C6008B8B8B00929292008B8B8B007D7D7D008282
                82008C8C8C0087878700C3C3C300A8A8A8007A7A7A00D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000CFCFCF00CBCAC900C8C4C200BF99
                8800D6855E00A8775F00957A6D009F776400E4957400D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000CFCFCF00CACACA00C4C4C4009999
                990087878700787878007B7B7B007878780099999900D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
                D000D0CFCE00D6C6BF00E2C2B400E0C3B700D3D1D000D0D0D000D0D0D000D0D0
                D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0D000D0D0
                D000CFCFCF00C5C5C500C1C1C100C3C3C300D1D1D100D0D0D000}
              NumGlyphs = 2
              OnClick = btnIEClick
            end
            object Label9: TLabel
              Left = 8
              Top = 80
              Width = 31
              Height = 13
              Caption = 'Email'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object btnEmail: TSpeedButton
              Tag = 1
              Left = 653
              Top = 94
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'Envia Email.'
              Glyph.Data = {
                36080000424D3608000000000000360000002800000020000000100000000100
                20000000000000080000120B0000120B00000000000000000000C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400B8BF
                C300C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400B8BF
                C300C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D4005F7485006C8A9F0093999B00A3A9AD007C84890082889200959F
                A700ACB4B800C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400757778008C8D8D0093999B00A3A9AC0080848500888A8A00A1A1
                A100ADB4B700C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BAC2
                C6006B737B0095CAD200F9FFFF0099BECE00343D4F00B6B6C400DCE5ED00FFFF
                FF00767E8400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BAC2
                C50071747600C9C9C900FFFFFF00C1C1C10041414100BABABA00E6E6E600FFFF
                FF007B7F8100C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400626A7300504F
                5E00567288008AB9BF0096AFB700F3FFFF009BC4CE002837490079788300E9EE
                F900878D9500C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400696C6D005353
                530077777700B8B8B800AFAFAF00FEFEFE00C4C4C4003B3B3B007A7A7A00F1F1
                F1008D8F8F00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400767C8A004A50
                63007EA6B3008DB3B80078A0A500DEEBEE00DFF7F900B6DDE70033455D007879
                8700E7F1FF008E959800C8D0D400C8D0D400C8D0D400C8D0D4007E7F80005454
                5400A7A7A700B2B2B2009F9F9F00ECECEC00F6F6F600DDDDDD00494949007C7C
                7C00F5F5F50090959800C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4005360
                6E00EBFFFF00A1BDC100749DA400CCDDE200E7F2F600D2E9EC00CFF7F9003550
                6300858C9C009A9CAE0099A0A400C8D0D400C8D0D400C8D0D400C8D0D4006062
                6400FDFDFD00BDBDBD009C9C9C00DDDDDD00F2F2F200E9E9E900F5F5F5005454
                54008F8F8F00A0A0A0009AA0A300C8D0D400C8D0D400C8D0D400C6CED20091A4
                B300FFFFFF00CFE0E500A8C7CD00B3CCD000FFFFFF00D4E6EA00D2E6E900CEEE
                F40087A3B000959AA800484F5E00A9B0B400C8D0D400C8D0D400C6CED200A6A7
                A800FFFFFF00E0E0E000C7C7C700CBCBCB00FFFFFF00E6E6E600E6E6E600EDED
                ED00A5A5A5009D9D9D0052525200AAB0B300C8D0D400C8D0D400475D7600FFFF
                FF00E9E6E300CFD6D600BFC9CC00ADC4C400FFFFFF00FFFFFF00F4FFFF00D2E6
                EC00DBF8FD00757C8900474F5F005A637100AEB5B900C8D0D40061636300FFFF
                FF00E6E6E600D5D5D500C9C9C900C4C4C400FFFFFF00FFFFFF00FEFEFE00E7E7
                E700F8F8F8007E7E7E005252520066666600AFB6B900C8D0D40078869400D5DE
                E300FFFFFF00FAFBF800CDD4D6009BABB1009DABAF00BCBFBF00D2CFD000FFFF
                FF00E6F8FA00616A7A0048505F00626B7F00555B6A00BCC3C70084898B00DFDF
                DF00FFFFFF00FBFBFB00D4D4D400ABABAB00ABABAB00C0C0C000CFCFCF00FFFF
                FF00F7F7F7006D6D6D00535353006F6F6F005D5D5D00BCC3C700C8D0D400B6C0
                C6008897A300FAFFFF00FFFFFF00FFFFFF00C0D7DB0090B6BC006A919A00D1D2
                D200FFFFFF0059617100545C6B005D6575005D64770090979B00C8D0D400B9C0
                C40096999A00FFFFFF00FFFFFF00FFFFFF00D7D7D700B6B6B60091919100D2D2
                D200FFFFFF006464640060606000686868006969690092979A00C8D0D400C8D0
                D400C8D0D400555F690077839100DDE2E700FFFFFF00F1FAFA00ADCCD1008FA8
                AF00CDD0D0005E667500636D7C00666E7E0068717F00868E9300C8D0D400C8D0
                D400C8D0D4005D60610085858500E3E3E300FFFFFF00F9F9F900CBCBCB00A8A8
                A800D0D0D000686868007070700071717100747474008A8E9100C8D0D400C8D0
                D400C8D0D400BFC7CB003C3F51002A3341005F667700CFD6DC00FFFFFF00DFFB
                FB00899BA1006D71810078818D00757D8A0078808D007C848B00C8D0D400C8D0
                D400C8D0D400C0C7CB00434343003737370069696900D7D7D700FFFFFF00FAFA
                FA009B9B9B0074747400838383007F7F7F008383830081858700C8D0D400C8D0
                D400C8D0D400C8D0D400868E9300575C69003B414F002A2E3C005B636E00B9C7
                CE00ADBCC500898D9B0089919D00878F9D008A93A1008D949900C8D0D400C8D0
                D400C8D0D400C8D0D4008A8E90005F5F5F00454545003030300065656500C8C8
                C800BDBDBD008F8F8F009393930091919100969696008F949600C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D4006F747F005E647200676C7C0042475800545B
                6C00E5EDF600C2C9D100B1B9C100C2C7D1009BA4AF00B4BBBF00C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D4007376780067676700707070004C4C4C005F5F
                5F00EFEFEF00CBCBCB00BBBBBB00CACACA00A7A7A700B4BBBF00C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400878E97005157640069748200C5CE
                D100C8D0D900CDD4DF00D6E3ED00D7E2EB0091989E00C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D4008C9092005859590077777700CECE
                CE00D1D1D100D6D6D600E5E5E500E3E3E30095999C00C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C7CFD300BDC5C900BBC3
                C700B8C0C500B0B8BC009CA3A700B3BBC000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C7CFD300BDC5C800BCC3
                C700B9C0C400B1B8BB009CA3A600B4BBBF00C8D0D400C8D0D400}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btnEmailClick
            end
            object Bevel1: TBevel
              Left = 7
              Top = 120
              Width = 680
              Height = 9
              Shape = bsTopLine
            end
            object Label59: TLabel
              Left = 176
              Top = 124
              Width = 79
              Height = 13
              Caption = 'Data Inclus'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 286
              Top = 124
              Width = 81
              Height = 13
              Caption = 'Data Exclus'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label90: TLabel
              Left = 456
              Top = 124
              Width = 35
              Height = 13
              Caption = 'Banco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label92: TLabel
              Left = 572
              Top = 124
              Width = 34
              Height = 13
              Caption = 'Conta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label91: TLabel
              Left = 502
              Top = 124
              Width = 45
              Height = 13
              Caption = 'Ag'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object btnBanco: TSpeedButton
              Left = 429
              Top = 139
              Width = 23
              Height = 22
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                CE070000424DCE07000000000000360000002800000024000000120000000100
                18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
                5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
                8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
                63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
                B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
                F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
                A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
                79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
                C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
                756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
                B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
                BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
                B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
                D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
                CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
                877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
                68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
                F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
                7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
                4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
                B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
              NumGlyphs = 2
              ParentFont = False
              OnClick = btnBancoClick
            end
            object Label53: TLabel
              Left = 396
              Top = 124
              Width = 27
              Height = 13
              Caption = 'C'#243'd.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit25: TDBEdit
              Left = 8
              Top = 19
              Width = 106
              Height = 21
              Ctl3D = True
              DataField = 'COD_CNT_RRR'
              DataSource = dsCadastro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit25Enter
              OnExit = DBEdit25Exit
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit46: TDBEdit
              Tag = 1
              Left = 140
              Top = 19
              Width = 527
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'NOME_CNT'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit47: TDBEdit
              Tag = 1
              Left = 8
              Top = 57
              Width = 139
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'RG_CNT'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit48: TDBEdit
              Tag = 1
              Left = 151
              Top = 57
              Width = 139
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'CNPJ_CNT'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit49: TDBEdit
              Tag = 1
              Left = 317
              Top = 57
              Width = 139
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'FONE_CNT'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnKeyDown = DBEdit1KeyDown
            end
            object btnTransfere: TRzBitBtn
              Left = 458
              Top = 47
              Width = 100
              Height = 31
              Cursor = crHandPoint
              Caption = 'Transfere'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HighlightColor = 16026986
              HotTrack = True
              HotTrackColor = 3983359
              ParentFont = False
              ParentShowHint = False
              TextHighlightColor = clBtnFace
              ShowHint = False
              TabOrder = 5
              OnClick = btnTransfereClick
              Glyph.Data = {
                36120000424D3612000000000000360000002800000030000000180000000100
                20000000000000120000120B0000120B00000000000000000000C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D40073777E000C122A000E2164000B2267000D1C
                470054669400959DAB007B80BE009CA2D900B6BDD800B4BBD800B4BCD800B8C0
                D700B0B8D7007E87B900B0C8E0008C9CBD00B2B9C400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D40074787A0019191A00393939003A3A3A002A2A
                2B00747779009BA1A400999EA000B6BCC000C2C9CD00C1C8CC00C1C8CC00C3CA
                CE00BFC6C90093979800C8CCCF00A0A4A600B5BBBF00C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400686C7E0003259200005AFC00006FFF000F72FF000951
                E10003279400090F43002E307F00797EE5007C81E4007A7FE5007B80E500767B
                E4004C4FD0003E44B9005E75DE004C55A7009BA1C300C6CED300C8D0D400C8D0
                D400C8D0D400C8D0D4006D7173004F505000939393009D9D9D009F9F9F008383
                8300505050002323230053555600ACB1B400ADB2B500ACB1B400ADB1B400AAAF
                B1008B8E8F006E6F6F00949595006F707100A9B0B300C7CED200C8D0D400C8D0
                D40031355800292B4C0004268B000068FF000A76FF001A4DB6002A386000818C
                A6008E959E0070748B002327B4006061F5005C5EF5005556F6004B4DF6003638
                F3002223CE007A79EE007E7BF3005655DC005F63B600C6CED300C8D0D400C8D0
                D4003F414200373839004C4C4C009A9A9A00A1A1A1006F6F6F00444546008F94
                960091979A00767A7C00666768009A9C9D00999B9C0097989900959697008F90
                91006E6E6E009E9E9E00A1A1A10084848400878B8D00C7CED200C6C7C700C8D0
                D40006207B000049E300005BF0000A74FF00244FAB002D2F2F00BCC3C600C9D0
                D400C8D0D400C6C5C2004B439F006F73C3009494FF007575FF005A5AFF003232
                FF002121E100A3A3EF00C8C7FF006465CE00A2A8C700C8D0D400C0C7CB00C8D0
                D40042424200808080008E8E8E00A0A0A0006C6C6C002D2F2F00BCC3C700C8D0
                D400C8D0D400BEC5C8006B6D6E008A8A8A00B4B4B400A1A1A100969696008989
                890077777700B7B7B700D5D5D50087888800AFB6B900C8D0D400C1A08D00D7DD
                DF0006299500006EFF000169F9002A7BFE00272C4100C2C3B900D8D9CB00D8D9
                CA00D9DAC500695B5800172E7E000C143900BCBDFF007272FF005B5BFF004444
                FF001C1CE4009E9EE600D7D7FF005558B600C8D0D400C8D0D4009CA0A200D7DC
                DF00515151009D9D9D0099999900A3A3A30031313100BCC1C300D0D6D900D0D6
                D900D1D6D900585B5C004A4B4B0021212100CECECE00A0A0A000969696008D8D
                8D0077777700B2B2B200E0E0E0007B7E7F00C8D0D400C8D0D400BD8E7300EFF2
                EC0007278700006EFF00086DFF002D82F8003453A50078757900C1BBA0003C3C
                450019297C000135AD000067FD00123386005A5EFA004846FF004747FF004E4E
                FF003232F2006969E1008282D9008186BD00C8D0D400C8D0D4008B8E8F00EEF0
                F1004A4B4B009C9C9C009C9C9C00A4A4A4006B6B6B0075767700B4B6B7003E3E
                3E004848480061616100989898004E4F4F00969696008E8E8E008D8D8D009090
                9000828282008F8F8F009A9A9A009BA0A200C8D0D400C8D0D400B8836500FFFF
                F2000D256A000971FE002956AF00354075005B595000E1D5A6008E8676000320
                8C000056EE00006BFF00006BFD002049A9004849E5008686FF004443D9004544
                E0007070FF005454F3003A3CB300BFC6D100C8D0D400C8D0D40081838500FCFC
                FC003D3D3D009E9E9E00707070004E4F4F0057575700CCCCCC00838383004B4B
                4B008C8C8C009B9B9B009A9A9A006767670083838300ABABAB007B7B7B007F7F
                7F00A0A0A0008D8D8D0070717200C2CACD00C8D0D400C8D0D400B6816300FEFD
                F1000C1123002838770089887B00FEFACC00FFF7C400FFF5BB00F4E8AC002B2C
                3700004AEC00016CFB00016CFF002852B5006D62A2005A56D6003132BA001E27
                A4002A2BBF004F50BC00B4BCCE00C8D0D400C8D0D400C8D0D4007F828300FBFB
                FB00161616004A4A4A0085858500F2F2F200EEEEEE00EBEBEB00DDDDDD002E2E
                2E0085858500999999009B9B9B00717171007474740082828200676767005858
                5800666666007D808100BCC3C700C8D0D400C8D0D400C8D0D400B1755400DC9B
                67009F6B4300C37F4A00DA9E6800DCA77100E4B98200E7C49000655C4800032E
                9F000065FE001571F6004080EB002E4B9B00AA6B3F007C7AA1006269A900495E
                AB00656BA900C8D0D400C8D0D400C8D0D400C8D0D400C8D0D40076787A009797
                9700686868007C7C7C009A9A9A00A0A0A000B3B3B300BCBCBC005A5A5A005858
                5800999999009A9A9A009F9F9F0063636300696B6B0084888A007E8283007474
                74007F838400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400B4785200FBB2
                3800EFA03200BA7B320099754600A47838008D664300282747000133B0000066
                FF00147BFF0025499A005A5255004C365A006F6381005175D0005874C4005672
                B9006F779F00B1B7C100C8D0D400C8D0D400C8D0D400C8D0D400787B7C00A6A6
                A60097979700747474007070700072727200626262002F2F2F00616161009898
                9800A2A2A2006262620053535300414142006A6C6D008F8F8F008A8A8A008484
                84007F828300B2B9BC00C8D0D400C8D0D400C8D0D400C8D0D400B27C5500F9DE
                2400FAE5240096862100222850000C31A200155BE8001376FF001984FF00257A
                FF002242940077592F00B570480088798800628FE5004F58E3003E47E1005B7D
                E300709AE8006379B8008D93A700B4BBD300B4BCD800C8D0D4007A7D7E00C9C9
                C900CECECE0079797900343434005A5A5A008A8A8A00A1A1A100A7A7A700A3A3
                A3005C5C5C0054545400707273007A7E7F00A5A5A50089898900808080009999
                9900AEAEAE00898A8A0093989A00BEC5C800C1C8CC00C8D0D400B2877000CC91
                0600EDC80800ECCE0300A785180038508800222948003542610037465F00676A
                2100B8A90D00C17F2C00ACA1A6006B8BC700698EED007471D800827CE400171D
                C8005C80E40077A5F6006386CB004E52CF006F73E800C8D0D400868A8C008888
                8800B6B6B600BABABA007A7A7A006060600031313100494949004C4C4C006060
                6000989898007A7C7D009DA3A6009A9B9B00A8A8A800909090009C9C9C006868
                68009D9D9D00BABABA00979797007F808000A5A9AB00C8D0D400C7CDD100BFB5
                B20084787B0070737C006E91BD005FA0E2005C80AD008A945400A8981F00BC8D
                1300BE793500C0BCBD008089A80084B6F7006E8CE1006F86E0005F79DD006890
                E8006D96EA007AA7F1007CAAFA00769BE6006970B200C3CBD200C6CED200B0B7
                BA0076797B00757576009A9A9A00B0B0B0008A8A8A00888888008A8B8B008283
                8300787A7B00B6BDC1008D919300C5C5C500A3A3A3009F9F9F0096969600A7A7
                A700ABABAB00B9B9B900BDBDBD00AEAEAE0083868700C4CCD000C8D0D400C8D0
                D4006993B900B0E0FF0095BCE100ABC1D800AECAE30083B8FB006B9BDF00636B
                8F00B4B5BA00C4CACE006F8DBF009ED3FF0078A2DC007E9ECF0091B7E800ABD0
                FA00B9E0FF0099CBFE006E96CC007798CC007890BB00B0B7C200C8D0D400C8D0
                D400989B9D00E5E5E500C3C3C300C4C4C400CECECE00C7C7C700ABABAB007274
                7500AFB6B900C3CACE0097999900DBDBDB00AFAFAF00AAAAAA00C3C3C300D8D8
                D800E5E5E500D5D5D500A2A2A200A4A4A40099999900B3B9BD00C8D0D400C8D0
                D4007592B00088ABCE0088A4C300A9C1DB00AFC1D400A9BDCD00A9D7FC007DB9
                EF00859DB300C4CCD1007C89AC00B3DBFB00C0D5EC00A5ACC80098B6E000ADD0
                F700CCDCE800BFDFFA007293B600474C5F00979DB000BEC5CD00C8D0D400C8D0
                D40095989900B1B1B100ABABAB00C6C6C600C4C4C400BFBFBF00DEDEDE00C5C5
                C5009DA2A500C5CDD0008E919200E1E1E100D9D9D900B2B2B200BEBEBE00D7D7
                D700DEDEDE00E4E4E4009A9A9A004F5051009DA2A400BFC7CA00C8D0D4009FAF
                BD00648CB60099C4F00083AACF00547FAC0088AFD80090B3D60089AFD4006B8D
                AE00C2CBD000C8D0D400A2A8B100575E7600D0DFF000899CAF0084ADD8008BBC
                EE006989AB008AB0D9008DBAF100262A3500B2B8BF00C8D0D400C8D0D400ACB2
                B60094959500CDCDCD00B2B2B20089898900B7B7B700BABABA00B5B5B5009294
                9600C4CBCF00C8D0D400A3AAAD0063646400E2E2E2009F9F9F00B5B5B500C6C6
                C60090909000B8B8B800C5C5C5002B2C2D00B2B9BD00C8D0D400C5CED2006B88
                A50081A6CD00B6DEFF008AAED3008DA7C200C3DFF90090C9FF00709DCA0090A2
                B400C8D0D400C8D0D400C2C9CD009DA3A6007C84A3009FBEDE00A0BBD300BCD9
                F4007290AF007DA6CC007497C700010108008B909300C8D0D400C6CED2008B8F
                9100ADADAD00E3E3E300B5B5B500ADADAD00E4E4E400D4D4D400A6A6A700A0A6
                A900C8D0D400C8D0D400C2C9CD009DA3A600898C8D00C3C3C300C0C0C000DEDE
                DE0096969600AEAEAE00A2A2A200020202008B909300C8D0D400BCC6CD004578
                9A009DC4D800D8E4F100A7C3DE00A5C6E200D3EAF900C9E1F800547EAA00A7B5
                C100C8D0D400C8D0D400C8D0D400C8D0D400B5BDC400575D7300CACDCE00F8F8
                F700B9CCD400B0D8F600494E6E000D0500005D616400C0C8CC00C0C7CB007E80
                8000C7C7C700E5E5E500C8C8C800CACACA00ECECEC00E4E4E40087878700B1B8
                BB00C8D0D400C8D0D400C8D0D400C8D0D400B7BEC10061626200CDCDCD00F7F7
                F700CDCDCD00DDDDDD0057575700040404005D616300C0C8CC00C5CED3005F96
                B10094C5DA00AFC4DC007FA6CD0094BFE900B4CDE50085B0C9003F749800A8B6
                C200C8D0D400C8D0D400C8D0D400C8D0D400B8BEC200724F5600D0C4D5009CA7
                AB009DAFBB009091B000642F2D00240E490001016600585B5D00C6CED200989B
                9C00C7C7C700C9C9C900ADADAD00C8C8C800D1D1D100B4B4B4007B7B7B00B1B8
                BB00C8D0D400C8D0D400C8D0D400C8D0D400B7BEC20053545500C8C8C800A8A8
                A800B2B2B20098989800343434002626260031313100585B5D00C8D0D40081A0
                BA00A7C0D60098AECD00C2D4EA00AABFDE008398C1004B92B4006790AB00C5CD
                D200C8D0D400C8D0D400C8D0D400C8D0D400C6CED2007B656200CA776B009763
                6200AC6E7700BA5C5B00814747002729D800010282001B1D1D00C8D0D400A1A5
                A700C4C4C400B4B4B400D8D8D800C6C6C600A2A2A2009898980092959700C6CE
                D200C8D0D400C8D0D400C8D0D400C8D0D400C6CED200646768007C7C7C006767
                670074747400656565004C4C4C00727272003F3F3F001B1D1D00AEBFCA0014CA
                DA0054C5DA0090C7DD0078B9D4004FC1D70024CFE00021C7D9006BADC300C0CA
                D100C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400B8C0C3007C6F6A00A669
                5300A26653007A474E008C75C8007C5ACC005125340056555400BAC1C400C9CA
                CA00C6C6C600CACACA00BDBDBD00C1C1C100CDCDCD00C6C6C600ACB0B200C4CB
                CF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400B8C0C3006B6F71006A6B
                6B00676869004C4D4D008E8E8E00818181002C2C2C00525556007AABC10035FF
                FF0035DDE90033E0EB0038E3EC0027F7FA0021DDE80028D8E40039F4F80089AF
                C400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BDC5
                C800C3CBCF008B8B8E009C5D6400A0554C006C565400B3BABE00ABAEB000F8F8
                F800DBDBDB00DDDDDD00E0E0E000F0F0F000DADBDB00D6D6D700EEEEEE00AEB2
                B400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BDC5
                C800C3CBCF00878C8E006364640059595A0055575800B3BABE0090ACC100BBE1
                EB00D0F3F700AED4E2008EBACD008FAEC300A7BECB00ACBFCB0083A3BE0094AE
                C300C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400ACAEAE00A8A7A800C3CACE00C8D0D400ABB0B200E2E2
                E200F2F2F200D4D5D500BBBDBE00ADB1B300BAC0C300BAC1C400A5A7A900ADB2
                B400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400A7AEB100A1A7AA00C3CACE00C8D0D400C2CCD200A4B5
                C500A4B6C600B6C2CC00C3CCD200C8D0D400C8D0D400C8D0D400B4C1CC00BCC7
                CF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C5CCD000B2B8
                BB00B3B8BB00BDC4C700C5CCD000C8D0D400C8D0D400C8D0D400BCC3C600C1C8
                CC00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
              NumGlyphs = 2
            end
            object DBEdit2: TDBEdit
              Tag = 1
              Left = 8
              Top = 95
              Width = 643
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'EMAIL_CNT'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              OnKeyDown = DBEdit1KeyDown
            end
            object EvDBDateEdit18: TEvDBDateEdit
              Left = 176
              Top = 140
              Width = 109
              Height = 21
              Ctl3D = True
              DataField = 'DTDEBAU_INC_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                52030000424D520300000000000042000000280000001C0000000E0000000100
                1000030000001003000000000000000000000000000000000000007C0000E003
                00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EE03DE03DE03DE03D
                E03DE03DE03DE03DE03DE03DE03DF75EF75EF75EEF3DEF3DEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DF75EF75EF75EEF3DFF7F00000000FF7F00000000FF7F
                00000000E03DF75EF75EF75EEF3DFF7FEF3DEF3DFF7FEF3DEF3DFF7FEF3DEF3D
                EF3DF75EF75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EE03DF75E
                F75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EEF3DF75EF75EF75E
                EF3DFF7F00000000FF7F007C007CFF7F007C007CE03DF75EF75EF75EEF3DFF7F
                EF3DEF3DFF7FEF3DEF3DFF7FEF3DEF3DEF3DF75EF75EF75EEF3DFF7FF75EF75E
                FF7FF75EF75EFF7FF75EF75EE03DF75EF75EF75EEF3DFF7FF75EF75EFF7FF75E
                F75EFF7FF75EF75EEF3DF75EF75EF75EEF3DFF7F00000000FF7F00000000FF7F
                00000000E03DF75EF75EF75EEF3DFF7FEF3DEF3DFF7FEF3DEF3DFF7FEF3DEF3D
                EF3DF75EF75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EE03DF75E
                F75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EEF3DF75EF75EF75E
                EF3D1F001F001F001F001F001F001F001F001F00E03DF75EF75EF75EEF3DF75E
                F75EF75EF75EF75EF75EF75EF75EF75EEF3DF75EF75EF75EEF3D1F00FF7FFF7F
                FF7FFF7FFF7FFF7FFF7F1F00E03DF75EF75EF75EEF3DF75EFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FF75EEF3DF75EF75EF75EEF3D1F001F001F001F001F001F001F00
                1F001F00E03DF75EF75EF75EEF3DF75EF75EF75EF75EF75EF75EF75EF75EF75E
                EF3DF75EF75EF75EEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DE03DF75E
                F75EF75EEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E}
              ParentCtl3D = False
              ParentFont = False
              ShowButton = True
              TabOrder = 7
              OnKeyDown = DBEdit1KeyDown
            end
            object EvDBDateEdit19: TEvDBDateEdit
              Left = 286
              Top = 140
              Width = 109
              Height = 21
              Ctl3D = True
              DataField = 'DTDEBAU_IXC_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                52030000424D520300000000000042000000280000001C0000000E0000000100
                1000030000001003000000000000000000000000000000000000007C0000E003
                00001F000000F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EE03DE03DE03DE03D
                E03DE03DE03DE03DE03DE03DE03DF75EF75EF75EEF3DEF3DEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DF75EF75EF75EEF3DFF7F00000000FF7F00000000FF7F
                00000000E03DF75EF75EF75EEF3DFF7FEF3DEF3DFF7FEF3DEF3DFF7FEF3DEF3D
                EF3DF75EF75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EE03DF75E
                F75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EEF3DF75EF75EF75E
                EF3DFF7F00000000FF7F007C007CFF7F007C007CE03DF75EF75EF75EEF3DFF7F
                EF3DEF3DFF7FEF3DEF3DFF7FEF3DEF3DEF3DF75EF75EF75EEF3DFF7FF75EF75E
                FF7FF75EF75EFF7FF75EF75EE03DF75EF75EF75EEF3DFF7FF75EF75EFF7FF75E
                F75EFF7FF75EF75EEF3DF75EF75EF75EEF3DFF7F00000000FF7F00000000FF7F
                00000000E03DF75EF75EF75EEF3DFF7FEF3DEF3DFF7FEF3DEF3DFF7FEF3DEF3D
                EF3DF75EF75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EE03DF75E
                F75EF75EEF3DFF7FF75EF75EFF7FF75EF75EFF7FF75EF75EEF3DF75EF75EF75E
                EF3D1F001F001F001F001F001F001F001F001F00E03DF75EF75EF75EEF3DF75E
                F75EF75EF75EF75EF75EF75EF75EF75EEF3DF75EF75EF75EEF3D1F00FF7FFF7F
                FF7FFF7FFF7FFF7FFF7F1F00E03DF75EF75EF75EEF3DF75EFF7FFF7FFF7FFF7F
                FF7FFF7FFF7FF75EEF3DF75EF75EF75EEF3D1F001F001F001F001F001F001F00
                1F001F00E03DF75EF75EF75EEF3DF75EF75EF75EF75EF75EF75EF75EF75EF75E
                EF3DF75EF75EF75EEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DE03DF75E
                F75EF75EEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E
                F75EF75EF75EF75EF75EF75EF75EF75EF75EF75EF75E}
              ParentCtl3D = False
              ParentFont = False
              ShowButton = True
              TabOrder = 8
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit55: TDBEdit
              Left = 396
              Top = 140
              Width = 32
              Height = 21
              Ctl3D = True
              DataField = 'COD_BCO_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnExit = DBEdit55Exit
              OnKeyDown = DBEdit1KeyDown
            end
            object DBCheckBox1: TEvDBCheckBox
              Left = 8
              Top = 142
              Width = 162
              Height = 17
              Caption = ' Debitar Autom'#225'tico  ?'
              DataField = 'DEBAU_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBEdit57: TDBEdit
              Tag = 1
              Left = 456
              Top = 140
              Width = 44
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'COD_BANCO_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit58: TDBEdit
              Tag = 1
              Left = 502
              Top = 140
              Width = 68
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'COD_AGEN_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 12
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit59: TDBEdit
              Tag = 1
              Left = 572
              Top = 140
              Width = 100
              Height = 21
              TabStop = False
              Color = clBtnFace
              Ctl3D = True
              DataField = 'COD_CONTA_RRR'
              DataSource = dsCadastro
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
              OnKeyDown = DBEdit1KeyDown
            end
          end
        end
      end
    end
    object TabSheet1: TRzTabSheet [1]
      Caption = 'Hist'#243'ricos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PHis: TPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 38
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object btnNovoHis: TRzBitBtn
          Left = 5
          Top = 4
          Width = 124
          Height = 31
          Caption = '&Novo Hist'#243'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          ParentFont = False
          ParentShowHint = False
          TextHighlightColor = clBtnFace
          ShowHint = False
          TabOrder = 0
          OnClick = btnNovoHisClick
          Glyph.Data = {
            0E100000424D0E100000000000003600000028000000340000001A0000000100
            180000000000D80F0000C40E0000C40E00000000000000000000C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A99064915F0C915F0C915F0C
            915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F
            0C915F0C915F0C915F0C915F0C915F0C915F0CA99064C8D0D4C8D0D4C8D0D4C8
            D0D4868686555555555555555555555555555555555555555555555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            55868686C8D0D4C8D0D4C8D0D4C8D0D4915F0CFFFFFFFFFFFCFFFFFAFFFEF9FF
            FDF7FFFCF5FEFBF3FEFAF2FDFAEFFDF9EEFCF8ECFBF7EAFBF6E8FAF6E6FAF4E4
            FAF4E2F9F3E1F9F2DFF8F0DCFFFDF3915F0CC8D0D4C8D0D4C8D0D4C8D0D45555
            55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1
            F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1EAEAEAEAEAEAFFFFFF555555
            C8D0D4C8D0D4C8D0D4C8D0D4915F0CFFFFFFF8F1E3F7F1E0F7EFDDF6EED9F5EC
            D5F4EAD1F2E8CEF1E6C9F0E4C6EFE2C2EDE0BEEDDDBAECDCB6EBDAB1EAD8ADE9
            D6AAE8D5A7E6D09FF8EDD1915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFF
            EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE3E3E3E3E3E3E3E3E3DDDDDDDDDDDDDDDD
            DDD7D7D7D7D7D7D7D7D7D7D7D7CCCCCCCCCCCCC0C0C0EAEAEA555555C8D0D4C8
            D0D4C8D0D4C8D0D4915F0CFFFFFFFAF6EBF9F5EAF7F1E4F6EDDFF5EBDDF4EAD8
            F4EAD6F4EAD5F3E8D0F1E6CAEFE3C7EFE2C3EEDFBFEDDEBBECDDB8EBDAB4EAD9
            B1E8D5AAF9EFD7915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFF1F1F1F1
            F1F1EAEAEAEAEAEAEAEAEAE3E3E3E3E3E3E3E3E3E3E3E3E3E3E3DDDDDDDDDDDD
            DDDDDDDDDDDDD7D7D7D7D7D7D7D7D7CCCCCCEAEAEA555555C8D0D4C8D0D4C8D0
            D4C8D0D4915F0CFFFFFFEEDFCDD9B88AD9B889D9B788D9B688D9B788D8B889D9
            B88AEBD9C2F3E8CFF1E6C9F0E4C7EFE2C3EEE0BFEEDFBCECDDB8ECDBB4E9D7AD
            FAF1DA915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFDDDDDDB2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2D7D7D7E3E3E3E3E3E3DDDDDDDDDDDDDD
            DDDDDDDDDDD7D7D7D7D7D7CCCCCCEAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4
            915F0CFEFBFBDCBF98EBDBC4E8E2CFEBE7D4EEE8D7ECE8D7E6E2CFE0CDB2DBBD
            96EFE2CCF2E9CFF1E6CAF0E4C7EFE2C3EEE0C0EDDEBCECDDB8EAD9AFFAF2DB91
            5F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFC0C0C0D7D7D7DDDDDDE3E3E3
            E3E3E3E3E3E3DDDDDDCCCCCCB2B2B2DDDDDDE3E3E3E3E3E3DDDDDDDDDDDDDDDD
            DDDDDDDDD7D7D7D7D7D7EAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9
            F2EFD9B88AECD9C3B3BD8CB4CB9FC4D1ADAFCD97A5B586E2D7C8D9B88AEBD9C1
            F7EFD9F6EED7F4EAD3F4E9CFF2E6CAF1E4C6F0E2C2ECDCB5FAF3DD915F0CC8D0
            D4C8D0D4C8D0D4C8D0D4555555F1F1F1B2B2B2D7D7D7B2B2B2C0C0C0CCCCCCC0
            C0C0B2B2B2D7D7D7B2B2B2D7D7D7EAEAEAEAEAEAE3E3E3E3E3E3E3E3E3DDDDDD
            DDDDDDD7D7D7EAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EFEBD9B7
            89EADBC5CEC091A3B59D6783A4A0B685C1BC94EBE1CBD9B789ECDBC5EFE6D4E3
            D2B0E6D4B3E6D4B3EBDAB9E9D8B6E9D7B6EFE1C4FCF5E2915F0CC8D0D4C8D0D4
            C8D0D4C8D0D4555555EAEAEAB2B2B2D7D7D7B2B2B2B2B2B2868686B2B2B2B2B2
            B2DDDDDDB2B2B2DDDDDDE3E3E3CCCCCCCCCCCCCCCCCCD7D7D7D7D7D7D7D7D7DD
            DDDDF1F1F1555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EEEBD9B78AEBDEC6
            DBB58299AFBF4775ABC5B397DFB582E9E2CDD9B787EDDDC7F1E7D8AC8541AC85
            41AC8541AC8541AC8541AC8541EEDFC1FEF8E7915F0CC8D0D4C8D0D4C8D0D4C8
            D0D4555555EAEAEAB2B2B2DDDDDDB2B2B2B2B2B2808080B2B2B2B2B2B2DDDDDD
            B2B2B2DDDDDDE3E3E3808080808080808080808080808080808080DDDDDDF1F1
            F1555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EFEDD9B889EEDFC6DAB583CF
            E3F08EBAE6737E83DDB884EEE5D0D8B788EEDECCEFE6D7DECAAAE3D0B3E3D0B3
            EAD7BBE9D6B9E8D4B9EDDEC3FEFAEA915F0CC8D0D4C8D0D4C8D0D4C8D0D45555
            55EAEAEAB2B2B2DDDDDDB2B2B2E3E3E3C0C0C0808080B2B2B2E3E3E3B2B2B2DD
            DDDDE3E3E3C0C0C0CCCCCCCCCCCCD7D7D7D7D7D7D7D7D7DDDDDDF1F1F1555555
            C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9F0EED9B88AF1E2C6DAC49DA1ACB87086
            9B787976DBB886EDE4CCD9B78AF0E2D2F0E7D8AC8541AC8541AC8541AC8541AC
            8541AC8541EFE1C7FFFAEC915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555F1F1F1
            B2B2B2DDDDDDC0C0C0B2B2B2868686808080B2B2B2E3E3E3B2B2B2E3E3E3E3E3
            E3808080808080808080808080808080808080DDDDDDF1F1F1555555C8D0D4C8
            D0D4C8D0D4C8D0D4915F0CFCF4F5D9B88AF5ECD6E6D6B5BFB8AAB8B1A1DED2B5
            E2D5B5EEE5CED9B88AF0E3D4F7F2E6F2EADAF3ECDDF5ECDDF4ECDCF4ECDBF6EF
            DFF8F1E3FCF7E7915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555F1F1F1B2B2B2EA
            EAEAD7D7D7B2B2B2B2B2B2CCCCCCCCCCCCE3E3E3B2B2B2E3E3E3F1F1F1E3E3E3
            EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAF1F1F1555555C8D0D4C8D0D4C8D0
            D4C8D0D4915F0CFFFDFFE6CFB67DABC1639FC1D9B88AD9B78AD9B889D9B88AD9
            B789DFC4A1F9F3EBFFFFFFFFFFFDFFFFF8FFFEF3FFFDF0FEFBECFDF8E7FBF4DF
            FFFFFB915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFCCCCCCB2B2B2A4A0
            A0B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C0F1F1F1FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4
            706F45A7D5F3F6EDE86EB8DF48A4DCE5CDB7A5BCC6A1A6A5E5CEB7E7D2BBF5EC
            E2FFFCFAFFFFFAFFFEF4FFFDF0FEFAECFDF9E9FCF6E5FCF5E1FAF2DCFFFFFB91
            5F0CC8D0D4C8D0D4C8D0D4C8D0D4666666DDDDDDEAEAEAC0C0C0B2B2B2CCCCCC
            C0C0C0A4A0A0CCCCCCCCCCCCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1
            F1F1F1F1F1F1F1EAEAEAFFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D468735A26
            A6FA58B2E73AAAF129A4F565BEEB26A9FB8FC6E8FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFFFFFF915F0CC8D0
            D4C8D0D4C8D0D4C8D0D4666666B2B2B2B2B2B2B2B2B2B2B2B2C0C0C0B2B2B2CC
            CCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4A99064438E9F13A9
            FF13A5FF13A1FF139FFF2E91C2915F0C915F0C915F0C915F0C915F0C915F0C91
            5F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0CA99064C8D0D4C8D0D4
            C8D0D4C8D0D4868686868686B2B2B2B2B2B2B2B2B2B2B2B29696965555555555
            5555555555555555555555555555555555555555555555555555555555555555
            5555555555868686C8D0D4C8D0D4C8D0D473B4E15DABDC33AEEC12BDFE13BEFF
            13B1FF14A3FF25A0F057A8DF66ACE1C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0
            C0C0B2B2B2B2B2B2C0C0C0C0C0C0B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D462B2E949B0EE2BB3F712C7FE13D2FF13C8FF13
            B2FF1F9FF343AFF054AEEBC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0C0C0B2B2
            B2C0C0C0C0C0C0CCCCCCC0C0C0B2B2B2B2B2B2B2B2B2B2B2B2C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D45EB9E814B8FF13CFFF13D9FF13C7FF37A7
            DEC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0C0C0
            C0C0C0CCCCCCD7D7D7C0C0C0B2B2B2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D495C2DE26A8F743B9EF2EB8F621B5F646BDED1BA8F57BB5D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0C0C0B2B2B2C0C0C0C0
            C0C0C0C0C0C0C0C0B2B2B2B2B2B2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D494C1E07CBDE3C8D0D45EBBE93FA9E6C8D0D486BFE37EBCDFC8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0C0C0C0C0C0C8D0D4C0C0C0B2B2
            B2C8D0D4C0C0C0C0C0C0C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D46CB7E952A8E7C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0C0C0B2B2B2C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
          NumGlyphs = 2
        end
        object btnAlteraHis: TRzBitBtn
          Left = 129
          Top = 4
          Width = 124
          Height = 31
          Caption = '&Alterar Hist'#243'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          ParentFont = False
          ParentShowHint = False
          TextHighlightColor = clBtnFace
          ShowHint = False
          TabOrder = 1
          OnClick = btnAlteraHisClick
          Glyph.Data = {
            0E100000424D0E100000000000003600000028000000340000001A0000000100
            180000000000D80F0000C40E0000C40E00000000000000000000C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A99064915F0C915F0C915F0C
            915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F
            0C915F0C915F0C915F0C915F0C915F0C915F0CA99064C8D0D4C8D0D4C8D0D4C8
            D0D4868686555555555555555555555555555555555555555555555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            55868686C8D0D4C8D0D4C8D0D4C8D0D4915F0CFFFFFFFFFFFCFFFFFAFFFEF9FF
            FDF7FFFCF5FEFBF3FEFAF2FDFAEFFDF9EEFCF8ECFBF7EAFBF6E8FAF6E6FAF4E4
            FAF4E2F9F3E1F9F2DFF8F0DCFFFDF3915F0CC8D0D4C8D0D4C8D0D4C8D0D45555
            55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1
            F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1EAEAEAEAEAEAFFFFFF555555
            C8D0D4C8D0D4C8D0D4C8D0D4915F0CFFFFFFF8F1E3F7F1E0F7EFDDF6EED9F5EC
            D5F4EAD1F2E8CEF1E6C9F0E4C6EFE2C2EDE0BEEDDDBAECDCB6EBDAB1EAD8ADE9
            D6AAE8D5A7E6D09FF8EDD1915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFF
            EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE3E3E3E3E3E3E3E3E3DDDDDDDDDDDDDDDD
            DDD7D7D7D7D7D7D7D7D7D7D7D7CCCCCCCCCCCCC0C0C0EAEAEA555555C8D0D4C8
            D0D4C8D0D4C8D0D4915F0CFFFFFFFAF6EBF9F5EAF7F1E4F6EDDFF5EBDDF4EAD8
            F4EAD6F4EAD5F3E8D0F1E6CAEFE3C7EFE2C3EEDFBFEDDEBBECDDB8EBDAB4EAD9
            B1E8D5AAF9EFD7915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFF1F1F1F1
            F1F1EAEAEAEAEAEAEAEAEAE3E3E3E3E3E3E3E3E3E3E3E3E3E3E3DDDDDDDDDDDD
            DDDDDDDDDDDDD7D7D7D7D7D7D7D7D7CCCCCCEAEAEA555555C8D0D4C8D0D4C8D0
            D4C8D0D4915F0CFFFFFFEEDFCDD9B88AD9B889D9B788D9B688D9B788D8B889D9
            B88AEBD9C2F3E8CFF1E6C9F0E4C7EFE2C3EEE0BFEEDFBCECDDB8ECDBB4E9D7AD
            FAF1DA915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFDDDDDDB2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2D7D7D7E3E3E3E3E3E3DDDDDDDDDDDDDD
            DDDDDDDDDDD7D7D7D7D7D7CCCCCCEAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4
            915F0CFEFBFBDCBF98EBDBC4E8E2CFEBE7D4EEE8D7ECE8D7E6E2CFE0CDB2DBBD
            96EFE2CCF2E9CFF1E6CAF0E4C7EFE2C3EEE0C0EDDEBCECDDB8EAD9AFFAF2DB91
            5F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFC0C0C0D7D7D7DDDDDDE3E3E3
            E3E3E3E3E3E3DDDDDDCCCCCCB2B2B2DDDDDDE3E3E3E3E3E3DDDDDDDDDDDDDDDD
            DDDDDDDDD7D7D7D7D7D7EAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9
            F2EFD9B88AECD9C3B3BD8CB4CB9FC4D1ADAFCD97A5B586E2D7C8D9B88AEBD9C1
            F7EFD9F6EED7F4EAD3F4E9CFF2E6CAF1E4C6F0E2C2ECDCB5FAF3DD915F0CC8D0
            D4C8D0D4C8D0D4C8D0D4555555F1F1F1B2B2B2D7D7D7B2B2B2C0C0C0CCCCCCC0
            C0C0B2B2B2D7D7D7B2B2B2D7D7D7EAEAEAEAEAEAE3E3E3E3E3E3E3E3E3DDDDDD
            DDDDDDD7D7D7EAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EFEBD9B7
            89EADBC5CEC091A3B59D6783A4A0B685C1BC94EBE1CBD9B789F6EDE2F1E9D8F4
            ECDAF5EDDBF5EDDBF6EEDCF5EDDBF5EDDBF1E5CAFCF5E2915F0CC8D0D4C8D0D4
            C8D0D4C8D0D4555555EAEAEAB2B2B2D7D7D7B2B2B2B2B2B2868686B2B2B2B2B2
            B2DDDDDDB2B2B2EAEAEAE3E3E3EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE3
            E3E3F1F1F1555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EEEBD9B78AEBDEC6
            DBB58299AFBF4775ABC5B397DFB582E9E2CD433C337D776EBBAD97E0C6A1E0C6
            A1E0C6A1E0C6A1E0C6A1E0C6A1EBDAB6FEF8E7915F0CC8D0D4C8D0D4C8D0D4C8
            D0D4555555EAEAEAB2B2B2DDDDDDB2B2B2B2B2B2808080B2B2B2B2B2B2DDDDDD
            393939777777B2B2B2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D7D7D7F1F1
            F1555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EFEDD9B889EEDFC6DAB583CF
            E3F08EBAE6737E83DDB884EEE5D082735C6F95BA59728885847EF5EDDBF5EDDB
            F6EEDCF5EDDBF5EDDBF0E3C9FEFAEA915F0CC8D0D4C8D0D4C8D0D4C8D0D45555
            55EAEAEAB2B2B2DDDDDDB2B2B2E3E3E3C0C0C0808080B2B2B2E3E3E366666699
            9999777777868686EAEAEAEAEAEAEAEAEAEAEAEAEAEAEADDDDDDF1F1F1555555
            C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9F0EED9B88AF1E2C6DAC49DA1ACB87086
            9B787976DBB886EDE4CCCCAC827491AC8EC8FF6896C66C8494C1B49DE0C6A1E0
            C6A1E0C6A1ECDCBAFFFAEC915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555F1F1F1
            B2B2B2DDDDDDC0C0C0B2B2B2868686808080B2B2B2E3E3E3A4A0A0969696CCCC
            CC999999868686B2B2B2C0C0C0C0C0C0C0C0C0D7D7D7F1F1F1555555C8D0D4C8
            D0D4C8D0D4C8D0D4915F0CFCF4F5D9B88AF5ECD6E6D6B5BFB8AAB8B1A1DED2B5
            E2D5B5EEE5CED9B88AB2ACA47EB0DD9BD1FF83BAF2346A8CCFCEC4F4ECDAF6EE
            DCF2E6CCFCF7E7915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555F1F1F1B2B2B2EA
            EAEAD7D7D7B2B2B2B2B2B2CCCCCCCCCCCCE3E3E3B2B2B2B2B2B2B2B2B2D7D7D7
            C0C0C0666666CCCCCCEAEAEAEAEAEAE3E3E3F1F1F1555555C8D0D4C8D0D4C8D0
            D4C8D0D4915F0CFFFDFFE6CFB6D9B88AD9B88AD9B88AD9B78AD9B889D9B88AD9
            B789DFC4A1F9F3EB7AA4C174B2DA90E2FE68D5F5346A8CD6D8D0FDF8E7FBF4DF
            FFFFFB915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFCCCCCCB2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2C0C0C0F1F1F1A4A0A0B2B2B2E3E3E3D7
            D7D7666666D7D7D7F1F1F1F1F1F1FFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4
            915F0CFFFFFFF6EDE8E8D4C1E6D0BBE5CDB7E4CCB4E5CDB6E5CEB7E7D2BBF5EC
            E2FFFCFAFCFCF74B89B261B0D78CEBFF7FDFF8346A8CD4D4C9FAF2DCFFFFFB91
            5F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFEAEAEAD7D7D7CCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCEAEAEAFFFFFFFFFFFF868686B2B2B2EAEAEADDDD
            DD666666D7D7D7EAEAEAFFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4B89B282CEEEAFF8FF89E2F5346A8CD6DBDAFFFFFF915F0CC8D0
            D4C8D0D4C8D0D4C8D0D4555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686CCCCCCF1F1F1E3E3E3
            666666DDDDDDFFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4A99064915F0C915F
            0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C91
            5F0C8F5E0C4B89B287D5F3BFFBF9A4B2B96785688C6E38A99064C8D0D4C8D0D4
            C8D0D4C8D0D48686865555555555555555555555555555555555555555555555
            55555555555555555555555555555555555555868686D7D7D7F1F1F1B2B2B280
            8080666666868686C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C4CBCF4B89B2A4B2B9447431809480ACADADB0BABEC8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4CCCCCC868686B2B2B2666666868686B2B2
            B2C0C0C0C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C2CBCF6785688FA58BEAE9EA9999D56264ADAAB1B5C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4CCCCCC808080999999EAEAEAA4A0A0777777
            B2B2B2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C4
            CBCFBFC3C3898AD96D6EDD494AAB969BC2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4CCCCCCC0C0C09999998686865F5F5FA4A0A0C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C4CC
            D06A6CB4595AB2888DBBC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4CCCCCC808080666666969696C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            A6ACCAC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4B2B2B2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
          NumGlyphs = 2
        end
        object btnExcluiHis: TRzBitBtn
          Left = 253
          Top = 4
          Width = 124
          Height = 31
          Caption = '&Excluir Hist'#243'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          ParentFont = False
          ParentShowHint = False
          TextHighlightColor = clBtnFace
          ShowHint = False
          TabOrder = 2
          OnClick = btnExcluiHisClick
          Glyph.Data = {
            0E100000424D0E100000000000003600000028000000340000001A0000000100
            180000000000D80F0000C40E0000C40E00000000000000000000C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A99064915F0C915F0C915F0C
            915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F
            0C915F0C915F0C915F0C915F0C915F0C915F0CA99064C8D0D4C8D0D4C8D0D4C8
            D0D4868686555555555555555555555555555555555555555555555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            55868686C8D0D4C8D0D4C8D0D4C8D0D4915F0CFFFFFFFFFFFCFFFFFAFFFEF9FF
            FDF7FFFCF5FEFBF3FEFAF2FDFAEFFDF9EEFCF8ECFBF7EAFBF6E8FAF6E6FAF4E4
            FAF4E2F9F3E1F9F2DFF8F0DCFFFDF3915F0CC8D0D4C8D0D4C8D0D4C8D0D45555
            55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1
            F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1EAEAEAEAEAEAFFFFFF555555
            C8D0D4C8D0D4C8D0D4C8D0D4915F0CFFFFFFF8F1E3F7F1E0F7EFDDF6EED9F5EC
            D5F4EAD1F2E8CEF1E6C9F0E4C6EFE2C2EDE0BEEDDDBAECDCB6EBDAB1EAD8ADE9
            D6AAE8D5A7E6D09FF8EDD1915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFF
            EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAE3E3E3E3E3E3E3E3E3DDDDDDDDDDDDDDDD
            DDD7D7D7D7D7D7D7D7D7D7D7D7CCCCCCCCCCCCC0C0C0EAEAEA555555C8D0D4C8
            D0D4C8D0D4C8D0D4915F0CFFFFFFFAF6EBF9F5EAF7F1E4F6EDDFF5EBDDF4EAD8
            F4EAD6F4EAD5F3E8D0F1E6CAEFE3C7EFE2C3EEDFBFEDDEBBECDDB8EBDAB4EAD9
            B1E8D5AAF9EFD7915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFF1F1F1F1
            F1F1EAEAEAEAEAEAEAEAEAE3E3E3E3E3E3E3E3E3E3E3E3E3E3E3DDDDDDDDDDDD
            DDDDDDDDDDDDD7D7D7D7D7D7D7D7D7CCCCCCEAEAEA555555C8D0D4C8D0D4C8D0
            D4C8D0D4915F0CFFFFFFEEDFCDD9B88AD9B889D9B788D9B688D9B788D8B889D9
            B88AEBD9C2F3E8CFF1E6C9F0E4C7EFE2C3EEE0BFEEDFBCECDDB8ECDBB4E9D7AD
            FAF1DA915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFDDDDDDB2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2D7D7D7E3E3E3E3E3E3DDDDDDDDDDDDDD
            DDDDDDDDDDD7D7D7D7D7D7CCCCCCEAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4
            915F0CFEFBFBDCBF98EBDBC4E8E2CFEBE7D4EEE8D7ECE8D7E6E2CFE0CDB2DBBD
            96EFE2CCF2E9CFF1E6CAF0E4C7EFE2C3EEE0C0EDDEBCECDDB8EAD9AFFAF2DB91
            5F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFC0C0C0D7D7D7DDDDDDE3E3E3
            E3E3E3E3E3E3DDDDDDCCCCCCB2B2B2DDDDDDE3E3E3E3E3E3DDDDDDDDDDDDDDDD
            DDDDDDDDD7D7D7D7D7D7EAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9
            F2EFD9B88AECD9C3B3BD8CB4CB9FC4D1ADAFCD9799A7818F8997CCAD83EBD9C1
            F7EFD9F6EED7F4EAD3F4E9CFF2E6CAF1E4C6F0E2C2ECDCB5FAF3DD915F0CC8D0
            D4C8D0D4C8D0D4C8D0D4555555F1F1F1B2B2B2D7D7D7B2B2B2C0C0C0CCCCCCC0
            C0C0999999868686A4A0A0D7D7D7EAEAEAEAEAEAE3E3E3E3E3E3E3E3E3DDDDDD
            DDDDDDD7D7D7EAEAEA555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EFEBD9B7
            89EADBC5CEC091A3B59D6783A49FB5845A62AE3F53DD5C5377EBDAC4EFE6D4E3
            D2B0E6D4B3E6D4B3EBDAB9E9D8B6E9D7B6E4D7BDEDE6D6915F0CC8D0D4C8D0D4
            C8D0D4C8D0D4555555EAEAEAB2B2B2D7D7D7B2B2B2B2B2B2868686B2B2B27777
            776666665F5F5FD7D7D7E3E3E3CCCCCCCCCCCCCCCCCCD7D7D7D7D7D7D7D7D7D7
            D7D7E3E3E3555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EEEBD9B78AEBDEC6
            DBB58299AFBF4775ABBDAC995162E4354CDC2433BFE2D3C0F1E7D8AC8541AC85
            41AC8541AC8541AC8541AC85417570A1E7E2D8915F0CC8D0D4C8D0D4C8D0D4C8
            D0D4555555EAEAEAB2B2B2DDDDDDB2B2B2B2B2B2808080B2B2B2808080666666
            555555D7D7D7E3E3E3808080808080808080808080808080808080808080E3E3
            E3555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9EFEDD9B889EEDFC6DAB583CF
            E3F08EBAE6717C84525FDC2F46D91A2FC9CBBDB7EFE6D7DECAAAE3D0B3E3D0B3
            EAD7BBE9D6B9C2B3AC4A4AA8FEFAEA915F0CC8D0D4C8D0D4C8D0D4C8D0D45555
            55EAEAEAB2B2B2DDDDDDB2B2B2E3E3E3C0C0C08080808080806666664D4D4DC0
            C0C0E3E3E3C0C0C0CCCCCCCCCCCCD7D7D7D7D7D7B2B2B25F5F5FF1F1F1555555
            C8D0D4C8D0D4C8D0D4C8D0D4915F0CF9F0EED9B88AF1E2C6DAC49DA1ACB87086
            9B787976827DBB2940D71831CF686691EFE6D7AC8541AC8541AC8541AC8541A7
            81412F35999A94B0FFFAEC915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555F1F1F1
            B2B2B2DDDDDDC0C0C0B2B2B28686868080808686865F5F5F555555666666E3E3
            E38080808080808080808080807777774D4D4D999999F1F1F1555555C8D0D4C8
            D0D4C8D0D4C8D0D4915F0CFCF4F5D9B88AF5ECD6E6D6B5BFB8AAB8B1A1DED2B5
            D7CBB74959D71831CF1A2EC0BAB7BAF2EADAF3ECDDF5ECDDF4ECDC7779AF2F3F
            C2F2EBE0FCF7E7915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555F1F1F1B2B2B2EA
            EAEAD7D7D7B2B2B2B2B2B2CCCCCCCCCCCC7777775555554D4D4DC0C0C0E3E3E3
            EAEAEAEAEAEAEAEAEA8686865F5F5FEAEAEAF1F1F1555555C8D0D4C8D0D4C8D0
            D4C8D0D4915F0CFFFDFFE6CFB6D9B88AD9B88AD9B88AD9B78AD9B889D9B88AB7
            A09A2F42CF142DCF323DACE3E3E6FFFFF8FFFEF39C9EBC1A31D4B2B2CBFBF4DF
            FFFFFB915F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFCCCCCCB2B2B2B2B2
            B2B2B2B2B2B2B2B2B2B2B2B2B2A4A0A05F5F5F4D4D4D555555E3E3E3FFFFFFFF
            FFFFA4A0A0555555B2B2B2F1F1F1FFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4
            915F0CFFFFFFF6EDE8E8D4C1E6D0BBE5CDB7E4CCB4E5CDB6E5CEB7E7D2BBBEBB
            DD2236D01730D05055A2EFEDE39E9EB61B32D45F68BDFCF5E1FAF2DCFFFFFB91
            5F0CC8D0D4C8D0D4C8D0D4C8D0D4555555FFFFFFEAEAEAD7D7D7CCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCC0C0C0555555555555666666EAEAEAA4A0A05555
            55808080F1F1F1EAEAEAFFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4915F0CFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7CBF2
            273BCD1B32CC3A44A9162ED3263AC7EBECF6FFFFFEFFFFFBFFFFFF915F0CC8D0
            D4C8D0D4C8D0D4C8D0D4555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFD7D7D75F5F5F5555555F5F5F4D4D4D555555EAEAEA
            FFFFFFFFFFFFFFFFFF555555C8D0D4C8D0D4C8D0D4C8D0D4A99064915F0C915F
            0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C915F0C6A4B3306
            1EC3031CC2041ABD6F4C24915F0C915F0C915F0C915F0CA99064C8D0D4C8D0D4
            C8D0D4C8D0D48686865555555555555555555555555555555555555555555555
            555555555555555555554D4D4D39393939393939393942424255555555555555
            5555555555868686C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C3CBD0767DA2152BC6021DD0041D
            C6021ABF424A8DBAC2C7C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            CCCCCC8686864D4D4D4242423939393939395F5F5FC0C0C0C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C7CFD39BA2B15C66B1475BE6253FE6132DDD8893CE707DD0
            0D26D335409EABB2BBC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4CCCCCCA4A0A077777777
            77776666665555559999998686864D4D4D555555B2B2B2C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4B4BCC47278A57F8BE57F8EEE6A7BEC4A5DDE9AA4CFC8D0D4C8D0D4A1AAD654
            64E34854B98D93A3C6CED2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C0C0C0868686999999A4A0A09696967777
            77B2B2B2C8D0D4C8D0D4B2B2B2808080666666969696CCCCCCC8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4969ED3
            6677E57C8BEA808FED808CDDB6BFD3C8D0D4C8D0D4C8D0D4C8D0D4C1CAD4959E
            DD717CDB646892B4BBC2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4B2B2B2868686999999A4A0A0999999C0C0C0C8D0D4
            C8D0D4C8D0D4C8D0D4CCCCCCB2B2B2868686777777C0C0C0C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C4CCD5A6B0E294
            9FE3ACB4DCC6CED3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BEC6D4
            979FD66A71B8A5ACBAC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4CCCCCCC0C0C0B2B2B2C0C0C0CCCCCCC8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4CCCCCCB2B2B2868686B2B2B2C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
          NumGlyphs = 2
        end
      end
      object DBGrid12: TDBGrid
        Tag = 1
        Left = 0
        Top = 38
        Width = 718
        Height = 120
        Align = alTop
        Ctl3D = True
        DataSource = dsHisto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnCellClick = DBGrid12CellClick
        OnDrawColumnCell = DBGrid8DrawColumnCell
        OnTitleClick = DBGrid12TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_GHI'
            Title.Caption = 'C'#243'digo'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTA_GHI'
            Title.Caption = 'Data'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESUMO'
            Title.Caption = 'Resumo'
            Width = 377
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN_INC_GHI'
            Title.Caption = 'Usu'#225'rio'
            Width = 81
            Visible = True
          end>
      end
      object DBMemo4: TDBMemo
        Tag = 1
        Left = 0
        Top = 158
        Width = 718
        Height = 262
        Align = alClient
        Ctl3D = True
        DataField = 'HISTORICO_GHI'
        DataSource = dsHisto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object tbCadAlter: TRzTabSheet [2]
      Caption = 'Altera'#231#245'es'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RzPanel13: TRzPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 28
        Align = alTop
        BorderInner = fsBump
        BorderOuter = fsNone
        TabOrder = 0
        object Label83: TLabel
          Left = 8
          Top = 8
          Width = 60
          Height = 13
          Caption = 'Cadastro :'
        end
        object DBText3: TDBText
          Left = 72
          Top = 6
          Width = 61
          Height = 16
          AutoSize = True
          DataField = 'COD_RRR_RHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      object DBGrid6: TDBGrid
        Tag = 1
        Left = 0
        Top = 28
        Width = 718
        Height = 267
        Align = alClient
        Ctl3D = True
        DataSource = dsHisAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsItalic]
        OnDrawColumnCell = DBGrid8DrawColumnCell
        OnTitleClick = DBGrid6TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CAMPO_RHA'
            Title.Caption = 'Campo Alterado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_ANT_RHA'
            Title.Caption = 'Valor Original'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_AUT_RHA'
            Title.Caption = 'Novo Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN_ALT_RHA'
            Title.Caption = 'Usu'#225'rio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTA_ALT_RHA'
            Title.Caption = 'Data e Hora'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = []
            Width = 170
            Visible = True
          end>
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 295
        Width = 718
        Height = 125
        Align = alBottom
        Ctl3D = True
        DataField = 'OBS_RHA'
        DataSource = dsHisAlt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object tbCadTransf: TRzTabSheet [3]
      Caption = 'Transfer'#234'ncias'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid8: TDBGrid
        Tag = 1
        Left = 0
        Top = 0
        Width = 718
        Height = 420
        Align = alClient
        Ctl3D = True
        DataSource = dsTransf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsItalic]
        OnDrawColumnCell = DBGrid8DrawColumnCell
        OnTitleClick = DBGrid8TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_RTP'
            Title.Caption = 'Nro. Transf.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEVELHO'
            Title.Caption = 'Antigo Propriet'#225'rio'
            Width = 395
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTA_TRANSF_RTP'
            Title.Caption = 'Dt. Transf.'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CNT'
            Title.Caption = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG_CNT'
            Title.Caption = 'RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOM_LOG_CNT'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_CNT'
            Title.Caption = 'Nro.'
            Visible = True
          end>
      end
    end
    inherited tbVis: TRzTabSheet
      ExplicitWidth = 718
      ExplicitHeight = 420
      inherited Panel2: TPanel
        Width = 718
        ExplicitWidth = 718
        inherited RzBackground2: TRzBackground
          Width = 718
          ExplicitWidth = 718
        end
      end
      inherited DBGrid1: TDBGrid
        Top = 145
        Width = 718
        Height = 275
        OnCellClick = DBGrid1CellClick
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_EMP_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_RRR'
            Title.Caption = 'Cadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MATRIC_RRR'
            Title.Caption = 'Inscri'#231#227'o'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTCAD_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_STR_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_CLASS_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_COB_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_CNT_RRR'
            Title.Caption = 'CodPropr.'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CNT'
            Title.Caption = 'Proprietario'
            Width = 380
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBAU_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_BCO_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_BANCO_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_AGEN_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_CONTA_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTDEBAU_INC_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTDEBAU_IXC_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PROPRIEDADE_RRR'
            Title.Caption = 'Propriedade'
            Width = 444
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONEP_RRR'
            Title.Caption = 'Fone'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESPONSA_RRR'
            Title.Caption = 'Responsavel'
            Width = 295
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSCRP_RRR'
            Title.Caption = 'Inscr. Produtor'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INCRA_RRR'
            Title.Caption = 'INCRA'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AREAH_RRR'
            Title.Caption = 'Alqueires'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AREAE_RRR'
            Title.Caption = 'Hequitares'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AREAM_RRR'
            Title.Caption = 'M'#178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISTANCIA_RRR'
            Title.Caption = 'Dist'#226'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PONTOS_RRR'
            Title.Caption = 'Pontos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VVENAL_RRR'
            Title.Caption = 'V.Venal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_LOG_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGRA_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COMPL_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OBSLOGRA_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_TIPE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPOLOGE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_TITE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TITULOLOGE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_LOGE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGRAE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_BAIE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BAIRROE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NUMEROE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CEPE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COMPLEE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_CIDE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UFE_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'HISTO_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_INC_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_INC_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_ALT_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_ALT_RRR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESCR_RCL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME_BCO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESCRI_COB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'RG_CNT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CNT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FONE_CNT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EMAIL_CNT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGRAPRO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TPLOGRENT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TTLOGRENT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGRAENT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BIRROENT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CIDENT'
            Visible = False
          end>
      end
      object msk3: TRzPanel
        Left = 0
        Top = 23
        Width = 718
        Height = 122
        Align = alTop
        BorderInner = fsBump
        BorderOuter = fsNone
        TabOrder = 2
        object Label55: TLabel
          Left = 7
          Top = 4
          Width = 52
          Height = 13
          Caption = 'Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 141
          Top = 4
          Width = 52
          Height = 13
          Caption = 'Inscri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 277
          Top = 4
          Width = 67
          Height = 13
          Caption = 'Propriet'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 7
          Top = 44
          Width = 69
          Height = 13
          Caption = 'Propriedade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label68: TLabel
          Left = 277
          Top = 44
          Width = 72
          Height = 13
          Caption = 'Respons'#225'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label80: TLabel
          Left = 7
          Top = 81
          Width = 55
          Height = 13
          Caption = 'Cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object btnCobranca: TSpeedButton
          Tag = 1
          Left = 67
          Top = 95
          Width = 23
          Height = 22
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000C40E0000C40E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C5C9CBC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B7BC366A9A3D576DC0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0B7B7B77373735B5B5BC0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0A8B2B7B3F0FF75A5CE3C5972C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2B2B2EEEEEEACACAC
            5D5D5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C090A7B5D7FFFF92B7D83E5A74C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0A8A8A8FBFBFBBDBDBD5F5F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C073
            8FA2DCFFFF8EB6D94A5F74C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0919191FBFBFBBCBCBC6363
            63C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C063859FD8FFFF76A8CD707179C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0898989FBFBFBAEAEAE737373C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05D88A2
            B3F1FF7693A6E6DED2FCFBF2FCFBF2E3C6B0AEA394A5A5A3C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08B8B8BEFEFEF959595DBDBDBF8
            F8F8F8F8F8C2C2C29F9F9FA4A4A4C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0858D97FFFFF4BC836FC28A76D8AD9EDDB2A5E3B2
            A2C9C3AD898887C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C08F8F8FFBFBFB828282898989ACACACB2B2B2B2B2B2BDBDBD878787C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CCBBACC79B80C798
            79DBB298D1A68DDFB9AAE5C5B9EAC1B1A6A28EB3AFAFC0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8979797939393AEAEAEA2A2A2B8B8B8
            C4C4C4C0C0C09C9C9CAFAFAFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C2B9B4CABDACCD9F75DEC199DCBD94D9B791CC9E7DD6AB99DCB0A4D8CCB78B
            756AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8B8B8B9B9B9979797
            B7B7B7B3B3B3AFAFAF989898A9A9A9B0B0B0C6C6C6737373C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C1B9B2BEA891E1BE8CE6D2A0E5D19BE4CC9DDD
            BE97D0A585D4A494CAB8A6836B59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0B7B7B7A3A3A3B2B2B2C5C5C5C2C2C2C0C0C0B5B5B59F9F9FA4A4A4B4B4
            B4686868C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8BFBBA59684E9
            D193EFE2B6F5EDC6ECDCABE3C99DD8B490D2A28CB1A395876F61C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BEBEBE929292C0C0C0D6D6D6E2E2E2CECE
            CEBEBEBEACACACA0A0A0A0A0A06D6D6DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C07E6B5CD1BE88FAFBDAFAFBFBF0E7BDE5CF9EE3BC98C19880
            877C65AC9A91C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06868
            68AFAFAFF1F1F1FAFAFADBDBDBC2C2C2B5B5B5949494767676999999C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BCB2AC685946C1AF84F8EABD
            F1DDA6E5C994B08C678B8173957F67C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0B1B1B1545454A3A3A3DDDDDDCECECEBBBBBB8484847D
            7D7D7A7A7AC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0B2A9A25D4C3B6653378A7452806C517C7365A89987C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A7A7A74848484C
            4C4C6C6C6C6565656F6F6F959595C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B8ADA39F9287B5A99ECBC2
            B8C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0ABABAB909090A6A6A6BFBFBFC0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
          NumGlyphs = 2
          ParentFont = False
          OnClick = btnCobrancaClick
        end
        object DBText2: TDBText
          Left = 95
          Top = 98
          Width = 178
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label81: TLabel
          Left = 277
          Top = 81
          Width = 53
          Height = 13
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 536
          Top = 44
          Width = 30
          Height = 13
          Caption = 'Incra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object msk1: TMaskEdit
          Tag = 1
          Left = 7
          Top = 20
          Width = 131
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = msk1Enter
          OnExit = msk1Exit
          OnKeyDown = DBEdit1KeyDown
          OnMouseDown = msk1MouseDown
        end
        object msk2: TMaskEdit
          Tag = 1
          Left = 140
          Top = 20
          Width = 133
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = DBEdit1KeyDown
        end
        object msk4: TMaskEdit
          Tag = 1
          Left = 276
          Top = 20
          Width = 72
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = DBEdit1KeyDown
        end
        object msk5: TMaskEdit
          Tag = 1
          Left = 350
          Top = 20
          Width = 266
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 3
          OnKeyDown = DBEdit1KeyDown
        end
        object msk6: TMaskEdit
          Tag = 1
          Left = 7
          Top = 59
          Width = 266
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = DBEdit1KeyDown
        end
        object msk7: TMaskEdit
          Tag = 1
          Left = 276
          Top = 59
          Width = 258
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 5
          OnKeyDown = DBEdit1KeyDown
        end
        object msk11: TMaskEdit
          Tag = 1
          Left = 7
          Top = 96
          Width = 58
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 7
          OnExit = msk11Exit
          OnKeyDown = DBEdit1KeyDown
        end
        object msk12: TMaskEdit
          Tag = 1
          Left = 276
          Top = 96
          Width = 340
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 8
          OnKeyDown = DBEdit1KeyDown
        end
        object btnPesquisa: TBitBtn
          Left = 619
          Top = 12
          Width = 95
          Height = 33
          Caption = '&Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            B60D0000424DB60D000000000000360000002800000030000000180000000100
            180000000000800D0000120B0000120B00000000000000000000C8D0D4C8D0D4
            C8D0D4B9C1C49CA3A6939A9DA4AAAEC2C9CDC8D0D4C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4D0D0D0D1D1D1D0D0D0C2C2C2A4A4A49B9B9BAAAAAAC9C9C9D0D0D0D0D0D0
            D2D2D2D1D1D1D0D0D0D0D0D0D0D0D0D1D1D1D1D1D1D0D0D0D0D0D0D0D0D0D0D0
            D0D0D0D0D1D1D1D0D0D0C8D0D4C8D0D4939BA14A5A722F466B2F476D414E618D
            9396C6CED2C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1D1D1D0D0D09C9C9C5E5E5E4F4F
            4F515151535353939393CFCFCFD0D0D0D0D0D0D1D1D1D0D0D0D0D0D0D0D0D0D0
            D0D0D0D0D0D0D0D0D1D1D1D0D0D0D1D1D1D1D1D1D0D0D0D1D1D1C8D0D486909A
            304D782D5289315B94386AA8305890404C5E9EA4A7C8D0D4C8D0D4C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4D0D0D09191915757576161616969697A7A7A666666505050A4A4A4D1D1D1
            D0D0D0D0D0D0D0D0D0D0D0D0D1D1D1D1D1D1D1D1D1D0D0D0D1D1D1D0D0D0D0D0
            D0D0D0D0D1D1D1D0D0D0A4ACB238568333609A386AA53D74B24383C63D72B226
            4372535B66ADB4B8C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4AEAEAE6161616E6E6E7878788383
            839494948282824F4F4F5C5C5CB5B5B5D0D0D0D1D1D1D1D1D1D0D0D0D1D1D1D0
            D0D0D1D1D1D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D1D1D1D0D0D0677A93386BA9
            3F79BA4481C4478ACF4D98E13F7BBC2A4D812B456D696F75B8BFC3C8D0D4C8D0
            D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D47F7F7F7B7B7B8888889292929B9B9BAAAAAA8B8B8B5A5A5A4F4F4F717171
            C0C0C0D0D0D0D0D0D0D1D1D1D1D1D1D0D0D0D1D1D1D0D0D0D1D1D1D0D0D0D0D0
            D0D0D0D0D0D0D0D0D0D0496F9E4688CE498ED64C93DE519DE953A3F03B70AE2E
            558A2A518734496A6A6D6E868B8DB7BEC2C8D0D4C8D0D4C8D0D4C6CED2C3CACE
            C3CACEC6CED2C8D0D4C8D0D4C8D0D4C8D0D47A7A7A9999999F9F9FA5A5A5AFAF
            AFB5B5B57F7F7F6363635F5F5F5151516E6E6E8B8B8BBEBEBED1D1D1D2D2D2D1
            D1D1CECECECACACACBCBCBCECECED0D0D0D1D1D1D0D0D0D2D2D24777B0519EEB
            509DE954A4F257AAFB498ED53768A334619A2F588F264B81707F978683808085
            87BFC6CAA4AAAE82868874777871737370747482878AB2B9BDC8D0D4C8D0D4C8
            D0D4848484AFAFAFAFAFAFB7B7B7BDBDBD9E9E9E7777777070706565655A5A5A
            848484838383858585C6C6C6AAAAAA878787777777747474747474878787B9B9
            B9D0D0D0D1D1D1D2D2D25578A555A7F758ABFB55A7F64D95DE407BBC3C72B139
            6BA835639D28528B3F6090BEC0C672716F7274758988889A97969C9998979492
            908D8B7774736F7374B9C1C4C8D0D4C8D0D4828282BBBBBBBEBEBEB9B9B9A6A6
            A68B8B8B8181817A7A7A7272726161616C6C6CC0C0C070707074747488888897
            97979999999494948D8D8D757575747474C1C1C1D1D1D1D0D0D099A6B64575AE
            54A6F5509CEA488BD14485CA427DBE3D75B2396CA82E5E9A375B8EC8CBD2A9A5
            A0B6B4B3B7B5B3ADABA9A4A2A09C9A9894919094918F6E6E6D8E9497C8D0D4C8
            D0D4AAAAAA838383B9B9B9AFAFAF9C9C9C9595958E8E8E8484847B7B7B6E6E6E
            686868CDCDCDA5A5A5B3B3B3B5B5B5AAAAAAA1A1A19A9A9A9191919090906E6E
            6E949494D0D0D0D0D0D0C8D0D49CA8B74770A552A0ED519FEB4A8ED64686CC41
            7DBF3F78B72960A15A78A1D5D4D4A7A39FB7B6B5B6B5B3ADABA9A5A3A29E9C9A
            979492928E8C898684686B6BB8BFC3C8D0D4D1D1D1AAAAAA7D7D7DB1B1B1B1B1
            B1A0A0A09696968C8C8C878787717171818181D4D4D4A3A3A3B5B5B5B5B5B5AA
            AAAAA2A2A29B9B9B9393938D8D8D8686866A6A6ABFBFBFD0D0D0C8D0D4C8D0D4
            ACB7C15073A04D9AE6529FEC4A8FD74889CE3F7FC52D5D99A6AEBDCDC9C5CECC
            CBAEADABBAB8B8B2AFAEACA9A7A4A3A19899998D909190908F706F6D8C9294C7
            CFD3D0D0D0D0D0D0B8B8B87D7D7DADADADB1B1B19F9F9F9A9A9A8F8F8F6C6C6C
            B2B2B2C8C8C8CBCBCBADADADB8B8B8B0B0B0A8A8A8A2A2A29A9A9A8F8F8F9090
            906E6E6E929292D0D0D0C8D0D4C8D0D4C8D0D4B3BDC55471994994DF50A2F144
            8DD93064A3818EA4BDB9B4CDCDCBE5E5E5B1AFAEC0BEBEB3B3B2A09FA0989291
            9E8D87A3897D9B898485868566696AB6BDC1D1D1D1D1D1D1D0D0D0BDBDBD7A7A
            7AA7A7A7B5B5B59F9F9F747474939393B8B8B8CCCCCCE6E6E6B0B0B0BEBEBEB3
            B3B39F9F9F9292928D8D8D898989898989858585696969BEBEBEC8D0D4C8D0D4
            C8D0D4C8D0D4A5A7A94C65893D6FA94A6B95888F9BB1ACA8AEABA9DEDDDDC2C1
            C0B6B6B7B1B0B2A8A299C3B69EE5D6B2FAE9BFFEE6BDFAC4A0D3B2A77578799A
            A0A3D1D1D1D0D0D0D0D0D0D0D0D0A7A7A76E6E6E7D7D7D757575929292ABABAB
            ACACACDDDDDDC1C1C1B7B7B7B1B1B1A1A1A1B2B2B2D0D0D0E2E2E2DFDFDFC0C0
            C0B2B2B2787878A0A0A0C8D0D4C8D0D4C8D0D4C8D0D4C0C7C99999977E797990
            8B879C97929F9D9BBFBEBDBAB9B9A2A3A5AFABA5C9BB9FF4E2B4FFF5C4FFF4C7
            FFF3C7FFF8CEFFF6C9FFD5B6A6A09F91979BD0D0D0D1D1D1D0D0D0D0D0D0C7C7
            C79898987979798A8A8A9696969C9C9CBEBEBEBABABAA3A3A3ABABABB6B6B6DA
            DADAEDEDEDECECECEBEBEBF0F0F0EDEDEDD2D2D2A0A0A0979797C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4B4B9BBBBB9B6B5B3B0807C7B93908EA2A1A1989A9CB4A6
            96E8CEA1FFE6B1FFE7B5FFE4B4FFE5B6FFE7B9FFEABCFFEBBCFFDCBAB6ABAA95
            9C9FD0D0D0D1D1D1D1D1D1D0D0D0D1D1D1B9B9B9B9B9B9B2B2B27C7C7C909090
            A0A0A09A9A9AA3A3A3C7C7C7DDDDDDDFDFDFDCDCDCDDDDDDE0E0E0E3E3E3E3E3
            E3D7D7D7ACACAC9C9C9CC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A4A8A9E3E2E2FC
            FCFCD4D3D1C6C7C5B6B7B9BEA792F8CF9BFFD9A4FFD7A5FFD8A6FFDCAAFFDFAC
            FFE0AEFFE4B3FFE4B9FFD6BEA0A1A0A5ACAFD0D0D0D0D0D0D1D1D1D0D0D0D1D1
            D1A8A8A8E3E3E3FCFCFCD2D2D2C6C6C6B8B8B8A5A5A5C8C8C8D1D1D1D1D1D1D1
            D1D1D5D5D5D7D7D7D8D8D8DBDBDBDDDDDDD4D4D4A1A1A1ADADADC8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4ABAEAEE1E0DFF7F7F6FFFFFFE0E4E6C0A38FF8C391FFCC
            9AFECB9AFECE9BFECF9CFFD29EFFD6A2FFDCADFFEBC6FFD6B4EDCCC0818688C4
            CCD0D0D0D0D1D1D1D0D0D0D1D1D1D0D0D0AFAFAFE0E0E0F7F7F7FFFFFFE3E3E3
            A2A2A2BCBCBCC7C7C7C5C5C5C8C8C8C8C8C8CCCCCCCFCFCFD5D5D5E5E5E5D2D2
            D2CBCBCB868686CCCCCCC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4ACB0B2CECDCBF4
            F2F2EDF2F4BCA397F1AE7FFFC191FDC094FEC597FEC99DFECFA5FED5AEFFDDBB
            FFEACFFFDDBFFDC9B39C9B9BA8AFB2C8D0D4D1D1D1D1D1D1D0D0D0D0D0D0D0D0
            D0AFAFAFCDCDCDF2F2F2F2F2F2A1A1A1AAAAAABCBCBCBCBCBCC1C1C1C4C4C4C9
            C9C9D0D0D0D8D8D8E6E6E6D9D9D9C9C9C99B9B9BAFAFAFD0D0D0C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C1C8CCAAA9A9EEEFF0C6BDBADE9874FFC298FDC7A5FDCD
            AEFDD2B5FED8BCFEDCC2FEDFC8FEE8D3FFDEC4FCBFA5B3A7A593999CC8D0D4C8
            D0D4D0D0D0D0D0D0D0D0D0D1D1D1D0D0D0C9C9C9A9A9A9EFEFEFBCBCBC979797
            BEBEBEC4C4C4CACACACFCFCFD5D5D5D9D9D9DCDCDCE5E5E5DBDBDBBEBEBEA7A7
            A79A9A9AD0D0D0D0D0D0C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4ABAFB0C3
            C8CAC39D90F9B291FDCDB5FDCFB7FDD3BDFDD7C2FDDBC5FDDECBFFE5D2FFD7BF
            F5BAA1B1A4A08F9598C8D0D4C8D0D4C8D0D4D0D0D0D0D0D0D1D1D1D0D0D0D0D0
            D0D1D1D1B0B0B0C8C8C89D9D9DB2B2B2CBCBCBCDCDCDD1D1D1D5D5D5D9D9D9DC
            DCDCE3E3E3D5D5D5B8B8B8A5A5A5969696D1D1D1D0D0D0D0D0D0C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C1C7CB999D9FBA9386FFC2A9FED4C2FDD3C2FDD9
            C6FEDDCCFFE1D1FFDFCDFEC8B0E6B09D9D979593999CC8D0D4C8D0D4C8D0D4C8
            D0D4D1D1D1D2D2D2D1D1D1D1D1D1D1D1D1D0D0D0C7C7C79D9D9D939393C1C1C1
            D3D3D3D2D2D2D7D7D7DCDCDCDFDFDFDDDDDDC7C7C7B0B0B0979797999999D0D0
            D0D1D1D1D0D0D0D0D0D0C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A7
            ACAE92837DEBA78FFFD0BAFFD9C7FFD9C8FFD4C0FCC4AEEBB09BBA9A8F8B8F90
            AAB1B5C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D1D1D1D0D0D0D1D1D1D0D0D0D2D2
            D2D0D0D0D1D1D1ACACAC838383A7A7A7CFCFCFD7D7D7D8D8D8D3D3D3C3C3C3B0
            B0B09B9B9B8F8F8FB2B2B2D1D1D1D0D0D0D0D0D0D0D0D0D0D0D0C8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C4CBCE91959596847DC69582D9A38ED6A1
            8EC89B8CB2968C8A8786A0A8ABC1C9CDC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4D0D0D0D1D1D1D0D0D0D0D0D0D1D1D1D0D0D0D1D1D1CBCBCB949494848484
            969696A3A3A3A1A1A19B9B9B969696878787A8A8A8C9C9C9D0D0D0D1D1D1D1D1
            D1D0D0D0D1D1D1D0D0D0C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
            D0D4C0C7CA9FA4A58D8E8F8E8C8C929292979B9CA2A9ACC0C7CBC8D0D4C8D0D4
            C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4D0D0D0D0D0D0D0D0D0D0D0D0D0D0
            D0D0D0D0D0D0D0D0D0D0C7C7C7A3A3A38E8E8E8D8D8D9292929C9C9CA9A9A9C7
            C7C7D0D0D0D1D1D1D0D0D0D0D0D0D0D0D0D1D1D1D0D0D0D0D0D0}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 9
          OnClick = btnPesquisaClick
        end
        object btnPesqAvancada: TBitBtn
          Left = 619
          Top = 51
          Width = 95
          Height = 33
          Caption = '&Avan'#231'ada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            36120000424D3612000000000000360000002800000030000000180000000100
            20000000000000120000120B0000120B00000000000000000000C8D0D400C8D0
            D400C8D0D400C8D0D400D5D3D200BCB2AD00B4A8A100C6C0BC00C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400B2B2B200A7A7A700BFBFBF00D0D0D000C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400D0CAC8007873700068666A005E5F7700716B7700A89B9A00C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400CACACA007272720067676700656565006E6E6E009C9C9C00C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400B2A6A200615C59007B879800637CB6007A7A9C0080686D009A95
            9600C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400A6A6A6005C5C5C008A8A8A008B8B8B00838383006A6A6A009595
            9500C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400BCB7B3004D606C0065ACE00046A6F7003D77C4008177A5007F67
            6C009B929100C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C9D1D400C8D0D400C8D0
            D400C8D0D400B5B5B50062626200B7B7B700B9B9B9008A8A8A00848484006A6A
            6A0093939300C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D4009B8F8A006F8091006DBBED0050A1F1004976BD007A7C
            A300746572009E929200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D4009090900083838300C5C5C500B4B4B400888888008686
            86006A6A6A0092929200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C0B0
            A900A9837300A26D59009D634C0079412D004F71880067BCFB0040A1F5004F74
            C100897D9C007D676B0099979700C8D0D400C8D0D400C8D0D400CAD1D500C9D1
            D500C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400B0B0
            B000828282006D6D6D00636363004343430075757500C9C9C900B5B5B5008888
            8800878787006969690096969600C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400D39F8500973A
            1900C6421B00D0492C00E1563D00EB5C4A00C9534500837D880062BCFB0041A1
            F1003A75C4007B78A500735F5F00B6ACAB00C9C8C800AFA3A400A3959500A89A
            9A00B7AEB000C8D0D400C9D1D500C8D0D400C8D0D400C8D0D4009D9D9D004040
            40004E4E4E005656560062626200696969005E5E5E0080808000C9C9C900B4B4
            B4008B8B8B008484840060606000ACACAC00C8C8C800A4A4A400959595009C9C
            9C00B0B0B000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400BB705300AE40
            2100E9543400F4624B00FD6E5700FF766000FA785C0090523F0062828F006CBF
            F40068AAE8007283AE006E5F61006D534C0081695E0085715F0097887400A294
            80008D7F72007C6F6800AC9F9D00C8D0D400C8D0D400C8D0D400717171004949
            4900626262006E6E6E007979790080808000808080005454540083838300C9C9
            C900B8B8B8008C8C8C006060600053535300686868006F6F6F00858585009191
            91007D7D7D006E6E6E00A0A0A000C8D0D400C8D0D400C8D0D400CF836700B543
            2900FB614A00FE6D5B00FD796500FF8A6D00E9714B00DD7A4E00C4AC86004D7E
            9B0073A5C7007996B4008E818300B1877700DFB59C00F4E5BE00FCF7CE00FFFD
            D500E7E4D300D2BAAC00846866008D888800C8D0D400C8D0D400848484004D4D
            4D007070700079797900838383008F8F8F00777777007C7C7C00A7A7A7008383
            8300ACACAC009C9C9C008282820086868600B3B3B300DDDDDD00EFEFEF00F5F5
            F500E1E1E100B8B8B8006969690088888800C8D0D400C8D0D400D4B7A600A546
            2F00FF684D00FE7A6300FF8A7000F2866100CB6D3800FDC99000FEDAA600C37C
            5600995F4F009E737100CAA08C00F4D9B300FFFCCC00FFFFD100FFFFD900F8F9
            E000FFFFED00FFFFFD00DDD5D4007C656200A49A9700C8D0D400B6B6B6004C4C
            4C007474740083838300909090008A8A8A006D6D6D00C1C1C100D2D2D2007B7B
            7B006060600076767600A0A0A000D3D3D300F3F3F300F6F6F600F7F7F700F3F3
            F300FBFBFB00FFFFFF00D5D5D500666666009A9A9A00C8D0D400C8D0D400AF78
            6700C5503100FF856700FE8C6C00CA644100DE9E8600FBD2B600FFD1AC00F39C
            6C009C523800AA7B6F00ECD1AE00FFF4C500FBF1BE00FDFECD00FEFEDB00FFFF
            E900FFFFF400FFFFFC00FFFFFF00CFBDAF006E625B00D1D0D100C8D0D4007979
            7900575757008C8C8C0090909000696969009D9D9D00CFCFCF00CCCCCC009A9A
            9A00555555007C7C7C00CBCBCB00EBEBEB00E7E7E700F5F5F500F6F6F600FAFA
            FA00FDFDFD00FEFEFE00FFFFFF00BBBBBB0061616100C8D0D400C8D0D400C8D0
            D400C07A5C00D1613D00CA5D3C00AA543E00815D6E007F5C6800BD877E00D784
            5F00984D3300D1A89600FDF6C700F9E9B500FCECB800FFFFD000FCFCDD00FFFF
            ED00FFFFFA00FEFFF800FFFFF300EBE8D9007C6F6300A29DA000C8D0D400C8D0
            D4007A7A7A006666660063636300595959006363630062626200898989008585
            850050505000A7A7A700EDEDED00E0E0E000E2E2E200F5F5F500F6F6F600FBFB
            FB00FEFEFE00FEFEFE00FCFCFC00E5E5E5006D6D6D009E9E9E00C8D0D400C8D0
            D4009E9896005235290027100E0015123C00071B7900061C7E00101875003D22
            4C007D4E4F00ECC8AA00FFF7C400F6DDA900FEE9B500FFFDCC00FDFEDA00ECEF
            E000FFFEED00FFFFE900F8F9DF00FCFCDD0098897A008C808300C8D0D400C8D0
            D4009797970034343400121212002121210040404000424242003D3D3D003030
            300053535300C4C4C400EDEDED00D4D4D400E0E0E000F3F3F300F7F7F700EBEB
            EB00FAFAFA00FAFAFA00F3F3F300F6F6F6008787870082828200C8D0D4006464
            64000A0B0B000600010000011D00021B640012399F00123AA40014369F001823
            6B00664A5C00F3D0B000FFF4C200F3DBA900FFE6B400FFF8C400FEFFD300FEFE
            DB00F8F8DF00FCFCDD00FEFEDA00FFFFD7009F8F7D0085797D00C8D0D4006464
            64000B0B0B00010101000A0A0A00353535005B5B5B005F5F5F005A5A5A003B3B
            3B0051515100CCCCCC00EAEAEA00D3D3D300DEDEDE00EFEFEF00F7F7F700F6F6
            F600F3F3F300F5F5F500F7F7F700F7F7F7008C8C8C007A7A7A00777777000000
            00000B0B0B000C0F14001A316B001E4FB7001A4EB5001A4EB4001B4DB500143F
            9D004E466800E3C2A400FFFECE00FCEBBC00FADEB100FAEAB600FEF9C500FEFC
            CF00FEFED300FDFCD000FFFED300FFFACC008B796600978D9200777777000000
            00000B0B0B000F0F0F0043434300707070006F6F6F006E6E6E006F6F6F005E5E
            5E004F4F4F00BEBEBE00F4F4F400E3E3E300D7D7D700E1E1E100EEEEEE00F2F2
            F200F5F5F500F4F4F400F6F6F600F1F1F100777777008F8F8F001D1D1D001313
            1200181717000E1733002856A5001F5DC6001F60C5002061C700215EC6001757
            BF00393F7700B3918700F1F1DC00FEFAE700EDE3D600FDDDB000FEE6B500FDEC
            BA00FCECB900FCF0BB00FFFFCF00F1D5B20079645B00B7B6B9001C1C1C001313
            1300181818001F1F1F006D6D6D007D7D7D007F7F7F007F7F7F007C7C7C007878
            78005050500092929200ECECEC00F6F6F600E1E1E100D7D7D700DEDEDE00E4E4
            E400E3E3E300E6E6E600F5F5F500D0D0D00063636300B6B6B600090909002323
            2200211F1F00142139003168B800236FD9002373D7002473D9002571D800236F
            D700294D96005E546400DACBBA00FFFFFC00FFFFF800FCEAC500F6DEAD00F1D9
            A600F5E3AF00FFF6C300FFEEC700AA8B7B0080757200D6DBDE00090909002323
            23001F1F1F00272727007E7E7E008E8E8E008F8F8F00909090008E8E8E008D8D
            8D006262620057575700C9C9C900FFFFFF00FEFEFE00E3E3E300D6D6D600D1D1
            D100DADADA00EDEDED00E7E7E7008989890075757500DBDBDB000F0F0F002C2C
            2C002F2E2D00162636002A64AF00328AF4002F8BF000328EF2002E88ED002A82
            EA002565BD0031436A008A6F6600D7C9BF00FDF9F100F3F5E000FFF6C800FFF2
            C000FFFAC900F9E4B900C39B800078636200C7C5C600C8D0D400101010002C2C
            2C002E2E2E002929290078787800A6A6A600A6A6A600A8A8A800A3A3A3009E9E
            9E007E7E7E004D4D4D006F6F6F00C8C8C800F7F7F700F0F0F000EDEDED00E9E9
            E900F1F1F100DDDDDD009999990064646400C5C5C500C8D0D4001F1F1F003333
            330040403F002D2C2800214375003790F900349AFF00379DFF00379EFF00329F
            FF002578D20051749E00959593008F736E00AE8F8500D0B19B00E4C3A900EAC8
            AD00D4B39D00A2877F007E747300C0C1BE00C8D0D400C8D0D4001F1F1F003333
            3300404040002C2C2C0050505000ADADAD00B4B4B400B6B6B600B6B6B600B7B7
            B700909090007D7D7D00959595007474740090909000B0B0B000C0C0C000C6C6
            C600B2B2B2008787870074747400C1C1C100C8D0D400C8D0D4005A5A5A002425
            25004A4B4B004A494600242E4300082F62000E407A002862B0003F80D800498F
            DC001E5085008291A500C8D0D400DACDCB00A898930094857B009D8C8200AA98
            8D00A2928A00B5A8A700C8D0D400C8D0D400C8D0D400C8D0D400595959002424
            24004B4B4B0048484800333333003E3E3E00505050007878780098989800A3A3
            A3005E5E5E0095959500C8D0D400C8D0D40098989800838383008A8A8A009696
            960091919100AAAAAA00C8D0D400C8D0D400C8D0D400C8D0D400B7B7B7002526
            26003F4141005555550065636000746E6600605F6100262854001A1C5C00191C
            4C0010122100BAB8B300C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400B7B7B7002727
            27004141410055555500626262006C6C6C006060600035353500333333002C2C
            2C0017171700B7B7B700C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400CAD1D5007979
            790023232300595959007C7D7D0092949400ADADAE009B9A9D00656367001D1B
            1D004F4E4F00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4007979
            790023232300595959007D7D7D0093939300ADADAD009B9B9B00646464001C1C
            1C004F4F4F00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400767676002F2F2F0056565600838383008282820069696800313130004B4B
            4A00CCCCCB00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400767676002E2E2E0057575700838383008282820068686800303030004A4A
            4A00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400AFB0B0006B696900504E4E00454545005454540086868600C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400B0B0B000696969004D4D4D00444444005353530086868600C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 10
          OnClick = btnPesqAvancadaClick
        end
        object mkIncra: TMaskEdit
          Tag = 1
          Left = 536
          Top = 59
          Width = 80
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 6
          OnKeyDown = DBEdit1KeyDown
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 720
    ExplicitWidth = 720
    inherited BtnNovo: TRzBitBtn
      OnClick = BtnNovoClick
    end
    inherited BtnAlterar: TRzBitBtn
      OnClick = BtnAlterarClick
    end
    inherited BtnExcluir: TRzBitBtn
      OnClick = BtnExcluirClick
    end
    inherited BtnImprimir: TRzBitBtn
      OnClick = BtnImprimirClick
    end
    object BtnFuncoes: TRzBitBtn
      AlignWithMargins = True
      Left = 430
      Top = 4
      Width = 100
      Height = 31
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Fun'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HighlightColor = 16026986
      HotTrack = True
      HotTrackColor = 3983359
      ParentFont = False
      ParentShowHint = False
      TextHighlightColor = clBtnFace
      ShowHint = False
      TabOrder = 4
      OnClick = BtnFuncoesClick
      Glyph.Data = {
        56150000424D56150000000000003600000028000000340000001A0000000100
        20000000000020150000C30E0000C30E00000000000000000000C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400AA926500915F0C00915F0C00915F
        0C00915F0C00915F0C00915F0C00915F0C00915F0C00915F0C00915F0C00915F
        0C00915F0C00915F0C00915F0C00915F0C00915F0C00915F0C00915F0C00915F
        0C00915F0C00AA926500C8D0D400C8D0D400C8D0D400C8D0D4008B8E90005959
        59005A5A5A005A5A5A0059595900585858005A5A5A005A5A5A00595959005858
        5800595959005959590059595900585858005A5A5A0059595900595959005A5A
        5A005959590059595900585858008B8E9000C8D0D400C8D0D400C8D0D400C8D0
        D400915F0C00FFFFFF00FFFFFC00FFFFFA00FFFEF900FFFDF700FFFCF500FEFB
        F300FEFAF200FDFAEF00FDF9EE00FCF8EC00FBF7EA00FBF6E800FAF6E600FAF4
        E400FAF4E200F9F3E100F9F2DF00F8F0DC00FFFDF300915F0C00C8D0D400C8D0
        D400C8D0D400C8D0D4005A5A5A00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FCFC
        FC00FAFAFA00FAFAFA00F8F8F800F8F8F800F7F7F700F5F5F500F4F4F400F3F3
        F300F2F2F200F1F1F100F1F1F100EFEFEF00EEEEEE00ECECEC00FAFAFA005959
        5900C8D0D400C8D0D400C8D0D400C8D0D400915F0C00FFFFFF00F8F1E300F7F1
        E000F7EFDD00F6EED900F5ECD500F4EAD100F2E8CE00F1E6C900F0E4C600EFE2
        C200EDE0BE00EDDDBA00ECDCB600EBDAB100EAD8AD00E9D6AA00E8D5A700E6D0
        9F00F8EDD100915F0C00C8D0D400C8D0D400C8D0D400C8D0D40059595900FFFF
        FF00EFEFEF00EDEDED00EBEBEB00EBEBEB00E8E8E800E6E6E600E4E4E400E0E0
        E000DEDEDE00DCDCDC00DADADA00D7D7D700D5D5D500D3D3D300D1D1D100CFCF
        CF00CECECE00C8C8C800E8E8E80059595900C8D0D400C8D0D400C8D0D400C8D0
        D400915F0C00FFFFFF00FAF6EB00F9F5EA00F7F1E400F6EDDF00F5EBDD00F4EA
        D800F4EAD600F4EAD500F3E8D000F1E6CA00EFE3C700EFE2C300EEDFBF00EDDE
        BB00ECDDB800EBDAB400EAD9B100E8D5AA00F9EFD700915F0C00C8D0D400C8D0
        D400C8D0D400C8D0D40059595900FFFFFF00F3F3F300F4F4F400EFEFEF00EBEB
        EB00E9E9E900E7E7E700E6E6E600E7E7E700E3E3E300E1E1E100DEDEDE00DCDC
        DC00D9D9D900D7D7D700D6D6D600D3D3D300D3D3D300CECECE00EBEBEB005959
        5900C8D0D400C8D0D400C8D0D400C8D0D400915F0C00FFFFFF00EEDFCD00D9B8
        8A00D9B88900D9B78800CDAD8400CBAE8500D8B88900D9B88A00EBD9C200F3E8
        CF00F1E6C900F0E4C700EFE2C300D3C8AF00BFB8A700E7D9B500ECDBB400E9D7
        AD00FAF1DA00915F0C00C8D0D400C8D0D400C8D0D400C8D0D40059595900FFFF
        FF00DCDCDC00B2B2B200B2B2B200B1B1B100A7A7A700A8A8A800B2B2B200B2B2
        B200D5D5D500E4E4E400E0E0E000DFDFDF00DCDCDC00C3C3C300B5B5B500D2D2
        D200D5D5D500D0D0D000EDEDED0059595900C8D0D400C8D0D400C8D0D400C8D0
        D400915F0C00FEFBFB00DCBF9800EBDBC400E8E2CF00E6E2D100A0A19E008F8E
        8C00C6C3B300E0CDB200DBBD9600EFE2CC00F2E9CF00F1E6CA00857F72007A7A
        7A00CBCBCB00ABA08800ECDDB800EAD9AF00FAF2DB00915F0C00C8D0D400C8D0
        D400C8D0D400C8D0D40058585800FBFBFB00BABABA00D7D7D700DEDEDE00DFDF
        DF009F9F9F008E8E8E00C1C1C100C8C8C800B8B8B800DEDEDE00E4E4E400E1E1
        E1007D7D7D0079797900CBCBCB009B9B9B00D6D6D600D2D2D200EDEDED005A5A
        5A00C8D0D400C8D0D400C8D0D400C8D0D400915F0C00F9F2EF00D9B88A00ECD9
        C300B3BD8C00B4CA9F00797B7500FFFFFF007F807B00E2D7C800D9B88A00EBD9
        C100F7EFD900D3CCB90078787800CECECE009C948400F1E4C600F0E2C200ECDC
        B500FAF3DD00915F0C00C8D0D400C8D0D400C8D0D400C8D0D40059595900F1F1
        F100B2B2B200D6D6D600B4B4B400C1C1C1007A7A7A00FFFFFF007F7F7F00D4D4
        D400B1B1B100D5D5D500EBEBEB00C9C9C90077777700CECECE0091919100DFDF
        DF00DDDDDD00D5D5D500EFEFEF005A5A5A00C8D0D400C8D0D400C8D0D400C8D0
        D400915F0C00F9EFEB00D9B78900EADBC500CEC09100A3B59D006580A0007175
        6800E0E0E000827E7600D9B78900ECDBC500EFE6D40093897500A4A4A400C3C3
        C300C3B59900E9D8B600CDBDA00074706900FAF3E100915F0C00C8D0D400C8D0
        D400C8D0D400C8D0D40059595900EEEEEE00B1B1B100D7D7D700B8B8B800AEAE
        AE008787870071717100E1E1E1007D7D7D00B1B1B100D7D7D700E2E2E2008686
        8600A4A4A400C4C4C400B0B0B000D2D2D200B9B9B9006E6E6E00F0F0F0005858
        5800C8D0D400C8D0D400C8D0D400C8D0D400915F0C00F9EEEB00D9B78A00EBDE
        C600DBB5820099AFBF004775AB00C5B39700957B5B00E8E8E8007B6E5C00EDDD
        C700F1E7D8006F583000BDBDBD00CDCDCD008E8A840069563400A2A19D00DDDD
        DD00F6F0E100915F0C00C8D0D400C8D0D400C8D0D400C8D0D40058585800EEEE
        EE00B1B1B100D9D9D900ADADAD00B2B2B20082828200AFAFAF0077777700E8E8
        E8006B6B6B00D9D9D900E5E5E50052525200BCBCBC00CDCDCD00898989005151
        5100A0A0A000DDDDDD00ECECEC005A5A5A00C8D0D400C8D0D400C8D0D400C8D0
        D400915F0C00F9EFED00D9B88900EEDFC600DAB58300CFE3F0008EBAE600737E
        8300DDB884009F998C00E8E8E800847E7700BEB7AB009D9D9D0094949400D0D0
        D000E2E2E200F7F7F700FFFFFF007B777100FEFAEA00915F0C00C8D0D400C8D0
        D400C8D0D400C8D0D40059595900F0F0F000B1B1B100DBDBDB00AFAFAF00E5E5
        E500C2C2C2007E7E7E00B1B1B10097979700E9E9E9007D7D7D00B5B5B5009E9E
        9E0093939300D0D0D000E2E2E200F8F8F800FFFFFF0076767600F7F7F7005959
        5900C8D0D400C8D0D400C8D0D400C8D0D400915F0C00F9F0EE00D9B88A00F1E2
        C600DAC49D00A1ACB80070869B0078797600DBB88600EDE4CC00937D6100DEDE
        DE0065656500A2A2A20077777500EFEEED00C0C0C000C4C4C4006F624C00EBDD
        C400FFFAEC00915F0C00C8D0D400C8D0D400C8D0D400C8D0D4005A5A5A00EFEF
        EF00B2B2B200DDDDDD00BEBEBE00AFAFAF008A8A8A0078787800B1B1B100E0E0
        E00078787800DEDEDE0066666600A2A2A20077777700EEEEEE00C0C0C000C4C4
        C4005F5F5F00D8D8D800F8F8F8005A5A5A00C8D0D400C8D0D400C8D0D400C8D0
        D400915F0C00FCF4F500D9B88A00F5ECD600E6D6B500BFB8AA00B8B1A100DED2
        B500E2D5B500EEE5CE00AD936F0079797900D1D1D0006C696500898E98008885
        8100F4ECDC00F4ECDB00F6EFDF00F8F1E300FCF7E700915F0C00C8D0D400C8D0
        D400C8D0D400C8D0D40059595900F4F4F400B2B2B200E7E7E700D1D1D100B6B6
        B600AEAEAE00CECECE00D1D1D100E1E1E1008F8F8F0079797900D2D2D2006969
        69009090900084848400EAEAEA00E9E9E900ECECEC00EFEFEF00F3F3F3005959
        5900C8D0D400C8D0D400C8D0D400C8D0D400915F0C00FFFDFF00E6CFB600D9B8
        8A00D9B88A00D9B88A00D9B78A009F886700776C5C00776B5B0095959500C0C0
        C000A1A09D009BA3B6000056CC001B6ACB00F0EEE200FEFBEC00FDF8E700FBF4
        DF00FFFFFB00915F0C00C8D0D400C8D0D400C8D0D400C8D0D40059595900FDFD
        FD00CCCCCC00B2B2B200B1B1B100B2B2B200B0B0B000838383006A6A6A006969
        690095959500C0C0C000A0A0A000A6A6A6007C7C7C0085858500ECECEC00F8F8
        F800F5F5F500F0F0F000FEFEFE0058585800C8D0D400C8D0D400C8D0D400C8D0
        D400915F0C00FFFFFF00F6EDE800E8D4C100E6D0BB00E5CDB7007E7368007F7F
        7F00A2A2A200BEBEBE00A3A3A30068686700F5F3F300005AD10050BBFA001B89
        F3001967C900EDE8D800FCF5E100FAF2DC00FFFFFB00915F0C00C8D0D400C8D0
        D400C8D0D400C8D0D40059595900FFFFFF00EDEDED00D2D2D200CDCDCD00CBCB
        CB00717171007F7F7F00A2A2A200BDBDBD00A2A2A20067676700F3F3F3008080
        8000C8C8C800A5A5A50083838300E6E6E600F1F1F100EDEDED00FEFEFE005858
        5800C8D0D400C8D0D400C8D0D400C8D0D400915F0C00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00F8F8F8006E6E6E00C1C1C100AAAAAA00D8D8D800D0D0D000E6E6
        E60092918E004972B300108AF8004FB6F5001B89F3001968CB00F0F0EF00FFFF
        FB00FFFFFF00915F0C00C8D0D400C8D0D400C8D0D400C8D0D40059595900FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F8F8F8006E6E6E00C2C2C200AAAAAA00D8D8
        D800D0D0D000E5E5E5009090900082828200A8A8A800C3C3C300A6A6A6008484
        8400F1F1F100FFFFFF00FFFFFF0059595900C8D0D400C8D0D400C8D0D400C8D0
        D400AA926500915F0C00915F0C00915F0C00915F0C00966A21007E7E7E006848
        1200915F0C005C441B00EDEDED00EBEBEB0069460C00915F0C0026457200108A
        F8004FB6F5001B89F300105BB90088590B00915F0C00AA926500C8D0D400C8D0
        D400C8D0D400C8D0D4008B8F9100595959005A5A5A0059595900585858006363
        63007E7E7E00434343005858580040404000EDEDED00EBEBEB00414141005959
        590050505000A8A8A800C2C2C200A5A5A5007777770054545400595959008B8E
        9000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C3CBCF00C8D0D400C8D0D40092989B00E8E8E800E3E3
        E300A4AAAE00C8D0D400C8D0D4003563A700108AF80050B8F7001A81EA003D56
        9800C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C3CBCF00C8D0D400C8D0D4009298
        9B00E8E8E800E3E3E300A4ABAE00C8D0D400C8D0D40076787900A8A8A800C4C4
        C4009E9E9E006C6E6F00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400AEB4B800A5A6A600FFFFFF007D7F8000C8D0D400C8D0D400C8D0D400C8D0
        D4003564A8000C79EC00136CCD002493ED00C1CBD500C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400AEB4B800A6A7A700FFFFFF007D7F8000C8D0D400C8D0
        D400C8D0D400C8D0D400787A7B009B9B9B0087878700AAAAAA00C6CCCF00C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D4009FA6A900969697006E717200C6CE
        D200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400737B9600076ED9002C68
        BB00C6CED200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4009FA6A9009696
        97006D707100C6CED200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4008084
        87008C8C8C007F7F7F00C6CED200C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C9D1D500C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C9D1D500C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
      NumGlyphs = 2
    end
    object btnAnexar: TRzBitBtn
      Tag = 98
      AlignWithMargins = True
      Left = 532
      Top = 4
      Width = 100
      Height = 31
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Anexos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HighlightColor = 16026986
      HotTrack = True
      HotTrackColor = 3983359
      ParentFont = False
      ParentShowHint = False
      TextHighlightColor = clBtnFace
      ShowHint = False
      TabOrder = 5
      OnClick = btnAnexarClick
      Glyph.Data = {
        36120000424D3612000000000000360000002800000030000000180000000100
        20000000000000120000120B0000120B00000000000000000000C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C2CACE0095A1A6008084870090939500A6ACAF00BFC6CA00C6CED200C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C2CACE009BA1A4007F8487008D939600A5ACAF00BFC6CA00C6CED200C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A9B8BE0053AFCE004A93AC0035758C00476874005B696E00727A7D009398
        9B00A8AEB100B8BFC300C4CCD000C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400B2B9BC00B2B4B5009595960078787900686A6A0066696B00757A7C009298
        9B00A7AEB100B8BFC300C4CCD000C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A5B3BA005FC6E900B4F1FF0057CDFB0048C0EB003CADD600348FAF003573
        8A003F67770053666E0073787A00888C8E00A4AAAE00B8BFC300C4CCD000C7CF
        D300C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400ADB4B700CACBCB00F1F1F100D3D3D300C6C6C600B4B4B400929393007576
        760067696A006467680074787A00868C8E00A4AAAE00B8BFC300C4CCD000C7CF
        D300C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A5B3BA0052BDE600B8E9FB0085E2FF0079E0FF007BE2FF0071DFFF0064DB
        FF0057CDF40046B6DA003299BA002F7F98003F6977004F636C006F767A00B0B7
        BA00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400ADB4B700C4C4C500EBEBEB00E4E4E400E3E3E300E5E5E500E2E2E200E0E0
        E000D1D1D100BABABA009D9D9D00818182006A6C6C006265660072767800B0B7
        BA00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D40099ABB2004ABFEE009DDBF000A1EEFF0077E3FF007EE4FF0080E5FF0083E7
        FF0083E8FF0080E9FF007CEAFF0074E4FF005DD4F60047C4E6002F738A007F84
        8600C6CED200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A5ACAF00C7C7C800DDDDDD00EEEEEE00E6E6E600E6E6E600E6E6E600E8E8
        E800E9E9E900EAEAEA00EBEBEB00E5E5E500D7D7D700C7C7C700757676007E83
        8600C6CED200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D40093A6AE004AC2F30078CBEB00B6F2FD0084ECFF0085ECFF0086ECFF0086EC
        FF0086ECFF0086ECFF0087ECFF0089EFFF008FF4FF008EF7FF0057BFD8005163
        6900B1B8BB00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A1A7AA00CBCBCB00CFCFCF00F2F2F200EBEBEB00EBEBEB00ECECEC00EDED
        ED00ECECEC00EBEBEB00EBEBEB00EEEEEE00F2F2F200F4F4F400C1C1C1006163
        6500B0B8BB00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D40095A7AE0067CEFA0054BEEA00B7EDF70097F8FF008CF3FF008DF3FF008DF3
        FF008DF3FF008DF3FF008FF6FF0088EBF40087E3EB0095F1FE0089ECFB004478
        8700898D9000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A2A8AB00D5D5D500C4C4C400ECECEC00F5F5F500F2F2F200F0F0F000F0F0
        F000F1F1F100F2F2F200F3F3F300E9E9E900E1E1E100EFEFEF00EBEBEB007879
        7A00888D9000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400889EA6006AD2FF004DBEF200A6E1F200ACFFFF0090FBFF0093FBFF0094FB
        FF0094FBFF0097FDFF008DF1F30079E1CC0076D6BE0089D8DD00AEFAFF0065B4
        C7005C666C00BBC2C600C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400999EA100D9D9D900C7C7C700E2E2E200FBFBFB00F6F6F600F7F7F700F7F7
        F700F7F7F700F9F9F900EEEEEE00D8D8D800CDCDCD00D5D5D500F7F7F700B6B6
        B60064676800BBC2C600C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400889CA30076D8FF0060C9FD007CCCEC00D0FFFD00AFFFFF00AAFFFF00A3FF
        FF00A0FFFF0097F4F2007FE3CA0085F7CF0089F9D10081D6BD00A7DDDB009EE7
        F300456C7900979DA000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400979D9F00DDDDDD00D2D2D200D0D0D000FDFDFD00FBFBFB00FBFBFB00FBFB
        FB00FBFBFB00EFEFEF00D9D9D900EAEAEA00EBEBEB00CCCCCC00DADADA00E7E7
        E7006C6D6E00979DA000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D4008C9CA20086E1FF0072D7FF0058C6F10095D8EE00B8E7F400B5ECF500CBFA
        FF00C3F5F30092E4C9008CF4CB0092FAD30092FAD40093F6CE0092D8BC00ABDC
        DC005C9DB20068707400BFC7CB00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400979C9F00E5E5E500DDDDDD00CCCCCC00DADADA00E7E7E700ECECEC00F9F9
        F900F2F2F200DBDBDB00E7E7E700EEEEEE00EDEDED00EAEAEA00CECECE00D9D9
        D9009E9E9F006C707200BFC7CB00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D40079AABB008AE0FB0081E4FF0079E1FF0060D4F6006AD5F40074D6F90070C4
        D90079C8BB00A7EFC800ADFBD100A7F8CF00A1F6CE009FF8D0009FF5CA00A7E0
        C1008AC0C80045606D00A2A8AB00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A8ACAE00E2E2E200E7E7E700E4E4E400D7D7D700D8D8D800DBDBDB00C5C5
        C500C2C2C200E3E3E300EEEEEE00EBEBEB00E9E9E900ECECEC00E8E8E800D7D7
        D700BFBFBF0060626300A2A8AB00C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D40078B9D10099E9FC008BF0FF0089EFFF008CF1FF0090F4FF006AC7CC0031AE
        620042D7870073DDC50093E4C80095E4C7009FEAC900A8EFCB00B4F5CE00BBF8
        CF00B2E4CB004D757F007D838600C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400B9BDBE00EAEAEA00EFEFEF00EDEDED00EFEFEF00F1F1F100C4C4C4009C9C
        9C00C3C3C300D3D3D300DADADA00DADADA00E0E0E000E4E4E400EAEAEA00ECEC
        EC00DCDCDC00757575007D838500C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D4007FBAD000B0F8FF0096FDFF0096FBFF0099FEFF006ECCBC0027A041002FCE
        46003BD859003BD4710037CE72003ECE6E005BD89D0057D1AC0058CA930069DB
        8C006AE589003BA563004F645900C2CACD00C8D0D400C8D0D400C8D0D400C8D0
        D400B9BCBE00F6F6F600F9F9F900F7F7F700FAFAFA00C4C4C4008D8D8D00B4B4
        B400BFBFBF00BDBDBD00B8B8B800B7B7B700C7C7C700C5C5C500BBBBBB00C8C8
        C800D0D0D000969696005E616300C2CACD00C8D0D400C8D0D400C8D0D400C8D0
        D4007EBCD200B7F7FD009AFFFF0097FFFF0099FFFF004EB9860045B1590058C1
        750038B053002FC7460033CF4A0032CD490031CC4F002FCC51002AC74B00248F
        33003F9A4C0042A54C00578E5F00BDC6C800C8D0D400C8D0D400C8D0D400C8D0
        D400BBBFC100F5F5F500FAFAFA00FAFAFA00FAFAFA00AAAAAA009E9E9E00AFAF
        AF009B9B9B00AEAEAE00B5B5B500B4B4B400B3B3B300B4B4B400AFAFAF007F7F
        80008A8D8E009597980084878900BEC6CA00C8D0D400C8D0D400C8D0D400C8D0
        D40096C1D100A0DEEF00C5FFFF00ACFFFF00A1FFFF00B1FBF4009AD0DA006FA0
        B5004695710027BB39002CC744002BC443002AC441002CC8430029C43F004370
        4800BBC7C700BFCBCA00BFCBCA00C7CFD300C8D0D400C8D0D400C8D0D400C8D0
        D400BDC3C600DEDFDF00FCFCFC00FBFBFB00FAFAFA00F6F6F600CFCFCF00A1A3
        A4008A8C8C00A2A2A200AEAEAE00ACACAC00ABABAB00AFAFAF00ABABAB006669
        6A00BFC6CA00C3CBCE00C2CACE00C7CFD300C8D0D400C8D0D400C8D0D400C8D0
        D400C5CFD4006FBAD3009AD5E60098DDED00ACECF600B9F0FD006A92A300C1C9
        CD00709377001FBB320024C0390023BC370022BC360024BF380021BE34004573
        4B00C6CED200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C7CFD300BABDBF00D5D6D600DDDDDD00EBEBEB00F1F1F10092959600C1C9
        CD008A8E9000A3A3A300A7A7A700A4A4A400A4A4A400A7A7A700A5A5A5006A6C
        6E00C6CED200C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400BECCD200ABB6BA00A5B3B90095C1D1008EBECF00B8C2C700C8D0
        D4006EA375001AAF28001DB82D001CB52B001CB52B001CB72C001AB728004373
        4900C2C9CD00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C5CDD000AFB6B900ADB3B600BDC3C600BBC0C300BBC2C600C8D0
        D400979C9E0098989800A0A0A0009C9C9C009D9D9D00A0A0A0009F9F9F00696C
        6D00C2C9CD00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D4006DA8750014A71E0016B1220015AF210015AE200015B1210014B01E004171
        4700C2C9CD00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D4009B9FA200909090009898980097979700969696009898980098989800676A
        6B00C2C9CD00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D40065A26C000DA3150010AC19000FAA17000FA917000FAC18000EAD16003D6E
        4100C3CBCF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400969A9C008C8C8C0095959500939393009292920094949400959595006467
        6800C3CBCF00C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D40088B0900035933A0033943700339437003394370033943700319636007A9B
        8100C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400A5ABAD008284850085878800848586008486870084868700878989009297
        9900C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
        D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
      NumGlyphs = 2
    end
  end
  inherited RzPanel2: TRzPanel
    Top = 480
    Width = 720
    ExplicitTop = 480
    ExplicitWidth = 720
    inherited BtnConfirma: TRzBitBtn
      Left = 404
      OnClick = BtnConfirmaClick
      ExplicitLeft = 404
    end
    inherited BtnCancela: TRzBitBtn
      Left = 506
      OnClick = BtnCancelaClick
      ExplicitLeft = 506
    end
    inherited BtnSair: TRzBitBtn
      Left = 617
      OnClick = BtnSairClick
      ExplicitLeft = 617
    end
  end
  inherited sqlVis: TSQLDataSet
    CommandText = 
      'SELECT RR_CAD_RURAL.*,'#13#10'       RR_CLASSIFICA.DESCR_RCL,'#13#10'       ' +
      'GR_BANCO.NOME_BCO,'#13#10'       RR_COBRANCA.DESCRI_COB,'#13#10'       GR_CO' +
      'NTRIBUINTES.NOME_CNT,'#13#10'       GR_CONTRIBUINTES.RG_CNT,'#13#10'       G' +
      'R_CONTRIBUINTES.CNPJ_CNT,'#13#10'       GR_CONTRIBUINTES.FONE_CNT,'#13#10'  ' +
      '     GR_CONTRIBUINTES.EMAIL_CNT,'#13#10'       LOGRA.NOME_LOG LOGRAPRO' +
      ','#13#10'       TIPENT.NOM_TIP_CEP TPLOGRENT,'#13#10'       TITENT.DESCR_TIT' +
      ' TTLOGRENT,'#13#10'       LOGRAE.NOME_LOG LOGRAENT,'#13#10'       BAIE.NOME_' +
      'BAI BIRROENT,'#13#10'       CIDE.NOME_CID CIDENT,'#13#10'       TPZE.DESCR_R' +
      'TZ,'#13#10'       TPDI.DESCR_RDI,'#13#10'       TPOL.DESCR_ROL,'#13#10'       TPFO' +
      '1.DESCR_RFO FOBTENCAO,'#13#10'       TPFO2.DESCR_RFO FOBTENCAOJT,'#13#10'   ' +
      '    TPFO3.DESCR_RFO FOBTENCAOSO'#13#10'FROM RR_CAD_RURAL'#13#10'LEFT JOIN RR' +
      '_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR AND COD_RCL = COD_CLASS' +
      '_RRR'#13#10'LEFT JOIN GR_BANCO ON COD_EMP_BCO = COD_EMP_RRR AND COD_BC' +
      'O = COD_BCO_RRR'#13#10'LEFT JOIN RR_COBRANCA ON COD_EMP_COB = COD_EMP_' +
      'RRR AND COD_COB = COD_COB_RRR'#13#10'LEFT JOIN GR_CONTRIBUINTES ON COD' +
      '_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_CNT_RRR'#13#10'LEFT JOIN GR_L' +
      'OGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP_RRR AND LOGRA.COD_LOG ' +
      '= COD_LOG_RRR'#13#10'LEFT JOIN CEP_TIPOLOGIA TIPENT ON TIPENT.COD_TIP_' +
      'CEP = COD_TIPE_RRR'#13#10'LEFT JOIN CEP_TITULACAO TITENT ON TITENT.COD' +
      '_TIT = COD_TITE_RRR'#13#10'LEFT JOIN GR_LOGRA LOGRAE ON LOGRAE.COD_EMP' +
      '_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = COD_LOGE_RRR'#13#10'LEFT JOIN ' +
      'GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_EMP_RRR AND BAIE.COD_BA' +
      'I = COD_BAIE_RRR'#13#10'LEFT JOIN GR_CIDADE CIDE ON CIDE.COD_CID = COD' +
      '_CIDE_RRR'#13#10'LEFT JOIN RR_TPZONAESPECIAL TPZE ON TPZE.COD_EMP_RTZ ' +
      '= COD_EMP_RRR AND TPZE.COD_RTZ = COD_TPZONAESP_RRR'#13#10'LEFT JOIN RR' +
      '_TPDESTIMV TPDI ON TPDI.COD_EMP_RDI = COD_EMP_RRR AND TPDI.COD_R' +
      'DI = COD_DESTIMOV_RRR'#13#10'LEFT JOIN RR_TPORIGLITIGIO TPOL ON TPOL.C' +
      'OD_EMP_ROL = COD_EMP_RRR AND TPOL.COD_ROL = COD_ORIGLITIGIO_RRR'#13 +
      #10'LEFT JOIN RR_TPFORMAOB TPFO1 ON TPFO1.COD_EMP_RFO = COD_EMP_RRR' +
      ' AND TPFO1.COD_RFO = COD_FOBTENCAO_RRR'#13#10'LEFT JOIN RR_TPFORMAOB T' +
      'PFO2 ON TPFO2.COD_EMP_RFO = COD_EMP_RRR AND TPFO2.COD_RFO = COD_' +
      'FOBPOSSEJT_RRR'#13#10'LEFT JOIN RR_TPFORMAOB TPFO3 ON TPFO3.COD_EMP_RF' +
      'O = COD_EMP_RRR AND TPFO3.COD_RFO = COD_FOBPOSSESO_RRR'#13#10'WHERE RR' +
      '_CAD_RURAL.COD_EMP_RRR = :empresa'
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
    Left = 645
    Top = 5
  end
  inherited dspVis: TDataSetProvider
    Left = 673
    Top = 5
  end
  inherited cdsVis: TClientDataSet
    PacketRecords = 50
    Left = 701
    Top = 5
  end
  inherited dsVis: TDataSource
    Left = 729
    Top = 5
  end
  inherited sqlCadastro: TSQLDataSet
    CommandText = 
      'SELECT RR_CAD_RURAL.*,'#13#10'       RR_CLASSIFICA.DESCR_RCL,'#13#10'       ' +
      'GR_BANCO.NOME_BCO,'#13#10'       RR_COBRANCA.DESCRI_COB,'#13#10'       GR_CO' +
      'NTRIBUINTES.NOME_CNT,'#13#10'       GR_CONTRIBUINTES.RG_CNT,'#13#10'       G' +
      'R_CONTRIBUINTES.CNPJ_CNT,'#13#10'       GR_CONTRIBUINTES.FONE_CNT,'#13#10'  ' +
      '     GR_CONTRIBUINTES.EMAIL_CNT,'#13#10'       LOGRA.NOME_LOG LOGRAPRO' +
      ','#13#10'       TIPENT.NOM_TIP_CEP TPLOGRENT,'#13#10'       TITENT.DESCR_TIT' +
      ' TTLOGRENT,'#13#10'       LOGRAE.NOME_LOG LOGRAENT,'#13#10'       BAIE.NOME_' +
      'BAI BIRROENT,'#13#10'       CIDE.NOME_CID CIDENT,'#13#10'       TPZE.DESCR_R' +
      'TZ,'#13#10'       TPDI.DESCR_RDI,'#13#10'       TPOL.DESCR_ROL,'#13#10'       TPFO' +
      '1.DESCR_RFO FOBTENCAO,'#13#10'       TPFO2.DESCR_RFO FOBTENCAOJT,'#13#10'   ' +
      '    TPFO3.DESCR_RFO FOBTENCAOSO,'#13#10'       ZNA.DESCR_RZN'#13#10'FROM RR_' +
      'CAD_RURAL'#13#10'LEFT JOIN RR_CLASSIFICA ON COD_EMP_RCL = COD_EMP_RRR ' +
      'AND COD_RCL = COD_CLASS_RRR'#13#10'LEFT JOIN GR_BANCO ON COD_EMP_BCO =' +
      ' COD_EMP_RRR AND COD_BCO = COD_BCO_RRR'#13#10'LEFT JOIN RR_COBRANCA ON' +
      ' COD_EMP_COB = COD_EMP_RRR AND COD_COB = COD_COB_RRR'#13#10'LEFT JOIN ' +
      'GR_CONTRIBUINTES ON COD_EMP_CNT = COD_EMP_RRR AND COD_CNT = COD_' +
      'CNT_RRR'#13#10'LEFT JOIN GR_LOGRA LOGRA ON LOGRA.COD_EMP_LOG = COD_EMP' +
      '_RRR AND LOGRA.COD_LOG = COD_LOG_RRR'#13#10'LEFT JOIN CEP_TIPOLOGIA TI' +
      'PENT ON TIPENT.COD_TIP_CEP = COD_TIPE_RRR'#13#10'LEFT JOIN CEP_TITULAC' +
      'AO TITENT ON TITENT.COD_TIT = COD_TITE_RRR'#13#10'LEFT JOIN GR_LOGRA L' +
      'OGRAE ON LOGRAE.COD_EMP_LOG = COD_EMP_RRR AND LOGRAE.COD_LOG = C' +
      'OD_LOGE_RRR'#13#10'LEFT JOIN GR_BAIRRO BAIE ON BAIE.COD_EMP_BAI = COD_' +
      'EMP_RRR AND BAIE.COD_BAI = COD_BAIE_RRR'#13#10'LEFT JOIN GR_CIDADE CID' +
      'E ON CIDE.COD_CID = COD_CIDE_RRR'#13#10'LEFT JOIN RR_TPZONAESPECIAL TP' +
      'ZE ON TPZE.COD_EMP_RTZ = COD_EMP_RRR AND TPZE.COD_RTZ = COD_TPZO' +
      'NAESP_RRR'#13#10'LEFT JOIN RR_TPDESTIMV TPDI ON TPDI.COD_EMP_RDI = COD' +
      '_EMP_RRR AND TPDI.COD_RDI = COD_DESTIMOV_RRR'#13#10'LEFT JOIN RR_TPORI' +
      'GLITIGIO TPOL ON TPOL.COD_EMP_ROL = COD_EMP_RRR AND TPOL.COD_ROL' +
      ' = COD_ORIGLITIGIO_RRR'#13#10'LEFT JOIN RR_TPFORMAOB TPFO1 ON TPFO1.CO' +
      'D_EMP_RFO = COD_EMP_RRR AND TPFO1.COD_RFO = COD_FOBTENCAO_RRR'#13#10'L' +
      'EFT JOIN RR_TPFORMAOB TPFO2 ON TPFO2.COD_EMP_RFO = COD_EMP_RRR A' +
      'ND TPFO2.COD_RFO = COD_FOBPOSSEJT_RRR'#13#10'LEFT JOIN RR_TPFORMAOB TP' +
      'FO3 ON TPFO3.COD_EMP_RFO = COD_EMP_RRR AND TPFO3.COD_RFO = COD_F' +
      'OBPOSSESO_RRR'#13#10'LEFT JOIN RR_ZONAFISCAL ZNA ON ZNA.COD_EMP_RZN = ' +
      'COD_EMP_RRR AND ZNA.COD_RZN = COD_ZNA_RRR'#13#10'WHERE RR_CAD_RURAL.CO' +
      'D_EMP_RRR = :empresa'#13#10'  AND RR_CAD_RURAL.COD_RRR = :cod'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    Left = 804
    Top = 62
    object sqlCadastroCOD_EMP_RRR: TIntegerField
      FieldName = 'COD_EMP_RRR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_RRR: TStringField
      FieldName = 'COD_RRR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlCadastroMATRIC_RRR: TStringField
      FieldName = 'MATRIC_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlCadastroDTCAD_RRR: TDateField
      FieldName = 'DTCAD_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_STR_RRR: TStringField
      FieldName = 'COD_STR_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sqlCadastroCOD_CLASS_RRR: TIntegerField
      FieldName = 'COD_CLASS_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_COB_RRR: TIntegerField
      FieldName = 'COD_COB_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_CNT_RRR: TStringField
      FieldName = 'COD_CNT_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlCadastroDEBAU_RRR: TStringField
      FieldName = 'DEBAU_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlCadastroCOD_BCO_RRR: TIntegerField
      FieldName = 'COD_BCO_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_BANCO_RRR: TStringField
      FieldName = 'COD_BANCO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object sqlCadastroCOD_AGEN_RRR: TStringField
      FieldName = 'COD_AGEN_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroCOD_CONTA_RRR: TStringField
      FieldName = 'COD_CONTA_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroDTDEBAU_INC_RRR: TDateField
      FieldName = 'DTDEBAU_INC_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroDTDEBAU_IXC_RRR: TDateField
      FieldName = 'DTDEBAU_IXC_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroPROPRIEDADE_RRR: TStringField
      FieldName = 'PROPRIEDADE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlCadastroFONEP_RRR: TStringField
      FieldName = 'FONEP_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroRESPONSA_RRR: TStringField
      FieldName = 'RESPONSA_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlCadastroINSCRP_RRR: TStringField
      FieldName = 'INSCRP_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlCadastroINCRA_RRR: TStringField
      FieldName = 'INCRA_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlCadastroAREAH_RRR: TFloatField
      FieldName = 'AREAH_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroAREAE_RRR: TFloatField
      FieldName = 'AREAE_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroAREAM_RRR: TFloatField
      FieldName = 'AREAM_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroDISTANCIA_RRR: TFloatField
      FieldName = 'DISTANCIA_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroPONTOS_RRR: TFloatField
      FieldName = 'PONTOS_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroVVENAL_RRR: TFloatField
      FieldName = 'VVENAL_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_LOG_RRR: TIntegerField
      FieldName = 'COD_LOG_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGRA_RRR: TStringField
      FieldName = 'LOGRA_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlCadastroCOMPL_RRR: TStringField
      FieldName = 'COMPL_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlCadastroOBSLOGRA_RRR: TMemoField
      FieldName = 'OBSLOGRA_RRR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlCadastroCOD_TIPE_RRR: TIntegerField
      FieldName = 'COD_TIPE_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroTIPOLOGE_RRR: TStringField
      FieldName = 'TIPOLOGE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroCOD_TITE_RRR: TIntegerField
      FieldName = 'COD_TITE_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroTITULOLOGE_RRR: TStringField
      FieldName = 'TITULOLOGE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroCOD_LOGE_RRR: TIntegerField
      FieldName = 'COD_LOGE_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGRAE_RRR: TStringField
      FieldName = 'LOGRAE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sqlCadastroCOD_BAIE_RRR: TIntegerField
      FieldName = 'COD_BAIE_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroBAIRROE_RRR: TStringField
      FieldName = 'BAIRROE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sqlCadastroNUMEROE_RRR: TStringField
      FieldName = 'NUMEROE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sqlCadastroCEPE_RRR: TStringField
      FieldName = 'CEPE_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOMPLEE_RRR: TStringField
      FieldName = 'COMPLEE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sqlCadastroCOD_CIDE_RRR: TStringField
      FieldName = 'COD_CIDE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object sqlCadastroUFE_RRR: TStringField
      FieldName = 'UFE_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroHISTO_RRR: TMemoField
      FieldName = 'HISTO_RRR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlCadastroMUNCARTORIO_RRR: TStringField
      FieldName = 'MUNCARTORIO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlCadastroUFCARTORIO_RRR: TStringField
      FieldName = 'UFCARTORIO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroDTAREG_RRR: TDateField
      FieldName = 'DTAREG_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroOFICIO_RR: TStringField
      FieldName = 'OFICIO_RR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroMATRICULA_RRR: TStringField
      FieldName = 'MATRICULA_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroREGISTRO_RRR: TStringField
      FieldName = 'REGISTRO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroLIVRO_RRR: TStringField
      FieldName = 'LIVRO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroAREATOTREG_RRR: TFloatField
      FieldName = 'AREATOTREG_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_FOBTENCAO_RRR: TStringField
      FieldName = 'COD_FOBTENCAO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroCOD_ORIGLITIGIO_RRR: TStringField
      FieldName = 'COD_ORIGLITIGIO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroCOD_DESTIMOV_RRR: TStringField
      FieldName = 'COD_DESTIMOV_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroCOD_TPZONAESP_RRR: TStringField
      FieldName = 'COD_TPZONAESP_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroAREASEMUSO_RRR: TFloatField
      FieldName = 'AREASEMUSO_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroPESSOAS_RRR: TIntegerField
      FieldName = 'PESSOAS_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroFAMILIAS_RRR: TIntegerField
      FieldName = 'FAMILIAS_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroASSALARIADOSCCART_RRR: TIntegerField
      FieldName = 'ASSALARIADOSCCART_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroASSALARIADOSSCART_RRR: TIntegerField
      FieldName = 'ASSALARIADOSSCART_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroMOBRAFAMILIAR_RRR: TIntegerField
      FieldName = 'MOBRAFAMILIAR_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroVTOTIMOVEL_RRR: TFloatField
      FieldName = 'VTOTIMOVEL_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroVTOTBENF_RRR: TFloatField
      FieldName = 'VTOTBENF_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroVTOTCULTURAS_RR: TFloatField
      FieldName = 'VTOTCULTURAS_RR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroVTOTTERRANUA_RRR: TFloatField
      FieldName = 'VTOTTERRANUA_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_FOBPOSSEJT_RRR: TStringField
      FieldName = 'COD_FOBPOSSEJT_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroDTPOSSEJT_RRR: TDateField
      FieldName = 'DTPOSSEJT_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroAREAPOSSEJT_RRR: TFloatField
      FieldName = 'AREAPOSSEJT_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCOD_FOBPOSSESO_RRR: TStringField
      FieldName = 'COD_FOBPOSSESO_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlCadastroDTPOSSESO_RRR: TDateField
      FieldName = 'DTPOSSESO_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroAREAPOSSESO_RRR: TFloatField
      FieldName = 'AREAPOSSESO_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroDTA_INC_RRR: TSQLTimeStampField
      FieldName = 'DTA_INC_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_INC_RRR: TStringField
      FieldName = 'LOGIN_INC_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_ALT_RRR: TSQLTimeStampField
      FieldName = 'DTA_ALT_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_ALT_RRR: TStringField
      FieldName = 'LOGIN_ALT_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroCCIR_RRR: TStringField
      FieldName = 'CCIR_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlCadastroNIRF_RRR: TStringField
      FieldName = 'NIRF_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlCadastroFOLHA_RRR: TStringField
      FieldName = 'FOLHA_RRR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlCadastroDESCR_RCL: TStringField
      FieldName = 'DESCR_RCL'
      ProviderFlags = []
      Size = 70
    end
    object sqlCadastroNOME_BCO: TStringField
      FieldName = 'NOME_BCO'
      ProviderFlags = []
      Size = 40
    end
    object sqlCadastroDESCRI_COB: TStringField
      FieldName = 'DESCRI_COB'
      ProviderFlags = []
      Size = 50
    end
    object sqlCadastroNOME_CNT: TStringField
      FieldName = 'NOME_CNT'
      ProviderFlags = []
      Size = 150
    end
    object sqlCadastroRG_CNT: TStringField
      FieldName = 'RG_CNT'
      ProviderFlags = []
    end
    object sqlCadastroCNPJ_CNT: TStringField
      FieldName = 'CNPJ_CNT'
      ProviderFlags = []
    end
    object sqlCadastroFONE_CNT: TStringField
      FieldName = 'FONE_CNT'
      ProviderFlags = []
      Size = 15
    end
    object sqlCadastroEMAIL_CNT: TStringField
      FieldName = 'EMAIL_CNT'
      ProviderFlags = []
      Size = 60
    end
    object sqlCadastroLOGRAPRO: TStringField
      FieldName = 'LOGRAPRO'
      ProviderFlags = []
      Size = 60
    end
    object sqlCadastroTPLOGRENT: TStringField
      FieldName = 'TPLOGRENT'
      ProviderFlags = []
      Size = 30
    end
    object sqlCadastroTTLOGRENT: TStringField
      FieldName = 'TTLOGRENT'
      ProviderFlags = []
      Size = 50
    end
    object sqlCadastroLOGRAENT: TStringField
      FieldName = 'LOGRAENT'
      ProviderFlags = []
      Size = 60
    end
    object sqlCadastroBIRROENT: TStringField
      FieldName = 'BIRROENT'
      ProviderFlags = []
      Size = 60
    end
    object sqlCadastroCIDENT: TStringField
      FieldName = 'CIDENT'
      ProviderFlags = []
      Size = 60
    end
    object sqlCadastroDESCR_RTZ: TStringField
      FieldName = 'DESCR_RTZ'
      ProviderFlags = []
      Size = 70
    end
    object sqlCadastroDESCR_RDI: TStringField
      FieldName = 'DESCR_RDI'
      ProviderFlags = []
      Size = 70
    end
    object sqlCadastroDESCR_ROL: TStringField
      FieldName = 'DESCR_ROL'
      ProviderFlags = []
      Size = 70
    end
    object sqlCadastroFOBTENCAO: TStringField
      FieldName = 'FOBTENCAO'
      ProviderFlags = []
      Size = 70
    end
    object sqlCadastroFOBTENCAOJT: TStringField
      FieldName = 'FOBTENCAOJT'
      ProviderFlags = []
      Size = 70
    end
    object sqlCadastroFOBTENCAOSO: TStringField
      FieldName = 'FOBTENCAOSO'
      ProviderFlags = []
      Size = 70
    end
    object sqlCadastroCOD_ZNA_RRR: TIntegerField
      FieldName = 'COD_ZNA_RRR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroDESCR_RZN: TStringField
      FieldName = 'DESCR_RZN'
      ProviderFlags = []
      Size = 100
    end
    object sqlCadastroINDICE_IMG_RRR: TIntegerField
      FieldName = 'INDICE_IMG_RRR'
    end
    object sqlCadastroINDICE_DOC_RRR: TIntegerField
      FieldName = 'INDICE_DOC_RRR'
    end
  end
  inherited dspCadastro: TDataSetProvider
    Options = [poIncFieldProps, poUseQuoteChar]
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspCadastroAfterUpdateRecord
    BeforeUpdateRecord = dspCadastroBeforeUpdateRecord
    OnGetTableName = dspCadastroGetTableName
    Left = 832
    Top = 62
  end
  inherited cdsCadastro: TClientDataSet
    OnNewRecord = cdsCadastroNewRecord
    OnReconcileError = cdsCadastroReconcileError
    Left = 860
    Top = 62
  end
  inherited dsCadastro: TDataSource
    Left = 888
    Top = 62
  end
  inherited QVerCod: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select count(*) tot from rr_cad_rural where cod_emp_rrr=:empresa' +
        ' and cod_rrr=:cod')
    Left = 948
    Top = 4
  end
  object pop1: TPopupMenu
    Left = 836
    Top = 4
    object ClculoAnual1: TMenuItem
      Caption = 'C'#225'lculo Anual'
      OnClick = ClculoAnual1Click
    end
    object ConsultadeDvida1: TMenuItem
      Caption = 'Consulta de D'#237'vida'
      OnClick = ConsultadeDvida1Click
    end
    object ConsultadeLanamento1: TMenuItem
      Caption = 'Consulta de Lan'#231'amento'
      OnClick = ConsultadeLanamento1Click
    end
    object CompensaodeValores1: TMenuItem
      Caption = 'Compensa'#231#227'o de Valores'
      OnClick = CompensaodeValores1Click
    end
    object EstornaCompensaodeValores1: TMenuItem
      Caption = 'Estorna Compensa'#231#227'o de Valores'
      OnClick = EstornaCompensaodeValores1Click
    end
    object CancelamentodeDvida1: TMenuItem
      Caption = 'Cancelamento de D'#237'vida'
      OnClick = CancelamentodeDvida1Click
    end
    object EstornaCancelamentodeDvida1: TMenuItem
      Caption = 'Estorna Cancelamento de D'#237'vida'
      OnClick = EstornaCancelamentodeDvida1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ReceitasDiversas1: TMenuItem
      Caption = 'Receitas Diversas'
      OnClick = ReceitasDiversas1Click
    end
    object ITBI1: TMenuItem
      Caption = 'ITBI'
      OnClick = ITBI1Click
    end
    object Documentos1: TMenuItem
      Caption = 'Documentos'
      OnClick = Documentos1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object EmissodeCertides1: TMenuItem
      Caption = 'Emiss'#227'o de Certid'#245'es'
      OnClick = EmissodeCertides1Click
    end
    object EmissodeCarne1: TMenuItem
      Caption = 'Emiss'#227'o de Carne'
      OnClick = EmissodeCarne1Click
    end
    object FichaCadastral2: TMenuItem
      Caption = 'Ficha Cadastral'
      OnClick = FichaCadastral2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExtratoCompleto1: TMenuItem
      Caption = 'Extrato Completo'
      OnClick = ExtratoCompleto1Click
    end
    object ExtratoSimplificado1: TMenuItem
      Caption = 'Extrato Simplificado'
      OnClick = ExtratoSimplificado1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ListagemdosDbitosCompleta1: TMenuItem
      Caption = 'Listagem dos D'#233'bitos Completa'
      OnClick = ListagemdosDbitosCompleta1Click
    end
    object ListagemdosDbitoSimplificada1: TMenuItem
      Caption = 'Listagem dos D'#233'bito Simplificada'
      OnClick = ListagemdosDbitoSimplificada1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
  end
  object popBtnDir: TPopupMenu
    Tag = 99
    Left = 864
    Top = 4
    object Copiar1: TMenuItem
      Caption = 'Copiar'
      OnClick = Copiar1Click
    end
    object Colar1: TMenuItem
      Caption = 'Colar'
      OnClick = Colar1Click
    end
  end
  object PesqAvancado: TPesqAvancada_Fiorilli
    SQLDataSet = sqlVis
    ClientDataSet = cdsVis
    DataSet = dsVis
    Left = 976
    Top = 4
  end
  object dsGranj: TDataSource
    DataSet = cdsGranj
    Left = 1029
    Top = 106
  end
  object cdsGranj: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_AGQ;COD_RRR_AGQ'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspGranj'
    AfterOpen = cdsGranjAfterOpen
    Left = 1001
    Top = 106
  end
  object dspGranj: TDataSetProvider
    DataSet = sqlGranj
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspGranjAfterUpdateRecord
    BeforeUpdateRecord = dspGranjBeforeUpdateRecord
    OnGetTableName = dspGranjGetTableName
    Left = 973
    Top = 106
  end
  object sqlGranj: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT RR_CADRR_AREAGRAJ.*,'#13#10'       RR_TPPRODGRANJAQU.DESCR_RPG,' +
      #13#10'       RR_TPINDRESTUSO.DESCR_RIU'#13#10'FROM RR_CADRR_AREAGRAJ'#13#10'LEFT' +
      ' JOIN RR_TPPRODGRANJAQU ON COD_EMP_RPG = COD_EMP_AGQ AND COD_RPG' +
      ' = COD_PRO_AGQ'#13#10'LEFT JOIN RR_TPINDRESTUSO ON COD_EMP_RIU = COD_E' +
      'MP_AGQ AND COD_RIU = COD_INDRESTUSO_AGQ'#13#10'WHERE COD_EMP_AGQ = :em' +
      'presa'#13#10'  AND COD_RRR_AGQ = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 945
    Top = 106
    object sqlGranjCOD_EMP_AGQ: TIntegerField
      FieldName = 'COD_EMP_AGQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlGranjCOD_AGQ: TIntegerField
      FieldName = 'COD_AGQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlGranjCOD_RRR_AGQ: TStringField
      FieldName = 'COD_RRR_AGQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlGranjCOD_PRO_AGQ: TStringField
      FieldName = 'COD_PRO_AGQ'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlGranjCOD_INDRESTUSO_AGQ: TStringField
      FieldName = 'COD_INDRESTUSO_AGQ'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlGranjAREA_EXPLO_AGQ: TFloatField
      FieldName = 'AREA_EXPLO_AGQ'
      ProviderFlags = [pfInUpdate]
    end
    object sqlGranjLOGIN_INC_AGQ: TStringField
      FieldName = 'LOGIN_INC_AGQ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlGranjDTA_INC_AGQ: TSQLTimeStampField
      FieldName = 'DTA_INC_AGQ'
      ProviderFlags = [pfInUpdate]
    end
    object sqlGranjLOGIN_ALT_AGQ: TStringField
      FieldName = 'LOGIN_ALT_AGQ'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlGranjDTA_ALT_AGQ: TSQLTimeStampField
      FieldName = 'DTA_ALT_AGQ'
      ProviderFlags = [pfInUpdate]
    end
    object sqlGranjDESCR_RPG: TStringField
      FieldName = 'DESCR_RPG'
      ProviderFlags = []
      Size = 70
    end
    object sqlGranjDESCR_RIU: TStringField
      FieldName = 'DESCR_RIU'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsProdIso: TDataSource
    DataSet = cdsProdIso
    Left = 888
    Top = 110
  end
  object cdsProdIso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_AVI;COD_RRR_AVI'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspProdIso'
    AfterOpen = cdsProdIsoAfterOpen
    Left = 860
    Top = 110
  end
  object dspProdIso: TDataSetProvider
    DataSet = sqlProdIso
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspProdIsoAfterUpdateRecord
    BeforeUpdateRecord = dspProdIsoBeforeUpdateRecord
    OnGetTableName = dspProdIsoGetTableName
    Left = 832
    Top = 110
  end
  object sqlProdIso: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT RR_CADRR_AREAVEGISO.*,'#13#10'       RR_TPINDRESTPROD.DESCR_RIP' +
      ','#13#10'       RR_TPPRODVEGETAIS.DESCR_RPR,'#13#10'       RR_TPUNIDPROD.DES' +
      'CR_RUP'#13#10'FROM RR_CADRR_AREAVEGISO'#13#10'LEFT JOIN RR_TPINDRESTPROD ON ' +
      'COD_EMP_RIP = COD_EMP_AVI AND COD_RIP = COD_INDRESTPROD_AVI'#13#10'LEF' +
      'T JOIN RR_TPPRODVEGETAIS ON COD_EMP_RPR = COD_EMP_AVI AND COD_RP' +
      'R = COD_PRO_AVI'#13#10'LEFT JOIN RR_TPUNIDPROD ON COD_EMP_RUP = COD_EM' +
      'P_AVI AND COD_RUP = COD_UNID_AVI'#13#10'WHERE COD_EMP_AVI = :empresa'#13#10 +
      '  AND COD_RRR_AVI = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 804
    Top = 110
    object sqlProdIsoCOD_EMP_AVI: TIntegerField
      FieldName = 'COD_EMP_AVI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlProdIsoCOD_AVI: TIntegerField
      FieldName = 'COD_AVI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlProdIsoCOD_RRR_AVI: TStringField
      FieldName = 'COD_RRR_AVI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlProdIsoCOD_PRO_AVI: TStringField
      FieldName = 'COD_PRO_AVI'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sqlProdIsoAREA_PLAN_AVI: TFloatField
      FieldName = 'AREA_PLAN_AVI'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProdIsoAREA_COLH_AVI: TFloatField
      FieldName = 'AREA_COLH_AVI'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProdIsoQTD_COLH_AVI: TFloatField
      FieldName = 'QTD_COLH_AVI'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProdIsoCOD_UNID_AVI: TStringField
      FieldName = 'COD_UNID_AVI'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlProdIsoCOD_INDRESTPROD_AVI: TStringField
      FieldName = 'COD_INDRESTPROD_AVI'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlProdIsoLOGIN_INC_AVI: TStringField
      FieldName = 'LOGIN_INC_AVI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlProdIsoDTA_INC_AVI: TSQLTimeStampField
      FieldName = 'DTA_INC_AVI'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProdIsoLOGIN_ALT_AVI: TStringField
      FieldName = 'LOGIN_ALT_AVI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlProdIsoDTA_ALT_AVI: TSQLTimeStampField
      FieldName = 'DTA_ALT_AVI'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProdIsoDESCR_RIP: TStringField
      FieldName = 'DESCR_RIP'
      ProviderFlags = []
      Size = 70
    end
    object sqlProdIsoDESCR_RPR: TStringField
      FieldName = 'DESCR_RPR'
      ProviderFlags = []
      Size = 70
    end
    object sqlProdIsoDESCR_RUP: TStringField
      FieldName = 'DESCR_RUP'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsProRot: TDataSource
    DataSet = cdsProRot
    Left = 888
    Top = 198
  end
  object cdsProRot: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_AVR;COD_RRR_AVR'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspProRot'
    AfterOpen = cdsProRotAfterOpen
    Left = 860
    Top = 198
  end
  object dspProRot: TDataSetProvider
    DataSet = sqlProRot
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspProRotAfterUpdateRecord
    BeforeUpdateRecord = dspProRotBeforeUpdateRecord
    OnGetTableName = dspProRotGetTableName
    Left = 832
    Top = 198
  end
  object sqlProRot: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT RR_CADRR_AREAVEGROT.*,'#13#10'       RR_TPINDRESTPROD.DESCR_RIP' +
      ','#13#10'       RR_TPPRODVEGETAIS.DESCR_RPR,'#13#10'       RR_TPUNIDPROD.DES' +
      'CR_RUP'#13#10'FROM RR_CADRR_AREAVEGROT'#13#10'LEFT JOIN RR_TPINDRESTPROD ON ' +
      'COD_EMP_RIP = COD_EMP_AVR AND COD_RIP = COD_INDRESTPROD_AVR'#13#10'LEF' +
      'T JOIN RR_TPPRODVEGETAIS ON COD_EMP_RPR = COD_EMP_AVR AND COD_RP' +
      'R = COD_PRO_AVR'#13#10'LEFT JOIN RR_TPUNIDPROD ON COD_EMP_RUP = COD_EM' +
      'P_AVR AND COD_RUP = COD_UNID_AVR'#13#10'WHERE COD_EMP_AVR = :empresa'#13#10 +
      '  AND COD_RRR_AVR = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 804
    Top = 198
    object sqlProRotCOD_EMP_AVR: TIntegerField
      FieldName = 'COD_EMP_AVR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlProRotCOD_AVR: TIntegerField
      FieldName = 'COD_AVR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlProRotCOD_RRR_AVR: TStringField
      FieldName = 'COD_RRR_AVR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlProRotCOD_PRO_AVR: TStringField
      FieldName = 'COD_PRO_AVR'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sqlProRotFORMAEXP_AVR: TStringField
      FieldName = 'FORMAEXP_AVR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlProRotSEQGRUPO_AVR: TIntegerField
      FieldName = 'SEQGRUPO_AVR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProRotAREA_PLAN_AVR: TFloatField
      FieldName = 'AREA_PLAN_AVR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProRotAREA_COLH_AVR: TFloatField
      FieldName = 'AREA_COLH_AVR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProRotQTD_COLH_AVR: TFloatField
      FieldName = 'QTD_COLH_AVR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProRotCOD_UNID_AVR: TStringField
      FieldName = 'COD_UNID_AVR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlProRotCOD_INDRESTPROD_AVR: TStringField
      FieldName = 'COD_INDRESTPROD_AVR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlProRotLOGIN_INC_AVR: TStringField
      FieldName = 'LOGIN_INC_AVR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlProRotDTA_INC_AVR: TSQLTimeStampField
      FieldName = 'DTA_INC_AVR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProRotLOGIN_ALT_AVR: TStringField
      FieldName = 'LOGIN_ALT_AVR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlProRotDTA_ALT_AVR: TSQLTimeStampField
      FieldName = 'DTA_ALT_AVR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlProRotDESCR_RIP: TStringField
      FieldName = 'DESCR_RIP'
      ProviderFlags = []
      Size = 70
    end
    object sqlProRotDESCR_RPR: TStringField
      FieldName = 'DESCR_RPR'
      ProviderFlags = []
      Size = 70
    end
    object sqlProRotDESCR_RUP: TStringField
      FieldName = 'DESCR_RUP'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsPasto: TDataSource
    DataSet = cdsPasto
    Left = 888
    Top = 242
  end
  object cdsPasto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_ARP;COD_RRR_ARP'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPasto'
    AfterOpen = cdsPastoAfterOpen
    Left = 860
    Top = 242
  end
  object dspPasto: TDataSetProvider
    DataSet = sqlPasto
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspPastoAfterUpdateRecord
    BeforeUpdateRecord = dspPastoBeforeUpdateRecord
    OnGetTableName = dspPastoGetTableName
    Left = 832
    Top = 242
  end
  object sqlPasto: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT RR_CADRR_AREAPASTO.*,'#13#10'       RR_TPINDRESTUSO.DESCR_RIU,'#13 +
      #10'       RR_TPPASTAGEM.DESCR_RTS'#13#10'FROM RR_CADRR_AREAPASTO'#13#10'LEFT J' +
      'OIN RR_TPINDRESTUSO ON COD_EMP_RIU = COD_EMP_ARP AND COD_RIU = C' +
      'OD_INDRESTUSO_ARP'#13#10'LEFT JOIN RR_TPPASTAGEM ON COD_EMP_RTS = COD_' +
      'EMP_ARP AND COD_RTS = COD_TPPASTO_ARP'#13#10'WHERE COD_EMP_ARP = :empr' +
      'esa'#13#10'  AND COD_RRR_ARP = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 804
    Top = 242
    object sqlPastoCOD_EMP_ARP: TIntegerField
      FieldName = 'COD_EMP_ARP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPastoCOD_ARP: TIntegerField
      FieldName = 'COD_ARP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPastoCOD_RRR_ARP: TStringField
      FieldName = 'COD_RRR_ARP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlPastoCOD_TPPASTO_ARP: TIntegerField
      FieldName = 'COD_TPPASTO_ARP'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPastoAREA_UTIL_ARP: TFloatField
      FieldName = 'AREA_UTIL_ARP'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPastoCOD_INDRESTUSO_ARP: TStringField
      FieldName = 'COD_INDRESTUSO_ARP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlPastoLOGIN_INC_ARP: TStringField
      FieldName = 'LOGIN_INC_ARP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlPastoDTA_INC_ARP: TSQLTimeStampField
      FieldName = 'DTA_INC_ARP'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPastoLOGIN_ALT_ARP: TStringField
      FieldName = 'LOGIN_ALT_ARP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlPastoDTA_ALT_ARP: TSQLTimeStampField
      FieldName = 'DTA_ALT_ARP'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPastoDESCR_RTS: TStringField
      FieldName = 'DESCR_RTS'
      ProviderFlags = []
      Size = 70
    end
    object sqlPastoDESCR_RIU: TStringField
      FieldName = 'DESCR_RIU'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsPecuaria: TDataSource
    DataSet = cdsPecuaria
    Left = 888
    Top = 334
  end
  object cdsPecuaria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_RPE;COD_RRR_RPE'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPecuaria'
    AfterOpen = cdsPecuariaAfterOpen
    Left = 860
    Top = 334
  end
  object dspPecuaria: TDataSetProvider
    DataSet = sqlPecuaria
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspPecuariaAfterUpdateRecord
    BeforeUpdateRecord = dspPecuariaBeforeUpdateRecord
    OnGetTableName = dspPecuariaGetTableName
    Left = 832
    Top = 334
  end
  object sqlPecuaria: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT RR_CADRR_PECUARIA.*,'#13#10'       RR_TPPRODANIMAL.DESCR_RPA'#13#10'F' +
      'ROM RR_CADRR_PECUARIA'#13#10'LEFT JOIN RR_TPPRODANIMAL ON COD_EMP_RPA ' +
      '= COD_EMP_RPE AND COD_RPA = COD_PRO_RPE'#13#10'WHERE COD_EMP_RPE = :em' +
      'presa'#13#10'  AND COD_RRR_RPE = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 804
    Top = 334
    object sqlPecuariaCOD_EMP_RPE: TIntegerField
      FieldName = 'COD_EMP_RPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPecuariaCOD_RPE: TIntegerField
      FieldName = 'COD_RPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPecuariaCOD_RRR_RPE: TStringField
      FieldName = 'COD_RRR_RPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlPecuariaCOD_PRO_RPE: TStringField
      FieldName = 'COD_PRO_RPE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlPecuariaQTD_RPE: TIntegerField
      FieldName = 'QTD_RPE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPecuariaLOGIN_INC_RPE: TStringField
      FieldName = 'LOGIN_INC_RPE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlPecuariaDTA_INC_RPE: TSQLTimeStampField
      FieldName = 'DTA_INC_RPE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPecuariaLOGIN_ALT_RPE: TStringField
      FieldName = 'LOGIN_ALT_RPE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlPecuariaDTA_ALT_RPE: TSQLTimeStampField
      FieldName = 'DTA_ALT_RPE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPecuariaDESCR_RPA: TStringField
      FieldName = 'DESCR_RPA'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsTransf: TDataSource
    DataSet = cdsTransf
    Left = 1029
    Top = 154
  end
  object cdsTransf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransf'
    Left = 1001
    Top = 154
  end
  object dspTransf: TDataSetProvider
    DataSet = sqlTransf
    Left = 973
    Top = 154
  end
  object sqlTransf: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT RR_TRANSPROP.COD_RTP,'#13#10'       CNTV.NOME_CNT NOMEVELHO,'#13#10' ' +
      '      CNTV.CNPJ_CNT,'#13#10'       CNTV.RG_CNT,'#13#10'       CNTV.NOM_LOG_C' +
      'NT,'#13#10'       CNTV.NUMERO_CNT,'#13#10'       RR_TRANSPROP.DTA_TRANSF_RTP' +
      #13#10'FROM RR_TRANSPROP'#13#10'INNER JOIN GR_CONTRIBUINTES CNTN ON CNTN.CO' +
      'D_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP'#13#10'                          ' +
      '      AND CNTN.COD_CNT = RR_TRANSPROP.COD_CNTN_RTP'#13#10'INNER JOIN R' +
      'R_CAD_RURAL VELHO ON VELHO.COD_EMP_RRR = RR_TRANSPROP.COD_EMP_RT' +
      'P'#13#10'                             AND VELHO.COD_RRR = RR_TRANSPROP' +
      '.COD_RRR_ANT_RTP'#13#10'INNER JOIN GR_CONTRIBUINTES CNTV ON CNTV.COD_E' +
      'MP_CNT = RR_TRANSPROP.COD_EMP_RTP'#13#10'                             ' +
      '   AND CNTV.COD_CNT = RR_TRANSPROP.COD_CNTV_RTP'#13#10'WHERE RR_TRANSP' +
      'ROP.COD_EMP_RTP = :empresa'#13#10'  AND RR_TRANSPROP.COD_RRR_ANT_RTP =' +
      ' :cod'#13#10'  AND RR_TRANSPROP.STATUS_RTP = '#39'AT'#39#13#10'ORDER BY RR_TRANSPR' +
      'OP.DTA_TRANSF_RTP'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 945
    Top = 154
  end
  object dsHisAlt: TDataSource
    DataSet = cdsHisAlt
    Left = 888
    Top = 288
  end
  object cdsHisAlt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHisAlt'
    Left = 860
    Top = 288
  end
  object dspHisAlt: TDataSetProvider
    DataSet = sqlHisAlt
    Left = 832
    Top = 288
  end
  object sqlHisAlt: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * '#13#10'from RR_HIS_ALTERACOES'#13#10'where COD_EMP_RHA = :empresa'#13 +
      #10'and COD_RRR_RHA = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 804
    Top = 288
    object sqlHisAltCOD_RHA: TIntegerField
      FieldName = 'COD_RHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlHisAltCOD_EMP_RHA: TIntegerField
      FieldName = 'COD_EMP_RHA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlHisAltCOD_RRR_RHA: TStringField
      FieldName = 'COD_RRR_RHA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object sqlHisAltCAMPO_RHA: TStringField
      DisplayWidth = 100
      FieldName = 'CAMPO_RHA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlHisAltVALOR_ANT_RHA: TStringField
      FieldName = 'VALOR_ANT_RHA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlHisAltVALOR_AUT_RHA: TStringField
      FieldName = 'VALOR_AUT_RHA'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlHisAltLOGIN_ALT_RHA: TStringField
      FieldName = 'LOGIN_ALT_RHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlHisAltDTA_ALT_RHA: TSQLTimeStampField
      FieldName = 'DTA_ALT_RHA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlHisAltOBS_RHA: TMemoField
      FieldName = 'OBS_RHA'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsRec: TDataSource
    DataSet = cdsRec
    Left = 1030
    Top = 342
  end
  object cdsRec: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_RCT;COD_RRR_RCT'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspRec'
    AfterOpen = cdsRecAfterOpen
    Left = 1002
    Top = 342
  end
  object dspRec: TDataSetProvider
    DataSet = sqlRec
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspRecAfterUpdateRecord
    BeforeUpdateRecord = dspRecBeforeUpdateRecord
    OnGetTableName = dspRecGetTableName
    Left = 974
    Top = 342
  end
  object sqlRec: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT RR_REL_RECEITAS.*,'#13#10'       RR_CALCULO.DESCRI_RCA,'#13#10'      ' +
      ' RR_CALCULO.VALOR_RCA'#13#10'FROM RR_REL_RECEITAS'#13#10'LEFT JOIN RR_CALCUL' +
      'O ON RR_CALCULO.COD_EMP_RCA = RR_REL_RECEITAS.COD_EMP_RCT'#13#10'     ' +
      '               AND RR_CALCULO.COD_REC_RCA = RR_REL_RECEITAS.COD_' +
      'REC_RCT'#13#10'                    AND RR_CALCULO.COD_DESDOREC_RCA = R' +
      'R_REL_RECEITAS.COD_DDO_RCT'#13#10'WHERE RR_REL_RECEITAS.COD_EMP_RCT = ' +
      ':empresa'#13#10'  AND RR_REL_RECEITAS.COD_RRR_RCT = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 946
    Top = 342
    object sqlRecCOD_EMP_RCT: TIntegerField
      FieldName = 'COD_EMP_RCT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlRecCOD_RCT: TIntegerField
      FieldName = 'COD_RCT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlRecCOD_RRR_RCT: TStringField
      FieldName = 'COD_RRR_RCT'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object sqlRecCOD_REC_RCT: TIntegerField
      FieldName = 'COD_REC_RCT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlRecCOD_DDO_RCT: TIntegerField
      FieldName = 'COD_DDO_RCT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlRecQTD_RCT: TFloatField
      FieldName = 'QTD_RCT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlRecLOGIN_INC_RCT: TStringField
      FieldName = 'LOGIN_INC_RCT'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlRecDTA_INC_RCT: TSQLTimeStampField
      FieldName = 'DTA_INC_RCT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlRecDESCRI_RCA: TStringField
      FieldName = 'DESCRI_RCA'
      ProviderFlags = []
      Size = 100
    end
    object sqlRecVALOR_RCA: TFloatField
      FieldName = 'VALOR_RCA'
      ProviderFlags = []
    end
  end
  object dsAOutUso: TDataSource
    DataSet = cdsAOutUso
    Left = 1028
    Top = 298
  end
  object cdsAOutUso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_AOT;COD_RRR_AOT'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspAOutUso'
    AfterOpen = cdsAOutUsoAfterOpen
    Left = 1000
    Top = 298
  end
  object dspAOutUso: TDataSetProvider
    DataSet = sqlAOutUso
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspAOutUsoAfterUpdateRecord
    BeforeUpdateRecord = dspAOutUsoBeforeUpdateRecord
    OnGetTableName = dspAOutUsoGetTableName
    Left = 972
    Top = 298
  end
  object sqlAOutUso: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT RR_CADRR_AREAOUT.*,'#13#10'       RR_TPPRODOUTROS.DESCR_RPO,'#13#10' ' +
      '      RR_TPINDRESTUSO.DESCR_RIU'#13#10'FROM RR_CADRR_AREAOUT'#13#10'LEFT JOI' +
      'N RR_TPPRODOUTROS ON COD_EMP_RPO = COD_EMP_AOT AND COD_RPO = COD' +
      '_BEN_AOT'#13#10'LEFT JOIN RR_TPINDRESTUSO ON COD_EMP_RIU = COD_EMP_AOT' +
      ' AND COD_RIU = COD_INDRESTUSO_AOT'#13#10'WHERE COD_EMP_AOT = :empresa'#13 +
      #10'  AND COD_RRR_AOT = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 944
    Top = 298
    object sqlAOutUsoCOD_EMP_AOT: TIntegerField
      FieldName = 'COD_EMP_AOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlAOutUsoCOD_AOT: TIntegerField
      FieldName = 'COD_AOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlAOutUsoCOD_RRR_AOT: TStringField
      FieldName = 'COD_RRR_AOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlAOutUsoCOD_BEN_AOT: TStringField
      FieldName = 'COD_BEN_AOT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlAOutUsoAREA_UTIL_AOT: TFloatField
      FieldName = 'AREA_UTIL_AOT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlAOutUsoCOD_INDRESTUSO_AOT: TStringField
      FieldName = 'COD_INDRESTUSO_AOT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlAOutUsoLOGIN_INC_AOT: TStringField
      FieldName = 'LOGIN_INC_AOT'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlAOutUsoDTA_INC_AOT: TSQLTimeStampField
      FieldName = 'DTA_INC_AOT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlAOutUsoLOGIN_ALT_AOT: TStringField
      FieldName = 'LOGIN_ALT_AOT'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlAOutUsoDTA_ALT_AOT: TSQLTimeStampField
      FieldName = 'DTA_ALT_AOT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlAOutUsoDESCR_RPO: TStringField
      FieldName = 'DESCR_RPO'
      ProviderFlags = []
      Size = 70
    end
    object sqlAOutUsoDESCR_RIU: TStringField
      FieldName = 'DESCR_RIU'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsARest: TDataSource
    DataSet = cdsARest
    Left = 1031
    Top = 61
  end
  object cdsARest: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_ART;COD_RRR_ART'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspARest'
    AfterOpen = cdsARestAfterOpen
    Left = 1003
    Top = 61
  end
  object dspARest: TDataSetProvider
    DataSet = sqlARest
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspARestAfterUpdateRecord
    BeforeUpdateRecord = dspARestBeforeUpdateRecord
    OnGetTableName = dspARestGetTableName
    Left = 975
    Top = 61
  end
  object sqlARest: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT RR_CADRR_AREAREST.*,'#13#10'       RR_TPINDRESTUSO.DESCR_RIU'#13#10'F' +
      'ROM RR_CADRR_AREAREST'#13#10'LEFT JOIN RR_TPINDRESTUSO ON COD_EMP_RIU ' +
      '= COD_EMP_ART AND COD_RIU = COD_INDRESTUSO_ART'#13#10'WHERE COD_EMP_AR' +
      'T = :empresa'#13#10'  AND COD_RRR_ART = :rural'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rural'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 947
    Top = 61
    object sqlARestCOD_EMP_ART: TIntegerField
      FieldName = 'COD_EMP_ART'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlARestCOD_ART: TIntegerField
      FieldName = 'COD_ART'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlARestCOD_RRR_ART: TStringField
      FieldName = 'COD_RRR_ART'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlARestCOD_INDRESTUSO_ART: TStringField
      FieldName = 'COD_INDRESTUSO_ART'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object sqlARestAREA_UTIL_ART: TFloatField
      FieldName = 'AREA_UTIL_ART'
      ProviderFlags = [pfInUpdate]
    end
    object sqlARestLOGIN_INC_ART: TStringField
      FieldName = 'LOGIN_INC_ART'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlARestDTA_INC_ART: TSQLTimeStampField
      FieldName = 'DTA_INC_ART'
      ProviderFlags = [pfInUpdate]
    end
    object sqlARestLOGIN_ALT_ART: TStringField
      FieldName = 'LOGIN_ALT_ART'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlARestDTA_ALT_ART: TSQLTimeStampField
      FieldName = 'DTA_ALT_ART'
      ProviderFlags = [pfInUpdate]
    end
    object sqlARestDESCR_RIU: TStringField
      FieldName = 'DESCR_RIU'
      ProviderFlags = []
      Size = 70
    end
  end
  object sqlCRT: TSQLDataSet
    SchemaName = 'SYSDBA'
    CommandText = 
      'SELECT RR_REL_CRT.*,'#13#10'       RR_CAD_CRT.DESCRI_RR1,'#13#10'       RR_C' +
      'AD_DESDOCRT.DESCRI_RR2'#13#10'FROM RR_REL_CRT'#13#10'INNER JOIN RR_CAD_CRT O' +
      'N RR_CAD_CRT.COD_EMP_RR1 = RR_REL_CRT.COD_EMP_RR3'#13#10'             ' +
      '        AND RR_CAD_CRT.COD_RR1 = RR_REL_CRT.COD_CRT_RR3'#13#10'INNER J' +
      'OIN RR_CAD_DESDOCRT ON RR_CAD_DESDOCRT.COD_EMP_RR2 = RR_REL_CRT.' +
      'COD_EMP_RR3'#13#10'                          AND RR_CAD_DESDOCRT.COD_C' +
      'RT_RR2 = RR_REL_CRT.COD_CRT_RR3'#13#10'                          AND R' +
      'R_CAD_DESDOCRT.COD_RR2 = RR_REL_CRT.COD_DCR_RR3'#13#10'WHERE RR_REL_CR' +
      'T.COD_EMP_RR3 = :empresa'#13#10'  AND RR_REL_CRT.COD_RRR_RR3 = :cod'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 945
    Top = 201
    object sqlCRTCOD_EMP_RR3: TIntegerField
      FieldName = 'COD_EMP_RR3'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCRTCOD_RR3: TIntegerField
      FieldName = 'COD_RR3'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCRTCOD_RRR_RR3: TStringField
      FieldName = 'COD_RRR_RR3'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object sqlCRTCOD_CRT_RR3: TStringField
      FieldName = 'COD_CRT_RR3'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 4
    end
    object sqlCRTCOD_DCR_RR3: TStringField
      FieldName = 'COD_DCR_RR3'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 4
    end
    object sqlCRTVALOR_RR3: TStringField
      FieldName = 'VALOR_RR3'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object sqlCRTLOGIN_INC_RR3: TStringField
      FieldName = 'LOGIN_INC_RR3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCRTDTA_INC_RR3: TSQLTimeStampField
      FieldName = 'DTA_INC_RR3'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCRTLOGIN_ALT_RR3: TStringField
      FieldName = 'LOGIN_ALT_RR3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCRTDTA_ALT_RR3: TSQLTimeStampField
      FieldName = 'DTA_ALT_RR3'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCRTDESCRI_RR1: TStringField
      FieldName = 'DESCRI_RR1'
      ProviderFlags = []
      Size = 70
    end
    object sqlCRTDESCRI_RR2: TStringField
      FieldName = 'DESCRI_RR2'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspCRT: TDataSetProvider
    DataSet = sqlCRT
    Options = [poIncFieldProps, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspCRTAfterUpdateRecord
    BeforeUpdateRecord = dspCRTBeforeUpdateRecord
    OnGetTableName = dspCRTGetTableName
    Left = 973
    Top = 201
  end
  object cdsCRT: TClientDataSet
    Tag = -1
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_RR3;COD_RRR_RR3'
    MasterFields = 'COD_EMP_RRR;COD_RRR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspCRT'
    AfterOpen = cdsCRTAfterOpen
    OnNewRecord = cdsCRTNewRecord
    OnReconcileError = cdsCadastroReconcileError
    Left = 1001
    Top = 201
    object cdsCRTCOD_EMP_RR3: TIntegerField
      FieldName = 'COD_EMP_RR3'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCRTCOD_RR3: TIntegerField
      FieldName = 'COD_RR3'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCRTCOD_RRR_RR3: TStringField
      FieldName = 'COD_RRR_RR3'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 25
    end
    object cdsCRTCOD_CRT_RR3: TStringField
      FieldName = 'COD_CRT_RR3'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 4
    end
    object cdsCRTCOD_DCR_RR3: TStringField
      FieldName = 'COD_DCR_RR3'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 4
    end
    object cdsCRTVALOR_RR3: TStringField
      FieldName = 'VALOR_RR3'
      ProviderFlags = [pfInUpdate]
      Size = 256
    end
    object cdsCRTLOGIN_INC_RR3: TStringField
      FieldName = 'LOGIN_INC_RR3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCRTDTA_INC_RR3: TSQLTimeStampField
      FieldName = 'DTA_INC_RR3'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCRTLOGIN_ALT_RR3: TStringField
      FieldName = 'LOGIN_ALT_RR3'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsCRTDTA_ALT_RR3: TSQLTimeStampField
      FieldName = 'DTA_ALT_RR3'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCRTDESCRI_RR1: TStringField
      FieldName = 'DESCRI_RR1'
      ProviderFlags = []
      Size = 70
    end
    object cdsCRTDESCRI_RR2: TStringField
      FieldName = 'DESCRI_RR2'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsCRT: TDataSource
    DataSet = cdsCRT
    Left = 1029
    Top = 201
  end
  object sqlHisto: TSQLDataSet
    CommandText = 
      'SELECT GR_HISTORICOS.*,CAST( SUBSTRING(GR_HISTORICOS.HISTORICO_G' +
      'HI FROM 1 FOR 50)  AS VARCHAR(50)) AS RESUMO'#13#10'FROM GR_HISTORICOS' +
      #13#10'WHERE COD_EMP_GHI = :empresa'#13#10'AND COD_ORIG_GHI = :cod'#13#10'AND ORI' +
      'GEM_GHI = '#39'RUR'#39#13#10'ORDER BY DTA_GHI DESC'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 944
    Top = 251
  end
  object dspHisto: TDataSetProvider
    DataSet = sqlHisto
    Left = 972
    Top = 251
  end
  object cdsHisto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHisto'
    Left = 1000
    Top = 251
  end
  object dsHisto: TDataSource
    DataSet = cdsHisto
    Left = 1028
    Top = 251
  end
  object popDWG: TPopupMenu
    Left = 808
    Top = 4
    object VisualizarImagem1: TMenuItem
      Caption = 'Visualizar Imagem'
    end
  end
  object qrx2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.Conexao
    Left = 920
    Top = 4
  end
  object dsSocios: TDataSource
    DataSet = cdsSocios
    Left = 890
    Top = 154
  end
  object dspSocios: TDataSetProvider
    DataSet = sqlSocios
    Options = [poIncFieldProps, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspSociosUpdateError
    AfterUpdateRecord = dspSociosAfterUpdateRecord
    BeforeUpdateRecord = dspSociosBeforeUpdateRecord
    OnGetTableName = dspSociosGetTableName
    Left = 834
    Top = 154
  end
  object sqlSocios: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'  SOC.*,'#13#10'  CNT.NOME_CNT,'#13#10'  CNT.CNPJ_CNT,'#13#10'  CNT.RG_CNT' +
      #13#10'FROM'#13#10'  RR_CAD_SOCIOS SOC'#13#10'  LEFT JOIN GR_CONTRIBUINTES CNT ON' +
      ' CNT.COD_EMP_CNT = SOC.COD_EMP_SOC AND CNT.COD_CNT = SOC.COD_CNT' +
      '_SOC'#13#10'WHERE'#13#10'  SOC.COD_EMP_SOC = :EMPRESA'#13#10'  AND SOC.COD_RRR_SOC' +
      ' = :COD'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 806
    Top = 154
    object sqlSociosCOD_EMP_SOC: TIntegerField
      FieldName = 'COD_EMP_SOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlSociosCOD_RRR_SOC: TStringField
      FieldName = 'COD_RRR_SOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlSociosCOD_CNT_SOC: TStringField
      FieldName = 'COD_CNT_SOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object sqlSociosQUALIFIC_SOC: TStringField
      FieldName = 'QUALIFIC_SOC'
      Size = 60
    end
    object sqlSociosDTINI_SOC: TDateField
      FieldName = 'DTINI_SOC'
    end
    object sqlSociosDTFIM_SOC: TDateField
      FieldName = 'DTFIM_SOC'
    end
    object sqlSociosNOME_CNT: TStringField
      FieldName = 'NOME_CNT'
      ProviderFlags = []
      Size = 150
    end
    object sqlSociosCNPJ_CNT: TStringField
      FieldName = 'CNPJ_CNT'
      ProviderFlags = []
    end
    object sqlSociosRG_CNT: TStringField
      FieldName = 'RG_CNT'
      ProviderFlags = []
    end
  end
  object cdsSocios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSocios'
    OnNewRecord = cdsSociosNewRecord
    OnReconcileError = cdsCadastroReconcileError
    Left = 862
    Top = 154
    object cdsSociosCOD_EMP_SOC: TIntegerField
      FieldName = 'COD_EMP_SOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSociosCOD_RRR_SOC: TStringField
      FieldName = 'COD_RRR_SOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object cdsSociosCOD_CNT_SOC: TStringField
      FieldName = 'COD_CNT_SOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object cdsSociosQUALIFIC_SOC: TStringField
      FieldName = 'QUALIFIC_SOC'
      Size = 60
    end
    object cdsSociosDTINI_SOC: TDateField
      FieldName = 'DTINI_SOC'
    end
    object cdsSociosDTFIM_SOC: TDateField
      FieldName = 'DTFIM_SOC'
    end
    object cdsSociosNOME_CNT: TStringField
      FieldName = 'NOME_CNT'
      Size = 150
    end
    object cdsSociosCNPJ_CNT: TStringField
      FieldName = 'CNPJ_CNT'
    end
    object cdsSociosRG_CNT: TStringField
      FieldName = 'RG_CNT'
    end
  end
  object popAnexo: TPopupMenu
    Left = 892
    Top = 4
    object AnexarFotos1: TMenuItem
      Caption = 'Fotos'
      ImageIndex = 0
      OnClick = AnexarFotos1Click
    end
    object Documentos2: TMenuItem
      Caption = 'Documentos'
      ImageIndex = 1
      OnClick = Documentos2Click
    end
  end
end
