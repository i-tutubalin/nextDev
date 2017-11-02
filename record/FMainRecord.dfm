object FrameMainRecord: TFrameMainRecord
  Left = 0
  Top = 0
  Width = 600
  Height = 600
  TabOrder = 0
  object PanelRecord: TPanel
    Left = 0
    Top = 100
    Width = 600
    Height = 500
    Align = alClient
    TabOrder = 0
    inline FrameRecordRecord: TFrameRecordRecord
      Left = 1
      Top = 1
      Width = 598
      Height = 498
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 598
      ExplicitHeight = 498
      inherited PanelAllTask: TPanel
        Top = 328
        Width = 598
      end
      inherited PanelRecord: TPanel
        Width = 598
        Height = 328
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 598
        ExplicitHeight = 328
        inherited DBMemoRecord: TDBMemo
          Left = 412
          Height = 326
          ExplicitLeft = 412
          ExplicitTop = 1
          ExplicitHeight = 326
        end
        inherited DBGridRecord: TDBGrid
          Width = 411
          Height = 326
        end
      end
    end
  end
  object PanelFun: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 100
    Align = alTop
    TabOrder = 1
  end
end
