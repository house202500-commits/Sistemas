unit FrmListClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,FrClientVend,conexao;

type
  TFrmLista = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    LbClient: TLabel;
    Label01: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    btnEdtClien: TSpeedButton;
    Panel4: TPanel;
    btnNovoClien: TSpeedButton;
    Panel5: TPanel;
    btnSelect: TSpeedButton;
    Panel6: TPanel;
    btnFecClient: TSpeedButton;
    LblCPF: TLabel;
    LbEnderco: TLabel;
    LbCidade: TLabel;
    LbTelefone: TLabel;
    LbEmail: TLabel;
    LbCadastro: TLabel;
    LbStatus: TLabel;
    LbNum: TLabel;
    LbUF: TLabel;
    LbBairro: TLabel;
    LbCEP: TLabel;
    procedure btnFecClientMouseEnter(Sender: TObject);
    procedure btnFecClientMouseLeave(Sender: TObject);
    procedure btnNovoClienMouseEnter(Sender: TObject);
    procedure btnNovoClienMouseLeave(Sender: TObject);
    procedure btnEdtClienMouseEnter(Sender: TObject);
    procedure btnSelectMouseEnter(Sender: TObject);
    procedure btnSelectMouseLeave(Sender: TObject);
    procedure btnEdtClienMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure CarregarGlyphPNG;
    procedure btnSelectClick(Sender: TObject);
    procedure btnEdtClienClick(Sender: TObject);
    procedure btnFecClientClick(Sender: TObject);
    procedure btnNovoClienClick(Sender: TObject);
    procedure FormShow(Sender: TObject);



  private
    { Private declarations }
    FModoEdicao: Boolean;
    FIDClienteAtual: Integer;
    GlyphOriginal: TBitmap;
  //  procedure HabilitarControles(Ativo: Boolean);
  public
    { Public declarations }
  end;

var
  FrmLista: TFrmLista;

implementation
 uses
 FrmVendas;
{$R *.dfm}

procedure TFrmLista.btnEdtClienClick(Sender: TObject);
begin
  if FIDClienteAtual > 0 then
  begin
    FModoEdicao := True;
  //  HabilitarControles(True);
    ShowMessage('📝 Modo edição ativado! Faça as alterações e clique em Salvar.');
  end
  else
  begin
    ShowMessage('Selecione um cliente para editar!');
  end;
end;

procedure TFrmLista.btnEdtClienMouseEnter(Sender: TObject);
begin
  btnEdtClien.Font.Color := $00908E4C;
  btnEdtClien.Glyph.Assign(nil);
end;

procedure TFrmLista.btnEdtClienMouseLeave(Sender: TObject);
begin
   btnEdtClien.Font.Color := clWhite;
   CarregarGlyphPNG;
end;

procedure TFrmLista.btnFecClientClick(Sender: TObject);
begin
  if FModoEdicao then
  begin
    if MessageDlg('Cancelar edição? As alterações serão perdidas.',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      FModoEdicao := False;
      FIDClienteAtual := 0;
    end;
  end
  else
  begin
    Close;
  end;
end;

procedure TFrmLista.btnFecClientMouseEnter(Sender: TObject);
begin
   btnFecClient.Font.Color := $00908E4C;
   btnFecClient.Glyph.Assign(nil);
end;

procedure TFrmLista.btnFecClientMouseLeave(Sender: TObject);
begin
   btnFecClient.Font.Color := clWhite;
   CarregarGlyphPNG;
end;

procedure TFrmLista.btnNovoClienClick(Sender: TObject);
begin
  FModoEdicao := False;
  FIDClienteAtual := 0;
end;

procedure TFrmLista.btnNovoClienMouseEnter(Sender: TObject);
begin
  btnNovoClien.Font.Color := $00908E4C;
  btnNovoClien.Glyph.Assign(nil);
end;

procedure TFrmLista.btnNovoClienMouseLeave(Sender: TObject);
begin
   btnNovoClien.Font.Color := clWhite;
   CarregarGlyphPNG;
end;

procedure TFrmLista.btnSelectClick(Sender: TObject);
begin

  FrmVenda.show;

  FrmVenda.Edit3.Text := LbClient.Caption ;
  FrmVenda.LisBox.Items.Add(
    'Endereço: ' + LbEnderco.Caption + ', ' +
    LbNum.Caption + ' , ' +
    LbBairro.Caption
  );

  FrmVenda.LisBox.Items.Add(
    LbCidade.Caption + ' / ' + LbUF.Caption + '     ' + LbCEP.Caption
  );

  LbUF.AutoSize := True;
  LbCEP.AutoSize := True;

  LbCEP.Left := LbUF.Left + LbUF.Width + 25;
end;


procedure TFrmLista.btnSelectMouseEnter(Sender: TObject);
begin
  btnSelect.Font.Color := $00908E4C;
  btnSelect.Glyph.Assign(nil);
end;

procedure TFrmLista.btnSelectMouseLeave(Sender: TObject);
begin
  btnSelect.Font.Color := clWhite;
  CarregarGlyphPNG;
end;

procedure TFrmLista.CarregarGlyphPNG;
var
  Png: TPngImage;
begin
  Png := TPngImage.Create;
  try
    Png.LoadFromFile('C:\Users\User\Downloads\img\verificado.png');
    btnSelect.Glyph.Assign(Png);

    Png.LoadFromFile('C:\Users\User\Downloads\img\editar.png');
    btnEdtClien.Glyph.Assign(Png);

    Png.LoadFromFile('C:\Users\User\Downloads\img\novo-usuario.png');
    btnNovoClien.Glyph.Assign(Png);

    Png.LoadFromFile('C:\Users\User\Downloads\img\fechar.png');
    btnFecClient.Glyph.Assign(Png);

  finally
    Png.Free;
  end;
end;

procedure TFrmLista.FormCreate(Sender: TObject);
begin
  GlyphOriginal := TBitmap.Create;
  GlyphOriginal.Assign(btnEdtClien.Glyph);
  GlyphOriginal.Assign(btnSelect.Glyph);
  GlyphOriginal.Assign(btnNovoClien.Glyph);
  GlyphOriginal.Assign(btnFecClient.Glyph);

end;

procedure TFrmLista.FormShow(Sender: TObject);
var
  Status: string;
begin
  Status := Trim(Dm.QryCadClientes.FieldByName('STATUS').AsString);

  if Status = 'A' then
    LbStatus.Caption := 'Ativo'
  else if Status = 'I' then
    LbStatus.Caption := 'Inativo'
  else
    LbStatus.Caption := 'Desconhecido';
end;

end.
