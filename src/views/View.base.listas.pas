unit View.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls;

type
  TViewBaseListas = class(TViewBase)
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    pnlIcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    CardPanel_Listas: TCardPanel;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;
procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  CardPanel_listas.ActiveCard := card_pesquisa;

end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

end.
