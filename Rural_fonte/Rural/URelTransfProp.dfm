inherited FRelTransfProp: TFRelTransfProp
  Caption = 'Trasfer'#234'ncia de Propriedade'
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPanel3: TRzPanel
    inherited Panel1: TPanel
      inherited Label2: TLabel
        Width = 331
        Caption = 'Relat'#243'rio de Trasfer'#234'ncia de Propriedade'
      end
    end
  end
  inherited RzPanel1: TRzPanel
    inherited BtnConfirma: TRzBitBtn
      OnClick = BtnConfirmaClick
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
    Left = 88
    Top = 184
  end
  object sql: TSQLDataSet
    NoMetadata = True
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
    Left = 284
    Top = 185
  end
  object Relatorio: TfrxReport
    Version = '4.3'
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
        Height = 22.677160470000000000
        Top = 1024.252630000000000000
        Width = 672.756340000000000000
        object Line2: TfrxLineView
          Width = 672.756340000000000000
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
            'P'#195#161'gina: [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 767.244590000000000000
        Top = 196.535560000000000000
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
            'Transfer'#195#170'ncia : ')
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
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
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430204D532053616E732053657269663B7D7B5C66315C666E696C204D
            532053616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C
            706172645C716A5C66305C667331362020506172612064657669646F73206669
            6E7320646520646F63756D656E74615C2765375C2765336F206E61205B444245
            6D70726573612E224E4F4D455F454D50225D2E5C7061720D0A5C7061720D0A20
            46696361207265676973747261646F20717565206F20436F6E7472696275696E
            74652C205B44424461646F732E224E4F4D4556454C484F225D204350463A205B
            44424461646F732E2243504656454C484F225D2E5C7061720D0A204573745C27
            6531207472616E73666572696E646F206F20496D5C27663376656C2064652043
            5C2766336469676F205B44424461646F732E22434F445F5252525F414E545F52
            5450225D206C6F63616C697A61646F206E61205B44424461646F732E224C4F47
            56454C484F225D2C205B44424461646F732E224E524F56454C484F225D20205B
            44424461646F732E22434F4D504C56454C484F225D2C2070617261206F20436F
            6E7472696275696E74652C205B44424461646F732E224E4F4D454E4F564F225D
            20706F727461646F7220646F7320646F63756D656E746F73204350463A205B44
            424461646F732E224350464E4F564F225D202C2052473A205B44424461646F73
            2E2252474E4F564F225D2E5C66315C7061720D0A7D0D0A00}
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
            '[DBEmpresa."CIDADE_EMP"],  [Date #ddd '#39'de'#39' mmmm '#39'de'#39' yyyy]'
            '')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 381.732530000000000000
          Top = 721.890230000000000000
          Width = 279.685220000000000000
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
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
          Memo.UTF8 = (
            'Data : ')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 672.756340000000000000
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 7.559059999999999000
          Width = 83.149660000000000000
          Height = 79.370130000000000000
          DataField = 'LOGO_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
        end
        object Memo1: TfrxMemoView
          Left = 98.267780000000000000
          Top = 7.559059999999999000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DBEmpresa."NOME_EMP"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Top = 52.913420000000000000
          Width = 502.677490000000000000
          Height = 15.118120000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[DBEmpresa."LOGRA_EMP"], N'#194#186' [DBEmpresa."NUMERO_EMP"] - [DBEmpre' +
              'sa."BAIRRO_EMP"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 555.590910000000000000
          Top = 71.811070000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'EXER_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DBEmpresa."EXER_EMP"]')
          ParentFont = False
        end
        object lbNomeRelatorio: TfrxMemoView
          Left = 7.874020830000000000
          Top = 94.488250000000000000
          Width = 525.482530000000000000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 117.165430000000000000
          Width = 672.756340000000000000
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 98.267780000000000000
          Top = 71.811070000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ: [DBEmpresa."CNPJ_EMP"]')
          ParentFont = False
        end
        object MUsu: TfrxMemoView
          Left = 544.252320000000100000
          Top = 94.488250000000000000
          Width = 120.944889210000000000
          Height = 19.842532500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 30.236240000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataField = 'DEPT_EMP'
          DataSet = DBEmpresa
          DataSetName = 'DBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DBEmpresa."DEPT_EMP"]')
          ParentFont = False
        end
      end
    end
  end
end
