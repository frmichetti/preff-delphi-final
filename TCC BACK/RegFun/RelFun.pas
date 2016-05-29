unit RelFun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, ComCtrls, Buttons, Grids,
  DBGrids, QRCtrls, QuickRpt, ExtCtrls;

type
  TRegFun = class(TForm)
    Label9: TLabel;
    cmbFun: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    EdtData1: TDateTimePicker;
    EdtData2: TDateTimePicker;
    Label4: TLabel;
    TFuncionario: TTable;
    DSFuncionario: TDataSource;
    TFuncionariocod_funcionario: TIntegerField;
    TFuncionarionome: TStringField;
    TFuncionarioendereco: TStringField;
    TFuncionariobairro: TStringField;
    TFuncionariocomplemento: TStringField;
    TFuncionariocidade: TStringField;
    TFuncionarioestado: TStringField;
    TFuncionariocep: TStringField;
    TFuncionariotelefone: TStringField;
    TFuncionariocelular: TStringField;
    TFuncionariocpf: TStringField;
    TFuncionariorg: TStringField;
    DBEdit1: TDBEdit;
    QryFuncionario: TQuery;
    DsQruery: TDataSource;
    TVendas: TTable;
    TVendascod_venda: TIntegerField;
    TVendascod_cliente: TIntegerField;
    TVendasdata: TDateTimeField;
    TVendascod_funcionario: TIntegerField;
    TVendasmod_pag: TStringField;
    TVendasn_parc: TIntegerField;
    DSVendas: TDataSource;
    QryFuncionariocod_funcionario: TIntegerField;
    QryFuncionarionome: TStringField;
    QryFuncionariocod_venda: TIntegerField;
    QryFuncionariocod_cliente: TIntegerField;
    QryFuncionariodata: TDateTimeField;
    QryFuncionariomod_pag: TStringField;
    QryFuncionarion_parc: TIntegerField;
    Panel1: TPanel;
    QRFuncionario: TQuickRep;
    DetailBand1: TQRBand;
    DBCodForn: TQRDBText;
    DBProduto: TQRDBText;
    DBQtdEst: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    procedure ComboBox1Select(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegFun: TRegFun;

implementation

uses frm_princ;

{$R *.dfm}

procedure TRegFun.ComboBox1Select(Sender: TObject);
begin
if ComboBox1.ItemIndex = 1 then
begin
     EdtData1.Enabled := false;
     EdtData2.Enabled := False;
end
else
begin
    EdtData1.Enabled := true;
    EdtData2.Enabled := true;
end;
end;

procedure TRegFun.BitBtn1Click(Sender: TObject);
begin
   QryFuncionario.SQL.Clear;
   QryFuncionario.SQL.Add('select tfuncionario.cod_funcionario, tfuncionario.nome, TVenda.*');
   QryFuncionario.SQL.Add('from tfuncionario, tvenda');
   QryFuncionario.SQL.Add('where (tfuncionario.cod_funcionario = tvenda.cod_funcionario)');
   if (ComboBox1.ItemIndex = 0) then
   begin
   QryFuncionario.SQL.Add('  AND (tvenda.Data >= :ParData1)');
   QryFuncionario.SQL.Add('  AND (tvenda.Data <= :ParData2)');
   end;
  if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
      QryFuncionario.SQL.Add('   AND (tfuncionario.cod_funcionario = :ParFun)');

   QryFuncionario.SQL.Add('ORDER BY tfuncionario.nome');

    if ((ComboBox1.ItemIndex = 0)) then
    begin
   QryFuncionario.ParamByName('ParData1').Value := EdtData1.Date;
   QryFuncionario.ParamByName('ParData2').value := EdtData2.Date;
    end;

  if ((ComboBox1.ItemIndex = 0) or  (ComboBox1.ItemIndex = 1)) then
      QryFuncionario.ParamByName('ParFun').Value := TFuncionariocod_funcionario.Value;


   QryFuncionario.Active := True;
   QRFuncionario.Preview ;
end;

procedure TRegFun.FormActivate(Sender: TObject);
begin
EdtData1.Date:=Date;
EdtData2.Date:=Date;
frmprinc.Enabled:=False;
end;

procedure TRegFun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
