object frmRegContaPag: TfrmRegContaPag
  Left = 412
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Contas a Pagar'
  ClientHeight = 168
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
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
  object Label1: TLabel
    Left = 112
    Top = 104
    Width = 3
    Height = 13
  end
  object Label9: TLabel
    Left = 8
    Top = 40
    Width = 84
    Height = 15
    Caption = 'Fornecedor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Footlight MT Light'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 112
    Top = 104
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
    Left = 8
    Top = 80
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
  object EdtData1: TDateTimePicker
    Left = 8
    Top = 96
    Width = 97
    Height = 21
    Hint = 'Selecione o primeiro dia para ser visto'
    Date = 39549.922843263890000000
    Time = 39549.922843263890000000
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object EdtData2: TDateTimePicker
    Left = 144
    Top = 96
    Width = 96
    Height = 21
    Hint = 'Selecione o '#250'ltimo dia para ser visto'
    Date = 39549.923005115740000000
    Time = 39549.923005115740000000
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 8
    Width = 137
    Height = 21
    Hint = 'Selecione uma op'#231#227'o'
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = 'Data e Fornecedor'
    OnSelect = ComboBox1Select
    Items.Strings = (
      'Data e Fornecedor'
      'Data'
      'Fornecedor'
      'Data e Pagas')
  end
  object BitBtn1: TBitBtn
    Left = 59
    Top = 128
    Width = 128
    Height = 33
    Hint = 'Ver o relat'#243'rio'
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
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
  object EdtFornecedor: TDBLookupComboBox
    Left = 8
    Top = 56
    Width = 233
    Height = 21
    Hint = 'Selecione uma op'#231#227'o'
    KeyField = 'cod_fornecedor'
    ListField = 'nome'
    ListSource = DSFornecedor
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 24
    Top = 211
    Width = 825
    Height = 366
    Caption = 'Panel1'
    TabOrder = 5
    Visible = False
  end
  object TFornecedor: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TFornecedor'
    Left = 280
    Top = 56
    object TFornecedorcod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Required = True
    end
    object TFornecedornome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 30
    end
    object TFornecedorcnpj: TStringField
      FieldName = 'cnpj'
      Required = True
      Size = 18
    end
    object TFornecedorendereco: TStringField
      FieldName = 'endereco'
      Required = True
      Size = 50
    end
    object TFornecedorbairro: TStringField
      FieldName = 'bairro'
      Required = True
      Size = 30
    end
    object TFornecedorcomplemento: TStringField
      FieldName = 'complemento'
      Size = 50
    end
    object TFornecedorcidade: TStringField
      FieldName = 'cidade'
      Required = True
    end
    object TFornecedorestado: TStringField
      FieldName = 'estado'
      Required = True
      Size = 2
    end
    object TFornecedorcep: TStringField
      FieldName = 'cep'
      Required = True
      Size = 9
    end
    object TFornecedortelefone: TStringField
      FieldName = 'telefone'
      Required = True
      Size = 14
    end
  end
  object DSFornecedor: TDataSource
    DataSet = TFornecedor
    Left = 288
    Top = 8
  end
  object DtsParcelas: TDataSource
    DataSet = QryParcelas
    Left = 352
    Top = 8
  end
  object QryParcelas: TQuery
    Active = True
    AutoRefresh = True
    DatabaseName = 'dbpreff'
    SQL.Strings = (
      'SELECT FORN.Nome,PGAR.*,COM.Data'
      'FROM TFornecedor FORN, TContaPagar PGAR, TCompra COM'
      'WHERE FORN.Cod_Fornecedor = COM.Cod_Fornecedor '
      'AND PGAR.Cod_compra = COM.Cod_compra'
      ''
      '')
    Left = 464
    Top = 72
    object QryParcelascod_contapagar: TIntegerField
      FieldName = 'cod_contapagar'
    end
    object QryParcelascod_compra: TIntegerField
      FieldName = 'cod_compra'
    end
    object QryParcelasdata_prevista: TDateTimeField
      FieldName = 'data_prevista'
    end
    object QryParcelasvalor_previsto: TFloatField
      FieldName = 'valor_previsto'
      DisplayFormat = '0.00;-0.00'
    end
    object QryParcelasdata_paga: TDateTimeField
      FieldName = 'data_paga'
    end
    object QryParcelasvalor_pago: TFloatField
      FieldName = 'valor_pago'
      DisplayFormat = '0.00;-0.00'
    end
    object QryParcelasData: TDateTimeField
      FieldName = 'Data'
    end
    object QryParcelasNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object TCPagar: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TContaPagar'
    Left = 344
    Top = 56
    object TCPagarcod_contapagar: TIntegerField
      FieldName = 'cod_contapagar'
      Required = True
    end
    object TCPagarcod_compra: TIntegerField
      FieldName = 'cod_compra'
    end
    object TCPagardata_prevista: TDateTimeField
      FieldName = 'data_prevista'
      Required = True
    end
    object TCPagarvalor_previsto: TFloatField
      FieldName = 'valor_previsto'
      Required = True
    end
    object TCPagardata_paga: TDateTimeField
      FieldName = 'data_paga'
    end
    object TCPagarvalor_pago: TFloatField
      FieldName = 'valor_pago'
    end
  end
  object TCompra: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TCompra'
    Left = 416
    Top = 64
  end
  object DSCPagar: TDataSource
    DataSet = TCPagar
    Left = 408
    Top = 8
  end
  object DSCompra: TDataSource
    DataSet = TCompra
    Left = 464
    Top = 16
  end
end
