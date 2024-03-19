unit View.principal;

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
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Provider.constants;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    panelConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblDescricao2: TLabel;
    lblDescricao1: TLabel;
    pnlUsuario: TPanel;
    pnlMargemUsuario: TPanel;
    imgUsuarioBranca: TImage;
    lblNomeUsuario: TLabel;
    lblAdministrador: TLabel;
    pnlLicenca: TPanel;
    pnlUsuarioLine: TPanel;
    pnlLineLicenca: TPanel;
    pnlMenu: TPanel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnSair: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfigs: TSpeedButton;
    imgUsuarioLaranja: TImage;
    imgBackground: TImage;
    lblErpDelphiTM: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

    procedure btnCaixaClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnConfigsClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUsuarioBrancaMouseEnter(Sender: TObject);
    procedure imgUsuarioLaranjaMouseEnter(Sender: TObject);

  private
    procedure GET_LineMENU(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.btnConfigsClick(Sender: TObject);
begin
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
    GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
    GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
    GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
    GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  GET_LineMENU(Sender);
  lblErpDelphiTM.Caption := razao_filial;
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left  := 0;
  ShapeMenu.Top := 0;
  ShapeMenu.Height  := TSpeedButton(Sender).Height;
  ShapeMenu.Top := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUsuarioBrancaMouseEnter(Sender: TObject);
begin
  imgUsuarioBranca.Visible := False;
  imgUsuarioLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUsuarioLaranjaMouseEnter(Sender: TObject);
begin
  imgUsuarioBranca.Visible := True;
  imgUsuarioLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.
