unit mov_contaspagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  ComCtrls, DBCtrls, XPMan;

type
  Tfrmcontaspagar = class(TForm)
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    Label1: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtFornecedor: TDBLookupComboBox;
    EdtData1: TDateTimePicker;
    EdtData2: TDateTimePicker;
    DBGrid: TDBGrid;
    BitBtn1: TBitBtn;
    MainMenu2: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    QryParcelas: TQuery;
    DtsParcelas: TDataSource;
    TFornecedor: TTable;
    DSFornecedor: TDataSource;
    TCPagar: TTable;
    DSCPagar: TDataSource;
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
    TCPagarcod_contapagar: TIntegerField;
    TCPagarcod_compra: TIntegerField;
    TCPagardata_prevista: TDateTimeField;
    TCPagarvalor_previsto: TFloatField;
    TCPagardata_paga: TDateTimeField;
    TCPagarvalor_pago: TFloatField;
    TCompra: TTable;
    DSCompra: TDataSource;
    QryParcelascod_contapagar: TIntegerField;
    QryParcelascod_compra: TIntegerField;
    QryParcelasdata_prevista: TDateTimeField;
    QryParcelasvalor_previsto: TFloatField;
    QryParcelasdata_paga: TDateTimeField;
    QryParcelasvalor_pago: TFloatField;
    QryParcelasData: TDateTimeField;
    QryParcelasNome: TStringField;
    btneditar: TBitBtn;
    btncancelar: TBitBtn;
    btnaceitar: TBitBtn;
    ComboBox1: TComboBox;
    btndelete: TBitBtn;
    Label4: TLabel;
    procedure Siar1Click(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure checabotoes;
    procedure btnaceitarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
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
  frmcontaspagar: Tfrmcontaspagar;

implementation

uses frm_princ;

{$R *.dfm}

procedure Tfrmcontaspagar.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmcontaspagar.btneditarClick(Sender: TObject);
begin
 TCPagar.Edit;
 checabotoes;
end;


procedure Tfrmcontaspagar.checabotoes;
begin
 if TCPagar.State = dsBrowse then
 begin
  btnaceitar.Enabled:=false;
  btncancelar.Enabled:=false;
  btndelete.Enabled:=true;
  btneditar.Enabled:=true;
 end
 else
 begin
  btnaceitar.Enabled:=true;
  btncancelar.Enabled:=true;
  btndelete.Enabled:=false;
  btneditar.Enabled:=false;

 end;
end;

procedure Tfrmcontaspagar.btnaceitarClick(Sender: TObject);
begin
 tcpagar.post;
 checabotoes;
end;

procedure Tfrmcontaspagar.btncancelarClick(Sender: TObject);
begin
TCPagar.Cancel;
checabotoes;
end;

procedure Tfrmcontaspagar.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;

if TCPagarcod_contapagar.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
TCPagar.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
checabotoes;
end;
end;
procedure Tfrmcontaspagar.BitBtn1Click(Sender: TObject);
begin
   QryParcelas.SQL.Clear;
   QryParcelas.SQL.Add('SELECT FORN.Nome, PGAR.*,COM.Data');
   QryParcelas.SQL.Add('FROM TContaPagar PGAR, TFornecedor FORN,TCompra COM');
   QryParcelas.SQL.Add('WHERE (FORN.cod_fornecedor = COM.cod_fornecedor)');
   QryParcelas.SQL.Add('  AND (COM.Cod_compra = PGAR.Cod_compra)');
   QryParcelas.SQL.Add('  AND (PGAR.Data_Paga is null)');
   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
    begin
//   QryParcelas.SQL.Add('  AND (PGAR.Data_Prevista >= :ParData1)');
//   QryParcelas.SQL.Add('  AND (PGAR.Data_Prevista <= :ParData2)');
   QryParcelas.SQL.Add('  AND (PGAR.Data_Prevista >= ' + DateToStr(EdtData1.Date) + ')');
   QryParcelas.SQL.Add('  AND (PGAR.Data_Prevista >= ' + DateToStr(EdtData2.Date) + ')');
    end;
  if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.SQL.Add('   AND (FORN.cod_fornecedor = :ParFor)');

   QryParcelas.SQL.Add('ORDER BY PGAR.Data_Prevista');
    if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
     begin
//   QryParcelas.ParamByName('ParData1').Value := EdtData1.Date;
//   QryParcelas.ParamByName('ParData2').value := EdtData2.Date;
      end;

  if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.ParamByName('ParFor').Value := TFornecedorcod_fornecedor.Value;


   QryParcelas.Active := True;
end;


procedure Tfrmcontaspagar.ComboBox1Select(Sender: TObject);
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

procedure Tfrmcontaspagar.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
  EdtData1.Enabled := False;
  EdtData1.Date:=Date;
  EdtData2.Enabled := False;
  EdtData2.Date:=Date;
  EdtFornecedor.Enabled := False;

end;

procedure Tfrmcontaspagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
