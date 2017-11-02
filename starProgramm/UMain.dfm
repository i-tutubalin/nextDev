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
  OnCreate = FormCreate
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
      ImageIndex = 2
      ParentFont = False
      OnShow = cxMainTaskShow
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
          Top = 436
          Width = 1129
          ExplicitLeft = 3
          ExplicitTop = 93
          ExplicitWidth = 1129
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
          Top = 108
          Width = 1129
          Height = 328
          ExplicitLeft = 3
          ExplicitTop = 108
          ExplicitWidth = 1129
          ExplicitHeight = 328
          inherited FrameRecordDev: TFrameRecordDev
            Width = 1127
            Height = 326
            ExplicitWidth = 1127
            ExplicitHeight = 326
            inherited DBGridDev: TDBGrid
              Width = 1127
              Height = 389
            end
          end
        end
        inherited PanelTask: TPanel
          Left = 3
          Top = 441
          Width = 1129
          Height = 348
          ExplicitLeft = 3
          ExplicitTop = 441
          ExplicitWidth = 1129
          ExplicitHeight = 348
          inherited FrameRecordTask: TFrameRecordTask
            Width = 1127
            Height = 346
            ExplicitWidth = 1127
            ExplicitHeight = 346
            inherited Splitter1: TSplitter
              Left = 854
              Height = 346
              ExplicitLeft = 854
              ExplicitHeight = 346
            end
            inherited DBGridTask: TDBGrid
              Width = 854
              Height = 346
            end
            inherited DBMemoTask: TDBMemo
              Left = 857
              Height = 346
              ExplicitLeft = 857
              ExplicitHeight = 346
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
      OnClick = cxRecordClick
      OnShow = cxRecordShow
      inline FrameMainRecord: TFrameMainRecord
        Left = 0
        Top = 0
        Width = 1135
        Height = 792
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1135
        ExplicitHeight = 792
        inherited PanelRecord: TPanel
          Width = 1135
          Height = 692
          ExplicitWidth = 1135
          ExplicitHeight = 692
          inherited FrameRecordRecord: TFrameRecordRecord
            Width = 1133
            Height = 690
            ExplicitWidth = 1133
            ExplicitHeight = 690
            inherited PanelAllTask: TPanel
              Top = 520
              Width = 1133
              ExplicitTop = 520
              ExplicitWidth = 1133
              inherited DBGridAllTask: TDBGrid
                Width = 946
                TitleFont.Height = -16
              end
              inherited DBMemoTask: TDBMemo
                Left = 947
                ExplicitLeft = 947
                ExplicitTop = 1
                ExplicitHeight = 168
              end
            end
            inherited PanelRecord: TPanel
              Width = 1133
              Height = 520
              ExplicitWidth = 1133
              ExplicitHeight = 520
              inherited DBMemoRecord: TDBMemo
                Left = 947
                Height = 518
                ExplicitLeft = 947
                ExplicitHeight = 518
              end
              inherited DBGridRecord: TDBGrid
                Width = 946
                Height = 518
                TitleFont.Height = -16
              end
            end
          end
        end
        inherited PanelFun: TPanel
          Width = 1135
          ExplicitWidth = 1135
        end
      end
    end
    object cxUser: TcxTabSheet
      Caption = 'User'
      ImageIndex = 0
      OnShow = cxUserShow
      inline FrameMainUser: TFrameMainUser
        Left = 0
        Top = 0
        Width = 1135
        Height = 792
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 1135
        ExplicitHeight = 792
        inherited LbName: TLabel
          Width = 41
          Height = 19
          ExplicitWidth = 41
          ExplicitHeight = 19
        end
        inherited LbLogin: TLabel
          Width = 39
          Height = 19
          ExplicitWidth = 39
          ExplicitHeight = 19
        end
        inherited LbIDUser: TLabel
          Width = 66
          Height = 19
          ExplicitWidth = 66
          ExplicitHeight = 19
        end
        inherited LbPasswordUser: TLabel
          Width = 116
          Height = 19
          ExplicitWidth = 116
          ExplicitHeight = 19
        end
        inherited LbNewPassword: TLabel
          Width = 103
          Height = 19
          ExplicitWidth = 103
          ExplicitHeight = 19
        end
        inherited LbRepeatNewPassword: TLabel
          Width = 154
          Height = 19
          ExplicitWidth = 154
          ExplicitHeight = 19
        end
        inherited LbOldPassword: TLabel
          Width = 163
          Height = 19
          ExplicitWidth = 163
          ExplicitHeight = 19
        end
        inherited LbPathAvatarUser: TLabel
          Width = 114
          Height = 19
          ExplicitWidth = 114
          ExplicitHeight = 19
        end
        inherited EditDev: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditLogin: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditNewPassword: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditRepeatNewPassword: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited EditOldPassword: TEdit
          Height = 27
          ExplicitHeight = 27
        end
        inherited cxMemoPathAvatarUser: TcxMemo
          Lines.Strings = (
            'cxMemoPathAvatar'
            'U'
            'ser')
        end
      end
    end
  end
end
