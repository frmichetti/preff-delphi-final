unit frm_princ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, DB, DBTables, ComCtrls, Buttons, StdCtrls,
  XPMan;  //, SysUtils;

type
  Tfrmprinc = class(TForm)
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    Movimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    Venda1: TMenuItem;
    Venda2: TMenuItem;
    Estoque1: TMenuItem;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedor1: TMenuItem;
    Funcionario1: TMenuItem;
    Compras1: TMenuItem;
    Contasapagar1: TMenuItem;
    Contasareceber1: TMenuItem;
    Compras2: TMenuItem;
    Contaspagar1: TMenuItem;
    Contasreceber1: TMenuItem;
    Clientes2: TMenuItem;
    Vendasporfuncionrio1: TMenuItem;
    Listadepreo1: TMenuItem;
    Database1: TDatabase;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    imglogo: TImage;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Categoria1: TMenuItem;
    XPManifest1: TXPManifest;
    Consultas1: TMenuItem;
    Categoria2: TMenuItem;
    Cliente1: TMenuItem;
    Produto1: TMenuItem;
    Forn1: TMenuItem;
    Funcionario2: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    function  chamarforms(nomedoform: TForm;classedoform: TFormClass): TForm;
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure Contasapagar1Click(Sender: TObject);
    procedure Contasareceber1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure Categoria2Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Forn1Click(Sender: TObject);
    procedure Funcionario2Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Vendasporfuncionrio1Click(Sender: TObject);
    procedure Listadepreo1Click(Sender: TObject);
    procedure Contaspagar1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Contasreceber1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Venda2Click(Sender: TObject);
    procedure Compras2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mcod : Integer;
    mclo : integer;
  end;

var
  frmprinc: Tfrmprinc;

implementation

uses cad_cli, cad_prod, cad_fornec, cad_func, mov_compra, mov_contaspagar,
  mov_contasreceber, mov_venda, frmcadcategoria,
  frmtcat, tccliente, frmtcprod, tcfoenc, tcfunc, Sobre, Math,
  frmRelatCliente, RelFun,  RegEstoque, RegContaPagar,
  RegContaRec, frmRegVendas, frmRegCompras;

{$R *.dfm}

procedure Tfrmprinc.Sair1Click(Sender: TObject);
begin
Close;
end;



procedure Tfrmprinc.Clientes1Click(Sender: TObject);
begin
  chamarforms(frmcli,Tfrmcli);
 { if not Assigned (frmcli)then
  frmcli:= Tfrmcli.create(self);
  frmcli.show; }

end;

procedure Tfrmprinc.Produtos1Click(Sender: TObject);
begin
  chamarforms(frmprod,Tfrmprod);
  {if not Assigned (frmprod)then
  frmprod:= Tfrmprod.create(self);
  frmprod.show;}
end;

procedure Tfrmprinc.Fornecedor1Click(Sender: TObject);
begin
  chamarforms(frmforn,Tfrmforn);
{if not Assigned (frmforn)then
  frmforn:= Tfrmforn.create(self);
  frmforn.show;}
end;

procedure Tfrmprinc.Funcionario1Click(Sender: TObject);
begin
  chamarforms(frmfunc,Tfrmfunc);
{if not Assigned (frmfunc)then
  frmfunc:= Tfrmfunc.create(self);
  frmfunc.show;}
end;

procedure Tfrmprinc.Venda1Click(Sender: TObject);
begin
chamarforms(frmvenda,Tfrmvenda);
 {if not Assigned (frmvenda)then
  frmvenda:= Tfrmvenda.create(self);
  frmvenda.show;}
end;

procedure Tfrmprinc.Compras1Click(Sender: TObject);
begin
chamarforms(frmcompras,Tfrmcompras);
{if not Assigned (frmcompras)then
  frmcompras:= Tfrmcompras.create(self);
  frmcompras.show;}
end;

procedure Tfrmprinc.Contasapagar1Click(Sender: TObject);
begin
chamarforms(frmcontaspagar,Tfrmcontaspagar);
{if not Assigned (frmcontaspagar)then
  frmcontaspagar:= Tfrmcontaspagar.create(self);
  frmcontaspagar.show;}
end;

procedure Tfrmprinc.Contasareceber1Click(Sender: TObject);
begin
chamarforms(frmcontasreceber,Tfrmcontasreceber);
{if not Assigned (frmcontasreceber)then
  frmcontasreceber:= Tfrmcontasreceber.create(self);
  frmcontasreceber.show;}
end;

procedure Tfrmprinc.Categoria1Click(Sender: TObject);
begin
 chamarforms(frmcadcategorias,Tfrmcadcategorias);
 {if not Assigned (frmcadcategorias)then
  frmcadcategorias:= Tfrmcadcategorias.create(self);
  frmcadcategorias.show;}
end;

function Tfrmprinc.chamarforms(nomedoform: TForm;
  classedoform: TFormClass): TForm;
begin
Screen.Cursor:=crHourGlass;
nomedoform:=classedoform.Create(nil);
nomedoform.Show;
//FreeAndNil(nomedoform);
Screen.Cursor:=crDefault;
end;

procedure Tfrmprinc.SpeedButton10Click(Sender: TObject);
begin
  chamarforms(frmcli,Tfrmcli);
 { if not Assigned (frmcli)then
  frmcli:= Tfrmcli.create(self);
  frmcli.show; }
end;

procedure Tfrmprinc.SpeedButton9Click(Sender: TObject);
begin
chamarforms(frmvenda,Tfrmvenda);
 {if not Assigned (frmvenda)then
  frmvenda:= Tfrmvenda.create(self);
  frmvenda.show;}
end;

procedure Tfrmprinc.FormActivate(Sender: TObject);
begin

// frmprinc.AlphaBlendValue := 255;
end;

procedure Tfrmprinc.FormDeactivate(Sender: TObject);
begin
// frmprinc.AlphaBlendValue := 180;
end;

procedure Tfrmprinc.Categoria2Click(Sender: TObject);
begin
if not assigned (FrmTCategoria) then
FrmTCategoria := TFrmTCategoria.create(self) ;
FrmTCategoria.Show;
end;

procedure Tfrmprinc.Cliente1Click(Sender: TObject);
begin
if not assigned (FrmTCCliente) then
FrmTCCliente := TFrmTCCliente.create(self) ;
FrmTCCliente.Show;
end;

procedure Tfrmprinc.Produto1Click(Sender: TObject);
begin
if not assigned (frmTCadProd) then
frmTCadProd := TfrmTCadProd.create(self) ;
frmTCadProd.Show;
end;

procedure Tfrmprinc.Forn1Click(Sender: TObject);
begin
if not assigned (frmTcfornc) then
frmTcfornc := TfrmTcfornc.create(self) ;
frmTcfornc.Show;
end;

procedure Tfrmprinc.Funcionario2Click(Sender: TObject);
begin
if not assigned (frmtcfunc) then
frmtcfunc := Tfrmtcfunc.create(self) ;
frmtcfunc.Show;
end;

procedure Tfrmprinc.Sobre1Click(Sender: TObject);
begin
if not assigned (FrmSobre) then
FrmSobre := TFrmSobre.create(self) ;
FrmSobre.Show;
end;

procedure Tfrmprinc.Estoque1Click(Sender: TObject);
begin
If not assigned (frmRegEstoque) then
frmRegEstoque := TfrmRegEstoque.create(self);
frmRegEstoque.show;
end;

procedure Tfrmprinc.Clientes2Click(Sender: TObject);
begin
If not assigned (frmRegCliente) then
frmRegCliente:=TfrmRegCliente.create(self);
frmRegCliente.show;
end;

procedure Tfrmprinc.FormCreate(Sender: TObject);
begin
frmprinc.Enabled:=True;
SpeedButton1.Caption:='RELATÓRIO' +chr (13) + 'VENDA';
SpeedButton2.Caption:='RELATÓRIO' +chr (13) + 'ESTOQUE';
SpeedButton3.Caption:='RELATÓRIO' +chr (13) + 'COMPRAS';
SpeedButton4.Caption:='RELATÓRIO'+chr(13)+'CONTAS A PAGAR';
SpeedButton5.Caption:='RELATÓRIO' +chr (13) + 'CONTAS A RECEBER';
SpeedButton6.Caption:='RELATÓRIO'+chr(13)+'CLIENTES';
SpeedButton7.Caption:='RELATÓRIO'+chr(13)+'VENDAS POR'+chr(13)+'FUNCIONÁRIO';
SpeedButton8.Caption:='RELATÓRIO'+chr(13)+'LISTAS DE PREÇOS';
SpeedButton9.Caption:='NOVA'+chr(13)+'VENDA';
SpeedButton10.Caption:='CADASTRO'+chr(13)+'DE CLIENTES';
end;

procedure Tfrmprinc.Vendasporfuncionrio1Click(Sender: TObject);
begin
If not assigned (RegFun) then
RegFun:=TRegFun.create(self);
RegFun.show;
end;

procedure Tfrmprinc.Listadepreo1Click(Sender: TObject);
begin
If not assigned (frmRegPreco) then
frmRegPreco:=TfrmRegPreco.create(self);
frmRegPreco.show;
end;

procedure Tfrmprinc.Contaspagar1Click(Sender: TObject);
begin
If not assigned (frmRegContaPag) then
frmRegContaPag:=TfrmRegContaPag.create(self);
frmRegContaPag.show;
end;

procedure Tfrmprinc.SpeedButton2Click(Sender: TObject);
begin
If not assigned (frmRegEstoque) then
frmRegEstoque := TfrmRegEstoque.create(self);
frmRegEstoque.show;
end;

procedure Tfrmprinc.SpeedButton4Click(Sender: TObject);
begin
If not assigned (frmRegContaPag) then
frmRegContaPag:=TfrmRegContaPag.create(self);
frmRegContaPag.show;
end;

procedure Tfrmprinc.SpeedButton6Click(Sender: TObject);
begin
If not assigned (frmRegCliente) then
frmRegCliente:=TfrmRegCliente.create(self);
frmRegCliente.show;
end;

procedure Tfrmprinc.SpeedButton7Click(Sender: TObject);
begin
If not assigned (RegFun) then
RegFun:=TRegFun.create(self);
RegFun.show;
end;

procedure Tfrmprinc.SpeedButton8Click(Sender: TObject);
begin
If not assigned (frmRegPreco) then
frmRegPreco:=TfrmRegPreco.create(self);
frmRegPreco.show;
end;

procedure Tfrmprinc.Contasreceber1Click(Sender: TObject);
begin
If not assigned (frmRegContaRec) then
frmRegContaRec:=TfrmRegContaRec.create(self);
frmRegContaRec.show;

end;

procedure Tfrmprinc.FormShow(Sender: TObject);
begin
frmprinc.Enabled:=True;
end;

procedure Tfrmprinc.FormResize(Sender: TObject);
begin
frmprinc.Enabled:=True;

end;

procedure Tfrmprinc.Venda2Click(Sender: TObject);
begin
If not assigned (frmRegVenda) then
frmRegVenda:=TfrmRegVenda.create(self);
frmRegVenda.show;

end;

procedure Tfrmprinc.Compras2Click(Sender: TObject);
begin
If not assigned (frmRegCompra) then
frmRegCompra:=TfrmRegCompra.create(self);
frmRegCompra.show;
end;

procedure Tfrmprinc.SpeedButton1Click(Sender: TObject);
begin
If not assigned (frmRegVenda) then
frmRegVenda:=TfrmRegVenda.create(self);
frmRegVenda.show;

end;

procedure Tfrmprinc.SpeedButton3Click(Sender: TObject);
begin
If not assigned (frmRegCompra) then
frmRegCompra:=TfrmRegCompra.create(self);
frmRegCompra.show;
end;

procedure Tfrmprinc.SpeedButton5Click(Sender: TObject);
begin
If not assigned (frmRegContaRec) then
frmRegContaRec:=TfrmRegContaRec.create(self);
frmRegContaRec.show;
end;

procedure Tfrmprinc.Ajuda1Click(Sender: TObject);
begin
WinExec('Preff_Help.chm',sw_shownormal);
end;

end.
