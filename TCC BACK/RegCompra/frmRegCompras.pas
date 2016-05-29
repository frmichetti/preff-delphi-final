unit frmRegCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DBTables, DB, QRCtrls, QuickRpt,
  ExtCtrls;

type
  TfrmRegCompra = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    EdtData1: TDateTimePicker;
    EdtData2: TDateTimePicker;
    edtfix: TEdit;
    edtinicio: TEdit;
    edtfim: TEdit;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    DSQuery: TDataSource;
    TCompra: TTable;
    TACompra: TTable;
    DSCompra: TDataSource;
    DSACompra: TDataSource;
    DSCPag: TDataSource;
    TCPag: TTable;
    TCPagcod_contareceber: TIntegerField;
    TCPagcod_venda: TIntegerField;
    TCPagcod_cliente: TIntegerField;
    TCPagdata_prevista: TDateTimeField;
    TCPagvalor_previsto: TFloatField;
    TCPagdata_recebida: TDateTimeField;
    TCPagvalor_recebido: TFloatField;
    TFornecedor: TTable;
    DSFornecedor: TDataSource;
    TProduto: TTable;
    TProdutocod_produto: TIntegerField;
    TProdutonome_produto: TStringField;
    TProdutocod_categoria: TIntegerField;
    TProdutopreco_venda: TFloatField;
    TProdutopreco_custo: TFloatField;
    TProdutoqtd_estoque: TIntegerField;
    TProdutodesconto: TFloatField;
    TProdutocod_fornecedor: TIntegerField;
    DSProduto: TDataSource;
    QryRelatorio: TQuery;
    QryRelatoriocod_compra: TIntegerField;
    QryRelatoriodata: TDateTimeField;
    QryRelatoriovalor_previsto: TFloatField;
    QryRelatorionome: TStringField;
    QryRelatoriototal: TFloatField;
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
    TCompracod_compra: TIntegerField;
    TCompracod_fornecedor: TIntegerField;
    TCompradata: TDateTimeField;
    TACompracod_compra: TIntegerField;
    TACompracod_produto: TIntegerField;
    TACompraqtdade: TIntegerField;
    TACompravalor_unit: TFloatField;
    TACompraitem: TIntegerField;
    Panel1: TPanel;
    QRCompras: TQuickRep;
    DetailBand1: TQRBand;
    DBProduto: TQRDBText;
    DBQtdEst: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    procedure ComboBox1Select(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegCompra: TfrmRegCompra;

implementation

{$R *.dfm}

procedure TfrmRegCompra.ComboBox1Select(Sender: TObject);
begin
if (ComboBox1.ItemIndex = 0) then
begin
edtfix.Visible := false;
edtinicio.Visible := false;
Label4.Visible := false;
edtfim.Visible := false;
EdtData1.Visible := true;
EdtData2.Visible := true;
ComboBox2.Visible := false;
ComboBox2.ItemIndex := 0;
Label3.Visible := TRUE;
Label2.Visible := TRUE;
end;
if (ComboBox1.ItemIndex = 1) then
begin
edtfix.Visible := true;
edtinicio.Visible := false;
Label4.Visible := false;
edtfim.Visible := false;
EdtData1.Visible := false;
ComboBox2.Visible := false;
EdtData2.Visible := false;
ComboBox2.ItemIndex := 0;
Label3.Visible := false;
Label2.Visible := false;
end;
if (ComboBox1.ItemIndex = 2) then
begin
Label3.Visible := TRUE;
Label2.Visible := TRUE;
edtfix.Visible := true;
edtinicio.Visible := false;
Label4.Visible := false;
edtfim.Visible := false;
EdtData1.Visible := true;
EdtData2.Visible := True;
ComboBox2.ItemIndex := 0;
ComboBox2.Visible := false;
end;
if (ComboBox1.ItemIndex = 3) then
begin
edtfix.Visible := true;
edtinicio.Visible := false;
Label4.Visible := false;
edtfim.Visible := false;
EdtData1.Visible := true;
EdtData2.Visible := True;
ComboBox2.Visible := true;
ComboBox2.ItemIndex := 0;
Label3.Visible := TRUE;
Label2.Visible := TRUE;
end;
if (ComboBox1.ItemIndex = 4) then
begin
edtfix.Visible := true;
edtinicio.Visible := false;
Label4.Visible := false;
edtfim.Visible := false;
EdtData1.Visible := true;
EdtData2.Visible := true;
ComboBox2.ItemIndex := 0;
ComboBox2.Visible := false;
Label3.Visible := TRUE;
Label2.Visible := TRUE;
end;

end;

procedure TfrmRegCompra.FormActivate(Sender: TObject);
begin
edtfix.Visible := false;
edtinicio.Visible := false;
Label4.Visible := false;
edtfim.Visible := false;
EdtData1.Visible := true;
EdtData2.Visible := true;
ComboBox2.Visible := false;
ComboBox2.ItemIndex := 0;
Label3.Visible := TRUE;
Label2.Visible := TRUE;

end;

procedure TfrmRegCompra.ComboBox2Select(Sender: TObject);
begin
if (ComboBox2.ItemIndex = 3) then
  begin
    edtfix.Visible := false;
    edtinicio.Visible := true;
    edtfim.Visible := true;
    Label4.Visible := true;
  end
  else
  begin
    edtfix.Visible := true;
    edtinicio.Visible := false;
    edtfim.Visible := false;
    Label4.Visible := false;
  end;

end;

procedure TfrmRegCompra.BitBtn1Click(Sender: TObject);
begin
   QryRelatorio.SQL.Clear;
   QryRelatorio.SQL.Add('select TCompra.cod_compra, TCompra.data, TContaPagar.valor_previsto,  TFornecedor.nome, Sum( TContaPagar.valor_previsto)as total');
   QryRelatorio.SQL.Add('from TCompra, TACompra, TContaPagar, TProduto, TFornecedor');
   QryRelatorio.SQL.Add('where TCompra.cod_compra = TACompra.cod_compra');
   QryRelatorio.SQL.Add('and  TCompra.cod_compra = TContaPagar.cod_compra');
   QryRelatorio.SQL.Add('and TFornecedor.cod_Fornecedor = TCompra.cod_Fornecedor');
   QryRelatorio.SQL.Add('and TProduto.cod_produto = TACompra.cod_produto');

   if (ComboBox1.ItemIndex <> 1) then
   begin
   QryRelatorio.SQL.Add('  AND (TCompra.Data >= :ParData1)');
   QryRelatorio.SQL.Add('  AND (TCompra.Data <= :ParData2)');
   end;

   if (ComboBox1.ItemIndex = 1) or (ComboBox1.ItemIndex = 2) then
      QryRelatorio.SQL.Add('   AND (TFornecedor.nome = :ParAll)');

   if (ComboBox1.ItemIndex = 4) then
       QryRelatorio.SQL.Add('   AND (TProduto.nome_produto = :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 0) then
       QryRelatorio.SQL.Add('   AND (TContaPagar.valor_previsto = :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 1) then
       QryRelatorio.SQL.Add('   AND (TContaPagar.valor_previsto >= :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 2) then
       QryRelatorio.SQL.Add('   AND (TContaPagar.valor_previsto <= :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 3) then
       QryRelatorio.SQL.Add('   AND (TContapagar.valor_previsto between :ParDe and :ParAte)');

   QryRelatorio.SQL.Add('GROUP BY TCompra.cod_compra, TCompra.data, TContaPagar.valor_previsto,  TFornecedor.nome');
   QryRelatorio.SQL.Add('ORDER BY TCompra.cod_compra, TCompra.data, TContaPagar.valor_previsto,  TFornecedor.nome');

    if (ComboBox1.ItemIndex = 1) or (ComboBox1.ItemIndex = 2) then
   QryRelatorio.ParamByName('ParAll').Value := edtfix.Text ;

   if (ComboBox1.ItemIndex = 4) then
      QryRelatorio.ParamByName('ParAll').Value := edtfix.Text ;

      if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 0) then
      QryRelatorio.ParamByName('ParAll').Value := edtfix.Text ;

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 1) then
      QryRelatorio.ParamByName('ParAll').Value := edtfix.Text ;

      if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 2) then
      QryRelatorio.ParamByName('ParAll').Value := edtfix.Text ;

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 3) then
      begin
      QryRelatorio.ParamByName('ParDe').Value := edtinicio.Text;
      QryRelatorio.ParamByName('ParAte').Value := edtfim.Text;
      end;

   if (ComboBox1.ItemIndex <> 1) then
   Begin
      QryRelatorio.ParamByName('ParData1').Value := EdtData1.Date;
      QryRelatorio.ParamByName('ParData2').Value := EdtData2.Date;
   end;

   QryRelatorio.Active := True;
   QRCompras.Preview;
end;

end.
