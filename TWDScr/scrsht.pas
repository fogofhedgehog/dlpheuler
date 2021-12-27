unit scrsht;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Layout1: TLayout;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{$IFDEF ANDROID}
  uses
    Androidapi.JNI.GraphicsContentViewText, FMX.Helpers.Android,AndroidApi.Helpers,
    Androidapi.JNI.JavaTypes, FMX.Platform.Android, AndroidApi.JniBridge, AndroidApi.Jni.App,
    AndroidAPI.jni.OS;
{$ENDIF}


procedure TForm1.Button1Click(Sender: TObject);
var i: TBitmap;
begin
  i:= Layout1.MakeScreenshot;
  i.SaveToFile('/storage/emulated/0/DCIM/Screenshots/1.png');
end;

end.
