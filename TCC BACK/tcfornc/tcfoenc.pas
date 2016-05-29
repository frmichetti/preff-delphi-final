unit tcfoenc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Menus, StdCtrls, Buttons, Grids, DBGrids;

type
  TfrmTcfornc = class(TForm)
    Label2: TLabel;
    DBGrid1: TDBGrid;
    EditPesq: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
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
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTcfornc: TfrmTcfornc;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmTcfornc.BitBtn1Click(Sender: TObject);
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

procedure TfrmTcfornc.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure TfrmTcfornc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
