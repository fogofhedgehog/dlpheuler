unit poker;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani;

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
    BitmapAnimation2: TBitmapAnimation;
    Back1FloatAnimation: TFloatAnimation;
    Card1FloatAnimation: TFloatAnimation;
    RectAnimation1: TRectAnimation;
    procedure Card1ImgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure NextDealButtonClick(Sender: TObject);
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

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

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

procedure TForm1.Card1ImgClick(Sender: TObject);
begin
Card1FloatAnimation.Start;
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

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
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
end;

procedure TForm1.NextDealButtonClick(Sender: TObject);
begin
  nextdeal(deal);
end;

end.
