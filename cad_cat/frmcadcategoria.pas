unit frmcadcategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, DBTables, Buttons, Menus;

type
  Tfrmcadcategorias = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbcodigo: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    dbcategoria: TDBEdit;
    TCateg: TTable;
    TCategcod_categoria: TIntegerField;
    TCategcategoria: TStringField;
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
    procedure Sair1Click(Sender: TObject);
    procedure checabotoes;
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnaceitarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btnvoltarClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btntblClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbcategoriaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadcategorias: Tfrmcadcategorias;

implementation

uses frmtcat, frm_princ;

{$R *.dfm}

procedure Tfrmcadcategorias.Sair1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmcadcategorias.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
  TCateg.Last;
  vcodigo:=TCategcod_categoria.Value+1;
  TCateg.Append;
  TCategcod_categoria.Value:=vcodigo;
  checabotoes;
end;

procedure Tfrmcadcategorias.checabotoes;
begin
 if TCateg.State = dsBrowse then
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

procedure Tfrmcadcategorias.btneditarClick(Sender: TObject);
begin
TCateg.Edit;
checabotoes;
end;

procedure Tfrmcadcategorias.btnaceitarClick(Sender: TObject);
begin
TCateg.Post;
checabotoes;
end;

procedure Tfrmcadcategorias.btncancelarClick(Sender: TObject);
begin
TCateg.Cancel;
checabotoes;
end;

procedure Tfrmcadcategorias.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;
if TCategcod_categoria.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
TCateg.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;
checabotoes;
end;


procedure Tfrmcadcategorias.btnprimeiroClick(Sender: TObject);
begin
TCateg.First;
checabotoes;
end;

procedure Tfrmcadcategorias.btnvoltarClick(Sender: TObject);
begin
TCateg.Prior;
checabotoes;
end;

procedure Tfrmcadcategorias.btnproximoClick(Sender: TObject);
begin
TCateg.Next;
checabotoes;
end;

procedure Tfrmcadcategorias.btnultimoClick(Sender: TObject);
begin
TCateg.Last;
checabotoes;
end;

procedure Tfrmcadcategorias.btntblClick(Sender: TObject);
begin
  if not Assigned (FrmTCategoria)then
     FrmTCategoria:= TFrmTCategoria.create(self);


 
  FrmTCategoria.show;
end;

procedure Tfrmcadcategorias.FormDeactivate(Sender: TObject);
begin
 //  frmcadcategorias.AlphaBlendValue := 180;
end;

procedure Tfrmcadcategorias.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
 //  frmcadcategorias.AlphaBlendValue := 255;
end;

procedure Tfrmcadcategorias.dbcategoriaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in ['a'..'z','A'..'Z','Ç',#8,#13,' ','ç']) then key := #0;
end;

procedure Tfrmcadcategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
