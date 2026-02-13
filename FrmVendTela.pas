unit FrmVendTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, conexao;

type
  TFrmTelaVendas = class(TForm)
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LbQuantVend: TLabel;
    LbDataVend: TLabel;
    LbQuantClient: TLabel;
    LbValorGeral: TLabel;
    DBGrid1: TDBGrid;
    LbResumo: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaVendas: TFrmTelaVendas;

implementation

{$R *.dfm}

procedure TFrmTelaVendas.Button1Click(Sender: TObject);
begin
  // Totais gerais
  Dm.FDTtalVenda.Close;
  Dm.FDTtalVenda.SQL.Text :=
    'SELECT ' +
    'COUNT(ID_VENDA) AS TOTAL_VENDAS, ' +
    'SUM(QUANTIDADE) AS QUANTIDADE_TOTAL, ' +
    'SUM(VALOR_TOTAL) AS VALOR_TOTAL_GERAL ' +
    'FROM VENDAS';
  Dm.FDTtalVenda.Open;

  LbQuantVend.Caption :=
    Dm.FDTtalVenda.FieldByName('TOTAL_VENDAS').AsString;

  LbQuantClient.Caption :=
    Dm.FDTtalVenda.FieldByName('QUANTIDADE_TOTAL').AsString;

  LbValorGeral.Caption :=
    FormatFloat('#,##0.00', Dm.FDTtalVenda.FieldByName('VALOR_TOTAL_GERAL').AsFloat);

  LbResumo.Caption := 'Resumo concluído';

  // Resumo por cliente
  Dm.FDTtalVenda.Close;
  Dm.FDTtalVenda.SQL.Text :=
    'SELECT C.ID_CLIENTE AS ID, C.NOME_COMPLETO, ' +
    'COUNT(V.ID_VENDA) AS TOTAL_VENDAS, ' +
    'SUM(V.QUANTIDADE) AS QUANTIDADE_TOTAL, ' +
    'SUM(V.VALOR_TOTAL) AS VALOR_TOTAL_CLIENTE ' +
    'FROM VENDAS V ' +
    'JOIN CLIENTES C ON V.ID_CLIENTE = C.ID_CLIENTE ' +
    'GROUP BY C.ID_CLIENTE, C.NOME_COMPLETO';
  Dm.FDTtalVenda.Open;

  Dm.DataSTtalVend.DataSet := Dm.FDTtalVenda;
  DBGrid1.DataSource := Dm.DataSTtalVend;
end;


procedure TFrmTelaVendas.FormCreate(Sender: TObject);
begin

  LbDataVend.Caption := FormatDateTime('dd/mm/yyyy', Date);

  // LbDataVend.Caption := FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;


end.
