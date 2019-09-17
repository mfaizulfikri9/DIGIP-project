object Form1: TForm1
  Left = 464
  Top = 92
  Width = 585
  Height = 393
  Caption = 'Pengolahan Citra - DIGIP 2.0 <Demo Version>'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 552
    Height = 301
  end
  object Bevel2: TBevel
    Left = 16
    Top = 40
    Width = 266
    Height = 265
  end
  object Bevel3: TBevel
    Left = 288
    Top = 40
    Width = 266
    Height = 265
  end
  object Image1: TImage
    Left = 24
    Top = 48
    Width = 256
    Height = 256
    OnMouseMove = Image1MouseMove
  end
  object Image2: TImage
    Left = 296
    Top = 48
    Width = 256
    Height = 256
    OnMouseMove = Image2MouseMove
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 109
    Height = 13
    Caption = 'Citra Sebelum Diproses'
  end
  object Label2: TLabel
    Left = 296
    Top = 16
    Width = 104
    Height = 13
    Caption = 'Citra Setelah Diproses'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 316
    Width = 569
    Height = 19
    Panels = <>
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 32
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 56
    object File1: TMenuItem
      Caption = '&File'
      object Open1: TMenuItem
        Caption = '&Open'
        OnClick = Open1Click
      end
      object SaveResultAs1: TMenuItem
        Caption = 'Save Result As..'
        OnClick = SaveResultAs1Click
      end
      object Exit1: TMenuItem
        Caption = '&Exit'
        OnClick = Exit1Click
      end
    end
    object Proses1: TMenuItem
      Caption = 'Proses'
      object Brightness1: TMenuItem
        Caption = 'Brightness'
        OnClick = Brightness1Click
      end
      object Negasi1: TMenuItem
        Caption = 'Negasi'
        OnClick = Negasi1Click
      end
      object Contrast1: TMenuItem
        Caption = 'Contrast'
        OnClick = Contrast1Click
      end
      object hreshold1: TMenuItem
        Caption = 'Threshold'
        object hresholdTunggal1: TMenuItem
          Caption = 'Threshold Tunggal'
          OnClick = hresholdTunggal1Click
        end
        object hresholdGanda1: TMenuItem
          Caption = 'Threshold Ganda'
          OnClick = hresholdGanda1Click
        end
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object ViewHistogram1: TMenuItem
        Caption = 'Histogram'
        OnClick = ViewHistogram1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 72
    Top = 56
  end
end
