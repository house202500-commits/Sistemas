object FCadProdutos: TFCadProdutos
  Left = 0
  Top = 0
  Caption = 'FCadProdutos'
  ClientHeight = 711
  ClientWidth = 782
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 762
    Height = 691
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Label13: TLabel
      Left = 24
      Top = 36
      Width = 263
      Height = 24
      Caption = 'CADASTRO DE PRODUTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 22
      Top = 88
      Width = 161
      Height = 21
      Caption = 'C'#243'digo do produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 22
      Top = 160
      Width = 83
      Height = 21
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 236
      Width = 116
      Height = 21
      Caption = 'Valor unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 458
      Top = 112
      Width = 281
      Height = 220
    end
    object SpeedButton1: TSpeedButton
      Left = 184
      Top = 365
      Width = 129
      Height = 22
      Flat = True
    end
    object Label3: TLabel
      Left = 228
      Top = 367
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Image2: TImage
      Left = 458
      Top = 440
      Width = 121
      Height = 103
      Visible = False
      OnMouseEnter = Image2MouseEnter
      OnMouseLeave = Image2MouseLeave
    end
    object Label4: TLabel
      Left = 464
      Top = 418
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCod: TEdit
      AlignWithMargins = True
      Left = 22
      Top = 113
      Width = 163
      Height = 29
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Digite o c'#243'digo '#250'nico'
      OnChange = edtCodChange
      OnMouseEnter = edtCodMouseEnter
    end
    object EdtValor: TEdit
      AlignWithMargins = True
      Left = 24
      Top = 261
      Width = 114
      Height = 32
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = '0,00'
    end
    object CheckBox1: TCheckBox
      Left = 25
      Top = 312
      Width = 97
      Height = 17
      Caption = 'Ativo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object EdtDescricao: TEdit
      AlignWithMargins = True
      Left = 22
      Top = 185
      Width = 387
      Height = 29
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TextHint = 'Digite a descri'#231#227'o de produto'
    end
    object AtualizarGridProdutos1: TDBGrid
      Left = 25
      Top = 411
      Width = 427
      Height = 198
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = AtualizarGridProdutos1CellClick
      Columns = <
        item
          Expanded = False
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Valor unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 567
      Top = 338
      Width = 137
      Height = 25
      Caption = 'Selecionar Imagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 25
      Top = 360
      Width = 180
      Height = 30
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
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
      object btnEntrar: TSpeedButton
        Left = 0
        Top = 0
        Width = 180
        Height = 30
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Concluir Cadastro'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnEntrarClick
        OnMouseEnter = btnEntrarMouseEnter
        OnMouseLeave = btnEntrarMouseLeave
        ExplicitLeft = 2
      end
    end
    object btnVoltar: TButton
      Left = 25
      Top = 632
      Width = 150
      Height = 27
      Caption = 'Voltar ao inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = btnVoltarClick
    end
    object ListB: TListBox
      Left = 25
      Top = 411
      Width = 427
      Height = 130
      ItemHeight = 13
      TabOrder = 3
      Visible = False
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'C:\Users\User\Downloads\adicionar-ficheiro.png'
    Left = 626
    Top = 42
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    Left = 538
    Top = 42
  end
end
