unit UStartMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons;

type
  TFormStartMain = class(TForm)
    EditReadPassword: TEdit;
    EditReadLogin: TEdit;
    DBCBReadLogin: TDBComboBox;
    DBCBReadPassword: TDBComboBox;
    cxBtReadPassword: TcxButton;
    LbReadPassword: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtReadPasswordClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStartMain: TFormStartMain;

implementation

uses MDBControl, UMain, UDownload, MImg;

{$R *.dfm}

procedure TFormStartMain.cxBtReadPasswordClick(Sender: TObject);
  var
    login: boolean;
    password: boolean;
    i: integer;
begin
  //œ–Œ¬≈–ﬂ≈Ã œ–¿¬À‹ÕŒ—“‹ ¬¬≈ƒ≈ÕŒ√Œ ÀŒ√»Õ¿ » œ¿–ŒÀﬂ
  login := false;
  password := false;
  for  i := 0 to ModuleDBControl.QueryDev.RecordCount - 1 do
  begin
    if  EditReadLogin.Text = DBCBReadLogin.items[i] then
      login := true
    else login := false;
    if EditReadPassword.Text = DBCBReadPassword.Items[i] then
      password := true
    else password := false;
    if login and password then
    begin
      FormMain.Enabled := true;
      FormMain.Visible := true;
      FormStartMain.Hide;
      FormDownload.TimerDownload.Enabled := true;
    end
    else
    begin
      LbReadPassword.Font.Color := clRed;
      LbReadPassword.Caption := 'Wrong password. Try again.';
    end;
  end;
  EditReadPassword.Text := '';
end;

procedure TFormStartMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormMain.Close;
end;

procedure TFormStartMain.FormCreate(Sender: TObject);
 var
  login, password: String;
  i: integer;
begin
  FormMain.Enabled := false;
  FormMain.Visible := false;
  //«¿œŒÀÕﬂ≈Ã —œ»—Œ  œ–¿¬»À‹Õ€’ ÀŒ√»ÕŒ¬ » œ¿–ŒÀ≈…
  DBCBReadLogin.Items.Clear;
  DBCBReadPassword.Items.Clear;
  ModuleDBControl.QueryDev.First;
  for  i := 0 to ModuleDBControl.QueryDev.RecordCount - 1 do
  begin
    login := ModuleDBControl.QueryDev.FieldByName('login').AsString;
    DBCBReadLogin.AddItem(login, self);
    password := ModuleDBControl.QueryDev.FieldByName('password').AsString;
    DBCBReadPassword.AddItem(password, self);
    ModuleDBControl.QueryDev.Next;
  end;
end;

end.
