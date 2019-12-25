unit poker;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani;

type

  TDeal = class
    cards: array[1 .. 11] of integer;
    bt: integer;
    Constructor Create;
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

var
  Form1: TForm1;
  bet, credit: integer;
  deal: TDeal;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

Constructor TDeal.Create;
var i, j, new: integer;
    duplicate: boolean;
begin
  cards[1]:= random(52);
  for i:= 2 to 11 do
  begin
    new:= random(52);
    j:= 1;
    while j < i do
    begin
      if new = cards[j] then
      begin
        duplicate:= true;
        new:= random(52);
        j:= 1;
        break
      end;
      if not duplicate then
        j:= j + 1;
    end;
    cards[i]:= new;
  end;
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
  bet:= 0
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if keychar = 'b' then
  begin
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
    deal:= TDeal.Create;
end;

end.
