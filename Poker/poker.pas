unit poker;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.ExtCtrls,
  System.DateUtils, stat, credt;

type

  TDeal = record
    cards: array[1 .. 11] of integer;
    bt: integer;
  end;

  stata = record
    game: int64;
    last: int64;
    total: int64;
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
    GameLabel: TLabel;
    ShowStatButton: TButton;
    GameStatusLabel: TLabel;
    NextCardImage: TImage;
    YouWonLabel: TLabel;
    TakeLabel: TLabel;
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
    function checkgame(deal: TDeal): integer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShowStatButtonClick(Sender: TObject);
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
  finished, first, onlyshow, nomore, hold1, hold2, hold3, hold4, hold5, bpressed, endmoney: boolean;
  nm: string;
  stat: array [0 .. 10] of int64;

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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
const fname = 'stt.wrd';
var f, f1: file of stata;
    rec: stata;
    tmpstat: array[0 .. 10, 1 .. 2] of int64;
  i: Integer;
begin
  AssignFile(f1, 'stt.wrb');
  if FileExists('stt.wrb') then
    if not FileExists(fname) then
      RenameFile('stt.wrb', fname)
    else
      if (FileAge('stt.wrb') < FileAge(fname)) and (FileSize(f1) <> 0) then
      begin
        DeleteFile(fname);
        RenameFile('stt.wrb', fname);
        DeleteFile('stt.wrb')
      end;
  AssignFile(f, fname);
  if FileExists(fname) then
  begin
    Reset(f);
    for i:= 0 to 10 do
    begin
      read(f, rec);
      tmpstat[i, 2]:= rec.total + stat[i];
      tmpstat[i, 1]:= stat[i];
    end;
  CloseFile(f)
  end
  else
    for i:= 0 to 10 do
    begin
      tmpstat[i, 2]:= stat[i];
      tmpstat[i, 1]:= stat[i];
    end;
  Rewrite(f);
  for i:= 0 to 10 do
  begin
    rec.game:= i;
    rec.last:= tmpstat[i, 1];
    rec.total:= tmpstat[i, 2];
    Write(f, rec)
  end;
  CloseFile(f)
end;

procedure TForm1.FormCreate(Sender: TObject);
var i: integer;
begin
  randomize;
  CreditAmountLabel.Text:= credit.ToString;
  bet:= 0;
  finished:= true;
  nextdeal(deal);
  bpressed:= false;
  hold1:= false;
  hold2:= false;
  hold3:= false;
  hold4:= false;
  hold5:= false;
  first:= true;
  nomore:= true;
  Form3:= TForm3.Create(Form1);
  Form3.ShowModal;
  for i:= 0 to 10 do
    stat[i]:= 0;
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

procedure TForm1.ShowStatButtonClick(Sender: TObject);
var f: text;
    i: integer;
begin
  AssignFile(f, '1');
  Rewrite(f);
  for i:= 0 to 10 do
    Writeln(f, stat[i].ToString);
  CloseFile(f);
  Form2:= TForm2.Create(Form1);
  Form2.Show;
end;

procedure TForm1.shownew;
var i: integer;
begin
  if not first then
    if not onlyshow then
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
  else
    first:= false;
  onlyshow:= false;
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
    if first then
    begin
      bpressed:= true;
      onlyshow:= true;
      first:= false;
      if bet < 5 then
        if credit > 0 then
        begin
          bet:= bet + 1;
          credit:= credit - 1;
        end
        else
        begin
          credit:= credit + bet - 1;
          bet:= 1
        end
      else
      begin
        bet:= 1;
        credit:= credit + 4
      end;
    end
    else
    if finished then
      begin
        if credit = 0 then
          begin
            ShowMessage('No more credits!');
            endmoney:= true
          end
        else
          if not nomore then
          begin
            onlyshow:= true;
            nomore:= true;
            for i:= 1 to 5 do
              closeone(i)
          end;
          if not bpressed then
          begin
            bet:= 1;
            credit:= credit - 1;
          end
          else
          if bet < 5 then
            if credit > 0 then
            begin
              bet:= bet + 1;
              credit:= credit - 1;
            end
            else
            begin
              credit:= credit + bet - 1;
              bet:= 1
            end
          else
          begin
            bet:= 1;
            credit:= credit + 4
          end;
          bpressed:= true;
      end;
    deal.bt:= bet;
    BetAmountLabel.Text:= bet.ToString;
    if credit < 0 then
      credit:= 0;
    CreditAmountLabel.Text:= credit.ToString;
  end;
  if keychar = 'n' then
  begin
    nextdeal(deal);
    deal.bt:= bet
  end;
  if keychar = ' ' then
    NextDealButtonClick(self);
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
var i, game, win: integer;
begin
  nomore:= false;
  GameLabel.Visible:= false;
  GameStatusLabel.Visible:= false;
  NextCardImage.Visible:= false;
  YouWonLabel.Visible:= false;
  if finished then
  begin
    if ((credit <= 0) and (not bpressed)) or ((credit <= 0) and bpressed and (bet = 0)) or
    ((bet <= 0) and (credit <= 0)) then
      ShowMessage('No more credits!')
    else
    if endmoney then
      ShowMessage('No more credits!')
      else
        begin
          nextdeal(deal);
          if credit < deal.bt then
          begin
            bet:= credit;
            deal.bt:= bet;
            BetAmountLabel.Text:= deal.bt.ToString;
            credit:= 0;
            CreditAmountLabel.Text:= credit.ToString
          end;
          if (deal.bt = 0) and (bet = 0) then
            if credit <= 0 then
            begin
              ShowMessage('No more credits!');
              endmoney:= true
            end
            else
              ShowMessage('Your bet is 0. No wins, no losses. Press "b" at the end of deal to bet for win');
          NextDealButton.Enabled:= false;
          NextDealButton.Text:= 'Dealing...';
          if not bpressed then
          begin
            if credit > deal.bt then
            begin
              credit:= credit - deal.bt;
              if credit < 0 then
                credit:= 0;
              CreditAmountLabel.Text:= credit.ToString
            end
            else
              if credit > 0 then
              begin
                deal.bt:= credit;
                    credit:= 0;
                CreditAmountLabel.Text:= credit.ToString
              end
              else;
          end;
          bpressed:= false;
          shownew;
          game:= checkgame(deal);
          GameLabel.TextSettings.FontColor:= TAlphaColorRec.Crimson;
          GameLabel.TextSettings.Font.Size:= 20;
          case game of
            0: GameLabel.Text:= 'Nothing';
            1: GameLabel.Text:= 'One pair';
            2: GameLabel.Text:= 'One pair';
            3: GameLabel.Text:= 'Two pairs';
            4: GameLabel.Text:= 'Three of a kind';
            5: GameLabel.Text:= 'Straight';
            6: GameLabel.Text:= 'Flush';
            7: GameLabel.Text:= 'Full house';
            8: GameLabel.Text:= 'Four of a kind';
            9: GameLabel.Text:= 'Straight flush';
            10: GameLabel.Text:= 'Royal flush';
          end;
          GameLabel.Visible:= true;
          NextDealButton.Enabled:= true;
          NextDealButton.Text:= 'Change';
          GameStatusLabel.Text:= 'Click card to hold/unhold and click "Change"';
          GameStatusLabel.Visible:= true;
          finished:= false;
        end
  end
  else
  begin
    NextDealButton.Enabled:= False;
    NextDealButton.Text:= 'Changing...';
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
    game:= checkgame(deal);
    case game of
      0:
      begin
        GameLabel.Text:= 'Nothing';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Darkred
      end;
      1:
      begin
        GameLabel.Text:= 'Nothing';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Darkred
      end;
      2:
      begin
        GameLabel.Text:= 'Nothing';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Darkred
      end;
      3:
      begin
        GameLabel.Text:= 'Two pairs';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Mediumblue;
        GameLabel.TextSettings.Font.Size:= 22
      end;
      4:
      begin
        GameLabel.Text:= 'Three of a kind';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Slateblue;
        GameLabel.TextSettings.Font.Size:= 22
      end;
      5:
      begin
        GameLabel.Text:= 'Straight';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Seagreen;
        GameLabel.TextSettings.Font.Size:= 24
      end;
      6:
      begin
        GameLabel.Text:= 'Flush';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Green;
        GameLabel.TextSettings.Font.Size:= 24
      end;
      7:
      begin
        GameLabel.Text:= 'Full house';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Lightgreen;
        GameLabel.TextSettings.Font.Size:= 26
      end;
      8:
      begin
        GameLabel.Text:= 'Four of a kind';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Salmon;
        GameLabel.TextSettings.Font.Size:= 26
      end;
      9:
      begin
        GameLabel.Text:= 'Straight flush';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Orangered;
        GameLabel.TextSettings.Font.Size:= 28
      end;
      10:
      begin
        GameLabel.Text:= 'Royal flush';
        GameLabel.TextSettings.FontColor:= TAlphaColorRec.Red;
        GameLabel.TextSettings.Font.Size:= 30
      end;
    end;
    GameLabel.Visible:= true;
    NextCardImage.Bitmap.LoadFromFile('img\' + definevalue(deal.cards[i]) + definecolor(deal.cards[i]) + '.gif');
    NextCardImage.Visible:= true;
    GameStatusLabel.Text:= 'Game over. Cick "Next deal" to continue';
    NextDealButton.Text:= 'Next deal';
    GameStatusLabel.Visible:= true;
    stat[game]:= stat[game] + 1;
    hold1:= false;
    hold2:= false;
    hold3:= false;
    hold4:= false;
    hold5:= false;
    case game of
      0: win:= 0;
      1: win:= 0;
      2: win:= 0;
      3: win:= 2;
      4: win:= 3;
      5: win:= 5;
      6: win:= 6;
      7: win:= 9;
      8: win:= 25;
      9: win:= 100;
      10: win:= 800;
    end;
    credit:= credit + win * deal.bt;
    if win > 0 then
      YouWonLabel.Text:= 'You won:  ' + (win * deal.bt).ToString
    else
      YouWonLabel.Text:= 'You lost';
    YouWonLabel.Visible:= True;
    if credit < 0 then
      credit:= 0;
    CreditAmountLabel.Text:= credit.ToString;
    bpressed:= false;
    finished:= true;
    NextDealButton.Enabled:= true
  end;
end;

procedure writestat;
begin

end;

function TForm1.checkgame(deal: TDeal): integer;
var value, color, valhlp: array [1 .. 5] of integer;
    i, j, k, n: integer;
    flush, straight: boolean;
begin
  result:= 0;
  straight:= false;
  flush:= false;
  for i:= 1 to 5 do
  begin
    valhlp[i]:= deal.cards[i] mod 13;
    color[i]:= deal.cards[i] div 13
  end;
  for i:= 1 to 5 do
  begin
    k:= valhlp[1];
    n:= 1;
    for j:= 2 to 5 do
      if k > valhlp[j] then
      begin
        k:= valhlp[j];
        n:= j
      end;
    value[i]:= k;
    valhlp[n]:= 14
  end;
  if ((value[5] - value[4] = 1) and (value[4] - value[3] = 1) and (value[3] - value[2] = 1) and (value[2] - value[1] = 1)) or
  ((value[1] = 0) and (value[2] = 9) and (value[3] = 10) and (value[4] = 11) and (value[5] = 12)) then
    straight:= true;
  if ((color[1] = color[2]) and (color[2] = color[3]) and (color[3] = color[4]) and (color[4] = color[5])) then
    flush:= true;
  if straight and not flush then
    result:= 5;
  if flush and not straight then
    result:= 6;
  if straight and flush then
    if (value[1] = 0) and (value[5] = 12) then
      result:= 10
    else
      result:= 9;
  if (not straight) and (not flush) then
  begin
    if (value[1] = value[2]) and (value[2] = value[3]) and (value[3] = value[4]) or
    ((value[2] = value[3]) and (value[3] = value[4]) and (value[4] = value[5])) then
      result:= 8
      else
       if ((value[1] = value[2]) and (value[2] <> value[3]) and (value[3] = value[4]) and (value[4] = value[5])) or
       ((value[1] = value[2]) and (value[2] = value[3]) and (value[3] <> value[4]) and (value[4] = value[5])) then
         result:= 7
       else
         if ((value[1] = value[2]) and (value[2] = value[3]) and (value[3] <> value[4]) and (value[4] <> value[5])) or
         ((value[1] <> value[2]) and (value[2] = value[3]) and (value[3] = value[4]) and (value[4] <> value[5])) or
         ((value[1] <> value[2]) and (value[2] <> value[3]) and (value[3] = value[4]) and (value[4] = value[5]))
         then
           result:= 4
         else
           if ((value[1] = value[2]) and (value[2] <> value[3]) and (value[3] = value[4]) and (value[4] <> value[5])) or
           ((value[1] = value[2]) and (value[2] <> value[3]) and (value[3] <> value[4]) and (value[4] = value[5])) or
           ((value[1] <> value[2]) and (value[2] = value[3]) and (value[3] <> value[4]) and (value[4] = value[5]))
           then
             result:= 3;
     if ((value[1] = value[2]) and (value[2] <> value[3]) and (value[3] <> value[4]) and (value[4] <> value[5])) then
       if (value[1] = 0) or (value[1] > 9)
         then result:= 2
         else result:= 1;
     if ((value[1] <> value[2]) and (value[2] = value[3]) and (value[3] <> value[4]) and (value[4] <> value[5])) then
       if (value[2] = 0) or (value[2] > 9)
         then result:= 2
         else result:= 1;
     if ((value[1] <> value[2]) and (value[2] <> value[3]) and (value[3] = value[4]) and (value[4] <> value[5])) then
       if (value[3] = 0) or (value[3] > 9)
         then result:= 2
         else result:= 1;
     if ((value[1] <> value[2]) and (value[2] <> value[3]) and (value[3] <> value[4]) and (value[4] = value[5])) then
       if (value[1] = 0) or (value[1] > 9)
         then result:= 2
         else result:= 1;
     if ((value[1] <> value[2]) and (value[2] <> value[3]) and (value[3] <> value[4]) and (value[4] <> value[5]))
       then result:= 0;
  end;
end;

end.
