object FrameRecordDev: TFrameRecordDev
  Left = 0
  Top = 0
  Width = 1200
  Height = 200
  TabOrder = 0
  object DBGridDev: TDBGrid
    Left = 0
    Top = 0
    Width = 1200
    Height = 200
    Align = alClient
    DataSource = ModuleDBControl.DSDev
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
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
        FieldName = 'name'
        Width = 150
        Visible = True
      end>
  end
end
