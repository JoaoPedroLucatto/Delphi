inherited FRelDescontos: TFRelDescontos
  Caption = 'Descontos'
  ExplicitWidth = 515
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel3: TRzPanel
    inherited Panel1: TPanel
      inherited Label2: TLabel
        Width = 183
        Caption = 'Rela'#231#227'o de Descontos'
        ExplicitWidth = 183
      end
      object cbLayouts: TwwDBLookupCombo
        Left = 259
        Top = 2
        Width = 244
        Height = 21
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
  end
  inherited RzPanel1: TRzPanel
    inherited BtnConfirma: TRzBitBtn
      OnClick = BtnConfirmaClick
    end
  end
  object Relatorio: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38609.455327870400000000
    ReportOptions.LastChange = 38614.705478692100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 161
    Top = 33
    Datasets = <
      item
        DataSet = DBDados
        DataSetName = 'DBDados'
      end
      item
        DataSet = DBEmpresa
        DataSetName = 'DBEmpresa'
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
      LeftMargin = 22.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236220470000000000
        Top = 325.039580000000000000
        Width = 672.756340000000000000
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 672.756340000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 661.417750000000000000
          Height = 15.118120000000000000
          DataField = 'RODAPE'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[DBEmpresa."RODAPE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 21.921274000000000000
        Top = 241.889920000000000000
        Width = 672.756340000000000000
        DataSet = DBDados
        DataSetName = 'DBDados'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.133859000000001000
          Width = 46.488219000000000000
          Height = 18.897650000000000000
          DataField = 'COD_STR_DSC'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Memo.UTF8W = (
            '[DBDados."COD_STR_DSC"]')
        end
        object Memo9: TfrxMemoView
          Left = 60.094527000000000000
          Top = 1.133859000000001000
          Width = 330.330922000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRI_REC'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Memo.UTF8W = (
            '[DBDados."DESCRI_REC"]')
        end
        object Memo10: TfrxMemoView
          Left = 394.268909000000000000
          Top = 1.133859000000001000
          Width = 46.488219000000000000
          Height = 18.897650000000000000
          DataField = 'PARCELA_DSC'
          DataSet = DBDados
          DataSetName = 'DBDados'
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBDados."PARCELA_DSC"]')
        end
        object Memo16: TfrxMemoView
          Left = 450.897929000000000000
          Top = 1.133859000000001000
          Width = 129.637879000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO_DSC'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Memo.UTF8W = (
            '[DBDados."TIPO_DSC"]')
        end
        object Memo17: TfrxMemoView
          Left = 585.071244000000000000
          Top = 1.133859000000001000
          Width = 84.283519000000000000
          Height = 18.897650000000000000
          DataSet = DBDados
          DataSetName = 'DBDados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[DBDados."VRDESCONTO_DSC"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 54.614208499999990000
        Top = 162.519790000000000000
        Width = 672.756340000000000000
        Condition = 'DBDados."ANO_STR_DSC"'
        object Memo7: TfrxMemoView
          Left = 4.157483000000000000
          Top = 32.881911000000000000
          Width = 50.395609000000000000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Setor')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 61.606339000000000000
          Top = 32.881911000000000000
          Width = 75.718459999999990000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Receita')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 390.803402000000000000
          Top = 32.881911000000000000
          Width = 54.175139000000000000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Parcela')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 592.252351000000000000
          Top = 32.881911000000000000
          Width = 75.718459999999990000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 451.275882000000000000
          Top = 32.881911000000000000
          Width = 75.718459999999990000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 4.535435999999999000
          Top = 5.291341999999986000
          Width = 235.970532000000000000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Exerc'#237'cio: [DBDados."ANO_STR_DSC"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 27.590568999999990000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Top = 2.645670999999993000
          Width = 661.417750000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 84.283464570000000000
        Top = 18.897650000000000000
        Width = 672.756340000000000000
        object Picture1: TfrxPictureView
          Top = 2.000000000000000000
          Width = 83.149660000000000000
          Height = 71.811070000000000000
          DataField = 'LOGO_EMP'
          DataSet = dm.DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 86.929190000000000000
          Top = 2.000000000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          DataSet = dm.DBEmpresa
          DataSetName = 'DBEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object lbRelatorio: TfrxMemoView
          Left = 86.929190000000000000
          Top = 58.252010000000000000
          Width = 446.112400000000000000
          Height = 19.842532500000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 86.929190000000000000
          Top = 23.287415000000000000
          Width = 445.984540000000000000
          Height = 15.118120000000000000
          DataSet = dm.DBEmpresa
          DataSetName = 'DBEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."DEPT_EMP"]  CNPJ: [DBEmpresa."CNPJ_EMP"] ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 86.929190000000000000
          Top = 41.574830000000000000
          Width = 445.984540000000000000
          Height = 15.118120000000000000
          DataSet = dm.DBEmpresa
          DataSetName = 'DBEmpresa'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[DBEmpresa."LOGRA_EMP"], N'#186' [DBEmpresa."NUMERO_EMP"] - [DBEmpres' +
              'a."BAIRRO_EMP"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 536.693260000000000000
          Width = 136.063080000000000000
          Height = 79.370130000000000000
        end
        object SysMemo2: TfrxSysMemoView
          Left = 608.504330000000000000
          Top = 62.531540000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 539.897960000000000000
          Top = 0.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data Emiss'#227'o:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 539.897960000000000000
          Top = 62.531540000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina(s):')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 539.897960000000000000
          Top = 46.843537500000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Usu'#225'rio:')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 539.897960000000000000
          Top = 31.155535000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Exerc'#237'cio:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 608.504330000000000000
          Top = 31.155535000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object lbUsuario: TfrxMemoView
          Left = 608.504330000000000000
          Top = 46.843537500000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 539.897960000000000000
          Top = 15.467532500000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hora:')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 608.504330000000000000
          Top = 15.467532500000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'mm/dd/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
    end
  end
  object DBEmpresa: TfrxDBDataset
    UserName = 'DBEmpresa'
    CloseDataSource = False
    DataSource = dm.dsEmpresa
    BCDToCurrency = False
    Left = 88
    Top = 184
  end
  object sql: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select RR_DESCONTO.*, GR_RECEITA.DESCRI_REC'#13#10'from RR_DESCONTO'#13#10'L' +
      'EFT JOIN GR_RECEITA ON GR_RECEITA.COD_EMP_REC = RR_DESCONTO.COD_' +
      'EMP_DSC AND GR_RECEITA.COD_REC = RR_DESCONTO.COD_REC_DSC'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.Conexao
    Left = 128
    Top = 184
  end
  object dsp: TDataSetProvider
    DataSet = sql
    Left = 168
    Top = 184
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 208
    Top = 184
  end
  object ds: TDataSource
    DataSet = cds
    Left = 248
    Top = 184
  end
  object DBDados: TfrxDBDataset
    UserName = 'DBDados'
    CloseDataSource = True
    FieldAliases.Strings = (
      'COD_EMP_DSC=COD_EMP_DSC'
      'COD_STR_DSC=COD_STR_DSC'
      'ANO_STR_DSC=ANO_STR_DSC'
      'COD_REC_DSC=COD_REC_DSC'
      'PARCELA_DSC=PARCELA_DSC'
      'TIPO_DSC=TIPO_DSC'
      'VRDESCONTO_DSC=VRDESCONTO_DSC'
      'CONDICAO_DSC=CONDICAO_DSC'
      'LOGIN_INC_DSC=LOGIN_INC_DSC'
      'DTA_INC_DSC=DTA_INC_DSC'
      'LOGIN_ALT_DSC=LOGIN_ALT_DSC'
      'DTA_ALT_DSC=DTA_ALT_DSC'
      'DESCRI_REC=DESCRI_REC')
    DataSource = ds
    BCDToCurrency = False
    Left = 284
    Top = 185
  end
end
