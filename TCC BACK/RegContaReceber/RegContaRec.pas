unit RegContaRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Buttons, ComCtrls, DBCtrls, QRCtrls,
  QuickRpt, ExtCtrls;

type
  TfrmRegContaRec = class(TForm)
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtCliente: TDBLookupComboBox;
    EdtData1: TDateTimePicker;
    EdtData2: TDateTimePicker;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    tblmovrec: TTable;
    tblmovreccod_contareceber: TIntegerField;
    tblmovreccod_venda: TIntegerField;
    tblmovreccod_cliente: TIntegerField;
    tblmovrecdata_prevista: TDateTimeField;
    tblmovrecvalor_previsto: TFloatField;
    tblmovrecdata_recebida: TDateTimeField;
    tblmovrecvalor_recebido: TFloatField;
    tblcli: TTable;
    tblclicod_cliente: TIntegerField;
    tblclinome: TStringField;
    tblcliendereco: TStringField;
    tblclibairro: TStringField;
    tblclicomplemento: TStringField;
    tblclicidade: TStringField;
    tblcliestado: TStringField;
    tblclicep: TStringField;
    tblclitelefone: TStringField;
    tblclicpf: TStringField;
    tblclirg: TStringField;
    tblclidevedor: TStringField;
    DtsParcelas: TDataSource;
    QryParcelas: TQuery;
    QryParcelasNome: TStringField;
    QryParcelascod_contareceber: TIntegerField;
    QryParcelascod_venda: TIntegerField;
    QryParcelascod_cliente: TIntegerField;
    QryParcelasdata_prevista: TDateTimeField;
    QryParcelasvalor_previsto: TFloatField;
    QryParcelasdata_recebida: TDateTimeField;
    QryParcelasvalor_recebido: TFloatField;
    dscli: TDataSource;
    dsmovrec: TDataSource;
    Panel1: TPanel;
    QRContaRec: TQuickRep;
    DetailBand1: TQRBand;
    DBCodForn: TQRDBText;
    DBProduto: TQRDBText;
    DBQtdEst: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    procedure ComboBox1Select(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegContaRec: TfrmRegContaRec;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmRegContaRec.ComboBox1Select(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
  EdtData1.Enabled := true;
  EdtData2.Enabled := true;
  EdtCliente.Enabled := true;
end;

if ComboBox1.ItemIndex = 1 then
begin
  EdtData1.Enabled := true;
  EdtData2.Enabled := true;
  EdtCliente.Enabled := False;
end;

If ComboBox1.ItemIndex = 2 then
begin
  EdtData1.Enabled := False;
  EdtData2.Enabled := False;
  EdtCliente.Enabled := true;
end;

end;

procedure TfrmRegContaRec.BitBtn1Click(Sender: TObject);
begin
   QryParcelas.SQL.Clear;
   QryParcelas.SQL.Add('SELECT CLI.Nome, REC.*');
   QryParcelas.SQL.Add('FROM TContaReceber REC, TCliente CLI');
   QryParcelas.SQL.Add('WHERE (CLI.Cod_Cliente = REC.Cod_Cliente)');
   if (ComboBox1.ItemIndex = 3) then
   QryParcelas.SQL.Add('  AND (REC.Data_Recebida is not null)')
   else
   QryParcelas.SQL.Add('  AND (REC.Data_Recebida is null)');

   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
   begin
   QryParcelas.SQL.Add('  AND (REC.Data_Prevista >= :ParData1)');
   QryParcelas.SQL.Add('  AND (REC.Data_Prevista <= :ParData2)');
   end;

   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.SQL.Add('   AND (REC.Cod_cliente = :ParCli)');

   QryParcelas.SQL.Add('ORDER BY REC.Data_Prevista');
   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
   begin
   QryParcelas.ParamByName('ParData1').Value := EdtData1.Date;
   QryParcelas.ParamByName('ParData2').Value := EdtData2.Date;
   end;

     if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.ParamByName('ParCli').Value := tblclicod_cliente.Value;


   QryParcelas.Active := True;
   QRContaRec.Preview;

end;

procedure TfrmRegContaRec.FormActivate(Sender: TObject);
begin
EdtData1.Date:=Date;
EdtData2.Date:=Date;
frmprinc.Enabled:=False;
end;

procedure TfrmRegContaRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
