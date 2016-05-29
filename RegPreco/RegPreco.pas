unit RegPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, Grids, DBGrids, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TfrmRegPreco = class(TForm)
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    TProduto: TTable;
    QryProduto: TQuery;
    DSProduto: TDataSource;
    DSQuery: TDataSource;
    TProdutocod_produto: TIntegerField;
    TProdutonome_produto: TStringField;
    TProdutocod_categoria: TIntegerField;
    TProdutopreco_venda: TFloatField;
    TProdutopreco_custo: TFloatField;
    TProdutoqtd_estoque: TIntegerField;
    TProdutodesconto: TFloatField;
    TProdutocod_fornecedor: TIntegerField;
    QryProdutocod_fornecedor: TIntegerField;
    QryProdutocod_produto: TIntegerField;
    QryProdutonome_produto: TStringField;
    QryProdutopreco_venda: TFloatField;
    QryProdutopreco_custo: TFloatField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegPreco: TfrmRegPreco;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmRegPreco.BitBtn1Click(Sender: TObject);
begin
   QryProduto.SQL.Clear;

   QryProduto.SQL.Add('select cod_fornecedor,cod_produto, nome_produto,preco_venda,preco_custo, desconto');
   QryProduto.SQL.Add('from Tproduto');

   QryProduto.Active := True;
   if(ComboBox1.ItemIndex = 0) then
   QRPTotal.Preview ;
   if(ComboBox1.ItemIndex = 2) then
   QRPCusto.Preview ;
   if(ComboBox1.ItemIndex = 1) then
   QRPVenda.Preview ;
end;

procedure TfrmRegPreco.FormCreate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure TfrmRegPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

procedure TfrmRegPreco.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

end.
