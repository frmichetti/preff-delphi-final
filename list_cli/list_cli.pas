unit list_cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls;

type
  TfrmlistCli = class(TForm)
    BitBtn1: TBitBtn;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    Query2: TQuery;
    Query1cod_produto: TIntegerField;
    Query1nome_produto: TStringField;
    Query1cod_categoria: TIntegerField;
    Query1preco_venda: TFloatField;
    Query1preco_custo: TFloatField;
    Query1qtd_estoque: TIntegerField;
    Query1desconto: TFloatField;
    Query1cod_fornecedor: TIntegerField;
    Query3: TQuery;
    Query2cod_cliente: TIntegerField;
    Query2nome: TStringField;
    Query2endereco: TStringField;
    Query2bairro: TStringField;
    Query2complemento: TStringField;
    Query2cidade: TStringField;
    Query2estado: TStringField;
    Query2cep: TStringField;
    Query2telefone: TStringField;
    Query2cpf: TStringField;
    Query2rg: TStringField;
    Query2devedor: TStringField;
    DataSource1: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlistCli: TfrmlistCli;

implementation

uses frm_princ;

{$R *.dfm}

procedure TfrmlistCli.BitBtn1Click(Sender: TObject);
begin
QuickRep2.Preview;
end;

procedure TfrmlistCli.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure TfrmlistCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
