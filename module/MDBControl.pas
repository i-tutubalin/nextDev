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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuleDBControl: TModuleDBControl;

implementation

uses UMain;

{$R *.dfm}

procedure TModuleDBControl.DataModuleCreate(Sender: TObject);
begin
  //ÏÎÄÊËÞ×ÅÍÈÅ Ê ÁÄ
  QueryDev.Active:=false;
  QueryTask.Active:=false;
  QueryRec.Active:=false;

  ConDBNextDev.Connected:=false;
  ConDBNextDev.ConnectionString:=
    'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+
    FormMain.path+'ÁÄ\Database1.mdb;'+
    'Mode=Share Deny None;Jet OLEDB:SFP=False;';
  ConDBNextDev.Connected:=true;

  QueryDev.Active:=true;
  QueryTask.Active:=true;
  QueryRec.Active:=true;
end;

end.
