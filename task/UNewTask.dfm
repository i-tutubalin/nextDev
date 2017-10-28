object FormNewTask: TFormNewTask
  Left = 0
  Top = 0
  Caption = 'FormNewTask'
  ClientHeight = 450
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GBRecord: TGroupBox
    Left = 0
    Top = 0
    Width = 400
    Height = 185
    Align = alTop
    TabOrder = 0
    DesignSize = (
      400
      185)
    object LbNameTask: TLabel
      Left = 5
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Name Task'
    end
    object LbStatus: TLabel
      Left = 5
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object LbNameDev: TLabel
      Left = 171
      Top = 49
      Width = 48
      Height = 13
      Caption = 'Name dev'
    end
    object LbDateNext: TLabel
      Left = 5
      Top = 100
      Width = 49
      Height = 13
      Caption = 'Date Next'
    end
    object LbDateEnd: TLabel
      Left = 170
      Top = 100
      Width = 44
      Height = 13
      Caption = 'Date end'
    end
    object LbTypeTask: TLabel
      Left = 170
      Top = 140
      Width = 47
      Height = 13
      Caption = 'Type task'
    end
    object LbIdDev: TLabel
      Left = 243
      Top = 48
      Width = 29
      Height = 13
      Caption = 'id dev'
    end
    object DBEditNameTask: TDBEdit
      Left = 5
      Top = 20
      Width = 390
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'nameTask'
      DataSource = ModuleDBControl.DSTask
      TabOrder = 0
    end
    object DBCBStatus: TDBComboBox
      Left = 5
      Top = 70
      Width = 120
      Height = 21
      DataField = 'status'
      DataSource = ModuleDBControl.DSTask
      Items.Strings = (
        '-'
        #1085#1072#1079#1085#1072#1095#1077#1085#1086
        #1075#1086#1090#1086#1074#1086
        #1074' '#1088#1072#1079#1088#1072#1073#1086#1090#1082#1077
        #1090#1077#1089#1090)
      TabOrder = 1
    end
    object DateTimePickerDateNext: TDateTimePicker
      Left = 5
      Top = 115
      Width = 120
      Height = 21
      Date = 43031.544004930550000000
      Time = 43031.544004930550000000
      TabOrder = 2
      OnChange = DateTimePickerDateNextChange
    end
    object DateTimePickerDateEnd: TDateTimePicker
      Left = 170
      Top = 115
      Width = 120
      Height = 21
      Date = 43031.544004930550000000
      Time = 43031.544004930550000000
      TabOrder = 3
      OnChange = DateTimePickerDateEndChange
    end
    object DBEditIdDev: TDBEdit
      Left = 250
      Top = 70
      Width = 40
      Height = 21
      DataField = 'idDev'
      DataSource = ModuleDBControl.DSTask
      Enabled = False
      TabOrder = 4
    end
    object CBIdDev: TComboBox
      Left = 305
      Top = 70
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 5
      Visible = False
    end
    object DBCBNameDev: TDBComboBox
      Left = 170
      Top = 70
      Width = 70
      Height = 21
      DataField = 'nameDev'
      DataSource = ModuleDBControl.DSTask
      TabOrder = 6
      OnChange = DBCBNameDevChange
    end
    object DBCBTypeTask: TDBComboBox
      Left = 170
      Top = 155
      Width = 120
      Height = 21
      DataField = 'typeTask'
      DataSource = ModuleDBControl.DSTask
      Items.Strings = (
        #1079#1072#1103#1074#1082#1072
        #1086#1096#1080#1073#1082#1072
        #1088#1077#1092#1072#1082#1090#1086#1088#1080#1085#1075
        #1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
        #1076#1086#1082#1091#1084#1077#1085#1090#1072#1094#1080#1103)
      TabOrder = 7
    end
  end
  object GBTask: TGroupBox
    Left = 0
    Top = 185
    Width = 400
    Height = 224
    Align = alClient
    Caption = 'Task'
    TabOrder = 1
    object DBMemoTask: TDBMemo
      Left = 2
      Top = 15
      Width = 396
      Height = 207
      Align = alClient
      DataField = 'task'
      DataSource = ModuleDBControl.DSTask
      TabOrder = 0
    end
  end
  object PanelSaveAndExit: TPanel
    Left = 0
    Top = 409
    Width = 400
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxBtSaveEndExit: TcxButton
      Left = 1
      Top = 1
      Width = 398
      Height = 39
      Align = alClient
      Caption = 'Save end exit'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = ModuleImg.ImageListCommon
      TabOrder = 0
      OnClick = cxBtSaveEndExitClick
    end
  end
end
