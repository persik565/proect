unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, sqldb, mysql55conn, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
  procedure TForm1.Button1Click(Sender: TObject);
  var aa:string;
  begin
    aa:='select * from ludi where id_cheloveka>=1';
   if CheckBox1.Checked=true then aa:=aa+ ' and rebenok1 LIKE "' + Edit1.Text + '%"' ;
   if CheckBox2.Checked=true then aa:=aa+ ' and rebenok2 LIKE "' + Edit2.Text + '%"';
   if CheckBox3.Checked=true then aa:=aa+ ' and rebenok3 LIKE "' + Edit3.Text+ '%"';
   if CheckBox4.Checked=true then aa:=aa+ ' and rebenok1 LIKE "' + Edit4.Text+ '%"';
    Form1.SQLQuery1.Close;
    Form1.SQLQuery1.SQL.Clear;
    Form1.SQLQuery1.SQL.Add(aa);
    Form1.SQLQuery1.ExecSQL;
    Form1.SQLTransaction1.Commit;
    Form1.SQLQuery1.Active:=True;
  end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.Show
end;

procedure TForm1.Button3Click(Sender: TObject);
var a:string;
begin
  a:= 'select * from ludi';
  SQLQuery1.Close;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add(a);
  SQLQuery1.ExecSQL;
  SQLTransaction1.Commit;
  SQLQuery1.Active:=True;

end;


procedure TForm1.Edit5Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.WindowState:=wsMaximized;

end;

end.

