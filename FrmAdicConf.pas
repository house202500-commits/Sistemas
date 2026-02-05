unit FrmAdicConf;
//juju1232
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmAdicionar = class(TForm)
    Panel3: TPanel;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CbProduto: TComboBox;
    LbQuant: TLabel;
    LbVlUnit: TLabel;
    LbDesc: TLabel;
    LbTotItem: TLabel;
    Panel11: TPanel;
    Panel1: TPanel;
    btnConfirma: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCancelarMouseEnter(Sender: TObject);
    procedure btnCancelarMouseLeave(Sender: TObject);
    procedure btnConfirmaMouseEnter(Sender: TObject);
    procedure btnConfirmaMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdicionar: TFrmAdicionar;

implementation
uses
FrmVendas;

{$R *.dfm}

procedure TFrmAdicionar.btnCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAdicionar.btnCancelarMouseEnter(Sender: TObject);
begin
   btnCancelar.Font.Color := $00908E4C;
end;

procedure TFrmAdicionar.btnCancelarMouseLeave(Sender: TObject);
begin
   btnCancelar.Font.Color := clWhite;
end;

procedure TFrmAdicionar.btnConfirmaClick(Sender: TObject);
begin
    FrmAdicionar.visible := not FrmAdicionar.visible;
end;

procedure TFrmAdicionar.btnConfirmaMouseEnter(Sender: TObject);
begin
   btnConfirma.Font.Color := $00908E4C;
end;

procedure TFrmAdicionar.btnConfirmaMouseLeave(Sender: TObject);
begin
   btnConfirma.Font.Color := clWhite;
end;

end.
