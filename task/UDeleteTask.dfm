object FormDeleteTask: TFormDeleteTask
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Delete record'
  ClientHeight = 46
  ClientWidth = 346
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
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 46
    Align = alClient
    TabOrder = 0
    object LbReadPassworld: TLabel
      Left = 1
      Top = 1
      Width = 344
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 'Read password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 107
    end
    object EditReadPassword: TEdit
      Left = 1
      Top = 20
      Width = 272
      Height = 25
      Align = alLeft
      TabOrder = 0
      Text = 'EditReadPassword'
      OnKeyPress = EditReadPasswordKeyPress
      ExplicitHeight = 21
    end
    object cxBtReadPassword: TcxButton
      Left = 270
      Top = 20
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Output'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = ModuleImg.ImageListCommon
      TabOrder = 1
      OnClick = cxBtReadPasswordClick
    end
  end
end
