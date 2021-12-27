program TWDOWScr;

uses
  System.StartUpCopy,
  FMX.Forms,
  scrsht in 'scrsht.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
