unit RegEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, DBCtrls, Mask, Grids, DBGrids,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRegEstoque = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    TProduto: TTable;
    DSProduto: TDataSource;
    TProdutocod_produto: TIntegerField;
    TProdutonome_produto: TStringField;
    TProdutocod_categoria: TIntegerField;
    TProdutopreco_venda: TFloatField;
    TProdutopreco_custo: TFloatField;
    TProdutoqtd_estoque: TIntegerField;
    TProdutodesconto: TFloatField;
    TProdutocod_fornecedor: TIntegerField;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    TFornecedor: TTable;
    QryProduto: TQuery;
    DSQuery: TDataSource;
    DSFornecedor: TDataSource;
    TFornecedorcod_fornecedor: TIntegerField;
    TFornecedornome: TStringField;
    TFornecedorcnpj: TStringField;
    TFornecedorendereco: TStringField;
    TFornecedorbairro: TStringField;
    TFornecedorcomplemento: TStringField;
    TFornecedorcidade: TStringField;
    TFornecedorestado: TStringField;
    TFornecedorcep: TStringField;
    TFornecedortelefone: TStringField;
    EdtNome: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    QryProdutocod_fornecedor: TIntegerField;
    QryProdutonome_produto: TStringField;
    QryProdutoqtd_estoque: TIntegerField;
    Panel1: TPanel;
    QREstoque: TQuickRep;
    DetailBand1: TQRBand;
    DBCodForn: TQRDBText;
    DBProduto: TQRDBText;
    DBQtdEst: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegEstoque: TfrmRegEstoque;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmRegEstoque.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
EdtNome.Enabled := false;
DBEdit2.Enabled := false;
DBLookupComboBox2.Enabled := false;
end;

procedure TfrmRegEstoque.ComboBox1Select(Sender: TObject);
begin
if (ComboBox1.ItemIndex = 0) then
begin
EdtNome.Enabled := false;
DBEdit2.Enabled := false;
DBLookupComboBox2.Enabled := false;
end;
if (ComboBox1.ItemIndex = 2) then
begin
EdtNome.Enabled := false;
DBEdit2.Enabled := true;
DBLookupComboBox2.Enabled := true;
end;
if (ComboBox1.ItemIndex = 1) then
begin
EdtNome.Enabled := true;
DBEdit2.Enabled := false;
DBLookupComboBox2.Enabled := false;
end;



end;

procedure TfrmRegEstoque.BitBtn1Click(Sender: TObject);
begin
   QryProduto.SQL.Clear;
   QryProduto.SQL.Add('SELECT TProduto.cod_fornecedor, TProduto.nome_produto, TProduto.qtd_estoque');
   QryProduto.SQL.Add('FROM TFornecedor, TProduto');
   QryProduto.SQL.Add('WHERE TFornecedor.cod_fornecedor = TProduto.cod_fornecedor');

   if ((ComboBox1.ItemIndex = 1)) then
      QryProduto.SQL.Add('  AND (TProduto.nome_produto like :ParProd + ''%'') ');

   if (ComboBox1.ItemIndex = 2) then
      QryProduto.SQL.Add('   AND (TFornecedor.cod_fornecedor = :ParFor)');

   QryProduto.SQL.Add('ORDER BY TProduto.nome_produto');

   if ((ComboBox1.ItemIndex = 1)) then
      QryProduto.ParamByName('ParProd').Value := EdtNome.Text ;

   if (ComboBox1.ItemIndex = 2) then
      QryProduto.ParamByName('ParFor').Value := TFornecedorcod_fornecedor.Value;

   QryProduto.Active := True;
   QREstoque.Preview ;
end;

procedure TfrmRegEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
