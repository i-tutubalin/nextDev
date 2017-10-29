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
    Top = 62
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object LbLoginUser: TLabel
    Left = 74
    Top = 81
    Width = 49
    Height = 13
    Caption = 'Login user'
  end
  object LbNameUser: TLabel
    Left = 72
    Top = 43
    Width = 51
    Height = 13
    Caption = 'Name user'
  end
  object cxBtEditInfoUser: TcxButton
    Left = 72
    Top = 113
    Width = 193
    Height = 25
    Caption = 'Edit information user'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 0
    OnClick = cxBtEditInfoUserClick
  end
end
