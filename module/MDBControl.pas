unit MDBControl;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TModuleDBControl = class(TDataModule)
    DSDev: TDataSource;
    ConDBNextDev: TADOConnection;
    QueryTask: TADOQuery;
    DSTask: TDataSource;
    QueryDev: TADOQuery;
    QueryTaskid: TAutoIncField;
    QueryTasknameTask: TWideStringField;
    QueryTasktask: TWideStringField;
    QueryTaskstatus: TWideStringField;
    QueryTaskidDev: TIntegerField;
    QueryTaskdateEnd: TDateTimeField;
    QueryTaskdateNext: TDateTimeField;
    QueryTasktypeTask: TWideStringField;
    QueryTasknameDev: TWideStringField;
    QueryDevid: TAutoIncField;
    QueryDevname: TWideStringField;
    QueryDevlogin: TWideStringField;
    QueryDevpassword: TWideStringField;
    QueryRec: TADOQuery;
    DataSource1: TDataSource;
    QueryRecid: TAutoIncField;
    QueryRecnameRecord: TWideStringField;
    QueryRecrecord: TWideStringField;
    QueryRecidDev: TIntegerField;
    QueryRecnameDev: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuleDBControl: TModuleDBControl;

implementation

{$R *.dfm}

end.
