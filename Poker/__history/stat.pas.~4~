unit stat;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    CloseButton: TButton;
    NothingLabel: TLabel;
    TwoPairsLabel: TLabel;
    ThreeLabel: TLabel;
    StraightLabel: TLabel;
    FlushLabel: TLabel;
    FullHouseLabel: TLabel;
    FourLabel: TLabel;
    StraightFlushLabel: TLabel;
    RoyalFlushLabel: TLabel;
    TotalLabel: TLabel;
    NothingPrLabel: TLabel;
    ThreePrLabel: TLabel;
    TwoPairsPrLabel: TLabel;
    FlushPrLabel: TLabel;
    StraightPrLabel: TLabel;
    FourPrLabel: TLabel;
    FullHousePrLabel: TLabel;
    StraightFlushPrLabel: TLabel;
    TotalPrLabel: TLabel;
    RoyalFlushPrLabel: TLabel;
    GameNameLabel: TLabel;
    PreviousLabel: TLabel;
    CurrentLabel: TLabel;
    NothingCuLabel: TLabel;
    TwoPairsCuLabel: TLabel;
    ThreeCuLabel: TLabel;
    StraightCuLabel: TLabel;
    FlushCuLabel: TLabel;
    FullHouseCuLabel: TLabel;
    FourCuLabel: TLabel;
    StraightFlushCuLabel: TLabel;
    RoyalFlushCuLabel: TLabel;
    TotalCuLabel: TLabel;
    TotalToLabel: TLabel;
    NothingToLabel: TLabel;
    TwoPairsToLabel: TLabel;
    ThreeToLabel: TLabel;
    StraightToLabel: TLabel;
    FlushToLabel: TLabel;
    FullHouseToLabel: TLabel;
    FourToLabel: TLabel;
    StraightFlushToLabel: TLabel;
    RoyalFlushToLabel: TLabel;
    TotalGamesLabel: TLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses poker;

{$R *.fmx}

procedure TForm2.CloseButtonClick(Sender: TObject);
begin
  Form1.Show;
  Form2.Close;
  Form2.Destroy
end;

procedure TForm2.FormCreate(Sender: TObject);
var f: file of stata;
    rec: stata;
    i: integer;
    stt: array[0 .. 10, 1 .. 3] of int64;
    stat: array[0 .. 10] of int64;
    rd: string;
    ftmp: text;
begin
  AssignFile(ftmp, '1');
  Reset(ftmp);
  for i:= 0 to 10 do
  begin
    Readln(ftmp, rd);
    stat[i]:= rd.ToInt64
  end;
  CloseFile(ftmp);
  DeleteFile('1');
  if FileExists('stt.wrd') then
  begin
    AssignFile(f, 'stt.wrd');
    Reset(f);
    for i:= 0 to 10 do
    begin
      Read(f, rec);
      stt[i, 1]:= rec.last;
      stt[i, 3]:= rec.total
    end;
    CloseFile(f);
  end
  else
    for i:= 0 to 10 do
    begin
      stt[i, 1]:= 0;
      stt[i, 3]:= 0
    end;
  for i:= 0 to 10 do
  begin
    stt[i, 2]:= stat[i];
    stt[i, 3]:= stat[i] + stt[i, 3]
  end;
  NothingPrLabel.Text:= (stt[0, 1] + stt[1, 1] + stt[2, 1]).ToString;
  TwoPairsPrLabel.Text:= stt[3, 1].ToString;
  ThreePrLabel.Text:= stt[4, 1].ToString;
  StraightPrLabel.Text:= stt[5, 1].ToString;
  FlushPrLabel.Text:= stt[6, 1].ToString;
  FullHousePrLabel.Text:= stt[7, 1].ToString;
  FourPrLabel.Text:= stt[8, 1].ToString;
  StraightFlushPrLabel.Text:= stt[9, 1].ToString;
  RoyalFlushPrLabel.Text:= stt[10, 1].ToString;
  NothingCuLabel.Text:= (stt[0, 2] + stt[1, 2] + stt[2, 2]).ToString;
  TwoPairsCuLabel.Text:= stt[3, 2].ToString;
  ThreeCuLabel.Text:= stt[4, 2].ToString;
  StraightCuLabel.Text:= stt[5, 2].ToString;
  FlushCuLabel.Text:= stt[6, 2].ToString;
  FullHouseCuLabel.Text:= stt[7, 2].ToString;
  FourCuLabel.Text:= stt[8, 2].ToString;
  StraightFlushCuLabel.Text:= stt[9, 2].ToString;
  RoyalFlushCuLabel.Text:= stt[10, 2].ToString;
  NothingToLabel.Text:= (stt[0, 3] + stt[1, 3] + stt[2, 3]).ToString;
  TwoPairsToLabel.Text:= stt[3, 3].ToString;
  ThreeToLabel.Text:= stt[4, 3].ToString;
  StraightToLabel.Text:= stt[5, 3].ToString;
  FlushToLabel.Text:= stt[6, 3].ToString;
  FullHouseToLabel.Text:= stt[7, 3].ToString;
  FourToLabel.Text:= stt[8, 3].ToString;
  StraightFlushToLabel.Text:= stt[9, 3].ToString;
  RoyalFlushToLabel.Text:= stt[10, 3].ToString;
  TotalPrLabel.Text:= (stt[0, 1] + stt[1, 1] + stt[2, 1] + stt[3, 1] + stt[4, 1] + stt[5, 1] +
  stt[6, 1] + stt[7, 1] + stt[8, 1] + stt[9, 1] + stt[10, 1]).ToString;
  TotalCuLabel.Text:= (stt[0, 2] + stt[1, 2] + stt[2, 2] + stt[3, 2] + stt[4, 2] + stt[5, 2] +
  stt[6, 2] + stt[7, 2] + stt[8, 2] + stt[9, 2] + stt[10, 2]).ToString;
  TotalGamesLabel.Text:= (stt[0, 3] + stt[1, 3] + stt[2, 3] + stt[3, 3] + stt[4, 3] + stt[5, 3] +
  stt[6, 3] + stt[7, 3] + stt[8, 3] + stt[9, 3] + stt[10, 3]).ToString;
end;

end.
