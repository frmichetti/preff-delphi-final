object FrmTCCliente: TFrmTCCliente
  Left = 259
  Top = 135
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tabela de Cadastros de Clientes'
  ClientHeight = 410
  ClientWidth = 613
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
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 67
    Height = 13
    Caption = 'Pesquisar por:'
  end
  object Label1: TLabel
    Left = 144
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 593
    Height = 321
    DataSource = dscadcli
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_cliente'
        Title.Caption = 'C'#243'digo Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Title.Caption = 'Endere'#231'o'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'complemento'
        Title.Caption = 'Complemento'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Title.Caption = 'Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Title.Caption = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Title.Caption = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rg'
        Title.Caption = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'devedor'
        Title.Caption = 'Devedor'
        Visible = True
      end>
  end
  object EditPesq: TEdit
    Left = 144
    Top = 24
    Width = 297
    Height = 21
    Hint = 'Informa'#231#245'es '#224' serem Pesquisadas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
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
  object ComboBox1: TComboBox
    Left = 8
    Top = 24
    Width = 129
    Height = 21
    Hint = 'Selecione uma op'#231#227'o'
    AutoDropDown = True
    ItemHeight = 13
    ItemIndex = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = 'Nome'
    Items.Strings = (
      'C'#243'digo'
      'Nome'
      'Telefone'
      'Endere'#231'o'
      'RG'
      'CPF'
      'CEP'
      'Devedor')
  end
  object tblcadcli: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TCliente'
    Left = 16
    object tblcadclicod_cliente: TIntegerField
      DisplayWidth = 12
      FieldName = 'cod_cliente'
      Required = True
    end
    object tblcadclinome: TStringField
      DisplayWidth = 38
      FieldName = 'nome'
      Required = True
      Size = 30
    end
    object tblcadcliendereco: TStringField
      DisplayWidth = 33
      FieldName = 'endereco'
      Required = True
      Size = 50
    end
    object tblcadclibairro: TStringField
      DisplayWidth = 23
      FieldName = 'bairro'
      Required = True
      Size = 30
    end
    object tblcadclicomplemento: TStringField
      DisplayWidth = 44
      FieldName = 'complemento'
      Size = 50
    end
    object tblcadclicidade: TStringField
      DisplayWidth = 21
      FieldName = 'cidade'
      Required = True
    end
    object tblcadcliestado: TStringField
      DisplayWidth = 7
      FieldName = 'estado'
      Required = True
      Size = 2
    end
    object tblcadclicep: TStringField
      DisplayWidth = 12
      FieldName = 'cep'
      Size = 9
    end
    object tblcadclitelefone: TStringField
      DisplayWidth = 21
      FieldName = 'telefone'
      Size = 14
    end
    object tblcadclicpf: TStringField
      DisplayWidth = 18
      FieldName = 'cpf'
      Size = 14
    end
    object tblcadclirg: TStringField
      DisplayWidth = 16
      FieldName = 'rg'
      Required = True
      Size = 12
    end
    object tblcadclidevedor: TStringField
      DisplayWidth = 9
      FieldName = 'devedor'
      Required = True
      Size = 3
    end
  end
  object dscadcli: TDataSource
    DataSet = tblcadcli
    Left = 736
    Top = 8
  end
  object querycli: TQuery
    AutoRefresh = True
    DatabaseName = 'dbpreff'
    SQL.Strings = (
      'select * '
      'from  TCliente')
    Left = 864
    Top = 8
    object queryclicod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Origin = 'DBPREFF.TCliente.cod_cliente'
    end
    object queryclinome: TStringField
      FieldName = 'nome'
      Origin = 'DBPREFF.TCliente.nome'
      Size = 30
    end
    object querycliendereco: TStringField
      FieldName = 'endereco'
      Origin = 'DBPREFF.TCliente.endereco'
      Size = 50
    end
    object queryclibairro: TStringField
      FieldName = 'bairro'
      Origin = 'DBPREFF.TCliente.bairro'
      Size = 30
    end
    object queryclicomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'DBPREFF.TCliente.complemento'
      Size = 50
    end
    object queryclicidade: TStringField
      FieldName = 'cidade'
      Origin = 'DBPREFF.TCliente.cidade'
    end
    object querycliestado: TStringField
      FieldName = 'estado'
      Origin = 'DBPREFF.TCliente.estado'
      Size = 2
    end
    object queryclicep: TStringField
      FieldName = 'cep'
      Origin = 'DBPREFF.TCliente.cep'
      Size = 9
    end
    object queryclitelefone: TStringField
      FieldName = 'telefone'
      Origin = 'DBPREFF.TCliente.telefone'
      Size = 14
    end
    object queryclicpf: TStringField
      FieldName = 'cpf'
      Origin = 'DBPREFF.TCliente.cpf'
      Size = 14
    end
    object queryclirg: TStringField
      FieldName = 'rg'
      Origin = 'DBPREFF.TCliente.rg'
      Size = 12
    end
    object queryclidevedor: TStringField
      FieldName = 'devedor'
      Origin = 'DBPREFF.TCliente.devedor'
      Size = 3
    end
  end
  object DataSource2: TDataSource
    DataSet = querycli
    Left = 736
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 960
    Top = 8
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
    end
    object Siar1: TMenuItem
      Caption = 'Sair'
      OnClick = Siar1Click
    end
  end
end
