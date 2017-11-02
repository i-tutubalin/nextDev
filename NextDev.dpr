program NextDev;

uses
  Forms,
  UMain in 'starProgramm\UMain.pas' {FormMain},
  FRecordDev in 'FRecordDev.pas' {FrameRecordDev: TFrame},
  UDownload in 'UDownload.pas' {FormDownload},
  MDBControl in 'module\MDBControl.pas' {ModuleDBControl: TDataModule},
  FRecordTask in 'FRecordTask.pas' {FrameRecordTask: TFrame},
  UNewTask in 'task\UNewTask.pas' {FormNewTask},
  UDeleteTask in 'task\UDeleteTask.pas' {FormDeleteTask},
  UStartMain in 'starProgramm\UStartMain.pas' {FormStartMain},
  FMainTask in 'task\FMainTask.pas' {FrameMainTask: TFrame},
  MImg in 'module\MImg.pas' {ModuleImg: TDataModule},
  FMainUser in 'user\FMainUser.pas' {FrameMainUser: TFrame},
  FRecordRecord in 'FRecordRecord.pas' {FrameRecordRecord: TFrame},
  FMainRecord in 'record\FMainRecord.pas' {FrameMainRecord: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TModuleDBControl, ModuleDBControl);
  Application.CreateForm(TFormDownload, FormDownload);
  Application.CreateForm(TFormNewTask, FormNewTask);
  Application.CreateForm(TFormDeleteTask, FormDeleteTask);
  Application.CreateForm(TFormStartMain, FormStartMain);
  Application.CreateForm(TModuleImg, ModuleImg);
  Application.Run;
end.
