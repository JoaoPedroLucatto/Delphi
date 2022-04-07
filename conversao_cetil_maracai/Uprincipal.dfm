object Tfrmprincipal_Conversao: TTfrmprincipal_Conversao
  Left = 69
  Top = 309
  BorderStyle = bsSingle
  Caption = 'Conversor....'
  ClientHeight = 692
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pntop: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 33
    Align = alTop
    Caption = 'Cetil - SQL SERVER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
  end
  object pnmain: TPanel
    Left = 0
    Top = 33
    Width = 892
    Height = 545
    Align = alClient
    TabOrder = 1
    DesignSize = (
      892
      545)
    object btlocalizadestino: TSpeedButton
      Left = 639
      Top = 56
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btlocalizadestinoClick
    end
    object lblent_padrao: TLabel
      Left = 128
      Top = 98
      Width = 79
      Height = 13
      Caption = 'Entidade Padrao'
    end
    object lblano: TLabel
      Left = 8
      Top = 97
      Width = 42
      Height = 13
      Caption = 'Exercicio'
    end
    object lblcaminhobase: TLabel
      Left = 8
      Top = 5
      Width = 139
      Height = 13
      Caption = 'Caminho das bases de dados'
    end
    object btlocalizaorigem: TSpeedButton
      Left = 639
      Top = 24
      Width = 23
      Height = 22
      Caption = '...'
      Visible = False
      OnClick = btlocalizaorigemClick
    end
    object lbl_ppa: TLabel
      Left = 772
      Top = 11
      Width = 19
      Height = 13
      Caption = 'PPA'
    end
    object lbl_cpc: TLabel
      Left = 773
      Top = 42
      Width = 20
      Height = 13
      Caption = 'CPC'
    end
    object lbl_cpe: TLabel
      Left = 774
      Top = 73
      Width = 19
      Height = 13
      Caption = 'CPE'
    end
    object edtdestino: TEdit
      Left = 128
      Top = 56
      Width = 495
      Height = 21
      TabOrder = 0
      Text = 'Banco SCPI'
    end
    object edtservidordestino: TEdit
      Left = 8
      Top = 56
      Width = 105
      Height = 21
      TabOrder = 1
      Text = 'LOCALHOST/3055'
    end
    object pnselecao_status: TPanel
      Left = 1
      Top = 135
      Width = 890
      Height = 409
      Align = alBottom
      TabOrder = 2
      object memoStatus: TMemo
        Left = 568
        Top = 1
        Width = 321
        Height = 407
        Align = alClient
        TabOrder = 0
      end
      object chk: TCheckListBox
        Left = 1
        Top = 1
        Width = 567
        Height = 407
        Align = alLeft
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'DESLIGA_TRIGGERS'
          'ZERA_GENERATORS'
          'LIMPATABELAS'
          'CADCLI'
          'ENTIDADES'
          'FUNDO_ESPECIAL'
          'AUTORIZADOR_PERIODO'
          'CENTRO_CUSTO'
          'CODIGO_APLICACAO'
          'FONTERECURSO'
          'PODER_ORGAO_UNIDADE'
          'FORNECEDORES'
          'CADLICITACAO'
          'Contratos'
          'CONVENIOS'
          'AGENCIA'
          'CONTA_BANCARIA'
          'FUNCOES'
          'SUBFUNCOES'
          'PROGRAMAS'
          'PROJETO_ATIVIDADE'
          'ORCAMENTO_DESPESA'
          'ORCAMENTO_RECEITA'
          'FICHA_DESPESA'
          'FICHA_RECEITA'
          'SUPLEMENTACOES'
          'Tipo_Doc_Financeiro'
          ''
          'RESERVA_ORCAMENTARIA'
          'EMPENHOS_ORCAMENTARIOS'
          'EMPENHOS_ANULACAO'
          'LIQUIDACAO'
          'Cria_Fichas_Extras'
          'Pagamento_Orcamentario_com_Retencao'
          'Estorno_Orcamentario_com_Retencao'
          ''
          'RECEITAS_EXTRA'
          'EMPENHOS_EXTRA'
          'LIQUIDACAO_EXTRA'
          'PAGAMENTOS_EXTRA'
          'ESTORNO_EXTRA'
          'EMPENHOS_EXTRA_AN'
          ''
          'Empenhos_Restos_PROC_NPROC'
          'Liquidacao_Restos_NPROC'
          'Pagamentos_Restos_Proc_e_NProc_com_Retencao'
          'Estorno_Restos_Proc_e_NProc_com_Retencao'
          'RECEITAS_ORCAMENTARIAS'
          'Devolucao_Adiantamento_Restos'
          'Prestacao_Adiantamento'
          ''
          'Transferencia_Entre_Contas'
          'REPASSE_FINANCEIRO'
          'Transferencia_de_Extra_para_Orcamentaria'
          'Conciliacao_Bancaria'
          'Acerta_Receita_Classificar'
          'Transf_de_Extra_para_Extra'
          ''
          'Marreta_Extrato_Bancario'
          ''
          'LEI_PPA'
          'PROGRAMAS_METAS_PPA'
          'ACOES_PPA'
          'LIGA_TRIGGERS'
          'Acerta_Gen_ID_Contas')
        TabOrder = 1
      end
    end
    object Ent_padrao: TEdit
      Left = 213
      Top = 94
      Width = 36
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object ano: TSpinEdit
      Left = 56
      Top = 94
      Width = 58
      Height = 22
      MaxValue = 3000
      MinValue = 2000
      TabOrder = 4
      Value = 2015
    end
    object CB_ORIGEM: TComboBoxEx
      Left = 8
      Top = 24
      Width = 615
      Height = 22
      ItemsEx = <>
      TabOrder = 5
      Text = 'Banco Origem via ODBC'
    end
    object edtservidororigem: TEdit
      Left = 8
      Top = 25
      Width = 105
      Height = 21
      TabOrder = 6
      Text = 'LOCALHOST/3050'
      Visible = False
    end
    object edtorigem: TEdit
      Left = 128
      Top = 24
      Width = 495
      Height = 21
      TabOrder = 7
      Text = 'Banco ORIGEM'
      Visible = False
    end
    object btn_novaconexao: TButton
      Left = 638
      Top = 14
      Width = 123
      Height = 33
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'Nova Conex'#227'o Origem'
      TabOrder = 8
      OnClick = btn_novaconexaoClick
    end
    object EDT_PPA: TEdit
      Left = 797
      Top = 6
      Width = 91
      Height = 21
      TabOrder = 9
      Text = 'E_PPA'
    end
    object edt_cpc: TEdit
      Left = 797
      Top = 39
      Width = 91
      Height = 21
      TabOrder = 10
      Text = 'E15_CPC'
    end
    object edt_cpe: TEdit
      Left = 797
      Top = 70
      Width = 91
      Height = 21
      TabOrder = 11
      Text = 'E15_CPE2015'
    end
    object rdprefeitura: TRadioGroup
      Left = 461
      Top = 83
      Width = 108
      Height = 41
      Caption = 'Base de Prefeitura?'
      Columns = 2
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 12
    end
    object rdEntPadrao: TRadioGroup
      Left = 262
      Top = 83
      Width = 193
      Height = 41
      Caption = 'Converte Apenas a Entidade Padr'#227'o?'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 13
    end
    object rdfundo: TRadioGroup
      Left = 575
      Top = 83
      Width = 108
      Height = 41
      Caption = 'Possui Fundo?'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Sim'
        'N'#227'o')
      TabOrder = 14
    end
  end
  object pndown: TPanel
    Left = 0
    Top = 651
    Width = 892
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      892
      41)
    object contador: TLabel
      Left = 79
      Top = 6
      Width = 3
      Height = 13
    end
    object btnconverte: TButton
      Left = 524
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Converter'
      TabOrder = 0
      OnClick = btnconverteClick
    end
    object btncancel: TButton
      Left = 605
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btncancelClick
    end
    object btnsair: TButton
      Left = 686
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnsairClick
    end
  end
  object pnmemo: TPanel
    Left = 0
    Top = 578
    Width = 892
    Height = 73
    Align = alBottom
    TabOrder = 3
    object SITU: TLabel
      Left = 8
      Top = 4
      Width = 23
      Height = 13
      Caption = 'SITU'
    end
    object EM: TLabel
      Left = 8
      Top = 21
      Width = 14
      Height = 13
      Caption = 'EM'
    end
    object STATUS: TLabel
      Left = 504
      Top = 21
      Width = 74
      Height = 13
      Caption = 'STATUS.........'
    end
    object lbltempo: TLabel
      Left = 666
      Top = 4
      Width = 96
      Height = 13
      Caption = 'Tempo decorrido....'
    end
    object pbt: TProgressBar
      Left = 1
      Top = 53
      Width = 890
      Height = 19
      Align = alBottom
      TabOrder = 0
    end
    object p: TProgressBar
      Left = 1
      Top = 34
      Width = 890
      Height = 19
      Align = alBottom
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
  end
  object oflocaliza: TOpenTextFileDialog
    Left = 680
    Top = 112
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 724
    Top = 112
  end
end
