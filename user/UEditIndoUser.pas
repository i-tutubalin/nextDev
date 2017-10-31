unit UEditIndoUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, cxButtons;

type
  TFormEditInfoUser = class(TForm)
    EditDev: TEdit;
    EditLogin: TEdit;
    LbName: TLabel;
    LbLogin: TLabel;
    cxBtEditInfoUser: TcxButton;
    EditNewPassword: TEdit;
    LbNewPassword: TLabel;
    EditRepeatNewPassword: TEdit;
    LbRepeatNewPassword: TLabel;
    LbOldPassword: TLabel;
    EditOldPassword: TEdit;
    LbIncorrectPassword: TLabel;
    EditPasswordUser: TEdit;
    LbIncorrectRepeatPassword: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cxBtEditInfoUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditInfoUser: TFormEditInfoUser;

implementation

uses FMainUser, UMain, UStartMain, MImg, MDBControl;

{$R *.dfm}

procedure TFormEditInfoUser.cxBtEditInfoUserClick(Sender: TObject);
var
  i: integer;
begin
  //янупюмъел хглемеммсч хмтнплюжхч н онкэгнбюреке
  //еякх онкэгнбюрекэ бепмн ббек оюпнкэ
  if EditOldPassword.Text = EditPasswordUser.Text then
  begin
    ModuleDBControl.QueryDev.First;
    for i := 0 to StrToInt(FormStartMain.IdUser) - 1 do
      ModuleDBControl.QueryDev.Next;

    ModuleDBControl.QueryDev.Edit;
    ModuleDBControl.QueryDev.FieldByName('name').AsString := EditDev.Text;
    ModuleDBControl.QueryDev.FieldByName('login').AsString := EditLogin.Text;

    if (EditNewPassword.Text <> '') or (EditRepeatNewPassword.Text <> '') then
    begin
      if EditNewPassword.Text = EditRepeatNewPassword.Text then
        ModuleDBControl.QueryDev.FieldByName('password').AsString := EditNewPassword.Text
      else
        LbIncorrectRepeatPassword.Visible := true;
    end;

    ModuleDBControl.QueryDev.Post;
    FormEditInfoUser.Close;
  end
  else
  begin
    LbIncorrectPassword.Visible := true;
  end;
end;

procedure TFormEditInfoUser.FormShow(Sender: TObject);
begin
  //гюонкмъел хмтнплюжхч н онкэгнбюреке бньедьецн б яхярелс
  EditLogin.text:=FormStartMain.DBCBReadLogin.Items[StrToInt(FormStartMain.IdUser)];
  EditDev.text:=FormStartMain.DBCBName.Items[StrToInt(FormStartMain.IdUser)];
  EditPasswordUser.Text:=FormStartMain.DBCBReadPassword.Items[StrToInt(FormStartMain.IdUser)];
end;

end.
