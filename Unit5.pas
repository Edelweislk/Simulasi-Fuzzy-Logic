unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls, jpeg,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Edit_namarules: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit_param1: TEdit;
    Edit_valparam1: TEdit;
    Edit_param2: TEdit;
    Edit_valparam2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1,Unit3;
{$R *.dfm}

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
  Form5.Hide;
  Form1.Show;
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
  close;
end;

end.
