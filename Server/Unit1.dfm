object Form1: TForm1
  Left = 362
  Top = 208
  BorderStyle = bsSingle
  ClientHeight = 43
  ClientWidth = 137
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
  object Memo1: TMemo
    Left = 248
    Top = 120
    Width = 185
    Height = 25
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    Visible = False
  end
  object Memo2: TMemo
    Left = 248
    Top = 160
    Width = 185
    Height = 25
    Lines.Strings = (
      'Memo2')
    TabOrder = 1
    Visible = False
  end
  object memo3: TListBox
    Left = 248
    Top = 200
    Width = 185
    Height = 25
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 312
    Top = 16
  end
  object Timer4: TTimer
    OnTimer = Timer4Timer
    Left = 328
    Top = 64
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = Timer5Timer
    Left = 352
    Top = 32
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 376
    Top = 64
  end
end