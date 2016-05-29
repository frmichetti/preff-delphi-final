unit cad_cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, DB, Mask, DBCtrls, DBTables;

type
  Tfrmcli = class(TForm)
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    Label1: TLabel;
    tblcli: TTable;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dscli: TDataSource;
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
    dbcod: TDBEdit;
    dbnom: TDBEdit;
    dbend: TDBEdit;
    dbbair: TDBEdit;
    dbcomp: TDBEdit;
    dbcid: TDBEdit;
    dbcep: TDBEdit;
    dbtel: TDBEdit;
    dbcpf: TDBEdit;
    dbrg: TDBEdit;
    dbest: TDBComboBox;
    dbdev: TDBComboBox;
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
    procedure dbtelKeyPress(Sender: TObject; var Key: Char);
    procedure dbrgKeyPress(Sender: TObject; var Key: Char);
    procedure dbcpfKeyPress(Sender: TObject; var Key: Char);
    procedure dbcepKeyPress(Sender: TObject; var Key: Char);
    procedure dbnomKeyPress(Sender: TObject; var Key: Char);
    procedure dbendKeyPress(Sender: TObject; var Key: Char);
    procedure dbbairKeyPress(Sender: TObject; var Key: Char);
    procedure dbcompKeyPress(Sender: TObject; var Key: Char);
    procedure dbcidKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcli: Tfrmcli;

implementation

uses frm_princ, tccliente;

{$R *.dfm}

procedure Tfrmcli.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmcli.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
  tblcli.Last;
  vcodigo:=tblclicod_cliente.Value+1;
  tblcli.Append;
  tblclicod_cliente.Value:=vcodigo;
  tblclidevedor.Value:='Não';
  tblcliestado.Value:='SP';
  checabotoes;
  dbnom.SetFocus;
end;

procedure Tfrmcli.checabotoes;
begin
 if tblcli.State = dsBrowse then
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

procedure Tfrmcli.btneditarClick(Sender: TObject);
begin
tblcli.Edit;
checabotoes;
end;

procedure Tfrmcli.btnaceitarClick(Sender: TObject);
begin
tblcli.Post;
checabotoes;
end;

procedure Tfrmcli.btncancelarClick(Sender: TObject);
begin
tblcli.Cancel;
checabotoes;
end;

procedure Tfrmcli.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;
if tblclicod_cliente.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
tblcli.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;
checabotoes;
end;

procedure Tfrmcli.btnprimeiroClick(Sender: TObject);
begin
tblcli.First;
checabotoes;
end;

procedure Tfrmcli.btnvoltarClick(Sender: TObject);
begin
tblcli.Prior;
checabotoes;
end;

procedure Tfrmcli.btnproximoClick(Sender: TObject);
begin
tblcli.Next;
checabotoes;
end;

procedure Tfrmcli.btnultimoClick(Sender: TObject);
begin
tblcli.Last;
checabotoes;
end;

procedure Tfrmcli.btntblClick(Sender: TObject);
begin
if not Assigned (FrmTCCliente)then
 FrmTCCliente:= TFrmTCCliente.create(self);
  FrmTCCliente.show;
end;

procedure Tfrmcli.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
// frmcli.AlphaBlendValue := 255;
end;

procedure Tfrmcli.FormDeactivate(Sender: TObject);
begin
// frmcli.AlphaBlendValue := 180;
end;

procedure Tfrmcli.dbtelKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbrgKeyPress(Sender: TObject; var Key: Char);
begin
//if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbcpfKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbcepKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9','.','-',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbnomKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbendKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbbairKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbcompKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç','0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmcli.dbcidKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç',#8,#13]) then key := #0;
end;

procedure Tfrmcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
