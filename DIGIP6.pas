unit DIGIP6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormThresholdGanda = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    EditAA: TEdit;
    EditAB: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormThresholdGanda: TFormThresholdGanda;
  procedure BuatThresholdGanda;
  procedure TampilCitraHasil;
implementation

uses DIGIP1, DIGIP3;

{$R *.dfm}

procedure TFormThresholdGanda.FormCreate(Sender: TObject);
begin
  ScrollBar1.Position := 128;
  ScrollBar2.Position := 128;

  AA:= FormThresholdGanda.ScrollBar1.Position;
  editAA.Text:=inttostr(AA);
  AB:= FormThresholdGanda.ScrollBar2.Position;
  editAB.Text:=inttostr(AB);
end;

procedure TFormThresholdGanda.ScrollBar1Change(Sender: TObject);
begin
  EditAA.Text:=IntToStr(scrollbar1.Position);
  AA:= FormThresholdGanda.ScrollBar1.Position;
end;

procedure TFormThresholdGanda.ScrollBar2Change(Sender: TObject);
begin
  EditAB.Text:=IntToStr(scrollbar2.Position);
  AB:= FormThresholdGanda.ScrollBar2.Position;
end;

procedure TFormThresholdGanda.Button1Click(Sender: TObject);
begin
  BuatThresholdGanda;
  TampilCitraHasil;
  BuatHistogram;
end;

procedure TFormThresholdGanda.Button2Click(Sender: TObject);
begin
  Close;

  FormThresholdGanda.scrollbar1.Position := 128;
  FormThresholdGanda.scrollbar2.Position := 0;

  AA := FormThresholdGanda.scrollbar1.Position;
  AB := FormThresholdGanda.scrollbar2.Position;
  EditAA.text := inttostr(AA);
  EditAB.text := inttostr(AB);
end;

procedure BuatThresholdGanda;
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
          if(temp>=AB) and (temp<=AA) then
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

end.
