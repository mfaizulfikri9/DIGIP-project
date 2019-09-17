unit DIGIP2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormBrightness = class(TForm)
    Label1: TLabel;
    EditC: TEdit;
    ScrollBar1: TScrollBar;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBrightness: TFormBrightness;
  procedure BuatBrightness;
  procedure TampilCitraHasil;
implementation

uses DIGIP1, DIGIP3;

{$R *.dfm}

procedure TFormBrightness.FormCreate(Sender: TObject);
begin
  {set nilai C sesuai dengan posisi scrollbar1 dan menampilkan di EditC}
   {C adalah parameter brightness}

   C := formbrightness.scrollbar1.Position;
   EditC.text := inttostr(C);

end;

procedure TFormBrightness.ScrollBar1Change(Sender: TObject);
begin
   {set Edit C dan nilai C sesuai posisi perubahan scrollbar}
  EditC.text := IntToStr(scrollbar1.Position);
  C := formbrightness.scrollbar1.Position;

end;

procedure TFormBrightness.Button1Click(Sender: TObject);
begin
  {saat tombol OK di formbrigthness diklik maka akan menjalankan prosedur ini}
  BuatBrightness;
  TampilCitraHasil;
  BuatHistogram;

end;

procedure TFormBrightness.Button2Click(Sender: TObject);
begin
   {saat tombol Close di formbrigthness diklik maka akan menjalankan prosedur ini}
  Close;
   //posisi scrollbar1 diset 0
  formbrightness.scrollbar1.Position := 0;
  //nilai C sesuai dengan posisi scrollbar1
  C := formbrightness.scrollbar1.Position;
  EditC.text := inttostr(C);  //EditC sesuai nilai C

end;

procedure BuatBrightness;
var i,j,temp : integer;
begin
   { proses brightness citra }
    Form1.Image2.Picture:=Form1.Image1.Picture;   // set image2=image1 terlebih dahulu
    for i:=0 to hi do  {penelusuran piksel-piksel di image1 & image2}
      begin
        PC :=form1.image1.picture.bitmap.scanline[i]; {PC=array untuk menelusuri piksel citraasli di image1}
        PH :=form1.image2.picture.bitmap.scanLine[i]; {PH=array untuk menelusuri piksel citrahasil di image2}

      for j:=0 to wj do
        begin
                temp := PC[j]+C;  {nilai piksel image1 dijumlahkan dengan nilai C, ditampung di temp}
                if (temp >255) then temp := 255;  {jika hasil penjumlahan lebih dari 255, temp diset 255 yaitu nantinya 
										nilaipikselhasil dianggap 255}
                if (temp<0) then temp:=0;         {jika hasil penjumlahan kurang dari 0, temp diset 0, nantinya	nilaipiksel hasil dianggap 0}
                PH[j]:=temp;                      //nilai temp ditampung di array PH
                arCitraHasil[i,j]:=PH[j];         //array citrahasil = array PH
        end;
      end;
end;


procedure TampilCitraHasil;
begin
  {menampilkan citrahasil di image2}
  Form1.Image2.Repaint;
end;

end.
