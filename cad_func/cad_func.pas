unit cad_func;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DB, Mask, DBCtrls, DBTables;

type
  Tfrmfunc = class(TForm)
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    Label1: TLabel;
    tblfunc: TTable;
    tblfunccod_funcionario: TIntegerField;
    tblfuncnome: TStringField;
    tblfuncendereco: TStringField;
    tblfuncbairro: TStringField;
    tblfunccomplemento: TStringField;
    tblfunccidade: TStringField;
    tblfuncestado: TStringField;
    tblfunccep: TStringField;
    tblfunctelefone: TStringField;
    tblfunccelular: TStringField;
    tblfunccpf: TStringField;
    tblfuncrg: TStringField;
    Label2: TLabel;
    dbcod: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    dbnom: TDBEdit;
    Label4: TLabel;
    dbend: TDBEdit;
    Label5: TLabel;
    dbbai: TDBEdit;
    Label6: TLabel;
    dbcom: TDBEdit;
    Label7: TLabel;
    dbcid: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbcep: TDBEdit;
    Label10: TLabel;
    dbtel: TDBEdit;
    Label11: TLabel;
    dbcel: TDBEdit;
    Label12: TLabel;
    dbcpf: TDBEdit;
    Label13: TLabel;
    dbrg: TDBEdit;
    dbest: TDBComboBox;
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
    procedure Siar1Click(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure checabotoes;
    procedure btneditarClick(Sender: TObject);
    procedure btnaceitarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btnvoltarClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btntblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dbcpfKeyPress(Sender: TObject; var Key: Char);
    procedure dbrgKeyPress(Sender: TObject; var Key: Char);
    procedure dbtelKeyPress(Sender: TObject; var Key: Char);
    procedure dbcelKeyPress(Sender: TObject; var Key: Char);
    procedure dbcepKeyPress(Sender: TObject; var Key: Char);
    procedure dbnomKeyPress(Sender: TObject; var Key: Char);
    procedure dbendKeyPress(Sender: TObject; var Key: Char);
    procedure dbbaiKeyPress(Sender: TObject; var Key: Char);
    procedure dbcidKeyPress(Sender: TObject; var Key: Char);
    procedure dbcomKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfunc: Tfrmfunc;

implementation

uses tcfunc, frm_princ;

{$R *.dfm}

procedure Tfrmfunc.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmfunc.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
  tblfunc.Last;
  vcodigo:=tblfunccod_funcionario.Value +1;
  tblfunc.Append;
  tblfunccod_funcionario.Value:=vcodigo;
  tblfuncestado.Value:='SP';
  checabotoes;
  dbnom.SetFocus;
end;

procedure Tfrmfunc.checabotoes;
begin
 if tblfunc.State = dsBrowse then
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
procedure Tfrmfunc.btneditarClick(Sender: TObject);
begin
tblfunc.Edit;
 checabotoes;
end;

procedure Tfrmfunc.btnaceitarClick(Sender: TObject);
begin
tblfunc.Post;
 checabotoes;
end;

procedure Tfrmfunc.btncancelarClick(Sender: TObject);
begin
tblfunc.Cancel;
 checabotoes;
end;

procedure Tfrmfunc.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;
if tblfunccod_funcionario.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
tblfunc.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;
 checabotoes;
end;

procedure Tfrmfunc.btnprimeiroClick(Sender: TObject);
begin
tblfunc.First;
 checabotoes;
end;

procedure Tfrmfunc.btnvoltarClick(Sender: TObject);
begin
tblfunc.Prior;
 checabotoes;
end;

procedure Tfrmfunc.btnproximoClick(Sender: TObject);
begin
tblfunc.Next;
 checabotoes;
end;

procedure Tfrmfunc.btnultimoClick(Sender: TObject);
begin
tblfunc.Last;
 checabotoes;
end;

procedure Tfrmfunc.btntblClick(Sender: TObject);
begin
if not Assigned (frmtcfunc)then
 frmtcfunc:= Tfrmtcfunc.create(self);
  frmtcfunc.show;
end;

procedure Tfrmfunc.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
//  frmfunc.AlphaBlendValue := 255;
end;

procedure Tfrmfunc.FormDeactivate(Sender: TObject);
begin
//  frmfunc.AlphaBlendValue := 180;
end;

procedure Tfrmfunc.dbcpfKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbrgKeyPress(Sender: TObject; var Key: Char);
begin
//if not(key in ['0'..'9','.','-',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbtelKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbcelKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbcepKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbnomKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbendKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç','0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbbaiKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbcidKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.dbcomKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','ç','Ç',' ','a'..'z','0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmfunc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
