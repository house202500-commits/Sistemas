unit FrmVendTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmTelaVendas = class(TForm)
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LbNumVenda: TLabel;
    LbDataVend: TLabel;
    LbCliente: TLabel;
    LbVlrTotal: TLabel;
    Panel2: TPanel;
    Label20: TLabel;
    LbDesProd: TLabel;
    LbQuantid: TLabel;
    Label5: TLabel;
    LbVUnitV: TLabel;
    Label6: TLabel;
    LbDescontV: TLabel;
    Label8: TLabel;
    LbVlorItemV: TLabel;
    Label9: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaVendas: TFrmTelaVendas;

implementation

{$R *.dfm}

end.
