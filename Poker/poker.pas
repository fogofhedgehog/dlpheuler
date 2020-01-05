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
    Hold1Image: TImage;
    Hold2Image: TImage;
    Hold3Image: TImage;
    Hold4Image: TImage;
    Hold5Image: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure NextDealButtonClick(Sender: TObject);
    procedure Card2RevFloatAnimationFinish(Sender: TObject);
    procedure Card3RevFloatAnimationFinish(Sender: TObject);
    procedure Card4RevFloatAnimationFinish(Sender: TObject);
    procedure Card5RevFloatAnimationFinish(Sender: TObject);
    procedure Card1RevFloatAnimationFinish(Sender: TObject);
    procedure shownew;
    procedure closeone(number: integer);
    procedure showone(number: integer);
    procedure Card1ImgClick(Sender: TObject);
    procedure Card2ImgClick(Sender: TObject);
    procedure Card3ImgClick(Sender: TObject);
    procedure Card4ImgClick(Sender: TObject);
    procedure Card5ImgClick(Sender: TObject);
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
  finished, first, hold1, hold2, hold3, hold4, hold5: boolean;
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

procedure TForm1.Card1ImgClick(Sender: TObject);
begin
  if not finished then
  begin
    Hold1Image.Visible:= not Hold1Image.Visible;
    hold1:= not hold1
  end
end;

procedure TForm1.Card1RevFloatAnimationFinish(Sender: TObject);
begin
//  Card1Img.Bitmap.CreateFromFile(nm);
//  Card1FwdFloatAnimation.Start;
end;

procedure TForm1.Card2ImgClick(Sender: TObject);
begin
  if not finished then
  begin
    Hold2Image.Visible:= not Hold2Image.Visible;
    hold2:= not hold2
  end
end;

procedure TForm1.Card2RevFloatAnimationFinish(Sender: TObject);
begin
//  Card2Img.Bitmap.CreateFromFile(nm);
//  Card2FwdFloatAnimation.Start;
end;

procedure TForm1.Card3ImgClick(Sender: TObject);
begin
  if not finished then
  begin
    Hold3Image.Visible:= not Hold3Image.Visible;
    hold3:= not hold3
  end
end;

procedure TForm1.Card3RevFloatAnimationFinish(Sender: TObject);
begin
//  Card3Img.Bitmap.CreateFromFile(nm);
//  Card3FwdFloatAnimation.Start;
end;

procedure TForm1.Card4ImgClick(Sender: TObject);
begin
  if not finished then
  begin
    Hold4Image.Visible:= not Hold4Image.Visible;
    hold4:= not hold4
  end
end;

procedure TForm1.Card4RevFloatAnimationFinish(Sender: TObject);
begin
//  Card4Img.Bitmap.CreateFromFile(nm);
//  Card4FwdFloatAnimation.Start;
end;

procedure TForm1.Card5ImgClick(Sender: TObject);
begin
  if not finished then
  begin
    Hold5Image.Visible:= not Hold5Image.Visible;
    hold5:= not hold5
  end
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
  nextdeal(deal);
  hold1:= false;
  hold2:= false;
  hold3:= false;
  hold4:= false;
  hold5:= false;
  first:= true;
end;

procedure Delay(iMilliseconds : Integer);
begin
iMilliseconds := MilliSecondOfTheDay(Time) + iMilliseconds;
while iMilliseconds > MilliSecondOfTheDay(Time) do
Application.ProcessMessages;
end;

procedure TForm1.closeone(number: integer);
begin
  nm:= 'img\back.gif';
  (FindComponent('Card' + number.ToString + 'RevFloatAnimation') As TFloatAnimation).Start;
  Delay(Trunc((FindComponent('Card' + number.ToString + 'RevFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
  (FindComponent('Card' + number.ToString + 'Img') As TImage).Bitmap.LoadFromFile(nm);
  (FindComponent('Card' + number.ToString + 'FwdFloatAnimation') As TFloatAnimation).Start;
  Delay(Trunc((FindComponent('Card' + number.ToString + 'FwdFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
end;

procedure TForm1.showone(number: integer);
begin
  nm:= 'img\' + definevalue(deal.cards[number]) + definecolor(deal.cards[number]) + '.gif';
  (FindComponent('Card' + number.ToString + 'RevFloatAnimation') As TFloatAnimation).Start;
  Delay(Trunc((FindComponent('Card' + number.ToString + 'RevFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
  (FindComponent('Card' + number.ToString + 'Img') As TImage).Bitmap.LoadFromFile(nm);
  (FindComponent('Card' + number.ToString + 'FwdFloatAnimation') As TFloatAnimation).Start;
  Delay(Trunc((FindComponent('Card' + number.ToString + 'FwdFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
end;

procedure TForm1.shownew;
var i: integer;
begin
  if not first then
    for i:= 1 to 5 do
    begin
      nm:= 'img\back.gif';
      (FindComponent('Card' + i.ToString + 'RevFloatAnimation') As TFloatAnimation).Start;
      Delay(Trunc((FindComponent('Card' + i.ToString + 'RevFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
      (FindComponent('Card' + i.ToString + 'Img') As TImage).Bitmap.LoadFromFile(nm);
      (FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Start;
      Delay(Trunc((FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
    end
  else
  first:= false;
  for i:= 1 to 5 do
  begin
    nm:= 'img\' + definevalue(deal.cards[i]) + definecolor(deal.cards[i]) + '.gif';
    (FindComponent('Card' + i.ToString + 'RevFloatAnimation') As TFloatAnimation).Start;
    Delay(Trunc((FindComponent('Card' + i.ToString + 'RevFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
    (FindComponent('Card' + i.ToString + 'Img') As TImage).Bitmap.LoadFromFile(nm);
    (FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Start;
    Delay(Trunc((FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Duration * 1000 + 10));
  end;

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
        Delay(Trunc((FindComponent('Card' + i.ToString + 'RevFloatAnimation') As TFloatAnimation).Duration * 1000));
        (FindComponent('Card' + i.ToString + 'Img') As TImage).Bitmap.LoadFromFile(nm);
        (FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Start;
        Delay(Trunc((FindComponent('Card' + i.ToString + 'FwdFloatAnimation') As TFloatAnimation).Duration * 1000));
      end;
      finished:= not finished
    end
    else;
  if keychar = '1' then
    if not finished then
    begin
      Hold1Image.Visible:= not Hold1Image.Visible;
      hold1:= not hold1
    end;
  if keychar = '2' then
    if not finished then
    begin
      Hold2Image.Visible:= not Hold2Image.Visible;
      hold2:= not hold2
    end;
  if keychar = '3' then
    if not finished then
    begin
      Hold3Image.Visible:= not Hold3Image.Visible;
      hold3:= not hold3
    end;
  if keychar = '4' then
    if not finished then
    begin
      Hold4Image.Visible:= not Hold4Image.Visible;
      hold4:= not hold4
    end;
  if keychar = '5' then
    if not finished then
    begin
      Hold5Image.Visible:= not Hold5Image.Visible;
      hold5:= not hold5
    end;
end;

procedure TForm1.NextDealButtonClick(Sender: TObject);
var i: integer;
begin
  if finished then
  begin
    nextdeal(deal);
    if credit > 5 then
      deal.bt:= bet
    else
      if credit > 0 then
      begin
        deal.bt:= credit;
        credit:= 0
      end
      else;
      shownew;
    finished:= false;
  end
  else
  begin
    Hold1Image.Visible:= false;
    Hold2Image.Visible:= false;
    Hold3Image.Visible:= false;
    Hold4Image.Visible:= false;
    Hold5Image.Visible:= false;
    i:= 6;
    if not hold1 then
    begin
      deal.cards[1]:= deal.cards[i];
      closeone(1);
      i:= i + 1
    end;
    if not hold2 then
    begin
      deal.cards[2]:= deal.cards[i];
      closeone(2);
      i:= i + 1
    end;
    if not hold3 then
    begin
      deal.cards[3]:= deal.cards[i];
      closeone(3);
      i:= i + 1
    end;
    if not hold4 then
    begin
      deal.cards[4]:= deal.cards[i];
      closeone(4);
      i:= i + 1
    end;
    if not hold5 then
    begin
      deal.cards[5]:= deal.cards[i];
      closeone(5);
      i:= i + 1
    end;
    Delay(350);
    if not hold1 then
    begin
      showone(1)
    end;
    if not hold2 then
    begin
      showone(2)
    end;
    if not hold3 then
    begin
      showone(3)
    end;
    if not hold4 then
    begin
      showone(4)
    end;
    if not hold5 then
    begin
      showone(5)
    end;
    hold1:= false;
    hold2:= false;
    hold3:= false;
    hold4:= false;
    hold5:= false;
    finished:= true
  end;
end;

end.
