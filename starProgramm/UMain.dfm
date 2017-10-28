object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Next Dev'
  ClientHeight = 800
  ClientWidth = 1234
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControlMainMenu: TcxPageControl
    Left = 0
    Top = 0
    Width = 1234
    Height = 800
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxMainTask
    Properties.CustomButtons.Buttons = <>
    Properties.Images = ModuleImg.ImageListMainMenu
    Properties.Rotate = True
    Properties.TabPosition = tpLeft
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    ClientRectBottom = 794
    ClientRectLeft = 93
    ClientRectRight = 1228
    ClientRectTop = 2
    object cxMainTask: TcxTabSheet
      Caption = 'Task'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      inline FrameMainTask: TFrameMainTask
        Left = 0
        Top = 0
        Width = 1135
        Height = 792
        Align = alClient
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        PopupMenu = FrameMainTask.PMMain
        TabOrder = 0
        ExplicitWidth = 1135
        ExplicitHeight = 792
        inherited Splitter2: TSplitter
          Left = 3
          Top = 484
          Width = 1129
          ExplicitLeft = 3
          ExplicitTop = 356
          ExplicitWidth = 1159
        end
        inherited PanelFun: TPanel
          Left = 3
          Top = 3
          Width = 1129
          ParentColor = True
          ExplicitLeft = 3
          ExplicitTop = 3
          ExplicitWidth = 1129
        end
        inherited PanelDev: TPanel
          Left = 3
          Top = 156
          Width = 1129
          Height = 328
          ExplicitLeft = 3
          ExplicitTop = 156
          ExplicitWidth = 1129
          ExplicitHeight = 328
          inherited FrameRecordDev: TFrameRecordDev
            Width = 1127
            Height = 326
            ExplicitWidth = 1127
            ExplicitHeight = 326
            inherited DBGridDev: TDBGrid
              Width = 1127
              Height = 326
            end
          end
        end
        inherited PanelTask: TPanel
          Left = 3
          Top = 489
          Width = 1129
          ExplicitLeft = 3
          ExplicitTop = 489
          ExplicitWidth = 1129
          inherited FrameRecordTask: TFrameRecordTask
            Width = 1127
            ExplicitWidth = 1127
            inherited Splitter1: TSplitter
              Left = 854
              ExplicitLeft = 884
            end
            inherited DBGridTask: TDBGrid
              Width = 854
            end
            inherited DBMemoTask: TDBMemo
              Left = 857
              ExplicitLeft = 857
            end
          end
        end
        inherited PMMain: TPopupMenu
          Left = 528
        end
      end
    end
    object cxRecord: TcxTabSheet
      Caption = 'Record'
      ImageIndex = 1
    end
    object cxUser: TcxTabSheet
      Caption = 'User'
      ImageIndex = 2
    end
  end
end
