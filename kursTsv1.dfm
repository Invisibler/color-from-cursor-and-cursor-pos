object Form1: TForm1
  Left = 192
  Top = 118
  Width = 368
  Height = 270
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Lx: TLabel
    Left = 16
    Top = 56
    Width = 11
    Height = 13
    Caption = 'Lx'
  end
  object Ly: TLabel
    Left = 144
    Top = 56
    Width = 11
    Height = 13
    Caption = 'Ly'
  end
  object Lres: TLabel
    Left = 88
    Top = 96
    Width = 20
    Height = 13
    Caption = 'Lres'
  end
  object Lres2: TLabel
    Left = 248
    Top = 24
    Width = 26
    Height = 13
    Caption = 'Lres2'
  end
  object B1: TButton
    Left = 64
    Top = 144
    Width = 97
    Height = 33
    Caption = 'B1'
    TabOrder = 0
    TabStop = False
    OnClick = B1Click
  end
  object Ex: TEdit
    Left = 16
    Top = 24
    Width = 81
    Height = 21
    TabOrder = 1
    Text = 'Ex'
  end
  object Ey: TEdit
    Left = 144
    Top = 24
    Width = 81
    Height = 21
    TabOrder = 2
    Text = 'Ey'
  end
end
