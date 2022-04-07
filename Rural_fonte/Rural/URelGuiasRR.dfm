inherited FRelGuiasRR: TFRelGuiasRR
  Left = 55
  Top = 58
  Caption = 'Emiss'#227'o de Guias'
  ClientHeight = 385
  ClientWidth = 547
  OldCreateOrder = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  ExplicitWidth = 553
  ExplicitHeight = 414
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel3: TRzPanel
    Width = 545
    Height = 346
    Align = alLeft
    ExplicitWidth = 545
    ExplicitHeight = 346
    inherited Panel1: TPanel
      Width = 541
      Height = 24
      TabOrder = 6
      ExplicitWidth = 541
      ExplicitHeight = 24
      DesignSize = (
        541
        24)
      inherited RzBackground1: TRzBackground
        Width = 537
        Height = 20
        ExplicitWidth = 589
        ExplicitHeight = 20
      end
      inherited Label2: TLabel
        Width = 146
        Caption = 'Emiss'#227'o de Guias'
        ExplicitWidth = 146
      end
      object cbLayouts: TwwDBLookupCombo
        Left = 295
        Top = 1
        Width = 244
        Height = 21
        Anchors = [akTop, akRight]
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DESCR_RLT'#9'30'#9'Descri'#231#227'o'#9'T'#9
          'PADRAO_RLT'#9'6'#9'Padr'#227'o'#9'T'#9)
        LookupTable = dm.cdsLayoutAPL
        LookupField = 'DESCR_RLT'
        Options = [loTitles]
        Style = csDropDownList
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    inherited RzSizePanel1: TRzSizePanel
      Top = 225
      Width = 541
      Height = 119
      TabOrder = 5
      OnHotSpotClick = RzSizePanel1HotSpotClick
      ExplicitTop = 225
      ExplicitWidth = 541
      ExplicitHeight = 119
      object GroupBox6: TGroupBox
        Left = 3
        Top = 58
        Width = 532
        Height = 55
        Caption = ' Par'#226'metros '
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        object ckAtualiza: TEvCheckBox
          Left = 8
          Top = 14
          Width = 128
          Height = 17
          Caption = ' Atualizar Valores'
          TabOrder = 0
          OnClick = ckAtualizaClick
          OnKeyDown = msk1KeyDown
        end
        object mkAtualizacao: TMaskEdit
          Left = 133
          Top = 12
          Width = 72
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnKeyDown = msk1KeyDown
        end
        object cCapa: TEvCheckBox
          Left = 224
          Top = 11
          Width = 65
          Height = 17
          Caption = 'Capa'
          Checked = True
          TabOrder = 2
        end
        object cRecibo: TEvCheckBox
          Left = 224
          Top = 33
          Width = 65
          Height = 17
          Caption = 'Recibo'
          Checked = True
          TabOrder = 3
        end
        object cParcelas: TEvCheckBox
          Left = 293
          Top = 11
          Width = 97
          Height = 17
          Caption = 'Parcelas'
          Checked = True
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object cDemons: TEvCheckBox
          Left = 293
          Top = 33
          Width = 108
          Height = 17
          Caption = 'Demonstrativo'
          Checked = True
          TabOrder = 5
        end
        object ckDesconto: TEvCheckBox
          Left = 8
          Top = 35
          Width = 209
          Height = 17
          Caption = ' Emitir Carne com Descontos ?'
          TabOrder = 6
          OnKeyDown = msk1KeyDown
        end
        object ckBloqueadas: TEvCheckBox
          Left = 386
          Top = 11
          Width = 141
          Height = 17
          Caption = 'Emitir Parcelas Bloq.'
          TabOrder = 7
        end
      end
      object RDSITUACAO: TRadioGroup
        Left = 2
        Top = 16
        Width = 533
        Height = 41
        Caption = ' Situa'#231#227'o das Parcelas '
        Columns = 3
        Ctl3D = True
        ItemIndex = 1
        Items.Strings = (
          'Pagas'
          'Em Aberto'
          'Ambos')
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object rdOrdem: TRadioGroup
      Left = 5
      Top = 29
      Width = 532
      Height = 41
      Caption = 'Ordem'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Cadastro'
        'Endere'#231'o'
        'Endere'#231'o Corresp')
      TabOrder = 0
    end
    object GroupBox10: TGroupBox
      Left = 5
      Top = 72
      Width = 85
      Height = 49
      Caption = ' Exerc'#237'cio '
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object msk13: TMaskEdit
        Left = 7
        Top = 19
        Width = 71
        Height = 21
        Ctl3D = True
        EditMask = '!9999;1;_'
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 0
        Text = '    '
        OnKeyDown = msk1KeyDown
      end
    end
    object GroupBox1: TGroupBox
      Left = 92
      Top = 72
      Width = 287
      Height = 49
      Caption = ' Cadastro '
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      object btnCadINI: TSpeedButton
        Left = 114
        Top = 18
        Width = 23
        Height = 22
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
        OnClick = btnCadINIClick
      end
      object btnCadFIM: TSpeedButton
        Left = 250
        Top = 18
        Width = 23
        Height = 22
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
        OnClick = btnCadFIMClick
      end
      object msk1: TMaskEdit
        Left = 12
        Top = 19
        Width = 101
        Height = 21
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = msk1Enter
        OnExit = msk1Exit
        OnKeyDown = msk1KeyDown
      end
      object msk2: TMaskEdit
        Left = 148
        Top = 19
        Width = 101
        Height = 21
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = msk1Enter
        OnExit = msk2Exit
        OnKeyDown = msk1KeyDown
      end
    end
    object GroupBox3: TGroupBox
      Left = 381
      Top = 72
      Width = 156
      Height = 49
      Caption = ' Parcelas '
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      object Label7: TLabel
        Left = 69
        Top = 25
        Width = 22
        Height = 13
        Caption = 'At'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object msk9: TMaskEdit
        Left = 15
        Top = 21
        Width = 42
        Height = 21
        Ctl3D = True
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 0
        OnKeyDown = msk1KeyDown
      end
      object msk10: TMaskEdit
        Left = 99
        Top = 21
        Width = 42
        Height = 21
        Ctl3D = True
        MaxLength = 4
        ParentCtl3D = False
        TabOrder = 1
        OnKeyDown = msk1KeyDown
      end
    end
    object gpTipoGuia: TGroupBox
      Left = 5
      Top = 122
      Width = 532
      Height = 95
      Caption = ' Tipo de Guia '
      TabOrder = 4
      DesignSize = (
        532
        95)
      object checkCobrRegistrada: TEvCheckBox
        Left = 179
        Top = 18
        Width = 274
        Height = 17
        Caption = 'Gerar Lan'#231'to. de cobran'#231'a registrada?'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
      end
      object gpConvenio: TGroupBox
        Left = 6
        Top = 40
        Width = 521
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = 
          ' Selecione o Conv'#234'nio (Somente quando selecionado Ficha de Compe' +
          'nsa'#231#227'o) '
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        DesignSize = (
          521
          49)
        object comboConvenio: TDBLookupComboBox
          Left = 8
          Top = 18
          Width = 506
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DropDownRows = 20
          KeyField = 'CEDENTE_CNV'
          ListField = 'DESCR;CEDENTE_CNV;BANCO_CNV;AGENCIA_CNV;CONTA_CNV'
          ListSource = dm.dsCadConvenios
          TabOrder = 0
        end
      end
      object comboTipoGuia: TRzComboBox
        Left = 6
        Top = 16
        Width = 167
        Height = 21
        Style = csDropDownList
        DropDownCount = 21
        TabOrder = 0
        Text = 'Arrecada'#231#227'o'
        OnChange = comboTipoGuiaChange
        Items.Strings = (
          'Arrecada'#231#227'o'
          'Ficha de Compensa'#231#227'o')
        ItemIndex = 0
        Values.Strings = (
          '0'
          '1')
      end
    end
  end
  inherited RzPanel1: TRzPanel
    Top = 346
    Width = 547
    ExplicitTop = 346
    ExplicitWidth = 547
    inherited BtnSair: TRzBitBtn
      Left = 444
      ExplicitLeft = 444
    end
    inherited BtnConfirma: TRzBitBtn
      Left = 340
      OnClick = BtnConfirmaClick
      ExplicitLeft = 340
    end
    inherited BtnLayout: TRzBitBtn
      OnClick = BtnLayoutClick
      ExplicitLeft = 3
    end
  end
  inherited frxDesigner: TfrxDesigner
    Left = 756
    Top = 221
  end
  inherited SaveDialog1: TRzSaveDialog
    Left = 728
    Top = 221
  end
  object cdsCob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCob'
    Left = 621
    Top = 213
  end
  object dspCob: TDataSetProvider
    DataSet = sqlCob
    Left = 593
    Top = 213
  end
  object sqlCob: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM RR_COBRANCA'#13#10'WHERE COD_EMP_COB = :empresa'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 565
    Top = 213
  end
  object DBUnica: TfrxDBDataset
    UserName = 'DBUnica'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_EMP_PAR=COD_EMP_PAR'
      'COD_DIV_PAR=COD_DIV_PAR'
      'TOTALLANCADO=TOTALLANCADO'
      'NRPARCELA=NRPARCELA'
      'VALORPRIMEIRA=VALORPRIMEIRA'
      'VALORUNICA=VALORUNICA'
      'DESCONTOUNICA=DESCONTOUNICA')
    DataSource = dsUnica
    BCDToCurrency = False
    Left = 844
    Top = 168
  end
  object dsUnica: TDataSource
    DataSet = cdsUnica
    Left = 816
    Top = 168
  end
  object cdsUnica: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_PAR;COD_DIV_PAR'
    MasterFields = 'COD_EMP_DIV;COD_DIV'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspUnica'
    Left = 788
    Top = 168
    object cdsUnicaCOD_EMP_PAR: TIntegerField
      FieldName = 'COD_EMP_PAR'
      Required = True
    end
    object cdsUnicaCOD_DIV_PAR: TIntegerField
      FieldName = 'COD_DIV_PAR'
      Required = True
    end
    object cdsUnicaTOTALLANCADO: TFloatField
      FieldName = 'TOTALLANCADO'
    end
    object cdsUnicaNRPARCELA: TIntegerField
      FieldName = 'NRPARCELA'
    end
    object cdsUnicaVALORPRIMEIRA: TFloatField
      FieldName = 'VALORPRIMEIRA'
    end
    object cdsUnicaVALORUNICA: TFloatField
      FieldName = 'VALORUNICA'
    end
    object cdsUnicaDESCONTOUNICA: TFloatField
      FieldName = 'DESCONTOUNICA'
    end
  end
  object dspUnica: TDataSetProvider
    DataSet = sqlUnica
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 760
    Top = 168
  end
  object sqlUnica: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT A.COD_EMP_PAR,'#13#10'       A.COD_DIV_PAR,'#13#10'       (SUM(COALES' +
      'CE(B.LVALOR_FRC,0))-SUM(COALESCE(B.LISENTO_FRC,0))) AS TOTALLANC' +
      'ADO,'#13#10'       (SELECT COUNT(*) FROM FI_PARCELA C WHERE C.COD_EMP_' +
      'PAR=A.COD_EMP_PAR AND C.COD_DIV_PAR=A.COD_DIV_PAR AND C.UNICA_PA' +
      'R<>'#39'S'#39') AS NRPARCELA,'#13#10'       (SELECT (SUM(COALESCE(D.LVALOR_FRC' +
      ',0))-SUM(COALESCE(D.LISENTO_FRC,0))) FROM FI_RECEITAS D WHERE D.' +
      'COD_EMP_FRC=A.COD_EMP_PAR AND D.COD_DIV_FRC=A.COD_DIV_PAR AND D.' +
      'PARCELA_PAR_FRC=1) AS VALORPRIMEIRA,'#13#10'       CASE'#13#10'        WHEN ' +
      '(SELECT (SUM(COALESCE(E.LVALOR_FRC,0))-SUM(COALESCE(E.LISENTO_FR' +
      'C,0))-SUM(COALESCE(E.LDESCOVENCI_FRC,0))) FROM FI_RECEITAS E WHE' +
      'RE E.COD_EMP_FRC=A.COD_EMP_PAR AND E.COD_DIV_FRC=A.COD_DIV_PAR A' +
      'ND E.PARCELA_PAR_FRC=0) < 0 THEN 0'#13#10'        ELSE (SELECT (SUM(CO' +
      'ALESCE(E.LVALOR_FRC,0))-SUM(COALESCE(E.LISENTO_FRC,0))-SUM(COALE' +
      'SCE(E.LDESCOVENCI_FRC,0))) FROM FI_RECEITAS E WHERE E.COD_EMP_FR' +
      'C=A.COD_EMP_PAR AND E.COD_DIV_FRC=A.COD_DIV_PAR AND E.PARCELA_PA' +
      'R_FRC=0)'#13#10'       END AS VALORUNICA,'#13#10'       (SELECT SUM(COALESCE' +
      '(F.LDESCOVENCI_FRC,0)) FROM FI_RECEITAS F WHERE F.COD_EMP_FRC=A.' +
      'COD_EMP_PAR AND F.COD_DIV_FRC=A.COD_DIV_PAR AND F.PARCELA_PAR_FR' +
      'C=0) AS DESCONTOUNICA'#13#10'FROM FI_PARCELA A'#13#10'INNER JOIN FI_RECEITAS' +
      ' B  ON A.COD_EMP_PAR = B.COD_EMP_FRC'#13#10'                         A' +
      'ND A.COD_DIV_PAR = B.COD_DIV_FRC'#13#10'                         AND A' +
      '.TP_PAR = B.TP_PAR_FRC'#13#10'                         AND A.PARCELA_P' +
      'AR = B.PARCELA_PAR_FRC'#13#10'WHERE A.COD_EMP_PAR = :empresa  AND A.CO' +
      'D_DIV_PAR =:divida AND A.UNICA_PAR = '#39'N'#39#13#10'GROUP BY A.COD_EMP_PAR' +
      ', A.COD_DIV_PAR'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'divida'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 732
    Top = 168
    object sqlUnicaCOD_EMP_PAR: TIntegerField
      FieldName = 'COD_EMP_PAR'
      Required = True
    end
    object sqlUnicaCOD_DIV_PAR: TIntegerField
      FieldName = 'COD_DIV_PAR'
      Required = True
    end
    object sqlUnicaTOTALLANCADO: TFloatField
      FieldName = 'TOTALLANCADO'
    end
    object sqlUnicaNRPARCELA: TIntegerField
      FieldName = 'NRPARCELA'
    end
    object sqlUnicaVALORPRIMEIRA: TFloatField
      FieldName = 'VALORPRIMEIRA'
    end
    object sqlUnicaVALORUNICA: TFloatField
      FieldName = 'VALORUNICA'
    end
    object sqlUnicaDESCONTOUNICA: TFloatField
      FieldName = 'DESCONTOUNICA'
    end
  end
  object dbSorteio: TfrxDBDataset
    UserName = 'dbSorteio'
    CloseDataSource = True
    FieldAliases.Strings = (
      'NRO_PREMIO_PRE=NRO_PREMIO_PRE'
      'COD_EMP_PRE=COD_EMP_PRE'
      'ANO_PRE=ANO_PRE'
      'COD_CAD_PRE=COD_CAD_PRE'
      'COD_MOD_PRE=COD_MOD_PRE')
    DataSource = dsSorteio
    BCDToCurrency = False
    Left = 843
    Top = 112
  end
  object dsSorteio: TDataSource
    DataSet = cdsSorteio
    Left = 815
    Top = 112
  end
  object cdsSorteio: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_PRE;ANO_PRE;COD_CAD_PRE'
    MasterFields = 'COD_EMP_PAR;ANO_DIV;COD_CAD_DIV'
    MasterSource = ds
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspSorteio'
    Left = 787
    Top = 112
    object cdsSorteioNRO_PREMIO_PRE: TFloatField
      FieldName = 'NRO_PREMIO_PRE'
    end
    object cdsSorteioCOD_EMP_PRE: TIntegerField
      FieldName = 'COD_EMP_PRE'
      Required = True
    end
    object cdsSorteioANO_PRE: TIntegerField
      FieldName = 'ANO_PRE'
    end
    object cdsSorteioCOD_CAD_PRE: TStringField
      FieldName = 'COD_CAD_PRE'
      Size = 25
    end
    object cdsSorteioCOD_MOD_PRE: TIntegerField
      FieldName = 'COD_MOD_PRE'
    end
  end
  object dspSorteio: TDataSetProvider
    DataSet = sqlSorteio
    Left = 759
    Top = 112
  end
  object sqlSorteio: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT GR_PREMIOS.COD_EMP_PRE,'#13#10'       GR_PREMIOS.ANO_PRE,'#13#10'    ' +
      '   GR_PREMIOS.COD_CAD_PRE,'#13#10'       GR_PREMIOS.COD_MOD_PRE,'#13#10'    ' +
      '   GR_PREMIOS.NRO_PREMIO_PRE'#13#10'FROM GR_PREMIOS'#13#10'WHERE GR_PREMIOS.' +
      'COD_EMP_PRE = :empresa'#13#10'  AND GR_PREMIOS.ANO_PRE = :ano'#13#10'  AND G' +
      'R_PREMIOS.COD_MOD_PRE = 4'#13#10'  AND GR_PREMIOS.COD_CAD_PRE = :cadas' +
      'tro'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cadastro'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 731
    Top = 112
    object sqlSorteioNRO_PREMIO_PRE: TFloatField
      FieldName = 'NRO_PREMIO_PRE'
    end
    object sqlSorteioCOD_EMP_PRE: TIntegerField
      FieldName = 'COD_EMP_PRE'
      Required = True
    end
    object sqlSorteioANO_PRE: TIntegerField
      FieldName = 'ANO_PRE'
    end
    object sqlSorteioCOD_CAD_PRE: TStringField
      FieldName = 'COD_CAD_PRE'
      Size = 25
    end
    object sqlSorteioCOD_MOD_PRE: TIntegerField
      FieldName = 'COD_MOD_PRE'
    end
  end
  object sqlVenc: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM RR_VENCIMENTOS'#13#10'WHERE COD_EMP_VEN = :empresa'#13#10'  A' +
      'ND COD_STR_VEN = :setor'#13#10'  AND ANO_STR_VEN = :ano'#13#10'  AND NRPARCE' +
      '_VEN = :parcela'
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
        Name = 'setor'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'parcela'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 732
    Top = 64
    object sqlVencCOD_EMP_VEN: TIntegerField
      FieldName = 'COD_EMP_VEN'
      Required = True
    end
    object sqlVencCOD_STR_VEN: TStringField
      FieldName = 'COD_STR_VEN'
      Required = True
      Size = 4
    end
    object sqlVencANO_STR_VEN: TIntegerField
      FieldName = 'ANO_STR_VEN'
      Required = True
    end
    object sqlVencNRPARCE_VEN: TIntegerField
      FieldName = 'NRPARCE_VEN'
      Required = True
    end
    object sqlVencVENCI_VEN: TDateField
      FieldName = 'VENCI_VEN'
      Required = True
    end
    object sqlVencUNICA_VEN: TStringField
      FieldName = 'UNICA_VEN'
      Required = True
      Size = 1
    end
    object sqlVencMENS1_VEN: TMemoField
      FieldName = 'MENS1_VEN'
      BlobType = ftMemo
    end
  end
  object dspVenc: TDataSetProvider
    DataSet = sqlVenc
    Left = 760
    Top = 64
  end
  object cdsvenc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_VEN;COD_STR_VEN;ANO_STR_VEN;NRPARCE_VEN'
    MasterFields = 'COD_EMP_PAR;COD_STR_RRR;ANO_DIV;PARCELA_PAR'
    MasterSource = ds
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspVenc'
    Left = 788
    Top = 64
    object cdsvencCOD_EMP_VEN: TIntegerField
      FieldName = 'COD_EMP_VEN'
      Required = True
    end
    object cdsvencCOD_STR_VEN: TStringField
      FieldName = 'COD_STR_VEN'
      Required = True
      Size = 4
    end
    object cdsvencANO_STR_VEN: TIntegerField
      FieldName = 'ANO_STR_VEN'
      Required = True
    end
    object cdsvencNRPARCE_VEN: TIntegerField
      FieldName = 'NRPARCE_VEN'
      Required = True
    end
    object cdsvencVENCI_VEN: TDateField
      FieldName = 'VENCI_VEN'
      Required = True
    end
    object cdsvencUNICA_VEN: TStringField
      FieldName = 'UNICA_VEN'
      Required = True
      Size = 1
    end
    object cdsvencMENS1_VEN: TMemoField
      FieldName = 'MENS1_VEN'
      BlobType = ftMemo
    end
  end
  object dsvenc: TDataSource
    DataSet = cdsvenc
    Left = 816
    Top = 64
  end
  object dbVenc: TfrxDBDataset
    UserName = 'dbVenc'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_EMP_VEN=COD_EMP_VEN'
      'COD_STR_VEN=COD_STR_VEN'
      'ANO_STR_VEN=ANO_STR_VEN'
      'NRPARCE_VEN=NRPARCE_VEN'
      'VENCI_VEN=VENCI_VEN'
      'UNICA_VEN=UNICA_VEN'
      'MENS1_VEN=MENS1_VEN')
    DataSource = dsvenc
    BCDToCurrency = False
    Left = 844
    Top = 64
  end
  object dbResRec: TfrxDBDataset
    UserName = 'dbResRec'
    CloseDataSource = True
    FieldAliases.Strings = (
      'VALOR=VALOR'
      'LCORRECAO=LCORRECAO'
      'LMULTA=LMULTA'
      'LJUROS=LJUROS'
      'LDESCOR=LDESCOR'
      'LDESCOC=LDESCOC'
      'LDESCOM=LDESCOM'
      'LDESCOJ=LDESCOJ'
      'LACRES=LACRES'
      'LISENTO=LISENTO'
      'COD_EMP_FRC=COD_EMP_FRC'
      'COD_DIV_FRC=COD_DIV_FRC'
      'COD_REC_FRC=COD_REC_FRC'
      'ANO_FRC=ANO_FRC'
      'CODORIGEM_FRC=CODORIGEM_FRC'
      'desco=desco'
      'total=total'
      'DESCRI_REC=DESCRI_REC')
    DataSource = dsResRec
    BCDToCurrency = False
    Left = 843
    Top = 8
  end
  object dsResRec: TDataSource
    DataSet = cdsResRec
    Left = 815
    Top = 8
  end
  object cdsResRec: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_FRC;COD_DIV_FRC'
    MasterFields = 'COD_EMP_DIV;COD_DIV'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspResRec'
    OnCalcFields = cdsResRecCalcFields
    Left = 787
    Top = 8
    object cdsResRecVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsResRecLCORRECAO: TFloatField
      FieldName = 'LCORRECAO'
    end
    object cdsResRecLMULTA: TFloatField
      FieldName = 'LMULTA'
    end
    object cdsResRecLJUROS: TFloatField
      FieldName = 'LJUROS'
    end
    object cdsResRecLDESCOR: TFloatField
      FieldName = 'LDESCOR'
    end
    object cdsResRecLDESCOC: TFloatField
      FieldName = 'LDESCOC'
    end
    object cdsResRecLDESCOM: TFloatField
      FieldName = 'LDESCOM'
    end
    object cdsResRecLDESCOJ: TFloatField
      FieldName = 'LDESCOJ'
    end
    object cdsResRecLACRES: TFloatField
      FieldName = 'LACRES'
    end
    object cdsResRecLISENTO: TFloatField
      FieldName = 'LISENTO'
    end
    object cdsResRecCOD_EMP_FRC: TIntegerField
      FieldName = 'COD_EMP_FRC'
      Required = True
    end
    object cdsResRecCOD_DIV_FRC: TIntegerField
      FieldName = 'COD_DIV_FRC'
      Required = True
    end
    object cdsResRecCOD_REC_FRC: TIntegerField
      FieldName = 'COD_REC_FRC'
      Required = True
    end
    object cdsResRecANO_FRC: TStringField
      FieldName = 'ANO_FRC'
      Required = True
      Size = 4
    end
    object cdsResRecCODORIGEM_FRC: TIntegerField
      FieldName = 'CODORIGEM_FRC'
      Required = True
    end
    object cdsResRecdesco: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'desco'
      currency = False
    end
    object cdsResRectotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'total'
      currency = False
    end
    object cdsResRecDESCRI_REC: TStringField
      FieldName = 'DESCRI_REC'
      Size = 250
    end
  end
  object dspResRec: TDataSetProvider
    DataSet = sqlResRec
    Left = 759
    Top = 8
  end
  object sqlResRec: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT SUM(LVALOR_FRC) AS VALOR, SUM(LVRCORRE_FRC) AS LCORRECAO,' +
      #13#10'               SUM(LVRMULTA_FRC) AS LMULTA, SUM(LVRJUROS_FRC) ' +
      'AS LJUROS,'#13#10'               SUM(LDESCOR_FRC) AS LDESCOR, SUM(LDES' +
      'COC_FRC) AS LDESCOC,'#13#10'               SUM(LDESCOVENCI_FRC) AS LDE' +
      'SCOM, SUM(LDESCOJ_FRC) AS LDESCOJ,'#13#10'               SUM(LACRES_FR' +
      'C) AS LACRES,  SUM(LISENTO_FRC) AS LISENTO,'#13#10'               COD_' +
      'EMP_FRC, COD_DIV_FRC, COD_REC_FRC, '#13#10'               DESCRI_REC, ' +
      'ANO_FRC, CODORIGEM_FRC'#13#10'FROM FI_PARCELA'#13#10'INNER JOIN  FI_RECEITAS' +
      ' ON COD_EMP_FRC=COD_EMP_PAR AND COD_DIV_FRC=COD_DIV_PAR AND PARC' +
      'ELA_PAR_FRC=PARCELA_PAR AND TP_PAR=TP_PAR_FRC'#13#10'INNER JOIN GR_REC' +
      'EITA  ON COD_EMP_REC=COD_EMP_FRC AND COD_REC=COD_REC_FRC'#13#10'WHERE ' +
      'COD_EMP_FRC=:EMPRESA'#13#10'  AND COD_DIV_FRC=:DIVIDA'#13#10'  AND UNICA_PAR' +
      '='#39'N'#39#13#10'GROUP BY COD_EMP_FRC,COD_DIV_FRC,COD_REC_FRC,DESCRI_REC,AN' +
      'O_FRC,CODORIGEM_FRC'#13#10'ORDER BY CODORIGEM_FRC'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIVIDA'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 731
    Top = 8
    object sqlResRecVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlResRecLCORRECAO: TFloatField
      FieldName = 'LCORRECAO'
    end
    object sqlResRecLMULTA: TFloatField
      FieldName = 'LMULTA'
    end
    object sqlResRecLJUROS: TFloatField
      FieldName = 'LJUROS'
    end
    object sqlResRecLDESCOR: TFloatField
      FieldName = 'LDESCOR'
    end
    object sqlResRecLDESCOC: TFloatField
      FieldName = 'LDESCOC'
    end
    object sqlResRecLDESCOM: TFloatField
      FieldName = 'LDESCOM'
    end
    object sqlResRecLDESCOJ: TFloatField
      FieldName = 'LDESCOJ'
    end
    object sqlResRecLACRES: TFloatField
      FieldName = 'LACRES'
    end
    object sqlResRecLISENTO: TFloatField
      FieldName = 'LISENTO'
    end
    object sqlResRecCOD_EMP_FRC: TIntegerField
      FieldName = 'COD_EMP_FRC'
      Required = True
    end
    object sqlResRecCOD_DIV_FRC: TIntegerField
      FieldName = 'COD_DIV_FRC'
      Required = True
    end
    object sqlResRecCOD_REC_FRC: TIntegerField
      FieldName = 'COD_REC_FRC'
      Required = True
    end
    object sqlResRecANO_FRC: TStringField
      FieldName = 'ANO_FRC'
      Required = True
      Size = 4
    end
    object sqlResRecCODORIGEM_FRC: TIntegerField
      FieldName = 'CODORIGEM_FRC'
      Required = True
    end
    object sqlResRecDESCRI_REC: TStringField
      FieldName = 'DESCRI_REC'
      Size = 250
    end
  end
  object sqlResumo: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT RR_CAD_RURAL.COD_EMP_RRR EMPRESA,'#13#10'       RR_CAD_RURAL.CO' +
      'D_RRR CADASTRO,'#13#10'       RR_CAD_RURAL.LOGRAE_RRR LOGRAENTREGA,'#13#10' ' +
      '      RR_CAD_RURAL.NUMEROE_RRR NROENTREGA,'#13#10'       RR_CAD_RURAL.' +
      'COMPLEE_RRR COMPLEENTREGA,'#13#10'       RR_CAD_RURAL.CEPE_RRR CEPENTR' +
      'EGA,'#13#10'       GR_CIDADE.NOME_CID CIDADEENTREGA,'#13#10'       RR_CAD_RU' +
      'RAL.UFE_RRR UFENTREGA,'#13#10'       RR_CAD_RURAL.MATRIC_RRR INSCRICAO' +
      ','#13#10'       RR_CAD_RURAL.PROPRIEDADE_RRR PROPRIEDADE,'#13#10'       GR_C' +
      'ONTRIBUINTES.NOME_CNT CONTRIBUINTE,'#13#10'       GR_CONTRIBUINTES.CNP' +
      'J_CNT CNPJCNT,'#13#10'       RR_CAD_RURAL.LOGRA_RRR LOGRAPROPRIEDADE,'#13 +
      #10'       RR_CAD_RURAL.COMPL_RRR COMPLPROPRIEDADE,'#13#10'       RR_CAD_' +
      'RURAL.OBSLOGRA_RRR OBSLOGRAPROPRIEDADE,'#13#10'       RR_CAD_RURAL.ARE' +
      'AH_RRR HEQUITARE,'#13#10'       RR_CAD_RURAL.AREAE_RRR ALQUEIRE,'#13#10'    ' +
      '   RR_CAD_RURAL.AREAM_RRR METRO,'#13#10'       RR_CAD_RURAL.VVENAL_RRR' +
      ' VVENAL,'#13#10'       RR_CAD_RURAL.RESPONSA_RRR RESPONSAVEL,'#13#10'       ' +
      'RR_COBRANCA.DESCRI_COB COBRANCA'#13#10'FROM RR_CAD_RURAL'#13#10'INNER JOIN G' +
      'R_CONTRIBUINTES ON GR_CONTRIBUINTES.COD_EMP_CNT = RR_CAD_RURAL.C' +
      'OD_EMP_RRR'#13#10'                           AND GR_CONTRIBUINTES.COD_' +
      'CNT = RR_CAD_RURAL.COD_CNT_RRR'#13#10'LEFT JOIN RR_COBRANCA ON RR_COBR' +
      'ANCA.COD_EMP_COB = RR_CAD_RURAL.COD_EMP_RRR'#13#10'                   ' +
      '   AND RR_COBRANCA.COD_COB = RR_CAD_RURAL.COD_COB_RRR'#13#10'LEFT JOIN' +
      ' GR_CIDADE ON GR_CIDADE.COD_CID = RR_CAD_RURAL.COD_CIDE_RRR'#13#10'WHE' +
      'RE RR_CAD_RURAL.COD_EMP_RRR = :EMPRESA'#13#10'  AND RR_CAD_RURAL.COD_R' +
      'RR = :CADASTRO'
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
        Name = 'CADASTRO'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 568
    Top = 160
  end
  object dspResumo: TDataSetProvider
    DataSet = sqlResumo
    Left = 596
    Top = 160
  end
  object cdsResumo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'EMPRESA;CADASTRO'
    MasterFields = 'COD_EMP_PAR;COD_CAD_DIV'
    MasterSource = ds
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspResumo'
    Left = 624
    Top = 160
  end
  object dsResumo: TDataSource
    DataSet = cdsResumo
    Left = 652
    Top = 160
  end
  object dbResumo: TfrxDBDataset
    UserName = 'dbResumo'
    CloseDataSource = True
    FieldAliases.Strings = (
      'EMPRESA=EMPRESA'
      'CADASTRO=CADASTRO'
      'LOGRAENTREGA=LOGRAENTREGA'
      'NROENTREGA=NROENTREGA'
      'COMPLEENTREGA=COMPLEENTREGA'
      'CEPENTREGA=CEPENTREGA'
      'CIDADEENTREGA=CIDADEENTREGA'
      'UFENTREGA=UFENTREGA'
      'INSCRICAO=INSCRICAO'
      'PROPRIEDADE=PROPRIEDADE'
      'CONTRIBUINTE=CONTRIBUINTE'
      'CNPJCNT=CNPJCNT'
      'LOGRAPROPRIEDADE=LOGRAPROPRIEDADE'
      'COMPLPROPRIEDADE=COMPLPROPRIEDADE'
      'OBSLOGRAPROPRIEDADE=OBSLOGRAPROPRIEDADE'
      'HEQUITARE=HEQUITARE'
      'ALQUEIRE=ALQUEIRE'
      'METRO=METRO'
      'VVENAL=VVENAL'
      'RESPONSAVEL=RESPONSAVEL'
      'COBRANCA=COBRANCA')
    DataSource = dsResumo
    BCDToCurrency = False
    Left = 680
    Top = 160
  end
  object dbCadastro: TfrxDBDataset
    UserName = 'dbCadastro'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_EMP_DIV=COD_EMP_DIV'
      'COD_DIV=COD_DIV'
      'COD_MOD_DIV=COD_MOD_DIV'
      'COD_REP_DIV=COD_REP_DIV'
      'ANO_DIV=ANO_DIV'
      'ANOREF_DIV=ANOREF_DIV'
      'DATACADAST_DIV=DATACADAST_DIV'
      'ORIGEM_DIV=ORIGEM_DIV'
      'COD_CNT_DIV=COD_CNT_DIV'
      'CODC_CNT_DIV=CODC_CNT_DIV'
      'MATRICULA_DIV=MATRICULA_DIV'
      'COD_CAD_DIV=COD_CAD_DIV'
      'VRPREDIAL_DIV=VRPREDIAL_DIV'
      'VREXCEDENTE_DIV=VREXCEDENTE_DIV'
      'VRTERRIT_DIV=VRTERRIT_DIV'
      'AREAEDI_DIV=AREAEDI_DIV'
      'AREATER_DIV=AREATER_DIV'
      'AREAEXCE_DIV=AREAEXCE_DIV'
      'TESTADA_DIV=TESTADA_DIV'
      'SECAO_DIV=SECAO_DIV'
      'SETOR_DIV=SETOR_DIV'
      'QUADRA_DIV=QUADRA_DIV'
      'LOTE_DIV=LOTE_DIV'
      'UNIDADE_DIV=UNIDADE_DIV'
      'COD_BAI_DIV=COD_BAI_DIV'
      'COD_LOG_DIV=COD_LOG_DIV'
      'NUMERO_DIV=NUMERO_DIV'
      'COMPLE_DIV=COMPLE_DIV'
      'CEPI_DIV=CEPI_DIV'
      'FORA_DIV=FORA_DIV'
      'COD_BAIE_DIV=COD_BAIE_DIV'
      'BAIRRO_DIV=BAIRRO_DIV'
      'COD_LOGE_DIV=COD_LOGE_DIV'
      'LOGRA_DIV=LOGRA_DIV'
      'NUMEROE_DIV=NUMEROE_DIV'
      'CEPE_DIV=CEPE_DIV'
      'COMPLEE_DIV=COMPLEE_DIV'
      'COD_CID_DIV=COD_CID_DIV'
      'DEBAU_DIV=DEBAU_DIV'
      'COD_BCO_DIV=COD_BCO_DIV'
      'COD_AGEN_DIV=COD_AGEN_DIV'
      'COD_CONTA_DIV=COD_CONTA_DIV'
      'HISTO_DIV=HISTO_DIV'
      'FACE_DIV=FACE_DIV'
      'DTDEBAU_INC_DIV=DTDEBAU_INC_DIV'
      'DTDEBAU_IXC_DIV=DTDEBAU_IXC_DIV'
      'LOGIN_INC_DIV=LOGIN_INC_DIV'
      'DTA_INC_DIV=DTA_INC_DIV'
      'LOGIN_ALT_DIV=LOGIN_ALT_DIV'
      'DTA_ALT_DIV=DTA_ALT_DIV'
      'PNOMEPROPRI=PNOMEPROPRI'
      'PCNPJPROPI=PCNPJPROPI'
      'PFONE=PFONE'
      'CNOMEPROPRI=CNOMEPROPRI'
      'CCNPJPROPI=CCNPJPROPI'
      'CFONE=CFONE'
      'NOME_LOG=NOME_LOG'
      'NOME_BAI=NOME_BAI'
      'NOME_CID=NOME_CID'
      'UF_CID=UF_CID'
      'NOMEF_DIV=NOMEF_DIV')
    DataSource = dsCadastro
    BCDToCurrency = False
    Left = 679
    Top = 109
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 651
    Top = 109
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_DIV;COD_DIV'
    MasterFields = 'COD_EMP_PAR;COD_DIV_PAR'
    MasterSource = ds
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspCadastro'
    Left = 623
    Top = 109
    object cdsCadastroCOD_EMP_DIV: TIntegerField
      FieldName = 'COD_EMP_DIV'
      Required = True
    end
    object cdsCadastroCOD_DIV: TIntegerField
      FieldName = 'COD_DIV'
      Required = True
    end
    object cdsCadastroCOD_MOD_DIV: TIntegerField
      FieldName = 'COD_MOD_DIV'
      Required = True
    end
    object cdsCadastroCOD_REP_DIV: TIntegerField
      FieldName = 'COD_REP_DIV'
      Required = True
    end
    object cdsCadastroANO_DIV: TStringField
      FieldName = 'ANO_DIV'
      Required = True
      Size = 4
    end
    object cdsCadastroANOREF_DIV: TStringField
      FieldName = 'ANOREF_DIV'
      Size = 4
    end
    object cdsCadastroDATACADAST_DIV: TDateField
      FieldName = 'DATACADAST_DIV'
    end
    object cdsCadastroORIGEM_DIV: TStringField
      FieldName = 'ORIGEM_DIV'
      Size = 30
    end
    object cdsCadastroCOD_CNT_DIV: TStringField
      FieldName = 'COD_CNT_DIV'
      Required = True
      Size = 25
    end
    object cdsCadastroCODC_CNT_DIV: TStringField
      FieldName = 'CODC_CNT_DIV'
      Size = 25
    end
    object cdsCadastroMATRICULA_DIV: TStringField
      FieldName = 'MATRICULA_DIV'
      Required = True
      Size = 25
    end
    object cdsCadastroCOD_CAD_DIV: TStringField
      FieldName = 'COD_CAD_DIV'
      Required = True
      Size = 25
    end
    object cdsCadastroVRPREDIAL_DIV: TFloatField
      FieldName = 'VRPREDIAL_DIV'
    end
    object cdsCadastroVREXCEDENTE_DIV: TFloatField
      FieldName = 'VREXCEDENTE_DIV'
    end
    object cdsCadastroVRTERRIT_DIV: TFloatField
      FieldName = 'VRTERRIT_DIV'
    end
    object cdsCadastroAREAEDI_DIV: TFloatField
      FieldName = 'AREAEDI_DIV'
    end
    object cdsCadastroAREATER_DIV: TFloatField
      FieldName = 'AREATER_DIV'
    end
    object cdsCadastroAREAEXCE_DIV: TFloatField
      FieldName = 'AREAEXCE_DIV'
    end
    object cdsCadastroTESTADA_DIV: TFloatField
      FieldName = 'TESTADA_DIV'
    end
    object cdsCadastroSECAO_DIV: TStringField
      FieldName = 'SECAO_DIV'
      Size = 10
    end
    object cdsCadastroSETOR_DIV: TStringField
      FieldName = 'SETOR_DIV'
      Size = 10
    end
    object cdsCadastroQUADRA_DIV: TStringField
      FieldName = 'QUADRA_DIV'
      Size = 10
    end
    object cdsCadastroLOTE_DIV: TStringField
      FieldName = 'LOTE_DIV'
      Size = 10
    end
    object cdsCadastroUNIDADE_DIV: TStringField
      FieldName = 'UNIDADE_DIV'
      Size = 10
    end
    object cdsCadastroCOD_BAI_DIV: TIntegerField
      FieldName = 'COD_BAI_DIV'
    end
    object cdsCadastroCOD_LOG_DIV: TIntegerField
      FieldName = 'COD_LOG_DIV'
    end
    object cdsCadastroNUMERO_DIV: TStringField
      FieldName = 'NUMERO_DIV'
      Size = 8
    end
    object cdsCadastroCOMPLE_DIV: TStringField
      FieldName = 'COMPLE_DIV'
      Size = 40
    end
    object cdsCadastroCEPI_DIV: TStringField
      FieldName = 'CEPI_DIV'
    end
    object cdsCadastroFORA_DIV: TStringField
      FieldName = 'FORA_DIV'
      Size = 1
    end
    object cdsCadastroCOD_BAIE_DIV: TIntegerField
      FieldName = 'COD_BAIE_DIV'
    end
    object cdsCadastroBAIRRO_DIV: TStringField
      FieldName = 'BAIRRO_DIV'
      Size = 60
    end
    object cdsCadastroCOD_LOGE_DIV: TIntegerField
      FieldName = 'COD_LOGE_DIV'
    end
    object cdsCadastroLOGRA_DIV: TStringField
      FieldName = 'LOGRA_DIV'
      Size = 60
    end
    object cdsCadastroNUMEROE_DIV: TStringField
      FieldName = 'NUMEROE_DIV'
      Size = 8
    end
    object cdsCadastroCEPE_DIV: TStringField
      FieldName = 'CEPE_DIV'
    end
    object cdsCadastroCOMPLEE_DIV: TStringField
      FieldName = 'COMPLEE_DIV'
      Size = 40
    end
    object cdsCadastroCOD_CID_DIV: TStringField
      FieldName = 'COD_CID_DIV'
      Size = 7
    end
    object cdsCadastroDEBAU_DIV: TStringField
      FieldName = 'DEBAU_DIV'
      Size = 1
    end
    object cdsCadastroCOD_BCO_DIV: TIntegerField
      FieldName = 'COD_BCO_DIV'
    end
    object cdsCadastroCOD_AGEN_DIV: TStringField
      FieldName = 'COD_AGEN_DIV'
      Size = 10
    end
    object cdsCadastroCOD_CONTA_DIV: TStringField
      FieldName = 'COD_CONTA_DIV'
    end
    object cdsCadastroHISTO_DIV: TMemoField
      FieldName = 'HISTO_DIV'
      BlobType = ftMemo
    end
    object cdsCadastroFACE_DIV: TStringField
      FieldName = 'FACE_DIV'
      Size = 30
    end
    object cdsCadastroDTDEBAU_INC_DIV: TDateField
      FieldName = 'DTDEBAU_INC_DIV'
    end
    object cdsCadastroDTDEBAU_IXC_DIV: TDateField
      FieldName = 'DTDEBAU_IXC_DIV'
    end
    object cdsCadastroLOGIN_INC_DIV: TStringField
      FieldName = 'LOGIN_INC_DIV'
      Size = 10
    end
    object cdsCadastroDTA_INC_DIV: TSQLTimeStampField
      FieldName = 'DTA_INC_DIV'
    end
    object cdsCadastroLOGIN_ALT_DIV: TStringField
      FieldName = 'LOGIN_ALT_DIV'
      Size = 10
    end
    object cdsCadastroDTA_ALT_DIV: TSQLTimeStampField
      FieldName = 'DTA_ALT_DIV'
    end
    object cdsCadastroPNOMEPROPRI: TStringField
      FieldName = 'PNOMEPROPRI'
      Size = 150
    end
    object cdsCadastroPCNPJPROPI: TStringField
      FieldName = 'PCNPJPROPI'
    end
    object cdsCadastroPFONE: TStringField
      FieldName = 'PFONE'
      Size = 15
    end
    object cdsCadastroCNOMEPROPRI: TStringField
      FieldName = 'CNOMEPROPRI'
      Size = 150
    end
    object cdsCadastroCCNPJPROPI: TStringField
      FieldName = 'CCNPJPROPI'
    end
    object cdsCadastroCFONE: TStringField
      FieldName = 'CFONE'
      Size = 15
    end
    object cdsCadastroNOME_LOG: TStringField
      FieldName = 'NOME_LOG'
      Size = 60
    end
    object cdsCadastroNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Size = 60
    end
    object cdsCadastroNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Size = 60
    end
    object cdsCadastroUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
    object cdsCadastroNOMEF_DIV: TStringField
      FieldName = 'NOMEF_DIV'
      Size = 50
    end
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqlCadastro
    Left = 595
    Top = 109
  end
  object sqlCadastro: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT A.*,B.NOME_CNT AS PNOMEPROPRI,B.CNPJ_CNT AS PCNPJPROPI,B.' +
      'FONE_CNT AS PFONE,'#13#10'           C.NOME_CNT AS CNOMEPROPRI,C.CNPJ_' +
      'CNT AS CCNPJPROPI,C.FONE_CNT AS CFONE,'#13#10'           D.NOME_LOG,E.' +
      'NOME_BAI,F.NOME_CID,F.UF_CID'#13#10'FROM FI_DIVIDA A'#13#10'LEFT JOIN GR_CON' +
      'TRIBUINTES B ON B.COD_CNT=A.COD_CNT_DIV AND A.COD_EMP_DIV=B.COD_' +
      'EMP_CNT'#13#10'LEFT JOIN GR_CONTRIBUINTES C ON C.COD_CNT=A.CODC_CNT_DI' +
      'V AND A.COD_EMP_DIV=C.COD_EMP_CNT'#13#10'LEFT JOIN GR_LOGRA D ON D.COD' +
      '_LOG=A.COD_LOG_DIV AND A.COD_EMP_DIV=D.COD_EMP_LOG'#13#10'LEFT JOIN GR' +
      '_BAIRRO E ON E.COD_BAI=A.COD_BAI_DIV AND A.COD_EMP_DIV=E.COD_EMP' +
      '_BAI'#13#10'LEFT JOIN GR_CIDADE F ON F.COD_CID=A.COD_CID_DIV'#13#10'WHERE CO' +
      'D_EMP_DIV=:EMPRESA AND COD_DIV=:DIVIDA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_EMP_DIV'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'COD_DIV'
        ParamType = ptInput
        Value = 57
      end>
    SQLConnection = dm.Conexao
    Left = 567
    Top = 109
    object n: TIntegerField
      FieldName = 'COD_EMP_DIV'
      Required = True
    end
    object sqlCadastroCOD_DIV: TIntegerField
      FieldName = 'COD_DIV'
      Required = True
    end
    object sqlCadastroCOD_MOD_DIV: TIntegerField
      FieldName = 'COD_MOD_DIV'
      Required = True
    end
    object sqlCadastroCOD_REP_DIV: TIntegerField
      FieldName = 'COD_REP_DIV'
      Required = True
    end
    object sqlCadastroANO_DIV: TStringField
      FieldName = 'ANO_DIV'
      Required = True
      Size = 4
    end
    object sqlCadastroANOREF_DIV: TStringField
      FieldName = 'ANOREF_DIV'
      Size = 4
    end
    object sqlCadastroDATACADAST_DIV: TDateField
      FieldName = 'DATACADAST_DIV'
    end
    object sqlCadastroORIGEM_DIV: TStringField
      FieldName = 'ORIGEM_DIV'
      Size = 30
    end
    object sqlCadastroCOD_CNT_DIV: TStringField
      FieldName = 'COD_CNT_DIV'
      Required = True
      Size = 25
    end
    object sqlCadastroCODC_CNT_DIV: TStringField
      FieldName = 'CODC_CNT_DIV'
      Size = 25
    end
    object sqlCadastroMATRICULA_DIV: TStringField
      FieldName = 'MATRICULA_DIV'
      Required = True
      Size = 25
    end
    object sqlCadastroCOD_CAD_DIV: TStringField
      FieldName = 'COD_CAD_DIV'
      Required = True
      Size = 25
    end
    object sqlCadastroVRPREDIAL_DIV: TFloatField
      FieldName = 'VRPREDIAL_DIV'
    end
    object sqlCadastroVREXCEDENTE_DIV: TFloatField
      FieldName = 'VREXCEDENTE_DIV'
    end
    object sqlCadastroVRTERRIT_DIV: TFloatField
      FieldName = 'VRTERRIT_DIV'
    end
    object sqlCadastroAREAEDI_DIV: TFloatField
      FieldName = 'AREAEDI_DIV'
    end
    object sqlCadastroAREATER_DIV: TFloatField
      FieldName = 'AREATER_DIV'
    end
    object sqlCadastroAREAEXCE_DIV: TFloatField
      FieldName = 'AREAEXCE_DIV'
    end
    object sqlCadastroTESTADA_DIV: TFloatField
      FieldName = 'TESTADA_DIV'
    end
    object sqlCadastroSECAO_DIV: TStringField
      FieldName = 'SECAO_DIV'
      Size = 10
    end
    object sqlCadastroSETOR_DIV: TStringField
      FieldName = 'SETOR_DIV'
      Size = 10
    end
    object sqlCadastroQUADRA_DIV: TStringField
      FieldName = 'QUADRA_DIV'
      Size = 10
    end
    object sqlCadastroLOTE_DIV: TStringField
      FieldName = 'LOTE_DIV'
      Size = 10
    end
    object sqlCadastroUNIDADE_DIV: TStringField
      FieldName = 'UNIDADE_DIV'
      Size = 10
    end
    object sqlCadastroCOD_BAI_DIV: TIntegerField
      FieldName = 'COD_BAI_DIV'
    end
    object sqlCadastroCOD_LOG_DIV: TIntegerField
      FieldName = 'COD_LOG_DIV'
    end
    object sqlCadastroNUMERO_DIV: TStringField
      FieldName = 'NUMERO_DIV'
      Size = 8
    end
    object sqlCadastroCOMPLE_DIV: TStringField
      FieldName = 'COMPLE_DIV'
      Size = 40
    end
    object sqlCadastroCEPI_DIV: TStringField
      FieldName = 'CEPI_DIV'
    end
    object sqlCadastroFORA_DIV: TStringField
      FieldName = 'FORA_DIV'
      Size = 1
    end
    object sqlCadastroCOD_BAIE_DIV: TIntegerField
      FieldName = 'COD_BAIE_DIV'
    end
    object sqlCadastroBAIRRO_DIV: TStringField
      FieldName = 'BAIRRO_DIV'
      Size = 60
    end
    object sqlCadastroCOD_LOGE_DIV: TIntegerField
      FieldName = 'COD_LOGE_DIV'
    end
    object sqlCadastroLOGRA_DIV: TStringField
      FieldName = 'LOGRA_DIV'
      Size = 60
    end
    object sqlCadastroNUMEROE_DIV: TStringField
      FieldName = 'NUMEROE_DIV'
      Size = 8
    end
    object sqlCadastroCEPE_DIV: TStringField
      FieldName = 'CEPE_DIV'
    end
    object sqlCadastroCOMPLEE_DIV: TStringField
      FieldName = 'COMPLEE_DIV'
      Size = 40
    end
    object sqlCadastroCOD_CID_DIV: TStringField
      FieldName = 'COD_CID_DIV'
      Size = 7
    end
    object sqlCadastroDEBAU_DIV: TStringField
      FieldName = 'DEBAU_DIV'
      Size = 1
    end
    object sqlCadastroCOD_BCO_DIV: TIntegerField
      FieldName = 'COD_BCO_DIV'
    end
    object sqlCadastroCOD_AGEN_DIV: TStringField
      FieldName = 'COD_AGEN_DIV'
      Size = 10
    end
    object sqlCadastroCOD_CONTA_DIV: TStringField
      FieldName = 'COD_CONTA_DIV'
    end
    object sqlCadastroHISTO_DIV: TMemoField
      FieldName = 'HISTO_DIV'
      BlobType = ftMemo
    end
    object sqlCadastroFACE_DIV: TStringField
      FieldName = 'FACE_DIV'
      Size = 30
    end
    object sqlCadastroDTDEBAU_INC_DIV: TDateField
      FieldName = 'DTDEBAU_INC_DIV'
    end
    object sqlCadastroDTDEBAU_IXC_DIV: TDateField
      FieldName = 'DTDEBAU_IXC_DIV'
    end
    object sqlCadastroNOMEF_DIV: TStringField
      FieldName = 'NOMEF_DIV'
      Size = 50
    end
    object sqlCadastroLOGIN_INC_DIV: TStringField
      FieldName = 'LOGIN_INC_DIV'
      Size = 10
    end
    object sqlCadastroDTA_INC_DIV: TSQLTimeStampField
      FieldName = 'DTA_INC_DIV'
    end
    object sqlCadastroLOGIN_ALT_DIV: TStringField
      FieldName = 'LOGIN_ALT_DIV'
      Size = 10
    end
    object sqlCadastroDTA_ALT_DIV: TSQLTimeStampField
      FieldName = 'DTA_ALT_DIV'
    end
    object sqlCadastroPNOMEPROPRI: TStringField
      FieldName = 'PNOMEPROPRI'
      Size = 150
    end
    object sqlCadastroPCNPJPROPI: TStringField
      FieldName = 'PCNPJPROPI'
    end
    object sqlCadastroPFONE: TStringField
      FieldName = 'PFONE'
      Size = 15
    end
    object sqlCadastroCNOMEPROPRI: TStringField
      FieldName = 'CNOMEPROPRI'
      Size = 150
    end
    object sqlCadastroCCNPJPROPI: TStringField
      FieldName = 'CCNPJPROPI'
    end
    object sqlCadastroCFONE: TStringField
      FieldName = 'CFONE'
      Size = 15
    end
    object sqlCadastroNOME_LOG: TStringField
      FieldName = 'NOME_LOG'
      Size = 60
    end
    object sqlCadastroNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Size = 60
    end
    object sqlCadastroNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Size = 60
    end
    object sqlCadastroUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
  end
  object sqlReceitas: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT SUM(LVALOR_FRC) AS VALOR, SUM(LVRCORRE_FRC) AS LCORRECAO,' +
      'SUM(LVRMULTA_FRC) AS LMULTA,SUM(LVRJUROS_FRC) AS LJUROS,SUM(LDES' +
      'COR_FRC) AS LDESCOR,SUM(LDESCOC_FRC) AS LDESCOC,SUM(LDESCOM_FRC)' +
      ' AS LDESCOM, '#13#10' SUM(LDESCOJ_FRC) AS LDESCOJ,SUM(LACRES_FRC) AS L' +
      'ACRES,SUM(LISENTO_FRC) AS LISENTO,  SUM(LDESCOVENCI_FRC) AS LDES' +
      'COPONTU, COD_EMP_FRC,COD_DIV_FRC,PARCELA_PAR_FRC,TP_PAR_FRC,COD_' +
      'REC_FRC,DESCRI_REC'#13#10'FROM FI_RECEITAS '#13#10'LEFT JOIN GR_RECEITA  ON ' +
      'COD_EMP_REC=COD_EMP_FRC AND COD_REC=COD_REC_FRC'#13#10'WHERE COD_EMP_F' +
      'RC=:EMPRESA AND COD_DIV_FRC=:DIVIDA AND PARCELA_PAR_FRC=:PARCELA' +
      ' AND TP_PAR_FRC=:TIPO GROUP BY COD_EMP_FRC,COD_DIV_FRC,PARCELA_P' +
      'AR_FRC,TP_PAR_FRC,COD_REC_FRC,DESCRI_REC'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_EMP_FRC'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'COD_DIV_FRC'
        ParamType = ptInput
        Value = 58
      end
      item
        DataType = ftInteger
        Name = 'PARCELA_PAR_FRC'
        ParamType = ptInput
        Value = 10
      end
      item
        DataType = ftInteger
        Name = 'TP_PAR_FRC'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = dm.Conexao
    Left = 564
    Top = 58
    object sqlReceitasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlReceitasLCORRECAO: TFloatField
      FieldName = 'LCORRECAO'
    end
    object sqlReceitasLMULTA: TFloatField
      FieldName = 'LMULTA'
    end
    object sqlReceitasLJUROS: TFloatField
      FieldName = 'LJUROS'
    end
    object sqlReceitasLDESCOR: TFloatField
      FieldName = 'LDESCOR'
    end
    object sqlReceitasLDESCOC: TFloatField
      FieldName = 'LDESCOC'
    end
    object sqlReceitasLDESCOM: TFloatField
      FieldName = 'LDESCOM'
    end
    object sqlReceitasLDESCOJ: TFloatField
      FieldName = 'LDESCOJ'
    end
    object sqlReceitasLACRES: TFloatField
      FieldName = 'LACRES'
    end
    object sqlReceitasLISENTO: TFloatField
      FieldName = 'LISENTO'
    end
    object sqlReceitasLDESCOPONTU: TFloatField
      FieldName = 'LDESCOPONTU'
    end
    object sqlReceitasCOD_EMP_FRC: TIntegerField
      FieldName = 'COD_EMP_FRC'
      Required = True
    end
    object sqlReceitasCOD_DIV_FRC: TIntegerField
      FieldName = 'COD_DIV_FRC'
      Required = True
    end
    object sqlReceitasPARCELA_PAR_FRC: TIntegerField
      FieldName = 'PARCELA_PAR_FRC'
      Required = True
    end
    object sqlReceitasTP_PAR_FRC: TIntegerField
      FieldName = 'TP_PAR_FRC'
      Required = True
    end
    object sqlReceitasCOD_REC_FRC: TIntegerField
      FieldName = 'COD_REC_FRC'
      Required = True
    end
    object sqlReceitasDESCRI_REC: TStringField
      FieldName = 'DESCRI_REC'
      Size = 250
    end
  end
  object dspReceitas: TDataSetProvider
    DataSet = sqlReceitas
    Left = 592
    Top = 58
  end
  object cdsReceitas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_FRC;COD_DIV_FRC;PARCELA_PAR_FRC;TP_PAR_FRC'
    MasterFields = 'COD_EMP_PAR;COD_DIV_PAR;PARCELA_PAR;TP_PAR'
    MasterSource = ds
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspReceitas'
    Left = 620
    Top = 58
    object cdsReceitasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsReceitasLCORRECAO: TFloatField
      FieldName = 'LCORRECAO'
    end
    object cdsReceitasLMULTA: TFloatField
      FieldName = 'LMULTA'
    end
    object cdsReceitasLJUROS: TFloatField
      FieldName = 'LJUROS'
    end
    object cdsReceitasLDESCOR: TFloatField
      FieldName = 'LDESCOR'
    end
    object cdsReceitasLDESCOC: TFloatField
      FieldName = 'LDESCOC'
    end
    object cdsReceitasLDESCOM: TFloatField
      FieldName = 'LDESCOM'
    end
    object cdsReceitasLDESCOJ: TFloatField
      FieldName = 'LDESCOJ'
    end
    object cdsReceitasLACRES: TFloatField
      FieldName = 'LACRES'
    end
    object cdsReceitasLISENTO: TFloatField
      FieldName = 'LISENTO'
    end
    object cdsReceitasLDESCOPONTU: TFloatField
      FieldName = 'LDESCOPONTU'
    end
    object cdsReceitasCOD_REC_FRC: TIntegerField
      FieldName = 'COD_REC_FRC'
      Required = True
    end
    object cdsReceitasCOD_EMP_FRC: TIntegerField
      FieldName = 'COD_EMP_FRC'
      Required = True
    end
    object cdsReceitasCOD_DIV_FRC: TIntegerField
      FieldName = 'COD_DIV_FRC'
      Required = True
    end
    object cdsReceitasPARCELA_PAR_FRC: TIntegerField
      FieldName = 'PARCELA_PAR_FRC'
      Required = True
    end
    object cdsReceitasTP_PAR_FRC: TIntegerField
      FieldName = 'TP_PAR_FRC'
      Required = True
    end
    object cdsReceitasdesco: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'desco'
    end
    object cdsReceitasDESCRI_REC: TStringField
      FieldName = 'DESCRI_REC'
      Size = 250
    end
  end
  object dsReceitas: TDataSource
    DataSet = cdsReceitas
    Left = 648
    Top = 58
  end
  object dbReceitas: TfrxDBDataset
    UserName = 'dbReceitas'
    CloseDataSource = True
    FieldAliases.Strings = (
      'VALOR=VALOR'
      'LCORRECAO=LCORRECAO'
      'LMULTA=LMULTA'
      'LJUROS=LJUROS'
      'LDESCOR=LDESCOR'
      'LDESCOC=LDESCOC'
      'LDESCOM=LDESCOM'
      'LDESCOJ=LDESCOJ'
      'LACRES=LACRES'
      'LISENTO=LISENTO'
      'LDESCOPONTU=LDESCOPONTU'
      'COD_REC_FRC=COD_REC_FRC'
      'COD_EMP_FRC=COD_EMP_FRC'
      'COD_DIV_FRC=COD_DIV_FRC'
      'PARCELA_PAR_FRC=PARCELA_PAR_FRC'
      'TP_PAR_FRC=TP_PAR_FRC'
      'desco=desco'
      'DESCRI_REC=DESCRI_REC')
    DataSource = dsReceitas
    BCDToCurrency = False
    Left = 676
    Top = 58
  end
  object DBDados: TfrxDBDataset
    UserName = 'DBDados'
    CloseDataSource = True
    FieldAliases.Strings = (
      'VrParcela=VrParcela'
      'Correcao=Correcao'
      'Multa=Multa'
      'Juros=Juros'
      'Total=Total'
      'Barra=Barra'
      'parte1=parte1'
      'parte2=parte2'
      'parte3=parte3'
      'parte4=parte4'
      'local=local'
      'cedente=cedente'
      'nnumero=nnumero'
      'cdbanco=cdbanco'
      'digitavel=digitavel'
      'nomebanco=nomebanco'
      'valorliquido=valorliquido'
      'valorBruto=valorBruto'
      'Valordesconto=Valordesconto'
      'menssagemDivida=menssagemDivida'
      'PARCELA_PAR=PARCELA_PAR'
      'TP_PAR=TP_PAR'
      'COD_DIV_PAR=COD_DIV_PAR'
      'SITUACAO_PAR=SITUACAO_PAR'
      'DTCORRECAO_PAR=DTCORRECAO_PAR'
      'COTACAO_PAR=COTACAO_PAR'
      'DATAVENCI=DATAVENCI'
      'ANO_DIV=ANO_DIV'
      'COD_REP_DIV=COD_REP_DIV'
      'COD_EMP_PAR=COD_EMP_PAR'
      'DESCRICAO_REP=DESCRICAO_REP'
      'COD_MOD_DIV=COD_MOD_DIV'
      'COD_CNT_DIV=COD_CNT_DIV'
      'COD_IND_PAR=COD_IND_PAR'
      'MOEDA_PAR=MOEDA_PAR'
      'NNUMERO_PAR=NNUMERO_PAR'
      'UNICA_PAR=UNICA_PAR'
      'COD_STR_RRR=COD_STR_RRR'
      'ANO_STR=ANO_STR'
      'COD_CAD_DIV=COD_CAD_DIV'
      'PROPRIEDADE_RRR=PROPRIEDADE_RRR'
      'INSCRP_RRR=INSCRP_RRR'
      'INCRA_RRR=INCRA_RRR'
      'AREAH_RRR=AREAH_RRR'
      'AREAE_RRR=AREAE_RRR'
      'AREAM_RRR=AREAM_RRR'
      'DISTANCIA_RRR=DISTANCIA_RRR'
      'PONTOS_RRR=PONTOS_RRR'
      'VVENAL_RRR=VVENAL_RRR'
      'LOGRA_RRR=LOGRA_RRR'
      'COMPL_RRR=COMPL_RRR'
      'VALOR=VALOR'
      'LCORRECAO=LCORRECAO'
      'LMULTA=LMULTA'
      'LJUROS=LJUROS'
      'LDESCOR=LDESCOR'
      'LDESCOC=LDESCOC'
      'LDESCOM=LDESCOM'
      'LDESCOVENCI=LDESCOVENCI'
      'LDESCOJ=LDESCOJ'
      'LACRES=LACRES'
      'LISENTO=LISENTO'
      'RESPONSA_RRR=RESPONSA_RRR'
      'OBSLOGRA_RRR=OBSLOGRA_RRR'
      'COD_LOGE_DIV=COD_LOGE_DIV'
      'NUMEROE_DIV=NUMEROE_DIV'
      'FAIXANNUMERO_PAR=FAIXANNUMERO_PAR'
      'ATIVA_PAR=ATIVA_PAR'
      'EXECUTADA_PAR=EXECUTADA_PAR'
      'PROTESTADO_PAR=PROTESTADO_PAR'
      'NOTIFICADO_PAR=NOTIFICADO_PAR'
      'DATAINSCRI_PAR=DATAINSCRI_PAR')
    DataSource = ds
    BCDToCurrency = False
    Left = 676
    Top = 8
  end
  object ds: TDataSource
    DataSet = cds
    Left = 648
    Top = 8
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    OnCalcFields = cdsCalcFields
    Left = 620
    Top = 8
    object cdsVrParcela: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'VrParcela'
    end
    object cdsCorrecao: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Correcao'
    end
    object cdsMulta: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Multa'
    end
    object cdsJuros: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Juros'
    end
    object cdsTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Total'
    end
    object cdsBarra: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Barra'
      Size = 44
    end
    object cdsparte1: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'parte1'
      Size = 13
    end
    object cdsparte2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'parte2'
      Size = 13
    end
    object cdsparte3: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'parte3'
      Size = 13
    end
    object cdsparte4: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'parte4'
      Size = 13
    end
    object cdslocal: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'local'
      Size = 60
    end
    object cdscedente: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'cedente'
      Size = 25
    end
    object cdsnnumero: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'nnumero'
      Size = 25
    end
    object cdscdbanco: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'cdbanco'
      Size = 6
    end
    object cdsdigitavel: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'digitavel'
      Size = 60
    end
    object cdsnomebanco: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'nomebanco'
      Size = 15
    end
    object cdsvalorliquido: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'valorliquido'
    end
    object cdsvalorBruto: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'valorBruto'
    end
    object cdsValordesconto: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Valordesconto'
    end
    object cdsmenssagemDivida: TStringField
      FieldKind = fkCalculated
      FieldName = 'menssagemDivida'
      Size = 60
      Calculated = True
    end
    object cdsPARCELA_PAR: TIntegerField
      FieldName = 'PARCELA_PAR'
      Required = True
    end
    object cdsTP_PAR: TIntegerField
      FieldName = 'TP_PAR'
      Required = True
    end
    object cdsCOD_DIV_PAR: TIntegerField
      FieldName = 'COD_DIV_PAR'
      Required = True
    end
    object cdsSITUACAO_PAR: TIntegerField
      FieldName = 'SITUACAO_PAR'
    end
    object cdsDTCORRECAO_PAR: TDateField
      FieldName = 'DTCORRECAO_PAR'
    end
    object cdsCOTACAO_PAR: TFloatField
      FieldName = 'COTACAO_PAR'
    end
    object cdsDATAVENCI: TDateField
      FieldName = 'DATAVENCI'
    end
    object cdsANO_DIV: TStringField
      FieldName = 'ANO_DIV'
      Required = True
      Size = 4
    end
    object cdsCOD_REP_DIV: TIntegerField
      FieldName = 'COD_REP_DIV'
      Required = True
    end
    object cdsCOD_EMP_PAR: TIntegerField
      FieldName = 'COD_EMP_PAR'
      Required = True
    end
    object cdsDESCRICAO_REP: TStringField
      FieldName = 'DESCRICAO_REP'
      Size = 60
    end
    object cdsCOD_MOD_DIV: TIntegerField
      FieldName = 'COD_MOD_DIV'
      Required = True
    end
    object cdsCOD_CNT_DIV: TStringField
      FieldName = 'COD_CNT_DIV'
      Required = True
      Size = 25
    end
    object cdsCOD_IND_PAR: TIntegerField
      FieldName = 'COD_IND_PAR'
    end
    object cdsMOEDA_PAR: TStringField
      FieldName = 'MOEDA_PAR'
      Size = 1
    end
    object cdsNNUMERO_PAR: TFloatField
      FieldName = 'NNUMERO_PAR'
    end
    object cdsUNICA_PAR: TStringField
      FieldName = 'UNICA_PAR'
      Size = 1
    end
    object cdsCOD_STR_RRR: TStringField
      FieldName = 'COD_STR_RRR'
      Size = 4
    end
    object cdsANO_STR: TIntegerField
      FieldName = 'ANO_STR'
      Required = True
    end
    object cdsCOD_CAD_DIV: TStringField
      FieldName = 'COD_CAD_DIV'
      Required = True
      Size = 25
    end
    object cdsPROPRIEDADE_RRR: TStringField
      FieldName = 'PROPRIEDADE_RRR'
      Size = 70
    end
    object cdsINSCRP_RRR: TStringField
      FieldName = 'INSCRP_RRR'
      Size = 25
    end
    object cdsINCRA_RRR: TStringField
      FieldName = 'INCRA_RRR'
      Size = 25
    end
    object cdsAREAH_RRR: TFloatField
      FieldName = 'AREAH_RRR'
    end
    object cdsAREAE_RRR: TFloatField
      FieldName = 'AREAE_RRR'
    end
    object cdsAREAM_RRR: TFloatField
      FieldName = 'AREAM_RRR'
    end
    object cdsDISTANCIA_RRR: TFloatField
      FieldName = 'DISTANCIA_RRR'
    end
    object cdsPONTOS_RRR: TFloatField
      FieldName = 'PONTOS_RRR'
    end
    object cdsVVENAL_RRR: TFloatField
      FieldName = 'VVENAL_RRR'
    end
    object cdsLOGRA_RRR: TStringField
      FieldName = 'LOGRA_RRR'
      Size = 70
    end
    object cdsCOMPL_RRR: TStringField
      FieldName = 'COMPL_RRR'
      Size = 70
    end
    object cdsVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsLCORRECAO: TFloatField
      FieldName = 'LCORRECAO'
    end
    object cdsLMULTA: TFloatField
      FieldName = 'LMULTA'
    end
    object cdsLJUROS: TFloatField
      FieldName = 'LJUROS'
    end
    object cdsLDESCOR: TFloatField
      FieldName = 'LDESCOR'
    end
    object cdsLDESCOC: TFloatField
      FieldName = 'LDESCOC'
    end
    object cdsLDESCOM: TFloatField
      FieldName = 'LDESCOM'
    end
    object cdsLDESCOVENCI: TFloatField
      FieldName = 'LDESCOVENCI'
    end
    object cdsLDESCOJ: TFloatField
      FieldName = 'LDESCOJ'
    end
    object cdsLACRES: TFloatField
      FieldName = 'LACRES'
    end
    object cdsLISENTO: TFloatField
      FieldName = 'LISENTO'
    end
    object cdsRESPONSA_RRR: TStringField
      FieldName = 'RESPONSA_RRR'
      Size = 70
    end
    object cdsOBSLOGRA_RRR: TStringField
      FieldKind = fkCalculated
      FieldName = 'OBSLOGRA_RRR'
      Size = 255
      Calculated = True
    end
    object cdsCOD_LOGE_DIV: TIntegerField
      FieldName = 'COD_LOGE_DIV'
    end
    object cdsNUMEROE_DIV: TStringField
      FieldName = 'NUMEROE_DIV'
      Size = 8
    end
    object cdsFAIXANNUMERO_PAR: TIntegerField
      FieldName = 'FAIXANNUMERO_PAR'
    end
    object cdsATIVA_PAR: TStringField
      FieldName = 'ATIVA_PAR'
      Size = 1
    end
    object cdsEXECUTADA_PAR: TStringField
      FieldName = 'EXECUTADA_PAR'
      Size = 1
    end
    object cdsPROTESTADO_PAR: TStringField
      FieldName = 'PROTESTADO_PAR'
      Size = 1
    end
    object cdsNOTIFICADO_PAR: TStringField
      FieldName = 'NOTIFICADO_PAR'
      Size = 1
    end
    object cdsDATAINSCRI_PAR: TDateField
      FieldName = 'DATAINSCRI_PAR'
    end
  end
  object dsp: TDataSetProvider
    DataSet = sql
    Options = [poIncFieldProps, poAllowCommandText]
    Left = 592
    Top = 8
  end
  object sql: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT A.PARCELA_PAR, A.TP_PAR, A.COD_DIV_PAR, A.SITUACAO_PAR, A' +
      '.DTCORRECAO_PAR,'#13#10'       A.COTACAO_PAR, A.DATAVENCI, C.ANO_DIV, ' +
      'C.COD_REP_DIV, A.COD_EMP_PAR,'#13#10'       D.DESCRICAO_REP, C.COD_MOD' +
      '_DIV, C.COD_CNT_DIV, A.COD_IND_PAR, A.MOEDA_PAR,'#13#10'       A.NNUME' +
      'RO_PAR, A.UNICA_PAR,A.FAIXANNUMERO_PAR, E.COD_STR_RRR, ST.ANO_ST' +
      'R, C.COD_CAD_DIV,'#13#10'       E.PROPRIEDADE_RRR, E.INSCRP_RRR, E.INC' +
      'RA_RRR, E.AREAH_RRR, E.AREAE_RRR,'#13#10'       E.AREAM_RRR, E.DISTANC' +
      'IA_RRR, E.PONTOS_RRR, E.VVENAL_RRR, E.LOGRA_RRR,'#13#10'       E.COMPL' +
      '_RRR, E.RESPONSA_RRR, COD_LOGE_DIV, NUMEROE_DIV,'#13#10'       (SUM(CO' +
      'ALESCE(LVALOR_FRC,0))-SUM(COALESCE(LISENTO_FRC,0))) AS VALOR,'#13#10' ' +
      '      SUM(LVRCORRE_FRC)    AS LCORRECAO, SUM(LVRMULTA_FRC)    AS' +
      ' LMULTA,'#13#10'       SUM(LVRJUROS_FRC)    AS LJUROS, SUM(LDESCOR_FRC' +
      ')     AS LDESCOR,'#13#10'       SUM(LDESCOC_FRC)     AS LDESCOC, SUM(L' +
      'DESCOM_FRC)     AS LDESCOM,'#13#10'       SUM(LDESCOVENCI_FRC) AS LDES' +
      'COVENCI, SUM(LDESCOJ_FRC)     AS LDESCOJ,'#13#10'       SUM(LACRES_FRC' +
      ')      AS LACRES, SUM(LISENTO_FRC)     AS LISENTO,A.ATIVA_PAR,A.' +
      'EXECUTADA_PAR,A.PROTESTADO_PAR,A.NOTIFICADO_PAR,A.DATAINSCRI_PAR' +
      #13#10'FROM FI_PARCELA A'#13#10'INNER JOIN FI_RECEITAS B ON A.COD_EMP_PAR =' +
      ' B.COD_EMP_FRC AND A.COD_DIV_PAR = B.COD_DIV_FRC AND A.TP_PAR = ' +
      'B.TP_PAR_FRC AND A.PARCELA_PAR = B.PARCELA_PAR_FRC'#13#10'INNER JOIN F' +
      'I_DIVIDA C ON A.COD_EMP_PAR = C.COD_EMP_DIV AND A.COD_DIV_PAR = ' +
      'C.COD_DIV'#13#10'INNER JOIN RR_CAD_RURAL E ON C.COD_EMP_DIV = E.COD_EM' +
      'P_RRR AND C.COD_CAD_DIV = E.COD_RRR'#13#10'INNER JOIN RR_SETOR ST ON S' +
      'T.COD_EMP_STR = E.COD_EMP_RRR AND ST.COD_STR = E.COD_STR_RRR'#13#10'LE' +
      'FT JOIN FI_RECPRINCIPAL D ON C.COD_EMP_DIV = D.COD_EMP_REP AND C' +
      '.COD_REP_DIV = D.COD_REP AND C.COD_MOD_DIV = D.COD_MOD_REP'#13#10'WHER' +
      'E A.COD_EMP_PAR = 1'#13#10'  AND C.COD_MOD_DIV = 4'#13#10'  AND E.COD_RRR BE' +
      'TWEEN '#39'0300-0'#39' AND '#39'0600-0'#39#13#10'  AND C.ANO_DIV = '#39'2009'#39#13#10'  AND ST.' +
      'ANO_STR = '#39'2009'#39#13#10'  AND AGRUPAMENTO_REP LIKE '#39'13%'#39#13#10'  AND ((A.SI' +
      'TUACAO_PAR>=1 AND SITUACAO_PAR<=3) OR (SITUACAO_PAR=0 AND A.PARC' +
      'ELA_PAR=0 AND DATAVENCI>='#39'05/22/2009'#39') )'#13#10'GROUP BY A.PARCELA_PAR' +
      ', A.TP_PAR, A.COD_DIV_PAR, A.SITUACAO_PAR, A.DTCORRECAO_PAR,'#13#10'  ' +
      '       A.COTACAO_PAR, A.DATAVENCI, C.ANO_DIV, C.COD_REP_DIV, A.C' +
      'OD_EMP_PAR,'#13#10'         D.DESCRICAO_REP, C.COD_MOD_DIV, C.COD_CNT_' +
      'DIV, A.COD_IND_PAR, A.MOEDA_PAR,'#13#10'         A.NNUMERO_PAR, A.UNIC' +
      'A_PAR,A.FAIXANNUMERO_PAR, E.COD_STR_RRR, ST.ANO_STR, C.COD_CAD_D' +
      'IV,'#13#10'         E.PROPRIEDADE_RRR, E.INSCRP_RRR, E.INCRA_RRR, E.AR' +
      'EAH_RRR, E.AREAE_RRR,'#13#10'         E.AREAM_RRR, E.DISTANCIA_RRR, E.' +
      'PONTOS_RRR, E.VVENAL_RRR, E.LOGRA_RRR,'#13#10'         E.COMPL_RRR, E.' +
      'RESPONSA_RRR, COD_LOGE_DIV, NUMEROE_DIV,A.ATIVA_PAR,A.EXECUTADA_' +
      'PAR,A.PROTESTADO_PAR,A.NOTIFICADO_PAR,A.DATAINSCRI_PAR'#13#10'ORDER BY' +
      ' COD_CAD_DIV,COD_DIV_PAR,PARCELA_PAR,TP_PAR'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.Conexao
    Left = 564
    Top = 8
    object sqlPARCELA_PAR: TIntegerField
      FieldName = 'PARCELA_PAR'
      Required = True
    end
    object sqlTP_PAR: TIntegerField
      FieldName = 'TP_PAR'
      Required = True
    end
    object sqlCOD_DIV_PAR: TIntegerField
      FieldName = 'COD_DIV_PAR'
      Required = True
    end
    object sqlSITUACAO_PAR: TIntegerField
      FieldName = 'SITUACAO_PAR'
    end
    object sqlDTCORRECAO_PAR: TDateField
      FieldName = 'DTCORRECAO_PAR'
    end
    object sqlCOTACAO_PAR: TFloatField
      FieldName = 'COTACAO_PAR'
    end
    object sqlDATAVENCI: TDateField
      FieldName = 'DATAVENCI'
    end
    object sqlANO_DIV: TStringField
      FieldName = 'ANO_DIV'
      Required = True
      Size = 4
    end
    object sqlCOD_REP_DIV: TIntegerField
      FieldName = 'COD_REP_DIV'
      Required = True
    end
    object sqlCOD_EMP_PAR: TIntegerField
      FieldName = 'COD_EMP_PAR'
      Required = True
    end
    object sqlDESCRICAO_REP: TStringField
      FieldName = 'DESCRICAO_REP'
      Size = 60
    end
    object sqlCOD_MOD_DIV: TIntegerField
      FieldName = 'COD_MOD_DIV'
      Required = True
    end
    object sqlCOD_CNT_DIV: TStringField
      FieldName = 'COD_CNT_DIV'
      Required = True
      Size = 25
    end
    object sqlCOD_IND_PAR: TIntegerField
      FieldName = 'COD_IND_PAR'
    end
    object sqlMOEDA_PAR: TStringField
      FieldName = 'MOEDA_PAR'
      Size = 1
    end
    object sqlNNUMERO_PAR: TFloatField
      FieldName = 'NNUMERO_PAR'
    end
    object sqlUNICA_PAR: TStringField
      FieldName = 'UNICA_PAR'
      Size = 1
    end
    object sqlCOD_STR_RRR: TStringField
      FieldName = 'COD_STR_RRR'
      Size = 4
    end
    object sqlANO_STR: TIntegerField
      FieldName = 'ANO_STR'
      Required = True
    end
    object sqlCOD_CAD_DIV: TStringField
      FieldName = 'COD_CAD_DIV'
      Required = True
      Size = 25
    end
    object sqlPROPRIEDADE_RRR: TStringField
      FieldName = 'PROPRIEDADE_RRR'
      Size = 70
    end
    object sqlINSCRP_RRR: TStringField
      FieldName = 'INSCRP_RRR'
      Size = 25
    end
    object sqlINCRA_RRR: TStringField
      FieldName = 'INCRA_RRR'
      Size = 25
    end
    object sqlAREAH_RRR: TFloatField
      FieldName = 'AREAH_RRR'
    end
    object sqlAREAE_RRR: TFloatField
      FieldName = 'AREAE_RRR'
    end
    object sqlAREAM_RRR: TFloatField
      FieldName = 'AREAM_RRR'
    end
    object sqlDISTANCIA_RRR: TFloatField
      FieldName = 'DISTANCIA_RRR'
    end
    object sqlPONTOS_RRR: TFloatField
      FieldName = 'PONTOS_RRR'
    end
    object sqlVVENAL_RRR: TFloatField
      FieldName = 'VVENAL_RRR'
    end
    object sqlLOGRA_RRR: TStringField
      FieldName = 'LOGRA_RRR'
      Size = 70
    end
    object sqlCOMPL_RRR: TStringField
      FieldName = 'COMPL_RRR'
      Size = 70
    end
    object sqlRESPONSA_RRR: TStringField
      FieldName = 'RESPONSA_RRR'
      Size = 70
    end
    object sqlVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlLCORRECAO: TFloatField
      FieldName = 'LCORRECAO'
    end
    object sqlLMULTA: TFloatField
      FieldName = 'LMULTA'
    end
    object sqlLJUROS: TFloatField
      FieldName = 'LJUROS'
    end
    object sqlLDESCOR: TFloatField
      FieldName = 'LDESCOR'
    end
    object sqlLDESCOC: TFloatField
      FieldName = 'LDESCOC'
    end
    object sqlLDESCOM: TFloatField
      FieldName = 'LDESCOM'
    end
    object sqlLDESCOVENCI: TFloatField
      FieldName = 'LDESCOVENCI'
    end
    object sqlLDESCOJ: TFloatField
      FieldName = 'LDESCOJ'
    end
    object sqlLACRES: TFloatField
      FieldName = 'LACRES'
    end
    object sqlLISENTO: TFloatField
      FieldName = 'LISENTO'
    end
    object sqlCOD_LOGE_DIV: TIntegerField
      FieldName = 'COD_LOGE_DIV'
    end
    object sqlNUMEROE_DIV: TStringField
      FieldName = 'NUMEROE_DIV'
      Size = 8
    end
    object sqlFAIXANNUMERO_PAR: TIntegerField
      FieldName = 'FAIXANNUMERO_PAR'
    end
    object sqlATIVA_PAR: TStringField
      FieldName = 'ATIVA_PAR'
      Size = 1
    end
    object sqlEXECUTADA_PAR: TStringField
      FieldName = 'EXECUTADA_PAR'
      Size = 1
    end
    object sqlPROTESTADO_PAR: TStringField
      FieldName = 'PROTESTADO_PAR'
      Size = 1
    end
    object sqlNOTIFICADO_PAR: TStringField
      FieldName = 'NOTIFICADO_PAR'
      Size = 1
    end
    object sqlDATAINSCRI_PAR: TDateField
      FieldName = 'DATAINSCRI_PAR'
    end
  end
  object DBEmpresa: TfrxDBDataset
    UserName = 'DBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_EMP=COD_EMP'
      'CNPJ_EMP=CNPJ_EMP'
      'CHAVE_EMP=CHAVE_EMP'
      'DEPT_EMP=DEPT_EMP'
      'NOME_EMP=NOME_EMP'
      'CEP_EMP=CEP_EMP'
      'LOGRA_EMP=LOGRA_EMP'
      'NUMERO_EMP=NUMERO_EMP'
      'COMPLE_EMP=COMPLE_EMP'
      'BAIRRO_EMP=BAIRRO_EMP'
      'CIDADE_EMP=CIDADE_EMP'
      'UF_EMP=UF_EMP'
      'FONE_EMP=FONE_EMP'
      'FAX_EMP=FAX_EMP'
      'TELEX_EMP=TELEX_EMP'
      'LOGO_EMP=LOGO_EMP'
      'INCLUILOGO_EMP=INCLUILOGO_EMP'
      'EXER_EMP=EXER_EMP'
      'SNHGERAL_EMP=SNHGERAL_EMP'
      'COD_FEBRABAN_AG_EMP=COD_FEBRABAN_AG_EMP'
      'COD_FEBRABAN_EMP=COD_FEBRABAN_EMP'
      'MASCIPTU_EMP=MASCIPTU_EMP'
      'MASCMOBI_EMP=MASCMOBI_EMP'
      'MASCAGUA_EMP=MASCAGUA_EMP'
      'MASCCONTRIB_EMP=MASCCONTRIB_EMP'
      'MASCRURAL_EMP=MASCRURAL_EMP'
      'MASCMATRICULA_EMP=MASCMATRICULA_EMP'
      'CARGO1_EMP=CARGO1_EMP'
      'CARGO2_EMP=CARGO2_EMP'
      'CARGO3_EMP=CARGO3_EMP'
      'CARGO4_EMP=CARGO4_EMP'
      'CARGO5_EMP=CARGO5_EMP'
      'NCARGO1_EMP=NCARGO1_EMP'
      'NCARGO2_EMP=NCARGO2_EMP'
      'NCARGO3_EMP=NCARGO3_EMP'
      'NCARGO4_EMP=NCARGO4_EMP'
      'NCARGO5_EMP=NCARGO5_EMP'
      'LOGIN_INC_EMP=LOGIN_INC_EMP'
      'DTA_INC_EMP=DTA_INC_EMP'
      'LOGIN_ALT_EMP=LOGIN_ALT_EMP'
      'DTA_ALT_EMP=DTA_ALT_EMP'
      'RODAPE_EMP=RODAPE_EMP'
      'MOSTRA_RODAPE_EMP=MOSTRA_RODAPE_EMP'
      'ABRE_SUPORTE_EMP=ABRE_SUPORTE_EMP'
      'EMAILENV_EMP=EMAILENV_EMP'
      'SERVSMTP_EMP=SERVSMTP_EMP'
      'PORTA_EMP=PORTA_EMP'
      'AUTENTICA_EMP=AUTENTICA_EMP'
      'USUEMAIL_EMP=USUEMAIL_EMP'
      'SENHAEMAIL_EMP=SENHAEMAIL_EMP'
      'SITE_EMP=SITE_EMP'
      'PADRAOGUIA_EMP=PADRAOGUIA_EMP'
      'ARQDWG_EMP=ARQDWG_EMP'
      'ASSELTR1_EMP=ASSELTR1_EMP'
      'ASSELTR2_EMP=ASSELTR2_EMP'
      'ASSELTR3_EMP=ASSELTR3_EMP'
      'ASSELTR4_EMP=ASSELTR4_EMP'
      'ASSELTR5_EMP=ASSELTR5_EMP'
      'ADVOGADO_EMP=ADVOGADO_EMP'
      'OAB_EMP=OAB_EMP'
      'UFOAB_EMP=UFOAB_EMP'
      'COMARCA_EMP=COMARCA_EMP'
      'LOGO1_EMP=LOGO1_EMP'
      'LOGOPRIN_EMP=LOGOPRIN_EMP'
      'RODAPE=RODAPE')
    DataSource = dm.dsEmpresa
    BCDToCurrency = False
    Left = 784
    Top = 221
  end
  object dbConvenios: TfrxDBDataset
    UserName = 'dbConvenios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_EMP_CNV=COD_EMP_CNV'
      'CEDENTE_CNV=CEDENTE_CNV'
      'AGENCIA_CNV=AGENCIA_CNV'
      'CONTA_CNV=CONTA_CNV'
      'LOGIN_INC_CNV=LOGIN_INC_CNV'
      'DTA_INC_CNV=DTA_INC_CNV'
      'LOGIN_ALT_CNV=LOGIN_ALT_CNV'
      'DTA_ALT_CNV=DTA_ALT_CNV'
      'BANCO_CNV=BANCO_CNV'
      'LOGO_CNV=LOGO_CNV'
      'LOCALPGTO_CNV=LOCALPGTO_CNV'
      'ESPDOC_CNV=ESPDOC_CNV'
      'ACEITE_CNV=ACEITE_CNV'
      'USOBCO_CNV=USOBCO_CNV'
      'CARTEIRA_CNV=CARTEIRA_CNV'
      'ESPMOEDA_CNV=ESPMOEDA_CNV'
      'AGENCIACEDENTE_CNV=AGENCIACEDENTE_CNV')
    DataSource = dm.dsCadConvenios
    BCDToCurrency = False
    Left = 812
    Top = 221
  end
  object relatorio2: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    EngineOptions.TempDir = 'C:\'
    EngineOptions.UseFileCache = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PreviewOptions.PictureCacheInFile = True
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38609.455327870400000000
    ReportOptions.LastChange = 38614.705478692100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    OnBeforePrint = relatorio2BeforePrint
    Left = 688
    Top = 216
    Datasets = <
      item
        DataSet = dbCadastro
        DataSetName = 'dbCadastro'
      end
      item
        DataSet = dbConvenios
        DataSetName = 'dbConvenios'
      end
      item
        DataSet = DBDados
        DataSetName = 'DBDados'
      end
      item
        DataSet = DBEmpresa
        DataSetName = 'DBEmpresa'
      end
      item
        DataSet = dbReceitas
        DataSetName = 'dbReceitas'
      end
      item
        DataSet = dbResRec
        DataSetName = 'dbResRec'
      end
      item
        DataSet = dbResumo
        DataSetName = 'dbResumo'
      end
      item
        DataSet = dbSorteio
        DataSetName = 'dbSorteio'
      end
      item
        DataSet = DBUnica
        DataSetName = 'DBUnica'
      end
      item
        DataSet = dbVenc
        DataSetName = 'dbVenc'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 4.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = -50.000000000000000000
      Frame.Typ = [ftBottom]
      object Parcelas: TfrxMasterData
        FillType = ftBrush
        Height = 366.614229370000000000
        Top = 782.362710000000000000
        Width = 721.890230000000000000
        DataSet = DBDados
        DataSetName = 'DBDados'
        RowCount = 0
        object Shape20: TfrxShapeView
          Left = 188.976500000000000000
          Width = 514.016080000000000000
          Height = 279.685220000000000000
        end
        object Shape56: TfrxShapeView
          Left = 192.976500000000000000
          Top = 203.874150000000000000
          Width = 52.913358980000000000
          Height = 13.984251970000000000
          Fill.BackColor = clSilver
        end
        object Shape19: TfrxShapeView
          Left = 45.354360000000000000
          Width = 128.504020000000000000
          Height = 336.378170000000000000
        end
        object Shape21: TfrxShapeView
          Left = 192.756030000000000000
          Top = 30.236240000000000000
          Width = 393.071120000000000000
          Height = 22.677180000000000000
        end
        object Shape27: TfrxShapeView
          Left = 192.756030000000000000
          Top = 83.149660000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
        end
        object Shape29: TfrxShapeView
          Left = 192.756030000000000000
          Top = 136.842610000000000000
          Width = 393.071120000000000000
          Height = 64.923933330000000000
        end
        object BarCode1: TfrxBarCodeView
          Left = 196.535560000000000000
          Top = 294.803159370000000000
          Width = 360.000000000000000000
          Height = 41.574830000000000000
          BarType = bcCode_2_5_interleaved
          DataField = 'Barra'
          Expression = '<DBDados."Barra">'
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '1234567891123456789112345678911234567891'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.250000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo92: TfrxMemoView
          Left = 47.133890000000000000
          Top = 21.236240000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Shape33: TfrxShapeView
          Left = 49.133890000000000000
          Top = 108.283550000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Shape34: TfrxShapeView
          Left = 49.133890000000000000
          Top = 64.370130000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Shape35: TfrxShapeView
          Left = 49.133890000000000000
          Top = 86.826840000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Memo94: TfrxMemoView
          Left = 56.692950000000000000
          Top = 64.370130000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ag'#234'ncia/C'#243'digo do Benefici'#225'rio')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 56.692950000000000000
          Top = 86.826840000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nosso N'#250'mero')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 56.692950000000000000
          Top = 115.842610000000000000
          Width = 109.606370000000000000
          Height = 11.338590000000000000
          DataField = 'VrParcela'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."VrParcela"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 56.692950000000000000
          Top = 108.283550000000000000
          Width = 98.267780000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(=) Valor do Documentos')
          ParentFont = False
        end
        object Shape38: TfrxShapeView
          Left = 128.504020000000000000
          Top = 243.110390000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
        end
        object Memo100: TfrxMemoView
          Left = 132.283550000000000000
          Top = 243.110390000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Shape39: TfrxShapeView
          Left = 49.133890000000000000
          Top = 42.913420000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Memo101: TfrxMemoView
          Left = 56.692950000000000000
          Top = 42.913420000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 132.283550000000000000
          Top = 250.669450000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'PARCELA_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."PARCELA_PAR"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 52.913420000000000000
          Top = 48.472480000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          DataField = 'DATAVENCI'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."DATAVENCI"]')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          Left = 49.133890000000000000
          Top = 243.110390000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
        end
        object Memo104: TfrxMemoView
          Left = 56.692950000000000000
          Top = 243.110390000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'd da D'#237'vida')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 52.913420000000000000
          Top = 250.669450000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'COD_DIV_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."COD_DIV_PAR"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 49.133890000000000000
          Top = 268.346630000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
        end
        object Memo106: TfrxMemoView
          Left = 56.692950000000000000
          Top = 269.567100000000000000
          Width = 41.574830000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 52.913420000000000000
          Top = 277.905690000000000000
          Width = 120.944960000000000000
          Height = 11.338590000000000000
          DataField = 'COD_CAD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."COD_CAD_DIV"]')
          ParentFont = False
        end
        object Shape44: TfrxShapeView
          Left = 49.133890000000000000
          Top = 294.803340000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
        end
        object Memo113: TfrxMemoView
          Left = 52.913420000000000000
          Top = 294.803340000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pagador')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 49.133890000000000000
          Top = 302.362400000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PNOMEPROPRI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Shape22: TfrxShapeView
          Left = 589.606680000000000000
          Top = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
        end
        object Shape23: TfrxShapeView
          Left = 589.606680000000000000
          Top = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
        end
        object Shape24: TfrxShapeView
          Left = 589.606680000000000000
          Top = 83.149660000000200000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
        end
        object Memo7: TfrxMemoView
          Left = 597.165740000000000000
          Top = 56.692950000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ag'#234'ncia/C'#243'digo do Benefici'#225'rio')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 597.165740000000000000
          Top = 83.149660000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nosso N'#250'mero')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 589.606680000000000000
          Top = 117.165430000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataField = 'VrParcela'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."VrParcela"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 597.165740000000000000
          Top = 109.606370000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(=) Valor do Documentos')
          ParentFont = False
        end
        object Shape45: TfrxShapeView
          Left = 589.606680000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
        end
        object Memo93: TfrxMemoView
          Left = 597.165740000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 593.386210000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'DATAVENCI'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."DATAVENCI"]')
          ParentFont = False
        end
        object Shape47: TfrxShapeView
          Left = 192.756030000000000000
          Top = 219.212740000000000000
          Width = 393.071120000000000000
          Height = 56.692950000000000000
        end
        object Memo41: TfrxMemoView
          Left = 241.889920000000000000
          Top = 220.551330000000000000
          Width = 343.937230000000000000
          Height = 11.338590000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CPF: [dbCadastro."PCNPJPROPI"] - [dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 196.535560000000000000
          Top = 224.330860000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pagador:')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 196.535560000000000000
          Top = 235.669450000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Logra:    [dbCadastro."NOME_LOG"],  N'#186'    [dbCadastro."NUMERO_DI' +
              'V"] CEP:    [dbCadastro."CEPI_DIV"]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 196.535560000000000000
          Top = 250.787570000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Bairro:   [dbCadastro."NOME_BAI"]    Complemento:   [dbCadastro.' +
              '"COMPLE_DIV"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 196.535560000000000000
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Local de Pagamento')
          ParentFont = False
        end
        object Shape28: TfrxShapeView
          Left = 192.756030000000000000
          Top = 56.692950000000000000
          Width = 393.071120000000000000
          Height = 22.677180000000000000
        end
        object Memo43: TfrxMemoView
          Left = 196.535560000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Benefici'#225'rio')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 196.535560000000000000
          Top = 83.149660000000200000
          Width = 68.031540000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data do Documento')
          ParentFont = False
        end
        object Shape48: TfrxShapeView
          Left = 275.905690000000000000
          Top = 83.149660000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
        end
        object Memo45: TfrxMemoView
          Left = 279.685220000000000000
          Top = 83.149660000000200000
          Width = 128.504020000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#250'mero do Documento')
          ParentFont = False
        end
        object Shape49: TfrxShapeView
          Left = 415.748300000000000000
          Top = 83.149660000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
        end
        object Memo46: TfrxMemoView
          Left = 419.527830000000000000
          Top = 83.149660000000200000
          Width = 37.795300000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Esp'#233'cie')
          ParentFont = False
        end
        object Shape50: TfrxShapeView
          Left = 461.102660000000000000
          Top = 83.149660000000200000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
        end
        object Memo50: TfrxMemoView
          Left = 464.882190000000000000
          Top = 83.149660000000200000
          Width = 37.795300000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Aceite')
          ParentFont = False
        end
        object Shape51: TfrxShapeView
          Left = 506.457020000000000000
          Top = 83.149660000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
        end
        object Memo51: TfrxMemoView
          Left = 510.236550000000000000
          Top = 83.149660000000200000
          Width = 75.590600000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de Processamento')
          ParentFont = False
        end
        object Shape30: TfrxShapeView
          Left = 192.756030000000000000
          Top = 109.606370000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
        end
        object Memo52: TfrxMemoView
          Left = 196.535560000000000000
          Top = 109.606370000000000000
          Width = 68.031540000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Uso do Banco')
          ParentFont = False
        end
        object Shape31: TfrxShapeView
          Left = 385.512060000000000000
          Top = 109.606370000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
        end
        object Memo89: TfrxMemoView
          Left = 389.291590000000000000
          Top = 109.606370000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Carteira')
          ParentFont = False
        end
        object Shape52: TfrxShapeView
          Left = 430.866420000000000000
          Top = 109.606370000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
        end
        object Memo90: TfrxMemoView
          Left = 434.645950000000000000
          Top = 109.606370000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Especie')
          ParentFont = False
        end
        object Shape53: TfrxShapeView
          Left = 476.220780000000000000
          Top = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
        end
        object Memo150: TfrxMemoView
          Left = 480.000310000000000000
          Top = 109.606370000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade  X  Valor')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 287.244280000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 328.819110000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo146: TfrxMemoView
          Left = 49.133890000000000000
          Top = 325.039580000000000000
          Width = 120.944960000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DO PAGADOR')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 291.023810000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'cdbanco'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."cdbanco"]')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 332.598640000000000000
          Top = 7.559060000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'digitavel'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."digitavel"]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 195.315090000000000000
          Top = 37.795300000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          DataField = 'LOCALPGTO_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbConvenios."LOCALPGTO_CNV"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 589.606680000000000000
          Top = 64.252010000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'AGENCIACEDENTE_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbConvenios."AGENCIACEDENTE_CNV"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 589.606680000000000000
          Top = 90.708720000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'nnumero'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDados."nnumero"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 49.133890000000000000
          Top = 91.385900000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DataField = 'nnumero'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDados."nnumero"]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 52.913420000000000000
          Top = 71.929190000000000000
          Width = 116.052566670000000000
          Height = 11.338590000000000000
          DataField = 'AGENCIACEDENTE_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbConvenios."AGENCIACEDENTE_CNV"]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 195.315090000000000000
          Top = 64.252010000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"] CNPJ: [DBEmpresa."CNPJ_EMP"]')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 132.283550000000000000
          Top = 2.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'cdbanco'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."cdbanco"]')
          ParentFont = False
        end
        object logo2: TfrxPictureView
          Left = 192.756030000000000000
          Top = 3.779530000000020000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          DataField = 'LOGO_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo161: TfrxMemoView
          Left = 196.535560000000000000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'DATAVENCI'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."DATAVENCI"]')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 415.748300000000000000
          Top = 90.708720000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'ESPDOC_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbConvenios."ESPDOC_CNV"]')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 468.661720000000000000
          Top = 90.708720000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'ACEITE_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbConvenios."ACEITE_CNV"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 506.457020000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'DATAVENCI'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."DATAVENCI"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 388.071120000000000000
          Top = 117.165430000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataField = 'CARTEIRA_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbConvenios."CARTEIRA_CNV"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 434.645950000000000000
          Top = 117.165430000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DataField = 'ESPMOEDA_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbConvenios."ESPMOEDA_CNV"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 196.535560000000000000
          Top = 117.165430000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataField = 'USOBCO_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbConvenios."USOBCO_CNV"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 49.133890000000000000
          Top = 2.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'LOGO_CNV'
          DataSet = dbConvenios
          DataSetName = 'dbConvenios'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo168: TfrxMemoView
          Left = 279.685220000000000000
          Top = 90.708720000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '2-[DBDados."COD_DIV_PAR"]-[DBDados."TP_PAR"]-[DBDados."PARCELA_P' +
              'AR"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 195.535560000000000000
          Top = 147.401670000000000000
          Width = 385.512060000000000000
          Height = 48.472480000000000000
          DataField = 'MENS1_VEN'
          DataSet = dbVenc
          DataSetName = 'dbVenc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenc."MENS1_VEN"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 247.307050000000000000
          Top = 202.212120000000000000
          Width = 339.128633330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Cadastro:  [dbCadastro."COD_CAD_DIV"] M'#243'dulo:  [dbCadastro."COD_' +
              'MOD_DIV"] Parcela:  [DBDados."PARCELA_PAR"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 192.756030000000000000
          Top = 202.653680000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 196.535560000000000000
          Top = 263.787570000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pagador/Avalista')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 194.976500000000000000
          Top = 135.842610000000000000
          Width = 234.787570000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Instru'#231#245'es - Texto de Responsabilidade do Benefici'#225'rio')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          Left = 49.133890000000000000
          Top = 130.842610000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Memo9: TfrxMemoView
          Left = 56.692950000000000000
          Top = 130.842610000000000000
          Width = 98.267780000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(-) Desconto/Abatimento')
          ParentFont = False
        end
        object Shape26: TfrxShapeView
          Left = 49.133890000000000000
          Top = 152.519790000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Memo39: TfrxMemoView
          Left = 56.692950000000000000
          Top = 152.519790000000000000
          Width = 98.267780000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(-) Outras Dedu'#231#245'es')
          ParentFont = False
        end
        object Shape36: TfrxShapeView
          Left = 49.133890000000000000
          Top = 174.196970000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Memo64: TfrxMemoView
          Left = 56.692950000000000000
          Top = 174.196970000000000000
          Width = 98.267780000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(+) Mora/Multa')
          ParentFont = False
        end
        object Shape37: TfrxShapeView
          Left = 49.133890000000000000
          Top = 196.874150000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Memo66: TfrxMemoView
          Left = 56.692950000000000000
          Top = 196.874150000000000000
          Width = 98.267780000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(+) Outros Acr'#233'scimos')
          ParentFont = False
        end
        object Shape43: TfrxShapeView
          Left = 49.133890000000000000
          Top = 219.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897637800000000000
        end
        object Memo96: TfrxMemoView
          Left = 56.692950000000000000
          Top = 219.212740000000000000
          Width = 98.267780000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(=) Valor Cobrado ')
          ParentFont = False
        end
        object Shape58: TfrxShapeView
          Left = 589.606680000000000000
          Top = 136.063080000000000000
          Width = 109.606370000000000000
          Height = 23.811023620000000000
        end
        object Shape59: TfrxShapeView
          Left = 589.606680000000000000
          Top = 191.976500000000000000
          Width = 109.606370000000000000
          Height = 23.811023620000000000
        end
        object Memo97: TfrxMemoView
          Left = 597.165740000000000000
          Top = 136.063080000000000000
          Width = 79.370130000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(-) Desconto/Abatimento')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 597.165740000000000000
          Top = 191.976500000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(+) Mora/Multa')
          ParentFont = False
        end
        object Shape62: TfrxShapeView
          Left = 589.606680000000000000
          Top = 163.519790000000000000
          Width = 109.606370000000000000
          Height = 23.811023620000000000
        end
        object Memo110: TfrxMemoView
          Left = 597.165740000000000000
          Top = 163.519790000000000000
          Width = 79.370130000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(-) Outras Dedu'#231#245'es')
          ParentFont = False
        end
        object Shape46: TfrxShapeView
          Left = 589.606680000000000000
          Top = 218.433210000000000000
          Width = 109.606370000000000000
          Height = 23.811023620000000000
        end
        object Memo129: TfrxMemoView
          Left = 597.165740000000000000
          Top = 218.433210000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(+) Outros Acr'#233'scimos')
          ParentFont = False
        end
        object Shape55: TfrxShapeView
          Left = 589.606680000000000000
          Top = 245.889920000000000000
          Width = 109.606370000000000000
          Height = 23.811023620000000000
        end
        object Memo111: TfrxMemoView
          Left = 597.165740000000000000
          Top = 245.889920000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '(=) Valor Cobrado ')
          ParentFont = False
        end
      end
      object Capa: TfrxGroupHeader
        FillType = ftBrush
        Height = 740.787518740000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
        Condition = '<DBDados."COD_DIV_PAR">'
        object Shape1: TfrxShapeView
          Left = 46.110266000000000000
          Top = 0.755906000000000000
          Width = 661.417750000000000000
          Height = 332.598481340000000000
        end
        object imgBrasao: TfrxPictureView
          Left = 49.133890000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 49.133890000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724490000000000000
          Top = 34.015770000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Top = 70.031540000000000000
          Width = 668.976810000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE ENTREGA')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 464.882190000000000000
          Top = 86.929190000000000000
          Width = 238.110390000000000000
          Height = 139.842610000000000000
        end
        object Shape5: TfrxShapeView
          Left = 464.882190000000000000
          Top = 200.315090000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo5: TfrxMemoView
          Left = 468.661720000000000000
          Top = 200.315090000000000000
          Width = 68.031540000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da 1'#186' Tentativa')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 544.252320000000000000
          Top = 200.315090000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo6: TfrxMemoView
          Left = 548.031850000000000000
          Top = 200.315090000000000000
          Width = 68.031540000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da 2'#186' Tentativa')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 623.622450000000000000
          Top = 200.315090000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo10: TfrxMemoView
          Left = 627.401980000000000000
          Top = 200.315090000000000000
          Width = 68.031540000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da 3'#186' Tentativa')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 544.252320000000000000
          Top = 109.606370000000000000
          Width = 68.031540000000000000
          Height = 79.370130000000000000
        end
        object Memo12: TfrxMemoView
          Left = 468.661720000000000000
          Top = 113.385900000000000000
          Width = 64.252010000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'A - Desconhecido')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 468.661720000000000000
          Top = 126.992208000000000000
          Width = 64.252010000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'B - Recusou-se')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 468.661720000000000000
          Top = 140.598516000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C - Viajando')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 468.661720000000000000
          Top = 154.204824000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'D - Mudou-se')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 468.661720000000000000
          Top = 167.811132000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'F - N'#227'o Atendido')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 468.661720000000000000
          Top = 181.417440000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'G - N'#186' Inexistente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 544.252320000000000000
          Top = 120.944960000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 544.252320000000000000
          Top = 134.551268000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 544.252320000000000000
          Top = 148.157576000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 544.252320000000000000
          Top = 161.763884000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 544.252320000000000000
          Top = 175.370192000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Left = 544.252320000000000000
          Top = 98.267780000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '1'#186)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 570.709030000000000000
          Top = 98.267780000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '2'#186)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 593.386210000000000000
          Top = 98.267780000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '3'#186)
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 589.606680000000000000
          Top = 109.606370000000000000
          Height = 79.370130000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Top = 109.606370000000000000
          Height = 79.370130000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo23: TfrxMemoView
          Left = 468.661720000000000000
          Top = 249.448980000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Recebi nesta data o Carne Identificado ao lado')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 468.661720000000000000
          Top = 268.346630000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '___/___/______')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 468.661720000000000000
          Top = 294.803340000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '___/___/______')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 555.590910000000000000
          Top = 279.685220000000000000
          Width = 147.401670000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line9: TfrxLineView
          Left = 555.590910000000000000
          Top = 306.141930000000000000
          Width = 147.401670000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          Left = 555.590910000000000000
          Top = 279.685220000000000000
          Width = 30.236240000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 559.370440000000000000
          Top = 309.921460000000000000
          Width = 60.472480000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Funcion'#225'rio')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 49.133890000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
        end
        object Shape8: TfrxShapeView
          Left = 170.078850000000000000
          Top = 86.929190000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
        end
        object Shape9: TfrxShapeView
          Left = 343.937230000000000000
          Top = 86.929190000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
        end
        object Shape10: TfrxShapeView
          Left = 49.133890000000000000
          Top = 117.165430000000000000
          Width = 411.968770000000000000
          Height = 71.811070000000000000
        end
        object Shape11: TfrxShapeView
          Left = 49.133890000000000000
          Top = 268.346630000000000000
          Width = 411.968770000000000000
          Height = 60.472480000000000000
        end
        object Memo28: TfrxMemoView
          Left = 52.913420000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo da D'#237'vida')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 173.858380000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 347.716760000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 52.913420000000000000
          Top = 268.346630000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o de Correspond'#234'ncia')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 45.354360000000000000
          Top = 370.393940000000000000
          Width = 661.417750000000000000
          Height = 340.157700000000000000
        end
        object Picture1: TfrxPictureView
          Left = 49.133890000000000000
          Top = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 49.133890000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo11: TfrxMemoView
          Left = 128.504020000000000000
          Top = 377.953000000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 128.504020000000000000
          Top = 396.850650000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
        object Shape13: TfrxShapeView
          Left = 49.133890000000000000
          Top = 445.984540000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
        end
        object Shape14: TfrxShapeView
          Left = 166.299320000000000000
          Top = 445.984540000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
        end
        object Shape15: TfrxShapeView
          Left = 340.157700000000000000
          Top = 445.984540000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
        end
        object Shape16: TfrxShapeView
          Left = 49.133890000000000000
          Top = 472.441250000000000000
          Width = 408.189240000000000000
          Height = 56.692950000000000000
        end
        object Shape17: TfrxShapeView
          Left = 49.133890000000000000
          Top = 532.913730000000000000
          Width = 408.189240000000000000
          Height = 60.472480000000000000
        end
        object Memo33: TfrxMemoView
          Left = 52.133890000000000000
          Top = 445.984540000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo da D'#237'vida')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 54.133890000000000000
          Top = 476.220780000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contribuinte')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 54.133890000000000000
          Top = 532.913730000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Left = 49.133890000000000000
          Top = 597.165740000000000000
          Width = 408.189240000000000000
          Height = 45.354360000000000000
        end
        object Memo36: TfrxMemoView
          Left = 55.133890000000000000
          Top = 597.165740000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o de Correspond'#234'ncia')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 476.220780000000000000
          Top = 445.984540000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Instru'#231#245'es e Avisos')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 476.220780000000000000
          Top = 480.000310000000000000
          Width = 222.992270000000000000
          Height = 222.992270000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 52.913420000000000000
          Top = 94.488250000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'COD_DIV_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."COD_DIV_PAR"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 52.913420000000000000
          Top = 453.543600000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataField = 'COD_DIV_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."COD_DIV_PAR"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 52.913420000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Propriet'#225'rio')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 52.913420000000000000
          Top = 131.283550000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataField = 'PNOMEPROPRI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 313.700990000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 313.700990000000000000
          Top = 131.283550000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'PCNPJPROPI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCadastro."PCNPJPROPI"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 52.913420000000000000
          Top = 279.685220000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Logra:    [dbCadastro."LOGRA_DIV"],     N'#186'  [dbCadastro."NUMEROE' +
              '_DIV"]     CEP: [dbCadastro."CEPE_DIV"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 52.913420000000000000
          Top = 294.803340000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Bairro:     [dbCadastro."BAIRRO_DIV"] Complemento:     [dbCadast' +
              'ro."COMPLEE_DIV"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 52.913420000000000000
          Top = 309.921460000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Cidade:     [dbCadastro."NOME_CID"] UF:     [dbCadastro."UF_CID"' +
              ']')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 173.858380000000000000
          Top = 94.488250000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataField = 'MATRICULA_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."MATRICULA_DIV"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 346.716760000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'COD_CAD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."COD_CAD_DIV"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 55.133890000000000000
          Top = 604.724800000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Logra:    [dbCadastro."LOGRA_DIV"],     N'#186'  [dbCadastro."NUMEROE' +
              '_DIV"]     CEP: [dbCadastro."CEPE_DIV"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 55.133890000000000000
          Top = 616.063390000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Bairro:     [dbCadastro."BAIRRO_DIV"] Comple:     [dbCadastro."C' +
              'OMPLEE_DIV"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 55.133890000000000000
          Top = 627.401980000000000000
          Width = 396.850650000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Cidade:     [dbCadastro."NOME_CID"] UF:     [dbCadastro."UF_CID"' +
              ']')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 54.133890000000000000
          Top = 483.779840000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataField = 'PNOMEPROPRI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 314.921460000000000000
          Top = 483.779840000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'PCNPJPROPI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCadastro."PCNPJPROPI"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 166.299320000000000000
          Top = 445.984540000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Matricula')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 166.299320000000000000
          Top = 453.543600000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataField = 'MATRICULA_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."MATRICULA_DIV"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 340.157700000000000000
          Top = 445.984540000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 342.937230000000000000
          Top = 453.543600000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'COD_CAD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."COD_CAD_DIV"]')
          ParentFont = False
        end
        object Shape32: TfrxShapeView
          Left = 49.133890000000000000
          Top = 192.756030000000000000
          Width = 411.968770000000000000
          Height = 71.811070000000000000
        end
        object Memo151: TfrxMemoView
          Left = 52.913420000000000000
          Top = 192.756030000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 52.913420000000000000
          Top = 204.094620000000000000
          Width = 404.409710000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Logra: [DBDados."LOGRA_RRR"] - [DBDados."COMPL_RRR"]'
            '          [DBDados."OBSLOGRA_RRR"]')
          ParentFont = False
        end
        object Shape42: TfrxShapeView
          Left = 49.133890000000000000
          Top = 646.299630000000000000
          Width = 408.189240000000000000
          Height = 60.472480000000000000
        end
        object Memo14: TfrxMemoView
          Left = 396.472697000000000000
          Top = 417.748300000000000000
          Width = 114.519759000000000000
          Height = 18.897650000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Exerc'#237'cio: [DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object Memo169: TfrxMemoView
          Left = 128.504020000000000000
          Top = 417.748300000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL')
          ParentFont = False
        end
        object Memo170: TfrxMemoView
          Left = 392.693167000000000000
          Top = 51.133890000000000000
          Width = 114.519759000000000000
          Height = 18.897650000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Exerc'#237'cio: [DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 124.724490000000000000
          Top = 51.133890000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL')
          ParentFont = False
        end
        object Subreport3: TfrxSubreport
          Left = 49.133890000000000000
          Top = 646.299630000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          Page = relatorio2.Page4
        end
        object Memo178: TfrxMemoView
          Left = 52.913420000000000000
          Top = 155.740260000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Propriedade')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Left = 128.504020000000000000
          Top = 149.960730000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          DataField = 'PROPRIEDADE_RRR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."PROPRIEDADE_RRR"]')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 54.133890000000000000
          Top = 504.897960000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Propriedade')
          ParentFont = False
        end
        object BarCode2: TfrxBarCodeView
          Left = 646.299630000000000000
          Top = 94.488250000000000000
          Width = 49.645640000000000000
          Height = 103.000000000000000000
          BarType = bcCodeEAN13
          DataField = 'COD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Expression = '<dbCadastro."COD_DIV">'
          Rotation = 90
          TestLine = False
          Text = '123456789123'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object BarCode3: TfrxBarCodeView
          Left = 653.858690000000000000
          Top = 374.173470000000000000
          Width = 49.645640000000000000
          Height = 103.000000000000000000
          BarType = bcCodeEAN13
          DataField = 'COD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Expression = '<dbCadastro."COD_DIV">'
          Rotation = 90
          TestLine = False
          Text = '123456789123'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo153: TfrxMemoView
          Left = 52.913420000000000000
          Top = 247.669450000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #193'reas : [DBDados."AREAE_RRR"] Hectare. / [DBDados."AREAH_RRR"] A' +
              'lq. / [DBDados."AREAM_RRR"] m'#178)
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 54.133890000000000000
          Top = 548.031850000000000000
          Width = 393.071120000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Logra: [DBDados."LOGRA_RRR"] - [DBDados."COMPL_RRR"]'
            '          [DBDados."OBSLOGRA_RRR"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 129.724490000000000000
          Top = 498.897960000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          DataField = 'PROPRIEDADE_RRR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."PROPRIEDADE_RRR"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 52.913420000000000000
          Top = 174.078850000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Responsavel')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 128.504020000000000000
          Top = 168.299320000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."RESPONSA_RRR"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 54.133890000000000000
          Top = 517.236550000000000000
          Width = 71.811070000000000000
          Height = 7.559060000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Responsavel')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 129.724490000000000000
          Top = 511.236550000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."RESPONSA_RRR"]')
          ParentFont = False
        end
      end
      object Demonstrativo: TfrxGroupFooter
        FillType = ftBrush
        Height = 279.685039370000000000
        Top = 1171.654300000000000000
        Width = 721.890230000000000000
        object Subreport1: TfrxSubreport
          Left = 45.354360000000000000
          Top = 3.779530000000020000
          Width = 672.756340000000000000
          Height = 18.897650000000000000
          Page = relatorio2.Page2
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 4.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = -50.000000000000000000
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 373.795517000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
        DataSet = dbResumo
        DataSetName = 'dbResumo'
        RowCount = 0
        object Shape54: TfrxShapeView
          Width = 661.417750000000000000
          Height = 340.157700000000000000
        end
        object Line10: TfrxLineView
          Left = 0.755906000000000000
          Top = 65.007916000000000000
          Width = 660.283891000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Picture4: TfrxPictureView
          Left = 3.023624000000000000
          Top = 5.291342000000000000
          Width = 52.913420000000000000
          Height = 49.133890000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo119: TfrxMemoView
          Left = 67.275634000000000000
          Top = 0.755906000000000000
          Width = 585.448825980000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 66.519728000000000000
          Top = 19.653556000000000000
          Width = 586.960637980000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 67.275634000000000000
          Top = 42.708689000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL - Demonstrativo dos C'#225'lculos')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 456.567224000000000000
          Top = 42.708689000000000000
          Width = 196.913513000000000000
          Height = 18.897650000000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro: [dbResumo."CADASTRO"]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 246.047403000000000000
          Top = 72.157514000000000000
          Width = 106.960699000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            #193'reas do Im'#243'vel')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 359.811256000000000000
          Top = 71.433117000000000000
          Width = 102.803146430000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'C'#243'digo de Cobran'#231'a')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 246.047403000000000000
          Top = 89.543352000000000000
          Width = 46.866172000000000000
          Height = 14.362204720000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hectare:')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 246.047403000000000000
          Top = 105.417378000000000000
          Width = 47.244125000000000000
          Height = 14.362204720000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Alqueire:')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 243.023779000000000000
          Top = 65.763822000000000000
          Height = 274.015925000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 357.165585000000000000
          Top = 65.385869000000000000
          Height = 274.015809060000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 465.638096000000000000
          Top = 65.763822000000000000
          Height = 274.015809060000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo60: TfrxMemoView
          Left = 359.811256000000000000
          Top = 89.952814000000000000
          Width = 102.047240430000000000
          Height = 14.362204720000000000
          DataField = 'COBRANCA'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbResumo."COBRANCA"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 332.220687000000000000
          Top = 43.464595000000000000
          Width = 119.433148000000000000
          Height = 18.897650000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Exercicio: [DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object Subreport2: TfrxSubreport
          Left = 468.661720000000000000
          Top = 68.031540000000000000
          Width = 188.976500000000000000
          Height = 268.346630000000000000
          Page = relatorio2.Page3
        end
        object Memo123: TfrxMemoView
          Left = 9.070872000000000000
          Top = 183.315059000000000000
          Width = 119.811101000000000000
          Height = 14.362214000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Localiza'#231#227'o do Im'#243'vel')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 9.070872000000000000
          Top = 203.716667000000000000
          Width = 233.197001000000000000
          Height = 10.582674720000000000
          DataField = 'LOGRAPROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."LOGRAPROPRIEDADE"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 9.070872000000000000
          Top = 218.456834000000000000
          Width = 233.196850390000000000
          Height = 14.362204720000000000
          DataField = 'COMPLPROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."COMPLPROPRIEDADE"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 9.070872000000000000
          Top = 236.330860000000000000
          Width = 233.196850390000000000
          Height = 86.173274720000000000
          DataField = 'OBSLOGRAPROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."OBSLOGRAPROPRIEDADE"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 9.070872000000000000
          Top = 75.590600000000000000
          Width = 68.031540000000000000
          Height = 12.850402000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Propriet'#225'rio')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 9.070872000000000000
          Top = 86.283519000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'CONTRIBUINTE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."CONTRIBUINTE"]')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 298.204917000000000000
          Top = 105.417378000000000000
          Width = 58.204762000000000000
          Height = 14.362204720000000000
          DataField = 'HEQUITARE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."HEQUITARE"]')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 297.826964000000000000
          Top = 89.543352000000000000
          Width = 58.582715000000000000
          Height = 14.362204720000000000
          DataField = 'ALQUEIRE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."ALQUEIRE"]')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 245.669450000000000000
          Top = 123.724490000000000000
          Width = 47.622078000000000000
          Height = 14.362204720000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Metro'#178':')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          Left = 297.071058000000000000
          Top = 123.724490000000000000
          Width = 58.960668000000000000
          Height = 14.362204720000000000
          DataField = 'METRO'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."METRO"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 245.669450000000000000
          Top = 147.401670000000000000
          Width = 106.960699000000000000
          Height = 14.362204720000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Valor Venal')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 9.070872000000000000
          Top = 128.504020000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'PROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."PROPRIEDADE"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 9.070872000000000000
          Top = 113.385900000000000000
          Width = 128.504020000000000000
          Height = 12.850402000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome da Propriedade')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 245.669450000000000000
          Top = 166.299320000000000000
          Width = 108.094558000000000000
          Height = 14.362204720000000000
          DataField = 'VVENAL'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."VVENAL"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 9.559060000000000000
          Top = 162.519790000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'RESPONSAVEL'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."RESPONSAVEL"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 9.559060000000000000
          Top = 147.401670000000000000
          Width = 128.504020000000000000
          Height = 12.850402000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Responsavel')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 13.984261000000000000
        Top = 56.692950000000000000
        Width = 718.110700000000000000
        DataSet = dbResRec
        DataSetName = 'dbResRec'
        RowCount = 0
        Stretched = True
        object Memo62: TfrxMemoView
          Left = 1.133859000000000000
          Top = 1.133859000000000000
          Width = 97.889827000000000000
          Height = 11.338590000000000000
          DataField = 'DESCRI_REC'
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbResRec."DESCRI_REC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo63: TfrxMemoView
          Left = 142.535498000000000000
          Top = 1.133859000000000000
          Width = 45.732313000000000000
          Height = 11.338590000000000000
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResRec."VALOR"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          Left = 120.236271000000000000
          Top = 1.889765000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbResRec."VALOR">,MasterData4)]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 1.133859000000000000
          Top = 1.889765000000000000
          Width = 39.685065000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 0.377953000000000000
          Top = 0.755905999999996000
          Width = 188.220472440000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 13.984261000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo68: TfrxMemoView
          Left = 131.574861000000000000
          Top = 0.944882500000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 1.133859000000000000
          Top = 1.322835500000000000
          Width = 47.622078000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Receita')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 4.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = -50.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 60.472480000000000000
        Width = 721.890230000000000000
        Columns = 3
        ColumnWidth = 113.385826771654000000
        ColumnGap = 18.897637795275600000
        DataSet = dbSorteio
        DataSetName = 'dbSorteio'
        RowCount = 0
        object Memo177: TfrxMemoView
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'NRO_PREMIO_PRE'
          DataSet = dbSorteio
          DataSetName = 'dbSorteio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbSorteio."NRO_PREMIO_PRE"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 17.763791000000000000
        Top = 18.897650000000000000
        Width = 721.890230000000000000
        object Memo176: TfrxMemoView
          Left = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#250'meros para Sorteio')
          ParentFont = False
        end
      end
    end
  end
  object Relatorio: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.PictureCacheInFile = True
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38854.817967303200000000
    ReportOptions.LastChange = 38854.817967303200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = RelatorioBeforePrint
    Left = 660
    Top = 216
    Datasets = <
      item
        DataSet = dbCadastro
        DataSetName = 'dbCadastro'
      end
      item
        DataSet = DBDados
        DataSetName = 'DBDados'
      end
      item
        DataSet = DBEmpresa
        DataSetName = 'DBEmpresa'
      end
      item
        DataSet = dbReceitas
        DataSetName = 'dbReceitas'
      end
      item
        DataSet = dbResRec
        DataSetName = 'dbResRec'
      end
      item
        DataSet = dbResumo
        DataSetName = 'dbResumo'
      end
      item
        DataSet = DBUnica
        DataSetName = 'DBUnica'
      end
      item
        DataSet = dbVenc
        DataSetName = 'dbVenc'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 4.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = -7.000000000000000000
      object Capa: TfrxGroupHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 556.346456690000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 721.890230000000000000
        Condition = 'DBDados."COD_DIV_PAR"'
        object Shape1: TfrxShapeView
          Left = 41.574830000000000000
          Top = 68.590600000000000000
          Width = 661.417750000000000000
          Height = 181.417281340000000000
        end
        object Shape2: TfrxShapeView
          Left = 45.354360000000000000
          Top = 132.842610000000000000
          Width = 415.748300000000000000
          Height = 30.236240000000000000
        end
        object Picture1: TfrxPictureView
          Left = 49.133890000000000000
          Top = 3.204731000000000000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 124.724490000000000000
          Top = 3.582684000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 585.449197000000000000
          Top = 25.015770000000010000
          Width = 114.519759000000000000
          Height = 18.897650000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Exerc'#237'cio: [DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724490000000000000
          Top = 25.015770000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Top = 45.913420000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 464.882190000000000000
          Top = 72.370130000000000000
          Width = 238.110390000000000000
          Height = 139.842610000000000000
        end
        object Shape4: TfrxShapeView
          Left = 464.882190000000000000
          Top = 185.756030000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo5: TfrxMemoView
          Left = 468.661720000000000000
          Top = 185.756030000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da 1'#186' Tentativa')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 544.252320000000000000
          Top = 185.756030000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo6: TfrxMemoView
          Left = 548.031850000000000000
          Top = 185.756030000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da 2'#186' Tentativa')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 623.622450000000000000
          Top = 185.756030000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo7: TfrxMemoView
          Left = 627.401980000000000000
          Top = 185.756030000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da 3'#186' Tentativa')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 544.252320000000000000
          Top = 83.708720000000000000
          Width = 68.031540000000000000
          Height = 79.370130000000000000
        end
        object Memo8: TfrxMemoView
          Left = 468.661720000000000000
          Top = 87.488250000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'A - Desconhecido')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 468.661720000000000000
          Top = 101.094558000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'B - Recusou-se')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 468.661720000000000000
          Top = 114.700866000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C - Viajando')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 468.661720000000000000
          Top = 128.307174000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'D - Mudou-se')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 468.661720000000000000
          Top = 141.913482000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'F - N'#227'o Atendido')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 468.661720000000000000
          Top = 155.519790000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'G - N'#186' Inexistente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 544.252320000000000000
          Top = 95.047310000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Left = 544.252320000000000000
          Top = 108.653618000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 544.252320000000000000
          Top = 122.259926000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 544.252320000000000000
          Top = 135.866234000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 544.252320000000000000
          Top = 149.472542000000000000
          Width = 68.031540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo14: TfrxMemoView
          Left = 544.252320000000000000
          Top = 72.370130000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '1'#186)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 570.709030000000000000
          Top = 72.370130000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '2'#186)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 593.386210000000000000
          Top = 72.370130000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '3'#186)
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 589.606680000000000000
          Top = 83.708720000000000000
          Height = 79.370130000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Top = 83.708720000000000000
          Height = 79.370130000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo17: TfrxMemoView
          Left = 49.133890000000000000
          Top = 215.992270000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Recebi nesta data o Carne Identificado acima')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 249.448980000000000000
          Top = 219.771800000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '___/___/______')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 491.338900000000000000
          Top = 219.771800000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '___/___/______')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 336.378170000000000000
          Top = 231.110390000000000000
          Width = 147.401670000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line9: TfrxLineView
          Left = 582.047620000000000000
          Top = 231.110390000000000000
          Width = 117.165430000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Left = 340.157700000000000000
          Top = 234.889920000000000000
          Width = 30.236240000000000000
          Height = 7.559060000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 585.827150000000000000
          Top = 234.889920000000000000
          Width = 60.472480000000000000
          Height = 7.559060000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Funcion'#225'rio')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          Left = 45.354360000000000000
          Top = 72.370130000000000000
          Width = 120.944960000000000000
          Height = 23.433070870000000000
        end
        object Shape9: TfrxShapeView
          Left = 170.078850000000000000
          Top = 72.370130000000000000
          Width = 170.078850000000000000
          Height = 23.433086000000000000
        end
        object Shape10: TfrxShapeView
          Left = 343.937230000000000000
          Top = 72.370130000000000000
          Width = 117.165430000000000000
          Height = 23.433070866141700000
        end
        object Shape11: TfrxShapeView
          Left = 45.354360000000000000
          Top = 98.826840000000000000
          Width = 415.748300000000000000
          Height = 34.015770000000000000
        end
        object Shape12: TfrxShapeView
          Left = 45.354360000000000000
          Top = 163.078850000000000000
          Width = 415.748300000000000000
          Height = 49.133890000000000000
        end
        object Memo22: TfrxMemoView
          Left = 50.535467000000000000
          Top = 72.370078740000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo da D'#237'vida')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 170.456803000000000000
          Top = 72.370078740157490000
          Width = 71.811070000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Matricula')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 343.559277000000000000
          Top = 72.370078740157490000
          Width = 71.811070000000000000
          Height = 9.448825000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 49.913420000000000000
          Top = 163.078850000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o de Correspond'#234'ncia')
          ParentFont = False
        end
        object Shape13: TfrxShapeView
          Left = 45.354360000000000000
          Top = 279.685220000000000000
          Width = 661.417750000000000000
          Height = 249.448980000000000000
        end
        object Picture2: TfrxPictureView
          Left = 49.133890000000000000
          Top = 287.244280000000000000
          Width = 71.811070000000000000
          Height = 60.472440940000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo26: TfrxMemoView
          Left = 124.724490000000000000
          Top = 287.244280000000000000
          Width = 517.795238980000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 124.724490000000000000
          Top = 306.141930000000000000
          Width = 517.795238980000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
        object Shape14: TfrxShapeView
          Left = 49.133890000000000000
          Top = 355.275820000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
        end
        object Shape15: TfrxShapeView
          Left = 170.078850000000000000
          Top = 355.275820000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
        end
        object Shape16: TfrxShapeView
          Left = 343.937230000000000000
          Top = 355.275820000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
        end
        object Shape17: TfrxShapeView
          Left = 49.133890000000000000
          Top = 381.732530000000000000
          Width = 411.968770000000000000
          Height = 30.236240000000000000
        end
        object Shape18: TfrxShapeView
          Left = 49.133890000000000000
          Top = 415.748300000000000000
          Width = 411.968770000000000000
          Height = 60.472480000000000000
        end
        object Memo28: TfrxMemoView
          Left = 52.157514000000000000
          Top = 354.519914000000000000
          Width = 71.811070000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'digo da D'#237'vida')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 52.913420000000000000
          Top = 384.756154000000000000
          Width = 71.811070000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Propriet'#225'rio')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 52.913420000000000000
          Top = 415.748300000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Left = 49.133890000000000000
          Top = 480.000310000000000000
          Width = 411.968770000000000000
          Height = 45.354360000000000000
        end
        object Memo31: TfrxMemoView
          Left = 52.913420000000000000
          Top = 480.000310000000000000
          Width = 158.740260000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o de Correspond'#234'ncia')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 480.000310000000000000
          Top = 351.496290000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Instru'#231#245'es e Avisos')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 480.000310000000000000
          Top = 389.291590000000000000
          Width = 222.992270000000000000
          Height = 128.504020000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 50.913420000000000000
          Top = 79.551237000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'COD_DIV_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."COD_DIV_PAR"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 52.913420000000000000
          Top = 362.078974000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'COD_DIV_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."COD_DIV_PAR"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 49.913420000000000000
          Top = 102.606370000000000000
          Width = 71.811070000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Propriet'#225'rio')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 49.913420000000000000
          Top = 113.944960000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          DataField = 'PNOMEPROPRI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 337.157700000000000000
          Top = 102.606370000000000000
          Width = 71.811070000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 337.157700000000000000
          Top = 113.944960000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '['
            'iif('
            '(Length(<dbCadastro."PCNPJPROPI">)=14),'
            
              '(FormatMaskText('#39'00\.000\.000\/0000\-00;0;_'#39',<dbCadastro."PCNPJP' +
              'ROPI">)),'
            'iif((Length(<dbCadastro."PCNPJPROPI">)=11),'
            
              '(FormatMaskText('#39'000\.000\.000\-00;0;_'#39',<dbCadastro."PCNPJPROPI"' +
              '>)),'
            '<dbCadastro."PCNPJPROPI">)'
            ')'
            ']'
            ''
            '')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 49.913420000000000000
          Top = 174.417440000000000000
          Width = 408.189240000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Logra:    [dbCadastro."LOGRA_DIV"], N'#186' [dbCadastro."NUMEROE_DIV"' +
              '] - CEP: [dbCadastro."CEPE_DIV"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 49.913420000000000000
          Top = 185.756030000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Bairro:     [dbCadastro."BAIRRO_DIV"] Complemento: [dbCadastro."' +
              'COMPLEE_DIV"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 49.913420000000000000
          Top = 197.094620000000000000
          Width = 408.189240000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade:     [dbCadastro."NOME_CID"] UF: [dbCadastro."UF_CID"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 170.078850000000000000
          Top = 79.551237000000000000
          Width = 162.519790000000000000
          Height = 15.874026000000000000
          DataField = 'MATRICULA_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."MATRICULA_DIV"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 347.716760000000000000
          Top = 79.551237000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'COD_CAD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."COD_CAD_DIV"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 52.913420000000000000
          Top = 487.559370000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Logra:    [dbCadastro."LOGRA_DIV"], N'#186' [dbCadastro."NUMEROE_DIV"' +
              '] - CEP: [dbCadastro."CEPE_DIV"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 52.913420000000000000
          Top = 498.897960000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Bairro:     [dbCadastro."BAIRRO_DIV"]  Comple: [dbCadastro."COMP' +
              'LEE_DIV"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 52.913420000000000000
          Top = 510.236549999999900000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade:     [dbCadastro."NOME_CID"] UF: [dbCadastro."UF_CID"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 52.913420000000000000
          Top = 393.071120000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          DataField = 'PNOMEPROPRI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 362.834880000000000000
          Top = 393.071120000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '['
            'iif('
            '(Length(<dbCadastro."PCNPJPROPI">)=14),'
            
              '(FormatMaskText('#39'00\.000\.000\/0000\-00;0;_'#39',<dbCadastro."PCNPJP' +
              'ROPI">)),'
            'iif((Length(<dbCadastro."PCNPJPROPI">)=11),'
            
              '(FormatMaskText('#39'000\.000\.000\-00;0;_'#39',<dbCadastro."PCNPJPROPI"' +
              '>)),'
            '<dbCadastro."PCNPJPROPI">)'
            ')'
            ']'
            ''
            '')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 169.700897000000000000
          Top = 354.519685039370000000
          Width = 71.811070000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Matricula')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 170.078850000000000000
          Top = 362.834880000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataField = 'MATRICULA_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."MATRICULA_DIV"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 343.559277000000000000
          Top = 354.519685040000000000
          Width = 71.811070000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 347.716760000000000000
          Top = 362.834880000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'COD_CAD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."COD_CAD_DIV"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 49.913420000000000000
          Top = 136.622140000000000000
          Width = 52.913420000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Propriedade')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 110.385900000000000000
          Top = 136.622140000000000000
          Width = 347.716760000000000000
          Height = 11.338590000000000000
          DataField = 'PROPRIEDADE_RRR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."PROPRIEDADE_RRR"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 124.724490000000000000
          Top = 328.819110000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 250.204886000000000000
          Top = 328.819110000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Exercicio: [DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object BarCode2: TfrxBarCodeView
          Left = 646.299630000000000000
          Top = 79.929190000000000000
          Width = 49.645640000000000000
          Height = 103.000000000000000000
          BarType = bcCodeEAN13
          DataField = 'COD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Expression = '<dbCadastro."COD_DIV">'
          Rotation = 90
          TestLine = False
          Text = '123456789123'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object BarCode3: TfrxBarCodeView
          Left = 653.858690000000000000
          Top = 283.464750000000000000
          Width = 49.645640000000000000
          Height = 103.000000000000000000
          BarType = bcCodeEAN13
          DataField = 'COD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Expression = '<dbCadastro."COD_DIV">'
          Rotation = 90
          TestLine = False
          Text = '123456789123'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo50: TfrxMemoView
          Left = 362.834880000000000000
          Top = 384.756154000000000000
          Width = 71.811070000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 52.913420000000000000
          Top = 427.086890000000000000
          Width = 404.409710000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Logra: [DBDados."LOGRA_RRR"] - [DBDados."COMPL_RRR"]'
            '          [DBDados."OBSLOGRA_RRR"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 49.913420000000000000
          Top = 150.740260000000000000
          Width = 52.913420000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Responsavel')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 110.385900000000000000
          Top = 150.740260000000000000
          Width = 347.716760000000000000
          Height = 11.338590000000000000
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."RESPONSA_RRR"]')
          ParentFont = False
        end
      end
      object Parcelas: TfrxMasterData
        FillType = ftBrush
        Height = 278.173228350000000000
        Top = 597.165740000000000000
        Width = 721.890230000000000000
        DataSet = DBDados
        DataSetName = 'DBDados'
        RowCount = 0
        object Shape21: TfrxShapeView
          Left = 283.464750000000000000
          Width = 419.527830000000000000
          Height = 188.976500000000000000
        end
        object Shape42: TfrxShapeView
          Left = 646.181510000000000000
          Top = 23.897650000000000000
          Width = 52.913358980000000000
          Height = 13.984251970000000000
          Fill.BackColor = clSilver
        end
        object Shape20: TfrxShapeView
          Left = 45.354360000000000000
          Width = 219.212740000000000000
          Height = 249.448980000000000000
        end
        object Shape22: TfrxShapeView
          Left = 287.244280000000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
        end
        object Shape23: TfrxShapeView
          Left = 589.606680000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
        end
        object Shape24: TfrxShapeView
          Left = 589.606680000000000000
          Top = 68.031539999999830000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
        end
        object Shape25: TfrxShapeView
          Left = 589.606680000000000000
          Top = 98.267780000000010000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
        end
        object Shape26: TfrxShapeView
          Left = 589.606680000000000000
          Top = 128.504020000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
        end
        object Shape27: TfrxShapeView
          Left = 589.606680000000000000
          Top = 158.740260000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
        end
        object Memo61: TfrxMemoView
          Left = 291.023810000000000000
          Top = 37.795300000000000000
          Width = 68.031540000000000000
          Height = 9.448825000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'd da D'#237'vida')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 593.386210000000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valor da Parcela')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 593.008257000000000000
          Top = 68.031539999999830000
          Width = 41.574830000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Corre'#231#227'o')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 593.386210000000000000
          Top = 98.267780000000010000
          Width = 41.574830000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 593.386210000000000000
          Top = 128.504020000000000000
          Width = 41.574830000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 593.386210000000000000
          Top = 158.740260000000000000
          Width = 49.133890000000000000
          Height = 8.692919000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total Pago')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 294.803340000000000000
          Top = 3.779530000000022000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo67: TfrxMemoView
          Left = 347.716760000000000000
          Top = 3.779530000000022000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 347.716760000000000000
          Top = 18.897650000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
        object Shape28: TfrxShapeView
          Left = 362.834880000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
        end
        object Memo69: TfrxMemoView
          Left = 366.614410000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 9.448825000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Shape29: TfrxShapeView
          Left = 287.244280000000000000
          Top = 68.031539999999830000
          Width = 298.582870000000000000
          Height = 26.456710000000000000
        end
        object Memo70: TfrxMemoView
          Left = 291.023810000000000000
          Top = 68.031540000000060000
          Width = 41.574830000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Propriet'#225'rio')
          ParentFont = False
        end
        object Shape30: TfrxShapeView
          Left = 287.244280000000000000
          Top = 98.267780000000010000
          Width = 298.582870000000000000
          Height = 86.929190000000000000
        end
        object Shape31: TfrxShapeView
          Left = 464.882190000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 26.456710000000000000
        end
        object Memo71: TfrxMemoView
          Left = 468.661720000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 7.559060000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Shape32: TfrxShapeView
          Left = 514.016080000000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
        end
        object Memo72: TfrxMemoView
          Left = 517.795610000000000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 7.559060000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 291.023810000000000000
          Top = 45.354360000000040000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'COD_DIV_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."COD_DIV_PAR"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 468.661720000000000000
          Top = 45.354360000000040000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'PARCELA_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."PARCELA_PAR"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 517.795610000000000000
          Top = 45.354360000000040000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'DATAVENCI'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."DATAVENCI"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 600.945270000000000000
          Top = 45.354360000000040000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'VrParcela'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBDados."VrParcela"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 362.834880000000000000
          Top = 45.354360000000040000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'COD_CAD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."COD_CAD_DIV"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 291.023810000000000000
          Top = 76.724459000000030000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'PNOMEPROPRI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 343.937230000000000000
          Top = 187.598546999999900000
          Width = 359.055350000000000000
          Height = 11.338590000000000000
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'D'#237'vida: [DBDados."COD_DIV_PAR"] Tipo: [DBDados."TP_PAR"] Parcela' +
              ': [DBDados."PARCELA_PAR"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.779530000000022000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Shape33: TfrxShapeView
          Left = 181.417440000000000000
          Top = 83.149660000000040000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Shape34: TfrxShapeView
          Left = 49.133890000000000000
          Top = 113.385900000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
        end
        object Shape35: TfrxShapeView
          Left = 154.960730000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
        end
        object Shape36: TfrxShapeView
          Left = 49.133890000000000000
          Top = 143.622140000000000000
          Width = 102.047310000000000000
          Height = 26.456710000000000000
        end
        object Shape37: TfrxShapeView
          Left = 154.960730000000000000
          Top = 143.622140000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
        end
        object Memo82: TfrxMemoView
          Left = 52.913420000000000000
          Top = 113.385900000000000000
          Width = 41.574830000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Corre'#231#227'o')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 158.740260000000000000
          Top = 113.385900000000000000
          Width = 41.574830000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 52.913420000000000000
          Top = 143.622140000000000000
          Width = 41.574830000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 158.740260000000000000
          Top = 143.622140000000000000
          Width = 49.133890000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total Pago')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 181.417440000000000000
          Top = 90.708719999999970000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'VrParcela'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBDados."VrParcela"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 181.417440000000000000
          Top = 83.149660000000040000
          Width = 71.811070000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valor da Parcela')
          ParentFont = False
        end
        object Shape38: TfrxShapeView
          Left = 132.283550000000000000
          Top = 52.913419999999740000
          Width = 45.354360000000000000
          Height = 26.456710000000000000
        end
        object Memo88: TfrxMemoView
          Left = 136.063080000000000000
          Top = 52.913419999999740000
          Width = 34.015770000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Shape39: TfrxShapeView
          Left = 181.417440000000000000
          Top = 52.913419999999740000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo89: TfrxMemoView
          Left = 185.196970000000000000
          Top = 52.913419999999740000
          Width = 41.574830000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 136.063080000000000000
          Top = 60.472480000000010000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'PARCELA_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."PARCELA_PAR"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 185.196970000000000000
          Top = 60.472480000000010000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'DATAVENCI'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."DATAVENCI"]')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          Left = 49.133890000000000000
          Top = 52.913419999999740000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
        end
        object Memo92: TfrxMemoView
          Left = 52.913420000000000000
          Top = 52.913419999999740000
          Width = 68.031540000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'd da D'#237'vida')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 52.913420000000000000
          Top = 60.472480000000010000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'COD_DIV_PAR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."COD_DIV_PAR"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 49.133890000000000000
          Top = 83.149660000000040000
          Width = 128.504020000000000000
          Height = 26.456710000000000000
        end
        object Memo94: TfrxMemoView
          Left = 52.913420000000000000
          Top = 83.149660000000040000
          Width = 41.574830000000000000
          Height = 9.070872000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 52.913420000000000000
          Top = 90.708719999999970000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DataField = 'COD_CAD_DIV'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbCadastro."COD_CAD_DIV"]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 49.133890000000000000
          Top = 177.637910000000000000
          Width = 207.874150000000000000
          Height = 68.031540000000000000
          DataField = 'MENS1_VEN'
          DataSet = dbVenc
          DataSetName = 'dbVenc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbVenc."MENS1_VEN"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 600.945270000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Correcao'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Correcao"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 600.945270000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Multa'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Multa"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 600.945270000000000000
          Top = 136.063080000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Juros'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Juros"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 600.945270000000000000
          Top = 164.409555000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Total'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Total"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 52.913420000000000000
          Top = 122.078819000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Correcao'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Correcao"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 158.740260000000000000
          Top = 122.078819000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Multa'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Multa"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 52.913420000000000000
          Top = 151.559153000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Juros'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Juros"]')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 158.740260000000000000
          Top = 151.559153000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'Total'
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DBDados."Total"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 301.984447000000000000
          Top = 194.535560000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataField = 'parte1'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."parte1"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 400.252227000000000000
          Top = 194.535560000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataField = 'parte2'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."parte2"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 498.520007000000000000
          Top = 194.535560000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataField = 'parte3'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."parte3"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 596.787787000000000000
          Top = 194.535560000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataField = 'parte4'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."parte4"]')
          ParentFont = False
        end
        object Subreport1: TfrxSubreport
          Left = 287.244280000000000000
          Top = 98.645732999999950000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Page = Relatorio.Page2
        end
        object BarCode1: TfrxBarCodeView
          Left = 301.984447000000000000
          Top = 207.519821000000000000
          Width = 360.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCode_2_5_interleaved
          DataField = 'Barra'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Rotation = 0
          ShowText = False
          TestLine = False
          Text = '1234567891123456789112345678911234567891'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.250000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo51: TfrxMemoView
          Left = 646.299630000000000000
          Top = 22.677180000000020000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 49.133890000000000000
          Top = 22.677180000000020000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataField = 'PNOMEPROPRI'
          DataSet = dbCadastro
          DataSetName = 'dbCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbCadastro."PNOMEPROPRI"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 49.133890000000000000
          Top = 39.574830000000020000
          Width = 211.653680000000000000
          Height = 11.338590000000000000
          DataField = 'PROPRIEDADE_RRR'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBDados."PROPRIEDADE_RRR"]')
          ParentFont = False
        end
      end
      object Demonstrativo: TfrxGroupFooter
        FillType = ftBrush
        Height = 278.173228346456700000
        Top = 899.528140000000000000
        Width = 721.890230000000000000
        object Subreport2: TfrxSubreport
          Left = 45.354360000000000000
          Width = 653.480737000000000000
          Height = 18.897650000000000000
          Page = Relatorio.Page3
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 49.133890000000000000
        Width = 740.409927000000000000
        DataSet = dbReceitas
        DataSetName = 'dbReceitas'
        RowCount = 0
        object Memo109: TfrxMemoView
          Left = -0.000000000000000444
          Width = 18.897650000000000000
          Height = 7.559060000000000000
          DataField = 'COD_REC_FRC'
          DataSet = dbReceitas
          DataSetName = 'dbReceitas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbReceitas."COD_REC_FRC"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 7.559060000000000000
          DataField = 'DESCRI_REC'
          DataSet = dbReceitas
          DataSetName = 'dbReceitas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbReceitas."DESCRI_REC"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 109.984323000000000000
          Width = 37.795300000000000000
          Height = 7.559060000000000000
          DataField = 'VALOR'
          DataSet = dbReceitas
          DataSetName = 'dbReceitas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbReceitas."VALOR"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 160.819001500000000000
          Width = 44.976407000000000000
          Height = 7.559060000000000000
          DataField = 'LDESCOPONTU'
          DataSet = dbReceitas
          DataSetName = 'dbReceitas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbReceitas."LDESCOPONTU"]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 218.078881000000000000
          Width = 37.795300000000000000
          Height = 7.559060000000000000
          DataField = 'LISENTO'
          DataSet = dbReceitas
          DataSetName = 'dbReceitas'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbReceitas."LISENTO"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 8.692919000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo114: TfrxMemoView
          Width = 18.897650000000000000
          Height = 7.937013000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'd')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 8.314966000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 121.322913000000000000
          Width = 26.456710000000000000
          Height = 8.314966000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 156.283565500000000000
          Width = 52.913420000000000000
          Height = 8.314966000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pontualidade (-)')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Left = 217.322975000000000000
          Width = 40.063018000000000000
          Height = 8.692919000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Isen'#231#227'o (-)')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        Height = 278.173228350000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        DataSet = dbResumo
        DataSetName = 'dbResumo'
        RowCount = 0
        object Shape54: TfrxShapeView
          Width = 661.417750000000000000
          Height = 249.448818897637800000
        end
        object Subreport3: TfrxSubreport
          Left = 470.173532000000000000
          Top = 68.787446000000000000
          Width = 186.330829000000000000
          Height = 177.259957000000000000
          Page = Relatorio.Page4
        end
        object Picture5: TfrxPictureView
          Left = 3.023624000000000000
          Top = 5.291341999999990000
          Width = 52.913420000000000000
          Height = 49.133890000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo163: TfrxMemoView
          Left = 67.275634000000000000
          Top = 0.755905999999981700
          Width = 585.448825980000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 66.519728000000000000
          Top = 19.653556000000000000
          Width = 586.960637980000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 67.275634000000000000
          Top = 42.708689000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RURAL - Demonstrativo dos C'#225'lculos')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 243.023779000000000000
          Top = 65.385826770000000000
          Height = 182.929133858267700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 357.165585000000000000
          Top = 65.385869000000000000
          Height = 182.929133858267700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 465.638096000000000000
          Top = 65.385826770000000000
          Height = 182.929133858267700000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo199: TfrxMemoView
          Left = 332.220687000000000000
          Top = 43.464595000000000000
          Width = 119.433148000000000000
          Height = 18.897650000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Exercicio: [DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 455.055412000000000000
          Top = 43.464595000000000000
          Width = 196.913513000000000000
          Height = 18.897650000000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cadastro: [dbResumo."CADASTRO"]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 244.535591000000000000
          Top = 67.244125000000000000
          Width = 106.960699000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            #193'reas do Im'#243'vel')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 359.299444000000000000
          Top = 67.519728000000000000
          Width = 102.803146430000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'C'#243'digo de Cobran'#231'a')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 244.535591000000000000
          Top = 84.629963000000000000
          Width = 46.866172000000000000
          Height = 14.362204720000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hectare:')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 244.535591000000000000
          Top = 100.503989000000000000
          Width = 47.244125000000000000
          Height = 14.362204720000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Alqueire:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 359.299444000000000000
          Top = 86.039425000000000000
          Width = 102.047240430000000000
          Height = 14.362204720000000000
          DataField = 'COBRANCA'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbResumo."COBRANCA"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 3.779530000000000000
          Top = 161.047310000000000000
          Width = 119.811101000000000000
          Height = 14.362214000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Localiza'#231#227'o do Im'#243'vel')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 3.779530000000000000
          Top = 177.669388000000000000
          Width = 233.197001000000000000
          Height = 14.362204720000000000
          DataField = 'LOGRAPROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."LOGRAPROPRIEDADE"]')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 3.779530000000000000
          Top = 196.189085000000000000
          Width = 233.196850390000000000
          Height = 14.362204720000000000
          DataField = 'COMPLPROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."COMPLPROPRIEDADE"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 3.779530000000000000
          Top = 212.519821000000000000
          Width = 233.196850390000000000
          Height = 40.818914720000000000
          DataField = 'OBSLOGRAPROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."OBSLOGRAPROPRIEDADE"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 3.779530000000000000
          Top = 63.338621000000000000
          Width = 68.031540000000010000
          Height = 12.850402000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Propriet'#225'rio')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 3.779530000000000000
          Top = 74.031540000000010000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'CONTRIBUINTE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."CONTRIBUINTE"]')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 295.559246000000000000
          Top = 100.503989000000000000
          Width = 58.204762000000000000
          Height = 14.362204720000000000
          DataField = 'HEQUITARE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."HEQUITARE"]')
          ParentFont = False
        end
        object Memo194: TfrxMemoView
          Left = 295.559246000000000000
          Top = 84.629963000000000000
          Width = 58.582715000000000000
          Height = 14.362204720000000000
          DataField = 'ALQUEIRE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."ALQUEIRE"]')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 244.157638000000000000
          Top = 118.811101000000000000
          Width = 47.622078000000000000
          Height = 14.362204720000000000
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Metro'#178':')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 295.559246000000000000
          Top = 118.811101000000000000
          Width = 58.960668000000000000
          Height = 14.362204720000000000
          DataField = 'METRO'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."METRO"]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 245.157638000000000000
          Top = 142.488281000000000000
          Width = 106.960699000000000000
          Height = 14.362204720000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            'Valor Venal')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 3.779530000000000000
          Top = 110.252041000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'PROPRIEDADE'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."PROPRIEDADE"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          Left = 3.779530000000000000
          Top = 95.133921000000000000
          Width = 68.031540000000010000
          Height = 12.850402000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Propriedade')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 245.157638000000000000
          Top = 161.385931000000000000
          Width = 108.094558000000000000
          Height = 14.362204720000000000
          DataField = 'VVENAL'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResumo."VVENAL"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = -1.000000000000000000
          Top = 63.692950000000000000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo131: TfrxMemoView
          Left = 3.779530000000000000
          Top = 143.283550000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'RESPONSAVEL'
          DataSet = dbResumo
          DataSetName = 'dbResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[dbResumo."RESPONSAVEL"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 3.779530000000000000
          Top = 128.165430000000000000
          Width = 68.031540000000010000
          Height = 12.850402000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Responsavel')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 13.984261000000000000
        Top = 56.692950000000000000
        Width = 740.409927000000000000
        DataSet = dbResRec
        DataSetName = 'dbResRec'
        RowCount = 0
        Stretched = True
        object Memo154: TfrxMemoView
          Left = 1.133859000000000000
          Top = 1.133859000000001000
          Width = 97.889827000000000000
          Height = 11.338590000000000000
          DataField = 'DESCRI_REC'
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dbResRec."DESCRI_REC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo155: TfrxMemoView
          Left = 100.535498000000000000
          Top = 1.133859000000001000
          Width = 45.732313000000000000
          Height = 11.338590000000000000
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResRec."VALOR"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 148.913482000000000000
          Top = 1.133859000000001000
          Width = 37.039394000000000000
          Height = 11.338590000000000000
          DataField = 'desco'
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[dbResRec."desco"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 13.984261000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo160: TfrxMemoView
          Left = 89.574861000000000000
          Top = 0.944882499999998500
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo161: TfrxMemoView
          Left = 153.448918000000000000
          Top = 1.322835500000000000
          Width = 32.503958000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desco')
          ParentFont = False
        end
        object Memo162: TfrxMemoView
          Left = 1.133859000000000000
          Top = 1.322835500000000000
          Width = 47.622078000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Receita')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 94.488250000000000000
        Width = 740.409927000000000000
        object Shape55: TfrxShapeView
          Left = 78.992055440000000000
          Top = 14.740167000000000000
          Width = 109.606370000000000000
          Height = 11.338590000000000000
          Fill.BackColor = clScrollBar
        end
        object Memo157: TfrxMemoView
          Left = 78.236271000000000000
          Top = 1.889764999999997000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbResRec."VALOR">,MasterData4)]')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 137.574892000000000000
          Top = 1.889764999999997000
          Width = 48.377984000000000000
          Height = 11.338590000000000000
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbResRec."desco">,MasterData4)]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 1.133859000000000000
          Top = 1.889764999999997000
          Width = 39.685065000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 0.377953000000000000
          Top = 0.755905999999996000
          Width = 188.220472440000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line17: TfrxLineView
          Left = 0.377953000000000000
          Top = 14.740167000000000000
          Width = 188.220472440000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo174: TfrxMemoView
          Left = 1.133859000000000000
          Top = 15.118120000000010000
          Width = 39.685065000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GERAL')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 79.370130000000000000
          Top = 15.118120000000010000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DataSet = dbResRec
          DataSetName = 'dbResRec'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbResRec."VALOR">-<dbResRec."desco">,MasterData4)]')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 0.377953000000000000
          Top = 26.078757000000000000
          Width = 188.220472440000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
end
