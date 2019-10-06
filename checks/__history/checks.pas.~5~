unit checks;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Platform,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti, FMX.Clipboard, chkhlpr,
  System.StrUtils;

type
  TForm1 = class(TForm)
    GetFromClipButton: TButton;
    procedure GetFromClipButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm1.GetFromClipButtonClick(Sender: TObject);
var a, rd: string;
    b: TValue;
    EditClp: IFMXExtendedClipboardService;
    f: text;
    q, summa: extended;
    pri, qi, summai: int64;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXExtendedClipboardService, EditClp) then
    a:= EditClp.GetText;
  AssignFile(f, 'exmpl.txt');
  rewrite(f);
  Write(f, a);
  CloseFile(f);
  Reset (f);
  Readln (f, rd);
  Readln (f, rd);
  a:= '{"cashTotalSum":0,"dateTime":';
  rd:= unixtime(rd).ToString;
  a:= a + rd;
  a:= a + ',"discount":null,"discountSum":null,"ecashTotalSum":null,"fiscalDocumentNumber":null,"fiscalDriveNumber":null,"fiscalSign":null,"items":[{"modifiers":null,"name":";';
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  while rd <> 'Итого:' do
  begin
    a:= a + rd;
    Readln (f, rd);
    a:= a + '","nds0":null,"nds10":null,"nds18":null,"ndsCalculated10":null,"ndsCalculated18":null,"ndsNo":null,"price":';
    q:= rd.ToExtended;
    Readln (f, rd);
    summa:= rd.ToExtended;
    a:= a + Trunc(summa / q * 100).ToString + ',"quantity":' + q.ToString + ',"sum":' +
    Trunc(summa * 100).ToString + ',"storno":false},{"modifiers":null,"name":"';
    Readln(f, rd)
  end;
  a:= LeftStr(a, length(a) - 27);
  a:= a + '],"kktNumber":null,"kktRegId":null,"markup":null,"markupSum":null,"modifiers":null,"nds0":null,"nds10":null,"nds18"'
  + ':null,"ndsCalculated10":null,"ndsCalculated18":null,"ndsNo":null,"operationType":1,"operator":null,"requestNumber":null,"retailPlaceAddress":null,"shiftNumber":null,"stornoItems":null,"taxationType":null,"totalSum":';
  Readln(f, rd);
  summa:= rd.ToExtended;
  a:= a + Trunc(summa * 100).ToString + ',"user":"Перекрёсток","userInn":null}';
  CloseFile(f);
  AssignFile(f, 'check.json');
  rewrite(f);
  write(f, a);
  CloseFile(f);
end;

end.
