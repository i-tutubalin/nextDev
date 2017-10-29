object FrameMainUser: TFrameMainUser
  Left = 0
  Top = 0
  Width = 1040
  Height = 640
  TabOrder = 0
  object LbName: TLabel
    Left = 72
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object LbLogin: TLabel
    Left = 74
    Top = 78
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object LbIDUser: TLabel
    Left = 307
    Top = 3
    Width = 44
    Height = 13
    Caption = 'LbIDUser'
    Visible = False
  end
  object LbLoginUser: TLabel
    Left = 72
    Top = 97
    Width = 58
    Height = 13
    Caption = 'LbLoginUser'
  end
  object LbNameUser: TLabel
    Left = 72
    Top = 43
    Width = 60
    Height = 13
    Caption = 'LbNameUser'
  end
  object LbPasswordUser: TLabel
    Left = 307
    Top = 22
    Width = 79
    Height = 13
    Caption = 'LbPasswordUser'
    Visible = False
  end
  object cxBtEditInfoUser: TcxButton
    Left = 72
    Top = 137
    Width = 193
    Height = 25
    Caption = 'Edit information user'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    OptionsImage.ImageIndex = 0
    OptionsImage.Images = ModuleImg.ImageListCommon
    TabOrder = 0
    OnClick = cxBtEditInfoUserClick
  end
end
