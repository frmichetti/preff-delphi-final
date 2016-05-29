unit frmtcprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, Buttons, Grids, DBGrids;

type
  TfrmTCadProd = class(TForm)
    EditPesq: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    tblcadprod: TTable;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    dsprod: TDataSource;
    queryprod: TQuery;
    DataSource2: TDataSource;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    queryprodcod_produto: TIntegerField;
    queryprodnome_produto: TStringField;
    queryprodcod_categoria: TIntegerField;
    queryprodpreco_venda: TFloatField;
    queryprodpreco_custo: TFloatField;
    queryprodqtd_estoque: TIntegerField;
    queryproddesconto: TFloatField;
    queryprodcod_fornecedor: TIntegerField;
    tblcadprodcod_produto: TIntegerField;
    tblcadprodnome_produto: TStringField;
    tblcadprodcod_categoria: TIntegerField;
    tblcadprodpreco_venda: TFloatField;
    tblcadprodpreco_custo: TFloatField;
    tblcadprodqtd_estoque: TIntegerField;
    tblcadproddesconto: TFloatField;
    tblcadprodcod_fornecedor: TIntegerField;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Siar1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTCadProd: TfrmTCadProd;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmTCadProd.BitBtn1Click(Sender: TObject);
var q,w,e: real;
begin
if (editpesq.Text = '') then editpesq.Text := '0';
if (edit1.Text = '') then edit1.Text := '0';
if (edit2.Text = '') then edit2.Text := '0';
if (edit3.Text = '') then edit3.Text := '0';

 if ComboBox1.ItemIndex = 0 then
   begin
      DBGrid1.DataSource := dsprod;
      tblcadprod.FindKey([strtoint(EditPesq.Text)]);
   end
   else
   begin
      queryprod.Active := False;
      queryprod.sql.clear;
      queryprod.sql.Add('select *');
      queryprod.sql.Add('from TProduto');
      if ComboBox1.ItemIndex = 1 then
      begin
         queryprod.sql.Add('where nome_produto like :ParEdit + ''%''') ;
         queryprod.ParamByName('ParEdit').Text := EditPesq.Text;
         end;
      if ComboBox1.ItemIndex = 2 then
      begin
         queryprod.sql.Add('where cod_categoria like :ParEdit + ''%''');
         queryprod.ParamByName('ParEdit').Text := EditPesq.Text;
         end;
     if ComboBox1.ItemIndex = 3 then
      begin
        if ComboBox2.ItemIndex = 0 then
        begin
       queryprod.sql.Add('where preco_venda = :ParEdit1');
       queryprod.ParamByName('ParEdit1').Text := Edit1.Text;
       end;
         if ComboBox2.ItemIndex = 1 then
         begin
         queryprod.sql.Add('where preco_venda < :ParEdit1');
         queryprod.ParamByName('ParEdit1').Text := Edit1.Text;
         end;
         if ComboBox2.ItemIndex = 2 then
         begin
         queryprod.sql.Add('where preco_venda > :ParEdit1');
         queryprod.ParamByName('ParEdit1').Text := Edit1.Text;
         end;
         if ComboBox2.ItemIndex = 3 then
         begin
         queryprod.sql.Add('where preco_venda between :ParEdit2 and :ParEdit3');
         queryprod.ParamByName('ParEdit2').Text := Edit2.Text;
      queryprod.ParamByName('ParEdit3').Text := Edit3.Text;
      end;
      end;
      if ComboBox1.ItemIndex = 4 then
      begin
        if ComboBox2.ItemIndex = 0 then
        begin
       queryprod.sql.Add('where preco_custo = :ParEdit1');
       queryprod.ParamByName('ParEdit1').Text := Edit1.Text;
       end;
         if ComboBox2.ItemIndex = 1 then
         begin
         queryprod.sql.Add('where preco_custo < :ParEdit1');
         queryprod.ParamByName('ParEdit1').Text := Edit1.Text;
         end;
         if ComboBox2.ItemIndex = 2 then
         begin
         queryprod.sql.Add('where preco_custo > :ParEdit1');
         queryprod.ParamByName('ParEdit1').Text := Edit1.Text;
         end;
         if ComboBox2.ItemIndex = 3 then
         begin
         queryprod.sql.Add('where preco_custo between :ParEdit2 and :ParEdit3');
         queryprod.ParamByName('ParEdit2').Text := Edit2.Text;
          queryprod.ParamByName('ParEdit3').Text := Edit3.Text;
         end;
      end;
      if ComboBox1.ItemIndex = 5 then
      begin
      queryprod.sql.Add('where desconto like :ParEdit + ''%''');
      queryprod.ParamByName('ParEdit').Text := EditPesq.Text;
      end;
       if ComboBox1.ItemIndex = 6 then
      begin
      queryprod.sql.Add('where cod_fornecedor like :ParEdit + ''%''');
      queryprod.ParamByName('ParEdit').Text := EditPesq.Text;
      end;


      queryprod.Active := True;
      DBGrid1.DataSource := DataSource2;
   end;

end;

procedure TfrmTCadProd.Siar1Click(Sender: TObject);
begin
close;
end;

procedure TfrmTCadProd.ComboBox1Select(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
EditPesq.Visible := true;
ComboBox2.Visible := false;
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := false;
end;
if ComboBox1.ItemIndex = 1 then
begin
EditPesq.Visible := true;
ComboBox2.Visible := false;
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := false;
end;
if ComboBox1.ItemIndex = 2 then
begin
EditPesq.Visible := true;
ComboBox2.Visible := false;
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := false;
end;
if ComboBox1.ItemIndex = 3 then
      begin
         EditPesq.Visible := false;
         ComboBox2.Visible := true;
         edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := false;
      end;
if ComboBox1.ItemIndex = 4 then
      begin
         EditPesq.Visible := false;
         ComboBox2.Visible := true;
         edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := false;
      end;
if ComboBox1.ItemIndex = 5 then
begin
EditPesq.Visible := true;
ComboBox2.Visible := false;
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := false;
end;
if ComboBox1.ItemIndex = 6 then
begin
EditPesq.Visible := true;
ComboBox2.Visible := false;
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := false;

end;
end;

procedure TfrmTCadProd.ComboBox2Select(Sender: TObject);
begin
if ComboBox2.ItemIndex = 0 then
begin
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := true;
end;
if ComboBox2.ItemIndex = 1 then
begin
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := true;
end;
if ComboBox2.ItemIndex = 2 then
begin
edit2.visible := false;
edit3.Visible := false;
label3.Visible:= false;
edit1.Visible := true;
end;
if ComboBox2.ItemIndex = 3 then
begin
edit1.Visible := false;
edit2.visible := true;
edit3.Visible := true;
label3.Visible:= true;

end;

end;

procedure TfrmTCadProd.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure TfrmTCadProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
