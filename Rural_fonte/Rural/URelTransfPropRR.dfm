inherited FRelTransfPropRR: TFRelTransfPropRR
  Caption = 'Trasfer'#234'ncia de Propriedade'
  ClientWidth = 550
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  ExplicitWidth = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel3: TRzPanel
    Width = 550
    ExplicitWidth = 550
    inherited Panel1: TPanel
      Width = 546
      ExplicitWidth = 546
      inherited RzBackground1: TRzBackground
        Width = 542
        ExplicitWidth = 546
      end
      inherited Label2: TLabel
        Width = 331
        Caption = 'Relat'#243'rio de Trasfer'#234'ncia de Propriedade'
        ExplicitWidth = 331
      end
      object cbLayouts: TwwDBLookupCombo
        Left = 337
        Top = 1
        Width = 208
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
    inherited GR: TRadioGroup
      Width = 538
      ExplicitWidth = 538
    end
  end
  inherited RzPanel1: TRzPanel
    Width = 550
    ExplicitWidth = 550
    inherited BtnConfirma: TRzBitBtn
      Left = 343
      OnClick = BtnConfirmaClick
      ExplicitLeft = 343
    end
    inherited BtnSair: TRzBitBtn
      Left = 447
      ExplicitLeft = 445
    end
    inherited BtnLayout: TRzBitBtn
      OnClick = BtnLayoutClick
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
      'ATIVA_EMP=ATIVA_EMP'
      'WEB_CPF_EMP=WEB_CPF_EMP'
      'WEB_CNPJ_EMP=WEB_CNPJ_EMP'
      'SERVERSSE_EMP=SERVERSSE_EMP'
      'PORTASSE_EMP=PORTASSE_EMP'
      'CAMINHOSSE_EMP=CAMINHOSSE_EMP'
      'RODAPE=RODAPE')
    DataSource = dm.dsEmpresa
    BCDToCurrency = False
    Left = 88
    Top = 184
  end
  object sql: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT RR_TRANSPROP.*,'#13#10'       CNTV.NOME_CNT NOMEVELHO,'#13#10'       ' +
      'CNTV.CNPJ_CNT CPFVELHO,'#13#10'       CNTV.RG_CNT RGVELHO,'#13#10'       LOG' +
      'V.NOME_LOG LOGVELHO,'#13#10'       VELHO.COMPL_RRR COMPLVELHO,'#13#10'      ' +
      ' CNTN.NOME_CNT NOMENOVO,'#13#10'       LOGN.NOME_LOG LOGNOVO,'#13#10'       ' +
      'BAIN.NOME_BAI BAINOVO,'#13#10'       CNTN.NUMERO_CNT NRONOVO,'#13#10'       ' +
      'CNTN.COMPLE_CNT COMPLNOVO,'#13#10'       CNTN.CNPJ_CNT CPFNOVO,'#13#10'     ' +
      '  CNTN.RG_CNT RGNOVO'#13#10'FROM RR_TRANSPROP'#13#10'INNER JOIN GR_CONTRIBUI' +
      'NTES CNTN ON CNTN.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP'#13#10'      ' +
      '                          AND CNTN.COD_CNT = RR_TRANSPROP.COD_CN' +
      'TN_RTP'#13#10'LEFT JOIN GR_LOGRA LOGN ON LOGN.COD_EMP_LOG = CNTN.COD_E' +
      'MP_CNT'#13#10'                       AND LOGN.COD_LOG = CNTN.COD_LOG_C' +
      'NT'#13#10'LEFT JOIN GR_BAIRRO BAIN ON BAIN.COD_EMP_BAI = CNTN.COD_EMP_' +
      'CNT'#13#10'                        AND BAIN.COD_BAI = CNTN.COD_BAI_CNT' +
      #13#10'INNER JOIN RR_CAD_RURAL VELHO ON VELHO.COD_EMP_RRR = RR_TRANSP' +
      'ROP.COD_EMP_RTP'#13#10'                             AND VELHO.COD_RRR ' +
      '= RR_TRANSPROP.COD_RRR_ANT_RTP'#13#10'INNER JOIN GR_CONTRIBUINTES CNTV' +
      ' ON CNTV.COD_EMP_CNT = RR_TRANSPROP.COD_EMP_RTP'#13#10'               ' +
      '                 AND CNTV.COD_CNT = RR_TRANSPROP.COD_CNTV_RTP'#13#10'L' +
      'EFT JOIN GR_LOGRA LOGV ON LOGV.COD_EMP_LOG = VELHO.COD_EMP_RRR'#13#10 +
      '                       AND LOGV.COD_LOG = VELHO.COD_LOG_RRR'#13#10'WHE' +
      'RE RR_TRANSPROP.COD_EMP_RTP = 1'
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
      'COD_EMP_RTP=COD_EMP_RTP'
      'COD_RTP=COD_RTP'
      'COD_RRR_ANT_RTP=COD_RRR_ANT_RTP'
      'STATUS_RTP=STATUS_RTP'
      'MOTIVO_RTP=MOTIVO_RTP'
      'OBS_RTP=OBS_RTP'
      'COD_CNTV_RTP=COD_CNTV_RTP'
      'DTA_TRANSF_RTP=DTA_TRANSF_RTP'
      'DTA_CANCELA_RTP=DTA_CANCELA_RTP'
      'COD_CNTN_RTP=COD_CNTN_RTP'
      'LOGIN_INC_RTP=LOGIN_INC_RTP'
      'DTA_INC_RTP=DTA_INC_RTP'
      'LOGIN_ALT_RTP=LOGIN_ALT_RTP'
      'DTA_ALT_RTP=DTA_ALT_RTP'
      'NOMEVELHO=NOMEVELHO'
      'CPFVELHO=CPFVELHO'
      'RGVELHO=RGVELHO'
      'LOGVELHO=LOGVELHO'
      'COMPLVELHO=COMPLVELHO'
      'NOMENOVO=NOMENOVO'
      'LOGNOVO=LOGNOVO'
      'BAINOVO=BAINOVO'
      'NRONOVO=NRONOVO'
      'COMPLNOVO=COMPLNOVO'
      'CPFNOVO=CPFNOVO'
      'RGNOVO=RGNOVO')
    DataSource = ds
    BCDToCurrency = False
    Left = 284
    Top = 185
  end
  object Relatorio: TfrxReport
    Version = '5.6.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmPageWidth
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38609.455327870400000000
    ReportOptions.LastChange = 39316.619925486110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = RelatorioBeforePrint
    Left = 153
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
        Height = 22.677160470000000000
        Top = 990.236860000000000000
        Width = 672.756340000000000000
        object Line2: TfrxLineView
          Width = 672.756340000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000250000
          Width = 521.575140000000100000
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
        object SysMemo1: TfrxSysMemoView
          Left = 529.134199999999900000
          Top = 3.779530000000250000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 767.244590000000000000
        Top = 162.519790000000000000
        Width = 672.756340000000000000
        DataSet = DBDados
        DataSetName = 'DBDados'
        RowCount = 0
        StartNewPage = True
        object Memo9: TfrxMemoView
          Left = 94.488250000000000000
          Top = 3.779529999999994000
          Width = 68.159400000000000000
          Height = 15.118120000000000000
          DataField = 'COD_RTP'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDados."COD_RTP"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 87.057050000000000000
          Height = 16.063002500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Transfer'#234'ncia : ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779529999999994000
          Width = 37.923160000000000000
          Height = 16.063002500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data : ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 226.771800000000000000
          Top = 3.779530000000022000
          Width = 109.734230000000000000
          Height = 15.118120000000000000
          DataField = 'DTA_TRANSF_RTP'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDados."DTA_TRANSF_RTP"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 3.779530000000000000
          Top = 30.236240000000010000
          Width = 665.197280000000000000
          Height = 185.196970000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430204D532053616E732053657269663B7D
            7B5C66315C666E696C204D532053616E732053657269663B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31353036337D5C76
            6965776B696E64345C756331200D0A5C706172645C716A5C66305C6673313620
            20506172612064657669646F732066696E7320646520646F63756D656E74615C
            2765375C2765336F206E61205B4442456D70726573612E224E4F4D455F454D50
            225D2E5C7061720D0A5C7061720D0A2046696361207265676973747261646F20
            717565206F20436F6E7472696275696E74652C205B44424461646F732E224E4F
            4D4556454C484F225D204350463A205B44424461646F732E2243504656454C48
            4F225D2E5C7061720D0A204573745C276531207472616E73666572696E646F20
            6F20496D5C27663376656C20646520435C2766336469676F205B44424461646F
            732E22434F445F5252525F414E545F525450225D206C6F63616C697A61646F20
            6E61205B44424461646F732E224C4F4756454C484F225D2C205B44424461646F
            732E224E524F56454C484F225D20205B44424461646F732E22434F4D504C5645
            4C484F225D2C2070617261206F20436F6E7472696275696E74652C205B444244
            61646F732E224E4F4D454E4F564F225D20706F727461646F7220646F7320646F
            63756D656E746F73204350463A205B44424461646F732E224350464E4F564F22
            5D202C2052473A205B44424461646F732E2252474E4F564F225D2E5C66315C70
            61720D0A7D0D0A00}
        end
        object Memo78: TfrxMemoView
          Left = 389.958256660000000000
          Top = 725.538343330000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataField = 'NCARGO1_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBEmpresa."NCARGO1_EMP"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 389.958256660000000000
          Top = 744.435993330000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DataField = 'CARGO1_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBEmpresa."CARGO1_EMP"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 7.559060000000000000
          Top = 650.079160000000000000
          Width = 660.346630000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBEmpresa."CIDADE_EMP"],  [Date #ddd '#39'de'#39' mmmm '#39'de'#39' yyyy]'
            '')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 381.732530000000000000
          Top = 721.890230000000000000
          Width = 279.685220000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object DBDadosLOGIN_INC_ITP: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779529999999994000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'LOGIN_INC_RTP'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDados."LOGIN_INC_RTP"]')
          ParentFont = False
        end
        object DBDadosDTA_INC_ITP: TfrxMemoView
          Left = 529.134199999999900000
          Top = 3.779529999999994000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          DataField = 'DTA_INC_RTP'
          DataSet = DBDados
          DataSetName = 'DBDados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDados."DTA_INC_RTP"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779529999999994000
          Width = 45.482220000000000000
          Height = 16.063002500000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Login : ')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 487.559370000000000000
          Top = 3.779529999999994000
          Width = 37.923160000000000000
          Height = 16.063002500000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data : ')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 84.283464570000000000
        Top = 18.897650000000000000
        Width = 672.756340000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 71.811070000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object lbRelatorio: TfrxMemoView
          Left = 90.708720000000000000
          Top = 60.031540000000000000
          Width = 438.553340000000000000
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
          Left = 90.708720000000000000
          Top = 25.066945000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          DataSet = DBEmpresa
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
          Left = 90.708720000000000000
          Top = 43.354360000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          DataSet = DBEmpresa
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
        object SysMemo2: TfrxSysMemoView
          Left = 606.197280000000000000
          Top = 67.090600000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
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
        object Memo12: TfrxMemoView
          Left = 537.590910000000000000
          Top = 67.090600000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
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
        object Memo111: TfrxMemoView
          Left = 537.590910000000000000
          Top = 51.402597500000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
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
        object Memo153: TfrxMemoView
          Left = 537.590910000000000000
          Top = 35.714595000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
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
        object Memo154: TfrxMemoView
          Left = 606.197280000000000000
          Top = 35.714595000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
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
          Left = 606.197280000000000000
          Top = 51.402597500000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 537.590910000000000000
          Top = 20.026592500000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
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
        object Memo157: TfrxMemoView
          Left = 606.197280000000000000
          Top = 20.026592500000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
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
        object Shape2: TfrxShapeView
          Left = 534.386210000000000000
          Top = 4.559060000000000000
          Width = 136.063080000000000000
          Height = 75.590600000000000000
        end
        object Memo6: TfrxMemoView
          Left = 537.590910000000000000
          Top = 5.338590000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
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
        object Memo155: TfrxMemoView
          Left = 606.197280000000000000
          Top = 5.338590000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
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
      end
    end
  end
end
