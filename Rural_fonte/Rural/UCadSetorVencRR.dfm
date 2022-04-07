inherited FCadSetorVencRR: TFCadSetorVencRR
  Left = 359
  Top = 163
  Caption = 'Setor de Vencimentos '
  OldCreateOrder = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitLeft = 359
  ExplicitTop = 163
  ExplicitWidth = 704
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  inherited PG: TRzPageControl
    FixedDimension = 19
    inherited tbCad: TRzTabSheet
      inherited Panel1: TPanel
        inherited Label2: TLabel
          Width = 184
          Caption = 'Setor de Vencimentos '
          ExplicitWidth = 184
        end
      end
      object RzPanel8: TRzPanel
        Left = 0
        Top = 23
        Width = 686
        Height = 85
        Align = alTop
        BorderOuter = fsBump
        TabOrder = 1
        object Label4: TLabel
          Left = 143
          Top = 5
          Width = 110
          Height = 13
          Caption = 'Ind'#237'ce de Corre'#231#227'o'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 282
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
        object Label6: TLabel
          Left = 4
          Top = 43
          Width = 23
          Height = 13
          Caption = 'UFM'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 94
          Top = 43
          Width = 63
          Height = 13
          Caption = 'Expediente'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 185
          Top = 43
          Width = 73
          Height = 13
          Caption = 'Valor M'#237'nimo'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 4
          Top = 5
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 91
          Top = 5
          Width = 22
          Height = 13
          Caption = 'Ano'
          FocusControl = DBEdit8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object DBLIndice: TDBLookupComboBox
          Left = 143
          Top = 20
          Width = 136
          Height = 21
          Ctl3D = True
          DataField = 'COD_IND_STR'
          DataSource = dsCadastro
          DropDownRows = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          KeyField = 'COD_IND'
          ListField = 'DESCRI_IND'
          ListSource = dsIndice
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnEnter = DBLIndiceEnter
          OnKeyDown = DBEdit7KeyDown
        end
        object DBEdit5: TDBEdit
          Left = 282
          Top = 20
          Width = 393
          Height = 21
          Ctl3D = True
          DataField = 'NOM_LANCA_STR'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnKeyDown = DBEdit7KeyDown
        end
        object DBEdit2: TDBEdit
          Tag = 1
          Left = 4
          Top = 59
          Width = 88
          Height = 21
          Hint = 'O Cadastro da UFM '#233' feito pelo M'#243'dulo Principal.'
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = 'VALOR_UFM'
          DataSource = dsUFM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = DBEdit7KeyDown
        end
        object DBEdit3: TDBEdit
          Left = 94
          Top = 59
          Width = 88
          Height = 21
          Ctl3D = True
          DataField = 'EXPED_STR'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnKeyDown = DBEdit7KeyDown
        end
        object DBEdit6: TDBEdit
          Left = 185
          Top = 59
          Width = 88
          Height = 21
          Ctl3D = True
          DataField = 'VRMINIMO_STR'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          OnKeyDown = DBEdit7KeyDown
        end
        object DBEdit7: TDBEdit
          Left = 4
          Top = 20
          Width = 84
          Height = 21
          Ctl3D = True
          DataField = 'COD_STR'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit7Exit
          OnKeyDown = DBEdit7KeyDown
        end
        object DBEdit8: TDBEdit
          Left = 91
          Top = 20
          Width = 50
          Height = 21
          Ctl3D = True
          DataField = 'ANO_STR'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 4
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = DBEdit8Exit
          OnKeyDown = DBEdit7KeyDown
        end
      end
      object PGVenc: TRzPageControl
        Left = 0
        Top = 108
        Width = 686
        Height = 246
        ActivePage = tbTerri
        ActivePageDefault = tbTerri
        Align = alClient
        BoldCurrentTab = True
        Color = 16119543
        FlatColor = 10263441
        HotTrackColor = 3983359
        ParentColor = False
        TabColors.HighlightBar = 3983359
        TabIndex = 0
        TabOrder = 2
        TabStyle = tsRoundCorners
        FixedDimension = 19
        object tbTerri: TRzTabSheet
          Color = 16119543
          Caption = 'Vencimentos'
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 682
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              Left = 5
              Top = 2
              Width = 193
              Height = 16
              Caption = 'Cadastro dos Vencimentos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 396
              Top = 6
              Width = 280
              Height = 25
              Caption = 'Repetir Mensagem nas Demais Parcelas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              OnClick = SpeedButton1Click
            end
            object Label54: TLabel
              Left = 55
              Top = 19
              Width = 255
              Height = 13
              Caption = '[Seta para Baixo (Novo) - F5 (Excluir)]'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 34
            Width = 682
            Height = 186
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBGrid2: TDBGrid
              Tag = 1
              Left = 0
              Top = 0
              Width = 312
              Height = 186
              Align = alLeft
              Ctl3D = True
              DataSource = dsVencimentos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              OnCellClick = DBGrid2CellClick
              OnColEnter = DBGrid2ColEnter
              OnDrawColumnCell = DBGrid1DrawColumnCell
              OnKeyDown = DBGrid2KeyDown
              OnTitleClick = DBGrid2TitleClick
              Columns = <
                item
                  Color = 8454143
                  Expanded = False
                  FieldName = 'NRPARCE_VEN'
                  Title.Caption = 'Nro Parcelas'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENCI_VEN'
                  Title.Caption = 'Vencimento'
                  Width = 112
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UNICA_VEN'
                  Title.Caption = 'Parc. '#218'nica'
                  Width = 78
                  Visible = True
                end>
            end
            object Panel6: TPanel
              Left = 312
              Top = 0
              Width = 370
              Height = 186
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 370
                Height = 38
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Label10: TLabel
                  Left = 5
                  Top = 4
                  Width = 142
                  Height = 13
                  Caption = 'Mensagem da Parcela'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 95
                  Top = 21
                  Width = 276
                  Height = 13
                  Caption = 'F5 (Apaga Mensagem) - F8 (Apaga Todas)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 38
                Width = 370
                Height = 148
                Align = alClient
                Caption = 'Panel8'
                TabOrder = 1
                object DBMemo1: TDBMemo
                  Left = 1
                  Top = 1
                  Width = 368
                  Height = 146
                  Align = alClient
                  Ctl3D = True
                  DataField = 'MENS1_VEN'
                  DataSource = dsVencimentos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
        end
      end
    end
    inherited tbVis: TRzTabSheet
      inherited DBGrid1: TDBGrid
        OnCellClick = DBGrid1CellClick
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_EMP_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_STR'
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO_STR'
            Title.Caption = 'Exerc'#237'cio'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_IND_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOM_LANCA_STR'
            Title.Caption = 'Descri'#231#227'o'
            Width = 518
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FATORCORRE_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UFM_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EXPED_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VRMINIMO_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_INC_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_INC_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LOGIN_ALT_STR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DTA_ALT_STR'
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
    SchemaName = 'SYSDBA'
    CommandText = 'select * '#13#10'from RR_SETOR'#13#10'where COD_EMP_STR = :empresa'
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
  end
  inherited sqlCadastro: TSQLDataSet
    CommandText = 
      'select * '#13#10'from RR_SETOR'#13#10'where COD_EMP_STR = :empresa'#13#10'and COD_' +
      'STR = :cod'#13#10'and ANO_STR = :ano'
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
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end>
    Left = 456
    Top = 254
    object sqlCadastroCOD_EMP_STR: TIntegerField
      FieldName = 'COD_EMP_STR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_STR: TStringField
      FieldName = 'COD_STR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object sqlCadastroANO_STR: TIntegerField
      FieldName = 'ANO_STR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlCadastroCOD_IND_STR: TIntegerField
      FieldName = 'COD_IND_STR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroNOM_LANCA_STR: TStringField
      FieldName = 'NOM_LANCA_STR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlCadastroFATORCORRE_STR: TFloatField
      FieldName = 'FATORCORRE_STR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroUFM_STR: TFloatField
      FieldName = 'UFM_STR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroEXPED_STR: TFloatField
      FieldName = 'EXPED_STR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroVRMINIMO_STR: TFloatField
      FieldName = 'VRMINIMO_STR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_INC_STR: TStringField
      FieldName = 'LOGIN_INC_STR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_INC_STR: TSQLTimeStampField
      FieldName = 'DTA_INC_STR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlCadastroLOGIN_ALT_STR: TStringField
      FieldName = 'LOGIN_ALT_STR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sqlCadastroDTA_ALT_STR: TSQLTimeStampField
      FieldName = 'DTA_ALT_STR'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited dspCadastro: TDataSetProvider
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspCadastroAfterUpdateRecord
    BeforeUpdateRecord = dspCadastroBeforeUpdateRecord
    OnGetTableName = dspCadastroGetTableName
    Left = 512
    Top = 254
  end
  inherited cdsCadastro: TClientDataSet
    OnNewRecord = cdsCadastroNewRecord
    OnReconcileError = cdsCadastroReconcileError
    Left = 570
    Top = 254
  end
  inherited dsCadastro: TDataSource
    Left = 624
    Top = 254
  end
  object sqlVencimentos: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * '#13#10'from RR_VENCIMENTOS'#13#10'where COD_EMP_VEN = :empresa'#13#10'an' +
      'd COD_STR_VEN = :cod'#13#10'and ANO_STR_VEN = :ano'
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
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 456
    Top = 302
    object sqlVencimentosCOD_EMP_VEN: TIntegerField
      FieldName = 'COD_EMP_VEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlVencimentosCOD_STR_VEN: TStringField
      FieldName = 'COD_STR_VEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object sqlVencimentosANO_STR_VEN: TIntegerField
      FieldName = 'ANO_STR_VEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlVencimentosNRPARCE_VEN: TIntegerField
      FieldName = 'NRPARCE_VEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlVencimentosVENCI_VEN: TDateField
      FieldName = 'VENCI_VEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sqlVencimentosUNICA_VEN: TStringField
      FieldName = 'UNICA_VEN'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1
    end
    object sqlVencimentosMENS1_VEN: TMemoField
      FieldName = 'MENS1_VEN'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspVencimentos: TDataSetProvider
    DataSet = sqlVencimentos
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspCadastroUpdateError
    AfterUpdateRecord = dspVencimentosAfterUpdateRecord
    BeforeUpdateRecord = dspVencimentosBeforeUpdateRecord
    OnGetTableName = dspVencimentosGetTableName
    Left = 512
    Top = 302
  end
  object cdsVencimentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVencimentos'
    AfterOpen = cdsVencimentosAfterOpen
    BeforeCancel = cdsVencimentosBeforeCancel
    BeforeDelete = cdsVencimentosBeforeDelete
    OnNewRecord = cdsVencimentosNewRecord
    OnReconcileError = cdsCadastroReconcileError
    Left = 570
    Top = 302
    object cdsVencimentosCOD_EMP_VEN: TIntegerField
      FieldName = 'COD_EMP_VEN'
      Required = True
    end
    object cdsVencimentosCOD_STR_VEN: TStringField
      FieldName = 'COD_STR_VEN'
      Required = True
      Size = 4
    end
    object cdsVencimentosANO_STR_VEN: TIntegerField
      FieldName = 'ANO_STR_VEN'
      Required = True
    end
    object cdsVencimentosNRPARCE_VEN: TIntegerField
      FieldName = 'NRPARCE_VEN'
      Required = True
    end
    object cdsVencimentosVENCI_VEN: TDateField
      FieldName = 'VENCI_VEN'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object cdsVencimentosUNICA_VEN: TStringField
      FieldName = 'UNICA_VEN'
      Required = True
      Size = 1
    end
    object cdsVencimentosMENS1_VEN: TMemoField
      FieldName = 'MENS1_VEN'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsVencimentos: TDataSource
    DataSet = cdsVencimentos
    Left = 624
    Top = 302
  end
  object dsIndice: TDataSource
    DataSet = cdsIndice
    Left = 624
    Top = 350
  end
  object cdsIndice: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspIndice'
    Left = 570
    Top = 350
  end
  object dspIndice: TDataSetProvider
    DataSet = sqlIndice
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 350
  end
  object sqlIndice: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * '#13#10'from GR_INDICE'#13#10'where COD_EMP_IND = :empresa'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 456
    Top = 350
  end
  object dsUFM: TDataSource
    DataSet = cdsUFM
    Left = 360
    Top = 358
  end
  object cdsUFM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_EMP_UFM;ANO_UFM'
    MasterFields = 'COD_EMP_STR;ANO_STR'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspUFM'
    Left = 306
    Top = 358
  end
  object dspUFM: TDataSetProvider
    DataSet = sqlUFM
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 358
  end
  object sqlUFM: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select COD_EMP_UFM, ANO_UFM, VALOR_UFM '#13#10'from GR_UFM'#13#10'where COD_' +
      'EMP_UFM = :empresa'#13#10'   and ANO_UFM = :ano'
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
        Name = 'ano'
        ParamType = ptInput
      end>
    SQLConnection = dm.Conexao
    Left = 192
    Top = 358
  end
  object ImageList1: TImageList
    Left = 514
    Top = 53
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F76BFF00CE31E700C642
      C600C629C600E75ACE00AD21DE009C29DE00B542BD00B5639400B5A59C00EFDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E742BD00EF29C600EF4A
      C600FF5AFF00FF73E700F7A5AD00F76BDE00D631D600C629E7008C29BD00DEB5
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F74ABD00FF4AF700FF73
      EF00FF84CE00EF94D600FFFFEF00FF94EF00FF63D600FF5AD600D652AD00FFC6
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF84D600EF5ABD00FF94
      EF00FFA5E700FFEFFF00EFF7FF00FFA5D600FF8CD600FF6BCE00F77BBD00FFCE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7ADC600FF8C
      DE00E794E700E7BDE700E7D6C600FFB5E700FF94F700F76BEF00D684E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6A5FF00A539
      BD0029186B00180094005A3184009439E700B55AC600EFADC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084948C00001010001800
      00000000B5000008F7000800BD0000105A005231630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5A5AD0000001000000008000000
      39001031EF001839DE000039DE001831E70000005A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004231100008080000000000000018
      42000052FF00005AFF00085AFF000031E7000029940073738C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002118080000000800000000000021
      420000ADFF000094FF00008CFF000084FF000052BD00526B8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A6B630000001000291021000808
      210029B5FF0029C6FF0010CEFF0039BDFF00004294008CA5BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000100000292918003931
      31000018630000316B000052AD000863AD0000295A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073636300212921004A52
      4A009C7BA5008C6B840021295A00000018006B63730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B6B73004239
      2900D6CEC600DEBDA500392929004A4239000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000314A42005A5A4A007B849C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF5A6B00FF311000FF4A
      0000FF520800FF5A1800FF4A2100FF4A0800FF390800FF312100FF6B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B5000000B500000000000000000000000000000000000000
      0000000000000000000000000000F7FFF7000000000000000000000000000000
      00000000000000000000000000000000000000000000FF310000FF840000FF9C
      0000FFB51000FF8C0000FF630000FFA50000FF940000FF6B0000FF2900000000
      000000000000000000000000000000000000000000009CADAD0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00FFFFFF000000000000000000000000000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B50000000000000000000000000000000000000000000000
      00000000000000000000108C290018732100C6CEC60000000000000000000000
      00000000000000000000000000000000000000000000FF5A0000FFB50000FFB5
      0800FFBD2900FFB55A00FFC68C00FFBD1000FFB50000FFAD0000FF4A00000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      000000000000318C4A0000940000008400005AA56B0000000000000000000000
      0000000000000000000000000000000000000000000000000000FF840000FFCE
      3100FFA52900FFCEE700FFD6F700FFC63100FFC61800FF7B0000FF735A000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF00000000000000000000000000000000000000D6000000
      BD000000B5000000B500000000000000000000000000000000000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00008CB59C001084310000840000008C0000008C210000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7B2100FFCE
      2100FFBD9400FFD6FF00FFD6EF00FFD65200FFB51000FF6B1800000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00000000B5000000B5000000B500000000000000B5000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000008CB5
      9C0010843100008400000000000042AD5A000073000073AD8400000000000000
      0000000000000000000000000000000000000000000000000000BDCEB500FF63
      0800398CCE003984DE005AA5A500FF8C0800FF7B2100FF9C9C00000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000B5000000C6000000C6000000CE000000B500000000000000
      0000000000000000000000000000000000000000000000000000000000002163
      310010732900000000000000000000000000218C290029733900000000000000
      0000000000000000000000000000000000000000000000000000000000002129
      4200007BFF000073FF000063E700FF6384000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000C6000000C6000000DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C000042A552000000
      00000000000000000000000000000000000000000000000000005A5A6300004A
      B5000094FF000094FF000094FF000884F700B5B5CE0000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000B5000000D6000000CE000000DE000000EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000108C2900187B31008CCE
      9C00000000000000000000000000000000000000000000000000214A8400008C
      FF0000ADFF0000ADFF0000ADFF00009CFF0063A5DE0000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00000000E7000000DE000000D60000000000000000000000E7000000EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000108C2900187B
      31008CCE9C00000000000000000000000000000000000000000000428C0000B5
      FF0008BDFF0010C6FF0010C6FF0000B5FF004A9CDE0000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      FF000000DE000000EF00000000000000000000000000000000000000FF000000
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000108C
      2900187B31008CCE9C0000000000000000000000000000000000005AAD0008D6
      FF0021D6FF0018D6FF0018D6FF0018D6FF004AA5DE0000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF00000000000000000000000000000000000000F7000000
      F7000000FF000000000000000000000000000000000000000000000000000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000108C2900187B31008CCE9C00000000000000000000000000005294000094
      F7000094F7000094EF00008CE7001094E7006BBDDE0000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF00FFFFFF000000000000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000106B29001884290000000000000000000000000042739C000052
      B50073C6FF0031ADF700088CE7000063BD009CB5C60000000000000000000000
      000000000000000000000000000000000000000000009CADAD009CADAD009CAD
      AD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CAD
      AD009CADAD000000000000000000000000000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000088C2100000000000000000000000000000000000873
      BD00A5F7FF008CE7FF0029ADF700529CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000087B2100000000000000000000000000C6D6
      DE00189CDE0039ADE7005AADD600000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000800F000000000000
      800F000000000000800F000000000000800F000000000000C01F000000000000
      C03F000000000000807F000000000000007F000000000000003F000000000000
      003F000000000000003F000000000000807F000000000000807F000000000000
      C0FF000000000000F1FF000000000000FFFFFFFFFFFFFFFFFFFFFFFCFFFF801F
      C0039FF9FEFF801F80038FF3FC7F801F800387E7F87FC01F8003C3CFF07FC03F
      8003F11FE23FC03F8003F83FE73FE0FF8003FC7FFF9FC07F8003F83FFF8FC07F
      8003F19FFFC7C07F8003E3CFFFE3C07F8003C7E7FFF1C07F80038FFBFFF9C07F
      80071FFFFFFDE0FFFFFF3FFFFFFEE1FF00000000000000000000000000000000
      000000000000}
  end
  object qrVerCod: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ano'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select count(*) as TOT'
      'from RR_SETOR'
      'where COD_EMP_STR = :empresa'
      'and COD_STR = :cod'
      'and ANO_STR = :ano')
    SQLConnection = dm.Conexao
    Left = 641
    Top = 57
  end
end
