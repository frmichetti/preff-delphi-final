object frmRegVenda: TfrmRegVenda
  Left = 561
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatorio de Vendas'
  ClientHeight = 187
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 96
    Height = 15
    Caption = 'Procurar por:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Footlight MT Light'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 160
    Top = 120
    Width = 23
    Height = 15
    Caption = 'At'#233
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Footlight MT Light'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 38
    Height = 15
    Caption = 'Data:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Footlight MT Light'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 136
    Top = 80
    Width = 8
    Height = 13
    Caption = 'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 8
    Width = 165
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'Data'
    OnSelect = ComboBox1Select
    Items.Strings = (
      'Data'
      'Cliente sem Data'
      'Cliente '
      'Valor'
      'Produto')
  end
  object EdtData1: TDateTimePicker
    Left = 56
    Top = 112
    Width = 97
    Height = 21
    Date = 39549.922843263890000000
    Time = 39549.922843263890000000
    TabOrder = 1
  end
  object EdtData2: TDateTimePicker
    Left = 184
    Top = 112
    Width = 89
    Height = 21
    Date = 39549.923005115740000000
    Time = 39549.923005115740000000
    TabOrder = 2
  end
  object edtfix: TEdit
    Left = 16
    Top = 72
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object edtinicio: TEdit
    Left = 16
    Top = 72
    Width = 113
    Height = 21
    TabOrder = 4
  end
  object edtfim: TEdit
    Left = 152
    Top = 72
    Width = 113
    Height = 21
    TabOrder = 5
  end
  object ComboBox2: TComboBox
    Left = 104
    Top = 40
    Width = 165
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'Igual '
    OnSelect = ComboBox2Select
    Items.Strings = (
      'Igual '
      'Maior ou Igual'
      'Menor ou Igual'
      'Entre')
  end
  object BitBtn1: TBitBtn
    Left = 75
    Top = 144
    Width = 129
    Height = 33
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
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
  object Panel1: TPanel
    Left = 40
    Top = 208
    Width = 457
    Height = 289
    Caption = 'Panel1'
    TabOrder = 8
    Visible = False
  end
  object DSQuery: TDataSource
    DataSet = QryRelatorio
    Left = 519
    Top = 8
  end
  object TVenda: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TVenda'
    Left = 368
    Top = 8
    object TVendacod_venda: TIntegerField
      FieldName = 'cod_venda'
      Required = True
    end
    object TVendacod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Required = True
    end
    object TVendadata: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object TVendacod_funcionario: TIntegerField
      FieldName = 'cod_funcionario'
      Required = True
    end
    object TVendamod_pag: TStringField
      FieldName = 'mod_pag'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TVendan_parc: TIntegerField
      FieldName = 'n_parc'
      Required = True
    end
  end
  object TAVenda: TTable
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TAVenda'
    Left = 417
    Top = 57
    object TAVendacod_venda: TIntegerField
      FieldName = 'cod_venda'
      Required = True
    end
    object TAVendacod_produto: TIntegerField
      FieldName = 'cod_produto'
      Required = True
    end
    object TAVendaqtdade: TIntegerField
      FieldName = 'qtdade'
      Required = True
    end
    object TAVendavalor_unit: TFloatField
      FieldName = 'valor_unit'
      Required = True
    end
    object TAVendaitem: TIntegerField
      FieldName = 'item'
      Required = True
    end
  end
  object DSVanda: TDataSource
    DataSet = TVenda
    Left = 469
    Top = 59
  end
  object DSAVenda: TDataSource
    DataSet = TAVenda
    Left = 369
    Top = 58
  end
  object DSRec: TDataSource
    DataSet = TCRec
    Left = 419
    Top = 9
  end
  object TCRec: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TContaReceber'
    Left = 472
    Top = 8
    object TCReccod_contareceber: TIntegerField
      FieldName = 'cod_contareceber'
      Required = True
    end
    object TCReccod_venda: TIntegerField
      FieldName = 'cod_venda'
      Required = True
    end
    object TCReccod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Required = True
    end
    object TCRecdata_prevista: TDateTimeField
      FieldName = 'data_prevista'
      Required = True
    end
    object TCRecvalor_previsto: TFloatField
      FieldName = 'valor_previsto'
      Required = True
    end
    object TCRecdata_recebida: TDateTimeField
      FieldName = 'data_recebida'
    end
    object TCRecvalor_recebido: TFloatField
      FieldName = 'valor_recebido'
    end
  end
  object TCliente: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TCliente'
    Left = 312
    Top = 61
  end
  object DSCliente: TDataSource
    DataSet = TCliente
    Left = 317
    Top = 7
  end
  object TProduto: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TProduto'
    Left = 520
    Top = 60
    object TProdutocod_produto: TIntegerField
      FieldName = 'cod_produto'
      Required = True
    end
    object TProdutonome_produto: TStringField
      FieldName = 'nome_produto'
      Required = True
      Size = 30
    end
    object TProdutocod_categoria: TIntegerField
      FieldName = 'cod_categoria'
      Required = True
    end
    object TProdutopreco_venda: TFloatField
      FieldName = 'preco_venda'
      Required = True
    end
    object TProdutopreco_custo: TFloatField
      FieldName = 'preco_custo'
      Required = True
    end
    object TProdutoqtd_estoque: TIntegerField
      FieldName = 'qtd_estoque'
    end
    object TProdutodesconto: TFloatField
      FieldName = 'desconto'
    end
    object TProdutocod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Required = True
    end
  end
  object DSProduto: TDataSource
    Left = 576
    Top = 64
  end
  object QryRelatorio: TQuery
    Active = True
    DatabaseName = 'dbpreff'
    SQL.Strings = (
      
        'select TVenda.cod_venda, TVenda.data, TContaReceber.valor_previs' +
        'to,  TCliente.nome,TVenda.mod_pag, Sum( TContaReceber.valor_prev' +
        'isto)as total'
      'from TVenda, TAVenda, TContaReceber, TProduto, TCliente'
      'where TVenda.cod_venda = TAVenda.cod_venda'
      'and  TVenda.cod_venda = TContaReceber.cod_venda'
      'and TCliente.cod_cliente = TVenda.cod_cliente'
      'and TProduto.cod_produto = TAVenda.cod_produto'
      ''
      
        'GROUP BY TVenda.cod_venda, TVenda.data, TContaReceber.valor_prev' +
        'isto, TCliente.nome,TVenda.mod_pag'
      
        'ORDER BY TVenda.cod_venda, TVenda.data, TContaReceber.valor_prev' +
        'isto, TCliente.nome,TVenda.mod_pag')
    Left = 576
    Top = 8
    object QryRelatoriocod_venda: TIntegerField
      FieldName = 'cod_venda'
      Origin = 'DBPREFF.TVenda.cod_venda'
    end
    object QryRelatoriodata: TDateTimeField
      FieldName = 'data'
      Origin = 'DBPREFF.TVenda.data'
    end
    object QryRelatoriovalor_previsto: TFloatField
      FieldName = 'valor_previsto'
      Origin = 'DBPREFF.TContaReceber.valor_previsto'
    end
    object QryRelatorionome: TStringField
      FieldName = 'nome'
      Origin = 'DBPREFF.TCliente.nome'
      Size = 30
    end
    object QryRelatoriomod_pag: TStringField
      FieldName = 'mod_pag'
      Origin = 'DBPREFF.TVenda.mod_pag'
      FixedChar = True
      Size = 10
    end
    object QryRelatoriototal: TFloatField
      FieldName = 'total'
      Origin = 'DBPREFF.TContaReceber.valor_previsto'
    end
  end
end
