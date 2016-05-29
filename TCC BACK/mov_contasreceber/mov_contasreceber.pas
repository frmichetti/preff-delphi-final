unit mov_contasreceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, DBCtrls, DB, Mask, DBTables, Grids,
  DBGrids, ComCtrls;

type
  Tfrmcontasreceber = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    btneditar: TBitBtn;
    tblmovrec: TTable;
    tblmovreccod_contareceber: TIntegerField;
    tblmovreccod_venda: TIntegerField;
    tblmovreccod_cliente: TIntegerField;
    tblmovrecdata_prevista: TDateTimeField;
    tblmovrecvalor_previsto: TFloatField;
    tblmovrecdata_recebida: TDateTimeField;
    tblmovrecvalor_recebido: TFloatField;
    dsmovrec: TDataSource;
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
    dscli: TDataSource;
    EdtCliente: TDBLookupComboBox;
    btncancelar: TBitBtn;
    btnaceitar: TBitBtn;
    Label9: TLabel;
    EdtData1: TDateTimePicker;
    EdtData2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    QryParcelas: TQuery;
    DtsParcelas: TDataSource;
    QryParcelasNome: TStringField;
    QryParcelascod_contareceber: TIntegerField;
    QryParcelascod_venda: TIntegerField;
    QryParcelascod_cliente: TIntegerField;
    QryParcelasdata_prevista: TDateTimeField;
    QryParcelasvalor_previsto: TFloatField;
    QryParcelasdata_recebida: TDateTimeField;
    QryParcelasvalor_recebido: TFloatField;
    ComboBox1: TComboBox;
    Label4: TLabel;
    btndelete: TBitBtn;
    procedure Siar1Click(Sender: TObject);
    procedure btnvoltarClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btnprimeiroClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnaceitarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure checabotoes;
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
  frmcontasreceber: Tfrmcontasreceber;

implementation

uses frm_princ;

{$R *.dfm}

procedure Tfrmcontasreceber.Siar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmcontasreceber.btnvoltarClick(Sender: TObject);
begin
tblmovrec.Prior;
end;

procedure Tfrmcontasreceber.btnproximoClick(Sender: TObject);
begin
tblmovrec.Next;
end;

procedure Tfrmcontasreceber.btnultimoClick(Sender: TObject);
begin
tblmovrec.Last;
end;

procedure Tfrmcontasreceber.btnprimeiroClick(Sender: TObject);
begin
tblmovrec.First;
end;

procedure Tfrmcontasreceber.btndeleteClick(Sender: TObject);
var resp:integer;
begin
resp:=0;

if tblmovreccod_contareceber.Value=0 then
begin
MessageDlg('O Banco de Dados está vazio',mtWarning,[mbok],0);
end
else
resp:=Application.MessageBox('Você deseja realmente excluir este registro?','xxx',308);
if resp = 6 then
begin
tblmovrec.Delete;
MessageDlg('Registro Excluido',mtInformation,[mbok],0);
checabotoes;
end;
end;


procedure Tfrmcontasreceber.btneditarClick(Sender: TObject);
begin
 tblmovrec.Edit;
 checabotoes;
end;

procedure Tfrmcontasreceber.btnaceitarClick(Sender: TObject);
begin
tblmovrec.Post;
checabotoes;
end;

procedure Tfrmcontasreceber.btncancelarClick(Sender: TObject);
begin
tblmovrec.Cancel;
checabotoes;
end;

procedure Tfrmcontasreceber.btnnovoClick(Sender: TObject);
var vcodigo:integer;
begin
      tblmovrec.Last;
      vcodigo:=tblmovreccod_contareceber.Value+1;
      tblmovrec.Append;
      tblmovreccod_contareceber.Value:=vcodigo;
      checabotoes;
end;

procedure Tfrmcontasreceber.checabotoes;
begin
 if tblmovrec.State = dsBrowse then
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

procedure Tfrmcontasreceber.BitBtn1Click(Sender: TObject);
begin
   QryParcelas.SQL.Clear;
   QryParcelas.SQL.Add('SELECT CLI.Nome, REC.*');
   QryParcelas.SQL.Add('FROM TContaReceber REC, TCliente CLI');
   QryParcelas.SQL.Add('WHERE (CLI.Cod_Cliente = REC.Cod_Cliente)');
   QryParcelas.SQL.Add('  AND (REC.Data_Recebida is null)');
   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
   begin
   QryParcelas.SQL.Add('  AND (REC.Data_Prevista >= :ParData1)');
   QryParcelas.SQL.Add('  AND (REC.Data_Prevista <= :ParData2)');
   end;

   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.SQL.Add('   AND (REC.Cod_cliente = :ParCli)');

   QryParcelas.SQL.Add('ORDER BY REC.Data_Prevista');
   if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
   begin
   QryParcelas.ParamByName('ParData1').Value := EdtData1.Date;
   QryParcelas.ParamByName('ParData2').Value := EdtData2.Date;
   end;

     if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 2)) then
      QryParcelas.ParamByName('ParCli').Value := tblclicod_cliente.Value;


   QryParcelas.Active := True;
end;

procedure Tfrmcontasreceber.ComboBox1Select(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
  EdtData1.Enabled := true;
  EdtData2.Enabled := true;
  EdtCliente.Enabled := true;
end;

if ComboBox1.ItemIndex = 1 then
begin
  EdtData1.Enabled := true;
  EdtData2.Enabled := true;
  EdtCliente.Enabled := False;
end;

If ComboBox1.ItemIndex = 2 then
begin
  EdtData1.Enabled := False;
  EdtData2.Enabled := False;
  EdtCliente.Enabled := true;
end;
end;

procedure Tfrmcontasreceber.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
EdtData1.Enabled := false;
EdtData1.Date:=Date;
  EdtData2.Enabled := false;
  EdtData2.Date:=Date;
  EdtCliente.Enabled := false;
end;

procedure Tfrmcontasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
