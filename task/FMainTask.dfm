object FrameMainTask: TFrameMainTask
  Left = 0
  Top = 0
  Width = 1042
  Height = 667
  PopupMenu = PMMain
  TabOrder = 0
  object Splitter2: TSplitter
    Left = 0
    Top = 362
    Width = 1042
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 364
  end
  object PanelFun: TPanel
    Left = 0
    Top = 0
    Width = 1042
    Height = 153
    Align = alTop
    TabOrder = 0
    object LbSortStatus: TLabel
      Left = 115
      Top = 10
      Width = 53
      Height = 13
      Caption = 'Sort status'
    end
    object CBSortStatus: TComboBox
      Left = 115
      Top = 25
      Width = 120
      Height = 22
      Style = csOwnerDrawVariable
      TabOrder = 0
      OnChange = CBSortStatusChange
      Items.Strings = (
        '-'
        #1085#1072#1079#1085#1072#1095#1077#1085#1086
        #1075#1086#1090#1086#1074#1086
        #1074' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1077
        #1090#1077#1089#1090)
    end
    object cxBtAddRecord: TcxButton
      Left = 5
      Top = 5
      Width = 100
      Height = 25
      Caption = 'Add record'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = ModuleImg.ImageListMainTask
      TabOrder = 1
      OnClick = cxBtAddRecordClick
    end
    object cxBtEditRecord: TcxButton
      Left = 5
      Top = 35
      Width = 100
      Height = 25
      Caption = 'Edit record'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = ModuleImg.ImageListMainTask
      TabOrder = 2
      OnClick = cxBtEditRecordClick
    end
    object cxBtDeleteRecord: TcxButton
      Left = 5
      Top = 65
      Width = 100
      Height = 25
      Caption = 'Delete record'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = ModuleImg.ImageListMainTask
      TabOrder = 3
      OnClick = cxBtDeleteRecordClick
    end
  end
  object PanelDev: TPanel
    Left = 0
    Top = 153
    Width = 1042
    Height = 209
    Align = alClient
    TabOrder = 1
    inline FrameRecordDev: TFrameRecordDev
      Left = 1
      Top = 1
      Width = 1040
      Height = 207
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1040
      ExplicitHeight = 207
      inherited DBGridDev: TDBGrid
        Width = 1040
        Height = 207
      end
    end
  end
  object PanelTask: TPanel
    Left = 0
    Top = 367
    Width = 1042
    Height = 300
    Align = alBottom
    PopupMenu = PMPanelTask
    TabOrder = 2
    inline FrameRecordTask: TFrameRecordTask
      Left = 1
      Top = 1
      Width = 1040
      Height = 298
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1040
      ExplicitHeight = 298
      inherited Splitter1: TSplitter
        Left = 767
        Height = 298
        ExplicitLeft = 757
        ExplicitTop = 0
        ExplicitHeight = 298
      end
      inherited DBGridTask: TDBGrid
        Width = 767
        Height = 298
      end
      inherited DBMemoTask: TDBMemo
        Left = 770
        Height = 298
        ExplicitLeft = 770
        ExplicitHeight = 298
      end
    end
  end
  object DBEditRelationsTableDevAndTask: TDBEdit
    Left = 72
    Top = 184
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = ModuleDBControl.DSDev
    TabOrder = 3
    Visible = False
    OnChange = DBEditRelationsTableDevAndTaskChange
  end
  object PMMain: TPopupMenu
    Images = ModuleImg.ImageListMainTask
    Left = 536
    Top = 56
    object refresh1: TMenuItem
      Caption = 'refresh'
      ImageIndex = 3
      OnClick = refreshClick
    end
  end
  object PMPanelTask: TPopupMenu
    Images = ModuleImg.ImageListMainTask
    Left = 600
    Top = 56
    object refresh2: TMenuItem
      Caption = 'refresh'
      ImageIndex = 3
      OnClick = refreshClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object addrecord2: TMenuItem
      Caption = 'add record'
      ImageIndex = 0
      OnClick = cxBtAddRecordClick
    end
    object editrecord2: TMenuItem
      Caption = 'edit record'
      ImageIndex = 2
      OnClick = cxBtEditRecordClick
    end
    object deleterecord2: TMenuItem
      Caption = 'delete record'
      ImageIndex = 1
      OnClick = cxBtDeleteRecordClick
    end
  end
end
