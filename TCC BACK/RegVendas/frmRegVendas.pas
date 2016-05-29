unit frmRegVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DB, DBTables, QRCtrls, QuickRpt,
  ExtCtrls, Grids, DBGrids;

type
  TfrmRegVenda = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    EdtData1: TDateTimePicker;
    EdtData2: TDateTimePicker;
    Label2: TLabel;
    edtfix: TEdit;
    edtinicio: TEdit;
    edtfim: TEdit;
    Label4: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    DSQuery: TDataSource;
    TVenda: TTable;
    TAVenda: TTable;
    TVendacod_venda: TIntegerField;
    TVendacod_cliente: TIntegerField;
    TVendadata: TDateTimeField;
    TVendacod_funcionario: TIntegerField;
    TVendamod_pag: TStringField;
    TVendan_parc: TIntegerField;
    TAVendacod_venda: TIntegerField;
    TAVendacod_produto: TIntegerField;
    TAVendaqtdade: TIntegerField;
    TAVendavalor_unit: TFloatField;
    TAVendaitem: TIntegerField;
    DSVanda: TDataSource;
    DSAVenda: TDataSource;
    DSRec: TDataSource;
    TCRec: TTable;
    TCReccod_contareceber: TIntegerField;
    TCReccod_venda: TIntegerField;
    TCReccod_cliente: TIntegerField;
    TCRecdata_prevista: TDateTimeField;
    TCRecvalor_previsto: TFloatField;
    TCRecdata_recebida: TDateTimeField;
    TCRecvalor_recebido: TFloatField;
    TCliente: TTable;
    DSCliente: TDataSource;
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
    QryRelatorio: TQuery;
    QryRelatoriocod_venda: TIntegerField;
    QryRelatoriodata: TDateTimeField;
    QryRelatoriovalor_previsto: TFloatField;
    QryRelatorionome: TStringField;
    QryRelatoriomod_pag: TStringField;
    QryRelatoriototal: TFloatField;
    Panel1: TPanel;
    QRVendas: TQuickRep;
    DetailBand1: TQRBand;
    DBProduto: TQRDBText;
    DBQtdEst: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
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
  frmRegVenda: TfrmRegVenda;

implementation

{$R *.dfm}

procedure TfrmRegVenda.ComboBox1Select(Sender: TObject);
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

procedure TfrmRegVenda.FormActivate(Sender: TObject);
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

procedure TfrmRegVenda.ComboBox2Select(Sender: TObject);
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

procedure TfrmRegVenda.BitBtn1Click(Sender: TObject);
begin
   QryRelatorio.SQL.Clear;
   QryRelatorio.SQL.Add('select TVenda.cod_venda, TVenda.data, TContaReceber.valor_previsto, TCliente.nome,TVenda.mod_pag, SUM(TContaReceber.valor_previsto)as total ');
   QryRelatorio.SQL.Add('from TVenda, TAVenda, TContaReceber, TProduto, TCliente');
   QryRelatorio.SQL.Add('where TVenda.cod_venda = TAVenda.cod_venda');
   QryRelatorio.SQL.Add('and TVenda.cod_venda = TContaReceber.cod_venda');
   QryRelatorio.SQL.Add('and TProduto.cod_produto = TAVenda.cod_produto');
   QryRelatorio.SQL.Add('and TCliente.cod_cliente = TVenda.cod_cliente');

   if (ComboBox1.ItemIndex <> 1) then
   begin
   QryRelatorio.SQL.Add('  AND (TVenda.Data >= :ParData1)');
  QryRelatorio.SQL.Add('  AND (TVenda.Data <= :ParData2)');
   end;

   if (ComboBox1.ItemIndex = 1) or (ComboBox1.ItemIndex = 2) then
      QryRelatorio.SQL.Add('   AND (TCliente.nome = :ParAll)');

   if (ComboBox1.ItemIndex = 4) then
       QryRelatorio.SQL.Add('   AND (TProduto.nome_produto = :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 0) then
       QryRelatorio.SQL.Add('   AND (TContaReceber.valor_previsto = :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 1) then
       QryRelatorio.SQL.Add('   AND (TContaReceber.valor_previsto >= :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 2) then
       QryRelatorio.SQL.Add('   AND (TContaReceber.valor_previsto <= :ParAll)');

   if (ComboBox1.ItemIndex = 3) and (ComboBox2.ItemIndex = 3) then
       QryRelatorio.SQL.Add('   AND (TContaReceber.valor_previsto between :ParDe and :ParAte)');

   QryRelatorio.SQL.Add('GROUP BY TVenda.cod_venda, TVenda.data, TContaReceber.valor_previsto, TCliente.nome,TVenda.mod_pag');
   QryRelatorio.SQL.Add('ORDER BY TVenda.cod_venda, TVenda.data, TContaReceber.valor_previsto, TCliente.nome,TVenda.mod_pag');
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
   QRVendas.Preview;
end;

end.
