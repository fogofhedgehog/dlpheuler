unit chkhlpr;

interface

uses system.sysutils;

function unixtime(dat: string): int64;

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
  if mo = '€нвар€' then m:= 1;
  if mo = 'феврал€' then m:= 2;
  if mo = 'марта' then m:= 3;
  if mo = 'апрел€' then m:= 4;
  if mo = 'ма€' then m:= 5;
  if mo = 'июн€' then m:= 6;
  if mo = 'июл€' then m:= 7;
  if mo = 'августа' then m:= 8;
  if mo = 'сент€бр€' then m:= 9;
  if mo = 'окт€бр€' then m:= 10;
  if mo = 'но€бр€' then m:= 11;
  if mo = 'декабр€' then m:= 12;
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
    if y mod 4 <> 0 then result:= result + 31536000 else result:= result + 31622400;
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
  for i:= 1 to h - 1 do
    result:= result + 3600;
  for i:= 1 to mi - 1 do
    result:= result + 60;
end;

end.
