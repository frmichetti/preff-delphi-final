object RegFun: TRegFun
  Left = 346
  Top = 164
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Venda por Funcionarios'
  ClientHeight = 200
  ClientWidth = 230
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
  object Label9: TLabel
    Left = 0
    Top = 48
    Width = 71
    Height = 13
    Caption = 'Funcionario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 75
    Height = 13
    Caption = 'Procurar por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 104
    Top = 120
    Width = 20
    Height = 13
    Caption = 'At'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 96
    Width = 81
    Height = 13
    Caption = 'Vendas Entre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmbFun: TDBLookupComboBox
    Left = 32
    Top = 64
    Width = 185
    Height = 21
    Hint = 'Escolha um funcion'#225'rio abaixo'
    KeyField = 'cod_funcionario'
    ListField = 'nome'
    ListSource = DSFuncionario
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 152
    Width = 129
    Height = 33
    Hint = 'Ver o relat'#243'rio'
    Caption = 'Visualizar '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      36180000424D3618000000000000360000002800000040000000200000000100
      18000000000000180000120B0000120B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050C00142401
      0407000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006060616161604
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000D190D4F84195B9201
      3962000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F5858586464643F
      3F3F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000D1B094F873C8CC84897C30D
      70B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000F0F0F5858589696969C9C9C7A
      7A7A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000C190C51893083C094C6E175BCE301
      4C7E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000E0E0E5A5A5A8D8D8DC9C9C9C0C0C053
      5353000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010200C4B853083C092C6E27BBFE500477800
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000001313135656568D8D8DC9C9C9C3C3C34E4E4E00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003B2302905A
      1E87521989511781461315170F0D71C026A0DC95C0DB7BC0E600457700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001B1B1B4D4D
      4D4646464545453C3C3C1414147E7E7EA5A5A5C3C3C3C4C4C44D4D4D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A4703BDBA06EFFC3
      A4FEB293FDA588F69578C46C3874665873FCF56AE5FC00427500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000656565969696BFBF
      BFB0B0B0A5A5A5969696656565636363ECECECDFDFDF4A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000AC7E4BFFDBB6FFD2B3F8C4
      A2F8BC9BF6B091F5A689FDA28AF08A5F9C8754007F8B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000737373D3D3D3CDCDCDBFBF
      BFB8B8B8ADADADA5A5A5A3A3A387878779797975757500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000462F14EDC08FFFDEBCFCD2AEFACE
      ABF9C8A6F8C09FF7B998F5B191FFB496A1672F160C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292929B5B5B5D7D7D7CBCBCBC7C7
      C7C2C2C2BBBBBBB5B5B5AEAEAEB2B2B25C5C5C09090900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0A06AFFE8C5FDE1C3FEE1C4FCDD
      C1FBD2AFFACCA8F9C8A5F8C3A1FAC2A3F9BB9157310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000949494DFDFDFDADADADBDBDBD7D7
      D7CBCBCBC5C5C5C2C2C2BEBEBEBEBEBEB4B4B426262600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0A577FFF6E5FFF5EAFFF3E6FEF1
      E2FEE9D4FCDDBFFBD3B0FAD0ABFDD2AFF4C397522F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B9B9BF1F1F1F2F2F2F0F0F0EDED
      EDE4E4E4D7D7D7CCCCCCC9C9C9CBCBCBBABABA24242400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9AF85FFFCEFFFFBF7FFF7EEFEF6
      EAFEF3E6FEF0DFFDE5CDFCD9B4FFDBB8FED4A858320000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A6A6F8F8F8FAFAFAF5F5F5F3F3
      F3F0F0F0ECECECE0E0E0D1D1D1D4D4D4CBCBCB26262600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D09F71F2D7B7FFFEF7FFFCF7FFF9
      F1FFF6EBFFF3E4FEEFDDFDE5CAFFE7C3B68A521E110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696D0D0D0FCFCFCFAFAFAF7F7
      F7F3F3F3EFEFEFEBEBEBDFDFDFDEDEDE7D7D7D0D0D0D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000E4BA8FFFF4DCFFFFFBFFFC
      FBFFFAF4FFF7EBFFF4E7FFFAE9FDE3BA6B441300000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000B1B1B1EDEDEDFDFDFDFCFC
      FCF8F8F8F4F4F4F1F1F1F5F5F5D9D9D939393900000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E5BB90F2D5B1FFF7
      E4FFFDF6FFFFF7FFF8ECE2CAA486623400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B2B2B2CDCDCDF2F2
      F2FBFBFBFCFCFCF5F5F5C1C1C157575700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000D1A071D8AC
      7FD0A579C89F71BE93625A432700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000969696A2A2
      A29C9C9C9595958888883C3C3C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    NumGlyphs = 2
  end
  object ComboBox1: TComboBox
    Left = 0
    Top = 16
    Width = 217
    Height = 21
    Hint = 'Selecione uma op'#231#227'o abaixo'
    ItemHeight = 13
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = 'Funcionario e Data'
    OnSelect = ComboBox1Select
    Items.Strings = (
      'Funcionario e Data'
      'S'#243' por Funcionario')
  end
  object EdtData1: TDateTimePicker
    Left = 0
    Top = 112
    Width = 97
    Height = 21
    Hint = 'Selecione a primeira data a ser visualisada'
    Date = 39549.922843263890000000
    Time = 39549.922843263890000000
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object EdtData2: TDateTimePicker
    Left = 128
    Top = 112
    Width = 89
    Height = 21
    Hint = 'Selecione a '#250'ltima data a ser pesquisada'
    Date = 39549.923005115740000000
    Time = 39549.923005115740000000
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 0
    Top = 64
    Width = 33
    Height = 21
    DataField = 'cod_funcionario'
    DataSource = DSFuncionario
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 83
    Top = 245
    Width = 189
    Height = 107
    Caption = 'Panel1'
    TabOrder = 6
    Visible = False
    object QRFuncionario: TQuickRep
      Left = -17
      Top = 7
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = QryFuncionario
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
      object DetailBand1: TQRBand
        Left = 38
        Top = 169
        Width = 718
        Height = 32
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
          84.666666666666680000
          1899.708333333333000000)
        BandType = rbDetail
        object DBCodForn: TQRDBText
          Left = 32
          Top = 8
          Width = 91
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            84.666666666666680000
            21.166666666666670000
            240.770833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryFuncionario
          DataField = 'cod_funcionario'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object DBProduto: TQRDBText
          Left = 112
          Top = 8
          Width = 33
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            296.333333333333300000
            21.166666666666670000
            87.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryFuncionario
          DataField = 'nome'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object DBQtdEst: TQRDBText
          Left = 298
          Top = 8
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            788.458333333333200000
            21.166666666666670000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryFuncionario
          DataField = 'cod_cliente'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText1: TQRDBText
          Left = 378
          Top = 8
          Width = 62
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1000.125000000000000000
            21.166666666666670000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryFuncionario
          DataField = 'cod_venda'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 456
          Top = 8
          Width = 26
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1206.500000000000000000
            21.166666666666670000
            68.791666666666680000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryFuncionario
          DataField = 'data'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 544
          Top = 8
          Width = 54
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1439.333333333333000000
            21.166666666666670000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryFuncionario
          DataField = 'mod_pag'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 664
          Top = 8
          Width = 40
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1756.833333333333000000
            21.166666666666670000
            105.833333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryFuncionario
          DataField = 'n_parc'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object PageFooterBand1: TQRBand
        Left = 38
        Top = 201
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
        object QRSysData2: TQRSysData
          Left = 656
          Top = 16
          Width = 46
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1735.666666666667000000
            42.333333333333330000
            121.708333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Transparent = False
          FontSize = 10
        end
      end
      object PageHeaderBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 131
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
          346.604166666666700000
          1899.708333333333000000)
        BandType = rbPageHeader
        object QRSysData1: TQRSysData
          Left = 592
          Top = 8
          Width = 68
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1566.333333333333000000
            21.166666666666670000
            179.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsDateTime
          Transparent = False
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 176
          Top = 24
          Width = 388
          Height = 39
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            103.187500000000000000
            465.666666666666700000
            63.500000000000000000
            1026.583333333333000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Relatorio de Funcionario'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 20
        end
        object QRLabel2: TQRLabel
          Left = 8
          Top = 112
          Width = 85
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            21.166666666666670000
            296.333333333333300000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Funcionario'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel3: TQRLabel
          Left = 112
          Top = 112
          Width = 42
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            296.333333333333300000
            296.333333333333300000
            111.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nome'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel4: TQRLabel
          Left = 282
          Top = 112
          Width = 52
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            746.125000000000000000
            296.333333333333300000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cliente'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel5: TQRLabel
          Left = 362
          Top = 112
          Width = 45
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            957.791666666666800000
            296.333333333333300000
            119.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Venda'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel6: TQRLabel
          Left = 459
          Top = 112
          Width = 33
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1214.437500000000000000
            296.333333333333300000
            87.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Data'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel7: TQRLabel
          Left = 538
          Top = 112
          Width = 80
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1423.458333333333000000
            296.333333333333300000
            211.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pagamento'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel8: TQRLabel
          Left = 641
          Top = 112
          Width = 62
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1695.979166666667000000
            296.333333333333300000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Parcelas'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel9: TQRLabel
          Left = 16
          Top = 96
          Width = 52
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            42.333333333333330000
            254.000000000000000000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Codigo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel10: TQRLabel
          Left = 282
          Top = 96
          Width = 52
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            746.125000000000000000
            254.000000000000000000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Codigo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel11: TQRLabel
          Left = 358
          Top = 96
          Width = 52
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            947.208333333333200000
            254.000000000000000000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Codigo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
        object QRLabel12: TQRLabel
          Left = 538
          Top = 96
          Width = 67
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1423.458333333333000000
            254.000000000000000000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Forma de'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 11
        end
      end
    end
  end
  object TFuncionario: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TFuncionario'
    Left = 320
    Top = 8
    object TFuncionariocod_funcionario: TIntegerField
      FieldName = 'cod_funcionario'
      Required = True
    end
    object TFuncionarionome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 30
    end
    object TFuncionarioendereco: TStringField
      FieldName = 'endereco'
      Required = True
      Size = 50
    end
    object TFuncionariobairro: TStringField
      FieldName = 'bairro'
      Required = True
      Size = 30
    end
    object TFuncionariocomplemento: TStringField
      FieldName = 'complemento'
      Size = 50
    end
    object TFuncionariocidade: TStringField
      FieldName = 'cidade'
      Required = True
      Size = 30
    end
    object TFuncionarioestado: TStringField
      FieldName = 'estado'
      Required = True
      Size = 2
    end
    object TFuncionariocep: TStringField
      FieldName = 'cep'
      Required = True
      Size = 9
    end
    object TFuncionariotelefone: TStringField
      FieldName = 'telefone'
      Required = True
      Size = 14
    end
    object TFuncionariocelular: TStringField
      FieldName = 'celular'
      Size = 14
    end
    object TFuncionariocpf: TStringField
      FieldName = 'cpf'
      Required = True
      Size = 14
    end
    object TFuncionariorg: TStringField
      FieldName = 'rg'
      Required = True
      Size = 12
    end
  end
  object DSFuncionario: TDataSource
    DataSet = TFuncionario
    Left = 376
    Top = 8
  end
  object QryFuncionario: TQuery
    Active = True
    DatabaseName = 'dbpreff'
    SQL.Strings = (
      'select tfuncionario.cod_funcionario, tfuncionario.nome, TVenda.*'
      'from tfuncionario, TVenda'
      'where (tfuncionario.cod_funcionario = tvenda.cod_funcionario)')
    Left = 432
    Top = 56
    object QryFuncionariocod_funcionario: TIntegerField
      FieldName = 'cod_funcionario'
      Origin = 'DBPREFF.TVenda.cod_venda'
    end
    object QryFuncionarionome: TStringField
      FieldName = 'nome'
      Origin = 'DBPREFF.TVenda.cod_cliente'
      Size = 30
    end
    object QryFuncionariocod_venda: TIntegerField
      FieldName = 'cod_venda'
      Origin = 'DBPREFF.TVenda.data'
    end
    object QryFuncionariocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Origin = 'DBPREFF.TVenda.cod_funcionario'
    end
    object QryFuncionariodata: TDateTimeField
      FieldName = 'data'
      Origin = 'DBPREFF.TVenda.mod_pag'
    end
    object QryFuncionariomod_pag: TStringField
      FieldName = 'mod_pag'
      Origin = 'DBPREFF.tfuncionario.cod_funcionario'
      FixedChar = True
      Size = 10
    end
    object QryFuncionarion_parc: TIntegerField
      FieldName = 'n_parc'
      Origin = 'DBPREFF.tfuncionario.nome'
    end
  end
  object DsQruery: TDataSource
    DataSet = QryFuncionario
    Left = 368
    Top = 56
  end
  object TVendas: TTable
    Active = True
    DatabaseName = 'dbpreff'
    TableName = 'dbo.TVenda'
    Left = 432
    Top = 8
    object TVendascod_venda: TIntegerField
      FieldName = 'cod_venda'
      Required = True
    end
    object TVendascod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Required = True
    end
    object TVendasdata: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object TVendascod_funcionario: TIntegerField
      FieldName = 'cod_funcionario'
      Required = True
    end
    object TVendasmod_pag: TStringField
      FieldName = 'mod_pag'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TVendasn_parc: TIntegerField
      FieldName = 'n_parc'
      Required = True
    end
  end
  object DSVendas: TDataSource
    DataSet = TVendas
    Left = 312
    Top = 56
  end
end
