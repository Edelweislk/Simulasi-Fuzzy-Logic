unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Unit1;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
   Form2.Hide;
   Form1.Show;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
 Close;
end;

end.
