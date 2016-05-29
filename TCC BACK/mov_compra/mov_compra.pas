unit mov_compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DBCtrls, Mask, DB, DBTables, ComCtrls,
  Grids, DBGrids, ExtCtrls;

type
  Tfrmcompras = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    btncancelar: TBitBtn;
    btnaceitar: TBitBtn;
    btnnovo: TBitBtn;
    Tcompras: TTable;
    Tacompra: TTable;
    Dscompra: TDataSource;
    Dsacompra: TDataSource;
    Tcomprascod_compra: TIntegerField;
    Tcomprascod_fornecedor: TIntegerField;
    Tcomprasdata: TDateTimeField;
    Label2: TLabel;
    DBcodcompra: TDBEdit;
    Label3: TLabel;
    DBEditcodfor: TDBEdit;
    Label4: TLabel;
    DBData: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Tfornecedor: TTable;
    Dsfornecedor: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Tproduto: TTable;
    Dsproduto: TDataSource;
    Tprodutocod_produto: TIntegerField;
    Tprodutonome_produto: TStringField;
    Tprodutocod_categoria: TIntegerField;
    Tprodutopreco_venda: TFloatField;
    Tprodutopreco_custo: TFloatField;
    Tprodutoqtd_estoque: TIntegerField;
    Tprodutodesconto: TFloatField;
    Tprodutocod_fornecedor: TIntegerField;
    DBGrid1: TDBGrid;
    pnlProd: TPanel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    btnincluir: TBitBtn;
    btnalterar: TBitBtn;
    btnexculir: TBitBtn;
    Tcontapagar: TTable;
    DBGrid2: TDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    pnlConta: TPanel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    dscontapagar: TDataSource;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Edtotal: TEdit;
    Label13: TLabel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Tfornecedorcod_fornecedor: TIntegerField;
    Tfornecedornome: TStringField;
    Tfornecedorcnpj: TStringField;
    Tfornecedorendereco: TStringField;
    Tfornecedorbairro: TStringField;
    Tfornecedorcomplemento: TStringField;
    Tfornecedorcidade: TStringField;
    Tfornecedorestado: TStringField;
    Tfornecedorcep: TStringField;
    Tfornecedortelefone: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    Label14: TLabel;
    Tacompracod_compra: TIntegerField;
    Tacompracod_produto: TIntegerField;
    Tacompraqtdade: TIntegerField;
    Tacompravalor_unit: TFloatField;
    Tacompraitem: TIntegerField;
    Tacompravalor_total: TFloatField;
    queryfornc: TQuery;
    dscodfornc: TDataSource;
    queryfornccod_produto: TIntegerField;
    queryforncnome_produto: TStringField;
    queryfornccod_categoria: TIntegerField;
    queryforncpreco_venda: TFloatField;
    queryforncpreco_custo: TFloatField;
    queryforncqtd_estoque: TIntegerField;
    queryforncdesconto: TFloatField;
    queryfornccod_fornecedor: TIntegerField;
    Tcontapagarcod_contapagar: TIntegerField;
    Tcontapagarcod_compra: TIntegerField;
    Tcontapagardata_prevista: TDateTimeField;
    Tcontapagarvalor_previsto: TFloatField;
    Tcontapagardata_paga: TDateTimeField;
    Tcontapagarvalor_pago: TFloatField;
    Label15: TLabel;
    edtParcelas: TEdit;
    Label16: TLabel;
    editValParc: TEdit;
    procedure Siar1Click(Sender: TObject);
    procedure TacompraCalcFields(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure total;
    procedure btnincluirClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnaceitarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnexculirClick(Sender: TObject);
    procedure checabotoes;
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure edtParcelasExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcompras: Tfrmcompras;

implementation

uses frm_princ;

{$R *.dfm}

procedure Tfrmcompras.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmcompras.TacompraCalcFields(DataSet: TDataSet);
begin
  Tacompravalor_total.Value := Tacompravalor_unit.value * Tacompraqtdade.Value;
end;

procedure Tfrmcompras.BitBtn7Click(Sender: TObject);
begin
  Tacompra.Post;
  pnlProd.Visible := false;
  total;
  btnIncluir.Enabled := true;
   btnalterar.Enabled := true;
   btnexculir.Enabled := true;


end;

procedure Tfrmcompras.total;
var dtotal:real;
begin
  dtotal := 0;
   Tacompra.First;
   while not Tacompra.Eof do
   begin
      dtotal := dtotal + Tacompravalor_total.Value;
      Tacompra.Next;
   end;
   Edtotal.Text := floattostr(dtotal);
end;

procedure Tfrmcompras.btnincluirClick(Sender: TObject);
var vcodigo : integer;
begin
pnlProd.Visible := true;
if Tcompras.State <> dsBrowse then
      tcompras.Post;
         Tacompra.Last;
   vcodigo:=Tacompraitem.Value+1;
   Tacompra.Append;
   Tacompraitem.Value:=vcodigo;
   Tacompracod_compra.Value := Tcomprascod_compra.Value;
   btnIncluir.Enabled := False;
   btnalterar.Enabled := false;
   btnexculir.Enabled := false;

end;

procedure Tfrmcompras.BitBtn9Click(Sender: TObject);
begin
Tcontapagar.Post;
pnlConta.Visible := false;
BitBtn5.Enabled := true;
   BitBtn6.Enabled := true;
   BitBtn4.Enabled := true;

end;

procedure Tfrmcompras.BitBtn5Click(Sender: TObject);
var vcodigo:integer;
begin
pnlConta.Visible := true;
Tcontapagar.MasterSource := nil;
Tcontapagar.MasterFields := '';
Tcontapagar.Last;
vcodigo := Tcontapagarcod_contapagar.Value +1;
Tcontapagar.MasterSource := DsCompra;
Tcontapagar.MasterFields := 'cod_compra';
 if Tcompras.State <> dsBrowse then
      Tcompras.Post;

  Tcontapagar.Append;
 Tcontapagarcod_contapagar.Value:=vcodigo;
 Tcontapagarcod_compra.Value := Tcomprascod_compra.Value;
 Tcontapagarvalor_previsto.Value := strtofloat(Edtotal.Text);
 Tcontapagardata_prevista.Value := Date;
 Tcontapagarvalor_previsto.Value := strtofloat(editValParc.Text);
 BitBtn5.Enabled := false;
   BitBtn6.Enabled := false;
   BitBtn4.Enabled := false;

end;

procedure Tfrmcompras.BitBtn8Click(Sender: TObject);
begin
Tacompra.cancel;
pnlProd.Visible := false;
btnIncluir.Enabled := true;
   btnalterar.Enabled := true;
   btnexculir.Enabled := true;


end;

procedure Tfrmcompras.btnalterarClick(Sender: TObject);
begin
pnlProd.Visible := True;
   Tacompra.Edit;
   btnIncluir.Enabled := False;
   btnalterar.Enabled := False;
   btnexculir.Enabled := False;

end;

procedure Tfrmcompras.BitBtn4Click(Sender: TObject);
begin
pnlConta.Visible := True;
   Tcontapagar.Edit;
   BitBtn5.Enabled := false;
   BitBtn6.Enabled := false;
   BitBtn4.Enabled := false;
end;

procedure Tfrmcompras.BitBtn6Click(Sender: TObject);
var resp:integer;
begin
resp:=0;
if Tcontapagarcod_contapagar.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
Tcontapagar.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;

end;

procedure Tfrmcompras.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
   Tcompras.Last;
   vcodigo:=Tcomprascod_compra.Value+1;
   Tcompras.Append;
   Tcomprascod_compra.Value:=vcodigo;
   Tcomprasdata.Value := Date;
   checabotoes;
end;

procedure Tfrmcompras.btneditarClick(Sender: TObject);
begin
Tcompras.Edit;
checabotoes;
end;

procedure Tfrmcompras.btnaceitarClick(Sender: TObject);
begin
checabotoes;
end;

procedure Tfrmcompras.btncancelarClick(Sender: TObject);
begin
if Tacompracod_compra.Value <> strtoint(DBcodcompra.Text) then
Tcompras.Cancel
else
begin
    while (Tcomprascod_compra.Value = Tacompracod_compra.Value) do
    begin
    Tacompra.Delete;
    end;
    while (Tcontapagarcod_compra.Value = Tcomprascod_compra.Value) do
    begin
    Tcontapagar.Delete;
    end;
    Tcompras.Delete;
end;
checabotoes;
end;

procedure Tfrmcompras.btndeleteClick(Sender: TObject);
begin
Tcompras.Delete;
checabotoes;
end;

procedure Tfrmcompras.btnexculirClick(Sender: TObject);
var resp:integer;
begin
resp:=0;
if Tacompracod_compra.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
Tacompra.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;
end;

procedure Tfrmcompras.checabotoes;
begin
if Tcompras.State = dsBrowse then
 begin
  btnaceitar.Enabled:=false;
  btncancelar.Enabled:=false;
  btnnovo.Enabled:=true;

 end
 else
 begin
  btnaceitar.Enabled:=true;
  btncancelar.Enabled:=true;
  btnnovo.Enabled:=false;

 end;
end;

procedure Tfrmcompras.DBLookupComboBox3CloseUp(Sender: TObject);
begin
Tacompravalor_unit.Value := queryforncpreco_custo.value;
end;

procedure Tfrmcompras.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
Tcompras.Active := True;
Tacompra.Active := True;
Tfornecedor.Active := True;
Tproduto.Active := True;
Tcontapagar.Active := True;
editValParc.Text := '0';

end;

procedure Tfrmcompras.DBLookupComboBox1Exit(Sender: TObject);
begin
      queryfornc.Active := False;
      queryfornc.sql.clear;
      queryfornc.sql.Add('select TProduto.*');
      queryfornc.sql.Add('from TFornecedor, TProduto');
      queryfornc.sql.Add('where TProduto.cod_fornecedor = TFornecedor.cod_fornecedor');
      queryfornc.sql.Add('and TFornecedor.cod_fornecedor = :ParEditCod');

      queryfornc.ParamByName('ParEditCod').Text := DBEditcodfor.Text;
      queryfornc.Active := true;

end;

procedure Tfrmcompras.BitBtn10Click(Sender: TObject);
begin
pnlConta.Visible := false;
BitBtn5.Enabled := true;
   BitBtn6.Enabled := true;
   BitBtn4.Enabled := true;
end;

procedure Tfrmcompras.edtParcelasExit(Sender: TObject);
begin
editValParc.Text := floattostr((strtofloat(Edtotal.Text))/(strtofloat(edtParcelas.Text)));
end;

procedure Tfrmcompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
