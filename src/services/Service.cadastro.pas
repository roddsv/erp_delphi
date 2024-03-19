unit Service.cadastro;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait;

type
  TServiceCadastro = class(TDataModule)
    Qry_Pessoas: TFDQuery;
    Qry_PessoasPES_CODIGO: TIntegerField;
    Qry_PessoasPES_RAZAO: TStringField;
    Qry_PessoasPES_FANTASIA: TStringField;
    Qry_PessoasPES_TELEFONE: TStringField;
    Qry_PessoasPES_CNPJCPF: TStringField;
    Qry_PessoasPES_IERG: TStringField;
    Qry_PessoasPES_OBSERVACAO: TStringField;
    Qry_PessoasPES_TIPOPESSOA: TIntegerField;
    Qry_Enderecos: TFDQuery;
    Qry_EnderecosEND_CODIGO: TIntegerField;
    Qry_EnderecosEND_PESSOA: TIntegerField;
    Qry_EnderecosEND_CEP: TStringField;
    Qry_EnderecosEND_CIDADE: TStringField;
    Qry_EnderecosEND_ENDERECO: TStringField;
    Qry_EnderecosEND_BAIRRO: TStringField;
    Qry_EnderecosEND_OBSERVACAO: TStringField;
    Qry_EnderecosEND_NUMERO: TStringField;
    Qry_Filial: TFDQuery;
    FDConn: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Service.conexao;

{$R *.dfm}

end.
