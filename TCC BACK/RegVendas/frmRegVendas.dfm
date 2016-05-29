object frmRegVenda: TfrmRegVenda
  Left = 184
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatorio de Vendas'
  ClientHeight = 197
  ClientWidth = 287
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
    Left = 16
    Top = 16
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
  object Label3: TLabel
    Left = 160
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
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 32
    Height = 13
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
    Left = 96
    Top = 8
    Width = 169
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
    Left = 96
    Top = 40
    Width = 169
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
    Top = 152
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
    object QRVendas: TQuickRep
      Left = -345
      Top = -98
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
        object DBProduto: TQRDBText
          Left = 90
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
            238.125000000000000000
            21.166666666666670000
            87.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryRelatorio
          DataField = 'nome'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object DBQtdEst: TQRDBText
          Left = 20
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
            52.916666666666660000
            21.166666666666670000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryRelatorio
          DataField = 'cod_venda'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText1: TQRDBText
          Left = 446
          Top = 8
          Width = 78
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1180.041666666667000000
            21.166666666666670000
            206.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryRelatorio
          DataField = 'valor_previsto'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 555
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
            1468.437500000000000000
            21.166666666666670000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryRelatorio
          DataField = 'mod_pag'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 338
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
            894.291666666666800000
            21.166666666666670000
            68.791666666666680000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryRelatorio
          DataField = 'data'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 660
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
            1746.250000000000000000
            21.166666666666670000
            68.791666666666680000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryRelatorio
          DataField = 'total'
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
            42.333333333333340000
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
          Left = 192
          Top = 24
          Width = 319
          Height = 39
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            103.187500000000000000
            508.000000000000000000
            63.500000000000000000
            844.020833333333500000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Relatorio de Vendas'
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
        object QRLabel3: TQRLabel
          Left = 89
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
            235.479166666666700000
            296.333333333333400000
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
          Left = 6
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
            15.875000000000000000
            296.333333333333400000
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
        object QRLabel5: TQRLabel
          Left = 432
          Top = 112
          Width = 61
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1143.000000000000000000
            296.333333333333400000
            161.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Previsto'
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
          Left = 3
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
            7.937500000000000000
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
          Left = 444
          Top = 96
          Width = 37
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1174.750000000000000000
            254.000000000000000000
            97.895833333333320000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Valor'
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
          Left = 656
          Top = 112
          Width = 37
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1735.666666666667000000
            296.333333333333400000
            97.895833333333320000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total'
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
        object QRLabel13: TQRLabel
          Left = 345
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
            912.812500000000000000
            296.333333333333400000
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
        object QRLabel15: TQRLabel
          Left = 549
          Top = 96
          Width = 63
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1452.562500000000000000
            254.000000000000000000
            166.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Modo de'
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
        object QRLabel14: TQRLabel
          Left = 559
          Top = 112
          Width = 38
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1479.020833333333000000
            296.333333333333400000
            100.541666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Pgto.'
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
    Active = True
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
