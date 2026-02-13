object DRelatorio: TDRelatorio
  OldCreateOrder = False
  Height = 186
  Width = 286
  object VW_VENDAS_MOVIMENTO: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_VENDA=ID_VENDA'
      'DATA_VENDA=DATA_VENDA'
      'ID_CLIENTE=ID_CLIENTE'
      'NOME_COMPLETO=NOME_COMPLETO'
      'ID_PRODUTO=ID_PRODUTO'
      'NOME_DE_PRODUTO=NOME_DE_PRODUTO'
      'QUANTIDADE=QUANTIDADE'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'DESCONTO=DESCONTO'
      'VALOR_TOTAL=VALOR_TOTAL'
      'STATUS=STATUS'
      'LOGRADOURO=LOGRADOURO'
      'CIDADE=CIDADE'
      'UF=UF'
      'ID_CEP=ID_CEP'
      'CEP=CEP')
    DataSet = Dm.FDView
    BCDToCurrency = False
    Left = 80
    Top = 64
  end
  object frxReport1: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46066.405224965300000000
    ReportOptions.LastChange = 46066.713193182870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 208
    Top = 64
    Datasets = <
      item
        DataSet = VW_VENDAS_MOVIMENTO
        DataSetName = 'frxDBDataset1'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Fill.BackColor = clMenuBar
        Frame.Typ = []
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clMoneyGreen
          HAlign = haCenter
          Memo.UTF8W = (
            'Bem vindo ao Relat'#243'rio!')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1NOME_COMPLETO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 56.692950000000000000
          Width = 400.630180000000000000
          Height = 30.236240000000000000
          DataField = 'NOME_COMPLETO'
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOME_COMPLETO"]')
          ParentFont = False
        end
        object frxDBDataset1LOGRADOURO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 94.488250000000000000
          Width = 400.630180000000000000
          Height = 34.015770000000000000
          DataField = 'LOGRADOURO'
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LOGRADOURO"]')
          ParentFont = False
        end
        object frxDBDataset1CIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 132.283550000000000000
          Width = 668.976810000000000000
          Height = 37.795300000000000000
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDataset1."CIDADE"] / [frxDBDataset1."UF"]             [frx' +
              'DBDataset1."CEP"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 177.637910000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DDkShadow
          Memo.UTF8W = (
            'Data ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 83.149606300000000000
          Top = 177.637910000000000000
          Width = 362.834826300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DDkShadow
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 445.984432600000000000
          Top = 177.637910000000000000
          Width = 86.929136300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DDkShadow
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 532.913568900000000000
          Top = 177.637910000000000000
          Width = 45.354306300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DDkShadow
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 578.267875200000000000
          Top = 177.637910000000000000
          Width = 56.692896300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DDkShadow
          Memo.UTF8W = (
            'Desc.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 634.960771500000000000
          Top = 177.637910000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = cl3DDkShadow
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = VW_VENDAS_MOVIMENTO
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DATA_VENDA: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_VENDA'
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_VENDA"]')
        end
        object frxDBDataset1NOME_DE_PRODUTO: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_DE_PRODUTO'
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NOME_DE_PRODUTO"]')
        end
        object frxDBDataset1VALOR_UNITARIO: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_UNITARIO"]')
        end
        object frxDBDataset1QUANTIDADE: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 532.913730000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."QUANTIDADE"]')
        end
        object frxDBDataset1DESCONTO: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DESCONTO"]')
        end
        object frxDBDataset1VALOR_TOTAL: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = VW_VENDAS_MOVIMENTO
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_TOTAL"]')
        end
      end
    end
  end
end
