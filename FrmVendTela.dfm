object FrmTelaVendas: TFrmTelaVendas
  Left = 0
  Top = 0
  Caption = 'Tela de vendas'
  ClientHeight = 459
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 24
    Top = 33
    Width = 165
    Height = 21
    Caption = 'Numero da vendas '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 350
    Top = 33
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
    Top = 113
    Width = 208
    Height = 21
    Caption = 'Quantidade de produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 350
    Top = 113
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
  object LbQuantVend: TLabel
    Left = 24
    Top = 60
    Width = 165
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbDataVend: TLabel
    Left = 350
    Top = 60
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
  object LbQuantClient: TLabel
    Left = 24
    Top = 140
    Width = 208
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbValorGeral: TLabel
    Left = 350
    Top = 140
    Width = 161
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbResumo: TLabel
    Left = 273
    Top = 191
    Width = 150
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1540148
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 225
    Width = 667
    Height = 224
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 24
    Top = 187
    Width = 99
    Height = 27
    Caption = 'Exbir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
