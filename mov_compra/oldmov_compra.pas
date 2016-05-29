unit mov_compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons;

type
  Tfrmcompras = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Ajuda1: TMenuItem;
    Siar1: TMenuItem;
    btnvoltar: TBitBtn;
    btnultimo: TBitBtn;
    btnproximo: TBitBtn;
    btnprimeiro: TBitBtn;
    btnnovo: TBitBtn;
    btndelete: TBitBtn;
    btnaceitar: TBitBtn;
    btncancelar: TBitBtn;
    btneditar: TBitBtn;
    procedure Siar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcompras: Tfrmcompras;

implementation

{$R *.dfm}

procedure Tfrmcompras.Siar1Click(Sender: TObject);
begin
close;
end;

end.
