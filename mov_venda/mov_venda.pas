unit mov_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DB, DBTables, ExtCtrls, Grids,
  DBGrids, ComCtrls, DBCtrls, Mask, Spin;

type
  Tfrmvenda = class(TForm)
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    btnnovo: TBitBtn;
    btnaceitar: TBitBtn;
    btncancelar: TBitBtn;
    btntbl: TBitBtn;
    TblVenda: TTable;
    DtsVenda: TDataSource;
    TblVendacod_venda: TIntegerField;
    TblVendacod_cliente: TIntegerField;
    TblVendadata: TDateTimeField;
    TblVendacod_funcionario: TIntegerField;
    TblVendamod_pag: TStringField;
    TblVendan_parc: TIntegerField;
    Label2: TLabel;
    DBcodvenda: TDBEdit;
    Label3: TLabel;
    DBcodcliente: TDBEdit;
    Label4: TLabel;
    DBdatavenda: TDBEdit;
    Label5: TLabel;
    DBcodfun: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    PageControl1: TPageControl;
    TabProdutos: TTabSheet;
    TabParcelas: TTabSheet;
    DtsAVenda: TDataSource;
    TblAVenda: TTable;
    DtsParcelas: TDataSource;
    TblParcelas: TTable;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    PnlProdutos: TPanel;
    PnlParcelas: TPanel;
    btnIncluir: TBitBtn;
    btnalterar: TBitBtn;
    btnexcluir: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    TblCliente: TTable;
    DtsCliente: TDataSource;
    TblClientecod_cliente: TIntegerField;
    TblClientenome: TStringField;
    TblClienteendereco: TStringField;
    TblClientebairro: TStringField;
    TblClientecomplemento: TStringField;
    TblClientecidade: TStringField;
    TblClienteestado: TStringField;
    TblClientecep: TStringField;
    TblClientetelefone: TStringField;
    TblClientecpf: TStringField;
    TblClienterg: TStringField;
    TblClientedevedor: TStringField;
    DtsFuncionario: TDataSource;
    TblFuncionario: TTable;
    TblFuncionariocod_funcionario: TIntegerField;
    TblFuncionarionome: TStringField;
    TblFuncionarioendereco: TStringField;
    TblFuncionariobairro: TStringField;
    TblFuncionariocomplemento: TStringField;
    TblFuncionariocidade: TStringField;
    TblFuncionarioestado: TStringField;
    TblFuncionariocep: TStringField;
    TblFuncionariotelefone: TStringField;
    TblFuncionariocelular: TStringField;
    TblFuncionariocpf: TStringField;
    TblFuncionariorg: TStringField;
    Label7: TLabel;
    DBcodprod: TDBEdit;
    Label8: TLabel;
    DBqtd: TDBEdit;
    Label10: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    TblProduto: TTable;
    DtsProduto: TDataSource;
    TblProdutocod_produto: TIntegerField;
    TblProdutonome_produto: TStringField;
    TblProdutocod_categoria: TIntegerField;
    TblProdutopreco_venda: TFloatField;
    TblProdutopreco_custo: TFloatField;
    TblProdutoqtd_estoque: TIntegerField;
    TblProdutodesconto: TFloatField;
    TblProdutocod_fornecedor: TIntegerField;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    TblParcelascod_contareceber: TIntegerField;
    TblParcelascod_venda: TIntegerField;
    TblParcelascod_cliente: TIntegerField;
    TblParcelasdata_prevista: TDateTimeField;
    TblParcelasvalor_previsto: TFloatField;
    TblParcelasdata_recebida: TDateTimeField;
    TblParcelasvalor_recebido: TFloatField;
    Label11: TLabel;
    DBcodconta: TDBEdit;
    Label14: TLabel;
    DBdataprev: TDBEdit;
    Label15: TLabel;
    DBvprev: TDBEdit;
    Label16: TLabel;
    DBdatapag: TDBEdit;
    Label17: TLabel;
    DBvalpag: TDBEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Edtotal: TEdit;
    Edrece: TEdit;
    Edtroco: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBComboBox1: TDBComboBox;
    DBvaluni: TDBEdit;
    QryDevedor: TQuery;
    QryMax: TQuery;
    QryMaxULTIMO: TIntegerField;
    Label12: TLabel;
    EditValPag: TEdit;
    BitBtn11: TBitBtn;
    SpnParcelas: TSpinEdit;
    Label1: TLabel;
    TblAVendavalor_total: TFloatField;
    TblAVendacod_venda: TIntegerField;
    TblAVendacod_produto: TIntegerField;
    TblAVendaqtdade: TIntegerField;
    TblAVendavalor_unit: TFloatField;
    TblAVendaitem: TIntegerField;
    procedure Siar1Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnaceitarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure checabotoes;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBLookupComboBox3CloseUp(Sender: TObject);
    procedure total;
    procedure TblAVendaCalcFields(DataSet: TDataSet);
    procedure EdreceExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpnParcelasExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LimpaCampos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda: Tfrmvenda;

implementation

uses frm_princ;

{$R *.dfm}

procedure Tfrmvenda.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmvenda.btnIncluirClick(Sender: TObject);
var vcodigo: integer;
begin
   PnlProdutos.Visible := True;
   if TblVenda.State <> dsBrowse then
      TblVenda.Post;
   TblVenda.Last;
   vcodigo:=TblAVendaitem.Value+1;
   TblAVenda.Append;
   TblAVendaitem.Value:=vcodigo;
   TblAVendacod_venda.Value := TblVendacod_venda.Value;
   btnIncluir.Enabled := False;
   btnalterar.Enabled := false;
   btnexcluir.Enabled := false;
   
end;

procedure Tfrmvenda.BitBtn7Click(Sender: TObject);
begin
  TblAVenda.Post;
  PnlProdutos.Visible := false;
  total;
  btnIncluir.Enabled := true;
  btnalterar.Enabled := True;
end;

procedure Tfrmvenda.BitBtn8Click(Sender: TObject);
begin
  TblAVenda.Cancel;
  PnlProdutos.Visible := false;
  btnIncluir.Enabled := true;
  btnalterar.Enabled := true;
  btnexcluir.Enabled := true;

end;

procedure Tfrmvenda.btnalterarClick(Sender: TObject);
begin
   PnlProdutos.Visible := True;
   TblAVenda.Edit;
   btnIncluir.Enabled := false;
   btnalterar.Enabled := false;
   

end;

procedure Tfrmvenda.btnexcluirClick(Sender: TObject);
var resp:integer;
begin

resp:=0;
if TblAVendacod_produto.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
TblAVenda.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
 end;
end;

procedure Tfrmvenda.BitBtn6Click(Sender: TObject);
var vcodigo:integer;
begin

  PnlParcelas.Visible := True;

  if TblVenda.State <> dsBrowse then
     TblVenda.Post;

  QryMax.Active := False;
  QryMax.Active := True;
  vcodigo := QryMaxULTIMO.Value + 1;

  showmessage(QryMaxULTIMO.AsString);

  QryMax.Active := False;

  TblParcelas.Append;
  TblParcelascod_contareceber.Value := vcodigo;
  TblParcelascod_venda.Value := TblVendacod_venda.Value;
  TblParcelascod_cliente.Value := TblVendacod_cliente.Value;
end;

procedure Tfrmvenda.BitBtn9Click(Sender: TObject);
begin

TblParcelas.Post;
PnlParcelas.Visible := false;
end;

procedure Tfrmvenda.BitBtn10Click(Sender: TObject);
begin
TblParcelas.Cancel;
  PnlParcelas.Visible := false;
end;

procedure Tfrmvenda.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
  TblVenda.Last;
  vcodigo:=TblVendacod_venda.Value+1;
  TblVenda.Append;
  TblVendacod_venda.Value:=vcodigo;
  checabotoes;
  TblVendadata.Value := Date;
end;

procedure Tfrmvenda.btneditarClick(Sender: TObject);
begin
TblVenda.Edit;
checabotoes
end;

procedure Tfrmvenda.btnaceitarClick(Sender: TObject);
begin
checabotoes;
LimpaCampos;
end;

procedure Tfrmvenda.btncancelarClick(Sender: TObject);
begin

if TblVendacod_venda.Value <> strtoint(DBcodvenda.Text) then
TblVenda.Cancel
else
begin
    while (TblVendacod_venda.Value = TblAVendacod_venda.Value) do
    begin
    TblAVenda.Delete;
    end;
    while (TblVendacod_venda.Value = TblParcelascod_venda.Value) do
    begin
    TblParcelas.Delete;
    end;
    TblVenda.Delete;
end;
checabotoes;
LimpaCampos;
end;

procedure Tfrmvenda.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;
if TblVendacod_venda.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
TblVenda.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;
TblVenda.Delete;
checabotoes
end;

procedure Tfrmvenda.checabotoes;
begin
 if TblVenda.State = dsBrowse then
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


procedure Tfrmvenda.BitBtn5Click(Sender: TObject);
begin
TblParcelas.edit;
PnlParcelas.Visible := true;
EditValPag.Text := floattostr(StrToFloat(Edtotal.Text) / SpnParcelas.Value);
end;

procedure Tfrmvenda.BitBtn4Click(Sender: TObject);
var resp:integer;
begin
resp:=0;
if TblParcelascod_contareceber.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
TblParcelas.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;

end;

procedure Tfrmvenda.DBLookupComboBox3CloseUp(Sender: TObject);
begin
    TblAVendavalor_unit.Value := TblProdutopreco_venda.value;

end;

procedure Tfrmvenda.total;
var dtotal:real;
begin
  dtotal := 0;
   TblAVenda.First;
   while not TblAVenda.Eof do
   begin
      dtotal := dtotal + TblAVendavalor_total.Value;
      TblAVenda.Next;
   end;
   Edtotal.Text := floattostr(dtotal);
end;

procedure Tfrmvenda.TblAVendaCalcFields(DataSet: TDataSet);
begin
  TblAVendavalor_total.value := TblAVendavalor_unit.value * TblAVendaqtdade.Value;
end;

procedure Tfrmvenda.EdreceExit(Sender: TObject);
var t, r: real;
begin
    r := strtofloat(Edrece.text);
    t := strtofloat(EditValPag.Text);
    Edtroco.Text := floattostr(r - t);

end;

procedure Tfrmvenda.FormActivate(Sender: TObject);
begin
    frmprinc.Enabled:=False;
    TblVenda.Active := True;
    TblAVenda.Active := True;
    TblCliente.Active := True;
    TblParcelas.Active := True;
    TblFuncionario.Active := True;
    TblProduto.Active := True;
    LimpaCampos;
    Edtotal.Text := '0';


end;

procedure Tfrmvenda.DBLookupComboBox1Exit(Sender: TObject);
begin
  { checa parcelas atrasadas.
  tblclientedevedor.Value := 'N';
  qryDevedor.Active := False;
  QryDevedor.ParamByName('ParCli').Value := TblVendacod_cliente.Value;
  QryDevedor.Active := True;
  if QryDevedor.RecordCount > 0 then
  begin
     showmessage('Amigo.. Tu és devedor. Verifique suas pendências.');
     tblclientedevedor.Value := 'S';
  end;}

end;

procedure Tfrmvenda.BitBtn11Click(Sender: TObject);
var x, vcodigo, y:integer;
    Mes : TDate;
    Valor : Real;
begin
  if TblVenda.State <> dsBrowse then
     TblVenda.Post;

  Mes := Date;
  Valor := StrToFloat(Edtotal.Text) / strtofloat(SpnParcelas.Text);
  QryMax.Active := False;
  QryMax.Active := True;
  vcodigo := QryMaxULTIMO.Value;
  QryMax.Active := False;
  y := 1;
  for x := 1 to SpnParcelas.value do
  begin
      TblParcelas.Append;
      vcodigo := vcodigo + 1;
      TblParcelascod_contareceber.Value := vcodigo;
      TblParcelascod_venda.Value := TblVendacod_venda.Value;
      TblParcelascod_cliente.Value := TblVendacod_cliente.Value;
      TblParcelasvalor_previsto.Value := Valor;
      if x > 1 then

      Mes := IncMonth(Mes,y) ;

      TblParcelasdata_prevista.Value := Mes;


  end;
  y := y + 1;
  EditValPag.Text := formatfloat('###,###,##0.00', Valor);
end;

procedure Tfrmvenda.SpnParcelasExit(Sender: TObject);
begin
   if TblVenda.State = dsBrowse then
      TblVenda.Edit;

    TblVendan_parc.Value := SpnParcelas.Value;
end;

procedure Tfrmvenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

procedure Tfrmvenda.LimpaCampos;
begin
DBcodvenda.Text := '';
DBcodcliente.Text := '';
DBcodfun.Text := '';
Edtotal.Text := '';
Edrece.Text := '';
EditValPag.Text := '';
Edtroco.Text := '';
SpnParcelas.Text := '1';
end;

end.
