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
    QRPTotal: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    Panel2: TPanel;
    QRPVenda: TQuickRep;
    QRBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand2: TQRBand;
    QRSysData3: TQRSysData;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    Panel3: TPanel;
    QRPCusto: TQuickRep;
    QRBand4: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand5: TQRBand;
    QRSysData5: TQRSysData;
    QRBand6: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData6: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
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
