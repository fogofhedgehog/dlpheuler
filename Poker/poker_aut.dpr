program poker_aut;

uses
  System.StartUpCopy,
  FMX.Forms,
  poker in 'poker.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
