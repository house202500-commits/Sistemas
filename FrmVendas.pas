unit FrmVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, dxGDIPlusClasses, Vcl.ComCtrls,FrmAdicConf,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,FrmConsult;

type
  TFrmVenda = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    btnAdic: TSpeedButton;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Panel4: TPanel;
    RdioCredito: TRadioButton;
    RdioDinheiro: TRadioButton;
    RdioBoleto: TRadioButton;
    Panel5: TPanel;
    Panel6: TPanel;
    btnRemov: TSpeedButton;
    Panel7: TPanel;
    btnEdit: TSpeedButton;
    Panel8: TPanel;
    Panel9: TPanel;
    btnImprimir: TSpeedButton;
    Panel10: TPanel;
    Panel11: TPanel;
    btnFechar: TSpeedButton;
    btnCanc: TSpeedButton;
    btnSalvVen: TSpeedButton;
    LisBox: TListBox;
    procedure btnAdicClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAdicMouseEnter(Sender: TObject);
    procedure btnAdicMouseLeave(Sender: TObject);
    procedure btnRemovMouseEnter(Sender: TObject);
    procedure btnRemovMouseLeave(Sender: TObject);
    procedure btnEditMouseEnter(Sender: TObject);
    procedure btnEditMouseLeave(Sender: TObject);
    procedure btnSalvVenMouseEnter(Sender: TObject);
    procedure btnImprimirMouseEnter(Sender: TObject);
    procedure btnCancMouseEnter(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnSalvVenMouseLeave(Sender: TObject);
    procedure btnImprimirMouseLeave(Sender: TObject);
    procedure btnCancMouseLeave(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda: TFrmVenda;

implementation

{$R *.dfm}


procedure TFrmVenda.btnAdicClick(Sender: TObject);
begin
  FrmAdicionar.visible := not FrmAdicionar.visible;

end;

procedure TFrmVenda.btnAdicMouseEnter(Sender: TObject);
begin
    btnAdic.Font.Color := $00908E4C;
end;

procedure TFrmVenda.btnAdicMouseLeave(Sender: TObject);
begin
    btnAdic.Font.Color := clWhite;
end;

procedure TFrmVenda.btnCancMouseEnter(Sender: TObject);
begin
   btnCanc.Font.Color := $00908E4C;
end;

procedure TFrmVenda.btnCancMouseLeave(Sender: TObject);
begin
   btnCanc.Font.Color := clWhite;
end;

procedure TFrmVenda.btnEditMouseEnter(Sender: TObject);
begin
    btnEdit.Font.Color := $00908E4C;
end;

procedure TFrmVenda.btnEditMouseLeave(Sender: TObject);
begin
   btnEdit.Font.Color := clWhite;
end;

procedure TFrmVenda.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TFrmVenda.btnFecharMouseEnter(Sender: TObject);
begin
   btnFechar.Font.Color := $00908E4C;
end;

procedure TFrmVenda.btnFecharMouseLeave(Sender: TObject);
begin
   btnFechar.Font.Color := clWhite;
end;

procedure TFrmVenda.btnImprimirMouseEnter(Sender: TObject);
begin
   btnImprimir.Font.Color := $00908E4C;
end;

procedure TFrmVenda.btnImprimirMouseLeave(Sender: TObject);
begin
   btnImprimir.Font.Color := clWhite;
end;


procedure TFrmVenda.btnRemovMouseEnter(Sender: TObject);
begin
  btnRemov.Font.Color := $00908E4C;
end;

procedure TFrmVenda.btnRemovMouseLeave(Sender: TObject);
begin
   btnRemov.Font.Color := clWhite;
end;

procedure TFrmVenda.btnSalvVenMouseEnter(Sender: TObject);
begin
    btnSalvVen.Font.Color := $00908E4C;
end;

procedure TFrmVenda.btnSalvVenMouseLeave(Sender: TObject);
begin
   btnSalvVen.Font.Color := clWhite;
end;

procedure TFrmVenda.FormCreate(Sender: TObject);
begin
   Label10.Caption := FormatDateTime('dd/MM/yyyy', Now);
end;

procedure TFrmVenda.Image1Click(Sender: TObject);
begin
  FrmConsulta.show;
end;

end.



