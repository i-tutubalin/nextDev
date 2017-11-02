unit FRecordRecord;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls;

type
  TFrameRecordRecord = class(TFrame)
    DBGridRecord: TDBGrid;
    PanelAllTask: TPanel;
    DBMemoRecord: TDBMemo;
    DBGridAllTask: TDBGrid;
    DBMemoTask: TDBMemo;
    PanelRecord: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MDBControl;

{$R *.dfm}

end.
