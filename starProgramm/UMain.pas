unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FRecordTask, FRecordDev, StdCtrls, Mask, DBCtrls, Menus,
  ComCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, FMainTask, ImgList,
  FMainUser;

type
  TFormMain = class(TForm)
    cxPageControlMainMenu: TcxPageControl;
    cxMainTask: TcxTabSheet;
    cxRecord: TcxTabSheet;
    cxUser: TcxTabSheet;
    FrameMainTask: TFrameMainTask;
    FrameMainUser: TFrameMainUser;
    procedure refresh1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxUserShow(Sender: TObject);
  private
    { Private declarations }
  public
    path:string; //осярэ й й депейрнпхх опнейрю
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses UDownload, MDBControl, UNewTask, UDeleteTask, MImg, UStartMain;

{$R *.dfm}
procedure TFormMain.cxUserShow(Sender: TObject);
var
  i:integer;
begin
  //гюонкмъел хмтнплюжхч н онкэгнбюреке бньедьецн б яхярелс
  with FrameMainUser do
  begin
    LbIDUser.Caption:=FormStartMain.IdUser;
    ModuleDBControl.QueryDev.First;
    for i := 0 to StrToInt(FormStartMain.IdUser) - 1 do
      ModuleDBControl.QueryDev.Next;
    EditDev.Text:=ModuleDBControl.QueryDev.FieldByName('name').AsString;
    EditLogin.Text:=ModuleDBControl.QueryDev.FieldByName('login').AsString;
    LbPasswordUser.Caption:=ModuleDBControl.QueryDev.FieldByName('password').AsString;

    cxMemoPathAvatarUser.Text:=ModuleDBControl.QueryDev.FieldByName('avatar').AsString;
    if cxMemoPathAvatarUser.Text = '' then
      ImageAvatarUser.Picture.LoadFromFile(path + 'ХЙНМЙХ\dev.jpg')
    else
      ImageAvatarUser.Picture.LoadFromFile(cxMemoPathAvatarUser.Text);

    //саепюел опедсопефдемхе на ньхайюу
    LbIncorrectPassword.Visible:=false;
    LbIncorrectRepeatPassword.Visible:=false;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  //осярэ й й депейрнпхх опнейрю
  path:= ExtractFilePath(Application.ExeName);
end;

procedure TFormMain.refresh1Click(Sender: TObject);
begin
  //намнбкемхе ад
  ModuleDBControl.QueryTask.Refresh;
  ModuleDBControl.QueryDev.Refresh;
  ModuleDBControl.QueryRec.Refresh;
end;

end.
