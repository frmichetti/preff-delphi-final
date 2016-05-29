unit RegContaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ComCtrls, Buttons, Grids, DBGrids, DB,
  DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRegContaPag = class(TForm)
    Label4: TLabel;
    EdtData1: TDateTimePicker;
    EdtData2: TDateTimePicker;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    EdtFornecedor: TDBLookupComboBox;
    TFornecedor: TTable;
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
    DSFornecedor: TDataSource;
    DtsParcelas: TDataSource;
    QryParcelas: TQuery;
    QryParcelascod_contapagar: TIntegerField;
    QryParcelascod_compra: TIntegerField;
    QryParcelasdata_prevista: TDateTimeField;
    QryParcelasvalor_previsto: TFloatField;
    QryParcelasdata_paga: TDateTimeField;
    QryParcelasvalor_pago: TFloatField;
    QryParcelasData: TDateTimeField;
    QryParcelasNome: TStringField;
    TCPagar: TTable;
    TCPagarcod_contapagar: TIntegerField;
    TCPagarcod_compra: TIntegerField;
    TCPagardata_prevista: TDateTimeField;
    TCPagarvalor_previsto: TFloatField;
    TCPagardata_paga: TDateTimeField;
    TCPagarvalor_pago: TFloatField;
    TCompra: TTable;
    DSCPagar: TDataSource;
    DSCompra: TDataSource;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegContaPag: TfrmRegContaPag;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmRegContaPag.BitBtn1Click(Sender: TObject);
begin
QryParcelas.SQL.Clear;
   QryParcelas.SQL.Add('SELECT FORN.Nome, PGAR.*,COM.Data');
   QryParcelas.SQL.Add('FROM TContaPagar PGAR, TFornecedor FORN,TCompra COM');
   QryParcelas.SQL.Add('WHERE (FORN.cod_fornecedor = COM.cod_fornecedor)');
   QryParcelas.SQL.Add('  AND (COM.Cod_compra = PGAR.Cod_compra)');
   if (ComboBox1.ItemIndex = 3) then
   QryParcelas.SQL.Add('  AND (PGAR.Data_Paga is not null)')
   else
   QryParcelas.SQL.Add('  AND (PGAR.Data_Paga is null)');

   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
   begin
   QryParcelas.SQL.Add('  AND (PGAR.Data_Prevista >= :ParData1)');
   QryParcelas.SQL.Add('  AND (PGAR.Data_Prevista <= :ParData2)');
   end;
  if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.SQL.Add('   AND (FORN.cod_fornecedor = :ParFor)');

   QryParcelas.SQL.Add('ORDER BY PGAR.Data_Prevista');


   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
  begin
   QryParcelas.ParamByName('ParData1').Value := EdtData1.Date;
   QryParcelas.ParamByName('ParData2').value := EdtData2.Date;
  end;

  if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.ParamByName('ParFor').Value := TFornecedorcod_fornecedor.Value;


   QryParcelas.Active := True;
   QRContaPag.Preview;
end;

procedure TfrmRegContaPag.ComboBox1Select(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
  EdtData1.Enabled := true;
  EdtData2.Enabled := true;
  EdtFornecedor.Enabled := true;
end;

if ComboBox1.ItemIndex = 1 then
begin
  EdtData1.Enabled := true;
  EdtData2.Enabled := true;
  EdtFornecedor.Enabled := False;
end;

If ComboBox1.ItemIndex = 2 then
begin
  EdtData1.Enabled := False;
  EdtData2.Enabled := False;
  EdtFornecedor.Enabled := true;
end;
end;

procedure TfrmRegContaPag.FormActivate(Sender: TObject);
begin
EdtData1.Date:=Date;
EdtData1.Date:=Date;
frmprinc.Enabled:=False;
end;

procedure TfrmRegContaPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
