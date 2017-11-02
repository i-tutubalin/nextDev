object FrameMainUser: TFrameMainUser
  Left = 0
  Top = 0
  Width = 1040
  Height = 640
  TabOrder = 0
  object LbName: TLabel
    Left = 265
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object LbLogin: TLabel
    Left = 267
    Top = 70
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object LbIDUser: TLabel
    Left = 338
    Top = 5
    Width = 44
    Height = 13
    Caption = 'LbIDUser'
    Visible = False
  end
  object LbPasswordUser: TLabel
    Left = 338
    Top = 24
    Width = 79
    Height = 13
    Caption = 'LbPasswordUser'
    Visible = False
  end
  object LbNewPassword: TLabel
    Left = 16
    Top = 221
    Width = 70
    Height = 13
    Caption = 'New password'
  end
  object LbRepeatNewPassword: TLabel
    Left = 16
    Top = 274
    Width = 107
    Height = 13
    Caption = 'Repeat new password'
  end
  object LbOldPassword: TLabel
    Left = 14
    Top = 328
    Width = 111
    Height = 13
    Caption = 'Enter the old password'
  end
  object LbIncorrectPassword: TLabel
    Left = 141
    Top = 356
    Width = 93
    Height = 13
    Caption = 'Incorrect password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LbIncorrectRepeatPassword: TLabel
    Left = 143
    Top = 301
    Width = 128
    Height = 13
    Caption = 'Incorrect repeat password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object ImageAvatarUser: TImage
    Left = 18
    Top = 19
    Width = 241
    Height = 196
    Proportional = True
    Stretch = True
  end
  object LbPathAvatarUser: TLabel
    Left = 263
    Top = 125
    Width = 81
    Height = 13
    Caption = 'Path avatar user'
  end
  object EditDev: TEdit
    Left = 263
    Top = 43
    Width = 154
    Height = 21
    TabOrder = 0
    Text = 'EditDev'
  end
  object EditLogin: TEdit
    Left = 265
    Top = 89
    Width = 152
    Height = 21
    TabOrder = 1
    Text = 'EditLogin'
  end
  object cxBtEditInfoUser: TcxButton
    Left = 14
    Top = 375
    Width = 121
    Height = 25
    Caption = 'Edit information user'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    OptionsImage.ImageIndex = 0
    OptionsImage.Images = ModuleImg.ImageListCommon
    TabOrder = 2
    OnClick = cxBtEditInfoUserClick
  end
  object EditNewPassword: TEdit
    Left = 16
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditRepeatNewPassword: TEdit
    Left = 16
    Top = 293
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EditOldPassword: TEdit
    Left = 14
    Top = 347
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object cxMemoPathAvatarUser: TcxMemo
    Left = 263
    Top = 144
    Lines.Strings = (
      'cxMemoPathAvatarUser')
    TabOrder = 6
    Height = 25
    Width = 154
  end
  object cxBtPathAvatarUser: TcxButton
    Left = 265
    Top = 175
    Width = 152
    Height = 25
    Caption = 'Path avatar user'
    TabOrder = 7
    OnClick = cxBtPathAvatarUserClick
  end
  object OpenPictureDialogAvatar: TOpenPictureDialog
    Left = 16
    Top = 16
  end
end
