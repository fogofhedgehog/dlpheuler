program TWDOurWorld;

uses
  System.StartUpCopy,
  FMX.Forms,
  twd in 'twd.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
