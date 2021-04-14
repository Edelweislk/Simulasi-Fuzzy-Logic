unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, TeeProcs, TeEngine, Chart, Math;

type
  TForm4 = class(TForm)
    Image1: TImage;
    BitBtnHome: TBitBtn;
    BitBtnClose: TBitBtn;
    GroupBox1: TGroupBox;
    C_IntensitasCahaya: TChart;
    C_PerjalananCahaya: TChart;
    C_KecepatanCahaya: TChart;
    Label1: TLabel;
    Label2: TLabel;
    Edit_ubesar: TEdit;
    Edit_ukecil: TEdit;
    Label3: TLabel;
    Edit_ucepat: TEdit;
    Label4: TLabel;
    Edit_ulambat: TEdit;
    BitBtnNext: TBitBtn;
    procedure BitBtnNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;


implementation

uses Unit1,Unit2,Unit3,Unit6;
{$R *.dfm}

procedure TForm4.BitBtnNextClick(Sender: TObject);
begin
  Form4.Hide;
  Form6.Show;
end;

end.
