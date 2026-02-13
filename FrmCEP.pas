unit FrmCEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FrmCadastro,
  Vcl.Buttons, dxGDIPlusClasses, Vcl.Mask,     conexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, // Para FireBird
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,FrmConsult, Vcl.DBCtrls, Data.DB;

type
  TCadCEP = class(TForm)
    PnCEP: TPanel;
    Label12: TLabel;
    Label1: TLabel;
    EdtEndereco: TEdit;
    Label2: TLabel;
    EdtConituacao: TEdit;
    CbUF: TComboBox;
    Label3: TLabel;
    EdtBairro: TEdit;
    Label4: TLabel;
    EdtCidade: TEdit;
    Label5: TLabel;
    CBBrasil: TComboBox;
    Image1: TImage;
    Panel4: TPanel;
    btnFechar: TSpeedButton;
    Panel1: TPanel;
    btnLimpar: TSpeedButton;
    Panel2: TPanel;
    btnSalvar: TSpeedButton;
    Label13: TLabel;
    EdtCEP: TMaskEdit;

    procedure btnFecharClick(Sender: TObject);
    procedure btnFecharMouseLeave(Sender: TObject);
    procedure btnFecharMouseEnter(Sender: TObject);
    procedure btnSalvarMouseEnter(Sender: TObject);
    procedure btnSalvarMouseLeave(Sender: TObject);
    procedure btnLimparMouseLeave(Sender: TObject);
    procedure btnLimparMouseEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadCEP: TCadCEP;

implementation

{$R *.dfm}

procedure TCadCEP.btnFecharClick(Sender: TObject);
begin
 CadCEP.visible:= not CadCEP.visible;
 FrmClientes.Panel1.visible := true;
end;

procedure TCadCEP.btnFecharMouseEnter(Sender: TObject);
begin
   btnFechar.Font.Color := $00908E4C;
end;

procedure TCadCEP.btnFecharMouseLeave(Sender: TObject);
begin
  btnFechar.Font.Color := clWhite;
end;

procedure TCadCEP.btnLimparMouseEnter(Sender: TObject);
begin
   btnLimpar.Font.Color := $00908E4C;
end;

procedure TCadCEP.btnLimparMouseLeave(Sender: TObject);
begin
   btnLimpar.Font.Color := clWhite;
end;

procedure TCadCEP.btnSalvarClick(Sender: TObject);
var
  Qry: TFDQuery;
  IdCEP: Integer;
begin
  Qry := TFDQuery.Create(nil);
  try
    Qry.Connection := Dm.FConexao;

    Qry.SQL.Text :=
      'INSERT INTO CEP (CEP, LOGRADOURO, CIDADE, UF) ' +
      'VALUES (:CEP, :LOGRADOURO, :CIDADE, :UF)';

    Qry.ParamByName('CEP').AsString        := EdtCEP.Text;
    Qry.ParamByName('LOGRADOURO').AsString := EdtEndereco.Text;
    Qry.ParamByName('CIDADE').AsString     := EdtCidade.Text;
    Qry.ParamByName('UF').AsString         := CbUF.Text;

    Qry.ExecSQL;

    Qry.SQL.Text := 'SELECT MAX(ID_CEP) AS ID_CEP FROM CEP';
    Qry.Open;

    IdCEP := Qry.FieldByName('ID_CEP').AsInteger;
    Qry.Close;

    ShowMessage('Dados salvos com sucesso!');

    FrmClientes.EditCEP.Text :=  EdtCEP.Text;
    FrmClientes.EditEndereco.Text :=  EdtEndereco.Text;
    FrmClientes.EditBairro.Text := EdtBairro.Text;
    FrmClientes.EditCidade.Text  := EdtCidade.Text;
    FrmClientes.LBUF.Caption := CbUF.Text;

  finally
    Qry.Free;

  end;
end;

procedure TCadCEP.btnSalvarMouseEnter(Sender: TObject);
begin
   btnSalvar.Font.Color := $00908E4C;
end;

procedure TCadCEP.btnSalvarMouseLeave(Sender: TObject);
begin
   btnSalvar.Font.Color := clWhite;
end;

procedure TCadCEP.FormCreate(Sender: TObject);
begin
  EdtCEP.EditMask := '00000\-000;1;_';
  EdtCEP.Text := '';

  CbUF.Items.Clear;
  CbUF.Items.Add('AC');
  CbUF.Items.Add('AL');
  CbUF.Items.Add('AP');
  CbUF.Items.Add('AM');
  CbUF.Items.Add('BA');
  CbUF.Items.Add('CE');
  CbUF.Items.Add('DF');
  CbUF.Items.Add('ES');
  CbUF.Items.Add('GO');
  CbUF.Items.Add('MA');
  CbUF.Items.Add('MT');
  CbUF.Items.Add('MS');
  CbUF.Items.Add('MG');
  CbUF.Items.Add('PA');
  CbUF.Items.Add('PB');
  CbUF.Items.Add('PR');
  CbUF.Items.Add('PE');
  CbUF.Items.Add('PI');
  CbUF.Items.Add('RJ');
  CbUF.Items.Add('RN');
  CbUF.Items.Add('RS');
  CbUF.Items.Add('RO');
  CbUF.Items.Add('RR');
  CbUF.Items.Add('SC');
  CbUF.Items.Add('SP');
  CbUF.Items.Add('SE');
  CbUF.Items.Add('TO');

end;

end.
