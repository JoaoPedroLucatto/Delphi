object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Convert Notas -CETIL'
  ClientHeight = 474
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 101
    Height = 13
    Caption = 'Banco CETIL -NOTAS'
  end
  object LTitle: TLabel
    Left = 136
    Top = 152
    Width = 168
    Height = 13
    Alignment = taCenter
    Caption = 'NOTAS QUE N'#195'O EST'#195'O NO SIA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BancoOrigem: TComboBoxEx
    Left = 8
    Top = 32
    Width = 401
    Height = 22
    ItemsEx = <>
    TabOrder = 0
    Text = 'Banco Origem'
    OnChange = BancoOrigemChange
  end
  object LBancoSIA: TLabeledEdit
    Left = 8
    Top = 80
    Width = 401
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'Banco SIA'
    TabOrder = 1
    Text = 
      '192.168.0.127/3055:C:\Fiorilli\SIA7\Cidades\CANDIDO-MOTA\SGB_DAD' +
      'OS\SIADADOS.FDB'
  end
  object LIncriMunicipal: TLabeledEdit
    Left = 8
    Top = 121
    Width = 121
    Height = 21
    EditLabel.Width = 88
    EditLabel.Height = 13
    EditLabel.Caption = 'Incri'#231#227'o Municipal:'
    TabOrder = 2
  end
  object MemoScripy: TMemo
    Left = 5
    Top = 171
    Width = 452
    Height = 298
    Lines.Strings = (
      'MemoScripy')
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Comparar: TButton
    Left = 200
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Comparar'
    TabOrder = 4
    OnClick = CompararClick
  end
  object ADOCetil: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=NFSE;Data Source=DESKTOP-PV' +
      '4IV93;Initial File Name="";Server SPN=""'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 400
    Top = 8
  end
  object DataBases: TADOQuery
    Active = True
    Connection = ADOCetil
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM sys.databases')
    Left = 344
    Top = 8
  end
  object QNotasCetil: TADOQuery
    Connection = ADOCetil
    Parameters = <
      item
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'CLARE @COD_INSCRICAO varchar(10);'
      ''
      'SELECT *'
      'FROM NOTA_ITEM'
      'INNER JOIN NOTA ON NOTA.FK_NOTA_ITEM_ITEM=NOTA_ITEM.PKID'
      
        'LEFT JOIN SERVICO_ASSOCIADO ON SERVICO_ASSOCIADO.PKID=NOTA_ITEM.' +
        'FK_SERVICO_ASSOCIADO_SERVICO'
      
        'LEFT JOIN SERVICO_CLASSIFICACAO A ON  A.PKID=SERVICO_ASSOCIADO.F' +
        'K_SERVICO_CLASSIFICACAO_SERVICO_MUNICIPAL'
      
        'LEFT JOIN SERVICO_CLASSIFICACAO B ON  B.PKID=SERVICO_ASSOCIADO.F' +
        'K_SERVICO_CLASSIFICACAO_SERVICO_FEDERAL'
      
        'LEFT JOIN CONTRIBUINTE C ON C.PKID = NOTA.FK_CONTRIBUINTE_PRESTA' +
        'DOR'
      'where c.INSCRICAO_MUNICIPAL = @COD_INSCRICAO')
    Left = 280
    Top = 8
  end
  object ConSIA: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=localhost/3055:C:\Fiorilli\convers'#227'o\CIDADES\CAPELA\SIA' +
        '\SGB_DADOS\SIADADOS.FDB'
      'RoleName=RoleName'
      'User_Name=FSCSIA'
      'Password=csfais'
      'ServerCharSet=WIN1252'
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False'
      'UseUnicode=False')
    Left = 376
    Top = 80
  end
  object QNotaSIA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConSIA
    Left = 328
    Top = 80
  end
end
