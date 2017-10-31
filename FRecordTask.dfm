object FrameRecordTask: TFrameRecordTask
  Left = 0
  Top = 0
  Width = 1200
  Height = 400
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 927
    Top = 0
    Height = 400
    Align = alRight
    ExplicitLeft = 824
    ExplicitTop = 144
    ExplicitHeight = 100
  end
  object DBGridTask: TDBGrid
    Left = 0
    Top = 0
    Width = 927
    Height = 400
    Align = alClient
    Color = clBtnFace
    DataSource = ModuleDBControl.DSTask
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold, toSmoothScrolling]
    OnDblClick = DBGridTaskDblClick
    OnTitleClick = DBGridTaskTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nameTask'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'task'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateEnd'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateNext'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'typeTask'
        Width = 120
        Visible = True
      end>
  end
  object DBMemoTask: TDBMemo
    Left = 930
    Top = 0
    Width = 270
    Height = 400
    Align = alRight
    DataField = 'task'
    DataSource = ModuleDBControl.DSTask
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    ExplicitHeight = 300
  end
end
