program FarmaciaProj;

uses
  Forms,
  frm_princ in 'frm_princ.pas' {frmprinc},
  cad_prod in '..\cad_prod\cad_prod.pas' {frmprod},
  cad_func in '..\cad_func\cad_func.pas' {frmfunc},
  cad_fornec in '..\cad_fornec\cad_fornec.pas' {frmforn},
  mov_venda in '..\mov_venda\mov_venda.pas' {frmvenda},
  mov_compra in '..\mov_compra\mov_compra.pas' {frmcompras},
  mov_contaspagar in '..\mov_contaspagar\mov_contaspagar.pas' {frmcontaspagar},
  mov_contasreceber in '..\mov_contasreceber\mov_contasreceber.pas' {frmcontasreceber},
  cad_cli in '..\cad_cli\cad_cli.pas' {frmcli},
  tccliente in '..\tccliente\tccliente.pas' {FrmTCCliente},
  frmtcprod in '..\tcprod\frmtcprod.pas' {frmTCadProd},
  frmcadcategoria in '..\cad_cat\frmcadcategoria.pas' {frmcadcategorias},
  frmtcat in '..\tccategoria\frmtcat.pas' {FrmTCategoria},
  list_cli in '..\list_cli\list_cli.pas' {frmlistCli},
  tcfunc in '..\tcfunc\tcfunc.pas' {frmtcfunc},
  tcfoenc in '..\tcfornc\tcfoenc.pas' {frmTcfornc},
  Sobre in '..\FrmSobre\Sobre.pas' {FrmSobre},
  frmRelatCliente in '..\RegCliente\frmRelatCliente.pas' {frmRegCliente},
  RelFun in '..\RegFun\RelFun.pas' {RegFun},
  RegPreco in '..\RegPreco\RegPreco.pas' {frmRegPreco},
  RegEstoque in '..\RegEstoque\RegEstoque.pas' {frmRegEstoque},
  RegContaRec in '..\RegContaReceber\RegContaRec.pas' {frmRegContaRec},
  RegContaPagar in '..\RegContaPag\RegContaPagar.pas' {frmRegContaPag},
  frmRegVendas in '..\RegVendas\frmRegVendas.pas' {frmRegVenda},
  frmRegCompras in '..\RegCompra\frmRegCompras.pas' {frmRegCompra};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'PREFF';
  Application.CreateForm(Tfrmprinc, frmprinc);
  Application.Run;
end.
