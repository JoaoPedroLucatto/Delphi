inherited FCadConfCalc: TFCadConfCalc
  Left = 239
  Top = 162
  Caption = 'Configura'#231#245'es do C'#225'lculo'
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
    FixedDimension = 19
    inherited tbCad: TRzTabSheet
      ExplicitLeft = 1
      ExplicitTop = 20
      ExplicitWidth = 686
      ExplicitHeight = 354
      object Label3: TLabel [0]
        Left = 8
        Top = 61
        Width = 145
        Height = 13
        Caption = 'C'#225'lculo do Valor Venal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited Panel1: TPanel
        TabOrder = 2
        inherited Label2: TLabel
          Width = 206
          Caption = 'Configura'#231#245'es do C'#225'lculo'
          ExplicitWidth = 206
        end
      end
      object DBComboBox1: TDBComboBox
        Left = 8
        Top = 78
        Width = 561
        Height = 21
        DataField = 'V03_RCF'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Items.Strings = (
          
            '01 -  (((('#193'rea Alqu. * indice Aum. * 1,50)/100)+PontDist'#226'ncia) *' +
            ' VrPonto'
          '02 - Valor do ponto * N'#186' do Pontos'
          '03 - Valor Alqueire * Alqueire'
          '04 - (Valor do Ponto * Nponto) * (100-Valor TabDistancia)/100'
          '05 - (Valor do Ponto * Nponto) * (Valor TabDistancia/100)'
          
            '06 -  (((('#193'rea Alqu. * indice Aum. * 1,35)/100)+PontDist'#226'ncia) *' +
            ' VrPonto'
          '07 - Indice * Area em Alqueire'
          '08 - Indice * Area em Hectare'
          '09 - Area em Alqueire * Classifica'#231#227'o'
          '10 - Area em Hectare * Classifica'#231#227'o * Pontos'
          '11 - Informado'
          '12 - Area em Hectare * Classifica'#231#227'o'
          '13 - Area em Alqueire * ZonaFiscal'
          '14 - Area em Hectare * ZonaFiscal'
          '15 - Area em Hectare * Hectare')
        ParentFont = False
        TabOrder = 1
        OnKeyDown = EvDBCheckBox1KeyDown
      end
      object EvDBCheckBox1: TEvDBCheckBox
        Left = 8
        Top = 32
        Width = 337
        Height = 17
        Caption = ' Cobrar Todos os Expedientes na Parcela '#218'nica ?'
        DataField = 'V01_RCF'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        OnKeyDown = EvDBCheckBox1KeyDown
      end
      object GroupBox1: TGroupBox
        Left = 5
        Top = 103
        Width = 372
        Height = 68
        Caption = ' Valores (apura'#231#227'o do Valor Venal) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        object Label6: TLabel
          Left = 6
          Top = 24
          Width = 34
          Height = 13
          Caption = 'Ponto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 96
          Top = 24
          Width = 47
          Height = 13
          Caption = 'Alqueire'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 186
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Hequitare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 276
          Top = 25
          Width = 36
          Height = 13
          Caption = 'Indice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 40
          Width = 89
          Height = 21
          DataField = 'V04_RCF'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = EvDBCheckBox1KeyDown
          OnKeyPress = DBEdit4KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 96
          Top = 40
          Width = 89
          Height = 21
          DataField = 'V05_RCF'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EvDBCheckBox1KeyDown
          OnKeyPress = DBEdit4KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 186
          Top = 40
          Width = 89
          Height = 21
          DataField = 'V06_RCF'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = EvDBCheckBox1KeyDown
          OnKeyPress = DBEdit4KeyPress
        end
        object DBEdit1: TDBEdit
          Left = 276
          Top = 40
          Width = 89
          Height = 21
          DataField = 'V08_RCF'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyDown = EvDBCheckBox1KeyDown
          OnKeyPress = DBEdit4KeyPress
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 177
        Width = 346
        Height = 46
        Caption = ' C'#243'd. de Cobran'#231'a para Ident. dos Cadastros Cancelados '
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 19
          Width = 300
          Height = 21
          DataField = 'V07_RCF'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'COD_COB'
          ListField = 'DESCRI_COB'
          ListSource = dsCob
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 380
        Top = 103
        Width = 189
        Height = 68
        Caption = ' Medidas (1 Alqueire) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
        object Label8: TLabel
          Left = 5
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Hequitare'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 5
          Top = 40
          Width = 89
          Height = 21
          Hint = 
            'alqueires paulistas = 2,42 hectares'#13'alqueires mineiros = 4,84 he' +
            'ctares'#13'alqueires baianos = 9,68 hectares'#13'alqueir'#227'o (baiano) = 19' +
            ',36 hectares'#13'alqueires do norte = 2,72 hectares'#13#13'1 hectares = 10' +
            '.000 metros quadrados'
          DataField = 'V09_RCF'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = EvDBCheckBox1KeyDown
          OnKeyPress = DBEdit4KeyPress
        end
      end
    end
    inherited tbVis: TRzTabSheet
      TabVisible = False
      ExplicitLeft = 1
      ExplicitTop = 20
      ExplicitWidth = 686
      ExplicitHeight = 354
    end
  end
  inherited RzPanel1: TRzPanel
    inherited BtnNovo: TRzBitBtn
      Visible = False
    end
    inherited BtnAlterar: TRzBitBtn
      OnClick = BtnAlterarClick
    end
    inherited BtnExcluir: TRzBitBtn
      Visible = False
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
  inherited sqlCadastro: TSQLDataSet
    CommandText = 
      'SELECT RR_CONFIGURACOES.*'#13#10'FROM RR_CONFIGURACOES'#13#10'WHERE RR_CONFI' +
      'GURACOES.COD_EMP_RCF = :empresa'#13#10'  AND RR_CONFIGURACOES.COD_RCF ' +
      '= :cod'
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
    object sqlCadastroCOD_EMP_RCF: TIntegerField
      FieldName = 'COD_EMP_RCF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_RCF: TIntegerField
      FieldName = 'COD_RCF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroV01_RCF: TStringField
      FieldName = 'V01_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV02_RCF: TStringField
      FieldName = 'V02_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV03_RCF: TStringField
      FieldName = 'V03_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV04_RCF: TStringField
      FieldName = 'V04_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV05_RCF: TStringField
      FieldName = 'V05_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV06_RCF: TStringField
      FieldName = 'V06_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV07_RCF: TStringField
      FieldName = 'V07_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV08_RCF: TStringField
      FieldName = 'V08_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV09_RCF: TStringField
      FieldName = 'V09_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroV10_RCF: TStringField
      FieldName = 'V10_RCF'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  inherited dspCadastro: TDataSetProvider
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspCadastroAfterUpdateRecord
    OnGetTableName = dspCadastroGetTableName
  end
  inherited cdsCadastro: TClientDataSet
    OnNewRecord = cdsCadastroNewRecord
  end
  object sqlCob: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 'select * '#13#10'from RR_COBRANCA '#13#10'where COD_EMP_COB = :empresa'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 473
    Top = 57
    object sqlCobCOD_EMP_COB: TIntegerField
      FieldName = 'COD_EMP_COB'
      Required = True
    end
    object sqlCobCOD_COB: TIntegerField
      FieldName = 'COD_COB'
      Required = True
    end
    object sqlCobPERIODO_COB: TIntegerField
      FieldName = 'PERIODO_COB'
    end
    object sqlCobDESCRI_COB: TStringField
      FieldName = 'DESCRI_COB'
      Size = 50
    end
    object sqlCobNRO_LEI_COB: TStringField
      FieldName = 'NRO_LEI_COB'
      Size = 30
    end
    object sqlCobLOGIN_INC_COB: TStringField
      FieldName = 'LOGIN_INC_COB'
      Size = 10
    end
    object sqlCobDTA_INC_COB: TSQLTimeStampField
      FieldName = 'DTA_INC_COB'
    end
    object sqlCobLOGIN_ALT_COB: TStringField
      FieldName = 'LOGIN_ALT_COB'
      Size = 10
    end
    object sqlCobDTA_ALT_COB: TSQLTimeStampField
      FieldName = 'DTA_ALT_COB'
    end
    object sqlCobSORTEIO_COB: TStringField
      FieldName = 'SORTEIO_COB'
      Size = 1
    end
  end
  object dspCob: TDataSetProvider
    DataSet = sqlCob
    UpdateMode = upWhereKeyOnly
    Left = 505
    Top = 57
  end
  object cdsCob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCob'
    Left = 537
    Top = 57
  end
  object dsCob: TDataSource
    DataSet = cdsCob
    Left = 569
    Top = 57
  end
end
