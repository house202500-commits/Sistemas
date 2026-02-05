object FrmTelaVendas: TFrmTelaVendas
  Left = 0
  Top = 0
  Caption = 'Tela de vendas'
  ClientHeight = 417
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 24
    Top = 27
    Width = 151
    Height = 21
    Caption = 'Numero da venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 280
    Top = 27
    Width = 40
    Height = 21
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 107
    Width = 59
    Height = 21
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 280
    Top = 107
    Width = 172
    Height = 21
    Caption = 'Valor total da venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LbNumVenda: TLabel
    Left = 24
    Top = 54
    Width = 43
    Height = 21
    Caption = 'V-001'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbDataVend: TLabel
    Left = 280
    Top = 54
    Width = 86
    Height = 21
    Caption = '01/01/2026'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbCliente: TLabel
    Left = 24
    Top = 134
    Width = 74
    Height = 21
    Caption = 'Ana Paula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbVlrTotal: TLabel
    Left = 280
    Top = 134
    Width = 64
    Height = 21
    Caption = '1.250,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 176
    Width = 667
    Height = 238
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Align = alBottom
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 5
    ExplicitTop = 171
    object Label20: TLabel
      Left = 14
      Top = 23
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
    object LbDesProd: TLabel
      Left = 95
      Top = 23
      Width = 122
      Height = 21
      Caption = 'TV Samsung 50"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbQuantid: TLabel
      Left = 125
      Top = 63
      Width = 9
      Height = 21
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 63
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
    object LbVUnitV: TLabel
      Left = 142
      Top = 103
      Width = 50
      Height = 21
      Caption = '300,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 14
      Top = 103
      Width = 122
      Height = 21
      Caption = 'Valor unit'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbDescontV: TLabel
      Left = 184
      Top = 143
      Width = 41
      Height = 21
      Caption = '50,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 14
      Top = 143
      Width = 164
      Height = 21
      Caption = 'Desconto por item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbVlorItemV: TLabel
      Left = 184
      Top = 183
      Width = 50
      Height = 21
      Caption = '250,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 14
      Top = 183
      Width = 165
      Height = 21
      Caption = 'Valor total do item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
