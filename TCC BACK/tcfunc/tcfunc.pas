unit tcfunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Menus, StdCtrls, Buttons, Grids, DBGrids;

type
  Tfrmtcfunc = class(TForm)
    DBGrid1: TDBGrid;
    EditPesq: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    Tfun: TTable;
    Tfuncod_funcionario: TIntegerField;
    Tfunnome: TStringField;
    Tfunendereco: TStringField;
    Tfunbairro: TStringField;
    Tfuncomplemento: TStringField;
    Tfuncidade: TStringField;
    Tfunestado: TStringField;
    Tfuncep: TStringField;
    Tfuntelefone: TStringField;
    Tfuncelular: TStringField;
    Tfuncpf: TStringField;
    Tfunrg: TStringField;
    dsfun: TDataSource;
    Queryfun: TQuery;
    dsqueryfun: TDataSource;
    Label2: TLabel;
    Label1: TLabel;
    procedure Siar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtcfunc: Tfrmtcfunc;

implementation

uses frm_princ;

{$R *.dfm}

procedure Tfrmtcfunc.Siar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmtcfunc.BitBtn1Click(Sender: TObject);
begin
if (editpesq.Text = '') then editpesq.Text := '0';
 if ComboBox1.ItemIndex = 0 then
   begin
      DBGrid1.DataSource := dsfun;
      Tfun.FindKey([strtoint(EditPesq.Text)]);
   end
   else
   begin
      Queryfun.Active := False;
      Queryfun.sql.clear;
      Queryfun.sql.Add('select *');
      Queryfun.sql.Add('from TFuncionario');
      if ComboBox1.ItemIndex = 1 then
        Queryfun.sql.Add('where nome like :ParEdit + ''%''') ;
      if ComboBox1.ItemIndex = 2 then
         Queryfun.sql.Add('where telefone like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 3 then
         Queryfun.sql.Add('where celular like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 4 then
         Queryfun.sql.Add('where endereco like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 5 then
        Queryfun.sql.Add('where rg like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 6 then
         Queryfun.sql.Add('where cpf like :ParEdit + ''%''');
      if ComboBox1.ItemIndex = 7 then
         Queryfun.sql.Add('where cep like :ParEdit + ''%''');
      
      Queryfun.ParamByName('ParEdit').Text := EditPesq.Text;

      Queryfun.Active := True;
      DBGrid1.DataSource := dsqueryfun;
   end;
end;

procedure Tfrmtcfunc.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure Tfrmtcfunc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
