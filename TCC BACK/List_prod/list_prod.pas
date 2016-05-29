unit list_prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, DBTables, ExtCtrls, StdCtrls;

type
  TListagem_de_produtos = class(TForm)
    QuickRep1: TQuickRep;
    Query1: TQuery;
    Query1cod_produto: TIntegerField;
    Query1nome_produto: TStringField;
    Query1cod_categoria: TIntegerField;
    Query1preco_venda: TFloatField;
    Query1preco_custo: TFloatField;
    Query1qtd_estoque: TIntegerField;
    Query1desconto: TFloatField;
    Query1cod_fornecedor: TIntegerField;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Listagem_de_produtos: TListagem_de_produtos;

implementation

{$R *.dfm}

procedure TListagem_de_produtos.FormCreate(Sender: TObject);
begin
QuickRep1.Preview;
end;

procedure TListagem_de_produtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Close;
end;

procedure TListagem_de_produtos.Button1Click(Sender: TObject);
begin
QuickRep1.Preview;
end;

end.
