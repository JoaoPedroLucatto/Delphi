inherited FCadDescontos: TFCadDescontos
  Left = 260
  Top = 142
  Caption = 'Descontos'
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitLeft = 260
  ExplicitTop = 142
  ExplicitWidth = 704
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited PG: TRzPageControl
    FixedDimension = 19
    inherited tbCad: TRzTabSheet
      object Label3: TLabel [0]
        Left = 8
        Top = 27
        Width = 31
        Height = 13
        Caption = 'Setor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel [1]
        Left = 309
        Top = 27
        Width = 42
        Height = 13
        Caption = 'Receita'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel [2]
        Left = 8
        Top = 67
        Width = 84
        Height = 13
        Caption = 'Nro da Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel [3]
        Left = 126
        Top = 67
        Width = 99
        Height = 13
        Caption = 'Tipo do Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel [4]
        Left = 296
        Top = 67
        Width = 86
        Height = 13
        Caption = 'Valor Desconto'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object btnReceita: TSpeedButton [5]
        Left = 356
        Top = 41
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
        OnClick = btnReceitaClick
      end
      object Label4: TLabel [6]
        Left = 267
        Top = 27
        Width = 22
        Height = 13
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [7]
        Left = 386
        Top = 67
        Width = 53
        Height = 13
        Caption = 'Condi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel1: TPanel
        TabOrder = 9
        inherited Label2: TLabel
          Width = 298
          Caption = 'Cadastro de Descontos das Parcelas'
          ExplicitWidth = 298
        end
      end
      object DBEdit7: TDBEdit
        Left = 296
        Top = 82
        Width = 89
        Height = 21
        Ctl3D = True
        DataField = 'VRDESCONTO_DSC'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBLSetorKeyDown
      end
      object DBEdit1: TDBEdit
        Left = 309
        Top = 42
        Width = 46
        Height = 21
        Ctl3D = True
        DataField = 'COD_REC_DSC'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnExit = DBEdit1Exit
        OnKeyDown = DBLSetorKeyDown
      end
      object DBLParcelas: TDBLookupComboBox
        Left = 8
        Top = 82
        Width = 91
        Height = 21
        Ctl3D = True
        DataField = 'PARCELA_DSC'
        DataSource = dsCadastro
        DropDownWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        KeyField = 'NRPARCE_VEN'
        ListField = 'VENCI_VEN; NRPARCE_VEN'
        ListSource = dsParcela
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnEnter = DBLParcelasEnter
        OnKeyDown = DBLSetorKeyDown
      end
      object DBComboBox1: TDBComboBox
        Left = 126
        Top = 82
        Width = 169
        Height = 21
        Ctl3D = False
        DataField = 'TIPO_DSC'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Items.Strings = (
          '01 - Porcentagem'
          '02 - Valor Fixo')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBLSetorKeyDown
      end
      object DBEdit2: TDBEdit
        Tag = 1
        Left = 380
        Top = 42
        Width = 302
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'DESCRI_REC'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBLSetorKeyDown
      end
      object DBEdit3: TDBEdit
        Tag = 1
        Left = 267
        Top = 42
        Width = 40
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'ANO_STR_DSC'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBLSetorKeyDown
      end
      object DBComboBox2: TDBComboBox
        Left = 386
        Top = 82
        Width = 295
        Height = 21
        Ctl3D = False
        DataField = 'CONDICAO_DSC'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Items.Strings = (
          '01 - Todos'
          '02 - Apenas p/ quem n'#227'o tem Divida Vencida')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBLSetorKeyDown
      end
      object DBLSetor: TwwDBLookupCombo
        Left = 8
        Top = 42
        Width = 257
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'NOM_LANCA_STR'#9'20'#9'Respons'#225'vel'#9'F'#9
          'ANO_STR'#9'10'#9'Ano'#9'F'#9)
        DataField = 'CHAVE'
        DataSource = dsCadastro
        LookupTable = cdsSetor
        LookupField = 'CHAVE'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnCloseUp = DBLSetorCloseUp
        OnKeyDown = DBLSetorKeyDown
      end
      object DBEdit4: TDBEdit
        Tag = 1
        Left = 101
        Top = 82
        Width = 23
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'NRPARCE_VEN'
        DataSource = dsParcela
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBLSetorKeyDown
      end
    end
    inherited tbVis: TRzTabSheet
      inherited DBGrid1: TDBGrid
        Top = 73
        Height = 281
        OnCellClick = DBGrid1CellClick
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_EMP_DSC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_STR_DSC'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO_STR_DSC'
            Title.Caption = 'Exerc'#237'cio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_REC_DSC'
            Title.Caption = 'Receita'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELA_DSC'
            Title.Caption = 'Parcela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_DSC'
            Title.Caption = 'Tipo Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VRDESCONTO_DSC'
            Title.Caption = 'Desconto %'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONDICAO_DSC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_INC_DSC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_INC_DSC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_ALT_DSC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_ALT_DSC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESCRI_REC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CHAVE'
            Visible = False
          end>
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 23
        Width = 686
        Height = 50
        Align = alTop
        BorderInner = fsBump
        BorderOuter = fsNone
        TabOrder = 2
        object Label7: TLabel
          Left = 5
          Top = 5
          Width = 35
          Height = 13
          Caption = 'Setor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 59
          Top = 5
          Width = 25
          Height = 13
          Caption = 'Ano'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 123
          Top = 5
          Width = 48
          Height = 13
          Caption = 'Receita'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 187
          Top = 5
          Width = 49
          Height = 13
          Caption = 'Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object msk1: TMaskEdit
          Tag = 1
          Left = 5
          Top = 20
          Width = 52
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnExit = msk1Exit
          OnKeyDown = DBLSetorKeyDown
        end
        object btnPesquisa: TBitBtn
          Left = 586
          Top = 11
          Width = 93
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
          TabOrder = 3
          OnClick = btnPesquisaClick
        end
        object msk2: TMaskEdit
          Tag = 1
          Left = 59
          Top = 20
          Width = 62
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
          OnKeyDown = DBLSetorKeyDown
          OnKeyPress = msk2KeyPress
        end
        object msk3: TMaskEdit
          Tag = 1
          Left = 123
          Top = 20
          Width = 61
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          OnKeyDown = DBLSetorKeyDown
          OnKeyPress = msk2KeyPress
        end
        object msk4: TMaskEdit
          Tag = 1
          Left = 187
          Top = 20
          Width = 61
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 4
          OnKeyDown = DBLSetorKeyDown
          OnKeyPress = msk2KeyPress
        end
      end
    end
  end
  inherited RzPanel1: TRzPanel
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
  end
  inherited RzPanel2: TRzPanel
    inherited BtnConfirma: TRzBitBtn
      OnClick = BtnConfirmaClick
    end
    inherited BtnCancela: TRzBitBtn
      OnClick = BtnCancelaClick
    end
    inherited BtnSair: TRzBitBtn
      OnClick = BtnSairClick
    end
  end
  inherited sqlVis: TSQLDataSet
    CommandText = 
      'select RR_DESCONTO.*, GR_RECEITA.DESCRI_REC, COD_STR_DSC||ANO_ST' +
      'R_DSC Chave'#13#10'from RR_DESCONTO'#13#10'LEFT JOIN GR_RECEITA ON GR_RECEIT' +
      'A.COD_EMP_REC = RR_DESCONTO.COD_EMP_DSC AND GR_RECEITA.COD_REC =' +
      ' RR_DESCONTO.COD_REC_DSC'#13#10'where COD_EMP_DSC = :empresa'
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
  end
  inherited sqlCadastro: TSQLDataSet
    CommandText = 
      'select RR_DESCONTO.*, GR_RECEITA.DESCRI_REC, COD_STR_DSC||ANO_ST' +
      'R_DSC Chave'#13#10'from RR_DESCONTO'#13#10'LEFT JOIN GR_RECEITA ON GR_RECEIT' +
      'A.COD_EMP_REC = RR_DESCONTO.COD_EMP_DSC AND GR_RECEITA.COD_REC =' +
      ' RR_DESCONTO.COD_REC_DSC'#13#10'where COD_EMP_DSC = :empresa'#13#10'and COD_' +
      'STR_DSC = :setor'#13#10'and ANO_STR_DSC = :ano'#13#10'and COD_REC_DSC = :rec' +
      'eita'#13#10'and PARCELA_DSC = :parcela'
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
        Name = 'receita'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'parcela'
        ParamType = ptInput
      end>
    Left = 464
    Top = 246
    object sqlCadastroCOD_EMP_DSC: TIntegerField
      FieldName = 'COD_EMP_DSC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_STR_DSC: TStringField
      FieldName = 'COD_STR_DSC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object sqlCadastroANO_STR_DSC: TIntegerField
      FieldName = 'ANO_STR_DSC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_REC_DSC: TIntegerField
      FieldName = 'COD_REC_DSC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroPARCELA_DSC: TIntegerField
      FieldName = 'PARCELA_DSC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroTIPO_DSC: TStringField
      FieldName = 'TIPO_DSC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroVRDESCONTO_DSC: TFloatField
      FieldName = 'VRDESCONTO_DSC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroCONDICAO_DSC: TStringField
      FieldName = 'CONDICAO_DSC'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroLOGIN_INC_DSC: TStringField
      FieldName = 'LOGIN_INC_DSC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_INC_DSC: TSQLTimeStampField
      FieldName = 'DTA_INC_DSC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_ALT_DSC: TStringField
      FieldName = 'LOGIN_ALT_DSC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_ALT_DSC: TSQLTimeStampField
      FieldName = 'DTA_ALT_DSC'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroDESCRI_REC: TStringField
      FieldName = 'DESCRI_REC'
      ProviderFlags = []
      Size = 60
    end
    object sqlCadastroCHAVE: TStringField
      FieldName = 'CHAVE'
      ProviderFlags = []
      Required = True
      Size = 15
    end
  end
  inherited dspCadastro: TDataSetProvider
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspCadastroAfterUpdateRecord
    BeforeUpdateRecord = dspCadastroBeforeUpdateRecord
    OnGetTableName = dspCadastroGetTableName
    Left = 520
    Top = 246
  end
  inherited cdsCadastro: TClientDataSet
    OnNewRecord = cdsCadastroNewRecord
    OnReconcileError = cdsCadastroReconcileError
    Left = 578
    Top = 246
  end
  inherited dsCadastro: TDataSource
    Left = 632
    Top = 246
  end
  object sqlSetor: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select COD_STR, ANO_STR, NOM_LANCA_STR,'#13#10'          COD_STR||ANO_' +
      'STR CHAVE'#13#10'from RR_SETOR'#13#10'where COD_EMP_STR = :empresa'#13#10'order by' +
      ' ANO_STR, COD_STR'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 464
    Top = 294
  end
  object dspSetor: TDataSetProvider
    DataSet = sqlSetor
    UpdateMode = upWhereKeyOnly
    Left = 520
    Top = 294
  end
  object cdsSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSetor'
    Left = 578
    Top = 294
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 632
    Top = 294
  end
  object dsParcela: TDataSource
    DataSet = cdsParcela
    Left = 632
    Top = 342
  end
  object cdsParcela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParcela'
    Left = 578
    Top = 342
  end
  object dspParcela: TDataSetProvider
    DataSet = sqlParcela
    UpdateMode = upWhereKeyOnly
    Left = 520
    Top = 342
  end
  object sqlParcela: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT NRPARCE_VEN, VENCI_VEN'#13#10'FROM RR_VENCIMENTOS'#13#10'WHERE COD_EM' +
      'P_VEN = :empresa'#13#10'  AND COD_STR_VEN = :setor'#13#10'  AND ANO_STR_VEN ' +
      '= :ano'
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
      end>
    SQLConnection = dm.Conexao
    Left = 464
    Top = 342
  end
end
