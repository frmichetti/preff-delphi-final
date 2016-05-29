object frmlistCli: TfrmlistCli
  Left = 233
  Top = 228
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatorio de clientes'
  ClientHeight = 274
  ClientWidth = 663
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object QuickRep2: TQuickRep
    Left = 8
    Top = 36
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 121
      Width = 718
      Height = 507
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1341.437500000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 32
        Top = 16
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666680000
          42.333333333333340000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cod'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 32
        Top = 40
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666680000
          105.833333333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query3
        DataField = 'cod_cliente'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 72
        Top = 16
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          42.333333333333340000
          92.604166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 72
        Top = 40
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          105.833333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query3
        DataField = 'nome'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 216
        Top = 16
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          42.333333333333340000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Telefone'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 216
        Top = 40
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          105.833333333333300000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query3
        DataField = 'telefone'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 320
        Top = 40
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666600000
          105.833333333333300000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query3
        DataField = 'endereco'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 32
        Top = 80
        Width = 12
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666680000
          211.666666666666700000
          31.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query3
        DataField = 'rg'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 496
        Top = 40
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          105.833333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Query3
        DataField = 'bairro'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 628
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      BandType = rbPageFooter
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 83
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        219.604166666666700000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRLabel9: TQRLabel
        Left = 288
        Top = 24
        Width = 123
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          63.500000000000000000
          325.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Listagem de Clientes'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object Query2: TQuery
    DatabaseName = 'dbpreff'
    SQL.Strings = (
      'select *'
      'from TProduto'
      'order by TProduto.cod_produto')
    Left = 992
    Top = 744
    object Query1cod_produto: TIntegerField
      FieldName = 'cod_produto'
      Origin = 'DBPREFF.TProduto.cod_produto'
    end
    object Query1nome_produto: TStringField
      FieldName = 'nome_produto'
      Origin = 'DBPREFF.TProduto.nome_produto'
      Size = 30
    end
    object Query1cod_categoria: TIntegerField
      FieldName = 'cod_categoria'
      Origin = 'DBPREFF.TProduto.cod_categoria'
    end
    object Query1preco_venda: TFloatField
      FieldName = 'preco_venda'
      Origin = 'DBPREFF.TProduto.preco_venda'
    end
    object Query1preco_custo: TFloatField
      FieldName = 'preco_custo'
      Origin = 'DBPREFF.TProduto.preco_custo'
    end
    object Query1qtd_estoque: TIntegerField
      FieldName = 'qtd_estoque'
      Origin = 'DBPREFF.TProduto.qtd_estoque'
    end
    object Query1desconto: TFloatField
      FieldName = 'desconto'
      Origin = 'DBPREFF.TProduto.desconto'
    end
    object Query1cod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
      Origin = 'DBPREFF.TProduto.cod_fornecedor'
    end
  end
  object Query3: TQuery
    Active = True
    DatabaseName = 'dbpreff'
    SQL.Strings = (
      'select *'
      'from tcliente')
    Left = 624
    Top = 8
    object Query2cod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Origin = 'DBPREFF.tcliente.cod_cliente'
    end
    object Query2nome: TStringField
      FieldName = 'nome'
      Origin = 'DBPREFF.tcliente.nome'
      Size = 30
    end
    object Query2endereco: TStringField
      FieldName = 'endereco'
      Origin = 'DBPREFF.tcliente.endereco'
      Size = 50
    end
    object Query2bairro: TStringField
      FieldName = 'bairro'
      Origin = 'DBPREFF.tcliente.bairro'
      Size = 30
    end
    object Query2complemento: TStringField
      FieldName = 'complemento'
      Origin = 'DBPREFF.tcliente.complemento'
      Size = 50
    end
    object Query2cidade: TStringField
      FieldName = 'cidade'
      Origin = 'DBPREFF.tcliente.cidade'
    end
    object Query2estado: TStringField
      FieldName = 'estado'
      Origin = 'DBPREFF.tcliente.estado'
      Size = 2
    end
    object Query2cep: TStringField
      FieldName = 'cep'
      Origin = 'DBPREFF.tcliente.cep'
      Size = 9
    end
    object Query2telefone: TStringField
      FieldName = 'telefone'
      Origin = 'DBPREFF.tcliente.telefone'
      Size = 14
    end
    object Query2cpf: TStringField
      FieldName = 'cpf'
      Origin = 'DBPREFF.tcliente.cpf'
      Size = 14
    end
    object Query2rg: TStringField
      FieldName = 'rg'
      Origin = 'DBPREFF.tcliente.rg'
      Size = 12
    end
    object Query2devedor: TStringField
      FieldName = 'devedor'
      Origin = 'DBPREFF.tcliente.devedor'
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = Query3
    Left = 592
    Top = 8
  end
end
