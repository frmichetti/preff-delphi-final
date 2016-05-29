unit frmtcat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Grids, DBGrids, Buttons, Menus, Mask,
  DBCtrls;

type
  TFrmTCategoria = class(TForm)
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    tCat: TTable;
    tCatcod_categoria: TIntegerField;
    tCatcategoria: TStringField;
    DataSource1: TDataSource;
    querycat: TQuery;
    DataSource2: TDataSource;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    Button1: TBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Siar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
   x: integer;

  end;

var
  FrmTCategoria: TFrmTCategoria ;

implementation

uses cad_prod, frmcadcategoria, frm_princ, frmtcprod;

{$R *.dfm}

procedure TFrmTCategoria.Button1Click(Sender: TObject);
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

procedure TFrmTCategoria.BitBtn1Click(Sender: TObject);
begin
     frmprinc.Mcod := tCatcod_categoria.Value ;
     frmprinc.mclo := 1;
     close;

   
end;

procedure TFrmTCategoria.Siar1Click(Sender: TObject);
begin
   close;
end;

procedure TFrmTCategoria.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure TFrmTCategoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
