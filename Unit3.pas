unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons,Math;

type
  TForm3 = class(TForm)
    Image1: TImage;
    BitBtnhome: TBitBtn;
    BitBtnclose: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit_IntensitasCahaya: TEdit;
    Edit_PerjalananCahaya: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit_ICBesar: TEdit;
    Edit_ICKecil: TEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit_PCCepat: TEdit;
    Edit_PCLambat: TEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Edit_KPTinggi: TEdit;
    Edit_KPRendah: TEdit;
    BitBtn_prosesfuzzy: TBitBtn;
    procedure BitBtncloseClick(Sender: TObject);
    procedure BitBtnhomeClick(Sender: TObject);
    procedure BitBtn_prosesfuzzyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  IntensitasCahaya, PerjalananCahaya, ICBesar, ICKecil, PCCepat,PCLambat,KPTinggi,KPRendah : Real;


implementation
uses Unit1,Unit4,Unit5, Unit6;

{$R *.dfm}

procedure TForm3.BitBtncloseClick(Sender: TObject);
begin
Close;
end;

procedure TForm3.BitBtnhomeClick(Sender: TObject);
begin
  Form3.Hide;
  Form1.Show;
end;

procedure TForm3.BitBtn_prosesfuzzyClick(Sender: TObject);
var
   ubesar,ukecil,ucepat,ulambat:Single;
  FR1,FR2,FR3,FR4 : Single;
  KomTinggi,KomRendah : Single;
begin
  Form3.Hide;
  Form4.Show;

  //----------input data-----------------

  IntensitasCahaya :=  StrToFloat(Edit_IntensitasCahaya.Text);
  PerjalananCahaya :=  StrToFloat(Edit_PerjalananCahaya.Text);
  ICBesar          :=  StrToFloat(Edit_ICBesar.Text);
  ICKecil          :=  StrToFloat(Edit_ICKecil.Text);
  PCCepat          :=  StrToFloat(Edit_PCCepat.Text);
  PCLambat         :=  StrToFloat(Edit_PCLambat.Text);
  KPTinggi         :=  StrToFloat(Edit_KPTinggi.Text);
  KPRendah         :=  StrToFloat(Edit_KPRendah.Text);

  //--------Fuzzifikasi----------------
   Form4.Edit_ubesar.Text := FloatToStr((-(IntensitasCahaya - ICBesar))/(ICBesar - ICKecil));
   Form4.Edit_ukecil.Text := FloatToStr((IntensitasCahaya- ICKecil)/(ICBesar- ICKecil));
   Form4.Edit_ucepat.Text := FloatToStr((-(PerjalananCahaya - PCCepat)) /(PCCepat - PCLambat));
   Form4.Edit_ulambat.Text := FloatToStr((PerjalananCahaya - PCLambat)/(PCCepat - PCLambat));

   Form4.C_IntensitasCahaya.Series[0].Clear;
   Form4.C_IntensitasCahaya.Series[0].AddXY(StrToFloat(Edit_ICBesar.Text),1);
   Form4.C_IntensitasCahaya.Series[0].AddXY(StrToFloat(Edit_ICKecil.Text),0);
   Form4.C_IntensitasCahaya.Series[1].Clear;
   Form4.C_IntensitasCahaya.Series[1].AddXY(StrToFloat(Edit_ICBesar.text),0);
   Form4.C_IntensitasCahaya.Series[1].AddXY(StrToFloat(Edit_ICKecil.Text),1);

   Form4.C_PerjalananCahaya.Series[0].Clear;
   Form4.C_PerjalananCahaya.Series[0].AddXY(StrToFloat(Edit_PCCepat.Text),1);
   Form4.C_PerjalananCahaya.Series[0].AddXY(StrToFloat(Edit_PCLambat.Text),0);
   Form4.C_PerjalananCahaya.Series[1].Clear;
   Form4.C_PerjalananCahaya.Series[1].AddXY(StrToFloat(Edit_PCCepat.Text),0);
   Form4.C_PerjalananCahaya.Series[1].AddXY(StrToFloat(Edit_PCLambat.Text),1);

   Form4.C_KecepatanCahaya.Series[0].Clear;
   Form4.C_KecepatanCahaya.Series[0].AddXY(StrToFloat(Edit_KPTinggi.Text),1);
   Form4.C_KecepatanCahaya.Series[0].AddXY(StrToFloat(Edit_KPRendah.Text),0);
   Form4.C_KecepatanCahaya.Series[1].Clear;
   Form4.C_KecepatanCahaya.Series[1].AddXY(StrToFloat(Edit_KPTinggi.Text),0);
   Form4.C_KecepatanCahaya.Series[1].AddXY(StrToFloat(Edit_KPRendah.Text),1);

   //----------------------------
  ubesar := StrToFloat(Form4.Edit_ubesar.Text);
  ukecil := StrToFloat(Form4.Edit_ukecil.Text);
  ucepat := StrToFloat(Form4.Edit_ucepat.Text);
  ulambat:= StrToFloat(Form4.Edit_ulambat.Text);

  //-----Operasi Fuzzy-------------
  FR1 := Min(ubesar,ucepat);
  FR2 := Min(ubesar,ulambat);
  FR3 := Min(ukecil,ucepat);
  FR4 := Min(ukecil,ulambat);

   Form6.edit_FR1.Text := FloatToStr(FR1);
   Form6.edit_FR1.Text := FormatFloat('0.##',FR1);
   Form6.edit_FR2.Text := FloatToStr(FR2);
   Form6.edit_FR2.Text := FormatFloat('0.##',FR2);
   Form6.edit_FR3.Text := FloatToStr(FR3);
   Form6.edit_FR3.Text := FormatFloat('0.##',FR3);
   Form6.edit_FR4.Text := FloatToStr(FR4);
   Form6.edit_FR4.Text := FormatFloat('0.##',FR4);

  //implikasi-------------
    Form6.Edit_imp1.Text := FloatToStr(FR1);
    Form6.Edit_imp1.Text := FormatFloat('0.##',FR1);
    Form6.Edit_imp2.Text := FloatToStr(FR2);
    Form6.Edit_imp2.Text := FormatFloat('0.##',FR2);
    Form6.Edit_imp3.Text := FloatToStr(FR3);
    Form6.Edit_imp3.Text := FormatFloat('0.##',FR3);
    Form6.Edit_imp4.Text := FloatToStr(FR4);
    Form6.Edit_imp4.Text := FormatFloat('0.##',FR4);

    //--------------------Komposisi Aturan---------
    KomTinggi :=Max(FR1,FR3);
    KomRendah :=Max(FR2, FR4);
    Form6.Edit_KomTinggi.Text := FloatToStr(KomTinggi);
    Form6.Edit_KomTinggi.Text := FormatFloat('0.##',KomTinggi);
    Form6.Edit_KomRendah.Text := FloatToStr(KomRendah);
    Form6.Edit_KomRendah.Text := FormatFloat('0.##',KomRendah);
end;


end.
