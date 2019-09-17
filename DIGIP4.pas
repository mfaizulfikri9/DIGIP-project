unit DIGIP4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormContrast = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    EditP: TEdit;
    EditG: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContrast: TFormContrast;
  procedure BuatContrast;
  procedure TampilCitraHasil;
implementation

uses DIGIP1, DIGIP3;

{$R *.dfm}

procedure TFormContrast.FormCreate(Sender: TObject);
begin
  ScrollBar1.Position := 128;
  ScrollBar2.Position := 1;

  P:= formcontrast.ScrollBar1.Position;
  editp.Text:=inttostr(P);
  G:= formcontrast.ScrollBar2.Position;
  editg.Text:=inttostr(G);
end;

procedure TFormContrast.ScrollBar1Change(Sender: TObject);
begin
  EditP.Text:=IntToStr(scrollbar1.Position);
  P:= formcontrast.ScrollBar1.Position;
end;

procedure TFormContrast.ScrollBar2Change(Sender: TObject);
begin
  EditG.Text:=IntToStr(scrollbar2.Position);
  G:= formcontrast.ScrollBar2.Position;
end;

procedure TFormContrast.Button1Click(Sender: TObject);
begin
  BuatContrast;
  TampilCitraHasil;
  BuatHistogram;
end;

procedure TFormContrast.Button2Click(Sender: TObject);
begin
  Close;

  formcontrast.scrollbar1.Position := 128;
  formcontrast.scrollbar2.Position := 0;

  P := formcontrast.scrollbar1.Position;
  G := formcontrast.scrollbar2.Position;
  EditP.text := inttostr(P);
  EditG.text := inttostr(G);
end;

procedure BuatContrast;
var i,j,temp : integer;
begin
    Form1.Image2.Picture:=Form1.Image1.Picture;
    for i:=0 to hi do
      begin
        PC :=form1.image1.picture.bitmap.scanline[i];
        PH :=form1.image2.picture.bitmap.ScanLine[i];

      for j:=0 to wj do
        begin
          temp := G*(PC[j]-P)+P;
          if (temp >255) then temp := 255;
          if (temp<0) then temp:=0;
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
