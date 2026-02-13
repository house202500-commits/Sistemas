object FrmAdicionar: TFrmAdicionar
  Left = 0
  Top = 0
  Caption = 'Adicionar Item '#224' Venda'
  ClientHeight = 841
  ClientWidth = 984
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 190
    Top = 180
    Width = 604
    Height = 421
    Margins.Left = 190
    Margins.Top = 180
    Margins.Right = 190
    Margins.Bottom = 240
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Label14: TLabel
      Left = 40
      Top = 135
      Width = 75
      Height = 21
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 40
      Top = 175
      Width = 105
      Height = 21
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 215
      Width = 96
      Height = 21
      Caption = 'Valor Unit.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 255
      Width = 87
      Height = 21
      Caption = 'Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 295
      Width = 95
      Height = 21
      Caption = 'Total Item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbQuant: TLabel
      Left = 392
      Top = 175
      Width = 9
      Height = 21
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbVlUnit: TLabel
      Left = 160
      Top = 215
      Width = 32
      Height = 21
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbDesc: TLabel
      Left = 160
      Top = 255
      Width = 9
      Height = 21
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbTotItem: TLabel
      Left = 160
      Top = 295
      Width = 32
      Height = 21
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 40
      Top = 92
      Width = 66
      Height = 21
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbCod: TLabel
      Left = 160
      Top = 92
      Width = 5
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbIDProduto: TLabel
      Left = 173
      Top = 48
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbIDCliente: TLabel
      Left = 425
      Top = 48
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 42
      Top = 44
      Width = 127
      Height = 21
      Caption = 'ID de Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 304
      Top = 44
      Width = 117
      Height = 21
      Caption = 'ID de Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CbProduto: TComboBox
      Left = 160
      Top = 135
      Width = 297
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = CbProdutoChange
      OnClick = CbProdutoClick
    end
    object Panel11: TPanel
      AlignWithMargins = True
      Left = 106
      Top = 352
      Width = 183
      Height = 29
      Margins.Left = 100
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      BevelOuter = bvNone
      Color = clGray
      DoubleBuffered = True
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      object btnConfirma: TSpeedButton
        Left = -2
        Top = 0
        Width = 185
        Height = 29
        Caption = 'Confirmar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnConfirmaClick
        OnMouseEnter = btnConfirmaMouseEnter
        OnMouseLeave = btnConfirmaMouseLeave
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 337
      Top = 352
      Width = 183
      Height = 29
      Margins.Left = 100
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      BevelOuter = bvNone
      Color = clGray
      DoubleBuffered = True
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      object btnCancelar: TSpeedButton
        Left = -2
        Top = 0
        Width = 185
        Height = 29
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnCancelarClick
        OnMouseEnter = btnCancelarMouseEnter
        OnMouseLeave = btnCancelarMouseLeave
      end
    end
    object CbQuant: TComboBox
      AlignWithMargins = True
      Left = 160
      Top = 172
      Width = 49
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '  1'
      OnChange = CbQuantChange
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15')
    end
    object edtIdCep1: TEdit
      Left = 472
      Top = 155
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '1'
    end
  end
  object dsItens: TDataSource
    DataSet = mtItens
    Left = 646
    Top = 136
  end
  object mtItens: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 720
    Top = 136
  end
end
