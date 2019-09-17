program ProjectDIGIP;

uses
  Forms,
  DIGIP1 in 'DIGIP1.pas' {Form1},
  DIGIP2 in 'DIGIP2.pas' {FormBrightness},
  DIGIP3 in 'DIGIP3.pas' {FormHistogram},
  DIGIP4 in 'DIGIP4.pas' {FormContrast},
  DIGIP5 in 'DIGIP5.pas' {FormThresholdTunggal},
  DIGIP6 in 'DIGIP6.pas' {FormThresholdGanda};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormBrightness, FormBrightness);
  Application.CreateForm(TFormHistogram, FormHistogram);
  Application.CreateForm(TFormContrast, FormContrast);
  Application.CreateForm(TFormThresholdTunggal, FormThresholdTunggal);
  Application.CreateForm(TFormThresholdGanda, FormThresholdGanda);
  Application.Run;
end.
