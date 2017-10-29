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
    path:string;
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses UDownload, MDBControl, UNewTask, UDeleteTask, MImg, UStartMain;

{$R *.dfm}
procedure TFormMain.cxUserShow(Sender: TObject);
begin
  //«¿œŒÀÕﬂ≈Ã »Õ‘Œ–Ã¿÷»ﬁ Œ œŒÀ‹«Œ¬¿“≈À≈
  FrameMainUser.LbIDUser.Caption:=FormStartMain.IdUser;
  FrameMainUser.LbLoginUser.Caption:=FormStartMain.DBCBReadLogin.Items[StrToInt(FormStartMain.IdUser)];
  FrameMainUser.LbNameUser.Caption:=FormStartMain.DBCBName.Items[StrToInt(FormStartMain.IdUser)];
  FrameMainUser.LbPasswordUser.Caption:=FormStartMain.DBCBReadPassword.Items[StrToInt(FormStartMain.IdUser)];
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  //œ”—“‹     ƒ≈–≈ “Œ–»» œ–Œ≈ “¿
  path:= ExtractFilePath(Application.ExeName);
end;

procedure TFormMain.refresh1Click(Sender: TObject);
begin
  //Œ¡ÕŒ¬À≈Õ»≈ ¡ƒ
  ModuleDBControl.QueryTask.Refresh;
  ModuleDBControl.QueryDev.Refresh;
end;

end.
