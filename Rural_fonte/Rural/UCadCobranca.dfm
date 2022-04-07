inherited FCadCobranca: TFCadCobranca
  Left = 230
  Caption = 'C'#243'digo de Cobran'#231'a'
  OldCreateOrder = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 694
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited PG: TRzPageControl
    OnChanging = PGChanging
    FixedDimension = 19
    inherited tbCad: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 20
      ExplicitWidth = 686
      ExplicitHeight = 354
      inherited Panel1: TPanel
        inherited Label2: TLabel
          Width = 237
          Caption = 'C'#243'digos de Cobran'#231'a -- C'#243'd.:'
          ExplicitWidth = 237
        end
        object DBText1: TDBText
          Left = 245
          Top = 3
          Width = 61
          Height = 16
          AutoSize = True
          DataField = 'COD_COB'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 23
        Width = 686
        Height = 86
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object Label7: TLabel
          Left = 6
          Top = 5
          Width = 56
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 546
          Top = 5
          Width = 110
          Height = 13
          Caption = 'Per'#237'odo de Isen'#231#227'o'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 618
          Top = 24
          Width = 37
          Height = 13
          Caption = '(anos)'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 6
          Top = 44
          Width = 62
          Height = 13
          Caption = 'Nro. da Lei'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Left = 6
          Top = 21
          Width = 537
          Height = 21
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
          TabOrder = 0
          OnKeyDown = DBEdit5KeyDown
        end
        object DBEdit1: TDBEdit
          Left = 546
          Top = 21
          Width = 70
          Height = 21
          Ctl3D = True
          DataField = 'PERIODO_COB'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBEdit5KeyDown
        end
        object DBEdit2: TDBEdit
          Left = 6
          Top = 60
          Width = 395
          Height = 21
          Ctl3D = True
          DataField = 'NRO_LEI_COB'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnKeyDown = DBEdit5KeyDown
        end
        object GroupBox1: TGroupBox
          Left = 411
          Top = 46
          Width = 234
          Height = 34
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 3
          object EvDBCheckBox1: TEvDBCheckBox
            Left = 17
            Top = 11
            Width = 202
            Height = 17
            Caption = ' Gerar N'#250'mero de Sorteio ?'
            DataField = 'SORTEIO_COB'
            DataSource = dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnKeyDown = DBEdit5KeyDown
          end
        end
      end
      object DBGrid2: TDBGrid
        Tag = 1
        Left = 0
        Top = 125
        Width = 686
        Height = 229
        Align = alClient
        Ctl3D = True
        DataSource = dsRelCob
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
        TitleFont.Style = [fsBold]
        OnColExit = DBGrid2ColExit
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnEditButtonClick = DBGrid2EditButtonClick
        OnKeyDown = DBGrid2KeyDown
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_REC_RCO'
            Title.Caption = 'C'#243'd.'
            Width = 37
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Color = clSilver
            Expanded = False
            FieldName = 'RECEITA'
            Title.Caption = 'Receita'
            Width = 389
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GERA_LANCA_RCO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            PickList.Strings = (
              'S'
              'N')
            Title.Caption = 'Gerar Lan'#231'amento'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_RCO'
            Title.Caption = 'Porcentagem'
            Width = 93
            Visible = True
          end>
      end
      object Panel12: TPanel
        Left = 0
        Top = 109
        Width = 686
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        Color = 16119543
        TabOrder = 3
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 16
          Align = alLeft
          Caption = ' Cadastro de Valores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Panel13: TPanel
          Left = 335
          Top = 0
          Width = 149
          Height = 16
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
          ParentFont = False
          TabOrder = 0
        end
        object Panel14: TPanel
          Left = 484
          Top = 0
          Width = 81
          Height = 16
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
          ParentFont = False
          TabOrder = 1
        end
        object Panel4: TPanel
          Left = 565
          Top = 0
          Width = 121
          Height = 16
          Align = alRight
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = ' [F6] - Imp. Receitas'
          Color = 16744448
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    inherited tbVis: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 20
      ExplicitWidth = 686
      ExplicitHeight = 354
      inherited DBGrid1: TDBGrid
        OnCellClick = DBGrid1CellClick
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_EMP_COB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_COB'
            Title.Caption = 'C'#243'digo'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERIODO_COB'
            Title.Caption = 'Per'#237'odo'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRI_COB'
            Title.Caption = 'Descri'#231#227'o'
            Width = 296
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_LEI_COB'
            Title.Caption = 'Lei'
            Width = 207
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN_INC_COB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_INC_COB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_ALT_COB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_ALT_COB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SORTEIO_COB'
            Title.Caption = 'Sorteio'
            Visible = True
          end>
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
    CommandText = 'select * '#13#10'from RR_COBRANCA'#13#10'where COD_EMP_COB = :empresa'
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
  end
  inherited sqlCadastro: TSQLDataSet
    CommandText = 
      'select * '#13#10'from RR_COBRANCA'#13#10'where COD_EMP_COB = :empresa'#13#10'and C' +
      'OD_COB = :cod'
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cod'
        ParamType = ptInput
      end>
    object sqlCadastroCOD_EMP_COB: TIntegerField
      FieldName = 'COD_EMP_COB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_COB: TIntegerField
      FieldName = 'COD_COB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroPERIODO_COB: TIntegerField
      FieldName = 'PERIODO_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroDESCRI_COB: TStringField
      FieldName = 'DESCRI_COB'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroNRO_LEI_COB: TStringField
      FieldName = 'NRO_LEI_COB'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroLOGIN_INC_COB: TStringField
      FieldName = 'LOGIN_INC_COB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_INC_COB: TSQLTimeStampField
      FieldName = 'DTA_INC_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_ALT_COB: TStringField
      FieldName = 'LOGIN_ALT_COB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_ALT_COB: TSQLTimeStampField
      FieldName = 'DTA_ALT_COB'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroSORTEIO_COB: TStringField
      FieldName = 'SORTEIO_COB'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  inherited dspCadastro: TDataSetProvider
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspCadastroAfterUpdateRecord
    BeforeUpdateRecord = dspCadastroBeforeUpdateRecord
    OnGetTableName = dspCadastroGetTableName
  end
  inherited cdsCadastro: TClientDataSet
    OnNewRecord = cdsCadastroNewRecord
    OnReconcileError = cdsCadastroReconcileError
  end
  object sqlRelCob: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select RR_RELCOBRANCA.*,'#13#10'       CASE'#13#10'         WHEN (GR_RECEITA' +
      '.TIPO_REC IS NULL) THEN GR_RECEITA.DESCRI_REC'#13#10'         ELSE GR_' +
      'RECEITA.DESCRI_REC||'#39' '#39'||GR_RECEITA.TIPO_REC'#13#10'        END RECEIT' +
      'A'#13#10'from RR_RELCOBRANCA'#13#10'left join GR_RECEITA on COD_EMP_REC = CO' +
      'D_EMP_RCO and COD_REC = COD_REC_RCO'#13#10'where COD_EMP_RCO = :empres' +
      'a'#13#10'and COD_COB_RCO = :cod'
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
        Name = 'cod'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 472
    Top = 350
    object sqlRelCobCOD_EMP_RCO: TIntegerField
      FieldName = 'COD_EMP_RCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlRelCobCOD_COB_RCO: TIntegerField
      FieldName = 'COD_COB_RCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlRelCobCOD_REC_RCO: TIntegerField
      FieldName = 'COD_REC_RCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlRelCobGERA_LANCA_RCO: TStringField
      FieldName = 'GERA_LANCA_RCO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlRelCobVALOR_RCO: TFloatField
      CustomConstraint = 'VALOR_RCO>0'
      ConstraintErrorMessage = 'Porcentagem n'#227'o pode ser ZERO ou Negativa!'
      FieldName = 'VALOR_RCO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlRelCobRECEITA: TStringField
      FieldName = 'RECEITA'
      ProviderFlags = []
      Size = 72
    end
  end
  object dspRelCob: TDataSetProvider
    DataSet = sqlRelCob
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspRelCobAfterUpdateRecord
    BeforeUpdateRecord = dspRelCobBeforeUpdateRecord
    OnGetTableName = dspRelCobGetTableName
    Left = 528
    Top = 350
  end
  object cdsRelCob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelCob'
    OnNewRecord = cdsRelCobNewRecord
    OnReconcileError = cdsCadastroReconcileError
    Left = 586
    Top = 350
  end
  object dsRelCob: TDataSource
    DataSet = cdsRelCob
    Left = 640
    Top = 350
  end
end
