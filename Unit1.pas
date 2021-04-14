unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3,Unit2;

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Form1.Hide;
  Form3.Show;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Form1.Hide;
  Form2.Show;
end;

end.
