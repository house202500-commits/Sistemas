unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,FrmCadastro,FrmVendas,FrmConsult,
  dxGDIPlusClasses, Vcl.ExtCtrls,FrmProdutos;


type
  TPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    BtnSair: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

procedure TPrincipal.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TPrincipal.Button1Click(Sender: TObject);
begin
 FrmClientes.visible := not FrmClientes.visible;
end;

procedure TPrincipal.Button2Click(Sender: TObject);
begin
 FrmVenda.visible := not FrmVenda.visible;
end;

procedure TPrincipal.Button3Click(Sender: TObject);
begin
 FrmConsulta.Visible :=  not FrmConsulta.Visible;

end;

procedure TPrincipal.Button4Click(Sender: TObject);
begin
FCadProdutos.Show;
end;

end.
