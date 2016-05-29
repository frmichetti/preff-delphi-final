unit cad_fornec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DBCtrls, DB, Mask, DBTables;

type
  Tfrmforn = class(TForm)
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    Label1: TLabel;
    tblforn: TTable;
    tblforncod_fornecedor: TIntegerField;
    tblfornnome: TStringField;
    tblforncnpj: TStringField;
    tblfornendereco: TStringField;
    tblfornbairro: TStringField;
    tblforncomplemento: TStringField;
    tblforncidade: TStringField;
    tblfornestado: TStringField;
    tblforncep: TStringField;
    tblforntelefone: TStringField;
    Label2: TLabel;
    dbcod: TDBEdit;
    dsforn: TDataSource;
    Label3: TLabel;
    dbnom: TDBEdit;
    Label4: TLabel;
    dbcnpj: TDBEdit;
    Label5: TLabel;
    dbend: TDBEdit;
    Label6: TLabel;
    dbbai: TDBEdit;
    Label7: TLabel;
    dbcom: TDBEdit;
    Label8: TLabel;
    dbcid: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    dbcep: TDBEdit;
    Label11: TLabel;
    dbtel: TDBEdit;
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
    procedure btncancelarClick(Sender: TObject);
    procedure btnaceitarClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btnvoltarClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btntblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure dbcnpjKeyPress(Sender: TObject; var Key: Char);
    procedure dbtelKeyPress(Sender: TObject; var Key: Char);
    procedure dbcepKeyPress(Sender: TObject; var Key: Char);
    procedure dbnomKeyPress(Sender: TObject; var Key: Char);
    procedure dbendKeyPress(Sender: TObject; var Key: Char);
    procedure dbbaiKeyPress(Sender: TObject; var Key: Char);
    procedure dbcomKeyPress(Sender: TObject; var Key: Char);
    procedure dbcidKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmforn: Tfrmforn;

implementation

uses tcfoenc, frm_princ;

{$R *.dfm}

procedure Tfrmforn.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmforn.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
  tblforn.Last;
  vcodigo:=tblforncod_fornecedor.Value+1;
  tblforn.Append;
  tblforncod_fornecedor.Value:=vcodigo;
  checabotoes;
  dbnom.SetFocus;
end;

procedure Tfrmforn.checabotoes;
begin
 if tblforn.State <> dsBrowse then
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
 end
 else
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

 end;
 end;
procedure Tfrmforn.btneditarClick(Sender: TObject);
begin
tblforn.edit;
  checabotoes;
end;

procedure Tfrmforn.btncancelarClick(Sender: TObject);
begin
tblforn.cancel;
  checabotoes;
end;

procedure Tfrmforn.btnaceitarClick(Sender: TObject);
begin
tblforn.Post;
  checabotoes;
end;

procedure Tfrmforn.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;
if tblforncod_fornecedor.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
tblforn.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
end;
  checabotoes;
end;

procedure Tfrmforn.btnprimeiroClick(Sender: TObject);
begin
tblforn.First;
  checabotoes;
end;

procedure Tfrmforn.btnvoltarClick(Sender: TObject);
begin
tblforn.Prior;
  checabotoes;
end;

procedure Tfrmforn.btnproximoClick(Sender: TObject);
begin
tblforn.Next;
  checabotoes;
end;

procedure Tfrmforn.btnultimoClick(Sender: TObject);
begin
tblforn.Last;
  checabotoes;
end;

procedure Tfrmforn.FormCreate(Sender: TObject);
begin
     checabotoes;
end;

procedure Tfrmforn.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
checabotoes;
end;

procedure Tfrmforn.btntblClick(Sender: TObject);
begin
if not assigned (frmTcfornc) then
frmTcfornc := TfrmTcfornc.Create(self);
frmTcfornc.Show;
end;

procedure Tfrmforn.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
// frmforn.AlphaBlendValue := 255;
end;

procedure Tfrmforn.FormDeactivate(Sender: TObject);
begin
 //frmforn.AlphaBlendValue := 180;
end;

procedure Tfrmforn.dbcnpjKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmforn.dbtelKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmforn.dbcepKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmforn.dbnomKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç','a'..'z','ç',#8,#13,' ']) then key := #0;
end;

procedure Tfrmforn.dbendKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç','0'..'9',#8,#13,',','.']) then key := #0;
end;

procedure Tfrmforn.dbbaiKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç','a'..'z','ç',#8,#13,' ']) then key := #0;
end;

procedure Tfrmforn.dbcomKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç','0'..'9',#8,#13]) then key := #0;
end;

procedure Tfrmforn.dbcidKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['A'..'Z','Ç',' ','a'..'z','ç',#8,#13]) then key := #0;
end;

procedure Tfrmforn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
