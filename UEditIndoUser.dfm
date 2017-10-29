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
    Top = 264
    Width = 121
    Height = 25
    Caption = 'Edit information user'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 2
  end
  object EditNewPassword: TEdit
    Left = 58
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'EditNewPassword'
  end
  object EditRepeatNewPassword: TEdit
    Left = 58
    Top = 213
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'EditRepeatNewPassword'
  end
end
