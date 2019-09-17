unit DIGIP5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormThresholdTunggal = class(TForm)
    Label1: TLabel;
    EditA: TEdit;
    Button1: TButton;
    Button2: TButton;
    ScrollBar1: TScrollBar;
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
  FormThresholdTunggal: TFormThresholdTunggal;
  procedure BuatThresholdTunggal;
  procedure TampilCitraHasil;
implementation

uses DIGIP1, DIGIP3;

{$R *.dfm}

procedure TFormThresholdTunggal.FormCreate(Sender: TObject);
begin
   ScrollBar1.Position := 128;
   A := FormThresholdTunggal.scrollbar1.Position;
   EditA.text := inttostr(A);
end;

procedure TFormThresholdTunggal.ScrollBar1Change(Sender: TObject);
begin
  EditA.Text:=IntToStr(scrollbar1.Position);
  A:= FormThresholdTunggal.ScrollBar1.Position;
end;

procedure TFormThresholdTunggal.Button1Click(Sender: TObject);
begin
  BuatThresholdTunggal;
  TampilCitraHasil;
  BuatHistogram;
end;

procedure TFormThresholdTunggal.Button2Click(Sender: TObject);
begin
  Close;
  FormThresholdTunggal.scrollbar1.Position := 128;
  A := FormThresholdTunggal.scrollbar1.Position;
  EditA.text := inttostr(A); 
end;

procedure BuatThresholdTunggal;
var
i,j,temp : integer;
begin
  Form1.Image2.Picture:=Form1.Image1.Picture;
  for i:=0 to hi do
    begin
      PC:=Form1.Image1.Picture.Bitmap.ScanLine[i];
      PH:=Form1.Image2.Picture.Bitmap.ScanLine[i];

    for j:=0 to wj do
      begin
        temp:=PC[j];
        if(temp<A) then
          temp:=0
        else
          temp:=255;
        PH[j]:=temp;
        arCitraHasil[i,j]:=PH[j];
      end;
  end;
end;

procedure TampilCitraHasil;
begin
  {menampilkan citrahasil di image2}
  Form1.Image2.Repaint;
end;

end.
