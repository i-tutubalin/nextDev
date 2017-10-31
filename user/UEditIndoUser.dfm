object FormEditInfoUser: TFormEditInfoUser
  Left = 0
  Top = 0
  Caption = 'FormEditInfoUser'
  ClientHeight = 328
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LbName: TLabel
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object LbLogin: TLabel
    Left = 10
    Top = 69
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object LbNewPassword: TLabel
    Left = 10
    Top = 125
    Width = 70
    Height = 13
    Caption = 'New password'
  end
  object LbRepeatNewPassword: TLabel
    Left = 10
    Top = 178
    Width = 107
    Height = 13
    Caption = 'Repeat new password'
  end
  object LbOldPassword: TLabel
    Left = 8
    Top = 232
    Width = 111
    Height = 13
    Caption = 'Enter the old password'
  end
  object LbIncorrectPassword: TLabel
    Left = 135
    Top = 260
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
    Left = 137
    Top = 205
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
  object EditDev: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EditDev'
  end
  object EditLogin: TEdit
    Left = 10
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EditLogin'
  end
  object cxBtEditInfoUser: TcxButton
    Left = 8
    Top = 279
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
    Left = 10
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditRepeatNewPassword: TEdit
    Left = 10
    Top = 197
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EditOldPassword: TEdit
    Left = 8
    Top = 252
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EditPasswordUser: TEdit
    Left = 152
    Top = 8
    Width = 50
    Height = 21
    TabOrder = 6
    Text = 'EditPasswordUser'
    Visible = False
  end
end
