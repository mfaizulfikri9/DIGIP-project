unit DIGIP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtDlgs, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    MainMenu1: TMainMenu;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    StatusBar1: TStatusBar;
    File1: TMenuItem;
    Open1: TMenuItem;
    View1: TMenuItem;
    SaveResultAs1: TMenuItem;
    Exit1: TMenuItem;
    Proses1: TMenuItem;
    Brightness1: TMenuItem;
    Help1: TMenuItem;
    ViewHistogram1: TMenuItem;
    Negasi1: TMenuItem;
    Contrast1: TMenuItem;
    hreshold1: TMenuItem;
    hresholdTunggal1: TMenuItem;
    hresholdGanda1: TMenuItem;
    procedure Open1Click(Sender: TObject);
    procedure SaveResultAs1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Brightness1Click(Sender: TObject);
   // procedure ViewHistogam1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ViewHistogram1Click(Sender: TObject);
    procedure Negasi1Click(Sender: TObject);
    procedure Contrast1Click(Sender: TObject);
    procedure hresholdGanda1Click(Sender: TObject);
    procedure hresholdTunggal1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  {var global}
   arCitraAsli:array[0..255,0..255] of byte;
   arCitraHasil:array[0..255,0..255] of byte;
   arHistogram1:array[0..255] of integer;
   arHistogram2:array[0..255] of integer;
   PC,PH:PByteArray;
   AA,AB,A,C,P,G,pikselimage,w,h,wj,hi:integer;
implementation

uses DIGIP2, DIGIP3, DIGIP4, DIGIP5, DIGIP6;

{$R *.dfm}

procedure TForm1.Open1Click(Sender: TObject);
var
  i,j: integer;

begin
  {clear image1}
 form1.Image1.Canvas.FillRect(Rect(0, 0, 256, 256));

  {clear image2}
  form1.Image2.Canvas.FillRect(Rect(0, 0, 256, 256));

  {membuka file citra}
  OpenPictureDialog1.execute;
  Form1.Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  h:= image1.picture.height;
  hi:=h-1;
  w:= image1.picture.width;
  wj:=w-1;

 {copy semua piksel citra ke dalam array citra asli}
  for i:=0 to hi do
    begin
      PC :=image1.picture.bitmap.scanline[i];
      for j:=0 to wj do
        arCitraAsli[i,j]:=PC[j];
    end;

end;

procedure TForm1.SaveResultAs1Click(Sender: TObject);
begin
{menyimpan citrahasil ke file}
   if (SavePictureDialog1.Execute) then
       Form1.Image2.Picture.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
   application.terminate;
end;

procedure TForm1.Brightness1Click(Sender: TObject);
begin
   {menampilkan formbrightness}
  FormBrightness.Show;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   {menampilkan informasi koordinat & nilai piksel citraasli saat mouse bergerak di image1}
  pikselImage := form1.image1.canvas.pixels[X,Y];
  StatusBar1.SimpleText := 'Posisi : '+inttostr(X) + ',' +inttostr(Y)+ '     Nilai piksel  : '+inttostr(getRvalue(pikselImage));

end;


procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   {saat mouse bergerak/berada di form, Statusbar clear}
 StatusBar1.SimpleText :=' '

end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
{menampilkan informasi koordinat & nilai piksel citrahasil saat mouse bergerak di image2}
  pikselImage := form1.image2.canvas.pixels[X,Y];
  StatusBar1.SimpleText := 'Posisi : '+inttostr(X) + ',' +inttostr(Y)+ '     Nilai piksel  : '+inttostr(getRvalue(pikselImage));
end;

procedure TForm1.ViewHistogram1Click(Sender: TObject);
begin
   {menampilkan formhistogram bila Menu View Histogram di-centang(checked)}
  ViewHistogram1.Checked := not ViewHistogram1.Checked;
   formHistogram.Visible := ViewHistogram1.Checked;
   BuatHistogram;
end;

procedure BuatNegasi;
var i,j,temp : integer;
begin
    Form1.Image2.Picture:=Form1.Image1.Picture;
    for i:=0 to hi do
      begin
        PC :=form1.image1.picture.bitmap.scanline[i];
        PH :=form1.image2.picture.bitmap.scanLine[i];

      for j:=0 to wj do
        begin
                temp := 255 - PC[j];
                if (temp >255) then temp := 255;
                if (temp<0) then temp:=0;
                PH[j]:=temp;
                arCitraHasil[i,j]:=PH[j];        
        end;
      end;
end;

procedure TForm1.Negasi1Click(Sender: TObject);
begin
  BuatNegasi;
  TampilCitraHasil;
  BuatHistogram;
end;

procedure TForm1.Contrast1Click(Sender: TObject);
begin
  formcontrast.Show;
end;

procedure TForm1.hresholdGanda1Click(Sender: TObject);
begin
  FormThresholdGanda.Show;
end;

procedure TForm1.hresholdTunggal1Click(Sender: TObject);
begin
  FormThresholdTunggal.Show;
end;

end.
