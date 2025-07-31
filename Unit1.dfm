object Form1: TForm1
  Left = 1824
  Top = 177
  BorderStyle = bsSingle
  Caption = 'ASCii Table 1.0 Source'
  ClientHeight = 330
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 265
    Height = 25
    AutoSize = False
    Caption = 'Dec       Hex            Bin                      Char'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 265
    Height = 241
    TabStop = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 272
    Width = 265
    Height = 33
    Caption = '&Changer de FONT'
    TabOrder = 1
    TabStop = False
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 311
    Width = 285
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 24
    Top = 32
  end
end
