unit credt;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm3 = class(TForm)
    EnterCreditLabel: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    EnterButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure EnterButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses poker;

var oldfield, newfield: string;

procedure TForm3.EnterButtonClick(Sender: TObject);
var flag: boolean;
begin
  flag:= false;
  try
    credit:= Edit1.Text.ToInteger
  except
    on E : Exception do
    begin
      ShowMessage('Incorrect input!');
      flag:= true;
    end;
  end;
  if not flag then
    if credit > 500 then
    begin
      ShowMessage('Too large. Try Again.');
      flag:= true
    end;
  if not flag then
  begin
    Form1.CreditAmountLabel.Text:= credit.ToString;
    Form3.Close
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  oldfield:= '';
  SetActiveControl(Edit1);
end;

end.
