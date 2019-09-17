object FormThresholdGanda: TFormThresholdGanda
  Left = 191
  Top = 235
  Width = 280
  Height = 225
  Caption = 'Threshold Ganda'
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
    Width = 63
    Height = 13
    Caption = 'Ambang Atas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 75
    Height = 13
    Caption = 'Ambang Bawah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ScrollBar1: TScrollBar
    Left = 16
    Top = 48
    Width = 233
    Height = 21
    Max = 255
    PageSize = 0
    TabOrder = 0
    OnChange = ScrollBar1Change
  end
  object ScrollBar2: TScrollBar
    Left = 16
    Top = 112
    Width = 233
    Height = 21
    Max = 255
    PageSize = 0
    Position = 1
    TabOrder = 1
    OnChange = ScrollBar2Change
  end
  object EditAA: TEdit
    Left = 104
    Top = 16
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object EditAB: TEdit
    Left = 104
    Top = 80
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Button1: TButton
    Left = 40
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 5
    OnClick = Button2Click
  end
end
