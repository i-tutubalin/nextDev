object FormDownload: TFormDownload
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'FormDownload'
  ClientHeight = 40
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBarDownload: TProgressBar
    Left = 0
    Top = 0
    Width = 400
    Height = 40
    Max = 50
    State = pbsPaused
    TabOrder = 0
  end
  object TimerDownload: TTimer
    Enabled = False
    Interval = 50
    OnTimer = TimerDownloadTimer
    Left = 8
    Top = 8
  end
end
