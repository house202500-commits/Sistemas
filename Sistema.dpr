program Sistema;

uses
  Vcl.Forms,
  FrmProdutos in 'FrmProdutos.pas' {FCadProdutos},
  FrmCadastro in 'FrmCadastro.pas' {FrmClientes},
  FrmCEP in 'FrmCEP.pas' {CadCEP},
  FrmVendas in 'FrmVendas.pas' {FrmVenda},
  FrmAdicConf in 'FrmAdicConf.pas' {FrmAdicionar},
  FrmConsult in 'FrmConsult.pas' {FrmConsulta},
  FrmListClient in 'FrmListClient.pas' {FrmLista},
  conexao in 'servidor\conexao.pas' {Dm: TDataModule},
  FrClientVend in 'FrClientVend.pas' {FrmClientVenda},
  FrmVendTela in 'FrmVendTela.pas' {FrmTelaVendas},
  FrmCompTela in 'FrmCompTela.pas' {FrmTelaCompras},
  FrmPrincipal in 'FrmPrincipal.pas' {Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TFCadProdutos, FCadProdutos);
  Application.CreateForm(TFrmClientes, FrmClientes);
  Application.CreateForm(TCadCEP, CadCEP);
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.CreateForm(TFrmAdicionar, FrmAdicionar);
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.CreateForm(TFrmLista, FrmLista);
  Application.CreateForm(TFrmClientVenda, FrmClientVenda);
  Application.CreateForm(TFrmTelaVendas, FrmTelaVendas);
  Application.CreateForm(TFrmTelaCompras, FrmTelaCompras);
  Application.Run;
end.
