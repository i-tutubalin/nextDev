unit UDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, ExtCtrls, ComCtrls;

type
  TFormDownload = class(TForm)
    ProgressBarDownload: TProgressBar;
    TimerDownload: TTimer;
    procedure TimerDownloadTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDownload: TFormDownload;
implementation

{$R *.dfm}

procedure TFormDownload.TimerDownloadTimer(Sender: TObject);
begin
  //»ƒ≈“ «¿√–”« ¿ œŒ ¿ Õ≈ ¡”ƒ≈“ 100%
  ProgressBarDownload.Position := ProgressBarDownload.Position + 2;
  if ProgressBarDownload.Position = ProgressBarDownload.Max then
    FormDownload.Close;
end;

end.
