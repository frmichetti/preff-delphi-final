unit cad_prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DB, Mask, DBCtrls, DBTables, Grids,
  DBGrids, ExtCtrls;

type
  Tfrmprod = class(TForm)
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    dsprod: TDataSource;
    PopupMenu1: TPopupMenu;
    pesquisa1: TMenuItem;
    sair1: TMenuItem;
    tblprod: TTable;
    tblprodcod_produto: TIntegerField;
    tblprodnome_produto: TStringField;
    tblprodcod_categoria: TIntegerField;
    tblprodpreco_venda: TFloatField;
    tblprodpreco_custo: TFloatField;
    tblprodqtd_estoque: TIntegerField;
    tblproddesconto: TFloatField;
    tblprodcod_fornecedor: TIntegerField;
    tCat: TTable;
    tCatcod_categoria: TIntegerField;
    tCatcategoria: TStringField;
    DataSource1: TDataSource;
    querycat: TQuery;
    DataSource2: TDataSource;
    MainMenu2: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    btnaddProd: TBitBtn;
    DBEdit4: TDBEdit;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbcod: TDBEdit;
    dbnom: TDBEdit;
    dbcat: TDBEdit;
    dbest: TDBEdit;
    dbdesc: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    btnnovo: TBitBtn;
    btneditar: TBitBtn;
    btnaceitar: TBitBtn;
    btncancelar: TBitBtn;
    btndelete: TBitBtn;
    btnultimo: TBitBtn;
    btnproximo: TBitBtn;
    btnvoltar: TBitBtn;
    btnprimeiro: TBitBtn;
    btntbl: TBitBtn;
    Label1: TLabel;
    Label10: TLabel;
    Button1: TBitBtn;
    tfornc: TTable;
    tfornccod_fornecedor: TIntegerField;
    tforncnome: TStringField;
    tfornccnpj: TStringField;
    tforncendereco: TStringField;
    tforncbairro: TStringField;
    tfornccomplemento: TStringField;
    tfornccidade: TStringField;
    tforncestado: TStringField;
    tfornccep: TStringField;
    tfornctelefone: TStringField;
    dsfornc: TDataSource;
    Queryfornc: TQuery;
    dsqueryfonc: TDataSource;
    pnlTFonec: TPanel;
    Label12: TLabel;
    DBGrid2: TDBGrid;
    EditPesq: TEdit;
    btnPescForn: TBitBtn;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Queryfornccod_fornecedor: TIntegerField;
    Queryforncnome: TStringField;
    Queryfornccnpj: TStringField;
    Queryforncendereco: TStringField;
    Queryforncbairro: TStringField;
    Queryfornccomplemento: TStringField;
    Queryfornccidade: TStringField;
    Queryforncestado: TStringField;
    Queryfornccep: TStringField;
    Queryfornctelefone: TStringField;
    Label16: TLabel;
    procedure Siar1Click(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure checabotoes;
    procedure btneditarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btnvoltarClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btnaceitarClick(Sender: TObject);
    procedure btntblClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnaddProdClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dbnomKeyPress(Sender: TObject; var Key: Char);
    procedure Label9Click(Sender: TObject);
    procedure btnPescFornClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmprod: Tfrmprod;

implementation

uses cad_cli, frm_princ, frmtcprod, frmtcat;

{$R *.dfm}

procedure Tfrmprod.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmprod.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
  tblprod.Last;
  vcodigo:=tblprodcod_produto.Value+1;
  tblprod.Append;
  tblprodcod_produto.Value:=vcodigo;
  checabotoes;
  dbnom.SetFocus;
end;

procedure Tfrmprod.checabotoes;
 begin
 if tblprod.State = dsBrowse then
 begin
  btnaceitar.Enabled:=false;
  btncancelar.Enabled:=false;
  btnprimeiro.Enabled:=true;
  btnvoltar.Enabled:=true;
  btnproximo.Enabled:=true;
  btnultimo.Enabled:=true;
  btnnovo.Enabled:=true;
  btndelete.Enabled:=true;
  btneditar.Enabled:=true;
 end
 else
 begin
  btnaceitar.Enabled:=true;
  btncancelar.Enabled:=true;
  btnprimeiro.Enabled:=false;
  btnvoltar.Enabled:=false;
  btnproximo.Enabled:=false;
  btnultimo.Enabled:=false;
  btnnovo.Enabled:=false;
  btndelete.Enabled:=false;
  btneditar.Enabled:=false;

 end;
 end;
procedure Tfrmprod.btneditarClick(Sender: TObject);
begin
tblprod.Edit;
checabotoes;
end;

procedure Tfrmprod.btncancelarClick(Sender: TObject);
begin
tblprod.Cancel;
checabotoes;
end;

procedure Tfrmprod.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;
if tblprodcod_produto.Value=0 then
begin
MessageDlg('O Banco de dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
tblprod.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;
checabotoes;
end;

procedure Tfrmprod.btnprimeiroClick(Sender: TObject);
begin
tblprod.First;
checabotoes;
end;

procedure Tfrmprod.btnvoltarClick(Sender: TObject);
begin
tblprod.Prior;
checabotoes;
end;

procedure Tfrmprod.btnproximoClick(Sender: TObject);
begin
tblprod.Next;
checabotoes;
end;

procedure Tfrmprod.btnultimoClick(Sender: TObject);
begin
tblprod.Last;
checabotoes;
end;

procedure Tfrmprod.btnaceitarClick(Sender: TObject);
begin
tblprod.Post;
checabotoes;
end;

procedure Tfrmprod.btntblClick(Sender: TObject);
begin
if not assigned (frmTCadProd) then
frmtcadProd := TfrmtcadProd.Create(self);
frmTCadProd.Show;
end;



procedure tfrmprod.Label4Click(Sender: TObject);
begin
   Panel1.Visible := true;

end;

procedure Tfrmprod.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
 //  frmprod.AlphaBlendValue := 255;
 if  frmprinc.mclo <> 0 then
 dbcat.setfocus;
end;

procedure Tfrmprod.btnaddProdClick(Sender: TObject);
begin
dbcat.text := DBEdit4.text ;
Panel1.Visible := false;

end;

procedure Tfrmprod.Button1Click(Sender: TObject);
begin
if (edit1.Text = '') then edit1.Text := '0';
if ComboBox1.ItemIndex = 0 then
   begin
      DBGrid1.DataSource := DataSource1;
      tcat.FindKey([strtoint(Edit1.Text)]);
   end
   else
   begin
      querycat.Active := False;
      querycat.sql.clear;
      querycat.sql.Add('select *');
      querycat.sql.Add('from TCategoria');
      if ComboBox1.ItemIndex = 1 then
           querycat.sql.Add('where categoria like :ParEdit + ''%'' ');

     querycat.ParamByName('ParEdit').Text := Edit1.Text;

      querycat.Active := True;
      DBGrid1.DataSource := DataSource2;
   end;
end;

procedure Tfrmprod.BitBtn2Click(Sender: TObject);
begin
Panel1.Visible := false;
end;

procedure Tfrmprod.FormDeactivate(Sender: TObject);
begin
// frmprod.AlphaBlendValue := 180;
end;

procedure Tfrmprod.dbnomKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç','0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmprod.Label9Click(Sender: TObject);
begin
pnlTFonec.Visible := true;
end;

procedure Tfrmprod.btnPescFornClick(Sender: TObject);
begin
if (editpesq.Text = '') then editpesq.Text := '0';
 if ComboBox1.ItemIndex = 0 then
   begin
      DBGrid1.DataSource := dsfornc;
      tfornc.FindKey([strtoint(EditPesq.Text)]);
   end
   else
   begin
      Queryfornc.Active := False;
      Queryfornc.sql.clear;
      Queryfornc.sql.Add('select *');
      Queryfornc.sql.Add('from TFornecedor');
      if ComboBox1.ItemIndex = 1 then
         Queryfornc.sql.Add('where nome like :ParEdit + ''%''') ;
      if ComboBox1.ItemIndex = 2 then
         Queryfornc.sql.Add('where cnpj like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 3 then
         Queryfornc.sql.Add('where telefone like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 4 then
         Queryfornc.sql.Add('where edereco like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 5 then
         Queryfornc.sql.Add('where estado like :ParEdit + ''%''');
 

      Queryfornc.ParamByName('ParEdit').Text := EditPesq.Text;

      Queryfornc.Active := True;
      DBGrid1.DataSource := dsqueryfonc;
   end;


end;

procedure Tfrmprod.BitBtn3Click(Sender: TObject);
begin
DBEdit3.text := DBEdit6.text;
pnlTFonec.Visible := false;
end;

procedure Tfrmprod.BitBtn1Click(Sender: TObject);
begin
pnlTFonec.Visible := false;
end;

procedure Tfrmprod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
