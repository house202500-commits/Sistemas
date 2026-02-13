object Dm: TDm
  OldCreateOrder = False
  Height = 335
  Width = 524
  object Fconexao: TFDConnection
    Params.Strings = (
      'Database=C:\SISTEMA_BancoDados\CADASTRO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 32
    Top = 24
  end
  object FDdados: TFDQuery
    Connection = Fconexao
    Left = 136
    Top = 24
  end
  object FDCadProd: TFDQuery
    Connection = Fconexao
    Left = 224
    Top = 24
  end
  object FDTransaction1: TFDTransaction
    Connection = Fconexao
    Left = 136
    Top = 88
  end
  object DtCadProd: TDataSource
    DataSet = FDCadProd
    Left = 416
    Top = 96
  end
  object FDMVenda: TFDQuery
    Connection = Fconexao
    Left = 320
    Top = 32
  end
  object QryCadClientes: TFDQuery
    AfterScroll = QryCadClientesAfterScroll
    Connection = Fconexao
    Left = 216
    Top = 88
  end
  object DSCadClientes: TDataSource
    DataSet = QryCadClientes
    Left = 408
    Top = 264
  end
  object QryProdutos: TFDQuery
    Connection = Fconexao
    Left = 136
    Top = 144
  end
  object mtItens: TFDQuery
    Connection = Fconexao
    Left = 320
    Top = 96
  end
  object dsItens: TDataSource
    DataSet = mtItens
    Left = 416
    Top = 152
  end
  object FdVendasProd: TFDQuery
    Connection = Fconexao
    Left = 224
    Top = 152
  end
  object FDView: TFDQuery
    Active = True
    Connection = Fconexao
    SQL.Strings = (
      'SELECT '
      '    V.ID_VENDA,'
      '    V.DATA_VENDA,'
      '    C.ID_CLIENTE, '
      '    C.NOME_COMPLETO,'
      '    P.ID_PRODUTO,'
      '    P.DESCRICAO AS NOME_DE_PRODUTO,'
      '    V.QUANTIDADE,'
      '    V.VALOR_UNITARIO,'
      '    V.DESCONTO,'
      '    V.VALOR_TOTAL,'
      '    V.STATUS,'
      '    CEP.LOGRADOURO,'
      '    CEP.CIDADE,'
      '    CEP.UF, '
      '    CEP.ID_CEP,'
      '    CEP.CEP'
      'FROM VENDAS V'
      'JOIN CLIENTES C ON V.ID_CLIENTE = C.ID_CLIENTE'
      'JOIN PRODUTOS P ON V.ID_PRODUTO = P.ID_PRODUTO'
      'JOIN CEP ON V.ID_CEP = CEP.ID_CEP'
      'ORDER BY V.DATA_VENDA DESC;')
    Left = 320
    Top = 152
    object FDViewID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDViewDATA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_VENDA'
      Origin = 'DATA_VENDA'
      Required = True
    end
    object FDViewID_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDViewNOME_COMPLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_COMPLETO'
      Origin = 'NOME_COMPLETO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDViewID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDViewNOME_DE_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_DE_PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDViewQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDViewVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDViewDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object FDViewVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDViewSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDViewLOGRADOURO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDViewCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDViewUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object FDViewID_CEP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CEP'
      Origin = 'ID_CEP'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDViewCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
  end
  object DataSView: TDataSource
    DataSet = FDView
    Left = 416
    Top = 40
  end
  object FDTtalVenda: TFDQuery
    Connection = Fconexao
    Left = 128
    Top = 208
  end
  object DataSTtalVend: TDataSource
    DataSet = FDTtalVenda
    Left = 416
    Top = 208
  end
  object FDTransaction2: TFDTransaction
    Connection = Fconexao
    Left = 32
    Top = 88
  end
end
