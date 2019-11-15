unit fogmath;

interface

uses
  System.SysUtils, Classes, math, FMX.Dialogs, Generics.Collections, eulclass,
  velthuis.bigintegers, velthuis.bigdecimals, velthuis.bigrationals;

function CheckPalindrNum (number:int64): boolean;   //  check if the number is palindrome
function CheckPalindrStr (txt: string): boolean;
function IsPrime (number:int64): boolean;
function DigToChr (number: int64): string;
function RightStr (txt: string; amount: integer): string;
function LeftStr (txt: string; amount: integer): string;
function DigitToText (number: int64): string;
function numbertotext (number: int64): string;
function DeleteSpcAndDef (txt: string): string;
function strmultdig (inner: string; mlt: integer): string;
function sumstrings (num1, num2: string): string;
function Latinletterorder (s: char): int64;
function sumdivisors (number: int64): int64;
function factorial (number: int64): int64;
function powerint64 (number1, number2: int64): int64;
function StrDigitToInt64 (str: char): int64;
function dectobin (number:int64): string;
function IsPentagonal (number: int64): boolean;
function IsHexagonal (number: int64): boolean;
function nextprime (number: int64): int64;
function exactfourprimedivs (number: int64): boolean;
function OrderString(txt: string): string;
function combinatoric (i, j: int64): int64;
function pokercomb(cards: string): int64;
function reversenumber(number: int64): int64;
function reversestring(txt: string): string;
function asciitocode(c:char): integer;
function codetoascii(i:integer): char;
function IsSquare(number: int64): boolean;
function IsHeptagonal(number: int64): boolean;
function IsOctagonal(number: int64): boolean;
function NextOctagonal(number: int64): int64;
function IsTriangle(number: int64): boolean;
//procedure chkcorner(n1, n2, n3, n4, n5, n6: int64);
function stringmult(str1, str2: string): string;
function eulerfunction(number: int64): int64;
function hghcomfac(number1, number2: int64): int64;
function subtrstrings(str1, str2:string): string;
function exactstrdivint(str1, str2: string): string;
function stringintdivision(str1, str2: string; precision: int64): string;
function factorization(number: int64): TList<int64>;
function RomanToInt64(rnumber: string): int64;
function Int64ToMinRoman(number: int64): string;
function exprvalue(action: string; order, num1, num2, num3, num4: int64): int64;
function oper(action: char; num1, num2: extended): extended;
function isperfect(num: int64): boolean;
procedure readsudoku(fname: string; number: int64; var m: Puzzle);
procedure checksudoku(var m: Puzzle; var lowestx, lowesty: int64; var changed, allcorrect: boolean);
procedure checksinglefieldsudoku(m: Puzzle; x, y: int64; var used: TList<int64>);
function sortstring(word: string): string;   //sorts the string ascending
function detsquarematrix (matrix: TList<int64>): biginteger;   // calculates the determinant of square matrix
function checktwoontwo(a1, a2, a3, a4, a5, a6, a7: int64): boolean;    // helper function for task 103
function checkthreeonthree(a1, a2, a3, a4, a5, a6, a7: int64): boolean;    // helper function for task 103
function ispandigital(a: int64): boolean;    // checks if the 9-digit number is pandigital
function isspecial(qset: TList<int64>): boolean;   // helper function for task 105
function check2on2(qset: TList<int64>): boolean;   // helper function for task 105
function check3on3(qset: TList<int64>): boolean;   // helper function for task 105
function check4on4(qset: TList<int64>): boolean;   // helper function for task 105
function check5on5(qset: TList<int64>): boolean;   // helper function for task 105
function check6on6(qset: TList<int64>): boolean;   // helper function for task 105
function nextpermutation(a: string): string;
function addbin(a, b: string): string;
function arrsum(a: array of integer): int64;
function ispalindromic(number: int64): boolean;

implementation

uses eulertask;

function CheckPalindrNum (number:int64):boolean;    //  check if the number is palindrome
var straight, reverse:string;
    i:integer;
begin
  result:=False;
  straight:=number.ToString;
  reverse:='';
  for i := 0 to length(straight)-1 do
  reverse:=reverse+straight[length(straight)-i];
  if straight=reverse then result:=True;
end;

function CheckPalindrStr (txt: string): boolean;      //  check if the string is strict palindrome
var reverse: string;
    i: integer;
begin
  result:= False;
  reverse:= '';
  for i := 0 to Length (txt) - 1 do reverse:= reverse + txt [length(txt) - i];
  if txt = reverse then result:= true;
end;

function IsPrime (number:int64): boolean;      // check if the number is prime
var i:int64;
    helper:extended;
begin
result:=true;
helper:=number;
  for i := 2 to trunc(sqrt(helper))+1 do
  begin
    if number mod i = 0 then
    begin
      result:=false;
      break
    end;
  end;
if (number = 2) or (number = 3) then result:=True;
if number = 1 then result:= false
end;

function DigitToText (number: int64): string;     // convert digit to text
begin
  case number of
  0: result:= '';
  1: result:= 'one';
  2: result:= 'two';
  3: result:= 'three';
  4: result:= 'four';
  5: result:= 'five';
  6: result:= 'six';
  7: result:= 'seven';
  8: result:= 'eight';
  9: result:= 'nine';
  end;
end;

function DigToChr (number: int64):string;    // convert digit into spaceand symbol string
begin
  if number=1 then result:=' 1';
  if number=2 then result:=' 2';
  if number=3 then result:=' 3';
  if number=4 then result:=' 4';
  if number=5 then result:=' 5';
  if number=6 then result:=' 6';
  if number=7 then result:=' 7';
  if number=8 then result:=' 8';
  if number=9 then result:=' 9';
  if number=0 then result:=' 0';
end;

function RightStr (txt: string; amount: integer): string;     // returns amounting symbols from the right of the string
var i: integer;
begin
if amount > length (txt) then
  begin
    showmessage ('Requested amount of returning symbols exceeds the length of source string. Returning source string.');
    result:= txt;
  end
  else
  begin
    result:='';
    if amount <> 0 then
      for i := length(txt)-amount+1 to length(txt) do result:= result + txt [i];
  end;
end;

function LeftStr (txt: string; amount: integer): string;     // returns amounting symbols from the left of the string
var i: integer;
begin
  if amount > length (txt) then
  begin
    showmessage ('Requested amount of returning symbols exceeds the length of source string. Returning source string.');
    result:= txt;
  end
  else
  begin
    result:= '';
    if amount <> 0 then
      for i:= 1 to amount do result:= result + txt[i];
  end;
end;

function numbertotext (number: int64): string;   // convert number to text
var intmd: int64;
    res: string;
begin
  result:='';
  if number div 1000 > 0 then
  begin
    result:= result + 'thousand';
    result:= digittotext(number div 1000) + ' ' + result;
  end;
  intmd:= number - (number div 1000)*1000;
  res:='';
  if intmd div 100 > 0 then
  begin
    res:= 'hundred';
    res:= digittotext(intmd div 100) + ' ' + res;
  end;
  if (result <> '') and (res <> '') then result:= result + ' ' + res;
  if (result = '') and (res <> '') then result:= res;
  TrimLeft (result);
  intmd:= intmd - (intmd div 100)*100;
  if intmd < 20 then
  case intmd of
  0: result:= result + '';
  1: result:= result + ' and ' + 'one';
  2: result:= result + ' and ' + 'two';
  3: result:= result + ' and ' + 'three';
  4: result:= result + ' and ' + 'four';
  5: result:= result + ' and ' + 'five';
  6: result:= result + ' and ' + 'six';
  7: result:= result + ' and ' + 'seven';
  8: result:= result + ' and ' + 'eight';
  9: result:= result + ' and ' + 'nine';
  10: result:= result + ' and ' + 'ten';
  11: result:= result + ' and ' + 'eleven';
  12: result:= result + ' and ' + 'twelve';
  13: result:= result + ' and ' + 'thirteen';
  14: result:= result + ' and ' + 'fourteen';
  15: result:= result + ' and ' + 'fifteen';
  16: result:= result + ' and ' + 'sixteen';
  17: result:= result + ' and ' + 'seventeen';
  18: result:= result + ' and ' + 'eighteen';
  19: result:= result + ' and ' + 'nineteen';
  end;
  if intmd>=20 then
  begin
    case intmd div 10 of
    2: result:= result + ' and twenty';
    3: result:= result + ' and thirty';
    4: result:= result + ' and forty';
    5: result:= result + ' and fifty';
    6: result:= result + ' and sixty';
    7: result:= result + ' and seventy';
    8: result:= result + ' and eighty';
    9: result:= result + ' and ninety';
    end;
    if intmd mod 10 > 0 then result:= result + '-';
    result:= result + digittotext(intmd mod 10)
  end;
  if result[1] = ' ' then result:= RightStr(result, length(result)-5);
end;

function DeleteSpcAndDef (txt: string): string;     // deletes spaces and defises from string
var i: integer;
begin
  result:= '';
  for i := 1 to length(txt) do
    if (txt[i] <> ' ') and (txt[i] <> '-') then result:=result+txt[i];
end;

function strmultdig (inner: string; mlt: integer): string;   // multiply string of digits to one-digit number and return string
var i, ovfl, res: int64;
begin
  result:= '';
  ovfl:= 0;
  for i := length(inner) downto 1 do
  begin
    res:= strtoint64 (inner [i]) * mlt + ovfl;
    result:= DigToChr(res mod 10) [2] + result;
    ovfl:= res div 10;
  end;
  if ovfl > 0 then result:= DigToChr(ovfl) [2] + result;
end;

function sumstrings (num1, num2: string): string;     // return string which is equal to integer sum of two "integer-strings"
var i, ovfl: integer;
    l, m: string;
    nhlp:string;
begin
//  k:= min (length(num1), length (num2));
  ovfl:= 0;
  if length(num2) > length (num1) then
  begin
    l:= num1;
    m:= num2;
  end
  else
  begin
    l:= num2;
    m:= num1;
  end;
  result:= '';
  for i:= length(l) downto 1 do
  begin
    result:= DigToChr((StrToInt(l[i]) + StrToInt(m[length(m) - (length(l)-i)]) + ovfl) mod 10)[2] + result;
    ovfl:= (StrToInt(l[i]) + StrToInt(m[length(m) - length(l) + i]) + ovfl) div 10;
  end;
  nhlp:='';
  if length(m) > length (l) then
  begin
    for i:= length(m) - length (l) downto 1 do
    begin
      nhlp:= DigToChr((strtoint(m[i]) + ovfl) mod 10) [2] + nhlp;
      ovfl:= (strtoint(m[i]) + ovfl) div 10
    end;
    if ovfl > 0 then nhlp:= DigToChr(ovfl) [2] + nhlp;
  end
  else
  if ovfl=1 then nhlp:= '1';
  result:= nhlp + result;
end;

function Latinletterorder (s: char): int64;    //order of letters in latin alphabet
begin
  result:= 0;
  case s of
  'A': result:= 1;
  'B': result:= 2;
  'C': result:= 3;
  'D': result:= 4;
  'E': result:= 5;
  'F': result:= 6;
  'G': result:= 7;
  'H': result:= 8;
  'I': result:= 9;
  'J': result:= 10;
  'K': result:= 11;
  'L': result:= 12;
  'M': result:= 13;
  'N': result:= 14;
  'O': result:= 15;
  'P': result:= 16;
  'Q': result:= 17;
  'R': result:= 18;
  'S': result:= 19;
  'T': result:= 20;
  'U': result:= 21;
  'V': result:= 22;
  'W': result:= 23;
  'X': result:= 24;
  'Y': result:= 25;
  'Z': result:= 26;
  'a': result:= 1;
  'b': result:= 2;
  'c': result:= 3;
  'd': result:= 4;
  'e': result:= 5;
  'f': result:= 6;
  'g': result:= 7;
  'h': result:= 8;
  'i': result:= 9;
  'j': result:= 10;
  'k': result:= 11;
  'l': result:= 12;
  'm': result:= 13;
  'n': result:= 14;
  'o': result:= 15;
  'p': result:= 16;
  'q': result:= 17;
  'r': result:= 18;
  's': result:= 19;
  't': result:= 20;
  'u': result:= 21;
  'v': result:= 22;
  'w': result:= 23;
  'x': result:= 24;
  'y': result:= 25;
  'z': result:= 26;
  end;
end;

function sumdivisors (number: int64): int64;
var i: int64;
begin
  result:= 1;
  if (number <> 1) and (number <> 2) and (number <> 3) then
    for i := 2 to trunc(sqrt(real(number))) do
      if (number mod i) = 0 then
      begin
        result:= result + i + (number div i);
        if i = (number div i) then result:= result - i;
      end;
  if (number = 1) or (number = 2) or (number = 3) then result:= 1;
end;

function factorial (number: int64): int64;  // returns factorial of a number
var i: int64;
begin
  result:= 1;
  if number <> 0 then
  for i:= 1 to number do
  result:= result * i;
end;

function powerint64 (number1, number2: int64): int64;  //returns number1 in number2-th power in int64
var i: int64;
begin
  result:= 1;
  if number2 <> 0 then
    for i:= 1 to number2 do
      result:= result * number1
  else result:= 1;
end;

function StrDigitToInt64 (str: char): int64;     // transform char-digit to int64
begin
  case str of
  '1': result:= 1;
  '2': result:= 2;
  '3': result:= 3;
  '4': result:= 4;
  '5': result:= 5;
  '6': result:= 6;
  '7': result:= 7;
  '8': result:= 8;
  '9': result:= 9;
  '0': result:= 0;
  end;
end;

function dectobin (number:int64): string;      // converts number to string in binary mode
begin
  result:= '';
  if number = 0 then result:= '0';
//  if number = 1 then result:= '1';
  while (number div 2 > 0) or (number mod 2 > 0) do
  begin
    result:= (number mod 2).ToString + result;
    number:= number div 2;
  end;
end;

function IsPentagonal (number: int64): boolean;    // check if the number is pentagonal
var h: extended;
begin
  h:= (sqrt(24 * number + 1) + 1) / 6;
  result:= (trunc(h) = h);
end;

function IsHexagonal (number: int64): boolean;    // check if the number is hexagonal
var h: extended;
begin
  h:= (1 + sqrt (1 + 8 * number)) / 4;
  result:= (trunc(h) = h);
end;

function nextprime (number: int64): int64;   // returns the next prime value
begin
  if number= 2 then result:= 3
  else
  begin
    result:= number + 2;
    while not IsPrime(result) do result:= result + 2
  end;
end;

function exactfourprimedivs (number: int64): boolean;       //helper function for task 47
var i: int64;
    t: TList<int64>;
begin
  t:= TList<int64>.Create;
  t.Clear;
  i:= 2;
  while (number <> 1) and (t.Count <=4) do
  begin;
    if number mod i = 0 then
    begin
      number:= number div i;
      if not t.Contains(i) then t.Add(i)
    end
    else
    i:= nextprime(i);
    if (i > sqrt(number)) and (i > 3) then
    begin
      t.Add(number);
      number:= 1;
      break
    end;
  end;
  result:= (number = 1) and (t.Count = 4);
end;

function OrderString(txt: string): string;        //returns ordered string
var i, j: integer;
    txt1: char;
begin
  for i:= 1 to length(txt) - 1 do
    for j:= i + 1 to length(txt) do
      if txt[j] < txt [i] then
      begin
        txt1:= txt[i];
        txt[i]:= txt[j];
        txt[j]:= txt1
      end;
  result:= txt;
end;

function combinatoric (i, j: int64): int64;     //Task 53 - 4075
var cnt: int64;
    up, down, down1: TList<int64>;
begin
  result:= 1;
  up:= TList<int64>.Create;
  up.Clear;
  down:= TList<int64>.Create;
  down.Clear;
  for cnt:= 1 to i do
  begin;
    up.Add(j - cnt + 1);
    down.Add(cnt);
  end;
  down1:= TList<int64>.Create;
  down1.Clear;
  for cnt:= 0 to i-1 do
  down1.Add(down[cnt]);
  for cnt:= 0 to i-1 do
  if up.Contains(down1[cnt]) then
  begin
    up.Remove(down1[cnt]);
    down.Remove(down1[cnt]);
  end;
  for cnt:= 0 to up.Count-1 do
  result:= result * up[cnt] div down[cnt];
  up.Destroy;
  down.Destroy;
  down1.Destroy;
end;

function pokercomb(cards: string): int64;      //returns fully comparable numeric description for poker combinations
var i: int64;
    fn, fs: TList<int64>;
    strt, flus :boolean;
begin
    fn:= TList<int64>.Create;
    fs:= TList<int64>.Create;
    fn.Clear;
    fs.Clear;
    i:= 1;
    while i < 15 do
    begin
      case cards[i] of
      '2': fn.Add(2);
      '3': fn.Add(3);
      '4': fn.Add(4);
      '5': fn.Add(5);
      '6': fn.Add(6);
      '7': fn.Add(7);
      '8': fn.Add(8);
      '9': fn.Add(9);
      'T': fn.Add(10);
      'J': fn.Add(11);
      'Q': fn.Add(12);
      'K': fn.Add(13);
      'A': fn.Add(14);
      end;
      case cards[i + 1] of
      'S': fs.Add(1);
      'C': fs.Add(2);
      'D': fs.Add(3);
      'H': fs.Add(4);
      end;
    i:= i + 3;
    end;
    fn.Sort;
    fs.Sort;
    result:= 0;
    strt:= (fn[4] - fn[3] = 1) and (fn[3] - fn[2] = 1) and (fn[2] - fn[1] = 1) and (fn[1] - fn[0] = 1);
    flus:= (fs[4] = fs[3]) and (fs[3] = fs[2]) and (fs[2] = fs[1]) and (fs[1] = fs[0]);
    if ((fn[0] = fn[1]) and (fn[1] = fn[2]) and (fn[2] = fn[3])) or ((fn[4] = fn[3]) and
    (fn[3] = fn[2]) and (fn[2] = fn[1])) then result:= 70000000000;                                   //four of a kind
    if ((fn[0] = fn[1]) and (fn[2] = fn[3]) and (fn[3] = fn[4])) then result:= 60000000000 + fn[2];   //full house 2+3
    if ((fn[0] = fn[1]) and (fn[1] = fn[2]) and (fn[3] = fn[4])) then result:= 60000000000 + fn[0];   //full house 3+2
    if strt and flus then result:= 80000000000 + fn[0];                                               //straight flush
    if (result = 8) and (fn[0] = 10) then result:= 90000000000;                                       //royal flush
    if (not strt) and flus then result:= 50000000000 + fn[4] * 100000000 + fn[3] * 1000000 + fn[2] * 10000 +
    fn[1] * 100 + fn[0];                                                                              //flush
    if strt and (not flus) then result:= 40000000000 + fn[0];                                         //straight
    if ((fn[0] = fn[1]) and (fn[1] = fn[2]) and (fn[2] <> fn[3]) and (fn[3] <> fn[4])) or
    ((fn[0] <> fn [1]) and (fn[1] = fn[2]) and (fn[2] = fn[3]) and (fn[3] <> fn[4])) or
    ((fn[0] <> fn [1]) and (fn[1] <> fn[2]) and (fn[2] = fn[3]) and (fn[3] = fn[4]))then
    result:= 30000000000;                                                                             //three of a kind
    if (fn[0] = fn[1]) and (fn[1] <> fn[2]) and (fn[2] <> fn[3]) and (fn[3] = fn[4]) then
    result:= 20000000000 + fn[3] * 10000 + fn[0] * 100 + fn[2];                                       //two pairs  2+1+2
    if (fn[0] <> fn[1]) and (fn[1] = fn[2]) and (fn[2] <> fn[3]) and (fn[3] = fn[4]) then
    result:= 20000000000 + fn[3] * 10000 + fn[1] * 100 + fn[0];                                       //two pairs  1+2+2
    if (fn[0] = fn[1]) and (fn[1] <> fn[2]) and (fn[2] = fn[3]) and (fn[3] <> fn[4]) then
    result:= 20000000000 + fn[2] * 10000 + fn[0] * 100 + fn[4];                                       //two pairs  2+2+1
    if (fn[0] = fn[1]) and (fn[1] <> fn[2]) and (fn[2] <> fn[3]) and (fn[3] <> fn[4]) then
    result:= 10000000000 + fn[0] * 1000000 + fn[4] * 10000 + fn[3] * 100 + fn[2];                     //one pair  2+1+1+1
    if (fn[0] <> fn[1]) and (fn[1] = fn[2]) and (fn[2] <> fn[3]) and (fn[3] <> fn[4]) then
    result:= 10000000000 + fn[1] * 1000000 + fn[4] * 10000 + fn[3] * 100 + fn[0];                     //one pair  1+2+1+1
    if (fn[0] <> fn[1]) and (fn[1] <> fn[2]) and (fn[2] = fn[3]) and (fn[3] <> fn[4]) then
    result:= 10000000000 + fn[2] * 1000000 + fn[4] * 10000 + fn[1] * 100 + fn[0];                     //one pair  1+1+2+1
    if (fn[0] <> fn[1]) and (fn[1] <> fn[2]) and (fn[2] <> fn[3]) and (fn[3] = fn[4]) then
    result:= 10000000000 + fn[3] * 1000000 + fn[2] * 10000 + fn[1] * 100 + fn[0];                     //one pair  1+1+1+2
    if result = 0 then result:= 100000000 * fn[4] + 1000000 * fn[3] + 10000 * fn[2] + 100 * fn[1] + fn[0];  //no combination
end;

function reversenumber(number: int64): int64;           //returns inverted number
var i: integer;
straight, reverse: string;
begin
  straight:= number.ToString;
  reverse:= '';
  for i:= length (straight) downto 1 do
  reverse:= reverse + straight[i];
  result:= reverse.ToInt64;
end;

function reversestring(txt: string): string;           // returns inverted string
var i: integer;
begin
  result:= '';
  for i:= length(txt) downto 1 do
    result:= result + txt[i];
end;
                                              //returns ascii code in integer for symbol
function asciitocode(c:char): integer;
begin
  case c of
  ' ': result:= 32;
  '!': result:= 33;
  '"': result:= 34;
  '#': result:= 35;
  '$': result:= 36;
  '%': result:= 37;
  '&': result:= 38;
  '''': result:= 39;
  '(': result:= 40;
  ')': result:= 41;
  '*': result:= 42;
  '+': result:= 43;
  ',': result:= 44;
  '-': result:= 45;
  '.': result:= 46;
  '/': result:= 47;
  '0': result:= 48;
  '1': result:= 49;
  '2': result:= 50;
  '3': result:= 51;
  '4': result:= 52;
  '5': result:= 53;
  '6': result:= 54;
  '7': result:= 55;
  '8': result:= 56;
  '9': result:= 57;
  ':': result:= 58;
  ';': result:= 59;
  '<': result:= 60;
  '=': result:= 61;
  '>': result:= 62;
  '?': result:= 63;
  '@': result:= 64;
  'A': result:= 65;
  'B': result:= 66;
  'C': result:= 67;
  'D': result:= 68;
  'E': result:= 69;
  'F': result:= 70;
  'G': result:= 71;
  'H': result:= 72;
  'I': result:= 73;
  'J': result:= 74;
  'K': result:= 75;
  'L': result:= 76;
  'M': result:= 77;
  'N': result:= 78;
  'O': result:= 79;
  'P': result:= 80;
  'Q': result:= 81;
  'R': result:= 82;
  'S': result:= 83;
  'T': result:= 84;
  'U': result:= 85;
  'V': result:= 86;
  'W': result:= 87;
  'X': result:= 88;
  'Y': result:= 89;
  'Z': result:= 90;
  '[': result:= 91;
  '\': result:= 92;
  ']': result:= 93;
  '^': result:= 94;
  '_': result:= 95;
  '`': result:= 96;
  'a': result:= 97;
  'b': result:= 98;
  'c': result:= 99;
  'd': result:= 100;
  'e': result:= 101;
  'f': result:= 102;
  'g': result:= 103;
  'h': result:= 104;
  'i': result:= 105;
  'j': result:= 106;
  'k': result:= 107;
  'l': result:= 108;
  'm': result:= 109;
  'n': result:= 110;
  'o': result:= 111;
  'p': result:= 112;
  'q': result:= 113;
  'r': result:= 114;
  's': result:= 115;
  't': result:= 116;
  'u': result:= 117;
  'v': result:= 118;
  'w': result:= 119;
  'x': result:= 120;
  'y': result:= 121;
  'z': result:= 122;
  '{': result:= 123;
  '|': result:= 124;
  '}': result:= 125;
  '~': result:= 126;
  end;
end;

function codetoascii(i:integer): char;          //returns symbol for ascii code in integer
begin
  case i of
  32: result:= ' ';
  33: result:= '!';
  34: result:= '"';
  35: result:= '#';
  36: result:= '$';
  37: result:= '%';
  38: result:= '&';
  39: result:= '''';
  40: result:= '(';
  41: result:= ')';
  42: result:= '*';
  43: result:= '+';
  44: result:= ',';
  45: result:= '-';
  46: result:= '.';
  47: result:= '/';
  48: result:= '0';
  49: result:= '1';
  50: result:= '2';
  51: result:= '3';
  52: result:= '4';
  53: result:= '5';
  54: result:= '6';
  55: result:= '7';
  56: result:= '8';
  57: result:= '9';
  58: result:= ':';
  59: result:= ';';
  60: result:= '<';
  61: result:= '=';
  62: result:= '>';
  63: result:= '?';
  64: result:= '@';
  65: result:= 'A';
  66: result:= 'B';
  67: result:= 'C';
  68: result:= 'D';
  69: result:= 'E';
  70: result:= 'F';
  71: result:= 'J';
  72: result:= 'H';
  73: result:= 'I';
  74: result:= 'J';
  75: result:= 'K';
  76: result:= 'L';
  77: result:= 'M';
  78: result:= 'N';
  79: result:= 'O';
  80: result:= 'P';
  81: result:= 'Q';
  82: result:= 'R';
  83: result:= 'S';
  84: result:= 'T';
  85: result:= 'U';
  86: result:= 'V';
  87: result:= 'W';
  88: result:= 'X';
  89: result:= 'Y';
  90: result:= 'Z';
  91: result:= '[';
  92: result:= '\';
  93: result:= ']';
  94: result:= '^';
  95: result:= '_';
  96: result:= '`';
  97: result:= 'a';
  98: result:= 'b';
  99: result:= 'c';
  100: result:= 'd';
  101: result:= 'e';
  102: result:= 'f';
  103: result:= 'g';
  104: result:= 'h';
  105: result:= 'i';
  106: result:= 'j';
  107: result:= 'k';
  108: result:= 'l';
  109: result:= 'm';
  110: result:= 'n';
  111: result:= 'o';
  112: result:= 'p';
  113: result:= 'q';
  114: result:= 'r';
  115: result:= 's';
  116: result:= 't';
  117: result:= 'u';
  118: result:= 'v';
  119: result:= 'w';
  120: result:= 'x';
  121: result:= 'y';
  122: result:= 'z';
  123: result:= '{';
  124: result:= '|';
  125: result:= '}';
  126: result:= '~';
  end;
end;

function issquare(number: int64): boolean;               //check if the number is square
begin
  result:= (trunc(sqrt(number)) = sqrt(number));
end;

function IsHeptagonal(number: int64): boolean;           //check if the number is heptagonal
begin
  result:= (trunc((sqrt(40 * number + 9) + 3) / 10)) = (sqrt(40 * number + 9) + 3) / 10;
end;

function IsOctagonal(number: int64): boolean;            // check if the number is octagonal
begin
  result:= (trunc((sqrt(3 * number + 1) + 1) / 3)) = (sqrt(3 * number + 1) + 1) / 3;
end;

function NextOctagonal (number: int64): int64;            // return next closest higher number that is octagonal
var i: int64;
begin
  i:= trunc((sqrt(3 * number + 1) + 1) / 3) + 1;
  result:= i * (3 * i - 2);
end;

function IsTriangle(number: int64): boolean;                      // check if the number is triangle
begin
  result:= (trunc((sqrt(8 * number + 1) - 1) / 2)) = (sqrt(8 * number + 1) - 1) / 2;
end;

//procedure chkcorner(n1, n2, n3, n4, n5, n6: int64);
//var st1, st2, st3, st4, st5, st6: string;
//begin
//  st1:= n1.ToString + ' is ';
//  if IsTriangle(n1) then st1:=st1 + 'triangle ';
//  if IsSquare(n1) then st1:=st1 + 'square ';
//  if IsPentagonal(n1) then st1:=st1 + 'pentagonal ';
//  if IsHexagonal(n1) then st1:=st1 + 'hexagonal ';
//  if IsHeptagonal(n1) then st1:=st1 + 'heptagonal ';
//  if IsOctagonal(n1) then st1:=st1 + 'octagonal ';
//  st2:= n2.ToString + ' is ';
//  if IsTriangle(n2) then st2:=st2 + 'triangle ';
//  if IsSquare(n2) then st2:=st2 + 'square ';
//  if IsPentagonal(n2) then st2:=st2 + 'pentagonal ';
//  if IsHexagonal(n2) then st2:=st2 + 'hexagonal ';
//  if IsHeptagonal(n2) then st2:=st2 + 'heptagonal ';
//  if IsOctagonal(n2) then st2:=st2 + 'octagonal ';
//  st3:= n3.ToString + ' is ';
//  if IsTriangle(n3) then st3:=st3 + 'triangle ';
//  if IsSquare(n3) then st3:=st3 + 'square ';
//  if IsPentagonal(n3) then st3:=st3 + 'pentagonal ';
//  if IsHexagonal(n3) then st3:=st3 + 'hexagonal ';
//  if IsHeptagonal(n3) then st3:=st3 + 'heptagonal ';
//  if IsOctagonal(n3) then st3:=st3 + 'octagonal ';
//  st4:= n4.ToString + ' is ';
//  if IsTriangle(n4) then st4:=st4 + 'triangle ';
//  if IsSquare(n4) then st4:=st4 + 'square ';
//  if IsPentagonal(n4) then st4:=st4 + 'pentagonal ';
//  if IsHexagonal(n4) then st4:=st4 + 'hexagonal ';
//  if IsHeptagonal(n4) then st4:=st4 + 'heptagonal ';
//  if IsOctagonal(n4) then st4:=st4 + 'octagonal ';
//  st5:= n5.ToString + ' is ';
//  if IsTriangle(n5) then st5:=st5 + 'triangle ';
//  if IsSquare(n5) then st5:=st5 + 'square ';
//  if IsPentagonal(n5) then st5:=st5 + 'pentagonal ';
//  if IsHexagonal(n5) then st5:=st5 + 'hexagonal ';
//  if IsHeptagonal(n5) then st5:=st5 + 'heptagonal ';
//  if IsOctagonal(n5) then st5:=st5 + 'octagonal ';
//  st6:= n6.ToString + ' is ';
//  if IsTriangle(n6) then st6:=st6 + 'triangle ';
//  if IsSquare(n6) then st6:=st6 + 'square ';
//  if IsPentagonal(n6) then st6:=st6 + 'pentagonal ';
//  if IsHexagonal(n6) then st6:=st6 + 'hexagonal ';
//  if IsHeptagonal(n6) then st6:=st6 + 'heptagonal ';
//  if IsOctagonal(n6) then st6:=st6 + 'octagonal ';
//  showmessage (st1 + st2 + st3 + st4 + st5 + st6);
//end;

function stringmult(str1, str2: string): string;         //returns the product of two numeric strings in string format
var interm: Tlist<string>;
    res: string;
    i, j, k, ovfl: int64;
begin
  interm:= TList<string>.Create;
  interm.Clear;
  for i:= length(str2) downto 1 do
  begin
    res:='';
    ovfl:= 0;
    for j:= length(str1) downto 1 do
    begin
      k:= StrDigitToInt64(str1[j]) * StrDigitToInt64(str2[i]) + ovfl;
      res:= (k mod 10).ToString + res;
      ovfl:= k div 10;
    end;
    if ovfl <> 0 then res:= ovfl.ToString + res;
    k:= length(str2) - i;
    while k > 0 do
    begin
      res:= res + '0';
      k:= k - 1;
    end;
    interm.Add(res);
  end;
  result:='0';
  for i:= 0 to interm.Count - 1 do
    result:= sumstrings(result, interm[i]);
  interm.Destroy;
end;

function eulerfunction(number: int64): int64;         // returns the value of euler (fi) function
var i, factor: int64;
    multies: TList<int64>;
begin
  multies:= TList<int64>.Create;
    if not IsPrime(number) then
    begin
      multies.Clear;
      i:= 2;
      factor:= number;
      while i <= trunc(sqrt(factor)) do
      begin
        if factor mod i = 0 then
        begin
          factor:= factor div i;
          multies.Add(i);
          if IsPrime(factor) then
          begin
            multies.Add(factor);
            i:= number
          end;
        end
        else i:= nextprime(i);
      end;
      result:= multies[0];
      for i:= 1 to multies.Count - 1 do
      begin
        if multies[i] = multies[i-1] then result:= result * multies[i]
        else
          result:= (result div multies[i-1]) * (multies[i-1] - 1) * multies[i];
      end;
      result:= (result div multies[i-1]) * (multies[i-1] - 1);
    end
    else result:= number - 1;
  multies.Destroy;
end;

function hghcomfac(number1, number2: int64): int64;   // returns highest common factor of a couple numbers
var i, j, k: int64;
begin
   j:= number1;
   k:= number2;
   if j < k then
   begin
     i:= j;
     j:= k;
     k:= i
   end;
   i:= 1;
   while i <> 0 do
   begin
     i:= j mod k;
     j:= k;
     k:= i
   end;
   result:= j;
end;

function subtrstrings(str1, str2:string): string;   //substract second integer in string record from first
var i: int64;
    high, low, undrfl: integer;
begin
  i:= 1;
  if str1 <> '0' then
    while str1[i] = '0' do
    begin
      str1:= RightStr(str1, length(str1) - 1);
      i:= i + 1;
    end;
  result:= '-';
  if (length(str2) > length(str1)) or ((length(str1) = length(str2)) and (str2 > str1)) then result:= '';
  if str1 = '0' then result:= '';
  if (length(str1) = length(str2)) and (str2 = str1) then result:= '0';
  if result = '-' then
  begin
    result:='';
    undrfl:= 0;
    for i:= length(str2) downto 1 do
    begin
      high:= StrDigitToInt64(str1[length(str1) - length(str2) + i]) - undrfl;
      low:= StrDigitToInt64(str2[i]);
      undrfl:= 0;
      if high < low then
      begin
        undrfl:= 1;
        high:= high + 10;
        result:= DigToChr(high - low)[2] + result;
      end
      else result:= DigToChr(high - low)[2] + result;
    end;
    if length(str1) > length(str2) then
    for i:= length(str1) - length(str2) downto 1 do
    begin
      high:= StrDigitToInt64(str1[i]);
      if (high = 0) and (undrfl = 1) then
      begin
        result:= '9' + result;
        undrfl:= 1;
      end
      else
      begin
        result:= DigToChr(high - undrfl)[2] + result;
        undrfl:= 0
      end;
    end;
    i:= 1;
    while result[i] = '0' do
      result:= RightStr(result, length(result) - 1);
  end;
end;

function exactstrdivint(str1, str2: string): string;
var subtr: string;
    step, digit: int64;
begin
  subtr:= LeftStr(str1, length(str2));
  step:= length(str2);
  if subtr < str2 then
  begin
    subtr:= LeftStr(str1, length(str2) + 1);
    step:= step + 1;
  end;
  result:= '';
  while step <= length(str1) do
  begin
    digit:= 0;
    while (subtrstrings(subtr, str2) <> '') do
    begin
      subtr:= subtrstrings(subtr, str2);
      digit:= digit + 1;
    end;
    result:= result + DigToChr(digit)[2];
    step:= step + 1;
    if step <= length(str1) then subtr:= subtr + str1[step];
    if (length(subtr) > 1) and (subtr[1] = '0')
    then
      subtr:= RightStr(subtr, length(subtr) - 1)
  end;
end;

function stringintdivision(str1, str2: string; precision: int64): string;          //divides first dtring record of a number into second taking certain digits in result
var i, mult, precis: int64;
    digit: integer;
    subtr: string;
begin
  result:='';
  mult:= 0;
  while str2[length(str2)] = '0' do
  begin
    mult:= mult - 1;
    str2:= LeftStr(str2, length(str2) - 1)
  end;
  while length(str1) < length(str2) do
  begin
    mult:= mult - 1;
    str1:= str1 + '0';
  end;
  while length(str1) > length(str2) do
  begin
    mult:= mult + 1;
    str2:= str2 + '0';
  end;
  if str1 < str2 then
  begin
    mult:= mult - 1;
    str1:= str1 + '0';
  end;
  digit:= 0;
  precis:=precision - mult + 1;
  subtr:=str1;
  while precis <> 0 do
  begin
    while (subtrstrings(subtr, str2) <> '') do
    begin
      subtr:= subtrstrings(subtr, str2);
      digit:= digit + 1;
    end;
    result:= result + DigToChr(digit)[2];
    if subtr = '0' then break;
    digit:= 0;
    if str2[length(str2)] <> '0' then subtr:= subtr + '0' else str2:=LeftStr(str2,length(str2) - 1);
    precis:= precis - 1;
  end;
  if subtr = '0' then
  begin
    i:= length(str2);
    while str2[i] = '0' do
    begin
      result:= result + '0';
      i:= i - 1;
    end;
  end;
end;

function factorization(number: int64): TList<int64>;     //returns the list of all prime factors of a number
var i, numb: int64;
begin
  result:= TList<int64>.Create;
  result.Clear;
  numb:= number;
  i:= 2;
  while i < sqrt(numb) do
  begin
    if numb mod i = 0 then
    begin
      result.Add(i);
      numb:= numb div 2;
    end
    else i:= nextprime(i);
  end;
  result.Add(numb);
end;

function RomanToInt64(rnumber: string): int64;      //converts correct roman record of number into decimal
var i: integer;
begin
  i:= 1;
  result:= 0;
  while i <= length(rnumber) - 1 do
  begin
    if ((rnumber[i] = 'I') and ((rnumber[i + 1] = 'V') or (rnumber[i + 1] = 'X'))) or
    ((rnumber[i] = 'X') and ((rnumber[i + 1] = 'L') or (rnumber[i + 1] = 'C'))) or
    ((rnumber[i] = 'C') and ((rnumber[i + 1] = 'D') or (rnumber[i + 1] = 'M'))) then
    begin
      if (rnumber[i] = 'I') and ((rnumber[i + 1] = 'V') or (rnumber[i + 1] = 'X')) then
        if rnumber[i + 1] = 'V' then  result:= result + 4 else result:= result + 9;
      if (rnumber[i] = 'X') and ((rnumber[i + 1] = 'L') or (rnumber[i + 1] = 'C')) then
        if rnumber[i + 1] = 'L' then  result:= result + 40 else result:= result + 90;
      if (rnumber[i] = 'C') and ((rnumber[i + 1] = 'D') or (rnumber[i + 1] = 'M')) then
        if rnumber[i + 1] = 'D' then  result:= result + 400 else result:= result + 900;
      i:= i + 1;
    end
    else
    case rnumber[i] of
      'I': result:= result + 1;
      'V': result:= result + 5;
      'X': result:= result + 10;
      'L': result:= result + 50;
      'C': result:= result + 100;
      'D': result:= result + 500;
      'M': result:= result + 1000;
    end;
    i:= i + 1;
  end;
  if i = length(rnumber) then
    case rnumber[i] of
    'I': result:= result + 1;
    'V': result:= result + 5;
    'X': result:= result + 10;
    'L': result:= result + 50;
    'C': result:= result + 100;
    'D': result:= result + 500;
    'M': result:= result + 1000;
    end;
end;

function Int64ToMinRoman(number: int64): string;         //converts integer up to 1000000 into roman minimal record
var intmd: int64;
begin
  if (number <= 0) or (number > 100000) then
  raise Exception.Create('Number is too small or too large');
  intmd:= number;
  result:= '';
  case intmd mod 10 of
  1: result:= result + 'I';
  2: result:= result + 'II';
  3: result:= result + 'III';
  4: result:= result + 'IV';
  5: result:= result + 'V';
  6: result:= result + 'VI';
  7: result:= result + 'VII';
  8: result:= result + 'VIII';
  9: result:= result + 'IX';
  end;
  intmd:= intmd div 10;
  case intmd mod 10 of
  1: result:= 'X' + result;
  2: result:= 'XX' + result;
  3: result:= 'XXX' + result;
  4: result:= 'XL' + result;
  5: result:= 'L' + result;
  6: result:= 'LX' + result;
  7: result:= 'LXX' + result;
  8: result:= 'LXXX' + result;
  9: result:= 'XC' + result;
  end;
  intmd:= intmd div 10;
  case intmd mod 10 of
  1: result:= 'C' + result;
  2: result:= 'CC' + result;
  3: result:= 'CCC' + result;
  4: result:= 'CD' + result;
  5: result:= 'D' + result;
  6: result:= 'DC' + result;
  7: result:= 'DCC' + result;
  8: result:= 'DCCC' + result;
  9: result:= 'CM' + result;
  end;
  intmd:= intmd div 10;
  while intmd > 0 do
  begin
    result:= 'M' + result;
    intmd:= intmd - 1
  end;
end;

function exprvalue(action: string; order, num1, num2, num3, num4: int64): int64;   //helper to task 93
var intmd1, intmd2, n1, n2, n3, n4: extended;
begin
  n1:= extended(num1);
  n2:= extended(num2);
  n3:= extended(num3);
  n4:= extended(num4);
  if order = 1 then
  begin
    intmd1:= oper(action[1], n1, n2);
    intmd1:= oper(action[2], intmd1, n3);
    intmd1:= oper(action[3], intmd1, n4);
  end;
  if order = 2 then
  begin
    intmd1:= oper(action[1], n1, n2);
    intmd2:= oper(action[3], n3, n4);
    intmd1:= oper(action[2], intmd1, intmd2);
  end;
  if order = 3 then
  begin
    intmd1:= oper(action[2], n2, n3);
    intmd1:= oper(action[1], n1, intmd1);
    intmd1:= oper(action[3], intmd1, n4);
  end;
  if order = 4 then
  begin
    intmd1:= oper(action[2], n2, n3);
    intmd1:= oper(action[3], intmd1, n4);
    intmd1:= oper(action[1], n1, intmd1);
  end;
  if order = 5 then
  begin
    intmd1:= oper(action[3], n3, n4);
    intmd2:= oper(action[1], n1, n2);
    intmd1:= oper(action[2], intmd2, intmd1);
  end;
  if order = 6 then
   begin
     intmd1:= oper(action[3], n3, n4);
     intmd1:= oper(action[2], n2, intmd1);
     intmd1:= oper(action[1], n1, intmd1);
   end;
   if trunc(intmd1) = intmd1 then result:= trunc(intmd1) else result:= 999999;
end;

function oper(action: char; num1, num2: extended): extended;   //helper to task 93
begin
  if action = '1' then result:= num1 + num2;
  if action = '2' then result:= num1 - num2;
  if action = '3' then result:= num1 * num2;
  if action = '4' then result:= num1 / num2;
end;

function isperfect(num: int64): boolean;        //checks if the number is perfect
begin
  if sumdivisors(num) = num then result:= true else result:= false
end;

procedure readsudoku(fname: string; number: int64; var m: Puzzle);      //reads single sudoku from file, helper for task 96
var f: text;
    i, j: int64;
    row: string;
begin
  AssignFile(f, fname);
  Reset(f);
  for i:= 1 to number - 1 do
    for j:= 1 to 10 do readln(f, row);
  readln(f, row);
  m.zeroes:= 0;
  for i:= 1 to 9 do
  begin
    readln(f, row);
    for j:= 1 to 9 do
    begin;
      m.a[i, j]:= StrDigitToInt64(row[j]);
      if m.a[i, j] = 0 then m.zeroes:= m.zeroes + 1;
    end;
  end;
end;

procedure checksudoku(var m: Puzzle; var lowestx, lowesty: int64; var changed, allcorrect: boolean);   //checks the whole single puzzle, helper for task 96
var i, j, j1, im, jm, lowestamnt: Int64;
    used: TList<int64>;
begin
  used:= TList<int64>.Create;
  lowestamnt:= 9;
  changed:= false;
  allcorrect:= true;
  for i:= 1 to 9 do
    for j:= 1 to 9 do
    begin
      if m.a[i, j] = 0 
      then 
      begin
        checksinglefieldsudoku(m, i, j, used);
        jm:= 9 - used.Count;
        if jm = 1 then
        begin
          im:= 0;
          for j1:= 0 to used.Count - 1 do
            im:= im + used[j1];
          m.a[i, j]:= 45 - im;
          changed:= true            
        end;
        if jm = 0 then
        begin
          allcorrect:= false;
          break
        end;
        if (jm <> 0) and (jm <> 1) and (not changed) then
        begin
          if jm < lowestamnt then
          begin
            lowestamnt:= jm;
            lowestx:= i;
            lowesty:= j
          end;
        end;
      end;
      if not allcorrect then break;      
    end;
    m.zeroes:= 0;
    for i:= 1 to 9 do
      for j:= 1 to 9 do
        if m.a[i, j] = 0 then m.zeroes:= m.zeroes + 1;
  used.Destroy;
end;

procedure checksinglefieldsudoku(m: Puzzle; x, y: int64; var used: TList<int64>); 
var i, j, im, jm: int64;
begin
  used.Clear;
  i:= 1;
  while i < 10 do
  begin
    if i <> x then
      if (m.a[i, y] <> 0) and (not used.Contains(m.a[i, y])) then
        used.Add(m.a[i, y]);
    i:= i + 1;
  end;
  i:= 1;
  while i < 10 do
  begin
    if i <> y then
      if (m.a[x, i] <> 0) and (not used.Contains(m.a[x, i])) then
        used.Add(m.a[x, i]);
    i:= i + 1;
  end;
  im:= (x - 1) div 3;
  jm:= (y - 1) div 3;
  for i:= 1 to 3 do
    for j:= 1 to 3 do
      if not ((im * 3 + i = x) and (jm * 3 + j = y)) and (m.a[im * 3 + i, jm * 3 + j] <> 0)
        and (not(used.Contains(m.a[im * 3 + i, jm * 3 + j])))
      then used.Add(m.a[im * 3 + i, jm * 3 + j]);
end;

function sortstring(word: string): string;
var i, j: int64;
    c: char;
begin
  result:= word;
  for i:= 1 to Length(result) - 1 do
    for j:= i + 1 to Length(result) do
      if result[i] > result[j] then
      begin
        c:= result[i];
        result[i]:= result[j];
        result[j]:= c;
      end;
end;

function detsquarematrix (matrix: TList<int64>): biginteger;
var i, j, k: int64;
    koef, rslt: bigdecimal;
    a, b: array of array of bigdecimal;
begin
  SetLength(a, trunc(sqrt(matrix.Count)), trunc(sqrt(matrix.Count)));
  rslt:= 1;
//    for i:= 0 to length(a) - 1 do
//      for j:= 0 to length(a) - 1 do
//      begin
//        a[i, j]:= extended(matrix[k]);
//        k:= k + 1
//      end;
  k:= 0;
  if matrix.count = 0 then rslt:= 0;
  if matrix.count = 1 then rslt:= matrix[0];
  if matrix.count = 4 then rslt:= matrix[0] * matrix[3] - matrix[1] * matrix[2];
  if matrix.count > 4 then
  begin
    for i:= 0 to length(a) - 1 do
      for j:= 0 to length(a) - 1 do
      begin
        a[i, j]:= matrix[k];
        k:= k + 1
      end;
    if a[0, 0] = 0 then
    begin
      rslt:= 1;
      k:= 0;
      for j:= 1 to length(a) do
        if a[j, 0] <> 0 then
        begin
          k:= j;
          break
          end;
      if k = 0 then rslt:= 0;
      for j:= 0 to length(a) - 1 do
        a[0, j]:= a[0, j] + a[k, j];
    end;
    if rslt <> 0 then
    begin
      rslt:= 1;
      for i:= 0 to length(a) - 3 do
      begin
        SetLength(b, length(a) - 1, length(a) - 1);
        for j:= 1 to length(a) - 1 do
        begin
          koef:= -a[j, 0]/a[0, 0];
          for k:= 0 to length(a) - 1 do
            a[j, k]:= a[j, k] + a[0, k] * koef;
        end;
        rslt:= rslt * a[0, 0];
        for j := 0 to length(b) - 1 do
          for k:= 0 to length(b) - 1 do
            b[j, k]:= a[j + 1, k + 1];
        SetLength(a, length(b), length(b));
        for j := 0 to length(b) - 1 do
          for k:= 0 to length(b) - 1 do
            a[j, k]:= b[j, k];
        if a[0, 0] = 0 then
          for j:= 1 to length(a) - 1 do
            if a[j, 0] <> 0 then
            begin
              for k:= 0 to length(a) - 1 do
                a[0, k]:= a[0, k] + a[j, k];
              break
            end;
        if a[0, 0] = 0 then
        begin
          rslt:= 0;
          break
        end;
      end;
      if rslt <> 0
      then
        rslt:= rslt * (a[0, 0] * a[1, 1] - a[0, 1] * a[1, 0])
    end;
  end;
  rslt:= rslt.RoundTo(0);
  result:= rslt.AsBigInteger;
end;

function checktwoontwo(a1, a2, a3, a4, a5, a6, a7: int64): boolean;    // helper function for task 103
var a: array[1 .. 7] of int64;
    i, j, k, l: int64;
begin
  result:= true;
  a[1]:= a1;
  a[2]:= a2;
  a[3]:= a3;
  a[4]:= a4;
  a[5]:= a5;
  a[6]:= a6;
  a[7]:= a7;
  for i:= 1 to 4 do
  begin
    j:= i + 1;
    while j < 8 do
    begin
      k:= i + 1;
      if k = j then
        k:= k + 1;
      begin
        while k < 7 do
        begin
          if k = j then
            k:= k + 1;
          l:= k + 1;
          while l < 8 do
          begin
            if a[i] + a[j] = a[k] + a[l] then
            begin
              result:= false;
              break
            end;
            l:= l + 1;
            if l = j then
              l:= l + 1;
            if not result then break
          end;
          if not result then break;
          k:= k + 1
        end;
        if not result then break;
      end;
      if not result then break;
      j:= j + 1
    end;
    if not result then break;
  end;
end;

function checkthreeonthree(a1, a2, a3, a4, a5, a6, a7: int64): boolean;    // helper function for task 103
var a: array[1 .. 7] of int64;
begin
  result:= true;
  a[1]:= a1;
  a[2]:= a2;
  a[3]:= a3;
  a[4]:= a4;
  a[5]:= a5;
  a[6]:= a6;
  a[7]:= a7;
  if a[1] + a[2] + a[4] = a[3] + a[5] + a[6] then result:= false;
  if a[1] + a[2] + a[4] = a[3] + a[5] + a[7] then result:= false;
  if a[1] + a[2] + a[4] = a[3] + a[6] + a[7] then result:= false;
  if a[1] + a[2] + a[5] = a[3] + a[4] + a[6] then result:= false;
  if a[1] + a[2] + a[5] = a[3] + a[4] + a[7] then result:= false;
  if a[1] + a[2] + a[5] = a[3] + a[6] + a[7] then result:= false;
  if a[1] + a[2] + a[6] = a[3] + a[4] + a[5] then result:= false;
  if a[1] + a[2] + a[6] = a[3] + a[4] + a[7] then result:= false;
  if a[1] + a[2] + a[6] = a[3] + a[5] + a[7] then result:= false;
  if a[1] + a[2] + a[7] = a[3] + a[4] + a[5] then result:= false;
  if a[1] + a[2] + a[7] = a[3] + a[4] + a[6] then result:= false;
  if a[1] + a[2] + a[7] = a[3] + a[5] + a[6] then result:= false;
  if a[1] + a[3] + a[4] = a[2] + a[5] + a[6] then result:= false;
  if a[1] + a[3] + a[4] = a[2] + a[5] + a[7] then result:= false;
  if a[1] + a[3] + a[4] = a[2] + a[6] + a[7] then result:= false;
  if a[1] + a[3] + a[5] = a[2] + a[4] + a[6] then result:= false;
  if a[1] + a[3] + a[5] = a[2] + a[4] + a[7] then result:= false;
  if a[1] + a[3] + a[5] = a[2] + a[6] + a[7] then result:= false;
  if a[1] + a[3] + a[6] = a[2] + a[4] + a[5] then result:= false;
  if a[1] + a[3] + a[6] = a[2] + a[4] + a[7] then result:= false;
  if a[1] + a[3] + a[6] = a[2] + a[5] + a[7] then result:= false;
  if a[1] + a[3] + a[7] = a[2] + a[4] + a[5] then result:= false;
  if a[1] + a[3] + a[7] = a[2] + a[4] + a[6] then result:= false;
  if a[1] + a[3] + a[7] = a[2] + a[5] + a[6] then result:= false;
  if a[1] + a[4] + a[5] = a[2] + a[3] + a[6] then result:= false;
  if a[1] + a[4] + a[5] = a[2] + a[3] + a[7] then result:= false;
  if a[1] + a[4] + a[5] = a[2] + a[6] + a[7] then result:= false;
  if a[1] + a[4] + a[6] = a[2] + a[3] + a[5] then result:= false;
  if a[1] + a[4] + a[6] = a[2] + a[3] + a[7] then result:= false;
  if a[1] + a[4] + a[6] = a[2] + a[5] + a[7] then result:= false;
  if a[1] + a[4] + a[7] = a[2] + a[3] + a[5] then result:= false;
  if a[1] + a[4] + a[7] = a[2] + a[3] + a[6] then result:= false;
  if a[1] + a[4] + a[7] = a[2] + a[5] + a[6] then result:= false;
  if a[1] + a[5] + a[6] = a[2] + a[3] + a[4] then result:= false;
  if a[1] + a[5] + a[6] = a[2] + a[3] + a[7] then result:= false;
  if a[1] + a[5] + a[6] = a[2] + a[4] + a[7] then result:= false;
  if a[1] + a[5] + a[7] = a[2] + a[3] + a[4] then result:= false;
  if a[1] + a[5] + a[7] = a[2] + a[3] + a[6] then result:= false;
  if a[1] + a[5] + a[7] = a[2] + a[4] + a[6] then result:= false;
  if a[1] + a[6] + a[7] = a[2] + a[3] + a[4] then result:= false;
  if a[1] + a[6] + a[7] = a[2] + a[3] + a[5] then result:= false;
  if a[1] + a[6] + a[7] = a[2] + a[4] + a[5] then result:= false;
end;

function ispandigital(a: int64): boolean;  // checks if the 9-digit number is pandigital
var numberstr: string;
begin
  result:= true;
  if (a < 123456789) or (a > 987654321) then
    result:= false;
  if result then
  begin
    numberstr:= sortstring(a.ToString);
    if not((numberstr[1] = '1') and (numberstr[2] = '2') and (numberstr[3] = '3') and
    (numberstr[4] = '4') and (numberstr[5] = '5') and (numberstr[6] = '6') and
    (numberstr[7] = '7') and (numberstr[8] = '8') and (numberstr[9] = '9')) then
      result:= false;
  end;
end;

function isspecial(qset: TList<int64>): boolean;
var i, j: int64;
begin
  result:= True;
  if qset[qset.Count - 1] >= qset[0] + qset[1] then
    result:= false;
  if result then
    if qset[qset.Count - 1] + qset[qset.Count - 2] >= qset[0] + qset[1] + qset[2] then
    result:= false;
  if result then
    if qset[qset.Count - 1] + qset[qset.Count - 2] + qset[qset.Count - 3] >= qset[0] + qset[1] + qset[2] + qset[3] then
    result:= false;
  if result then
    if not check2on2(qset) then
      result:= false;
  if result then
    if not check3on3(qset) then
      result:= false;
  if qset.Count > 7 then
    if result then
      if not check4on4(qset) then
        result:= false;
  if qset.Count > 8 then
    if result then
    if qset[qset.Count - 1] + qset[qset.Count - 2] + qset[qset.Count - 3] + qset[qset.Count - 4] >=
    qset[0] + qset[1] + qset[2] + qset[3] + qset[4] then
      result:= false;
  if qset.Count > 9 then
    if result then
      if not check5on5(qset) then
        result:= false;
  if qset.Count > 10 then
    if result then
    if qset[qset.Count - 1] + qset[qset.Count - 2] + qset[qset.Count - 3] + qset[qset.Count - 4]
    + qset[qset.Count - 5] >= qset[0] + qset[1] + qset[2] + qset[3] + qset[4] + qset[5] then
      result:= false;
  if qset.Count > 11 then
    if result then
      if not check6on6(qset) then
        result:= false;
end;

function check2on2(qset: TList<int64>): boolean;
var i, j, k, l: int64;
begin
  result:= True;
  for i:= 0 to qset.Count - 4 do
  begin
    j:= i + 3;
    while j < qset.Count do
    begin
      k:= i + 1;
      while k <= j - 2 do
      begin
        l:= k + 1;
        while l <= j - 1 do
        begin
          if qset[i] + qset[j] = qset[k] + qset[l] then
          begin
            result:= False;
            break
          end;
          l:= l + 1
        end;
        if not result then break;
        k:= k + 1
      end;
      if not result then break;
      j:= j + 1
    end;
    if not result then break;
  end;
end;

function check3on3(qset: TList<int64>): boolean;
var i, j, k: int64;
    sums: TList<int64>;
begin
  sums:= TList<int64>.Create;
  sums.Clear;
  for i:= 0 to qset.Count - 3 do
  begin
    for j:= i + 1 to qset.Count - 2 do
    begin
      for k:= j + 1 to qset.Count - 1 do
      begin
        if sums.Contains(qset[i] + qset[j] + qset[k]) then
        begin
          result:= False;
          break
        end
        else
          sums.Add(qset[i] + qset[j] + qset[k]);
      end;
      if not result then
        break;
    end;
    if not result then
      break;
  end;
  sums.Destroy;
end;

function check4on4(qset: TList<int64>): boolean;
var i, j, k, l: int64;
    sums: TList<int64>;
begin
  sums:= TList<int64>.Create;
  sums.Clear;
  for i:= 0 to qset.Count - 4 do
  begin
    for j:= i + 1 to qset.Count - 3 do
    begin
      for k:= j + 1 to qset.Count - 2 do
      begin
        for l:= k + 1 to qset.Count - 1 do
        begin
          if sums.Contains(qset[i] + qset[j] + qset[k]+ qset[l]) then
          begin
            result:= False;
            break
          end
          else
            sums.Add(qset[i] + qset[j] + qset[k] + qset[l]);
        end;
        if not result then
          break;
      end;
      if not result then
        break;
    end;
    if not result then
      break;
  end;
  sums.Destroy;
end;

function check5on5(qset: TList<int64>): boolean;
var i, j, k, l, m: int64;
    sums: TList<int64>;
begin
  sums:= TList<int64>.Create;
  sums.Clear;
  for i:= 0 to qset.Count - 5 do
  begin
    for j:= i + 1 to qset.Count - 4 do
    begin
      for k:= j + 1 to qset.Count - 3 do
      begin
        for l:= k + 1 to qset.Count - 2 do
        begin
          for m := l + 1 to qset.Count - 1 do
          begin
            if sums.Contains(qset[i] + qset[j] + qset[k]+ qset[l] + qset[m]) then
            begin
              result:= False;
              break
            end
            else
              sums.Add(qset[i] + qset[j] + qset[k] + qset[l] + qset[m]);
          end;
          if not result then
            break;
        end;
        if not result then
          break;
      end;
      if not result then
        break;
    end;
    if not result then
      break;
  end;
  sums.Destroy;
end;

function check6on6(qset: TList<int64>): boolean;
var i, j, k, l, m, n: int64;
    sums: TList<int64>;
begin
  sums:= TList<int64>.Create;
  sums.Clear;
  for i:= 0 to qset.Count - 6 do
  begin
    for j:= i + 1 to qset.Count - 5 do
    begin
      for k:= j + 1 to qset.Count - 4 do
      begin
        for l:= k + 1 to qset.Count - 3 do
        begin
          for m:= l + 1 to qset.Count - 2 do
          begin
            for n:= m + 1 to qset.Count - 1 do
            begin
              if sums.Contains(qset[i] + qset[j] + qset[k]+ qset[l] + qset[m] + qset[n]) then
              begin
                result:= False;
                break
              end
              else
                sums.Add(qset[i] + qset[j] + qset[k] + qset[l] + qset[m] + qset[n]);
            end;
            if not result then
              break;
          end;
          if not result then
            break;
        end;
        if not result then
          break;
      end;
      if not result then
        break;
    end;
    if not result then
      break;
  end;
  sums.Destroy;
end;

function nextpermutation(a: string): string;
var i, j, k: integer;
begin
  for i:= length(a) downto 2 do
    if a[i] > a[i - 1] then break;
  if i = 1
  then
    result:= ''
  else
  begin
    for j:= length(a) downto i do
      if a[j] > a[i - 1]
      then
        break;
      result:= '';
      for k := 1 to i - 2 do
        result:= result + a[k];
      result:= result + a[j];
      for k:= length(a) downto i do
        if k = j
        then
          result:= result + a[i - 1]
        else
          result:= result + a[k];
  end;
end;

function addbin(a, b: string): string;
var i, j, ovfl: integer;
    c: string;
    isCorrect: boolean;
begin
  isCorrect:= True;
  for i:= 1 to length(a) do
  begin
    if (a[i] <> '0') and (a[i] <> '1') then
    begin
      ShowMessage('Incorrect data');
      result:= 'ERROR';
      isCorrect:= False
    end;
  end;
  for i:= 1 to length(b) do
  begin
    if isCorrect then
      if (b[i] <> '0') and (b[i] <> '1') then
      begin
        ShowMessage('Incorrect data');
        result:= 'ERROR';
        isCorrect:= False
      end;
  end;
  if isCorrect then
  begin
    if length(a) < length(b) then
    begin
      c:= a;
      a:= b;
      b:= c
    end;
    result:= '';
    ovfl:= 0;
    for i:= 0 to length(b) - 1 do
    begin
      j:= StrToInt(a[length(a) - i]) + StrToInt(b[length(b) - i]) + ovfl;
      ovfl:= j div 2;
      result:= (j mod 2).ToString + result
    end;
    i:= length(a) - length(b);
    while (ovfl = 1) and (i >= 1) do
    begin
      j:= StrToInt(a[i]) + ovfl;
      ovfl:= j div 2;
      result:= (j mod 2).ToString + result;
      i:= i - 1
    end;
    if ovfl = 1
    then
      result:= '1' + result;
    while i >= 1 do
    begin
      result:= a[i] + result;
      i:= i - 1
    end
  end
end;

function arrsum(a: array of integer): int64;
var i: integer;
begin
  result:= 0;
  for i:= 0 to length(a) - 1 do
  begin
    result:= result + a[i]
  end
end;

function ispalindromic(number: int64): boolean;
var str: string;
begin
  result:= false;
  if reversenumber(number) = number
  then
    result:= true;
end;

end.
