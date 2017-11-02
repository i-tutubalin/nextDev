object FrameRecordRecord: TFrameRecordRecord
  Left = 0
  Top = 0
  Width = 600
  Height = 450
  TabOrder = 0
  object PanelAllTask: TPanel
    Left = 0
    Top = 280
    Width = 600
    Height = 170
    Align = alBottom
    TabOrder = 0
    object DBGridAllTask: TDBGrid
      Left = 1
      Top = 1
      Width = 413
      Height = 168
      Align = alClient
      DataSource = ModuleDBControl.DSTask
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
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
          Width = 150
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
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idDev'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dateEnd'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'dateNext'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'typeTask'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nameDev'
          Width = 100
          Visible = True
        end>
    end
    object DBMemoTask: TDBMemo
      Left = 414
      Top = 1
      Width = 185
      Height = 168
      Align = alRight
      DataField = 'task'
      DataSource = ModuleDBControl.DSTask
      ReadOnly = True
      TabOrder = 1
      ExplicitLeft = 208
      ExplicitTop = 40
      ExplicitHeight = 89
    end
  end
  object PanelRecord: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 280
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 208
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBMemoRecord: TDBMemo
      Left = 414
      Top = 1
      Width = 185
      Height = 278
      Align = alRight
      DataField = 'record'
      DataSource = ModuleDBControl.DSRec
      ReadOnly = True
      TabOrder = 0
      ExplicitLeft = 420
      ExplicitTop = -3
    end
    object DBGridRecord: TDBGrid
      Left = 1
      Top = 1
      Width = 413
      Height = 278
      Align = alClient
      DataSource = ModuleDBControl.DSRec
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nameRecord'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'record'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idDev'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nameDev'
          Visible = False
        end>
    end
  end
end
