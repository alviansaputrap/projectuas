unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  DBCtrls, LR_Class, LR_DBSet, ZConnection, ZDataset;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    ZConnection1: TZConnection;
    ZConnection2: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZConnection1AfterConnect(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.ZConnection1AfterConnect(Sender: TObject);
begin

end;

procedure TForm5.Button1Click(Sender: TObject);
  var
  s:string;
begin
  s:=extractfilepath(application.ExeName)+'laporan.lrf';
  frDBDataset1.DataSet:=ZQuery1;
  frReport1.Dataset:=frDBDataset1;
  frReport1.LoadFromFile(s);
  frReport1.ShowReport
end;

end.

