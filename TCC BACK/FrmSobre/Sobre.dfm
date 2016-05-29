object FrmSobre: TFrmSobre
  Left = 472
  Top = 255
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sobre'
  ClientHeight = 196
  ClientWidth = 139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ObjectMenuItem = frmprinc.Ajuda1
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 185
    Caption = 'Sobre'
    TabOrder = 0
    OnClick = btn1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 152
    object ldkfjskjdf1: TMenuItem
      Caption = 'ldkfjskjdf'
    end
    object sdsfd1: TMenuItem
      Caption = 'sdsfd'
      OnClick = sdsfd1Click
    end
  end
end
