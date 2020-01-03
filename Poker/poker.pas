unit poker;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.ExtCtrls,
  System.DateUtils;

type

  TDeal = record
    cards: array[1 .. 11] of integer;
    bt: integer;
  end;

  TForm1 = class(TForm)
    CreditwordLabel: TLabel;
    LLCornerLayout: TLayout;
    CreditAmountLabel: TLabel;
    ScaledLayout1: TScaledLayout;
    RLCornerLayout: TLayout;
    BetwordLabel: TLabel;
    BetAmountLabel: TLabel;
    Card1Img: TImage;
    Card2Img: TImage;
    Card3Img: TImage;
    Card4Img: TImage;
    Card5Img: TImage;
    NextDealButton: TButton;
    Card1RevFloatAnimation: TFloatAnimation;
    Card1FwdFloatAnimation: TFloatAnimation;
    Card2FwdFloatAnimation: TFloatAnimation;
    Card2RevFloatAnimation: TFloatAnimation;
    Card3FwdFloatAnimation: TFloatAnimation;
    Card3RevFloatAnimation: TFloatAnimation;
    Card4FwdFloatAnimation: TFloatAnimation;
    Card4RevFloatAnimation: TFloatAnimation;
    Card5FwdFloatAnimation: TFloatAnimation;
    Card5RevFloatAnimation: TFloatAnimation;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure NextDealButtonClick(Sender: TObject);
    procedure Card2RevFloatAnimationFinish(Sender: TObject);
    procedure Card3RevFloatAnimationFinish(Sender: TObject);
    procedure Card4RevFloatAnimationFinish(Sender: TObject);
    procedure Card5RevFloatAnimationFinish(Sender: TObject);
    procedure Card1RevFloatAnimationFinish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure nextdeal(var deal: TDeal);

var
  Form1: TForm1;
  bet, credit: integer;
  deal: TDeal;
  finished: boolean;
  nm: string;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

function definevalue(card: integer): string;
var i: integer;
begin
  i:= card mod 13;
  case i of
    0: result:= 'a';
    1: result:= '2';
    2: result:= '3';
    3: result:= '4';
    4: result:= '5';
    5: result:= '6';
    6: result:= '7';
    7: result:= '8';
    8: result:= '9';
    9: result:= '1';
    10: result:= 'j';
    11: result:= 'q';
    12: result:= 'k'
  end;
end;

function definecolor(card: integer): string;
var i: integer;
begin
  i:= card div 13;
  case i of
    0: result:='c';
    1: result:='s';
    2: result:='d';
    3: result:='h';
  end;
end;

procedure nextdeal(var deal: TDeal);
var i, j, new: integer;
    duplicate: boolean;
begin
  deal.cards[1]:= random(52);
  i:= 2;
  while i <= 11 do
  begin
    duplicate:= false;
    new:= random(52);
    j:= 1;
    while j < i do
    begin
      if new = deal.cards[j] then
      begin
        duplicate:= true;
        break
      end;
      j:= j + 1;
    end;
    if not duplicate then
    begin
      deal.cards[i]:= new;
      i:= i + 1
    end
  end
end;

//procedure PlayAni(anim1, anim2: TFloatAnimation; img: TImage; number: integer; nam: string);
//begin
//  anim1.Start;
//  img.Bitmap.LoadFromFile(nam);
//  anim2.Start
//end;

procedure TForm1.Card1RevFloatAnimationFinish(Sender: TObject);
begin
//  Card1Img.Bitmap.CreateFromFile(nm);
//  Card1FwdFloatAnimation.Start;
end;

procedure TForm1.Card2RevFloatAnimationFinish(Sender: TObject);
begin
//  Card2Img.Bitmap.CreateFromFile(nm);
//  Card2FwdFloatAnimation.Start;
end;

procedure TForm1.Card3RevFloatAnimationFinish(Sender: TObject);
begin
//  Card3Img.Bitmap.CreateFromFile(nm);
//  Card3FwdFloatAnimation.Start;
end;

procedure TForm1.Card4RevFloatAnimationFinish(Sender: TObject);
begin
//  Card4Img.Bitmap.CreateFromFile(nm);
//  Card4FwdFloatAnimation.Start;
end;

procedure TForm1.Card5RevFloatAnimationFinish(Sender: TObject);
begin
//  Card5Img.Bitmap.CreateFromFile(nm);
//  Card5FwdFloatAnimation.Start;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  randomize;
  credit:= 100;
  CreditAmountLabel.Text:= credit.ToString;
  bet:= 0;
  finished:= true;
  nextdeal(deal)
end;

procedure Delay(iMilliseconds : Integer);
begin
iMilliseconds := MilliSecondOfTheDay(Time) + iMilliseconds;
while iMilliseconds > MilliSecondOfTheDay(Time) do
Application.ProcessMessages;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
  var i: integer;
begin
  if keychar = 'b' then
  begin
    if finished then
    begin
      nextdeal(deal);
      finished:= false
    end;
    if bet < 5 then
    begin
      bet:= bet + 1;
      credit:= credit - 1
    end
    else
    begin
      bet:= 1;
      credit:= credit + 4
    end;
    deal.bt:= bet;
    BetAmountLabel.Text:= bet.ToString;
    CreditAmountLabel.Text:= credit.ToString;
    showmessage(deal.cards[1].ToString + ' ' + deal.cards[2].ToString)
  end;
  if keychar = 'n' then
  begin
    nextdeal(deal);
    deal.bt:= bet
  end;
  if keychar = ' ' then
    if finished then
    begin
      if bet = 0 then
        if credit>= 5 then
        begin
          bet:= 5;
          credit:= credit - 5
        end
        else
        if credit> 0 then
        begin
          bet:= credit;
          credit:= 0
        end
        else;
      for i:= 1 to 5 do
      begin
        nm:= 'img\' + definevalue(deal.cards[i]) + definecolor(deal.cards[i]) + '.gif';
        (FindComponent('Card' + i.ToString + 'RevFloatAnimation') As TFloatAnimation).Start;
//          (FindComponent('Card' + i.ToString + 'Img') As TImage).AnimateFloat('Scale.X', 0);
        Delay(Trunc((FindComponent('Card' + i.ToString + 'RevFloatAnimation') As TFloatAnimation).Duration * 1000));
        (FindComponent('Card' + i.ToString + 'Img') As TImage).Bitmap.LoadFromFile(nm);
        (FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Start;
//          (FindComponent('Card' + i.ToString + 'Img') As TImage).AnimateFloat('Scale.X', 1);
        Delay(Trunc((FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Duration * 1000));
      end;

    end
    else;
end;

procedure TForm1.NextDealButtonClick(Sender: TObject);
begin
  nextdeal(deal);
  Card1Img.Visible:= False;
  Card1Img.Bitmap.CreateFromFile('img\4c.gif');
end;

end.
