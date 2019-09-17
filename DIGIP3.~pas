unit DIGIP3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormHistogram = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label8: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistogram: TFormHistogram;
  procedure BuatHistogram;
implementation

uses DIGIP1;

{$R *.dfm}

procedure TFormHistogram.FormCreate(Sender: TObject);
begin
  BuatHistogram;
  Label1.Caption := '';
  Label2.Caption := '';
  Label9.Caption := '';
  Label10.Caption := '';

end;

procedure TFormHistogram.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form1.ViewHistogram1.Checked := False;
end;

procedure TFormHistogram.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  {saat mouse bergerak/berada di form, label clear}
   Label1.Caption := '';
   Label2.Caption := '';
   Label9.Caption := '';
   Label10.Caption := '';

end;

procedure TFormHistogram.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  {menampilkan informasi nilai piksel dan jumlah piksel dari histogram citra asli saat mouse bergerak di image1}
   Label1.Caption := IntToStr(X);
   Label2.Caption := inttostr(arHistogram1[X]);

end;

procedure TFormHistogram.Image2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  {menampilkan informasi nilai piksel dan jumlah piksel dari histogram citra hasil saat mouse bergerak di image2}
   Label9.Caption := IntToStr(X);
   Label10.Caption := inttostr(arHistogram2[X]);

end;

procedure BuatHistogram;
var
  i,j,n: integer;
  nilaipikselAsli:byte;
  nilaipikselHasil:byte;
  maxHistogramValue1 : integer;
  maxHistogramValue2 : integer;
  skala1 : real;
  skala2 : real;

begin


{ inisialisasi arrayhistogram 1 dan 2 diset 0}
   for i:=0 to 255 do begin
       arHistogram1[i] := 0; //array histogram untuk image1(citraasli)
       arHistogram2[i] := 0; //array histogram untuk image2(citrahasil)
   end;

{ data array histogram }
   for i:=0 to hi do begin
     for j:=0 to wj do begin

       nilaipikselAsli := arCitraAsli[i,j]; {nilai piksel asli = array citraasli diposisi ke-i dan ke-j}
       inc(arHistogram1[nilaipikselAsli]);  {arHistogram1[nilaipikselAsli] = arHistogram1[nilaipikselAsli]+1}

       nilaipikselHasil := arCitraHasil[i,j];
       inc(arHistogram2[nilaipikselHasil]);
     end;
   end;

{ histogram scaling }
   maxHistogramValue1 := 0; {variabel untuk menampung nilai tertinggi dalam histogram1 diset 0 terlebih dahulu}
   maxHistogramValue2 := 0; {variabel untuk menampung nilai tertinggi dalam histogram2 diset 0 terlebih dahulu}

{mencari nilaitertinggi dalam array histogram 1 & 2}
   for i:=0 to 255 do begin
       if arHistogram1[i] > maxHistogramValue1 then
           maxHistogramValue1 := arHistogram1[i];
       if arHistogram2[i] > maxHistogramValue2 then
           maxHistogramValue2 := arHistogram2[i];
   end;

{membuat skala untuk menggambar histogram}
   skala1 := 100 / maxHistogramValue1;
   skala2 := 100 / maxHistogramValue2;

{ inisialisasi gambar histogram }

   formHistogram.Image1.Canvas.Brush.Color := clWhite;  {image1 di formhistogram diberi warna putih}
   formHistogram.Image1.Canvas.Rectangle(0, 0, 256, 101);  {buat kotak di image1 formhistogram dari (0,0) sampai
												(256,101)}
   formHistogram.Image2.Canvas.Brush.Color := clWhite;
   formHistogram.Image2.Canvas.Rectangle(0, 0, 256, 101);
   formHistogram.Image1.Canvas.MoveTo(0,100);   {posisi mulai menggambar diset di (0,100)}
   formHistogram.Image1.Canvas.LineTo(256,100); {menggambar garis dari posisi (0,100) sampai (256,100)}
   formHistogram.Image2.Canvas.MoveTo(0,100);
   formHistogram.Image2.Canvas.LineTo(256,100);

{ mulai gambar histogram }
   for i:=0 to 255 do begin
      { histogram citra 1 }
       formHistogram.Image1.Canvas.MoveTo(i,100);
       n := round( arHistogram1[i] * skala1 );
       formHistogram.Image1.Canvas.LineTo(i,100-n);

      { histogram citra 2 }
       formHistogram.Image2.Canvas.MoveTo(i,100);
       n := round( arHistogram2[i] * skala2 );
       formHistogram.Image2.Canvas.LineTo(i,100-n);
   end;
end;

end.
