unit eultaskpn;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, PythonEngine;

type
  TForm2 = class(TForm)
    py155: TMemo;
    PE: TPythonEngine;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function difcondcount(amount: integer): int64;

var
  Form2: TForm2;

implementation

{$R *.fmx}

function difcondcount(amount: integer): int64;
var i, j, k, l, n0, d0, n1, d1, ps, np, dp, ngcd, dgcd, b, c: int64;
    flg: boolean;
    m: string;
    f: text;
begin
  Form2.py155.Lines.Clear;
  Form2.py155.Lines.Add('import math');
  Form2.py155.Lines.Add('s = ' + amount.ToString);
  Form2.py155.Lines.Add('possible = []');
  Form2.py155.Lines.Add('all = set()');
  Form2.py155.Lines.Add('possible.append(set())');
  Form2.py155.Lines.Add('possible.append({(1, 1)})');
	Form2.py155.Lines.Add('all.update(possible[1])');
	Form2.py155.Lines.Add('for i in range(2, s + 1):');
	Form2.py155.Lines.Add('    poss = set()');
	Form2.py155.Lines.Add('    for j in range(1, i // 2 + 1):');
	Form2.py155.Lines.Add('        for (n0, d0) in possible[j]:');
	Form2.py155.Lines.Add('            for (n1, d1) in possible[i - j]:');
	Form2.py155.Lines.Add('                pseudosum = n0 * d1 + n1 * d0');
	Form2.py155.Lines.Add('                numerprod = n0 * n1');
  Form2.py155.Lines.Add('                denomprod = d0 * d1');
	Form2.py155.Lines.Add('                npgcd = math.gcd(pseudosum, numerprod)');
	Form2.py155.Lines.Add('                dpgcd = math.gcd(pseudosum, denomprod)');
	Form2.py155.Lines.Add('                poss.add((pseudosum // dpgcd, denomprod // dpgcd))');
	Form2.py155.Lines.Add('                poss.add((numerprod // npgcd, pseudosum // npgcd))');
	Form2.py155.Lines.Add('    possible.append(poss)');
  Form2.py155.Lines.Add('    all.update(poss)');
  Form2.py155.Lines.Add('f = open("r155", "w")');
  Form2.py155.Lines.Add('f.write(str(len(all)))');
  Form2.py155.Lines.Add('f.close()');
  Form2.PE.ExecStrings(Form2.py155.Lines);
  Assign(f, 'r155');
  Reset(f);
  Readln(f, m);
  Close(f);
  DeleteFile('r155');
  result:= m.ToInt64()
end;

end.
