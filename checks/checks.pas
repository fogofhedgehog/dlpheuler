unit checks;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Platform,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti, FMX.Clipboard, chkhlpr,
  System.StrUtils, FMX.ScrollBox, FMX.Memo, FMX.DateTimeCtrls;

type
  TForm1 = class(TForm)
    GetFromClipButton: TButton;
    PerekrRadioButton: TRadioButton;
    PyaterochkaRadioButton: TRadioButton;
    ReadShowClipbrdButton: TButton;
    ClpbrdMemo: TMemo;
    QTimeTimeEdit: TTimeEdit;
    EnterTimeButton: TButton;
    PyatImageControl: TImageControl;
    PerekrImageControl: TImageControl;
    procedure GetFromClipButtonClick(Sender: TObject);
    procedure ReadShowClipbrdButtonClick(Sender: TObject);
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
var a, json, tm: string;
    EditClp: IFMXExtendedClipboardService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXExtendedClipboardService, EditClp) then
    a:= EditClp.GetText;
  if not PerekrRadioButton.IsChecked and not PyaterochkaRadioButton.IsChecked then
    ShowMessage('���������� ������� �������');
  if PerekrRadioButton.IsChecked then
    begin
      if (LeftStr(a, 12) <> '�������� ���') or (not RightStr(a, 6).Contains('����'))
      then
      begin
        ShowMessage('����������� ������������ ������');
      end
      else
        json:= ReceiptPerekrestok(a);
    end;
  if PyaterochkaRadioButton.IsChecked then
  begin
    QTimeTimeEdit.Visible:= True;
    EnterTimeButton.Visible:= True;
    while True do
    begin
      Application.ProcessMessages;
      if EnterTimeButton.IsPressed then break;
    end;
    QTimeTimeEdit.Visible:= False;
    EnterTimeButton.Visible:= False;
    tm:= TimetoStr(QTimeTimeEdit.Time);
    if tm[2] = ':' then tm:= '0' + tm;
    if (LeftStr(a, 12) <> '�������� ���') or (not RightStr(a, 15).Contains('�����'))
    then
    begin
      ShowMessage('����������� ������������ ������');
    end
    else
      json:= ReceiptPyaterochka(a, tm);
  end;
  if TPlatformServices.Current.SupportsPlatformService(IFMXExtendedClipboardService, EditClp) then
    EditClp.SetText(json);
end;




procedure TForm1.ReadShowClipbrdButtonClick(Sender: TObject);
var a, json: string;
    EditClp: IFMXExtendedClipboardService;
begin
  if TPlatformServices.Current.SupportsPlatformService(IFMXExtendedClipboardService, EditClp) then
    a:= EditClp.GetText;
  ClpbrdMemo.Lines.Add(a);
  a:= a;

end;

end.
