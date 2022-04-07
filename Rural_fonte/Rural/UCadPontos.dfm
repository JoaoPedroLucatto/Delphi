inherited FCadPontos: TFCadPontos
  Left = 250
  Top = 169
  Caption = 'Pontos'
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
      object Label7: TLabel [0]
        Left = 4
        Top = 27
        Width = 56
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel [1]
        Left = 178
        Top = 66
        Width = 29
        Height = 13
        Caption = 'Valor'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [2]
        Left = 276
        Top = 66
        Width = 57
        Height = 13
        Caption = 'Tipo Valor'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel1: TPanel
        TabOrder = 4
        inherited Label2: TLabel
          Width = 224
          Caption = 'Cadastro de Pontos -- C'#243'd.:'
          ExplicitWidth = 224
        end
        object DBText1: TDBText
          Left = 233
          Top = 3
          Width = 61
          Height = 16
          AutoSize = True
          DataField = 'COD_RPT'
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
      object DBEdit1: TDBEdit
        Left = 4
        Top = 43
        Width = 537
        Height = 21
        Ctl3D = True
        DataField = 'DESCR_RPT'
        DataSource = dsCadastro
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
      object DBEdit4: TDBEdit
        Left = 178
        Top = 82
        Width = 95
        Height = 21
        Ctl3D = True
        DataField = 'VALOR_RPT'
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
        OnKeyPress = DBEdit4KeyPress
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 67
        Width = 169
        Height = 65
        Caption = ' Limites '
        TabOrder = 1
        object Label4: TLabel
          Left = 11
          Top = 19
          Width = 34
          Height = 13
          Caption = 'Inicial'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 86
          Top = 19
          Width = 26
          Height = 13
          Caption = 'Final'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 11
          Top = 35
          Width = 70
          Height = 21
          Ctl3D = True
          DataField = 'LINI_RPT'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBEdit1KeyDown
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 86
          Top = 35
          Width = 70
          Height = 21
          Ctl3D = True
          DataField = 'LFIM_RPT'
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
          OnKeyPress = DBEdit2KeyPress
        end
      end
      object DBComboBox2: TDBComboBox
        Left = 276
        Top = 82
        Width = 145
        Height = 21
        Ctl3D = False
        DataField = 'TP_VALOR_RPT'
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Items.Strings = (
          '01 - Valor Real'
          '02 - Porcentagem')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEdit1KeyDown
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
            FieldName = 'COD_EMP_RPT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_RPT'
            Title.Caption = 'C'#243'digo'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCR_RPT'
            Title.Caption = 'Descri'#231#227'o'
            Width = 398
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LINI_RPT'
            Title.Caption = 'INI'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LFIM_RPT'
            Title.Caption = 'FIM'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_RPT'
            Title.Caption = 'Valor'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN_INC_RPT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_INC_RPT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_ALT_RPT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_ALT_RPT'
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
    CommandText = 'SELECT * '#13#10'FROM RR_PONTOS'#13#10'WHERE COD_EMP_RPT = :empresa'
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
  end
  inherited sqlCadastro: TSQLDataSet
    CommandText = 
      'SELECT * '#13#10'FROM RR_PONTOS'#13#10'WHERE RR_PONTOS.COD_EMP_RPT = :empres' +
      'a'#13#10'  AND RR_PONTOS.COD_RPT = :cod'
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
    object sqlCadastroCOD_EMP_RPT: TIntegerField
      FieldName = 'COD_EMP_RPT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_RPT: TIntegerField
      FieldName = 'COD_RPT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroDESCR_RPT: TStringField
      FieldName = 'DESCR_RPT'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlCadastroLINI_RPT: TIntegerField
      FieldName = 'LINI_RPT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLFIM_RPT: TIntegerField
      FieldName = 'LFIM_RPT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroVALOR_RPT: TFloatField
      FieldName = 'VALOR_RPT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroTP_VALOR_RPT: TStringField
      FieldName = 'TP_VALOR_RPT'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlCadastroLOGIN_INC_RPT: TStringField
      FieldName = 'LOGIN_INC_RPT'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_INC_RPT: TSQLTimeStampField
      FieldName = 'DTA_INC_RPT'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_ALT_RPT: TStringField
      FieldName = 'LOGIN_ALT_RPT'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_ALT_RPT: TSQLTimeStampField
      FieldName = 'DTA_ALT_RPT'
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
