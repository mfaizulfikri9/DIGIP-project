object FormHistogram: TFormHistogram
  Left = 193
  Top = 299
  Width = 570
  Height = 235
  Caption = 'Histogram'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 32
    Width = 256
    Height = 101
    OnMouseMove = Image1MouseMove
  end
  object Image2: TImage
    Left = 288
    Top = 32
    Width = 256
    Height = 101
    OnMouseMove = Image2MouseMove
  end
  object Label8: TLabel
    Left = 16
    Top = 8
    Width = 109
    Height = 13
    Caption = 'Citra Sebelum Diproses'
  end
  object Label7: TLabel
    Left = 296
    Top = 8
    Width = 104
    Height = 13
    Caption = 'Citra Setelah Diproses'
  end
  object Label3: TLabel
    Left = 16
    Top = 144
    Width = 51
    Height = 13
    Caption = 'Nilai Piksel'
  end
  object Label4: TLabel
    Left = 16
    Top = 168
    Width = 64
    Height = 13
    Caption = 'Jumlah Piksel'
  end
  object Label5: TLabel
    Left = 296
    Top = 144
    Width = 51
    Height = 13
    Caption = 'Nilai Piksel'
  end
  object Label6: TLabel
    Left = 296
    Top = 168
    Width = 64
    Height = 13
    Caption = 'Jumlah Piksel'
  end
  object Label1: TLabel
    Left = 96
    Top = 144
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 96
    Top = 168
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label9: TLabel
    Left = 376
    Top = 144
    Width = 32
    Height = 13
    Caption = 'Label9'
  end
  object Label10: TLabel
    Left = 376
    Top = 168
    Width = 38
    Height = 13
    Caption = 'Label10'
  end
end
