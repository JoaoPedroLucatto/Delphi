inherited FCadObrigRUR: TFCadObrigRUR
  Caption = 'Campos Obrigat'#243'rios'
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
      object Label3: TLabel [0]
        Left = 5
        Top = 28
        Width = 136
        Height = 13
        Caption = 'Identifica'#231#227'o do Campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [1]
        Left = 6
        Top = 68
        Width = 182
        Height = 13
        Caption = 'Mensagem de Alerta ao Usu'#225'rio'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel1: TPanel
        inherited Label2: TLabel
          Width = 463
          Caption = 'Campos Obrigat'#243'rios no Cadastro da Propriedade -- C'#243'd.:'
          ExplicitWidth = 463
        end
        object DBText4: TDBText
          Left = 472
          Top = 5
          Width = 68
          Height = 16
          DataField = 'COD_ROB'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object wwDBComboBox1: TwwDBComboBox
        Left = 5
        Top = 43
        Width = 332
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'IDCAMPO_ROB'
        DataSource = dsCadastro
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 0
        Items.Strings = (
          'a'#9's'
          'z'#9'x')
        ParentFont = False
        ReadOnly = True
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object DBMemo1: TDBMemo
        Left = 5
        Top = 84
        Width = 677
        Height = 173
        DataField = 'DESCRCAMPO_ROB'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
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
            FieldName = 'COD_EMP_ROB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_ROB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IDCAMPO_ROB'
            Title.Caption = 'CAMPO'
            Width = 508
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRCAMPO_ROB'
            Title.Caption = 'CAMPO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_INC_ROB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_INC_ROB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_ALT_ROB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_ALT_ROB'
            Visible = False
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
    SchemaName = 'SYSDBA'
    CommandText = 'select * '#13#10'from RR_CAMPOSOBRIGATORIOS'
    MaxBlobSize = 1
  end
  inherited sqlCadastro: TSQLDataSet
    CommandText = 
      'select * '#13#10'from RR_CAMPOSOBRIGATORIOS'#13#10'where COD_EMP_ROB = :empr' +
      'esa'#13#10'and COD_ROB = :cod'
    MaxBlobSize = 1
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
    object sqlCadastroCOD_EMP_ROB: TIntegerField
      FieldName = 'COD_EMP_ROB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_ROB: TIntegerField
      FieldName = 'COD_ROB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroIDCAMPO_ROB: TStringField
      FieldName = 'IDCAMPO_ROB'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlCadastroDESCRCAMPO_ROB: TMemoField
      FieldName = 'DESCRCAMPO_ROB'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlCadastroLOGIN_INC_ROB: TStringField
      FieldName = 'LOGIN_INC_ROB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_INC_ROB: TSQLTimeStampField
      FieldName = 'DTA_INC_ROB'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_ALT_ROB: TStringField
      FieldName = 'LOGIN_ALT_ROB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_ALT_ROB: TSQLTimeStampField
      FieldName = 'DTA_ALT_ROB'
      ProviderFlags = [pfInUpdate]
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
end
