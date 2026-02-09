unit FrmCadastro;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,

  FrmProdutos,
  conexao, Data.DB, Vcl.Grids,
   Vcl.Mask,
   Vcl.DBCtrls,
  // Data.DB,
   FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  System.UITypes,
 // Vcl.Grids,
  Vcl.DBGrids, System.StrUtils;
  //FrmCEP;

type
  TFrmClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit3: TEdit;
    Edit4: TEdit;
    EdtCPF: TEdit;
    ComboBox1: TComboBox;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit5: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Label20: TLabel;
    Button2: TButton;
    Label22: TLabel;
    edtIDCliente: TEdit;
    Button3: TButton;
    Button4: TButton;
    DateTimePicker1: TDateTimePicker;
    Label23: TLabel;
    Edit6: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure EdtCPFChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }

    FModoEdicao: Boolean;
    FIDClienteAtual: Integer;
    procedure ConfigurarControles;
    procedure HabilitarControles(Ativo: Boolean);
    procedure LimparCampos;
    procedure CarregarCliente(IDCliente: Integer);
    procedure AtualizarGrid;
    procedure ValidarCampos;
    function ValidarCPF(CPF: string): Boolean;
    function ValidarCNPJ(CNPJ: string): Boolean;
    function ValidarEmail(Email: string): Boolean;
    procedure AplicarMascaraCPFCNPJ;
    procedure FormatarTelefone;
    procedure FormatarCEP;
    function RemoveFormatacao(Texto: string): string;
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses
FrmCEP;

procedure TFrmClientes.AplicarMascaraCPFCNPJ;
var
  Doc: string;
begin
  Doc := RemoveFormatacao(EdtCPF.Text);

  if RadioButton1.Checked and (Length(Doc) = 11) then
    EdtCPF.Text := Format('%s.%s.%s-%s',
      [Copy(Doc, 1, 3), Copy(Doc, 4, 3), Copy(Doc, 7, 3), Copy(Doc, 10, 2)])
  else if RadioButton2.Checked and (Length(Doc) = 14) then
    EdtCPF.Text := Format('%s.%s.%s/%s-%s',
      [Copy(Doc, 1, 2), Copy(Doc, 3, 3), Copy(Doc, 6, 3),
       Copy(Doc, 9, 4), Copy(Doc, 13, 2)]);
end;

procedure TFrmClientes.AtualizarGrid;
begin

end;

procedure TFrmClientes.Button1Click(Sender: TObject);
begin
 FCadProdutos.show;
end;


procedure TFrmClientes.Button2Click(Sender: TObject);
var
  Qry: TFDQuery;
  TipoPessoa: string;
  CPF_CNPJ_Limpo: string;
begin
  try
    ValidarCampos;

    if RadioButton1.Checked then
      TipoPessoa := 'F'
    else
      TipoPessoa := 'J';

    CPF_CNPJ_Limpo := RemoveFormatacao(EdtCPF.Text);

    Dm.Fconexao.StartTransaction;
    Qry := TFDQuery.Create(nil);

    try
      Qry.Connection := Dm.Fconexao;

      if FModoEdicao and (FIDClienteAtual > 0) then
      begin
        Qry.SQL.Text :=
          'UPDATE CLIENTES SET ' +
          'TIPO_PESSOA = :TIPO_PESSOA, ' +
          'CPF_CNPJ = :CPF_CNPJ, ' +
          'NOME_COMPLETO = :NOME_COMPLETO, ' +
          'DATA_NASCIMENTO = :DATA_NASCIMENTO, ' +
          'EMAIL = :EMAIL, ' +
          'EMAIL_CONFIRMADO = :EMAIL_CONFIRMADO, ' +
          'SENHA = :SENHA, ' +
          'SENHA_CONFIRMADA = :SENHA_CONFIRMADA, ' +
          'TELEFONE = :TELEFONE, ' +
          'CEP = :CEP, ' +
          'ENDERECO = :ENDERECO, ' +
          'NUMERO = :NUMERO, ' +
          'COMPLEMENTO = :COMPLEMENTO, ' +
          'BAIRRO = :BAIRRO, ' +
          'CIDADE = :CIDADE, ' +
          'UF = :UF ' +
          'WHERE ID_CLIENTE = :ID_CLIENTE';

        Qry.ParamByName('ID_CLIENTE').AsInteger := FIDClienteAtual;
      end
      else
      begin
        Qry.SQL.Text :=
          'INSERT INTO CLIENTES (TIPO_PESSOA, CPF_CNPJ, NOME_COMPLETO, ' +
          'DATA_NASCIMENTO, EMAIL, EMAIL_CONFIRMADO, SENHA, SENHA_CONFIRMADA, ' +
          'TELEFONE, CEP, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, UF) ' +
          'VALUES (:TIPO_PESSOA, :CPF_CNPJ, :NOME_COMPLETO, :DATA_NASCIMENTO, ' +
          ':EMAIL, :EMAIL_CONFIRMADO, :SENHA, :SENHA_CONFIRMADA, :TELEFONE, ' +
          ':CEP, :ENDERECO, :NUMERO, :COMPLEMENTO, :BAIRRO, :CIDADE, :UF) ' +
          'RETURNING ID_CLIENTE';
      end;

      Qry.ParamByName('TIPO_PESSOA').AsString := TipoPessoa;
      Qry.ParamByName('CPF_CNPJ').AsString := CPF_CNPJ_Limpo;
      Qry.ParamByName('NOME_COMPLETO').AsString := Trim(Edit3.Text);

      if DateTimePicker1.Date = 0 then
        Qry.ParamByName('DATA_NASCIMENTO').Clear
      else
        Qry.ParamByName('DATA_NASCIMENTO').AsDate := DateTimePicker1.Date;

      Qry.ParamByName('EMAIL').AsString := Trim(Edit7.Text);
      Qry.ParamByName('EMAIL_CONFIRMADO').AsString := Trim(Edit4.Text);

      if Trim(Edit12.Text) <> '' then
      begin
        Qry.ParamByName('SENHA').AsString := Trim(Edit12.Text);
        Qry.ParamByName('SENHA_CONFIRMADA').AsString := Trim(Edit13.Text);
      end
      else
      begin
        Qry.ParamByName('SENHA').Clear;
        Qry.ParamByName('SENHA_CONFIRMADA').Clear;
      end;

      Qry.ParamByName('TELEFONE').AsString := RemoveFormatacao(Edit1.Text);
      Qry.ParamByName('CEP').AsString := RemoveFormatacao(Edit2.Text);
      Qry.ParamByName('ENDERECO').AsString := Trim(Edit8.Text);
      Qry.ParamByName('NUMERO').AsString := Trim(Edit9.Text);
      Qry.ParamByName('COMPLEMENTO').AsString := Trim(Edit5.Text);
      Qry.ParamByName('BAIRRO').AsString := Trim(Edit10.Text);
      Qry.ParamByName('CIDADE').AsString := Trim(Edit11.Text);
      Qry.ParamByName('UF').AsString := ComboBox1.Text;

      if FModoEdicao then
        Qry.ExecSQL
      else
        Qry.Open;

      if not FModoEdicao then
        FIDClienteAtual := Qry.FieldByName('ID_CLIENTE').AsInteger;

      Dm.Fconexao.Commit;

      if FModoEdicao then
        ShowMessage('✅ Cliente atualizado com sucesso!')
      else
        ShowMessage('✅ Cliente cadastrado com sucesso!' + #13#10 +
                   'ID do cliente: ' + IntToStr(FIDClienteAtual));

      AtualizarGrid;

      if not FModoEdicao then
        LimparCampos;

      FModoEdicao := False;
      HabilitarControles(False);
      edtIDCliente.Text := IntToStr(FIDClienteAtual);

    except
      on E: Exception do
      begin
        Dm.Fconexao.Rollback;

        if Pos('UK_CLIENTES_CPF_CNPJ', E.Message) > 0 then
          raise Exception.Create('❌ CPF/CNPJ já cadastrado no sistema!')
        else if Pos('UK_CLIENTES_EMAIL', E.Message) > 0 then
          raise Exception.Create('❌ Email já cadastrado no sistema!')
        else
          raise Exception.Create('❌ Erro ao salvar cliente: ' + E.Message);
      end;
    end;

  finally
    Qry.Free;
  end;
end;

procedure TFrmClientes.Button3Click(Sender: TObject);
begin
  if MessageDlg('Limpar todos os campos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    LimparCampos;
    FModoEdicao := False;
    HabilitarControles(False);
    FIDClienteAtual := 0;
    edtIDCliente.Clear;
  end;
end;


procedure TFrmClientes.Button4Click(Sender: TObject);
begin
FCadProdutos.Show;
end;

procedure TFrmClientes.CarregarCliente(IDCliente: Integer);
begin

end;

procedure TFrmClientes.ConfigurarControles;
begin

  EdtCPF.MaxLength := 18;
  Edit1.MaxLength := 15;
  Edit2.MaxLength := 9;
  Edit7.MaxLength := 100;
  Edit4.MaxLength := 100;
  Edit12.MaxLength := 100;
  Edit13.MaxLength := 100;
  Edit3.MaxLength := 100;
  Edit8.MaxLength := 200;
  Edit10.MaxLength := 50;
  Edit11.MaxLength := 50;

  DateTimePicker1.Date := Now;
  DateTimePicker1.MaxDate := Now;

 // DBGrid1.Left := 550;
 // DBGrid1.Top := 140;
 // DBGrid1.Width := 600;
 // DBGrid1.Height := 500;

  Label22.Caption := 'ID Cliente:';
  edtIDCliente.ReadOnly := True;
end;


procedure TFrmClientes.Edit2Click(Sender: TObject);
begin
  CadCEP.Visible := not CadCEP.Visible;
  Panel1.visible:= not Panel1.visible;

end;

procedure TFrmClientes.EdtCPFChange(Sender: TObject);
begin
  if Length(EdtCPF.Text) = 12 then
    Label20.Caption := '✔'
  else
    Label20.Caption := '';
end;

procedure TFrmClientes.FormatarCEP;
var
  CEP: string;
begin
  CEP := RemoveFormatacao(Edit2.Text);

  if Length(CEP) = 8 then
    Edit2.Text := Format('%s-%s', [Copy(CEP, 1, 5), Copy(CEP, 6, 3)]);
end;

procedure TFrmClientes.FormatarTelefone;
var
  Tel: string;
begin
  Tel := RemoveFormatacao(Edit1.Text);

  if Length(Tel) = 11 then
    Edit1.Text := Format('(%s) %s-%s', [Copy(Tel, 1, 2), Copy(Tel, 3, 5), Copy(Tel, 8, 4)])
  else if Length(Tel) = 10 then
    Edit1.Text := Format('(%s) %s-%s', [Copy(Tel, 1, 2), Copy(Tel, 3, 4), Copy(Tel, 7, 4)])
  else if Length(Tel) = 8 then
    Edit1.Text := Format('%s-%s', [Copy(Tel, 1, 4), Copy(Tel, 5, 4)]);
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
begin
  HorzScrollBar.Range:= 1000;

  Dm.QryCadClientes.Connection := Dm.Fconexao;
  Dm.DSCadClientes.DataSet := Dm.QryCadClientes;
  DBGrid1.DataSource := Dm.DSCadClientes;

  ComboBox1.Items.Clear;
  ComboBox1.Items.Add('AC');
  ComboBox1.Items.Add('AL');
  ComboBox1.Items.Add('AP');
  ComboBox1.Items.Add('AM');
  ComboBox1.Items.Add('BA');
  ComboBox1.Items.Add('CE');
  ComboBox1.Items.Add('DF');
  ComboBox1.Items.Add('ES');
  ComboBox1.Items.Add('GO');
  ComboBox1.Items.Add('MA');
  ComboBox1.Items.Add('MT');
  ComboBox1.Items.Add('MS');
  ComboBox1.Items.Add('MG');
  ComboBox1.Items.Add('PA');
  ComboBox1.Items.Add('PB');
  ComboBox1.Items.Add('PR');
  ComboBox1.Items.Add('PE');
  ComboBox1.Items.Add('PI');
  ComboBox1.Items.Add('RJ');
  ComboBox1.Items.Add('RN');
  ComboBox1.Items.Add('RS');
  ComboBox1.Items.Add('RO');
  ComboBox1.Items.Add('RR');
  ComboBox1.Items.Add('SC');
  ComboBox1.Items.Add('SP');
  ComboBox1.Items.Add('SE');
  ComboBox1.Items.Add('TO');

  ConfigurarControles;
  HabilitarControles(False);
  FModoEdicao := False;
  FIDClienteAtual := 0;

  AtualizarGrid;
end;


procedure TFrmClientes.FormShow(Sender: TObject);
begin
AtualizarGrid;
end;

procedure TFrmClientes.HabilitarControles(Ativo: Boolean);
begin

end;

procedure TFrmClientes.LimparCampos;
begin
  RadioButton1.Checked := False;
  RadioButton2.Checked := False;
  EdtCPF.Clear;
  Edit3.Clear;
  DateTimePicker1.Date := Now;
  Edit7.Clear;
  Edit4.Clear;
  Edit12.Clear;
  Edit13.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit5.Clear;
  Edit10.Clear;
  Edit11.Clear;
  ComboBox1.ItemIndex := -1;
  Label20.Caption := '';
end;

function TFrmClientes.RemoveFormatacao(Texto: string): string;
begin
  Result := StringReplace(Texto, '.', '', [rfReplaceAll]);
  Result := StringReplace(Result, '-', '', [rfReplaceAll]);
  Result := StringReplace(Result, '/', '', [rfReplaceAll]);
  Result := StringReplace(Result, '(', '', [rfReplaceAll]);
  Result := StringReplace(Result, ')', '', [rfReplaceAll]);
  Result := StringReplace(Result, ' ', '', [rfReplaceAll]);
end;


procedure TFrmClientes.ValidarCampos;
begin

  if not RadioButton1.Checked and not RadioButton2.Checked then
    raise Exception.Create('Selecione o tipo de pessoa (Física ou Jurídica)');

  if Trim(EdtCPF.Text) = '' then
    raise Exception.Create('Informe o CPF ou CNPJ');

  if RadioButton1.Checked then
  begin
    if not ValidarCPF(EdtCPF.Text) then
      raise Exception.Create('CPF inválido');
  end
  else
  begin
    if not ValidarCNPJ(EdtCPF.Text) then
      raise Exception.Create('CNPJ inválido');
  end;

  if Trim(Edit3.Text) = '' then
    raise Exception.Create('Informe o nome completo ou razão social');

  if Trim(Edit7.Text) <> '' then
  begin
    if not ValidarEmail(Edit7.Text) then
      raise Exception.Create('Email inválido');

    if Edit7.Text <> Edit4.Text then
      raise Exception.Create('Emails não conferem');
  end;

  if Trim(Edit12.Text) <> '' then
  begin
    if Length(Edit12.Text) < 6 then
      raise Exception.Create('Senha deve ter pelo menos 6 caracteres');

    if Edit12.Text <> Edit13.Text then
      raise Exception.Create('Senhas não conferem');
  end;

  if Trim(Edit2.Text) <> '' then
  begin
    if Length(RemoveFormatacao(Edit2.Text)) < 8 then
      raise Exception.Create('CEP inválido');
  end;

  if ComboBox1.Text = '' then
    raise Exception.Create('Selecione a UF');
end;


function TFrmClientes.ValidarCNPJ(CNPJ: string): Boolean;
var
  S: string;
  I, X, Y: Integer;
  D1, D2: string;
begin
  Result := False;
  CNPJ := RemoveFormatacao(CNPJ);

  if Length(CNPJ) <> 14 then Exit;

  X := 0;
  S := '543298765432';
  for I := 1 to 12 do
    X := X + (StrToInt(CNPJ[I]) * StrToInt(S[I]));
  Y := 11 - (X mod 11);
  if Y >= 10 then D1 := '0' else D1 := IntToStr(Y);

  X := 0;
  S := '6543298765432';
  for I := 1 to 13 do
    X := X + (StrToInt(CNPJ[I]) * StrToInt(S[I]));
  Y := 11 - (X mod 11);
  if Y >= 10 then D2 := '0' else D2 := IntToStr(Y);

  Result := (D1 = CNPJ[13]) and (D2 = CNPJ[14]);
end;


function TFrmClientes.ValidarCPF(CPF: string): Boolean;
var
  S: string;
  I, X, Y: Integer;
  D1, D2: string;
begin
  Result := False;
  CPF := RemoveFormatacao(CPF);

  if Length(CPF) <> 11 then Exit;

  S := CPF[1];
  for I := 2 to 11 do
    if CPF[I] <> S[1] then Break;
  if I = 12 then Exit;

  X := 0;
  for I := 1 to 9 do
    X := X + (StrToInt(CPF[I]) * (11 - I));
  Y := 11 - (X mod 11);
  if Y >= 10 then D1 := '0' else D1 := IntToStr(Y);

  X := 0;
  for I := 1 to 10 do
    X := X + (StrToInt(CPF[I]) * (12 - I));
  Y := 11 - (X mod 11);
  if Y >= 10 then D2 := '0' else D2 := IntToStr(Y);

  Result := (D1 = CPF[10]) and (D2 = CPF[11]);
end;


function TFrmClientes.ValidarEmail(Email: string): Boolean;
begin
  Result := False;
  Email := Trim(Email);

  if Email = '' then Exit;

  if (Pos('@', Email) = 0) or (Pos('.', Email) = 0) then Exit;
  if Pos('@', Email) > Pos('.', Email) then Exit;
  if Length(Email) < 5 then Exit;
  if Email[1] = '@' then Exit;
  if Email[Length(Email)] = '.' then Exit;

  Result := True;
end;

end.
