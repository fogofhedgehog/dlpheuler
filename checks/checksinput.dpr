program checksinput;

uses
  System.StartUpCopy,
  FMX.Forms,
  checks in 'checks.pas' {Form1},
  chkhlpr in 'chkhlpr.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
