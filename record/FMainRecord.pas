unit FMainRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, FRecordRecord, StdCtrls;

type
  TFrameMainRecord = class(TFrame)
    PanelFun: TPanel;
    PanelRecord: TPanel;
    FrameRecordRecord: TFrameRecordRecord;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MDBControl, UStartMain;

{$R *.dfm}

end.
