unit chkhlpr;

interface

uses system.sysutils, System.StrUtils, FMX.StdCtrls, FMX.DateTimeCtrls;

function unixtime(dat: string): int64;
function ReceiptPerekrestok(a: string): string;
function ReceiptPyaterochka(a, tm: string): string;
function digmounthtotext(a: integer): string;

implementation

function unixtime(dat: string): int64;
var i, d, m, y, h, mi: int64;
    mo: string;
    vis: boolean;
begin
  i:= 1;
  d:= 0;
  while dat[i] <> ' ' do
  begin;
    d:= d * 10 + StrToInt(dat[i]);
    i:= i + 1
  end;
  i:= i + 1;
  mo:= '';
  while dat[i] <> ' ' do
  begin;
    mo:= mo + dat[i];
    i:= i + 1
  end;
  if mo = '������' then m:= 1;
  if mo = '�������' then m:= 2;
  if mo = '�����' then m:= 3;
  if mo = '������' then m:= 4;
  if mo = '���' then m:= 5;
  if mo = '����' then m:= 6;
  if mo = '����' then m:= 7;
  if mo = '�������' then m:= 8;
  if mo = '��������' then m:= 9;
  if mo = '�������' then m:= 10;
  if mo = '������' then m:= 11;
  if mo = '�������' then m:= 12;
  i:= i + 1;
  y:= 0;
  while dat[i] <> ',' do
  begin;
    y:= y * 10 + StrToInt(dat[i]);
    i:= i + 1
  end;
  i:= i + 2;
  h:= 0;
  while dat[i] <> ':' do
  begin;
    h:= h * 10 + StrToInt(dat[i]);
    i:= i + 1
  end;
  i:= i + 1;
  mi:= 0;
  while i <> length(dat) + 1 do
  begin;
    mi:= mi * 10 + StrToInt(dat[i]);
    i:= i + 1
  end;
  result:= 0;
  for i:= 1970 to y - 1 do
    if i mod 4 <> 0
      then result:= result + 31536000
      else result:= result + 31622400;
  vis:= (y mod 4 = 0);
  for i:= 1 to m - 1 do
    if (i = 1) or (i = 3) or (i = 5) or (i = 7) or (i = 8) or (i = 10) then result:= result + 2678400
    else
      if (i = 4) or (i = 6) or (i = 9) or (i = 11) then result:= result + 2592000
      else
      if vis then result:= result + 2505600
        else result:= result + 2419200;
  for i:= 1 to d - 1 do
    result:= result + 86400;
  for i:= 0 to h - 1 do
    result:= result + 3600;
  for i:= 0 to mi - 1 do
    result:= result + 60;
  result:= result - 10800;
end;

function ReceiptPerekrestok(a: string): string;
var rd: string;
    f: text;
    q, summa: extended;
    pri, qi, summai: int64;
begin
  AssignFile(f, 'exmpl.txt');
  rewrite(f);
  Write(f, a);
  CloseFile(f);
  Reset (f);
  Readln (f, rd);
  Readln (f, rd);
  result:= '{"cashTotalSum":0,"dateTime":';
  rd:= unixtime(rd).ToString;
  a:= a + rd;
  a:= a + ',"discount":null,"discountSum":null,"ecashTotalSum":null,"fiscalDocumentNumber":null,"fiscalDriveNumber":null,"fiscalSign":null,"items":[{"modifiers":null,"name":";';
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  while rd <> '�����:' do
  begin
    result:= result + rd;
    Readln (f, rd);
    result:= result + '","nds0":null,"nds10":null,"nds18":null,"ndsCalculated10":null,"ndsCalculated18":null,"ndsNo":null,"price":';
    q:= rd.ToExtended;
    Readln (f, rd);
    summa:= rd.ToExtended;
    result:= result + Trunc(summa / q * 100).ToString + ',"quantity":' + q.ToString + ',"sum":' +
    Trunc(summa * 100).ToString + ',"storno":false},{"modifiers":null,"name":"';
    Readln(f, rd)
  end;
  result:= LeftStr(result, length(result) - 27);
  result:= result + '],"kktNumber":null,"kktRegId":null,"markup":null,"markupSum":null,"modifiers":null,"nds0":null,"nds10":null,"nds18"'
  + ':null,"ndsCalculated10":null,"ndsCalculated18":null,"ndsNo":null,"operationType":1,"operator":null,"requestNumber":null,"retailPlaceAddress":null,"shiftNumber":null,"stornoItems":null,"taxationType":null,"totalSum":';
  Readln(f, rd);
  summa:= rd.ToExtended;
  result:= result + Trunc(summa * 100).ToString + ',"user":"����������","userInn":null}';
  CloseFile(f);
  DeleteFile('exmpl.txt')
end;

function ReceiptPyaterochka(a, tm: string): string;
var rd, rd1, nam, qn, tot: string;
    f: text;
    q, summa: extended;
    pri, qi, summai, i: int64;
begin
  AssignFile(f, 'exmpl.txt');
  rewrite(f);
  Write(f, a);
  CloseFile(f);
  Reset (f);
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd1);
  rd:= rd1[1] + rd1[2] + ' ' + digmounthtotext((rd1[4] + rd1[5]).ToInteger) + ' ' + rd1[7] + rd1[8] + rd1[9] + rd1[10] + ', ';
  if (LeftStr(tm, 2) = '12') and (tm[10] = 'A') then tm:= '0' + RightStr(tm, length(tm) - 2);
  if tm[10] = 'P' then
    if LeftStr(tm, 2) <> '12' then tm:= (LeftStr(tm, 2).Tointeger + 12).ToString + RightStr(tm, length(tm) - 2);
  rd:= rd + LeftStr(tm, 5);
  result:= '{"cashTotalSum":0,"dateTime":';
  rd:= unixtime(rd).ToString;
  result:= result + rd;
  result:= result + ',"discount":null,"discountSum":null,"ecashTotalSum":null,"fiscalDocumentNumber":null,"fiscalDriveNumber":null,"fiscalSign":null,"items":[{"modifiers":null,"name":";';
  Readln (f, rd);
  Readln (f, rd);
  Readln (f, rd);
  while LeftStr(rd, 5) <> '�����' do
  begin
    nam:= '';
    i:= 1;
    while rd[i] <> #9 do
    begin
      nam:= nam + rd[i];
      i:= i + 1
    end;
    result:= result + nam;
    i:= i + 1;
    qn:= '';
    while rd[i] <> #9 do
    begin
      qn:= qn + rd[i];
      i:= i + 1
    end;
    i:= i + 1;
    tot:= '';
    while i <= length(rd) do
    begin
      if rd[i] <> ' '
      then
        tot:= tot + rd[i]
      else
        tot:= tot + '.';
        i:= i + 1
    end;
    result:= result + '","nds0":null,"nds10":null,"nds18":null,"ndsCalculated10":null,"ndsCalculated18":null,"ndsNo":null,"price":';
    q:= qn.ToExtended;
    summa:= tot.ToExtended;
    result:= result + Trunc(summa / q * 100).ToString + ',"quantity":' + q.ToString + ',"sum":' +
    Trunc(summa * 100).ToString + ',"storno":false},{"modifiers":null,"name":"';
    Readln(f, rd);
    if q > 1 then Readln(f, rd)
  end;
  result:= LeftStr(result, length(result) - 27);
  result:= result + '],"kktNumber":null,"kktRegId":null,"markup":null,"markupSum":null,"modifiers":null,"nds0":null,"nds10":null,"nds18"'
  + ':null,"ndsCalculated10":null,"ndsCalculated18":null,"ndsNo":null,"operationType":1,"operator":null,"requestNumber":null,"retailPlaceAddress":null,"shiftNumber":null,"stornoItems":null,"taxationType":null,"totalSum":';
  i:= 1;
  while rd[i] <> #9 do
    i:= i + 1;
  i:= i + 1;
  tot:= '';
  while i <= length(rd) do
  begin
    if rd[i] <> ' '
    then
      tot:= tot + rd[i]
    else
      tot:= tot + '.';
      i:= i + 1
  end;
  summa:= tot.ToExtended;
  result:= result + Trunc(summa * 100).ToString + ',"user":"��������","userInn":null}';
  CloseFile(f);
  DeleteFile('exmpl.txt')
end;

function digmounthtotext(a: integer): string;
begin
  case a of
  1: result:= '������';
  2: result:= '�������';
  3: result:= '�����';
  4: result:= '������';
  5: result:= '���';
  6: result:= '����';
  7: result:= '����';
  8: result:= '�������';
  9: result:= '��������';
  10: result:= '�������';
  11: result:= '������';
  12: result:= '�������'
  end;
end;

end.
