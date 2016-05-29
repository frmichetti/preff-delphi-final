unit Sobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFrmSobre = class(TForm)
    btn1: TButton;
    PopupMenu1: TPopupMenu;
    ldkfjskjdf1: TMenuItem;
    sdsfd1: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure sdsfd1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSobre: TFrmSobre;

implementation

uses Math, frm_princ;

{$R *.dfm}

procedure TFrmSobre.btn1Click(Sender: TObject);
var x: integer;
begin
close;
frmprinc.Visible:=false;
if not assigned (FrmSobre) then
FrmSobre := TFrmSobre.create(self) ;
x := FrmSobre.Top;
FrmSobre.Top := RandomRange(0,600)  ;
FrmSobre.Left := RandomRange(0,900) ;
FrmSobre.Show;

end;

procedure TFrmSobre.sdsfd1Click(Sender: TObject);
begin
ShowMessage('teste');
end;

procedure TFrmSobre.FormActivate(Sender: TObject);
begin
frmprinc.Enabled:=False;
end;

procedure TFrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprinc.Enabled:=True;
end;

end.
