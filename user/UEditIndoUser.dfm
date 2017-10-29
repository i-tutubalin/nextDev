object FormEditInfoUser: TFormEditInfoUser
  Left = 0
  Top = 0
  Caption = 'FormEditInfoUser'
  ClientHeight = 328
  ClientWidth = 280
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
    Left = 56
    Top = 24
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object LbLogin: TLabel
    Left = 58
    Top = 85
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object LbNewPassword: TLabel
    Left = 58
    Top = 141
    Width = 70
    Height = 13
    Caption = 'New password'
  end
  object LbRepeatNewPassword: TLabel
    Left = 58
    Top = 194
    Width = 107
    Height = 13
    Caption = 'Repeat new password'
  end
  object LbOldPassword: TLabel
    Left = 56
    Top = 248
    Width = 111
    Height = 13
    Caption = 'Enter the old password'
  end
  object LbIncorrectPassword: TLabel
    Left = 183
    Top = 276
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
  object EditDev: TEdit
    Left = 56
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EditDev'
  end
  object EditLogin: TEdit
    Left = 58
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EditLogin'
  end
  object cxBtEditInfoUser: TcxButton
    Left = 56
    Top = 295
    Width = 121
    Height = 25
    Caption = 'Edit information user'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 2
    OnClick = cxBtEditInfoUserClick
  end
  object EditNewPassword: TEdit
    Left = 58
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditRepeatNewPassword: TEdit
    Left = 58
    Top = 213
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EditOldPassword: TEdit
    Left = 56
    Top = 268
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EditPasswordUser: TEdit
    Left = 0
    Top = 268
    Width = 50
    Height = 21
    TabOrder = 6
    Text = 'EditPasswordUser'
    Visible = False
  end
end
