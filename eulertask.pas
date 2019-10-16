unit eulertask;

interface

uses math, fogmath, System.SysUtils, FMX.Dialogs, Generics.Collections, Classes,
     eulclass, velthuis.bigintegers, velthuis.bigdecimals;

function parnam (Task: integer): string;
function setdefault (Task: integer): string;
function sethint (Task: integer): string;
function sum3n5multiples (highboard: int64): int64;
function sumevenfibonacci (highboard: int64): int64;
function biggestprimediv (number: int64): int64;
function biggestpalindr (number: int64): int64;
function smallestcommondiv (number: int64): int64;
function difsquare (number: int64): int64;
function definitprime (number: int64): int64;
function adjacentproduct (number: int64): int64;
function productofthreepif: int64;
function primessum (number: int64): int64;
function adjacentfourintable: int64;
function triangledivs(number: int64): int64;
function fsttendigitsofsum: int64;
function collatzsequence (number: int64): int64;
function gridways (number: int64): int64;
function poweroftwo (number: int64): int64;
function countletters (number: int64): int64;
function triangleroute (number: int64): int64;
function countfirstsundays(): int64;
function fctrldigsum (number: int64): int64;
function friendnumsum (number: int64): int64;
function namepoints (number: int64): int64;
function nonabunsum(): int64;
function lexpermut (number: int64): int64;
function indexfibonacci (number: int64): int64;
function peciprocalcycle (number: int64): int64;
function quadcoeff (number: int64): int64;
function squarediagsum (number: int64): int64;
function distinctpowerseq (): int64;
function fifthpowerdigits: int64;
function englishcoins: int64;
function nextcoin(number: int64): int64;
function pandigits: int64;
function strngfractions: int64;
function sumfactorials: int64;
function circularprimes (number: int64): int64;
function decbinpalindr (number: int64): int64;
function truncprimes: int64;
function panconcproduct: int64;
function maxnatursolut (number: int64): int64;
function champerconst: int64;
function largestpandigprime: int64;
function trianglewords: int64;
function pandigitsdivisions: int64;
function pentagonaldif: int64;
function tripenthex: int64;
function goldbachconj: int64;
function fourfromfour: int64;
function selfpowersum (number: int64): int64;
function fourdigitprimerperm: int64;
function consecprimesum (number: int64): int64;
function eightprimesreplacepart: int64;
function pandigitmultiples: int64;
function combinatoriccount(number: int64): int64;
function pokerwinner: int64;
function lychrelnumbers: int64;
function selfpowersums(number: int64): int64;
function sqrt2iterat(number: int64): int64;
function diagonalprimes: int64;
function decyphernsumascii: int64;
function fiveprimesmakeprime: int64;
function tritooctsum: int64;
function cubicpermut: int64;
function poweqdigs: int64;
function sqrtiterationodd (number: int64): int64;
function eulerapprox(number: int64): int64;
function diophantine (number: int64): int64;
function pentaring: int64;
function eulerfunction69 (number: int64): int64;
function eulerfunction70 (number: int64): int64;
function threeseventhfraction(number: int64): int64;
function fractioncount(number: int64): int64;
function fractionsinrange(number: int64): int64;
function factorialchain: int64;
function singularrighttriangles(number: int64): int64;
function sumsvariants(number: int64): int64;
function primesumsvariants(number: int64): int64;
function coinpartitions: int64;
function sumsqrtdigits (number: int64): int64;
function bidirectionalway: int64;
function tridirectionalway: int64;
function tetradirectionalway: int64;
function monopolymoves: int64;
function rectanglecount: int64;
function cuboidways(number: int64): int64;
function sumpwrprimes(number: int64): int64;
function sumproductsum: int64;
function romanminimalize: int64;
function cubearrangements: int64;
function rightangletriangles(number: int64): int64;
function digitssquares(number: int64): int64;
function digitexpressions: int64;
function sumofperimeters(number: int64): int64;
function amicablechain(number: int64): int64;
function sudoku: int64;
function lasttenbigprimedigits: int64;
function anagramsquare: int64;
function largestnumberinfile: int64;
function halfprobability(number: int64): int64;
function bopsum: int64;
function origininsidetriangle: int64;
function specialsets: int64;
function pandigitalfibonacci: int64;
function specialsets1: int64;
function testneededpairs: int64;
function networksaving: int64;
function diophantminus1degree: int64;
function darts: int64;
function diop4msol: int64;
function sum10dprimes: int64;
function bouncypart: int64;
function bouncyamount (pwr: int64): int64;
function twotileplacement(leng: int64): int64;
function tiles50placement: int64;
function twotofourtilecvrg(leng: int64): int64;
function twothreefourtilecvrg(leng: int64): int64;
function primesetscount: int64;
function digitssum(number: int64): int64;

implementation

function parnam (Task:integer):string;    //name of parameter to input
var f: text;
    i: integer;
begin
  AssignFile(f,'parnam');
  Reset(f);
  for i := 1 to Task do
    Readln (f, result);
  Close (f);
end;

function setdefault (Task:integer):string;        //propose default value (demanded by project) to input field
var f: text;
    i: integer;
begin
  AssignFile(f,'defaults');
  Reset(f);
  for i := 1 to Task do
    Readln (f, result);
  Close (f);
end;

function sethint (Task: integer): string;     //hints about the choise of parameters value
var f: text;
    i: integer;
begin
  AssignFile(f,'hints');
  Reset(f);
  for i := 1 to Task do
    Readln (f, result);
  Close (f);
end;

function sum3n5multiples (HighBoard:int64):int64;     //Task 1 - 233168
var Counter:int64;
begin
  result:=0;
  for Counter:=3 to HighBoard do
    if (Counter mod 3 = 0) or (Counter mod 5 = 0) then result:=result+Counter;
end;

function sumevenfibonacci (highboard:int64):int64;    //Task 2 - 4613732
var Counter, Previous:int64;
begin
  result:=0;
  Previous:=1;
  Counter:=1;
  while Counter<HighBoard do
  begin
    if (Counter mod 2) = 0 then result:=result+Counter;
    Counter:=Counter+Previous;
    Previous:=Counter-Previous;
  end;
end;

function biggestprimediv (number:int64):int64;        //Task 3 - 6857
var high:int64;
    helper:extended;
begin
  result:=2;
  helper:=number;
  high:=trunc(sqrt(helper));
  while result<=high do
  begin
    while number mod result = 0 do
    begin
      number:=number div result;
      helper:=number;
      high:=trunc(sqrt(helper));
    end;
    if number <>1 then result:=result+1;
  end;
  if number <> 1 then result:=number;
end;

function biggestpalindr (number: int64):int64;        //Task 4 - 906609
var first, second, product: int64;                    //7-digits - 99956644665999
begin
result:=1;
  first:=trunc((Power(10,number)))-1;
  while first>=Power(10, number-1) do
  begin
    if first*first<result then break;
    second:=first;
    while second>=Power(10,number-1) do
    begin
      product:=first*second;
      if product<result then break;
      if CheckPalindrNum(product) then
      begin
        if product>result then result:=product;
        break;
      end;
      second:=second-1;
    end;
    first:=first-1;
  end;
end;

function smallestcommondiv (number:int64):int64;   //Task 5 - 232792560
var i, i1, j, l:int64;
    Factorsss, FactorsHlp: TList<int64>;
begin
  Factorsss:=TList<int64>.Create;
  Factorsss.Clear;
  FactorsHlp:=TList<int64>.Create;
  FactorsHlp.Clear;
  for i := 1 to number do
    if IsPrime(i) then Factorsss.Add(i)
    else
    begin
      i1:=i;
      for j := 2 to i do
      begin
      if IsPrime(j) then
        begin
          while i1 mod j = 0 do
          begin
            FactorsHlp.Add(j);
            i1:=i1 div j;
            if i1=1 then break
          end;
        end;
        if i1=1 then break
      end;
      j:=0;
      l:=0;
      while l <= Factorsss.Count-1 do
      begin
        while j <= FactorsHlp.Count-1 do
        begin
          if Factorsss[l] = FactorsHlp[j] then
          begin
            l:=l+1;
            j:=j+1;
          end
          else
          begin
            if Factorsss[l] > FactorsHlp[j] then
            begin
              l:=l+1;
              Factorsss.Insert(l, FactorsHlp[j]);
              j:=j+1;
            end
            else l:=l+1;
          end;
        end;
      l:=l+1;
      end;
      FactorsHlp.Clear;
      Factorsss.Sort;
    end;
  result:=1;
  for i := 0 to Factorsss.Count-1 do
    result:=result*Factorsss[i];
end;

function difsquare (number:int64):int64;              //Task 6 - -25164150
var i,s,ssq:int64;
begin
  s:=0;
  ssq:=0;
  for i := 1 to number do
  begin
    s:=s+i;
    ssq:=ssq+i*i
  end;
  result:=ssq-s*s;
end;

function definitprime (number:int64):int64;           //Task 7 - 104743
var i, j:int64;
begin
  i:=2;
  j:=3;
  while i<number do
  begin
    j:=j+2;
    if IsPrime (j) then i:=i+1
  end;
  result:=j;
end;

function adjacentproduct (number:int64):int64;        //Task 8 - 23514624000
var f:text;
    digits:string;
    d:TList<int64>;
    i,j,intres:int64;
begin
  result:=0;
  AssignFile(f,'tsk7.txt');
  Reset(f);
  Read(f,digits);
  Close(f);
  d:=TList<int64>.Create;
  d.Clear;
  for i := 1 to length(digits) do
  begin
    d.Add(strtoint64(digits[i]));
  end;
  for i := 0 to d.Count-1-number do
  begin
    intres:=1;
    for j := 0 to number-1 do
      intres:=intres*d[i+j];
    if intres>result then result:=intres;
  end;
  d.Destroy;
end;

function productofthreepif :int64;                     //Task 9 - 31875000
var i, j:int64;
begin
  for i := 1 to 334 do
  begin
    for j := 1 to 667 do
      if i*i+j*j=(1000-i-j)*(1000-i-j) then break;
    if i*i+j*j=(1000-i-j)*(1000-i-j) then break
  end;
  result:=i*j*(1000-i-j);
end;

function primessum (number:int64):int64;               //Task 10 - 142913828922
var i:int64;
begin
  result:=2;
  i:=3;
  while i<number do
  begin;
    if IsPrime(i) then result:=result+i;
    i:=i+2;
  end;
end;

function adjacentfourintable:int64;                  //Task 11 - 70600674
var f:text;
    i, j:int64;
    s:string;
    a: array [1..20,1..20] of int64;
begin
  result:=0;
  AssignFile(f,'tsk11.txt');
  Reset(f);
  for i := 1 to 20 do
  begin
    Readln(f,s);
    for j := 1 to 20 do
    begin
      a[i,j]:=StrToInt64(s[(j-1)*3+1]+s[(j-1)*3+2]);
    end;
  end;
  close(f);
  for  i := 1 to 20 do
    for j := 1 to 17 do
      if a[i,j]*a[i,j+1]*a[i,j+2]*a[i,j+3]>result then result:=a[i,j]*a[i,j+1]*a[i,j+2]*a[i,j+3];
  for i := 1 to 17 do
    for j := 1 to 20 do
      if a[i,j]*a[i+1,j]*a[i+2,j]*a[i+3,j]>result then result:=a[i,j]*a[i+1,j]*a[i+2,j]*a[i+3,j];
  for i := 1 to 17 do
    for j := 1 to 17 do
      if a[i,j]*a[i+1,j+1]*a[i+2,j+2]*a[i+3,j+3]>result then result:=a[i,j]*a[i+1,j+1]*a[i+2,j+2]*a[i+3,j+3];
  for i := 4 to 20 do
    for j := 1 to 17 do
      if a[i,j]*a[i-1,j+1]*a[i-2,j+2]*a[i-3,j+3]>result then result:=a[i,j]*a[i-1,j+1]*a[i-2,j+2]*a[i-3,j+3];
end;

function triangledivs(number:int64):int64;                   //Task 12 - 76576500
var current, currinc, i, counter:int64;
begin
  current:=15;
  currinc:=6;
  counter:=0;
  while counter<number+1 do
  begin
    counter:=0;
    current:=current+currinc;
    for i := 1 to trunc(sqrt(extended(current))) do if current mod i = 0 then counter:=counter+2;
    if trunc(sqrt(extended(current)))*trunc(sqrt(extended(current)))=current then counter:=counter-1;
    currinc:=currinc+1
  end;
  result:=current;
end;

function fsttendigitsofsum:int64;                            //Task 13 - 5537376230
var f:text;
    digits: array [1..100] of string[50];
    WrkStr: string;
    i, j, s, othr: int64;
begin
  AssignFile(f,'tsk13.txt');
  Reset(f);
  for i := 1 to 100 do
    readln(f,digits[i]);
  Close(f);
  WrkStr:='';
  othr:=0;
  for i := 1 to 50 do
  begin
    s:=othr;
    for j := 1 to 100 do
      s:=s+StrToInt64(digits[j][51-i]);
    WrkStr:=(s mod 10).ToString+WrkStr;
    othr:=s div 10;
  end;
  WrkStr:=(s div 10).ToString+WrkStr;
  result:=0;
  for i := 1 to 10 do
    result:=result*10+StrToInt64(WrkStr[i]);
end;

function collatzsequence (number: int64): int64;              //Task 14 - 837799
var i, j, counter, counterbig: int64;
begin
  result:= number - 1;
  counterbig:= 1;
  for i := number-1 downto 11 do
  begin
    j:=i;
    counter:=1;
    while j<>1 do
    begin
      if j mod 2 = 1 then j:=j*3+1 else j:=j div 2;
      counter:= counter + 1;
    end;
    if counter > counterbig then
    begin
      counterbig:= counter;
      result:= i
    end;
  end;
end;

function gridways (number: int64): int64;              //Task 15 - 137846528820
var a: array of array of int64;
    i, j: int64;
begin
  SetLength (a, number+2, number+2);
  for i := 0 to number+1 do
  begin
    a[0,i]:= 0;
    a[i,0]:= 0
  end;
  a[0,1]:= 1;
  for i:= 1 to number+1 do
     for j:= 1 to number+1 do
       a[i,j]:=a[i-1,j]+a[i,j-1];
  result:=a[number+1,number+1];
end;

function poweroftwo (number: int64): int64;            //Task 16 - 1366
var prod:string;
    i, j, k: int64;
begin
  prod:= '1';
  for i := 1 to number do
  begin
    k:= 0;
    for j:= length (prod) downto 1 do
    begin
      k:= StrToInt64(prod[j])*2 + k;
      prod[j]:= DigToChr (k mod 10) [2];
      k:= k div 10;
    end;
    if k=1 then prod:='1'+prod;
  end;
  result:= 0;
  for i := 1 to length(prod) do result:= result + StrToInt64(prod[i]);
end;

function countletters (number: int64): int64;          //Task 17 - 21124
var
  i: Integer;
  txt: string;
begin
  result:=0;
  for i := 1 to number do
  begin
    txt:= numbertotext(i);
    txt:= DeleteSpcAndDef(txt);
    result:= result + length(txt);
  end;
end;

function triangleroute (number: int64): int64;        //Task 18 - 1074
var f: text;
    fname: string;
    i, j, dim: integer;
    a: array of array of int64;
begin
  fname:= 'tsk' + IntToStr (number) + '.txt';
  AssignFile(f, fname);
  Reset (f);
  i:=0;
  while not eof (f) do
  begin
    readln (f, fname);
    i:= i+1;
  end;
  Close (f);
  dim:= i;
  SetLength(a, dim, dim+1);
  for i := 0 to dim-1 do
    for j := 0 to dim do
      a [i, j]:= 0;
  Reset (f);
  for i := 0 to dim-1 do
  begin
    readln (f, fname);
    j:=1;
    while fname <> '' do
    begin
      a [i, j]:= StrToInt64 (fname[1] + fname [2]);
      fname:= RightStr(fname, length (fname) - 2);
      if fname <> '' then if fname[1] = ' ' then fname:= RightStr(fname, length(fname) - 1);
      j:= j + 1;
    end;
  end;
  for i := 1 to dim-1 do
    for j := 1 to dim do
        a [i, j]:= Max (a [i, j] + a [i-1, j-1], a [i, j] + a[i-1, j]);
  result:= a [dim-1, 1];
  for i:= 2 to dim  do if result < a [dim-1, i] then result:= a [dim-1, i];
end;

function countfirstsundays(): int64;                                //Task 19 - 171
var year, month, daycounter: integer;
begin
  result:= 0;
  daycounter:= 1;
  daycounter:= daycounter + 365;
  for year := 1901 to 2000 do
    for month := 1 to 12 do
    begin
      if daycounter mod 7 = 0 then result:= result + 1;
      if (month = 1) or (month = 3) or (month = 5) or (month = 7) or
      (month = 8) or (month = 10) or (month = 12) then daycounter:= daycounter + 31;
      if (month = 4) or (month = 6) or (month = 9) or (month = 11) then daycounter:= daycounter + 30;
      if (month = 2) and (year mod 4 <> 0) then daycounter:= daycounter + 28;
      if (month = 2) and (year mod 4 = 0) and (year mod 100 <> 0) then daycounter:= daycounter + 29;
      if (month = 2) and (year mod 4 = 0) and (year mod 100 = 0) and (year mod 400 <> 0) then daycounter:= daycounter + 28;
      if (month = 2) and (year mod 4 = 0) and (year mod 100 = 0) and (year mod 400 = 0) then daycounter:= daycounter + 29;
    end;
end;

function fctrldigsum (number: int64): int64;                      //Task 20 - 648
var fct, fctd, fcts, fcth: string;
    i, dec, sin, hun: int64;
begin
  fct:= '1';
  for i := 1 to number do
  begin
     hun:= i div 100;
     dec:= (i div 10) mod 10;
     sin:= i mod 10;
     fcts:= strmultdig(fct, sin);
     fctd:= strmultdig(fct, dec) + '0';
     fcth:= strmultdig(fct, hun) + '00';
     fct:= sumstrings(fcts, fctd);
     fct:= sumstrings(fct, fcth);
     while fct [1] = '0' do fct:= RightStr (fct, length(fct)-1);
  end;
  result:= 0;
  for i := 1 to length (fct) do
    result:= result + StrToInt64(fct[i]);
end;

function friendnumsum (number: int64): int64;                    //Task 21 - 31626
var a: array of array[1..2] of int64;
    i: int64;
begin
  SetLength(a, number);
  a[0, 1]:= 1;
  a[0, 2]:= 1;
  a[1, 1]:= 2;
  a[1, 2]:= 1;
  a[2, 1]:= 3;
  a[2, 2]:= 1;
  result:= 0;
  for i:= 3 to number-1 do
  begin
    a[i, 1]:= i+1;
    a[i, 2]:= sumdivisors(i + 1);
    if a[i, 2] < a [i, 1] then
          if a [a[i, 2]-1, 2] = a [i, 1] then result:= result + a[i, 1] + a[i, 2];
  end;
end;

function namepoints (number: int64): int64;                 //Task 22 - 871198282
var f: text;
    s: char;
    st: string;
    i, j, intres, cnt: int64;
    a: array of string;
begin
  AssignFile(f, 'tsk' + number.ToString + '.txt');
  Reset (f);
  cnt:= 0;
  while not eof(f) do
  begin
    Read (f, s);
    if s = ',' then cnt:= cnt + 1
  end;
  Close (f);
  cnt:= cnt + 1;
  SetLength(a, cnt);
  Reset (f);
  for i:= 0 to cnt-1 do
  begin
    st:= '';
    Read (f, s);
    Read (f, s);
    while s <> '"' do
    begin
      st:= st + s;
      Read (f, s)
    end;
    a[i]:= st;
    try Read (f, s)
    finally
    end;
  end;
  Close (f);
  for i:= 0 to cnt - 2 do
    for j := i+1 to cnt - 1 do
      if a[i] > a[j] then
      begin
        st:= a[i];
        a[i]:= a[j];
        a[j]:= st
      end;
  result:=0;
  for i:= 0 to cnt - 1 do
  begin
    intres:= 0;
    for j:= 1 to length(a[i]) do
      intres:= intres + Latinletterorder(a[i][j]);
    intres:= intres * (i + 1);
    result:= result + intres;
  end;
end;

function nonabunsum(): int64;                         //Task 23 - 4179871
const N=28123;
var a: array[1..N, 1..4] of int64;
    i, j, k: int64;
    abun: array of int64;
begin
  for i:= 1 to N do
  begin
    a[i, 1]:= i;
    a[i, 2]:= sumdivisors(i);
    if a[i, 2] > a[i, 1] then a[i, 3]:= 1 else a[i, 3]:= 0;
    a[i, 4]:=1;
  end;
  j:=0;
  for i:= 1 to N do j:= j + a[i, 3];
  SetLength(abun, j);
  k:=0;
  for i:= 1 to N do
    if a[i, 3] = 1 then
    begin
      abun[k]:= a[i, 1];
      k:= k + 1;
    end;
  for i:= 0 to j - 1 do
    for k:= i to j - 1  do
      if abun[i] + abun [k] <= N then a[abun[i] + abun[k], 4]:= 0;
  result:= 0;
  for i:= 1 to N do
  begin;
    result:= result + a[i, 1] * a[i, 4];
  end;
end;

function lexpermut (number: int64): int64;          //Task 24 - 2783915460
var i, j, fir: int64;
    a: array [0 .. 9] of int64;
    st, st1, res: string;
begin
  fir:= number-1;
  for i:= 9 downto 0 do
  begin
    a[9 - i]:= fir div factorial (i);
    fir:= fir mod factorial (i)
  end;
  st:='0123456789';
  res:='';
  for i:= 0 to 9 do
  begin
    res:= res + st[a[i] + 1];
    st1:= '';
    for j:= 1 to length(st) do if st[j] <> st[a[i] + 1] then st1:= st1 + st[j];
    st:= st1;
  end;
  result:= StrToInt64(res);
end;

function indexfibonacci (number: int64): int64;      // Task 25 - 4782
var first, second, current: string;
begin
  result:= 2;
  first:= '1';
  second:= '1';
  current:='';
  while length (current) < number do
  begin
    current:= sumstrings(first, second);
    first:= second;
    second:= current;
    result:= result + 1;
  end;
end;

function peciprocalcycle (number: int64): int64;      // Task 26 - 983
var i, j, amnt: int64;
    modal: int64;
    modals: TList<int64>;
begin
  result:=1;
  amnt:=1;
  modals:= TList<int64>.Create;
  modal:=10;
  for i:= 2 to number do
  begin
    modals.Clear;
    while (not modals.Contains(modal mod i)) and (modal mod i <> 0) do
    begin
      modals.Add(modal mod i);
      modal:= (modal mod i) * 10;
    end;
    if modal mod i <> 0 then
    begin
      j:= modals.Count - modals.IndexOf(modal mod i);
      if j > amnt then
      begin
        amnt:= j;
        result:= i;
      end;
    end;
  end;
  modals.Destroy;
end;

function quadcoeff (number: int64): int64;       //Task 27 - -59231
var i, j, k, row, rowmax, res: int64;
begin
  rowmax:= 0;
  result:= 0;
  for i:= -number to number do
  begin
    j:= 1;
    while j < number do
    begin
      res:= 3;
      row:= -1;
      k:=0;
      while IsPrime(res) and (res > 0) do
      begin
        res:= k * k + i * k + j;
        row:= row + 1;
        k:= k + 1
      end;
      if row > rowmax then
      begin
        rowmax:= row;
        result:= i * j;
      end;
      j:= j + 2;
    end;
  end;
end;

function squarediagsum (number: int64): int64;    //Task 28 - 66917007
var i, j, k: int64;
begin
  result:= 1;
  j:= 1;
  for i:= 1 to number div 2 do
  begin
    for k:= 1 to 4 do
    begin
      j:= j + 2 * i;
      result:= result + j;
    end;
  end;
end;

function distinctpowerseq (): int64;        //Task 29 - 9183
type pwrs = record
       n, b, p: int64;
     end;
var i, j, k, l: Int64;
    flag: boolean;
    pows: pwrs;
    dq, dq1: TList<pwrs>;
    d: TList<int64>;
    a: array [1..100, 1..100] of int64;
    f: text;
begin
  dq:= TList<pwrs>.Create;
  dq.Clear;
  for i := 2 to 10 do
    for j := 2 to 6 do
      if powerint64(i,j) < 101 then
      begin
        pows.n:= powerint64(i,j);
        pows.b:= i;
        pows.p:= j;
        dq.Add(pows)
      end;
  dq.Sort;
  dq1:= TList<pwrs>.Create;
  dq1.Clear;
  dq1.add(dq[0]);
  for i:= 1 to dq.Count-1 do
    if dq[i].n <> dq[i-1].n then dq1.Add(dq[i]);
  dq:=dq1;
  d:= TList<int64>.Create;
  d.Clear;
  for i:= 0 to dq.Count-1 do
    d.Add(dq[i].n);
//  AssignFile (f, 'test29');
//  rewrite (f);
//  for i:= 0 to dq.Count-1 do
//    writeln (f, dq[i].n.ToString + ' ' + dq[i].b.ToString + ' ' + dq[i].p.ToString);
//  close (f);
  for i:= 2 to 100 do
    for j:= 2 to 100 do
      if d.Contains(i) then a[i, j]:= dq[d.IndexOf(i)].p * j *100 + dq[d.IndexOf(i)].b
      else a[i, j]:= j * 100 + i;
  for i:= 100 downto 2 do
    if d.Contains(i) then
    begin
      for j:= 100 downto 2 do
      begin
        flag:= false;
        for k:= i-1 downto 2 do
          for l:= 100 downto 2 do
            if a[i, j] = a [k, l] then flag:= true;
        if flag then a[i, j]:= 0 else a[i, j]:= 1;
      end;
    end
    else for j:= 100 downto 2 do a [i, j]:= 1;
  result:= 0;
    for i:= 2 to 100 do
    for j:= 2 to 100 do
      result:= result + a [i, j];
  dq1.Destroy;
  dq.Clear;
//  dq.Destroy;
  d.Destroy;
end;

function fifthpowerdigits: int64;             //Task 30 - 443839
var i: int64;
begin
  result:= 0;
  for i:= 10 to 500000 do
  if i = powerint64(i div 100000, 5) + powerint64((i mod 100000) div 10000, 5) +
  powerint64((i mod 10000) div 1000, 5) + powerint64((i mod 1000) div 100, 5) +
  powerint64((i mod 100) div 10, 5) + powerint64(i mod 10, 5) then result:= result + i;
end;

function nextcoin(number: int64): int64;        // helper function for Task 31
begin
  result:= 0;
  case number of
  1: result:= 2;
  2: result:= 5;
  5: result:= 10;
  10: result:= 20;
  20: result:= 50;
  50: result:= 100;
  100: result:= 200;
  end;
end;

function englishcoins: int64;                 //Task 31 - 73682
var a: array [0..200, 1..2] of int64;
    i, coin: int64;
begin
  coin:= 1;
  result:= 0;
  i:=0;
  a[0, 1]:= 0;
  a[0, 2]:= 0;
  a[1, 2]:= 0;
  while a[1, 2] < 200 do
  begin
    while a[i, 2] < 200 do
    begin
      i:= i + 1;
      a[i, 1]:= coin;
      a[i, 2]:= a[i-1, 2] + a [i, 1];
    end;
    if a[i, 2] = 200 then result:= result + 1;
    while i > 1 do
    begin
      if a[i, 1] <> a [i-1, 1] then
        break;
      i:= i - 1;
    end;
    a[i, 1]:= nextcoin(a[i, 1]);
    a[i, 2]:= a[i-1, 2] + a[i, 1];
  end;
  result:= result + 1;
end;

function pandigits: int64;
var i, j: int64;
    pandig:string;
    prods: TList<int64>;
begin
  prods:= TList<int64>.Create;
  prods.Clear;
  for i:= 2 to 9 do
    for j:= 1234 to 4987 do
      if i * j < 10000 then
      begin
        pandig:= i.ToString + j.ToString + (i * j).ToString;
        if pandig.Contains('1') and pandig.Contains('2') and pandig.Contains('3') and
        pandig.Contains('4') and pandig.Contains('5') and pandig.Contains('6') and
        pandig.Contains('7') and pandig.Contains('8') and pandig.Contains('9')
        then prods.Add((i * j));
      end;
  for i:= 12 to 98 do
    for j:= 123 to 987 do
      if i * j < 10000 then
      begin
        pandig:= i.ToString + j.ToString + (i * j).ToString;
        if pandig.Contains('1') and pandig.Contains('2') and pandig.Contains('3') and
        pandig.Contains('4') and pandig.Contains('5') and pandig.Contains('6') and
        pandig.Contains('7') and pandig.Contains('8') and pandig.Contains('9')
        then prods.Add((i * j));
      end;
  prods.Sort;
  for i:= prods.Count - 1 downto 1 do
    if prods[i] = prods[i-1] then prods.Remove(prods[i]);
  result:= 0;
  for i:= prods.Count - 1 downto 0 do
  result:= result + prods[i];
  prods.Destroy;
end;

function strngfractions: int64;
var i, j, i1, j1, res1: Integer;
    flag: boolean;
begin
  result:= 1;
  res1:= 1;
  for i:= 12 to 49 do
    for j:= 21 to 98 do
    begin
      flag:= True;
      if (i mod 10 = 0) and (j mod 10 = 0) then flag:= false;
      if i div 10 = j div 10 then flag:= false;
      if i div 10 = i mod 10 then flag:= false;
      if j mod 10 = j div 10 then flag:= false;
      if i mod 10 = j mod 10 then flag:= false;
      if (i mod 10 <> j div 10) and (j mod 10 <> i div 10) then flag:= false;
      if i >= j then flag:= false;
      if flag then
      begin
        if i div 10 = j mod 10
        then
        begin
          i1:= i mod 10;
          j1:= j div 10
        end
        else
        begin
          i1:= i div 10;
          j1:= j mod 10;
        end;
        if i/j = i1/j1 then
        begin
          res1:= res1 * i;
          result:= result * j;
        end;
      end;
    end;
  result:= result div res1;
end;

function sumfactorials: int64;                            // Task 34 - 40730
var i, j, chk, up: int64;
    intrm: string;
begin
  up:= 0;
  for i:= 0 to 9 do up:= up + factorial(i);
  result:= 0;
  for i:= 10 to up do
  begin
    intrm:= i.ToString;
    chk:= 0;
    for j:= 1 to length(intrm) do
      chk:= chk + factorial(StrDigitToInt64(intrm[j]));
    if i = chk then result:= result + i;
  end;
end;

function circularprimes (number: int64): int64;          // Task 35 - 55
var i, j: int64;
    chk, chk1: string;
    flag: boolean;
begin
  result:= 13;
  i:= 101;
  while i < number do
  begin
    if IsPrime(i) then
    begin
      chk:= i.ToString;
      if (not chk.Contains('0')) and (not chk.Contains('4')) and (not chk.Contains('6'))
      and (not chk.Contains('2')) and (not chk.Contains('8')) and (not chk.Contains('5')) then
      begin
        flag:= true;
        for j:= 1 to length(chk) - 1 do
        begin
          chk1:= chk[1];
          chk:= RightStr(chk, length(chk)-1);
          chk:= chk + chk1;
          if not IsPrime(chk.ToInt64) then flag:= false;
        end;
        if flag then result:= result + 1;
      end;
    end;
    i:= i + 2;
  end;
end;

function decbinpalindr (number: int64): int64;          //Task 36 - 872187
var i: integer;
    binstr: string;
begin
  result:= 0;
  for i:= 1 to number do
  begin
    binstr:= dectobin (i);
    if CheckPalindrNum(i) then if CheckPalindrStr(binstr) then result:= result + i
  end;
end;

function truncprimes: int64;                             //Task 37 - 748317
var counter: integer;
    i, chk: int64;
    flag: boolean;
    stri: string;
begin
  counter:= 11;
  result:= 0;
  i:= 23;
  while counter > 0 do
  begin
    flag:=true;
    stri:= i.ToString;
    if (stri[1] = '1') or (stri[1] = '4') or (stri[1] = '6') or (stri[1] = '9') or (stri[1] = '8') then
    begin
      i:= i + powerint64(10, length(stri)- 1);
      flag:= false
    end;
    if (stri.Contains('4') or stri.Contains ('6') or stri.Contains ('8') or stri.Contains('0')) and flag then
    begin
      flag:= false;
      i:= i + 2;
    end;
    if ((stri[length(stri)] = '9') or (stri[length(stri)] = '1')) and flag then
    begin
      flag:= false;
      i:= i + 2;
    end;
    if flag then
    begin
      if IsPrime (i) then
      begin
        chk:= i;
        stri:=RightStr(stri, length(stri) - 1);
        while (length(stri) > 0) and flag do
        begin
          if not IsPrime(stri.ToInt64) then flag:= false;
          stri:= RightStr(stri, length(stri) - 1)
        end;
        chk:= chk div 10;
        while (chk > 0) and flag do
        begin
          if not IsPrime(chk) then flag:= false;
          chk:= chk div 10;
        end;
        if flag then
        begin
          result:= result + i;
          counter:= counter - 1
        end;
      end;
    i:= i + 2;
    end;
  end;
end;

function panconcproduct: int64;                           //Task 38 - 932718654
begin
  for result:= 987654321 downto 918273646 do
  if ((result mod 100000) div (result div 100000) = 2) and
  ((result mod 100000) mod (result div 100000)=0) then
  if result.ToString.Contains('1') and result.ToString.Contains('2') and result.ToString.Contains('3') and
  result.ToString.Contains('4') and result.ToString.Contains('5') and result.ToString.Contains('6') and
  result.ToString.Contains('7') and result.ToString.Contains('8') and result.ToString.Contains('9') then break
end;

function maxnatursolut (number: int64): int64;            //Task 39 - 840
var i, j, k: int64;
    counter, rescounter: integer;
begin
  rescounter:= 1;
  result:= 0;
  for i:= 12 to number do
  begin
    counter:= 0;
    for j:= 1 to (i div 3) do
      for k:= j to (i - j) div 2 do
        if (j * j) + (k * k) = (i - j - k) * (i - j -k) then counter:= counter + 1;
    if counter > rescounter  then
    begin
      rescounter:= counter;
      result:= i
    end;
  end;
end;

function champerconst: int64;                             //Task 40 - 210
var i, j, counter: int64;
    chk: string;
begin
  j:=0;
  counter:= 0;
  i:= 0;
  result:= 1;
  while j < 7 do
  begin
    i:= i + 1;
    chk:= i.ToString;
    counter:= counter + length (chk);
    if counter >= powerint64 (10, j) then
    begin
      result:= result * StrDigitToInt64(chk[length(chk) - (counter - powerint64(10, j))]);
      j:= j + 1;
    end;
  end;
end;

function largestpandigprime: int64;                      //Task 41 - 7652413
var i: int64;
    chk: string;
begin
  i:= 7654321;
  while i > 1234567 do
  begin
    result:= 0;
    chk:= i.ToString;
    if chk.Contains('1') and chk.Contains('2') and chk.Contains('3') and chk.Contains('4') and
    chk.Contains('5') and chk.Contains('6') and chk.Contains('7')
    then if isprime(i) then
      begin
        result:= i;
        break
      end;
    i:= i-2;
  end;
end;

function trianglewords: int64;                         //Task 42 - 162
var f: text;
    allwrd, wrd: string;
    i, j, k, sumtrangl, sum: Integer;
begin
  AssignFile(f, 'tsk42.txt');
  Reset (f);
  Read (f, allwrd);
  Close (f);
  allwrd:= allwrd + ',';
  result:= 0;
  wrd:= '';
  for i:= 1 to length(allwrd) do
  begin
    if allwrd[i] <> ',' then wrd:= wrd + allwrd[i]
    else
    begin
      wrd:= RightStr(wrd, length(wrd)-1);
      wrd:= LeftStr(wrd, length(wrd)-1);
      sum:= 0;
      for j:= 1 to length(wrd) do
        sum:= sum + Latinletterorder(wrd[j]);
      for k:= 1 to 222 do
      begin
        sumtrangl:= ((k + 1) * k) div 2;
        if sum = sumtrangl then
        begin
          result:= result + 1;
          wrd:='';
          break
        end;
        if sum < sumtrangl then
        begin
        wrd:= '';
          break
        end;
      end;
    end;
  end;
end;

function pandigitsdivisions: int64;                 //Task 43 - 16695334890
var listall, listall1: TList<string>;
    hlp: string;
    i, j: int64;
begin
  listall:= TList<string>.Create;
  listall.Clear;
  i:= 17;
  while i < 1000 do
  begin
    if i < 100 then listall.Add('0' + i.ToString) else if (i.ToString[1] <> i.ToString[2])
    and (i.ToString[1] <> i.ToString[3]) and (i.ToString[2] <> i.ToString[3]) then
    listall.Add(i.ToString);
    i:= i + 17
  end;
  listall1:=TList<string>.Create;
  listall1.Clear;
  for i:= 0 to 9 do
    for j:= 0 to listall.Count - 1 do
      if (i * 100 + (listall[j][1]+listall[j][2]).ToInt64) mod 13 = 0 then
      if (DigToChr(i)[2] <> listall[j][1]) and (DigToChr(i)[2] <> listall[j][2])
      and (DigToChr(i)[2] <> listall[j][3]) then listall1.Add(DigToChr(i)[2] +
      listall[j]);      
  listall.Clear;
  i:= 5;
    for j:= 0 to listall1.Count - 1 do
    begin
      if (i * 100 + ((listall1[j][1] + listall1[j][2]).ToInt64)) mod 11 = 0 then
      if (DigToChr(i)[2] <> listall1[j][1]) and (DigToChr(i)[2] <> listall1[j][2])
      and (DigToChr(i)[2] <> listall1[j][3]) and (DigToChr(i)[2] <> listall1[j][4])
      then listall.Add(DigToChr(i)[2] + listall1[j]);
    end;
  listall1.Clear;
  for i:= 0 to 9 do
    for j:= 0 to listall.Count - 1 do
      if (i * 100 + ((listall[j][1]+listall[j][2]).ToInt64)) mod 7 = 0 then
      if (DigToChr(i)[2] <> listall[j][1]) and (DigToChr(i)[2] <> listall[j][2])
      and (DigToChr(i)[2] <> listall[j][3]) and (DigToChr(i)[2] <> listall[j][4]) 
      and (DigToChr(i)[2] <> listall[j][5]) then listall1.Add(DigToChr(i)[2] +
      listall[j]);
  listall.Clear;
  for i:= 0 to 9 do
    for j:= 0 to listall1.Count - 1 do
      if (DigToChr(i)[2] <> listall1[j][1]) and (DigToChr(i)[2] <> listall1[j][2])
      and (DigToChr(i)[2] <> listall1[j][3]) and (DigToChr(i)[2] <> listall1[j][4])
      and (DigToChr(i)[2] <> listall1[j][5]) and (DigToChr(i)[2] <> listall1[j][6])
      then listall.Add(DigToChr(i)[2] + listall1[j]);
  listall1.Clear;
  for i:= 0 to 9 do
    for j:= 0 to listall.Count - 1 do
      if (i * 100 + ((listall[j][1]+listall[j][2]).ToInt64)) mod 3 = 0 then
      if (DigToChr(i)[2] <> listall[j][1]) and (DigToChr(i)[2] <> listall[j][2])
      and (DigToChr(i)[2] <> listall[j][3]) and (DigToChr(i)[2] <> listall[j][4]) 
      and (DigToChr(i)[2] <> listall[j][5]) and (DigToChr(i)[2] <> listall[j][6])
      and (DigToChr(i)[2] <> listall[j][7]) then listall1.Add(DigToChr(i)[2] + 
      listall[j]);
  listall.Clear;
  for i:= 0 to 9 do                    
    for j:= 0 to listall1.Count - 1 do
      if (i * 100 + ((listall1[j][1]+listall1[j][2]).ToInt64)) mod 2 = 0 then
      if (DigToChr(i)[2] <> listall1[j][1]) and (DigToChr(i)[2] <> listall1[j][2])
      and (DigToChr(i)[2] <> listall1[j][3]) and (DigToChr(i)[2] <> listall1[j][4])
      and (DigToChr(i)[2] <> listall1[j][5]) and (DigToChr(i)[2] <> listall1[j][6])
      and (DigToChr(i)[2] <> listall1[j][7]) and (DigToChr(i)[2] <> listall1[j][8])
      then listall.Add(DigToChr(i)[2] +
      listall1[j]);
  listall1.Clear;
  for j:= 0 to listall.Count - 1 do
      for i:= 1 to 9 do
      if (DigToChr(i)[2] <> listall[j][1]) and (DigToChr(i)[2] <> listall[j][2])
      and (DigToChr(i)[2] <> listall[j][3]) and (DigToChr(i)[2] <> listall[j][4])
      and (DigToChr(i)[2] <> listall[j][5]) and (DigToChr(i)[2] <> listall[j][6])
      and (DigToChr(i)[2] <> listall[j][7]) and (DigToChr(i)[2] <> listall[j][8])
      and (DigToChr(i)[2] <> listall[j][9]) then listall1.Add(DigToChr(i)[2] +
      listall[j]);
  result:= 0;
  for i:= 0 to listall1.Count - 1 do result:= result + listall1[i].ToInt64;
  listall.Destroy;
  listall1.Destroy;
end;

function pentagonaldif: int64;             //Task 44 - 5482660
var i, j: int64;
    l: Tlist<int64>;
begin
  l:= TList<int64>.Create;
  l.Clear;
  result:=100000000000;
  for i:= 1 to 6000 do l.Add((i * (3 * i - 1)) div 2);
  for i:= 0 to l.Count - 102 do
  begin
    if l[i+1] - l[i] > result then break;
    for j := i+1 to l.Count - 101 do
    begin
      if IsPentagonal(l[i] + l[j]) and IsPentagonal(l[j] - l[i]) then
      begin
      if result > l[j] - l[i] then result:= l[j] - l[i];
      break
      end;
      if l[j + 1] - l [j] > l[i] then break
    end;
  end;
end;

function tripenthex: int64;              //Task 45 - 15337768005
var i, j, k, pe, he: int64;
begin
  result:= 1;
  pe:= 2;
  he:= 3;
  i:= 286;
  j:= 166;
  k:= 144;
  while (result <> pe) or (result <> he) do
  begin
    result:= (i * (i + 1)) div 2;
    pe:= (j * (3 * j -1)) div 2;
    he:= (k * (2 * k - 1));
    if result < pe then i:= i + 1 else
    if pe < he then j:= j + 1 else k:= k + 1;
  end;
end;

function goldbachconj: int64;        //Task 46 - 5777
var i: int64;
    flag: boolean;
begin
  result:= 33;
  flag:= true;
  while flag do
  begin
    result:= result + 2;
    flag:= false;
    if not IsPrime(result) then
    begin
    for i:= 2 to trunc(sqrt((result-1) div 2)) do
      if IsPrime(result - i * i * 2) then flag:= true
    end
    else flag:= true;
  end;
end;

function fourfromfour: int64;         //Task 47 - 134043
var flag: boolean;
begin
  result:= 100;
  flag:= true;
  while flag do
  begin
//    if (exactfourprimedivs(result)) then showmessage (result.ToString);
    if IsPrime(result) then result:= result + 1
    else
    if exactfourprimedivs(result) and exactfourprimedivs (result+1) and exactfourprimedivs(result + 2)
    and exactfourprimedivs(result + 3) then flag:= false else result:= result + 1;
  end;
end;

function selfpowersum (number: int64): int64;      //Task 48 - 9110846700
var i, j, pwr: int64;
begin
  result:= 0;
  for i:= 1 to number do
  begin
    pwr:= 1;
    for j:= 1 to i do
    begin
      pwr:= pwr * i;
      pwr:= pwr mod 100000000000
    end;
    result:= result + pwr
  end;
  result:= result mod 10000000000
end;

function fourdigitprimerperm: int64;                  //Task 49 - 296962999629
var i, j, k, l: int64;
begin
  result:= 0;
  i:= 1001;
  while i < 9999 do
  begin
    if not IsPrime(i) then i:= nextprime(i)
    else
    begin
      j:= 12;
      while j < 4498 do
      begin
        k:= i + j;
        l:= k + j;
        if (k > 10000) or (l > 10000) then break;
        if (i = 1487) and (j = 3330) then l:= l + 1;
        if (OrderString(i.ToString) = OrderString(k.ToString))
        and (OrderString(i.ToString) = OrderString(l.ToString))
        then if IsPrime(k) and IsPrime(l) then result:= i * 100000000 + k * 10000 + l;
        j:= j + 2;
        if result <> 0 then break
      end;
    if result <> 0 then break;
    i:= nextprime(i);
    end;
    if result <> 0 then break
  end;
end;

function consecprimesum (number: int64): int64;        //Task 50 - 997651
var i, j, cntrres, sum, counter: int64;
begin
  result:= 0;
  cntrres:= 1;
  i:= 2;
  while i < (number div cntrres) + 1 do
  begin
    sum:= 0;
    counter:= 0;
    j:= i;
    while sum < number do
    begin
      sum:= sum + j;
      counter:= counter + 1;
      if (counter > cntrres) and (sum <= number) then if IsPrime(sum) then
      begin
        cntrres:= counter;
        result:= sum;
      end;
      j:= nextprime(j)
    end;
    i:= nextprime(i)
  end;
end;

function eightprimesreplacepart: int64;        //task 51 - 121313
var i, j, k, l, m, digs, digsn, prcnt, addzero: int64;
    tmpl, tmpl1, chk: string;
begin
  for digs:= 3 to 7 do
  begin
    for i:= 1 to powerint64(2, digs-1)-1 do
    begin
      tmpl:= dectobin(i);
      addzero:= length(tmpl);
      if length(tmpl) < (digs - 1) then for k:= 1 to digs-1-addzero do tmpl:= '0' + tmpl;
      digsn:= 0;
      for k:= 1 to length(tmpl) do if tmpl[k] = '1' then digsn:= digsn + 1;
      j:= 1;
      while j < powerint64(10, digs - digsn) do
      begin
        prcnt:= 10;
        tmpl1:= j.ToString;
        addzero:= length(tmpl1);
        if length(tmpl1) < digs - digsn then for k:= 1 to digs - digsn - addzero do tmpl1:= '0' + tmpl1;
        result:= 0;
        for k:= 0 to 9 do
        begin
          chk:= '';
          m:= 1;
          for l:= 1 to length(tmpl) do
          begin
            if tmpl[l] = '0' then
            begin
              chk:= chk+ tmpl1[m];
              m:= m + 1;
            end
            else chk:= chk + k.ToString;
          end;
          chk:= chk + tmpl1[m];
          if isPrime(chk.Toint64) and (result = 0) then result:= chk.Toint64;
          if not IsPrime (chk.ToInt64) then prcnt:= prcnt - 1;
          if prcnt < 8 then break
        end;
        j:= j + 2;
        if prcnt > 8 then prcnt:= 8;
        if prcnt = 8 then break
      end;
      if prcnt = 8 then break
     end;
     if prcnt = 8 then break
   end;
end;

function pandigitmultiples: int64;    //Task 52 - 142857
var i, j: int64;
begin
  result:= 0;
  for i:= 2 to 9 do
  begin
    for j:= powerint64(10, i-1) to powerint64(10, i-1) + powerint64(10, i-2) * 7 do
    begin
      if OrderString(j.ToString) = OrderString((2 * j).ToString) then
      if OrderString(j.ToString) = OrderString((3 * j).ToString) then
      if OrderString(j.ToString) = OrderString((4 * j).ToString) then
      if OrderString(j.ToString) = OrderString((5 * j).ToString) then
      if OrderString(j.ToString) = OrderString((6 * j).ToString) then
      begin
        result:= j;
        break;
      end;
      if result <> 0 then break
    end;
    if result <> 0 then break
  end;
end;

function combinatoriccount(number: int64): int64;    //Task 53 - 4075
var i, j, comb: int64;
begin
  result:= 0;
  for i:= 1 to 99 do
  begin
    j:= i + 1;
    comb:= 0;
    while (comb < number) and (j <= 100) do
    begin
      comb:= combinatoric(i, j);
      j:= j + 1
    end;
    if comb >= number then result:= result + 100 - j + 2;
  end;
end;

function pokerwinner: int64;           //Task 54 - 376
var f: text;
    i, j, firstresult, secondresult: int64;
    a: array [1 .. 1000] of string;
    first, second: string;
begin
  AssignFile (f, 'tsk54.txt');
  reset (f);
  for i:= 1 to 1000 do
    readln(f, a[i]);
  close (f);
  result:= 0;
  for i:= 1 to 1000 do
  begin
    first:= '';
    second:= '';
    for j:= 1 to 14 do first:= first + a[i][j];
    for j:= 16 to 30 do second:= second + a[i][j];
    firstresult:= pokercomb(first);
    secondresult:= pokercomb(second);
    if firstresult > secondresult then result:= result + 1;
  end;
end;

function lychrelnumbers: int64;            //Task 55 - 249
var i, j, k: int64;
    a: array [1 .. 10000] of int64;
    interm: TList<int64>;
    intres: string;
begin
  interm:= TList<int64>.Create;
  interm.Clear;
  for i:= 1 to 10000 do
    a[i]:= i;
  for i:= 1 to 10000 do
  begin
    if (a[i] <> 0) and (a[i] <> 80000) then
    begin
      intres:= (a[i] + reversenumber(a[i])).ToString;
      j:= 1;
      interm.Clear;
      while (j <= 500) do
      begin
        if CheckPalindrStr(intres) then
        begin
          a[i]:= 0;
          if interm.Count <> 0 then
          begin
            k:= 0;
            while (k < interm.Count) and (interm.Count <= 10000) do
            begin
              a[interm[k]]:= 0;
              k:= k + 1;
            end;
          end;
          j:= 10000;
        end
        else
        begin
          if length(intres) < 5 then
          begin
            interm.Add(intres.ToInt64);
            interm.Add((reversestring(intres)).ToInt64);
          end;
          intres:= sumstrings (intres, reversestring(intres));
          j:= j + 1
        end;
      end;
      if j < 502 then
      begin
        a[i]:= 80000;
        k:= 0;
        while (k < interm.Count) and (interm.Count <= 10000) do
          begin
            a[interm[k]]:= 80000;
            k:= k + 1;
          end;
      end;
    end;
  end;
  result:= 0;
  for i:= 1 to 10000 do
    if a[i] = 80000 then result:= result + 1;
//  intres:= '196';
//  for i:= 197 to 10000 do                                               shows the numbers
//    if a[i] = 80000 then intres:= intres + ', ' + i.ToString;
//    showmessage(intres);

  interm.Destroy;
end;

function selfpowersums(number: int64): int64;       //Task 56 - 972
var i, j, k, l, m, intsum: int64;
    smult, spow: string;
begin
  result:= 1;
  for i:= number downto 2 do
  begin
    for m:= number downto 2 do
    begin
      smult:= i.ToString;
      for j:= 1 to m - 1 do
      begin
        spow:='0';
        for k:= 1 to i do
          spow:= sumstrings(spow, smult);
        smult:= spow;
      end;
      intsum:= 0;
      for l:= 1 to length(spow) do
        intsum:= intsum + StrToInt64(spow[l]);
      if result < intsum then result:= intsum;
      if (result div 7) > length(spow) then break
    end;
  end;
end;

function sqrt2iterat(number: int64): int64;       //Task 57 - 143
var i: int64;
    enu, den, intmd: string;
begin
  result:= 0;
  enu:= '3';
  den:= '2';
  for i:= 2 to number do
  begin
    intmd:= den;
    den:= sumstrings(enu, den);
    enu:= sumstrings(sumstrings(intmd, intmd), enu);
    if length(enu) > length(den) then result:= result + 1;
  end;
end;

function diagonalprimes: int64;                   //Task 58 - 241
var i, current, addition, total, primes: int64;
    flag: boolean;
begin
  flag:= True;
  current:= 1;
  total:= 0;
  primes:= 0;
  addition:= 2;
  while True do
  begin
    for i:= 1 to 4 do
    begin
      current:= current + addition;
      total:= total + 1;
      if IsPrime(current) then primes:= primes + 1;
      if total / primes > 10 then
      begin
        flag:= false;
        break;
      end;
    end;
    if not flag then break;
    addition:= addition + 2;
  end;
  if i = 4 then result:= addition + 1 else result:= addition - 1;
end;

function decyphernsumascii: int64;                       //Task 59 - 129448
var i, j: int64;
    f: text;
    s, cyphstr, decyphstr, chr: string;
    key1, key2, key3: char;
    cypher: array [1 .. 3] of integer;
begin
  AssignFile(f, 'tsk59.txt');
  Reset(f);
  Read(f, s);
  Close(f);
  chr:= '';
  cyphstr:= '';
  for i:= 1 to length(s) do
  begin
    if s[i] <> ',' then
      chr:=chr + s[i]
    else
    begin
      if length(chr) = 1 then chr:= '0' + chr;
      cyphstr:= cyphstr + chr;
      chr:= '';
    end;
    if i = length(s) then
    begin
      if length(chr) = 1 then chr:= '0' + chr;
      cyphstr:= cyphstr + chr;
    end;
  end;
  for key1:= 'e' to 'e' do
    for key2:= 'x' to 'x' do
      for key3 := 'p' to 'p' do
      begin
        cypher[1]:= asciitocode(key1);
        cypher[2]:= asciitocode(key2);
        cypher[3]:= asciitocode(key3);
        i:= 1;
        j:= 1;
        decyphstr:= '';
        result:= 0;
        while i < length(cyphstr) do
        begin
          decyphstr:= decyphstr + codetoascii(strToInt((cyphstr[i]+cyphstr[i+1])) xor cypher[j]);
          result:= result + (strToInt((cyphstr[i]+cyphstr[i+1])) xor cypher[j]);
          i:= i + 2;
          j:= j + 1;
          if j = 4 then j:= 1;
        end;
       end;
end;

function fiveprimesmakeprime: int64;                        //Task 60 - 26033
var i, pr1, pr2, pr3, pr4, pr5: int64;
    flag2, flag3, flag4, flag5, ch2, ch3, ch4, ch5: boolean;
begin
  pr1:= 3;
  pr2:= 7;
  pr3:= 13;
  pr4:= 17;
  pr5:= 19;
  result:= 200150;
  ch2:= True;
  ch3:= True;
  ch4:= True;
  ch5:= True;
  while True do
  begin
    if ch2 then flag2:= IsPrime(pr1 * powerint64(10, length(pr2.ToString)) + pr2) and
    IsPrime(pr2 * powerint64(10, length(pr1.ToString))+pr1);
    if ch3 and flag2 then flag3:= IsPrime(pr3 * powerint64(10, length(pr1.ToString)) + pr1) and
    IsPrime(pr1 * powerint64(10, length(pr3.ToString)) + pr3) and
    IsPrime(pr3 * powerint64(10, length(pr2.ToString)) + pr2) and
    IsPrime(pr2 * powerint64(10, length(pr3.ToString)) + pr3);
    if ch4 and flag3 then flag4:= IsPrime(pr4 * powerint64(10, length(pr1.ToString)) + pr1) and
    IsPrime(pr1 * powerint64(10, length(pr4.ToString)) + pr4) and
    IsPrime(pr4 * powerint64(10, length(pr2.ToString)) + pr2) and
    IsPrime(pr2 * powerint64(10, length(pr4.ToString)) + pr4) and
    IsPrime(pr4 * powerint64(10, length(pr3.ToString)) + pr3) and
    IsPrime(pr3 * powerint64(10, length(pr4.ToString)) + pr4);
    if ch5 and flag4 then flag5:= IsPrime(pr5 * powerint64(10, length(pr1.ToString)) + pr1) and
    IsPrime(pr1 * powerint64(10, length(pr5.ToString)) + pr5) and
    IsPrime(pr5 * powerint64(10, length(pr2.ToString)) + pr2) and
    IsPrime(pr2 * powerint64(10, length(pr5.ToString)) + pr5) and
    IsPrime(pr5 * powerint64(10, length(pr3.ToString)) + pr3) and
    IsPrime(pr3 * powerint64(10, length(pr5.ToString)) + pr5) and
    IsPrime(pr5 * powerint64(10, length(pr4.ToString)) + pr4) and
    IsPrime(pr4 * powerint64(10, length(pr5.ToString)) + pr5);
    if flag2 and flag3 and flag4 and flag5 then
    begin
      if pr1 + pr2 + pr3 + pr4 + pr5 < result then result:= pr1 + pr2 + pr3 + pr4 + pr5;
      flag4:= False;
    end;
    if not flag2 then
    begin
      pr2:= nextprime(pr2);
      pr3:= nextprime(pr2);
      pr4:= nextprime(pr3);
      pr5:= nextprime(pr4);
      ch2:= True;
      ch3:= True;
      ch4:= True;
      ch5:= True;
      if (pr2 > 5500) or (pr1 + pr2 + pr3 + pr4 + pr5 > result) then
      begin
        pr1:= nextprime(pr1);
        if pr1 = 5 then pr1:= 7;
        pr2:= nextprime(pr1);
        pr3:= nextprime(pr2);
        pr4:= nextprime(pr3);
        pr5:= nextprime(pr4);
        ch2:= True;
        if (pr1 > 5500) or (pr1 + pr2 + pr3 + pr4 + pr5 > result) then break
      end;
    end;
    if flag2 and not flag3 then
    begin
      pr3:= nextprime(pr3);
      pr4:= nextprime(pr3);
      pr5:= nextprime(pr4);
      ch2:= False;
      ch3:= True;
      ch4:= True;
      ch5:= True;
      if (pr3 > 11000) or (pr1 + pr2 + pr3 + pr4 + pr5 > result) then
      begin
        pr2:= nextprime(pr2);
        pr3:= nextprime(pr2);
        pr4:= nextprime(pr3);
        pr5:= nextprime(pr4);
        ch2:= True;
      end;
    end;
    if flag2 and flag3 and not flag4 then
    begin
      pr4:= nextprime(pr4);
      pr5:= nextprime(pr4);
      ch2:= False;
      ch3:= False;
      ch4:= True;
      ch5:= True;
      if (pr4 > 20000) or (pr1 + pr2 + pr3 + pr4 + pr5 > result) then
      begin
        pr3:= nextprime(pr3);
        pr4:= nextprime(pr3);
        pr5:= nextprime(pr4);
        ch3:= True;
      end;
    end;
    if flag2 and flag3 and flag4 and not flag5 then
    begin
      pr5:= nextprime(pr5);
      ch2:= False;
      ch3:= False;       ch4:= False;
      ch5:= True;
      if (pr5 > 200000) or (pr1 + pr2 + pr3 + pr4 + pr5 > result) then
      begin
        pr4:= nextprime(pr4);
        pr5:= nextprime(pr4);
        ch4:= True;
      end;
    end;
    if (pr1 > 5500) or (pr1 + pr2 + pr3 + pr4 + pr5 > result) then break
  end;
//  showmessage (pr1.ToString + ' ' + pr2.ToString + ' ' + pr3.ToString + ' ' + pr4.ToString + ' ' + pr5.ToString);
end;

function tritooctsum: int64;                 //Task 61 - 28684
var i, j, k, l, m, n, oct, any1, any2, any3, any4, any5: int64;
begin
  result:= 0;
  oct:= 1;
  while oct < 1000 do oct:= NextOctagonal(oct);
  while oct < 10000 do
  begin
    for i:= 10 to 99 do
    begin
      if result <> 0 then break;
      any1:= (oct mod 100) * 100 + i;
      if IsHeptagonal(any1) or IsHexagonal(any1) or IsPentagonal(any1) or
      IsSquare(any1) or IsTriangle(any1) then
      begin
        for j:= 10 to 99 do
        begin
          if result <> 0 then break;
          if (any1 div 1000 < 1) then break;
          any2:= (any1 mod 100) * 100 + j;
          if IsHeptagonal(any2) or IsHexagonal(any2) or IsPentagonal(any2) or
          IsSquare(any2) or IsTriangle(any2) then
          begin
            for k:= 10 to 99 do
            begin
              if result <> 0 then break;
              if (any2 div 1000 < 1) then break;
              any3:= (any2 mod 100) * 100 + k;
              if IsHeptagonal(any3) or IsHexagonal(any3) or IsPentagonal(any3) or
              IsSquare(any3) or IsTriangle(any3) then
              begin
                for l:= 10 to 99 do
                begin
                  if result <> 0 then break;
                  if (any3 div 1000 < 1) then break;
                  any4:= (any3 mod 100) * 100 + l;
                  if IsHeptagonal(any4) or IsHexagonal(any4) or IsPentagonal(any4) or
                  IsSquare(any4) or IsTriangle(any4) then
                  begin
                    for m:= 1 to 1 do
                    begin
                      if result <> 0 then break;
                      if (any4 div 1000 < 1) then break;
                      any5:= (any4 mod 100) * 100 + (oct div 100);
                      if IsHeptagonal(any5) or IsHexagonal(any5) or IsPentagonal(any5) or
                      IsSquare(any5) or IsTriangle(any5) then
                      begin
                        for n:= 1 to 1 do
                        begin
                          if (any5 div 1000 < 1) then break;
                          if ((IsHeptagonal(any1) or IsHeptagonal(any2) or IsHeptagonal(any3) or IsHeptagonal(any4)
                          or IsHeptagonal(any5)) and (IsHexagonal(any1) or IsHexagonal(any2) or IsHexagonal(any3)
                          or IsHexagonal(any4) or IsHexagonal(any5)) and (IsPentagonal(any1) or IsPentagonal(any2)
                          or IsPentagonal(any3) or IsPentagonal(any4) or IsPentagonal(any5)) and (IsSquare(any1) or
                          IsSquare(any2) or IsSquare(any3) or IsSquare(any4) or IsSquare(any5)) and (IsTriangle(any1)
                          or IsTriangle(any2) or IsTriangle(any3) or IsTriangle(any4) or IsTriangle(any5))) and
                          ((IsTriangle(any1) or IsSquare(any1) or IsPentagonal(any1) or IsHexagonal(any1) or
                          IsHeptagonal(any1)) and (IsTriangle(any2) or IsSquare(any2) or IsPentagonal(any2) or
                          IsHexagonal(any2) or IsHeptagonal(any2)) and (IsTriangle(any3) or IsSquare(any3) or
                          IsPentagonal(any3) or IsHexagonal(any3) or IsHeptagonal(any3)) and (IsTriangle(any4) or
                          IsSquare(any4) or IsPentagonal(any4) or IsHexagonal(any4) or IsHeptagonal(any4)) and
                          (IsTriangle(any5) or IsSquare(any5) or IsPentagonal(any5) or IsHexagonal(any5) or
                          IsHeptagonal(any5))) then
                          result:= oct + any1 + any2 + any3 + any4 + any5;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
    oct:= NextOctagonal(oct);
  end;
end;

function cubicpermut: int64;                      //Task 62 - 127035954683
var i, j, k, l, currentnum: int64;
    previous, current: string;
    s: array [1 .. 9000, 1 .. 4] of int64;
    contain: boolean;
begin
  for i:= 1 to 9000 do
    for j:= 1 to 4 do
      s[i, j]:= 0;
  s[1, 2]:= 1;
  current:= '0';
  j:=1;
  for i:= 1 to 10000 do
  begin
    previous:= current;
    current:= powerint64(i, 3).ToString;
    current:= OrderString(current);
    current:= reversestring(current);
    currentnum:= StrToInt64(current);
    if length(current) > length(previous) then
    begin
      for k:= 1 to 9000 do
        for l:= 1 to 4 do
          s[k, l]:= 0;
      j:= 1;
      s[j, 1]:= powerint64(i, 3);
      s[j, 2]:= 1;
      s[j, 3]:= i;
      s[j, 4]:= currentnum;
    end
    else
    begin
      contain:= false;
      for k:= 1 to 9000 do
        if currentnum = s[k, 4] then contain:= true;
      if contain then
      begin
        k:= 1;
        while currentnum <> s[k, 4] do k:= k + 1;
        s[k, 2]:= s[k, 2] + 1;
        if s[k, 2] = 5 then
        begin
          result:= powerint64(s[k, 3], 3);
          break
        end;
      end
      else
      begin
        j:= j + 1;
        s[j, 1]:= powerint64(i, 3);
        s[j, 2]:= 1;
        s[j, 3]:= i;
        s[j, 4]:= currentnum;
      end;
    end;
  end;
end;

function poweqdigs: int64;     //Task 63 - 49
var i, j: int64;
begin
  result:= 0;
  j:= 1;
  while power(9, j) / power (10, j-1) > 1 do
  begin
    for i:= 1 to 9 do
      if power(i, j) / power (10, j-1) >= 1 then result:= result + 1;
    j:= j + 1;
  end;
end;

function sqrtiterationodd (number: int64): int64;         //Task 64 - 1322
var i, whole, zn, ch, chm, counter: int64;
period: TList<string>;
per: array [0 .. 5000] of string;
chk: string;
begin
  period:= TList<string>.Create;
  result:= 0;
  for i:= 2 to number do
  begin
    if not IsSquare(i) then
    begin;
      period.Clear;
      ch:= 0;
      zn:= 1;
      chk:= ch.ToString + '000000' + zn.ToString;
      counter:= 0;
      while not period.Contains(chk) do
      begin
        period.Add(chk);
        per[counter] := chk;
        counter:= counter + 1;
        whole:= (trunc(sqrt(i) + ch) div zn);
        ch:= whole * zn - ch;
        chm:= zn;
        zn:= (i - ch * ch) div chm;
        chk:=ch.ToString + '000000' + zn.ToString;
      end;
    counter:= counter - period.IndexOf(chk);
    if counter mod 2 = 1 then result:= result + 1;
    end;
  end;
end;

function eulerapprox(number: int64): int64;       //Task 65 - 272
var i, j: int64;
    a: array of int64;
    ch, zn, mvr, smr: string;
begin
  SetLength(a, number);
  a[0]:= 2;
  a[1]:= 1;
  a[2]:= 2;
  j:= 4;
  for i:= 3 to number - 1 do
  begin
    if i mod 3 = 0 then a[i]:= 1;
    if i mod 3 = 1 then a[i]:= 1;
    if i mod 3 = 2 then
    begin
      a[i]:= j;
      j:= j + 2;
    end;
  end;
  ch:= '1';
  zn:= a[number - 1].ToString;
  for i := number - 1 downto 1 do
  begin
    smr:= '0';
    for j:= 1 to a[i-1] do
      smr:= sumstrings(smr, zn);
    ch:= sumstrings(smr, ch);
    if i = 1 then break;
    mvr:= zn;
    zn:= ch;
    ch:= mvr;
  end;
  result:= 0;
  for i:= 1 to length(ch) do
  result:= result + StrToInt64(ch[i]);
end;

function diophantine (number: int64): int64;           //Task 66 - 661
var i, j, ch, zn, chm, whole, counter, cnt: int64;
    period: TList<string>;
    chk, znk, mvr, chmv: string;
    per: array [0 .. 50000] of string;
    flag: boolean;
begin
  result:= 0;
  mvr:= '';
  period:= TList<string>.Create;
  for i:= 13 to number do
  begin
    if not IsSquare(i) then
    begin
      period.Clear;
      ch:= 0;
      zn:= 1;
      chk:= ch.ToString + '000000' + zn.ToString;
      counter:= 0;
      flag:= true;
      while not period.Contains(chk) do
      begin
        period.Add(chk);
        per[counter] := chk;
        counter:= counter + 1;
        whole:= (trunc(sqrt(i) + ch) div zn);
        ch:= whole * zn - ch;
        chm:= zn;
        zn:= (i - ch * ch) div chm;
        chk:=ch.ToString + '000000' + zn.ToString;
      end;
      cnt:= counter - period.IndexOf(chk);
      if (cnt - 1) mod 2 = 1 then cnt:= counter - 1 else cnt:= counter * 2 - 1;
      ch:= 0;
      zn:= 1;
      counter:= 0;
      period.Clear;
      while counter <= cnt do
      begin;
        counter:= counter + 1;
        whole:= (trunc(sqrt(i) + ch) div zn);
        ch:= whole * zn - ch;
        chm:= zn;
        zn:= (i - ch * ch) div chm;
        period.Add(whole.ToString);
      end;
      chk:= '1';
      znk:= period[period.Count -1];
      for j:= period.Count - 1 downto 1 do
      begin
        chk:= sumstrings(stringmult(znk, period[j-1]), chk);
        if j = 1 then break;
        chmv:= znk;
        znk:= chk;
        chk:= chmv;
      end;
      if (length(mvr) < length(chk)) or ((length(mvr) = length(chk)) and (chk > mvr)) then
      begin
        mvr:= chk;
        result:= i;
      end;
    end;
  end;
end;

//Task 67 - 7273 (triangleroute function for task 18)

function pentaring: int64;               //Task 68 - 6531031914842725;
var i, i1, j, k, maxind, res: int64;
    resstr: string;
    a: array [1 .. 10] of int64;
    flag, flag1: boolean;
begin
  result:= 0;
  flag:= true;
  for i:= 1 to 10 do a[i]:= i;
  while flag do
  begin
    for i:= 9 downto 1 do
    begin
      flag1:= false;
      if a[i+1] > a[i] then
      begin
        flag1:= true;
        k:= i;
      end;
      if flag1 then break
    end;
      if not flag1 then break;
      i1:= 10;
      while a[i1] < a[k] do i1:= i1 - 1;
      j:= a[i1];
      a[i1]:= a[k];
      a[k]:= j;
      if k <> 9 then
      begin
        for i1:= 0 to (10-k) div 2 - 1 do
        begin
          j:= a[k + i1 + 1];
          a[k + i1+ 1]:= a[10 - i1];
          a[10 - i1]:= j;
        end;
      end;
    if (a[1] + a[2] + a[4] = a[3] + a[4] + a[6]) and (a[1] + a[2] + a[4] = a[5] + a[6] + a[8])
    and (a[1] + a[2] + a[4] = a[7] + a[8] + a[10]) and (a[1] + a[2] + a[4] = a[9] + a[10] + a[2])
    then
    begin
      j:= 1;
      maxind:= j;
      while j < 10 do
      begin
        if a[j] < a[maxind] then maxind:= j;
        j:= j + 2
      end;
      resstr:= (a[maxind]).ToString + (a[(maxind + 1) mod 11 + (maxind + 1) div 11]).ToString;
      resstr:= resstr + (a[(maxind + 3) mod 11 + (maxind + 3) div 11]).ToString + (a[(maxind + 2) mod 11 + (maxind + 3) div 11]).ToString + (a[(maxind + 3) mod 11 + (maxind + 3) div 11]).ToString + (a[(maxind + 5) mod 11 + (maxind + 5) div 11]).ToString;
      resstr:= resstr + (a[(maxind + 4) mod 11 + (maxind + 4) div 11]).ToString + (a[(maxind + 5) mod 11 + (maxind + 5) div 11]).ToString + (a[(maxind + 7) mod 11 + (maxind + 7) div 11]).ToString;
      resstr:= resstr + (a[(maxind + 6) mod 11 + (maxind + 6) div 11]).ToString + (a[(maxind + 7) mod 11 + (maxind + 7) div 11]).ToString;
      resstr:= resstr + (a[(maxind + 9) mod 11 + (maxind + 9) div 11]).ToString + (a[(maxind + 8) mod 11 + (maxind + 8) div 11]).ToString + (a[(maxind + 9) mod 11 + (maxind + 9) div 11]).ToString + (a[(maxind + 1)]).ToString;
      maxind:= StrToInt64(resstr);
      if (maxind > result) and (maxind < 10000000000000000) then result:= maxind
    end;
  end;
end;

function eulerfunction69 (number: int64): int64;       //Task 69 - 510510
var i, j, factor: int64;
    multies: TList<int64>;
    reschk: real;
begin
  multies:= TList<int64>.Create;
  result:= 6;
  reschk:= 3;
  for i:= 7 to number do
    if not IsPrime(i) then
    begin
      multies.Clear;
      j:= 2;
      factor:= i;
      while j <= trunc(sqrt(factor)) do
      begin
        if factor mod j = 0 then
        begin
          factor:= factor div j;
          multies.Add(j);
          if IsPrime(factor) then
          begin
            multies.Add(factor);
            j:= i
          end;
        end
        else j:= nextprime(j);
      end;
      factor:= multies[0];
      for j:= 1 to multies.Count - 1 do
      begin
        if multies[j] = multies[j-1] then factor:= factor * multies[j]
        else
          factor:= (factor div multies[j-1]) * (multies[j-1] - 1) * multies[j];
      end;
      factor:= (factor div multies[j-1]) * (multies[j-1] - 1);
      if reschk < i / factor then
      begin
        result:= i;
        reschk:= i / factor;
      end;
    end;
  multies.Destroy;
end;

function eulerfunction70 (number: int64): int64;       //Task 70 -
var i, j, factor: int64;
    multies: TList<int64>;
    reschk: real;
    fi, origin: string;
begin
  multies:= TList<int64>.Create;
  result:= 87109;
  reschk:= 87109 / 79180;
  for i:= 7 to number do
    if not IsPrime(i) then
    begin
      multies.Clear;
      j:= 2;
      factor:= i;
      while j <= trunc(sqrt(factor)) do
      begin
        if factor mod j = 0 then
        begin
          factor:= factor div j;
          multies.Add(j);
          if IsPrime(factor) then
          begin
            multies.Add(factor);
            j:= i
          end;
        end
        else j:= nextprime(j);
      end;
      factor:= multies[0];
      for j:= 1 to multies.Count - 1 do
      begin
        if multies[j] = multies[j-1] then factor:= factor * multies[j]
        else
          factor:= (factor div multies[j-1]) * (multies[j-1] - 1) * multies[j];
      end;
      factor:= (factor div multies[j-1]) * (multies[j-1] - 1);
      if reschk > i / factor then
      begin
        fi:= factor.ToString;
        origin:= i.ToString;
        if OrderString(fi) = OrderString (origin) then
        begin
          result:= i;
          reschk:= i / factor;
        end;
      end;
    end;
  multies.Destroy;
end;

function threeseventhfraction(number: int64): int64;         //Task 71 - 428570
var i, j, ch, zn: Int64;
    flag: boolean;
    label 1;
begin
  result:= 2;
  zn:= 5;
  for i:= 9 to number do
  begin
     ch:=(result * i) div zn + 1;
     while (ch / i) < (3 / 7) do
     begin
       flag:= true;
       if isprime(ch) then goto 1;
       if isprime(i) then goto 1;
       if i mod ch = 0 then flag:= false;
       j:= 2;
       if flag then while j < trunc(sqrt(ch)) do
       begin
         if (i mod j = 0) and (ch mod j = 0) then
         begin
           flag:= false;
           break
         end;
         j:= nextprime(j);
       end;
1:     if flag then
       begin
         zn:= i;
         result:= ch;
         ch:= ch + 1
       end;
     end;
  end;
end;

function fractioncount(number: int64): int64;        //Task 72 - 303963552391
var i: int64;
begin
  result:= 21;
  for i:= 9 to number do
  result:= result + eulerfunction(i);
end;

function fractionsinrange(number: int64): int64;         //Task 73 - 428570
//var i, ch, j, p: int64;
//    flag: boolean;
//    label 1;
//begin
//  result:= 3;
//  for i:= 9 to number do
//  begin
//    ch:= i div 3 + 1;
//    while 2 * ch < i do
//    begin
//      flag:= true;
//      p:= ch;
//      if IsPrime(i) then goto 1;
//      if IsPrime(ch) then goto 1;
//      if i mod ch = 0 then
//      begin
//        flag:= false;
//        ch:= i;
//      end;
//      j:= 2;
//      while j <= p do
//      begin
//        if (p mod j = 0) and (i mod j = 0) then
//        begin
//          flag:= false;
//          break
//        end
//        else
//        begin
//          if p mod j = 0 then p:= p div j;
//          j:= nextprime(j);
//        end;
//      end;
//    1: if flag then result:= result + 1;
//      ch:= ch + 1;
//    end;
//  end;
//end;
var i, j: int64;
begin
  result:= 0;
  for i := 3 to number do
    for j:= (trunc(1 / 3 * i) + 1) to (trunc(1 / 2 * i)) do
      if hghcomfac(i, j) = 1 then inc(result);
end;

function factorialchain: int64;                    //Task 74 - 402
var i, j, p, sum: int64;
    Listing: TList<int64>;
    raz: string;
    flag: boolean;
begin
  result:= 0;
  Listing:= TList<int64>.Create;
  for i:= 11 to 1000000 do
  begin
    p:= i;
    Listing.Clear;
    Listing.Add(p);
    flag:= true;
    while flag do
    begin
      sum:= 0;
      raz:= p.ToString;
      for j:= 1 to length(raz) do
      begin
        sum:= sum + factorial(p mod 10);
        p:= p div 10
      end;
      if Listing.Contains(sum) then flag:= false else Listing.Add(sum);
      p:= sum;
    end;
    if Listing.Count = 60 then result:= result + 1;
  end;
  Listing.Destroy;
end;

function singularrighttriangles(number: int64): int64;         //Task 75 - 161667
var i, j, k, a, b, c, hb, wir: int64;
    repeates: array of integer;
    combs: TList<string>;
begin
  combs:= TList<string>.Create;
  combs.Clear;
  setlength(repeates, number+1);
  for i:= 1 to number do
    repeates[i]:= 0;
  hb:= trunc(sqrt(number)) + 1;
  for i:= 1 to hb do
  begin
    for j:= i + 1 to hb do
    begin
      if (hghcomfac(i, j) = 1) and ((j - i) mod 2 = 1) then
      begin
        a:= j * j - i * i;
        b:= 2 * i * j;
        c:= j * j + i * i;
        wir:= a + b + c;
        k:= 1;
        while k * wir <= number do
          begin
            repeates[k * wir]:= repeates[k * wir] + 1;
            k:= k + 1;
          end;
      end;
    end;
  end;
  result:= 0;
  for i:= 1 to number do
    if repeates[i] = 1 then result:= result + 1;
end;

function sumsvariants(number: int64): int64;                 //Task 76 - 190569291
var a: array of array [1..2] of int64;
    i, coin: int64;
begin
  setlength(a, number + 1);
  coin:= 1;
  result:= 0;
  i:=0;
  a[0, 1]:= 0;
  a[0, 2]:= 0;
  a[1, 2]:= 0;
  while a[1, 2] < number do
  begin
    while a[i, 2] < number do
    begin
      i:= i + 1;
      a[i, 1]:= coin;
      a[i, 2]:= a[i-1, 2] + a [i, 1];
    end;
    if a[i, 2] = number then result:= result + 1;
    while i > 1 do
    begin
      if a[i, 1] <> a [i-1, 1] then
        break;
      i:= i - 1;
    end;
    a[i, 1]:= a[i, 1] + 1;
    a[i, 2]:= a[i-1, 2] + a[i, 1];
  end;
end;

function primesumsvariants(number: int64): int64;                 //Task 77 - 71
var a: array of array [1..2] of int64;
    i, coin, variants: int64;
begin
  variants:= 0;
  result:= 3;
  while variants < number do
  begin
    variants:= 0;
    result:= result + 1;
    setlength(a, result + 1);
    coin:= 2;
    a[0, 1]:= 0;
    a[0, 2]:= 0;
    a[1, 2]:= 0;
    i:= 0;
    while a[1, 2] < result do
    begin
      while a[i, 2] < result do
      begin
        i:= i + 1;
        a[i, 1]:= coin;
        a[i, 2]:= a[i-1, 2] + a [i, 1];
      end;
      if a[i, 2] = result then variants:= variants + 1;
      while i > 1 do
      begin
        if a[i, 1] <> a [i-1, 1] then
          break;
        i:= i - 1;
      end;
      a[i, 1]:= nextprime(a[i, 1]);
      a[i, 2]:= a[i-1, 2] + a[i, 1];
    end;
  end;
end;

function coinpartitions: int64;    //Task 78 - 55374
const dim = 500;
var i, j, add, q: int32;
    a: array [0 .. 100000] of int64;
//    a: array [1 .. dim, 0 .. dim] of integer;
begin
//  for i:= 1 to dim do
//  for j:= 0 to dim do
//    a[i, j]:= 0;
//  a[1, 0]:= 1;
//  a[1, 1]:= 1;
//  i:= 2;
//  a[i, 0]:= 1;
//  result:= 1;
//  for result:= 2 to dim do
//  begin
//    if a[result - 1, 0] mod 1000000 = 0 then break;
//    a[result, result]:= 1;
//    for j:= result - 1 downto 1 do
//    begin
//      if result - j <= j then a[result, j]:= a[result-j, 0] mod 1000000
//      else
//      begin
//        add:= 0;
//        for k:= 1 to j do add:= add + a[result-j, k];
//        a[result, j]:= add mod 1000000;
//      end;
//    end;
//    a[result, 0]:= 0;
//    for k:= 1 to result do a[result, 0]:= (a[result, 0] + a[result, k]) mod 1000000;
//  end;
//  result:= result - 1;
  a[0]:= 1;
  a[1]:= 1;
  a[2]:= 2;
  a[3]:= 3;
  a[4]:= 5;
  a[5]:= 7;
  for i:= 6 to 1000000 do
  begin
    add:= 0;
    q:= 1;
    while i - (q * (3 * q - 1)) div 2 >= 0 do
    begin
      if i - (q * (3 * q + 1)) div 2 >= 0 then
      j:= a[i - (q * (3 * q - 1)) div 2] + a[i - (q * (3 * q + 1)) div 2]
      else j:= a[i - (q * (3 * q - 1)) div 2];
      if q mod 2 = 1 then add:= add + j else add:= add - j;
      q:= q + 1;
    end;
    a[i]:= add mod 10000000;
    if a[i] mod 1000000 = 0 then
    begin
      result:= i;
      break
    end;
  end;
end;

function sumsqrtdigits (number: int64): int64;                    //Task 80 - 40886
var i, j, iter: int64;
    ch, zn, hlpr: string;
begin
  result:= 0;
  for i:= 2 to number do
  if not IsSquare(i) then
  begin
    j:= round (sqrt(i));
    ch:= j.ToString;
    zn:= '1';
    for iter:= 1 to 8 do
    begin
      hlpr:= stringmult(ch, zn);
      ch:= sumstrings(stringmult(ch, ch), stringmult(stringmult((i.ToString), zn), zn));
      zn:= strmultdig(hlpr, 2)
    end;
    hlpr:=stringintdivision(ch, zn, 103);
    for j:= 1 to 100 do
    begin
      result:= result + StrDigitToInt64(hlpr[j])
    end;
  end;
end;

function bidirectionalway: int64;                        //Task 81 - 427337
const Name = 'tsk81.txt';
var f: text;
    i, j, k: int64;
    row, number: string;
    ways: array of array of integer;
begin
  AssignFile(f, Name);
  Reset(f);
  Readln(f, row);
  j:= 0;
  for i:= 1 to length(row) do
    if row[i] = ',' then j:= j + 1;
  i:= 1;
  while not eof(f) do
  begin
    Readln(f, row);
    i:= i + 1
  end;
  setlength(ways, i + 1, j + 2);
  close (f);
  reset (f);
  k:= 1;
  while not eof(f) do
  begin
    readln(f, row);
    j:= 1;
    number:= '';
    for i:= 1 to length(row) do
    begin
      if row[i] <> ',' then number:= number + row[i]
      else
      begin
        ways[k, j]:= number.ToInteger;
        j:= j + 1;
        number:= '';
      end;
    end;
    ways[k, j]:= number.ToInteger;
    k:= k + 1;
  end;
  close(f);
  for i:= 0 to length(ways) - 1  do
    ways[i, 0]:= 1000000;
  for i:= 0 to length(ways[0]) - 1 do ways[0, i]:= 1000000;
  ways[1, 0]:= 0;
  ways[0, 1]:= 0;
  for i:= 1 to length(ways) - 1 do
    for j:= 1 to length(ways[i]) - 1 do
    begin
      ways[i, j]:= Min(ways[i - 1, j] + ways[i, j], ways[i, j - 1] + ways [i, j]);
      ways[i, j]:= ways[i, j]
    end;
  result:= ways[length(ways) - 1, length(ways[1]) - 1];
end;

function tridirectionalway: int64;                //Task 82 - 260324
const Name = 'tsk82.txt';
var f: text;
    i, j, k, l, intmd: int64;
    row, number: string;
    ways: array of array of int64;
    column: array of int64;
begin
  AssignFile(f, Name);
  Reset(f);
  Readln(f, row);
  j:= 0;
  for i:= 1 to length(row) do
    if row[i] = ',' then j:= j + 1;
  i:= 1;
  while not eof(f) do
  begin
    Readln(f, row);
    i:= i + 1
  end;
  setlength(ways, i + 2, j + 3);
  close (f);
  reset (f);
  k:= 1;
  while not eof(f) do
  begin
    readln(f, row);
    j:= 1;
    number:= '';
    for i:= 1 to length(row) do
    begin
      if row[i] <> ',' then number:= number + row[i]
      else
      begin
        ways[k, j]:= number.ToInteger;
        j:= j + 1;
        number:= '';
      end;
    end;
    ways[k, j]:= number.ToInteger;
    k:= k + 1;
  end;
  close(f);
  for i:= 0 to length(ways) - 1 do
  begin
    ways[i, 0]:= 1000000;
    ways[i, length(ways[1]) - 1]:= 1000000
  end;
  for i:= 0 to length(ways[0]) - 1 do
  begin
    ways[0, i]:= 1000000;
    ways[length(ways) - 1, i]:= 1000000
  end;
  ways[1, 0]:= 0;
  ways[0, 1]:= 0;
  SetLength(column, length(ways) - 1);
  for i:= 1 to length(ways[0]) - 3 do
  begin
    for j:= 1 to length(ways) - 2 do
      column[j]:= ways[j, i] + ways [j, i+1];
    for j := 1 to length(ways) - 2 do
    begin
      if j = 1 then
        for k:= length(ways) - 2 downto 2 do
        begin
          intmd:= 0;
          for l:= 1 to k - 1 do
            intmd:= intmd + ways[l, i + 1];
          intmd:= intmd + column[k];
          if column[j] > intmd then column[j]:= intmd;
        end;
      if j = length(ways) - 2 then
        for k:= 1 to length(ways) - 3 do
        begin
          intmd:= 0;
          for l:= k + 1 to j - 1 do
            intmd:= intmd + ways[l, i + 1];
          intmd:= intmd + column[k];
          if column[j] > intmd then column[j]:= intmd;
        end;
      if (j <> 1) and (j <> length(ways) - 2) then
      begin
        for k:= 1 to j - 1 do
        begin
          intmd:= 0;
          for l:= k to j-1 do
            intmd:= intmd + ways[l + 1, i + 1];
          intmd:= intmd + column[k];
          if column[j] > intmd then column[j]:= intmd;
        end;
        for k:= length(ways) - 2 downto j + 1 do
        begin
          intmd:= 0;
          for l:= k downto j + 1 do
            intmd:= intmd + ways[l - 1, i + 1];
          intmd:= intmd + column[k];
          if column[j] > intmd then column[j]:= intmd;
        end;
      end;
    end;
      for k:= 1 to length(ways) - 2 do
        ways[k, i + 1]:= column[k];
  end;
  result:= 111111111;
  for l:= 1 to length(column) - 1 do
    if result > column[l] then result:= column[l];
end;

function tetradirectionalway: int64;              //Task 83 - 425185
const Name = 'tsk83.txt';
var f: text;
    row, number: string;
    i, j, k, i1, j1, way: int64;
    ways, waysresulted: array of array of int64;
    waysvisited: array of array of boolean;
    flag: boolean;
begin
  AssignFile(f, Name);
  Reset(f);
  Readln(f, row);
  j:= 0;
  for i:= 1 to length(row) do
    if row[i] = ',' then j:= j + 1;
  i:= 1;
  while not eof(f) do
  begin
    Readln(f, row);
    i:= i + 1
  end;
  setlength(ways, i + 2, j + 3);
  close (f);
  reset (f);
  k:= 1;
  while not eof(f) do
  begin
    readln(f, row);
    j:= 1;
    number:= '';
    for i:= 1 to length(row) do
    begin
      if row[i] <> ',' then number:= number + row[i]
      else
      begin
        ways[k, j]:= number.ToInteger;
        j:= j + 1;
        number:= '';
      end;
    end;
    ways[k, j]:= number.ToInteger;
    k:= k + 1;
  end;
  close(f);
  setlength(waysresulted, length(ways), length(ways[1]));
  setlength(waysvisited, length(ways), length(ways[1]));
  for i:= 1 to length(ways) - 2 do
    for j:= 1 to length(ways[1]) - 2 do
    begin
      waysresulted[i, j]:= 500000000;
      waysvisited[i, j]:= false;
    end;
  waysresulted[1, 1]:= ways[1, 1];
  i1:= 1;
  j1:= 1;
  while not ((i1 = length(ways) - 2) and (j1 = length(ways[1]) - 2)) do
  begin
    way:= 499999999;
    for i:= 1 to length(ways) - 2 do
      for j:= 1 to length(ways[1]) - 2 do
        if (waysresulted[i, j] < way) and not waysvisited[i, j] then
        begin
          i1:= i;
          j1:= j;
          way:= waysresulted[i, j];
        end;
    if way = 499999999 then
    begin
      showmessage('Error');
      break
    end;
    if (i1 - 1 > 0) and (not waysvisited[i1 - 1, j1]) and (waysresulted[i1 - 1, j1] > ways[i1-1, j1] + waysresulted[i1, j1])
    then waysresulted[i1 - 1, j1]:= ways[i1-1, j1] + waysresulted[i1, j1];
    if (j1 + 1 < length(ways[1]) - 1) and (not waysvisited[i1, j1 + 1]) and (waysresulted[i1, j1 + 1] > ways[i1, j1 + 1] + waysresulted[i1, j1])
    then waysresulted[i1, j1 + 1]:= ways[i1, j1 + 1] + waysresulted[i1, j1];
    if (i1 + 1 < length(ways) - 1) and (not waysvisited[i1 + 1, j1]) and (waysresulted[i1 + 1, j1] > ways[i1 + 1, j1] + waysresulted[i1, j1])
    then waysresulted[i1 + 1, j1]:= ways[i1 + 1, j1] + waysresulted[i1, j1];
    if (j1 - 1 > 0) and (not waysvisited[i1, j1 - 1]) and (waysresulted[i1, j1 - 1] > ways[i1, j1 - 1] + waysresulted[i1, j1])
    then waysresulted[i1, j1 - 1]:= ways[i1, j1 - 1] + waysresulted[i1, j1];
    waysvisited[i1, j1]:= true;
  end;
  result:= waysresulted[length(ways) - 2, length(ways[1]) - 2];
end;

function monopolymoves: int64;                           //Task 84 - 101524
var i, j, j1, j2, position, dice1, dice2, doublecnt, chcnt, cccnt: int64;
    field: array[0 .. 39] of int64;
    cc, ch: array[0 .. 15] of int64;
    flag: boolean;
begin
  position:= 0;
  randomize;
  cc[0]:= random(16);
  ch[0]:= random(16);
  for i:= 0 to 39 do field[i]:= 0;
  i:= 1;
  while i <= 15 do
  begin
    flag:= true;
    cc[i]:= random(16);
    for j:= 0 to i - 1 do
      if cc[i] = cc[j] then flag:= false;
    if flag then i:= i + 1;
  end;
  i:= 1;
  while i <= 15 do
  begin
    flag:= true;
    ch[i]:= random(16);
    for j:= 0 to i - 1 do
      if ch[i] = ch[j] then flag:= false;
    if flag then i:= i + 1;
  end;
  chcnt:= 15;
  cccnt:= 15;
  doublecnt:= 0;
  flag:= true;
  for i:= 1 to 10000000 do
  begin
    randomize;
    dice1:= random(4) + 1;
    dice2:= random(4) + 1;
    if dice1 = dice2 then
    begin;
      doublecnt:= doublecnt + 1;
      if doublecnt = 3 then
      begin
        doublecnt:= 0;
        position:= 10;
        flag:= false
      end;
    end
    else doublecnt:= 0;
    if flag then
    begin
      position:= position + dice1 + dice2;
      if position = 30 then position:= 10;
      if position > 39 then position:= position mod 40;
      if (position = 7) or (position = 22) or (position = 36) then chcnt:= (chcnt + 1) mod 16;
      if ((position = 7) or (position = 22) or (position = 36)) and (ch[chcnt] = 0) then position:= 0;
      if ((position = 7) or (position = 22) or (position = 36)) and (ch[chcnt] = 1) then position:= 10;
      if ((position = 7) or (position = 22) or (position = 36)) and (ch[chcnt] = 2) then position:= 11;
      if ((position = 7) or (position = 22) or (position = 36)) and (ch[chcnt] = 3) then position:= 24;
      if ((position = 7) or (position = 22) or (position = 36)) and (ch[chcnt] = 4) then position:= 39;
      if ((position = 7) or (position = 22) or (position = 36)) and (ch[chcnt] = 5) then position:= 5;
      if ((position = 7) or (position = 22) or (position = 36)) and (ch[chcnt] = 6) then position:= position - 3;
      if (position = 7) and ((ch[chcnt] = 7) or (ch[chcnt] = 8)) then position:= 15;
      if (position = 22) and ((ch[chcnt] = 7) or (ch[chcnt] = 8)) then position:= 25;
      if (position = 36) and ((ch[chcnt] = 7) or (ch[chcnt] = 8)) then position:= 5;
      if (position = 7) and (ch[chcnt] = 9) then position:= 12;
      if (position = 22) and (ch[chcnt] = 9) then position:= 28;
      if (position = 36) and (ch[chcnt] = 9) then position:= 12;
      if (position = 2) or (position = 17) or (position = 33) then cccnt:= (cccnt + 1) mod 16;
      if ((position = 2) or (position = 17) or (position = 33)) and (cc[cccnt] = 0) then position:= 0;
      if ((position = 2) or (position = 17) or (position = 33)) and (cc[cccnt] = 1) then position:= 10;
    end;
    field[position]:= field[position] + 1;
    flag:= true;
  end;
  j:= 0;
  for i:= 0 to 39 do
    if field[i] > j then
    begin
      j:= field[i];
      result:= i;
    end;
  result:= result * 100;
  j1:= 0;
  for i:= 0 to 39 do
    if (field[i] > j1) and (field[i] <> j) then
    begin
      j1:= field[i];
      result:= (result div 100) * 100 + i;
    end;
  result:= result * 100;
  j2:= 0;
  for i:= 0 to 39 do
    if (field[i] > j2) and (field[i] <> j) and (field[i] <> j1) then
    begin
      j2:= field[i];
      result:= (result div 100) * 100 + i;
    end;
end;

function rectanglecount: int64;                         //Task 85 - 2772
var height, dif, step, amount, hghsum, intmd: int64;
begin
  intmd:= 2000000;
  for height:= 1 to 3000 do
  begin
    step:= 0;
    amount:= 0;
    dif:= 0;
    for hghsum:= 1 to height do
      dif:= dif + hghsum;
    while amount < 2000000 do
    begin
      step:= step + 1;
      amount:= amount + (step * dif);
    end;
    if amount - 2000000 < intmd then
    begin
      intmd:= amount - 2000000;
      result:= height * step
    end;
    amount:= amount - (step * dif);
    if 2000000 - amount < intmd then
    begin
      intmd:= 2000000 - amount;
      result:= height * (step - 1)
    end;
  end;
end;

function cuboidways(number: int64): int64;            //Task 86 - 1818
var i, j, k, sum: int64;
begin
sum:= 0;
  for i:= 1 to 100000 do
  begin
    for j:= 1 to i do
    begin
      for k:= 1 to j do
      begin
        if sqrt(i * i + (j + k) * (j + k)) = trunc(sqrt(i * i + (j + k) * (j + k))) then sum:= sum + 1;
        if sum = number then break
      end;
      if sum = number then break
    end;
    if sum = number then break
  end;
result:= i;
end;

function sumpwrprimes(number: int64): int64;   // Task 87 - 1097343
var i, j, k, sumpwr, cnt: int64;
    res, res10, res50: TList<int64>;
begin
  i:= 2;
  res:= TList<int64>.Create;
  res10:= Tlist<int64>.Create;
  res50:= TList<int64>.Create;
  res.Clear;
  res10.Clear;
  res50.Clear;
  while powerint64(i, 2) < number do
  begin
    j:= 2;
    while powerint64(j, 3) < number do
    begin
      k:= 2;
      while powerint64(k, 4) < number do
      begin
        sumpwr:= powerint64(i, 2) + powerint64(j, 3) + powerint64(k, 4);
        if (sumpwr < number) then
          if sumpwr < 1000000 then res.Add(sumpwr)
          else if sumpwr < 10000000 then res10.Add(sumpwr)
               else res50.Add(sumpwr)
        else break;
        k:= nextprime(k);
      end;
      j:= nextprime(j);
    end;
    i:= nextprime(i);
  end;
  cnt:= 0;
  res.Sort;
  i:= 0;
  while i < res.Count - 2 do
  begin
    if res[i] = res[i + 1] then cnt:=cnt + 1;
    i:= i + 1;
  end;
  res10.Sort;
  i:= 0;
  while i < res10.Count - 2 do
  begin
    if res10[i] = res10[i + 1] then cnt:=cnt + 1;
    i:= i + 1;
  end;
  res50.Sort;
  i:= 0;
  while i < res50.Count - 2 do
  begin
    if res50[i] = res50[i + 1] then cnt:=cnt + 1;
    i:= i + 1;
  end;
  result:= res.Count + res10.Count + res50.Count - cnt;
  res.Destroy;
  res10.Destroy;
  res50.Destroy;
end;

function sumproductsum: int64;                               //Task 88 - 7587457
var nums: array [1 .. 14] of int64;
    i, sumprod, amnt, amnt1: int64;
    a: array [2 .. 12000] of int64;
    minsums: TList<int64>;
begin
  for i:= 2 to 12000 do a[i]:= 24001;
  for i:= 1 to 12 do nums[i]:= 1;
  nums[13]:= 2;
  nums[14]:= 2;
  sumprod:= 4;
  while sumprod <= 24000 do                //1
  begin
    while sumprod <= 24000 do                     //2
    begin
      while sumprod <= 24000 do                         //3
      begin
        while sumprod <= 24000 do                     //4
        begin
          while sumprod <= 24000 do                     //5
          begin
            while sumprod <= 24000 do                         //6
            begin
              while sumprod <= 24000 do                   //7
              begin
                while sumprod <= 24000 do                   //8
                begin
                  while sumprod <= 24000 do                      //9
                  begin
                    while sumprod <= 24000 do               //10
                    begin
                      while sumprod <= 24000 do                      //11
                      begin
                        while sumprod <= 24000 do                  //12
                        begin
                          while sumprod <= 24000 do             //13
                          begin
                            while sumprod <= 24000 do          //14
                            begin
                              amnt:= 0;
                              amnt1:= 0;
                              for i:= 1 to 14 do
                                if nums[i] <> 1 then
                                begin
                                  amnt:= amnt + nums[i];
                                  amnt1:= amnt1 + 1
                                end;
                              amnt:= sumprod - amnt;
                              amnt1:= amnt1 + amnt;
                              if (amnt1 <= 12000) then
                                if sumprod < a[amnt1] then a[amnt1]:= sumprod;
                              nums[14]:= nums[14] + 1;
                              sumprod:= 1;
                              for i:= 1 to 14 do
                                sumprod:= sumprod * nums[i];
                            end;
                            nums[13]:= nums[13] + 1;
                            nums[14]:= nums[13];
                            sumprod:= 1;
                            for i:= 1 to 14 do
                              sumprod:= sumprod * nums[i];
                          end;
                          nums[12]:= nums[12] + 1;
                          nums[13]:= nums[12];
                          nums[14]:= nums[13];
                          sumprod:= 1;
                          for i:= 1 to 14 do
                            sumprod:= sumprod * nums[i];
                        end;
                        nums[11]:= nums[11] + 1;
                        nums[12]:= nums[11];
                        nums[13]:= nums[12];
                        nums[14]:= nums[13];
                        sumprod:= 1;
                        for i:= 1 to 14 do
                          sumprod:= sumprod * nums[i];
                      end;
                      nums[10]:= nums[10] + 1;
                      for i:= 11 to 14 do
                        nums[i]:= nums[i-1];
                      sumprod:= 1;
                      for i:= 1 to 14 do
                        sumprod:= sumprod * nums[i];
                    end;
                    nums[9]:= nums[9] + 1;
                    for i:= 10 to 14 do
                      nums[i]:= nums[i-1];
                    sumprod:= 1;
                    for i:= 1 to 14 do
                      sumprod:= sumprod * nums[i];
                  end;
                  nums[8]:= nums[8] + 1;
                  for i:= 9 to 14 do
                    nums[i]:= nums[i-1];
                  sumprod:= 1;
                  for i:= 1 to 14 do
                    sumprod:= sumprod * nums[i];
                end;
                nums[7]:= nums[7] + 1;
                for i:= 8 to 14 do
                  nums[i]:= nums[i-1];
                sumprod:= 1;
                for i:= 1 to 14 do
                  sumprod:= sumprod * nums[i];
              end;
              nums[6]:= nums[6] + 1;
              for i:= 7 to 14 do
                nums[i]:= nums[i-1];
              sumprod:= 1;
              for i:= 1 to 14 do
                sumprod:= sumprod * nums[i];
            end;
            nums[5]:= nums[5] + 1;
            for i:= 6 to 14 do
              nums[i]:= nums[i-1];
            sumprod:= 1;
            for i:= 1 to 14 do
              sumprod:= sumprod * nums[i];
          end;
          nums[4]:= nums[4] + 1;
          for i:= 5 to 14 do
            nums[i]:= nums[i-1];
          sumprod:= 1;
          for i:= 1 to 14 do
            sumprod:= sumprod * nums[i];
        end;
        nums[3]:= nums[3] + 1;
        for i:= 4 to 14 do
          nums[i]:= nums[i-1];
        sumprod:= 1;
        for i:= 1 to 14 do
          sumprod:= sumprod * nums[i];
      end;
      nums[2]:= nums[2] + 1;
      for i:= 3 to 14 do
        nums[i]:= nums[i-1];
      sumprod:= 1;
      for i:= 1 to 14 do
        sumprod:= sumprod * nums[i];
    end;
    nums[1]:= nums[1] + 1;
    for i:= 2 to 14 do
      nums[i]:= nums[i-1];
    sumprod:= 1;
    for i:= 1 to 14 do
      sumprod:= sumprod * nums[i];
  end;
  minsums:= TList<int64>.Create;
  minsums.Clear;
  for i:= 2 to 12000 do
    if not minsums.Contains(a[i]) then minsums.Add(a[i]);
  result:= 0;
  for i:= 0 to minsums.Count - 1 do
    result:= result + minsums[i];
  minsums.Destroy;
end;

function romanminimalize: int64;               //Task 89 - 743
Const FName = 'tsk89.txt';
var f: text;
    rnumber: string;
    decnumber: int64;
begin
  AssignFile(f, FName);
  Reset(f);
  result:= 0;
  while not eof(f) do
  begin
    readln(f, rnumber);
    result:= result + length(rnumber);
    decnumber:= RomanToInt64(rnumber);
    rnumber:= Int64ToMinRoman(decnumber);
    result:= result - length(rnumber)
  end;
  Close(f);
end;

function cubearrangements: int64;                   //Task 90 - 1217
var c11, c12, c13, c14, c15, c16, c21, c22, c23, c24, c25, c26: int64;
    c1, c2: TList<int64>;
    flag: boolean;
begin
  result:= 0;
  c1:= TList<int64>.Create;
  c2:= TList<int64>.Create;
  for c11:= 0 to 4 do
    for c12:= c11 + 1 to 5 do
      for c13:= c12 + 1 to 6 do
        for c14:= c13 + 1 to 7 do
          for c15:= c14 + 1 to 8 do
            for c16:= c15 + 1 to 9 do
            begin
              c1.Clear;
              c1.add(c11);
              c1.Add(c12);
              c1.Add(c13);
              c1.Add(c14);
              c1.Add(c15);
              c1.Add(c16);
              for c21:= 0 to 4 do
                for c22:= c21 + 1 to 5 do
                  for c23:= c22 + 1 to 6 do
                    for c24:= c23 + 1 to 7 do
                      for c25:= c24 + 1 to 8 do
                        for c26:= c25 + 1 to 9 do
                        begin
                          c2.Clear;
                          c2.add(c21);
                          c2.Add(c22);
                          c2.Add(c23);
                          c2.Add(c24);
                          c2.Add(c25);
                          c2.Add(c26);
                          flag:= true;
                          if not((c1.Contains(0) and c2.Contains(1)) or (c1.Contains(1) and c2.Contains(0))) then flag:= false;
                          if not((c1.Contains(0) and c2.Contains(4)) or (c1.Contains(4) and c2.Contains(0))) then flag:= false;
                          if not((c1.Contains(0) and (c2.Contains(6) or c2.Contains(9))) or ((c1.Contains(6) or c1.Contains(9)) and c2.Contains(0))) then flag:= false;
                          if not((c1.Contains(1) and (c2.Contains(6) or c2.Contains(9))) or ((c1.Contains(6) or c1.Contains(9)) and c2.Contains(1))) then flag:= false;
                          if not((c1.Contains(2) and c2.Contains(5)) or (c1.Contains(5) and c2.Contains(2))) then flag:= false;
                          if not((c1.Contains(3) and (c2.Contains(6) or c2.Contains(9))) or ((c1.Contains(6) or c1.Contains(9)) and c2.Contains(3))) then flag:= false;
                          if not((c1.Contains(4) and (c2.Contains(6) or c2.Contains(9))) or ((c1.Contains(6) or c1.Contains(9)) and c2.Contains(4))) then flag:= false;
                          if not((c1.Contains(1) and c2.Contains(8)) or (c1.Contains(8) and c2.Contains(1))) then flag:= false;
                          if flag then result:= result + 1;
                        end;
            end;
  result:= result div 2;
end;

function rightangletriangles(number: int64): int64;                    //Task 91 - 14234
var x1, x2, y1, y2, op, oq, pq: int64;
begin
  result:= 0;
  for x1:= 0 to number - 1 do
    for y1:= 1 to number do
      for x2:= x1 + 1 to number do
        for y2:= 0 to y1 - 1 do
        begin
          op:= x1 * x1 + y1 * y1;
          oq:= x2 * x2 + y2 * y2;
          pq:= (x2 - x1) * (x2 - x1) + (y1 - y2) * (y1 - y2);
          if (op = oq + pq) or (oq = op + pq) then result:= result + 1;
        end;
  result:= result + 3 * number * number;
end;

function digitssquares(number: int64): int64;                           //Task 92 -  8581146
var i, intmd, sqdig: Int64;
begin
  result:= 0;
  for i:= 2 to number - 1 do
  begin
    intmd:= i;
    sqdig:= 0;
    while (sqdig <> 1) and (sqdig <> 89) do
    begin
      sqdig:= 0;
      while intmd > 0 do
      begin
        sqdig:= sqdig + (intmd mod 10) * (intmd mod 10);
        intmd:= intmd div 10
      end;
      intmd:= sqdig
    end;
    if sqdig = 89 then result:= result + 1
  end;
end;

function digitexpressions: int64;                          //Task 93 - 1258
var res: TList<int64>;
    expr: string[3];
    i, a1, a2, a3, a4, order, orderdig, sign1, sign2, sign3, intmd, streak: int64;
begin
  res:= TList<int64>.Create;
  res.Clear;
  result:= 0;
  streak:= 0;
  for a1:= 1 to 6 do
    for a2:= a1 + 1 to 7 do
      for a3:= a2 + 1 to 8 do
        for a4 := a3 + 1 to 9 do
        begin
          for sign1:= 1 to 4 do
            for sign2:= 1 to 4 do
              for sign3:= 1 to 4 do
                begin
                  expr:=sign1.ToString + sign2.ToString + sign3.ToString;
                  for order:= 1 to 6 do
                    for orderdig:= 1 to 24 do
                    begin
                      case orderdig of
                      1: intmd:= exprvalue(expr, order, a1, a2, a3, a4);
                      2: intmd:= exprvalue(expr, order, a1, a2, a4, a3);
                      3: intmd:= exprvalue(expr, order, a1, a3, a2, a4);
                      4: intmd:= exprvalue(expr, order, a1, a3, a4, a2);
                      5: intmd:= exprvalue(expr, order, a1, a4, a2, a3);
                      6: intmd:= exprvalue(expr, order, a1, a4, a3, a2);
                      7: intmd:= exprvalue(expr, order, a2, a1, a3, a4);
                      8: intmd:= exprvalue(expr, order, a2, a1, a4, a3);
                      9: intmd:= exprvalue(expr, order, a2, a3, a1, a4);
                      10: intmd:= exprvalue(expr, order, a2, a3, a4, a1);
                      11: intmd:= exprvalue(expr, order, a2, a4, a1, a3);
                      12: intmd:= exprvalue(expr, order, a2, a4, a3, a1);
                      13: intmd:= exprvalue(expr, order, a3, a1, a2, a4);
                      14: intmd:= exprvalue(expr, order, a3, a1, a4, a2);
                      15: intmd:= exprvalue(expr, order, a3, a2, a1, a4);
                      16: intmd:= exprvalue(expr, order, a3, a2, a4, a1);
                      17: intmd:= exprvalue(expr, order, a3, a4, a1, a2);
                      18: intmd:= exprvalue(expr, order, a3, a4, a2, a1);
                      19: intmd:= exprvalue(expr, order, a4, a1, a2, a3);
                      20: intmd:= exprvalue(expr, order, a4, a1, a3, a2);
                      21: intmd:= exprvalue(expr, order, a4, a2, a1, a3);
                      22: intmd:= exprvalue(expr, order, a4, a2, a3, a1);
                      23: intmd:= exprvalue(expr, order, a4, a3, a1, a2);
                      24: intmd:= exprvalue(expr, order, a4, a3, a2, a1);
                      end;
                      if intmd <> 999999 then res.Add(intmd)
                    end;
                end;
          res.Sort;
          i:= 0;
          while i <= res.Count - 2 do
          begin;
            if res[i] < 1 then i:= i + 1
            else if (res[i + 1] - res[i] = 0) or (res[i + 1] - res[i] = 1) then i:= i + 1;
            if not ((res[i + 1] - res[i] = 0) or (res[i + 1] - res[i] = 1)) and (res[i] >= 1) then break;
          end;
          if res[i] > streak then
          begin
            streak:= res[i];
            result:= a1 * 1000 + a2 * 100 + a3 * 10 + a4;
          end;
          res.Clear
        end;
  res.Destroy;
end;

function sumofperimeters(number: int64): int64;                     //Task 94 - 518408346
var per, per1, side, square: int64;
begin
  result:= 0;
  per:= 0;
  side:= 3;
  per:= 3 * side - 1;
  while per < number do
  begin
    per1:= per div 2;
    square:= side * side - (side - 1) * (side - 1) div 4;
    if side mod 2 = 1  then if issquare(square) then result:= result + per
    else if issquare(square) then if trunc(sqrt(square)) div 2 = 0 then result:= result + per;
    per:= 3 * side + 1;
    per1:= per div 2;
    square:= side * side - (side + 1) * (side + 1) div 4;
    if side mod 2 = 1  then if issquare(square) then result:= result + per
    else if issquare(square) then if trunc(sqrt(square)) div 2 = 0 then result:= result + per;
    side:= side + 1;
    per:= 3 * side - 1;
  end;
end;

function amicablechain(number: int64): int64;                   //Task 95 - 14316
var i, j, num, long, longall, summa, numall: int64;
    chain: TList<int64>;
    flag, flag1: boolean;
    a: array of boolean;
begin
  chain:= TList<int64>.Create;
  longall:= 0;
  result:= 0;
  SetLength(a, number + 1);
  for i:= 0 to number do a[i]:= true;
  a[1]:= false;
  for i:= 2 to number do
  begin
    Chain.Clear;
    num:= i;
    if isperfect(num)
      then a[num]:= false;
    long:= 0;
    while a[num] and not chain.Contains(num) do
    begin
      summa:= sumdivisors(num);
      chain.Add(num);
      if summa > number then
      begin
        for j:= 0 to chain.Count - 1 do a[chain[j]]:= false;
        break
      end;
      long:= long + 1;
      num:= summa;
    end;
    if not a[num] then for j:= 0 to chain.Count - 1 do a[chain[j]]:= false;
    if chain.Contains(num) then
    begin
      for j:= 0 to chain.Count - 1 do
      begin
        flag:= true;
        flag1:= false;
        if chain[j] = num then
        begin
          if long > longall then
          begin
            longall:= long;
            flag1:= true;
            result:= chain[j];
          end;
          flag:= false
        end;
        if flag then
        begin
          a[chain[j]]:= false;
          long:= long - 1
        end
        else
        begin
          a[chain[j]]:= false;
          if (chain[j] < result) and flag1 then result:= chain[j];
        end;
      end;
    end;
  end;
end;

function sudoku: int64;                                   //Task 96 - 24702
Const FNAME = 'tsk96.txt';
var f: text;
    row: string;
    pz, pz1: Puzzle;
    i, j, k, rows, lowestx, lowesty, x, y, init: Int64;
    changed, allcorrect, addsub: boolean;
    used, free, subsmaid, subsavail: TList<int64>;
    pzs: TList<Puzzle>;
begin
  used:= TList<int64>.Create;
  free:= TList<int64>.Create;
  subsmaid:= TList<int64>.Create;
  subsavail:= TList<int64>.Create;
  pzs:= TList<Puzzle>.Create;
  rows:= 0;
  AssignFile(f, FNAME);
  Reset(f);
  while not eof(f) do
  begin
    readln(f, row);
    rows:= rows + 1
  end;
  result:= 0;
  for k:= 1 to rows div 10 do
  begin
    readsudoku(FNAME, k, pz);
    subsmaid.Clear;
    subsavail.Clear;
    pzs.Clear;
    while pz.zeroes > 0 do
    begin
      checksudoku(pz, lowestx, lowesty, changed, allcorrect);
      if (not changed) and allcorrect then
      begin
        x:= lowestx;
        y:= lowesty;
        checksinglefieldsudoku(pz, lowestx, lowesty, used);
        free.Clear;
        for i:= 1 to 9 do
          if not used.Contains(i) then
            free.Add(i);
        addsub:= false;
        for i:= 0 to free.Count - 1 do
          if not subsavail.Contains(x * 100 + y * 10 + free[i]) then
          begin
            subsavail.Add(x * 100 + y * 10 + free[i]);
            addsub:= true
          end;
        for i:= subsavail.Count - 1 downto 0 do
          if not subsmaid.Contains(subsavail[i]) then
          begin
            subsmaid.Add(subsavail[i]);
            x:= subsavail[i] div 100;
            y:= (subsavail[i] mod 100) div 10;
            init:= (subsavail[i] mod 100) mod 10;
            while pz.a[x, y] <> 0 do
            begin
              pz:= pzs[pzs.Count - 1];
              pzs.Delete(pzs.Count - 1);
              lowestx:= subsavail[subsavail.Count - 1] div 100;
              lowesty:= (subsavail[subsavail.Count - 1] mod 100) div 10;
              while ((subsavail[subsavail.Count - 1] div 100) = lowestx) and ((subsavail[subsavail.Count - 1] mod 100) div 10 = lowesty)  do
                subsavail.Delete(subsavail.Count - 1);
              for j:= subsmaid.Count - 1 downto 0 do
                if not subsavail.Contains(subsmaid[j]) then subsmaid.Delete(j);
            end;
            pzs.add(pz);
            pz.a[x, y]:= init;
            pz.zeroes:= pz.zeroes - 1;
            if subsmaid.Count = subsavail.Count then
            begin
              subsmaid.Clear;
              subsavail.Clear;
              pzs.Clear
            end;
          break
        end;
      end;
      if not allcorrect then
      begin
        pz1:= pz;
        pz:=pzs[pzs.Count - 1];
        pzs.Delete(pzs.Count - 1)
      end;
    end;
    result:= result + pz.a[1, 1] * 100 + pz.a[1, 2] * 10 + pz.a[1, 3];
  end;
  used.Destroy;
  free.Destroy;
  subsmaid.Destroy;
  subsavail.Destroy;
  pzs.Destroy;
end;

function lasttenbigprimedigits: int64;                     //Task 97 - 8739992577
var i: int64;
begin
  result:= 1;
  for i:= 1 to 7830457 do
    result:= result * 2 mod 100000000000;
  result:= result * 28433 mod 10000000000;
  result:= result + 1
end;

function anagramsquare: int64;                              //Task 98 - 18769
const FNAME = 'tsk98.txt';
var i, j, j1, k, am, code, lowboard, highboard, sq1, sq2: int64;
    f: text;
    c: char;
    word, key, chk1, chk2: string;
    words: array of array of string;
    digs: array of int64;
    difflag: boolean;
begin
  AssignFile(f, FNAME);
  reset(f);
  i:= 0;
  while not eof(f) do
  begin
    read(f, c);
    if c = ',' then i:= i + 1;
  end;
  Close(f);
  setlength(words, i + 2, 2);
  Reset(f);
  for i:= 1 to Length(words) - 1 do
  begin
    word:= '';
    read(f, c);
    c:= ' ';
    while c <> '"' do
    begin
      read(f, c);
      word:= word + c;
    end;
    if i <> length(words) - 1 then read(f, c);
    word:= LeftStr(word, length(word) - 1);
    words[i, 0]:= word
  end;
  for i:= 1 to length(words) - 1 do
    words[i, 1]:= sortstring(words[i, 0]);
  for i:= 1 to length(words) - 2 do
    for j:= i + 1 to length(words) - 1 do
      if words[i, 1] > words[j, 1] then
      begin
        word:= words[i, 1];
        words[i, 1]:= words[j, 1];
        words[j, 1]:= word;
        word:= words[i, 0];
        words[i, 0]:= words[j, 0];
        words[j, 0]:= word;
      end;
  result:= 0;
  for i:= 1 to length(words) - 2 do
    if (words[i, 1] = words[i + 1, 1]) and (length(words[i, 1]) > 3) then
    begin
      word:='';
      for j:= 1 to length(words[i, 1]) do
        if not word.Contains(words[i, 1][j]) then word:= word + words[i, 1][j];
      lowboard:= 0;
      highboard:= 0;
      for k:= 0 to length(word) - 1 do
      begin
        lowboard:= lowboard * 10 + k;
        highboard:= highboard* 10 + (9 - k)
      end;
      for k:= lowboard to highboard do
      begin
        key:= k.ToString;
        if length(key) < length(word)
        then
          key:= '0' + key;
        difflag:= true;
        for j:= 1 to length(key) - 1 do
        begin
          for j1:= j + 1 to length(key) do
            if key[j] = key[j1] then
            begin
              difflag:= false;
              break
            end;
          if not difflag then break
        end;
        if difflag then
        begin
          chk1:= '';
          for j:= 1 to length(words[i][0]) do
            chk1:= chk1 + ' ';
          chk2:= chk1;
          for j:= 1 to length(words[i][0]) do
            for j1:= 1 to length(word) do
            begin
              if words[i][0][j] = word[j1]
              then
                chk1[j]:= key[j1];
              if words[i + 1][0][j] = word[j1]
              then
                chk2[j]:= key[j1];
            end;
          if (chk1[1] <> '0') and (chk2[1] <> '0') then
          begin
            sq1:= StrToInt64(chk1);
            sq2:= StrToInt64(chk2);
            if IsSquare(sq1) and IsSquare(sq2) then
            begin
              if sq1 > result
              then
                result:= sq1;
              if sq2 > result
              then
                result:= sq2;
            end;
          end;
        end;
      end;
    end;
end;

function largestnumberinfile: int64;                        //Task 99 - 709
const FNAME = 'tsk99.txt';
var f: text;
    line, number1, number2: string;
    power: double;
    i, j: integer;
    a: array of array of int64;
begin
  AssignFile(f, FNAME);
  Reset(f);
  i:= 0;
  while not eof(f) do
  begin
    Readln(f, line);
    i:= i + 1;
  end;
  Close(f);
  SetLength(a, i + 1, 2);
  Reset(f);
  for j:= 1 to Length(a) - 1 do
  begin
    Readln(f, line);
    number1:= '';
    i:= 1;
    while line[i] <> ',' do
    begin
      number1:= number1 + line[i];
      i:= i + 1
    end;
    i:= i + 1;
    number2:= '';
    while i <= length(line) do
    begin
      number2:= number2 + line[i];
      i:= i + 1
    end;
    a[j, 0]:= StrToInt64(number1);
    a[j, 1]:= StrToInt64(number2)
  end;
  Close(f);
  result:= 1;
  power:= Log10(a[1, 0]) * a[1, 1];
  for i:= 2 to Length(a) - 1 do
    if Log10(a[i, 0]) * a[i, 1] > power then
    begin
      power:= Log10(a[i, 0]) * a[i, 1];
      result:= i
    end;
end;

function halfprobability(number: int64): int64;     // Task 100 - 756872327473
var totald: int64;
    blue, total, total1: string;
begin
  totald:= 0;
  total:= '4';
  blue:= '3';
  while totald <= number do
  begin
    total1:= exactstrdivint(stringmult(subtrstrings(total, '1'), sumstrings(blue, total)), subtrstrings(total, blue));
    blue:= exactstrdivint(stringmult(blue, subtrstrings(total1, '1')), total);
    total:= total1;
    totald:= StrToInt64(total);
    result:= StrToInt64(blue)
  end;
end;

function bopsum: int64;              //Task 101 - 37076114526
var i, j, k, l, m: int64;
    res: array [1 .. 10] of int64;
    matrix: TList<int64>;
    det: array of biginteger;
    intmd, rslt: biginteger;
    free: array of int64;
    matr, matr1: array of array of int64;
begin
  matrix:= TList<int64>.Create;
  matrix.Clear;
  rslt:= 1;
  res[1]:= 1;
  for i:= 2 to 10 do
  begin
    matrix.Clear;
    res[i]:= 1 - i + powerint64(i, 2) - powerint64(i, 3) + powerint64(i, 4) - powerint64(i, 5) +
    powerint64(i, 6) - powerint64(i, 7) + powerint64(i, 8) - powerint64(i, 9) + powerint64(i, 10);
    SetLength(det, i + 1);
    SetLength(matr, i, i);
    SetLength(free, i);
    for j:= 0 to length(matr) - 1 do
    begin
      for k:= 0 to length(matr[0]) - 1 do
      begin
        matr[j, k]:= powerint64(j + 1, i - 1 - k);
        matrix.Add(matr[j, k])
      end;
      free[j]:= res[j + 1]
    end;
    det[0]:= detsquarematrix(matrix);
    for l:= 1 to i do
    begin
      SetLength(matr1, i, i);
      matrix.Clear;
      for j:= 0 to length(matr) - 1 do
        for k:= 0 to length(matr) - 1 do
          matr1[j, k]:= matr[j, k];
      for j:= 0 to i - 1 do
        matr1[j, l - 1]:= free[j];
      for j:= 0 to i - 1 do
        for k:= 0 to i - 1 do
          matrix.Add(matr1[j, k]);
      det[l]:= detsquarematrix(matrix);
    end;
    for k:= 1 to i do
    begin
      intmd:= det[k] div det[0];
      rslt:= rslt + powerint64(i + 1, i - k) * intmd;
    end;
    result:= rslt.AsInt64;
  end;
end;

function origininsidetriangle: int64;              //Task 102 - 228
const fname = 'tsk102.txt';
var coords: TList<string>;
    rcoord, number: string;
    f: text;
    triangles: array of array of int64;
    i, j, k, s1, s2, s3, s4: int64;
begin
  coords:= TList<string>.Create;
  coords.Clear;
  AssignFile(f, fname);
  reset(f);
  while not eof(f) do
  begin
    readln(f, rcoord);
    coords.Add((rcoord))
  end;
  Close(f);
  setlength(triangles, coords.Count, 6);
  for i:= 0 to length(triangles) - 1 do
  begin
    rcoord:= coords[i];
    k:= 1;
    for j:= 0 to 4 do
    begin
      number:= '';
      while rcoord[k] <> ',' do
      begin
        number:= number + rcoord[k];
        k:= k + 1;
      end;
      triangles[i, j]:= number.ToInt64;
      k:= k + 1;
    end;
    number:= '';
    for j:= k to length(rcoord) do
      number:= number + rcoord[j];
    triangles[i, 5]:= number.ToInt64;
  end;
  result:= 0;
  for i:= 0 to length(triangles) - 1 do
  begin
    s1:= abs((triangles[i, 0] - triangles[i, 4]) * (triangles[i, 3] - triangles[i, 5]) -
    (triangles[i, 2] - triangles[i, 4]) * (triangles[i, 1] - triangles[i, 5]));
    s2:= abs((-triangles[i, 4]) * (triangles[i, 3] - triangles[i, 5]) -
    (triangles[i, 2] - triangles[i, 4]) * (-triangles[i, 5]));
    s3:= abs((triangles[i, 0] - triangles[i, 4]) * (-triangles[i, 5]) -
    (-triangles[i, 4]) * (triangles[i, 1] - triangles[i, 5]));
    s4:= abs(triangles[i, 0] * triangles[i, 3] -
    triangles[i, 2] * triangles[i, 1]);
    if s1 = s2 + s3 + s4 then result:= result + 1
  end;
end;

function specialsets: int64;                 // Task 103 - 20313839404245
var spset: array[1 .. 7] of int64;
    i, sum, sumall, max7: int64;
    flag, flag2, flag7: boolean;
begin
  sumall:= 350;
  flag:= true;
  sum:= 0;
  spset[1]:= 19;
  spset[2]:= 24;
  spset[3]:= spset[2] + 1;
  spset[4]:= spset[3] + 1;
  spset[5]:= spset[4] + 1;
  spset[6]:= spset[5] + 1;
  spset[7]:= spset[6] + 1;
  sum:= 0;
  for i:= 1 to 7 do
    sum:= sum + spset[i];
  while flag do
  begin
    flag7:= true;
    max7:= spset[1] + spset[2];
    if spset[7] = max7 then
      flag7:= false;
    flag2:= true;
    if sum > sumall then
    begin
      flag2:= false;
      flag7:= false;
    end;
    if spset[7] >= spset[1] + spset[2] then flag2:= false;
    if spset[6] + spset[7] >= spset[1] + spset[2] + spset[3] then flag2:= false;
    if spset[5] + spset[6] + spset[7] >= spset[1] + spset[2] + spset[3] + spset[4] then flag2:= false;
    if flag2 then flag2:= checktwoontwo(spset[1], spset[2], spset[3], spset[4], spset[5], spset[6], spset[7]);
    if flag2 then flag2:= checkthreeonthree(spset[1], spset[2], spset[3], spset[4], spset[5], spset[6], spset[7]);
    if flag2 then
      if sum < sumall then
      begin
        sumall:= sum;
        result:= spset[1] * 1000000000000 + spset[2] * 10000000000 + spset[3] * 100000000
        + spset[4] * 1000000 + spset[5] * 10000 + spset[6] * 100 + spset[7];
        flag:= false;
      end;
    i:= 7;
    while spset[i] - spset[i - 1] = 1 do
      i:= i - 1;
    if (i = 2) and (not flag7) then
    begin
      spset[1]:= spset[1] + 1;
      spset[2]:= 24;
      for i:= 3 to 7 do
        spset[i]:= spset[i - 1] + 1;
    end;
    if flag7 then
      spset[7]:= spset[7] + 1;
    if (i > 2) and (not flag7) then
    begin
      spset[i - 1]:= spset[i - 1] + 1;
      while i < 8 do
      begin
        spset[i]:= spset[i - 1] + 1;
        i:= i + 1
      end;
    end;
    sum:= 0;
    for i:= 1 to 7 do
      sum:= sum + spset[i];
  if spset[1] =22 then
    flag:= false;
  end;
end;

function pandigitalfibonacci: int64;      // Task 104 - 329468
var low9, low9p, low9pp, up9int, i: int64;
    pwr: integer;
    pwrstr, pwrstr1: string;
    fi1, up9, up9h: bigdecimal;
    notfound: boolean;
begin
  notfound:= true;
  fi1:= (1 + sqrt(5)) / 2;
  result:= 4;
  low9p:= 2;
  low9pp:= 1;
  while notfound do
  begin
    low9:= low9p + low9pp;
    if ispandigital(low9) or (result = 329468) then
    begin
      pwr:= result;
      up9:= bigdecimal.IntPower(fi1, pwr, 14) / sqrt(5);
      up9h:= up9;
      pwrstr:= up9h.ToString;
      pwrstr1:= '';
      for i:= 1 to 10 do
        if i <> 2 then
          pwrstr1:= pwrstr1 + pwrstr[i];
      up9int:= pwrstr1.ToInt64;
      if ispandigital(up9int) then
        notfound:= false;
    end;
    if notfound then
    begin
      result:= result + 1;
      low9pp:= low9p;
      low9p:= low9 mod 1000000000;
    end;
  end;
end;

function specialsets1: int64;       // Task 105 - 73702
const fname = 'tsk105.txt';
var qset: TList<int64>;
    singleset, numb: string;
    allsets: TList<string>;
    f: text;
    i, j: int64;
    symb: char;
begin
  allsets:= Tlist<string>.Create;
  allsets.Clear;
  AssignFile(f, fname);
  Reset(f);
  while not eof(f) do
  begin
    readln(f, singleset);
    allsets.Add(singleset)
  end;
  qset:=TList<Int64>.Create;
  result:= 0;
  for i:= 0 to allsets.Count - 1 do
  begin
    qset.Clear;
    singleset:= allsets[i];
    numb:= '';
    for j:= 1 to length(singleset) do
    begin
      symb:= singleset[j];
      if symb <> ',' then
        numb:= numb + symb
      else
      begin
        qset.Add(numb.ToInt64);
        numb:= ''
      end;
      if j = length(singleset) then
        qset.Add(numb.ToInt64);
    end;
    qset.Sort;
    if isspecial(qset) then
      for j:= 0 to qset.Count - 1 do
        result:= result + qset[j];
  end;
  qset.Destroy;
  allsets.Destroy;
end;

function testneededpairs: int64;    // Task 106 - 21384
var i, j, k, l, m, n, comb, ind, res1, res2, i1, j1, k1, l1, m1: int64;
    a: array [1 .. 10] of int64;
begin
  result:= 0;
  res1:= 0;
  for i:= 1 to 7 do
  begin
    for j:= i + 1 to 8 do
    begin
      for k:= j + 1 to 9 do
      begin
        for l:= k + 1 to 10 do
        begin
          for m:= l + 1 to 11 do
          begin
            for n:= m + 1 to 12 do
            begin
              ind:= 1;
              for comb:= 1 to 12 do
              begin
                if (comb <> i) and (comb <> j) and (comb <> k) and (comb <> l) and (comb <> m) and (comb <> n) then
                begin
                  a[ind]:= comb;
                  ind:= ind + 1
                end;
              end;
              if (a[1] > i) and ((a[2] < j) or (a[3] < k) or
              (a[4] < l) or (a[5] < m) or (a[6] < n)) then
                res1:= res1 + 1;
            end;
          end;
        end;
      end;
    end;
  end;
  result:= result + res1;
  res1:= 0;
  for i:= 1 to 3 do
  begin
    for j:= i + 1 to 9 do
    begin
      for k:= j + 1 to 10 do
      begin
        for l:= k + 1 to 11 do
        begin
          for m:= l + 1 to 12 do
          begin
            ind:= 1;
            for comb:= 1 to 12 do
              if (comb <> i) and (comb <> j) and (comb <> k) and (comb <> l) and (comb <> m) then
              begin
                a[ind]:= comb;
                ind:= ind + 1;
              end;
              for i1:= 1 to 3 do
                for j1:= i1 + 1 to 4 do
                  for k1:= j1 + 1 to 5 do
                    for l1:= k1 + 1 to 6 do
                      for m1:= l1 + 1 to 7 do
                      begin
                        if (a[i1] > i) and ((a[j1] < j) or (a[k1] < k) or (a[l1] < l) or (a[m1] < m)) then
                          res1:= res1 + 1;
                      end;
          end;
        end;
      end;
    end;
  end;
  result:= result + res1;
  res1:= 0;
  for i:= 1 to 5 do
  begin
    for j:= i + 1 to 10 do
    begin
      for k:= j + 1 to 11 do
      begin
        for l:= k + 1 to 12 do
        begin
          ind:= 1;
          for comb:= 1 to 12 do
            if (comb <> i) and (comb <> j) and (comb <> k) and (comb <> l) then
            begin
              a[ind]:= comb;
              ind:= ind + 1;
            end;
            for i1:= 1 to 5 do
              for j1:= i1 + 1 to 6 do
                for k1:= j1 + 1 to 7 do
                  for l1:= k1 + 1 to 8 do
                  begin
                    if (a[i1] > i) and ((a[j1] < j) or (a[k1] < k) or (a[l1] < l)) then
                      res1:= res1 + 1;
                  end;
          end;
      end;
    end;
  end;
  result:= result + res1;
  res1:= 0;
  for i:= 1 to 7 do
  begin
    for j:= i + 1 to 11 do
    begin
      for k:= j + 1 to 12 do
      begin
        ind:= 1;
        for comb:= 1 to 12 do
          if (comb <> i) and (comb <> j) and (comb <> k) then
          begin
            a[ind]:= comb;
            ind:= ind + 1;
          end;
          for i1:= 1 to 7 do
            for j1:= i1 + 1 to 8 do
              for k1:= j1 + 1 to 9 do
              begin
                if (a[i1] > i) and ((a[j1] < j) or (a[k1] < k)) then
                  res1:= res1 + 1;
              end;
      end;
    end;
  end;
  result:= result + res1;
  res1:= 0;
  for i:= 1 to 9 do
  begin
    for j:= i + 1 to 12 do
    begin
      ind:= 1;
      for comb:= 1 to 12 do
        if (comb <> i) and (comb <> j) then
        begin
          a[ind]:= comb;
          ind:= ind + 1;
        end;
        for i1:= 1 to 9 do
          for j1:= i1 + 1 to 10 do
          begin
            if (a[i1] > i) and (a[j1] < j) then
              res1:= res1 + 1;
          end;
    end;
  end;
  result:= result + res1;
end;

function networksaving: int64;         // Task 107 - 259679
const fname = 'tsk107.txt';
var f: text;
    str, numb: string;
    a: array [1 .. 40, 1 .. 40] of int64;
    i, j, ind, row, unsaved, saved, curmin, curmincol: Int64;
    choosen: Tlist<int64>;
begin
  row:= 1;
  AssignFile(f, fname);
  Reset(f);
  while not eof(f) do
  begin
    readln(f, str);
    ind:= 1;
    numb:= '';
    for i:= 1 to length(str) do
    begin
      if str[i] = '-' then
        a[row, ind]:= 1000000
      else
        if str[i] = ',' then
        begin
          if numb <> '' then a[row, ind]:= numb.ToInt64;
          ind:= ind + 1;
          numb:= ''
        end
        else
          numb:= numb + str[i];
      if (i = length(str)) and (numb <> '') then
        a[row, ind]:= numb.ToInt64;
    end;
    row:= row + 1
  end;
  unsaved:= 0;
  for i:= 1 to 40 do
    for j:= 1 to 40 do
      if a[i, j] <> 1000000 then
        unsaved:= unsaved + a[i, j];
  unsaved:= unsaved div 2;
  saved:= 0;
  choosen:= TList<int64>.Create;
  choosen.Clear;
  choosen.Add(1);
  saved:= 0;
  while choosen.Count < 40 do
  begin
    curmin:= 1000000;
    for i:= 0 to choosen.Count - 1 do
      for j:= 1 to 40 do
        if not choosen.Contains(j) then
          if a[choosen[i], j] < curmin then
          begin
            curmin:= a[choosen[i], j];
            curmincol:= j
          end;
    saved:= saved + curmin;
    choosen.Add(curmincol);
  end;
  result:= unsaved - saved;
  choosen.Destroy;
end;

function diophantminus1degree: int64;      // Task 108 - 180180
var i, n, shmsgswitch, counter: Int64;
begin
  counter:= 0;
  n:= 10;
  shmsgswitch:= 0;
  while counter <= 1000 do
  begin
    i:= n + 1;
    while i <= 2 * n do
    begin
      if (trunc((i * n) / (i - n)) = (i * n) / (i - n)) and ((i * n) / (i - n) > 0) then
        counter:= counter + 1;
      i:= i + 1
    end;
    if counter <= 1000 then
    begin
      n:= n + 10;
      counter:= 0
    end;
  end;
  result:= n;
end;

function darts: int64;            //  Task 109 - 38182
var i, j, k, fir, sec, thi: int64;
    finish: array [1 .. 2, 1 .. 21] of int64;
    intmd, intmd1: array [1 .. 2, 1 .. 62] of int64;
begin
  for i:= 1 to 20 do
  begin
    finish[1, i]:= i;
    finish[2, i]:= i * 2
  end;
  finish[1, 21]:= 25;
  finish[2, 21]:= 50;
  for i:= 1 to 20 do
  begin
    intmd[1, i]:= 100 + i;
    intmd[2, i]:= i;
    intmd[1 ,20 + i]:= 200 + i;
    intmd[2, 20 + i]:= i * 2;
    intmd[1, 40 + i]:= 300 + i;
    intmd[2, 40 + i]:= i * 3;
    intmd[1, 61]:= 125;
    intmd[2, 61]:= 25;
    intmd[1, 62]:= 225;
    intmd[2, 62]:= 50;
  end;
  result:= 0;
  for i:= 1 to 21 do
  begin
    fir:= finish[2, i];
    for j:= 1 to 62 do
    begin
      if finish[2, i] + intmd[2, j] < 100 then result:= result + 1;
      
      for k:= 1 to j do
      begin
        if finish[2, i] + intmd[2, j] + intmd[2, k] < 100 then result:= result + 1
      end;
    end;
  end;
  result:= result + 21;
end;

function diop4msol: int64;                       //Task 110 - 9350130049860600
var a1, a2, a3, a4, a5, a6, intmdr, mnog, pwr, smpl: int64;
begin
  result:= result.MaxValue;
  a1:= 3;
  while a1 < 13 do
  begin
    a2:= 3;
    while a2 < 11 do
    begin
      a3:= 3;
      while a3 < 11 do
      begin
        a4:= 3;
        while a4 < 7 do
        begin
          a5:= 3;
          while a5 < 7 do
          begin
            a6:= 3;
            while a6 < 7 do
            begin
              pwr:= 9;
              mnog:= a1 * a2 * a3 * a4 * a5 * a6 * powerint64(3, pwr);
              while mnog > 8000000 do
              begin
                pwr:= pwr - 1;
                mnog:= a1 * a2 * a3 * a4 * a5 * a6 * powerint64(3, pwr)
              end;
              pwr:= pwr + 1;
              mnog:= a1 * a2 * a3 * a4 * a5 * a6 * powerint64(3, pwr);
              if mnog > 8000000 then
              begin
                mnog:= powerint64(2, (a1 - 1) div 2) * powerint64 (3, (a2 - 1) div 2) *
                powerint64(5, (a3 - 1) div 2) * powerint64 (7, (a4 - 1) div 2) *
                powerint64(11, (a5 - 1) div 2) * powerint64 (13, (a6 - 1) div 2);
                smpl:= 17;
                while (pwr > 0) and (mnog < (result div 17)) do
                begin
                  mnog:= mnog * smpl;
                  smpl:= nextprime(smpl);
                  pwr:= pwr - 1
                end;
                if (mnog < result) and (pwr = 0) then result:= mnog;
              end;
              a6:= a6 + 2
            end;
            a5:= a5 + 2
          end;
          a4:= a4 + 2
        end;
        a3:= a3 + 2
      end;
      a2:= a2 + 2
    end;
    a1:= a1 + 2
  end;
end;

function sum10dprimes: int64;       // Task 111 - 612407567715
var i, j, k, l, m, n, check: int64;
    a: array [1 .. 10] of boolean;
    b: array [1 .. 10] of int64;
    prlist: TList<int64>;
    ctrl: boolean;
begin
  result:= 0;
  prlist:= TList<int64>.Create;
  prlist.Clear;
  for i:= 1 to 10 do
    a[i]:= false;
  for i:= 0 to 9 do
  begin
    for j:= 1 to 10 do
    begin
      for k:= 0 to 9 do
      begin
        for l:= 1 to 10 do
          if l <> j then b[l]:= i else b[l]:= k;
        check:= 0;
        for l:= 1 to 10 do
          check:= check * 10 + b[l];
        if isprime(check) and (check >= 1000000000) and not prlist.Contains(check) then
        begin
          result:= result + check;
          a[i + 1]:= true;
          prlist.Add(check)
        end;
      end;
    end;
  end;
  for i:= 0 to 9 do
  begin
    if not a[i + 1] then
    begin
      for j:= 0 to 9 do
        if j <> i then
        begin
          for k:= 0 to 9 do
            if (k <> i) then
            begin
              for l:= 1 to 10 do
                for m:= 1 to 10 do
                begin
                  if l <> m then
                  begin
                    for n:= 1 to 10 do
                      if (n <> l) and (n <> m) then b[n]:= i
                      else if n = l then b[n]:= j
                      else b[n]:= k;
                    check:= 0;
                    for n:= 1 to 10 do
                      check:= check * 10 + b[n];
                    if isprime(check) and (check > 1000000000) and not prlist.Contains(check) then
                    begin
                      result:= result + check;
                      a[i + 1]:= true;
                      prlist.Add(check)
                    end;
                  end;
                end;
            end;
        end;
    end;
  end;
end;

function bouncypart: int64;       // Task 112 - 1587000
var j, bouncy: int64;
    istr: string;
    incr, decr: boolean;
begin
  result:= 100;
  bouncy:= 0;
  while (result / (result - bouncy)) <> 100 do
  begin
    result:= result + 1;
    istr:= result.ToString;
    incr:= true;
    decr:= true;
    for  j:= 1 to length(istr) - 1 do
    begin
      if istr[j + 1] < istr[j] then incr:= false;
      if istr[j + 1] > istr[j] then decr:= false;
    end;
    if not incr and not decr then bouncy:= bouncy + 1;
  end;
end;

function bouncyamount (pwr: int64): int64;       // Task 113 - 51161058134250
var i, j, k, ic, ic1, ic2, dc, dc1, dc2, powr, incr, decr: int64;
    a: array [0 .. 10] of array of int64;
begin
  for i:= 0 to 10 do
    SetLength(a[i], pwr + 1);
  for i:= 0 to 10 do
    for j:= 0 to pwr do
      a[i, j]:= 0;
  a[1, 1]:= 1;
  for j:= 2 to pwr do
    for i:= 1 to 10 do
      a[i, j]:= a[i - 1, j - 1] + a[i, j - 1];
  result:= 0;
  incr:= 0;
  decr:= 0;
  for i:= 9 downto 2 do
    for j:= pwr downto 11 do
    begin
      incr:= incr + a[i, j] * (factorial(9) div factorial(i) div factorial(9 - i))
    end;
  for i:= 10 downto 1 do
  begin
    for j:= pwr downto 11 do
    begin
      decr:= decr + a[i, j] * (factorial(10) div factorial(i) div factorial(10 - i))
    end;
  end;
  result:= result + 277032 + incr + decr - 90;
end;

function twotileplacement(leng: int64): int64;      // Task 114 - 16475640049
var bar1, i, j, blnks, bars, r: int64;
    a: array of array of int64;
begin
  result:= 1;                       //  0-bar variants
  for bar1:= leng downto 3 do       //  1-bar variants
  begin
    result:= result + leng - bar1 + 1
  end;
  setlength(a, leng + 1);
  for i:= 0 to leng - 1 do
    setlength(a[i], leng + 1);
  for i:= 1 to leng - 1 do
    for j:= 1 to leng - 1 do
      a[i, j]:= 0;
  for i:= 1 to leng - 1 do
    a[1, i]:= 1;
  for i:= 2 to leng - 1 do
    for j:= 1 to leng - 1 do
      a[i, j]:= a[i, j - 1] + a[i - 1, j - 1];
  for bars:= 2 to (leng + 1) div 4 do
  begin
    for blnks:= bars - 1 to leng - bars * 3 do
    begin
      r:= 1;
      bar1:= leng - blnks - (bars * 2) - 1;
      for i:= bars - 1 downto 1 do
      begin
        r:= r * bar1;
        bar1:= bar1 - 1
      end;
      for i:= 2 to bars - 1 do
        r:= r div i;
      r:= r * a[bars + 1, blnks + 2];
      result:= result + r
    end;
  end;
  result:= result;
// a(n) = 2a(n-1) - a(n-2) + a(n-4) with initial values [1, 1, 1, 2]
end;

function tiles50placement: int64;                   // Task 115 - 168
var leng, bar1, i, j, blnks, bars, r: int64;
begin
  leng:= 101;
  while true do
  begin
    result:= 1;                       //  0-bar variants
    for bar1:= leng downto 50 do       //  1-bar variants
    begin
      result:= result + leng - bar1 + 1
    end;
    for bars:= 2 to (leng + 1) div 51 do
    begin
      for blnks:= bars - 1 to leng - bars * 50 do
      begin
        r:= 1;
        bar1:= leng - blnks - (bars * 49) - 1;
        for i:= bars - 1 downto 1 do
        begin
          r:= r * bar1;
          bar1:= bar1 - 1
        end;
        for i:= 2 to bars - 1 do
          r:= r div i;
        bar1:= blnks + 1;
        for i:= 1 to bars do
        begin
          r:= r * bar1;
          bar1:= bar1 - 1
        end;
        r:= r div factorial(bars);
        result:= result + r
      end;
    end;
    if result > 1000000 then break;
    leng:= leng + 1
  end;
  result:= leng;
end;

function twotofourtilecvrg(leng: int64): int64;         // Task 116 - 20492570929
var i, j, r, bars, blnks: int64;
begin
  result:= 0;
  for i := 1 to leng div 2 do                   // 2-tiled bars
  begin
    r:= 1;
    blnks:= leng - i * 2;
    for j:= 1 to i do
      r:= r * (leng - i + 1 - j) div j;
    result:= result + r
  end;
  for i := 1 to leng div 3 do                   // 3-tiled bars
  begin
    r:= 1;
    blnks:= leng - i * 3;
    for j:= 1 to i do
      r:= r * (leng - i * 2 + 1 - j) div j;
    result:= result + r
  end;
  for i := 1 to leng div 4 do                   // 4-tiled bars
  begin
    r:= 1;
    blnks:= leng - i * 4;
    for j:= 1 to i do
      r:= r * (leng - i * 3 + 1 - j) div j;
    result:= result + r
  end;
end;

function twothreefourtilecvrg(leng: int64): int64;
var i, bars2, bars3, bars4, r: int64;
  j: Int64;
begin
  result:= 0;
  for i:= leng div 2 downto 2 do
  begin
    bars4:= 0;
    bars3:= 1;
    bars2:= i - bars4 - bars3;
    while bars2 * 2 + bars3 * 3 + bars4 * 4 <= leng do
    begin
      r:= 1;
      if bars2 >= bars3 then
      begin
        for j:= i downto bars2 + 1 do
          r:= r * j;
        r:= r div factorial(bars3) div factorial(bars4);
      end
      else
      begin
        for j:= i downto bars3 + 1 do
          r:= r * j;
        r:= r div factorial(bars2) div factorial(bars4);
      end;
      for j:= 1 to i do
        r:= r * (i + (leng - bars2 * 2 - bars3 * 3 - bars4 * 4) + 1 - j) div j;                          //(leng - bars2 - bars3 * 2 - bars4 * 3 + 1 - j) div j;
      result:= result + r;
      bars3:= bars3 + 1;
      bars2:= bars2 - 1;
      if (bars2 * 2 + bars3 * 3 + bars4 * 4 > leng) or ((bars2 = 0) and (bars4 = 0) or (bars2 < 0)) then
      begin
        bars3:= 0;
        bars4:= bars4 + 1;
        bars2:= i - bars4
      end;
      if (bars2 * 2 + bars3 * 3 + bars4 * 4 > leng) or (bars4 = i) then break
    end;
  end;
  result:= result + twotofourtilecvrg(leng) + 1;                   // all coverages with no-mixed tiles
end;

function primesetscount: int64;                                  // Task 118 - 44680
var i, j, k, cnt, cnt1: int64;
    places: array [1 .. 25] of integer;
    cph: array [1 .. 6] of integer;
    cp, cphr, cc: string;
    flag: boolean;
begin
  places[1]:= 111123;
  places[2]:= 11115;
  places[3]:= 111222;
  places[4]:= 11124;
  places[5]:= 11133;
  places[6]:= 1116;
  places[7]:= 11223;
  places[8]:= 1125;
  places[9]:= 1134;
  places[10]:= 117;
  places[11]:= 12222;
  places[12]:= 1224;
  places[13]:= 1233;
  places[14]:= 126;
  places[15]:= 135;
  places[16]:= 144;
  places[17]:= 18;
  places[18]:= 2223;
  places[19]:= 225;
  places[20]:= 234;
  places[21]:= 27;
  places[22]:= 333;
  places[23]:= 36;
  places[24]:= 45;
  places[25]:= 9;
  cp:= '123456789';
  result:= 0;
  while cp <> '' do
  begin
    for i:= 1 to 25 do
    begin;
      cnt:= length(places[i].ToString);
      cnt1:= 0;
      for j:= 1 to cnt do
      begin
        cphr:= '';
        cc:= places[i].ToString;
        for k:= 1 to StrToInt(cc[j]) do
          cphr:= cphr + cp[k + cnt1];
        cph[j]:= cphr.ToInteger;
        cnt1:= cnt1 + StrToInt(cc[j])
      end;
      flag:= true;
      for j:= 1 to cnt - 1 do
        if cph[j] > cph [j + 1] then
        begin
          flag:= false;
          break
        end;
      if flag then
        for j:= 1 to cnt do
          if not IsPrime(cph[j]) then
          begin
            flag:= false;
            break
          end;
      if flag then
        result:= result + 1
    end;
    cp:= nextpermutation(cp);
  end;
end;

function digitssum(number: int64): int64;      // Task 119 - 248155780267521
var i, i1, j, ds, cnt: int64;
    numbers: TList<int64>;
begin
  numbers:= TList<int64>.Create;
  numbers.Clear;
  for i:= 2 to 144 do
  begin
    j:= 2;
    while powerint64(i, j) < 10000000000000000 do
    begin
      i1:= powerint64(i, j);
      ds:= 0;
      while i1 <> 0 do
      begin
        ds:= ds + i1 mod 10;
        i1:= i1 div 10
      end;
      if ds = i then
        numbers.Add(powerint64(i, j));
      j:= j + 1
    end;
  end;
  numbers.Sort;
  result:= numbers[number - 1];
end;

end.
