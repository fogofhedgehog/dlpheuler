program poker_aut;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  poker in 'poker.pas' {Form1},
  stat in 'stat.pas' {Form2},
  credt in 'credt.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
