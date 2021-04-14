unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons,Math;

type
  TForm6 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Implikasi: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit_imp1: TEdit;
    Edit_imp2: TEdit;
    Edit_imp3: TEdit;
    Edit_imp4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit_FR1: TEdit;
    Edit_FR2: TEdit;
    Edit_FR3: TEdit;
    Edit_FR4: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Edit_KomTinggi: TEdit;
    Edit_KomRendah: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn1: TBitBtn;
    Edit_g1: TEdit;
    Edit_g2: TEdit;
    Edit_g3: TEdit;
    Edit_g4: TEdit;
    Edit_g5: TEdit;
    Edit_g6: TEdit;
    Edit_g7: TEdit;
    Edit_g8: TEdit;
    Edit_g9: TEdit;
    Edit_g10: TEdit;
    Label16: TLabel;
    BitBtn2: TBitBtn;
    Edit_hasilakhir: TEdit;
    BitBtnClose: TBitBtn;
    BitBtnClear: TBitBtn;
    BitBtnHome: TBitBtn;
    procedure BitBtnHomeClick(Sender: TObject);
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit1, Unit3, Unit4;
{$R *.dfm}

procedure TForm6.BitBtnHomeClick(Sender: TObject);
begin
  Form6.Hide;
  Form1.Show;
end;

procedure TForm6.BitBtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
var
  g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,tinggi,rendah :Integer;
begin
 tinggi:= StrToInt(Edit_KomTinggi.Text);
 rendah:= StrToInt(Edit_KomRendah.Text);
 g1:= RandomRange(tinggi,rendah);
 g2:= RandomRange(tinggi,rendah);
 g3:= RandomRange(tinggi,rendah);
 g4:= RandomRange(tinggi,rendah);
 g5:= RandomRange(tinggi,rendah);
 g6:= RandomRange(tinggi,rendah);
 g7:= RandomRange(tinggi,rendah);
 g8:= RandomRange(tinggi,rendah);
 g9:= RandomRange(tinggi,rendah);
 g10:= RandomRange(tinggi,rendah);

 Edit_g1.Text := IntToStr(g1);
 Edit_g2.Text := IntToStr(g2);
 Edit_g3.Text := IntToStr(g3);
 Edit_g4.Text := IntToStr(g4);
 Edit_g5.Text := IntToStr(g5);
 Edit_g6.Text := IntToStr(g6);
 Edit_g7.Text := IntToStr(g7);
 Edit_g8.Text := IntToStr(g8);
 Edit_g9.Text := IntToStr(g9);
 Edit_g10.Text := IntToStr(g10);

end;

procedure TForm6.BitBtn2Click(Sender: TObject);
var
  HTinggi,HRendah ,HasilAkhir:Single ;
  c1,c2,c3,c4,c5,c6,c7,c8,c9,c10 :Integer;
begin
  C1 := StrToInt(Edit_g1.Text);
  C2 := StrToInt(Edit_g2.Text);
  C3 := StrToInt(Edit_g3.Text);
  C4 := StrToInt(Edit_g4.Text);
  C5 := StrToInt(Edit_g5.Text);
  C6 := StrToInt(Edit_g6.Text);
  C7 := StrToInt(Edit_g7.Text);
  C8 := StrToInt(Edit_g8.Text);
  C9 := StrToInt(Edit_g9.Text);
  C10 := StrToInt(Edit_g10.Text);
  HTinggi := StrToFloat(Edit_KomTinggi.Text);
  HRendah := StrToFloat(Edit_KomRendah.Text);

  HasilAkhir := Round ((((C1+c2+c3+c4+c5)*HTinggi+(C6+c7+c8+c9+c10)*
  HRendah)/((HTinggi*5)+(HRendah*5))));
  edit_HasilAkhir.Text := FloatToStr(HasilAkhir) ;
end;

end.
