unit frmRelatCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons, DBCtrls, Grids, DBGrids, Mask,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRegCliente = class(TForm)
    Label9: TLabel;
    EdtCliente: TDBLookupComboBox;
    BitBtn1: TBitBtn;
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
    QryRelatorio: TQuery;
    DtsRelatorio: TDataSource;
    EdCid: TEdit;
    Label2: TLabel;
    DSCliente: TDataSource;
    ComboBox1: TComboBox;
    Label3: TLabel;
    QryRelatoriocod_cliente: TIntegerField;
    QryRelatorionome: TStringField;
    QryRelatorioendereco: TStringField;
    QryRelatoriobairro: TStringField;
    QryRelatoriocomplemento: TStringField;
    QryRelatoriocidade: TStringField;
    QryRelatorioestado: TStringField;
    QryRelatoriocep: TStringField;
    QryRelatoriotelefone: TStringField;
    QryRelatoriocpf: TStringField;
    QryRelatoriorg: TStringField;
    QryRelatoriodevedor: TStringField;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    QRCliente: TQuickRep;
    DetailBand1: TQRBand;
    DBCodigo: TQRDBText;
    DBCliente: TQRDBText;
    DBCidade: TQRDBText;
    DBTelefone: TQRDBText;
    DBDevedor: TQRDBText;
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
    QRShape1: TQRShape;
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
  frmRegCliente: TfrmRegCliente;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmRegCliente.ComboBox1Select(Sender: TObject);
begin
if (ComboBox1.ItemIndex = 3) then
begin
  EdtCliente.Enabled := true;
  DBEdit1.Enabled := true;
end
else
begin
  DBEdit1.Enabled := false;
  EdtCliente.Enabled := false;
end;
end;

procedure TfrmRegCliente.BitBtn1Click(Sender: TObject);
var dev : string;
begin
   if ComboBox1.ItemIndex = 1 then
      dev := 'S'
   else
      dev := 'N';

   QryRelatorio.SQL.Clear;
   QryRelatorio.SQL.Add('SELECT CLI.*');
   QryRelatorio.SQL.Add('FROM TCliente CLI');
   QryRelatorio.SQL.Add('WHERE (CLI.Cod_Cliente > 0)');
   if EdCid.Text <> '' then
      QryRelatorio.SQL.Add('  AND (CLI.cidade  = :ParCidade) ');

   if ((ComboBox1.ItemIndex = 2) or (ComboBox1.ItemIndex = 1)) then
      QryRelatorio.SQL.Add('  AND (CLI.devedor like :ParDev + ''%'') ');

   if (ComboBox1.ItemIndex = 3) then
      QryRelatorio.SQL.Add('   AND (CLI.cod_cliente = :ParCli)');

   QryRelatorio.SQL.Add('ORDER BY CLI.Nome');

   if ((ComboBox1.ItemIndex = 1) or (ComboBox1.ItemIndex = 2)) then
      QryRelatorio.ParamByName('ParDev').Value := dev;

   if (ComboBox1.ItemIndex = 3) then
      QryRelatorio.ParamByName('ParCli').Value := tblclicod_cliente.Value;

   if EdCid.Text <> '' then
      QryRelatorio.ParamByName('ParCidade').Value := EdCid.Text;

   QryRelatorio.Active := True;
    QRCliente.Preview ;
end;

procedure TfrmRegCliente.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
DBEdit1.Enabled := false;
EdtCliente.Enabled := false;
end;

procedure TfrmRegCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
