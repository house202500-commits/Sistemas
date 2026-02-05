unit FrClientVend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls,Vcl.Imaging.pngimage;

type
  TFrmClientVenda = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Image1: TImage;
    Edit3: TEdit;
    ListView1: TListView;
    Panel3: TPanel;
    btnBuscar: TSpeedButton;
    Panel4: TPanel;
    btnClose: TSpeedButton;
    Panel5: TPanel;
    btnUsar: TSpeedButton;
    Label1: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnUsarMouseEnter(Sender: TObject);
    procedure btnBuscarMouseEnter(Sender: TObject);
    procedure btnCloseMouseEnter(Sender: TObject);
    procedure btnBuscarMouseLeave(Sender: TObject);
    procedure btnUsarMouseLeave(Sender: TObject);

    procedure CarregarImg;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseMouseLeave(Sender: TObject);

  private
    { Private declarations }
     GlyphOriginal: TBitmap;
  public
    { Public declarations }
  end;

var
  FrmClientVenda: TFrmClientVenda;

implementation

{$R *.dfm}

uses FrmListClient;

procedure TFrmClientVenda.btnBuscarMouseEnter(Sender: TObject);
    var
  Png2: TPngImage;
begin
   btnBuscar.Font.Color := $00908E4C;
  //btnClose.Font.Color := $00908E4C;
  Png2 := TPngImage.Create;
  try
    Png2.LoadFromFile('C:\Users\User\Downloads\img\Buscar2.png');
    btnBuscar.Glyph.Assign(Png2);
  finally
    Png2.Free;
  end;
end;


procedure TFrmClientVenda.btnBuscarMouseLeave(Sender: TObject);
begin
   btnBuscar.Font.Color := clWhite;
   CarregarImg;
end;

procedure TFrmClientVenda.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmClientVenda.btnUsarMouseEnter(Sender: TObject);
var
  Png2: TPngImage;
begin
  btnUsar.Font.Color := $00908E4C;
  Png2 := TPngImage.Create;
  try
    Png2.LoadFromFile('C:\Users\User\Downloads\img\Validacao2.png');
    btnUsar.Glyph.Assign(Png2);
  finally
    Png2.Free;
  end;
end;


procedure TFrmClientVenda.btnUsarMouseLeave(Sender: TObject);
begin
   btnUsar.Font.Color := clWhite;
   CarregarImg;
end;

procedure TFrmClientVenda.FormCreate(Sender: TObject);
begin
  GlyphOriginal := TBitmap.Create;
  GlyphOriginal.Assign(btnClose.Glyph);
  CarregarImg;
end;

procedure TFrmClientVenda.btnCloseMouseLeave(Sender: TObject);
begin
   CarregarImg;
end;

procedure TFrmClientVenda.CarregarImg;
var
  Png: TPngImage;
begin
  Png := TPngImage.Create;
  try
    Png.LoadFromFile('C:\Users\User\Downloads\img\Close2.png');
    btnClose.Glyph.Assign(Png);

    Png.LoadFromFile('C:\Users\User\Downloads\img\Buscar.png');
    btnBuscar.Glyph.Assign(Png);

    Png.LoadFromFile('C:\Users\User\Downloads\img\Validacao.png');
    btnUsar.Glyph.Assign(Png);
  finally
    Png.Free;
  end;
end;

procedure TFrmClientVenda.btnCloseMouseEnter(Sender: TObject);
 var
  Png2: TPngImage;
begin

  //btnClose.Font.Color := $00908E4C;
  Png2 := TPngImage.Create;
  try
    Png2.LoadFromFile('C:\Users\User\Downloads\img\Close.png');
    btnClose.Glyph.Assign(Png2);
  finally
    Png2.Free;
  end;
end;

end.
