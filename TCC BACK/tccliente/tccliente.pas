unit tccliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, Buttons, DBCtrls, Menus;

type
  TFrmTCCliente = class(TForm)
    tblcadcli: TTable;
    tblcadclicod_cliente: TIntegerField;
    tblcadclinome: TStringField;
    tblcadcliendereco: TStringField;
    tblcadclibairro: TStringField;
    tblcadclicomplemento: TStringField;
    tblcadclicidade: TStringField;
    tblcadcliestado: TStringField;
    tblcadclicep: TStringField;
    tblcadclitelefone: TStringField;
    tblcadclicpf: TStringField;
    tblcadclirg: TStringField;
    tblcadclidevedor: TStringField;
    dscadcli: TDataSource;
    DBGrid1: TDBGrid;
    EditPesq: TEdit;
    BitBtn1: TBitBtn;
    querycli: TQuery;
    DataSource2: TDataSource;
    queryclicod_cliente: TIntegerField;
    queryclinome: TStringField;
    querycliendereco: TStringField;
    queryclibairro: TStringField;
    queryclicomplemento: TStringField;
    queryclicidade: TStringField;
    querycliestado: TStringField;
    queryclicep: TStringField;
    queryclitelefone: TStringField;
    queryclicpf: TStringField;
    queryclirg: TStringField;
    queryclidevedor: TStringField;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    Label2: TLabel;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Siar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTCCliente:  TFrmTCCliente;

implementation

uses frm_princ;

{$R *.dfm}

procedure TFrmTCCliente.BitBtn1Click(Sender: TObject);
begin
if (editpesq.Text = '') then editpesq.Text := '0';
   if ComboBox1.ItemIndex = 0 then
   begin
      DBGrid1.DataSource := dscadcli;
      tblcadcli.FindKey([strtoint(EditPesq.Text)]);
   end
   else
   begin
      querycli.Active := False;
      querycli.sql.clear;
      querycli.sql.Add('select *');
      querycli.sql.Add('from TCliente');
      if ComboBox1.ItemIndex = 1 then
         querycli.sql.Add('where nome like :ParEdit + ''%''') ;
      if ComboBox1.ItemIndex = 2 then
         querycli.sql.Add('where telefone like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 3 then
         querycli.sql.Add('where edereco like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 4 then
         querycli.sql.Add('where rg like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 5 then
         querycli.sql.Add('where cpf like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 6 then
         querycli.sql.Add('where cep like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 7 then
         querycli.sql.Add('where devedor like :ParEdit + ''%''');
      
      querycli.ParamByName('ParEdit').Text := EditPesq.Text;

      querycli.Active := True;
      DBGrid1.DataSource := DataSource2;
   end;

end;

procedure TFrmTCCliente.Siar1Click(Sender: TObject);
begin
close;
end;

procedure TFrmTCCliente.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure TFrmTCCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
