program poker_aut;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  poker in 'poker.pas' {Form1},
  stat in 'stat.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
