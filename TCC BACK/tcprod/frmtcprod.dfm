object frmTCadProd: TfrmTCadProd
  Left = 282
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tabela de Cadastro de Produtos'
  ClientHeight = 415
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 264
    Top = 24
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 344
    Top = 24
    Width = 12
    Height = 13
    Caption = '  e'
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Pesquisar por:'
  end
  object Label4: TLabel
    Left = 144
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object EditPesq: TEdit
    Left = 144
    Top = 24
    Width = 297
    Height = 21
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 456
    Top = 16
    Width = 145
    Height = 33
    Hint = 'Procurar'
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      16080000424D1608000000000000360000002800000025000000120000000100
      180000000000E0070000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00050C001424010407FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF060606161616040404FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000D190D4F84195B92013962FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F585858
      6464643F3F3FFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000D1B094F873C8CC84897C30D70B3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF0F0F0F5858589696969C9C9C7A7A7AFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000C190C51
      893083C094C6E175BCE3014C7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0E5A5A5A8D8D8DC9C9C9
      C0C0C0535353FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0010200C4B853083C092C6E27BBFE5004778FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF1313135656568D8D8DC9C9C9C3C3C34E4E4EFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFF3B2302905A1E87521989511781461315170F0D71C026A0DC95C0
      DB7BC0E6004577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B
      1B1B4D4D4D4646464545453C3C3C1414147E7E7EA5A5A5C3C3C3C4C4C44D4D4D
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFA4703BDBA06EFFC3A4FEB293FD
      A588F69578C46C3874665873FCF56AE5FC004275FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF656565969696BFBFBFB0B0B0A5A5A59696966565
      65636363ECECECDFDFDF4A4A4AFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      AC7E4BFFDBB6FFD2B3F8C4A2F8BC9BF6B091F5A689FDA28AF08A5F9C8754007F
      8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF737373D3D3D3CD
      CDCDBFBFBFB8B8B8ADADADA5A5A5A3A3A3878787797979757575FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF462F14EDC08FFFDEBCFCD2AEFACEABF9C8A6F8
      C09FF7B998F5B191FFB496A1672F160C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF292929B5B5B5D7D7D7CBCBCBC7C7C7C2C2C2BBBBBBB5B5B5AEAE
      AEB2B2B25C5C5C090909FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFD0A06A
      FFE8C5FDE1C3FEE1C4FCDDC1FBD2AFFACCA8F9C8A5F8C3A1FAC2A3F9BB915731
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF949494DFDFDFDADADADB
      DBDBD7D7D7CBCBCBC5C5C5C2C2C2BEBEBEBEBEBEB4B4B4262626FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFD0A577FFF6E5FFF5EAFFF3E6FEF1E2FEE9D4FC
      DDBFFBD3B0FAD0ABFDD2AFF4C397522F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9B9B9BF1F1F1F2F2F2F0F0F0EDEDEDE4E4E4D7D7D7CCCCCCC9C9
      C9CBCBCBBABABA242424FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFD9AF85
      FFFCEFFFFBF7FFF7EEFEF6EAFEF3E6FEF0DFFDE5CDFCD9B4FFDBB8FED4A85832
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A6F8F8F8FAFAFAF5
      F5F5F3F3F3F0F0F0ECECECE0E0E0D1D1D1D4D4D4CBCBCB262626FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFD09F71F2D7B7FFFEF7FFFCF7FFF9F1FFF6EBFF
      F3E4FEEFDDFDE5CAFFE7C3B68A521E1100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF969696D0D0D0FCFCFCFAFAFAF7F7F7F3F3F3EFEFEFEBEBEBDFDF
      DFDEDEDE7D7D7D0D0D0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      E4BA8FFFF4DCFFFFFBFFFCFBFFFAF4FFF7EBFFF4E7FFFAE9FDE3BA6B4413FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1EDEDEDFD
      FDFDFCFCFCF8F8F8F4F4F4F1F1F1F5F5F5D9D9D9393939FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFE5BB90F2D5B1FFF7E4FFFDF6FF
      FFF7FFF8ECE2CAA4866234FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFB2B2B2CDCDCDF2F2F2FBFBFBFCFCFCF5F5F5C1C1
      C1575757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFD1A071D8AC7FD0A579C89F71BE93625A4327FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96
      9696A2A2A29C9C9C9595958888883C3C3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 24
    Width = 129
    Height = 21
    Hint = 'Selecione uma op'#231#227'o'
    AutoDropDown = True
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnSelect = ComboBox1Select
    Items.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o'
      'Cod Categoria'
      'Pre'#231'o Venda'
      'Pre'#231'o Custo'
      'Desconto'
      'Fornecedor')
  end
  object ComboBox2: TComboBox
    Left = 144
    Top = 24
    Width = 121
    Height = 21
    Hint = 'Selecione uma op'#231#227'o'
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Visible = False
    OnSelect = ComboBox2Select
    Items.Strings = (
      'Igual '#224' '
      'Menor que'
      'Maior que '
      'Entre')
  end
  object Edit1: TEdit
    Left = 272
    Top = 24
    Width = 169
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object Edit2: TEdit
    Left = 272
    Top = 24
    Width = 73
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object Edit3: TEdit
    Left = 360
    Top = 24
    Width = 81
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 72
    Width = 593
    Height = 329
    DataSource = dsprod
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_produto'
        Title.Caption = 'C'#243'digo Produtos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_produto'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_categoria'
        Title.Caption = 'C'#243'digo Categoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco_venda'
        Title.Caption = 'Pre'#231'o Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco_custo'
        Title.Caption = 'Pre'#231'o Custo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd_estoque'
        Title.Caption = 'Quantidade em Estoque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto'
        Title.Caption = 'Desconto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_fornecedor'
        Title.Caption = 'C'#243'digo Fornecedor'
        Visible = True
      end>
  end
  object tblcadprod: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TProduto'
    Left = 600
    object tblcadprodcod_produto: TIntegerField
      FieldName = 'cod_produto'
      Required = True
    end
    object tblcadprodnome_produto: TStringField
      FieldName = 'nome_produto'
      Required = True
      Size = 30
    end
    object tblcadprodcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
      Required = True
    end
    object tblcadprodpreco_venda: TFloatField
      FieldName = 'preco_venda'
      Required = True
    end
    object tblcadprodpreco_custo: TFloatField
      FieldName = 'preco_custo'
      Required = True
    end
    object tblcadprodqtd_estoque: TIntegerField
      FieldName = 'qtd_estoque'
    end
    object tblcadproddesconto: TFloatField
      FieldName = 'desconto'
    end
    object tblcadprodcod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Required = True
    end
  end
  object MainMenu1: TMainMenu
    Left = 912
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
    end
    object Siar1: TMenuItem
      Caption = 'Sair'
      OnClick = Siar1Click
    end
  end
  object dsprod: TDataSource
    DataSet = tblcadprod
    Left = 720
  end
  object queryprod: TQuery
    AutoRefresh = True
    DatabaseName = 'dbpreff'
    SQL.Strings = (
      'SELECT  *'
      'FROM  TProduto'
      '')
    Left = 824
    object queryprodcod_produto: TIntegerField
      FieldName = 'cod_produto'
      Origin = 'DBPREFF.TProduto.cod_produto'
    end
    object queryprodnome_produto: TStringField
      FieldName = 'nome_produto'
      Origin = 'DBPREFF.TProduto.nome_produto'
      Size = 30
    end
    object queryprodcod_categoria: TIntegerField
      FieldName = 'cod_categoria'
      Origin = 'DBPREFF.TProduto.cod_categoria'
    end
    object queryprodpreco_venda: TFloatField
      FieldName = 'preco_venda'
      Origin = 'DBPREFF.TProduto.preco_venda'
    end
    object queryprodpreco_custo: TFloatField
      FieldName = 'preco_custo'
      Origin = 'DBPREFF.TProduto.preco_custo'
    end
    object queryprodqtd_estoque: TIntegerField
      FieldName = 'qtd_estoque'
      Origin = 'DBPREFF.TProduto.qtd_estoque'
    end
    object queryproddesconto: TFloatField
      FieldName = 'desconto'
      Origin = 'DBPREFF.TProduto.desconto'
    end
    object queryprodcod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = 'DBPREFF.TProduto.cod_fornecedor'
    end
  end
  object DataSource2: TDataSource
    DataSet = queryprod
    Left = 720
    Top = 48
  end
end