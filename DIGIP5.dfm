object FormThresholdTunggal: TFormThresholdTunggal
  Left = 189
  Top = 128
  Width = 282
  Height = 163
  Caption = 'Threshold Tunggal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 39
    Height = 13
    Caption = 'Ambang'
  end
  object EditA: TEdit
    Left = 80
    Top = 16
    Width = 57
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object Button1: TButton
    Left = 48
    Top = 80
    Width = 65
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 80
    Width = 65
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ScrollBar1: TScrollBar
    Left = 16
    Top = 48
    Width = 233
    Height = 17
    Max = 255
    PageSize = 0
    TabOrder = 3
    OnChange = ScrollBar1Change
  end
end
