unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls,
  FireDAC.VCLUI.Login, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.UI,
  FireDAC.VCLUI.Wait, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Vcl.DBCtrls,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    Button1: TButton;
    Label1: TLabel;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDUpdateSQL1: TFDUpdateSQL;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BindSourceDB1: TBindSourceDB;
    DBText1: TDBText;
    TreeView1: TTreeView;
    BindingsList1: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    ListView1: TListView;
    FDQuery2: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    procedure Button1Click(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
FDConnection1.Connected:=true;
end;

procedure TForm1.FDConnection1AfterConnect(Sender: TObject);
begin
label1.caption:='conectado';
end;

end.
