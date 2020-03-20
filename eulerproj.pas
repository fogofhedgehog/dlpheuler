unit eulerproj;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FMX.Edit,
  Generics.Collections, NewTaskCreate, eulertask, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.ScrollBox, FMX.Memo, FMX.Clipboard, System.Rtti,
  FMX.Platform, FMX.Surfaces;

type
  TForm1 = class(TForm)
    TaskNumberComboBox: TComboBox;
    TaskNumberLabel: TLabel;
    TaskDescriptionLabel: TLabel;
    AddTaskButton: TButton;
    CalculateButton: TButton;
    Param1Edit: TEdit;
    Param1Label: TLabel;
    TaskDescriptionMainLabel: TLabel;
    ResultLabel: TLabel;
    ResultMainLabel: TLabel;
    TimeLabel: TLabel;
    TimeMainLabel: TLabel;
    HintLabel: TLabel;
    Param2Edit: TEdit;
    Param2Label: TLabel;
    procedure TaskNumberComboBoxChange(Sender: TObject);
    procedure AddTaskButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalculateButtonClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

type TaskDescript = record
  TaskNum:integer;
  TaskText:string[254];
  ParamAmount:integer;
end;

var
  Form1: TForm1;
  TaskHlpr: TaskDescript;
  TimeStart, TimeEnd: TTimeStamp;

implementation

{$R *.fmx}

procedure ReadTasks(Filename:string; Tasks: TList <Taskdescript>);
var f:file of TaskDescript;
    t: TaskDescript;
begin
  AssignFile (f, FileWithTasks);
  Reset (f);
  if FileSize (f) > 0 then
  while not Eof (f) do
  begin
    Read (f, t);
    Tasks.Add(t)
  end;
  CloseFile (f);
end;


procedure TForm1.AddTaskButtonClick(Sender: TObject);
//type TaskDescript = record
//  TaskNum:integer;
//  TaskText:string[254];
//  ParamAmount:integer;
//  end;
var AllTasks: file of TaskDescript;
    Tasks: TList <TaskDescript>;
    TaskHlpr:TaskDescript;
begin
    Tasks:=TList <TaskDescript>.Create;
    AssignFile (AllTasks,FileWithTasks);
    if not (FileExists (FileWithTasks)) then
    begin
      Rewrite (AllTasks);
      TaskHlpr.TaskNum:=1
    end
    else ReadTasks(FileWithTasks,Tasks);
    TaskHlpr.TaskNum:=Tasks.Count+1;
    Form1.Hide;
    Tasks.Destroy;
    AddNewTaskForm.TaskNumberEdit.Text:=TaskHlpr.TaskNum.ToString;
    AddNewTaskForm.ShowModal;
end;

procedure TForm1.CalculateButtonClick(Sender: TObject);
var TaskChoise, Param1, Param2, resulting :int64;
    Clpbrd: IFMXExtendedClipboardService;
    Value: Tvalue;
begin
  TimeStart:=DateTimeToTimeStamp(Time);
  TaskChoise:=TaskNumberComboBox.Items[TaskNumberComboBox.ItemIndex].ToInteger;
  if Param1Edit.Visible then Param1:=Param1Edit.Text.ToInt64;
  if Param2Edit.Visible then Param2:=Param2Edit.Text.ToInt64;
  if TaskChoise = 1 then
  resulting:= sum3n5multiples(Param1-1);
  if TaskChoise = 2 then
  resulting:= sumevenfibonacci(Param1);
  if TaskChoise = 3 then
  resulting:= biggestprimediv(Param1);
  if TaskChoise = 4 then
  resulting:= biggestpalindr(Param1);
  if TaskChoise = 5 then
  resulting:= smallestcommondiv(Param1);
  if TaskChoise = 6 then
  resulting:= difsquare(Param1);
  if TaskChoise = 7 then
  resulting:= definitprime(Param1);
  if TaskChoise = 8 then
  resulting:= adjacentproduct(Param1);
  if TaskChoise = 9 then
  resulting:= productofthreepif;
  if TaskChoise = 10 then
  resulting:= primessum(Param1);
  if TaskChoise = 11 then
  resulting:= adjacentfourintable;
  if TaskChoise = 12 then
  resulting:= triangledivs(Param1);
  if TaskChoise = 13 then
  resulting:= fsttendigitsofsum;
  if TaskChoise = 14 then
  resulting:= collatzsequence(Param1);
  if TaskChoise = 15 then
  resulting:= gridways(Param1);
  if TaskChoise = 16 then
  resulting:= poweroftwo(Param1);
  if TaskChoise = 17 then
  resulting:= countletters(Param1);
  if TaskChoise = 18 then
  resulting:= triangleroute(TaskChoise);
  if TaskChoise = 19 then
  resulting:= countfirstsundays();
  if TaskChoise = 20 then
  resulting:= fctrldigsum(Param1);
  if TaskChoise = 21 then
  resulting:= friendnumsum(Param1);
  if TaskChoise = 22 then
  resulting:= namepoints(TaskChoise);
  if TaskChoise = 23 then
  resulting:= nonabunsum();
  if TaskChoise = 24 then
  resulting:= lexpermut(Param1);
  if TaskChoise = 25 then
  resulting:= indexfibonacci(Param1);
  if TaskChoise = 26 then
  resulting:= peciprocalcycle(Param1);
  if TaskChoise = 27 then
  resulting:= quadcoeff(Param1);
  if TaskChoise = 28 then
  resulting:= squarediagsum(Param1);
  if TaskChoise = 29 then
  resulting:= distinctpowerseq();
  if TaskChoise = 30 then
  resulting:= distinctpowerseq();
  if TaskChoise = 31 then
  resulting:= englishcoins();
  if TaskChoise = 32 then
  resulting:= pandigits;
  if TaskChoise = 33 then
  resulting:= strngfractions;
  if TaskChoise = 34 then
  resulting:= sumfactorials;
  if TaskChoise = 35 then
  resulting:= sumfactorials;
  if TaskChoise = 36 then
  resulting:= decbinpalindr(Param1);
  if TaskChoise = 37 then
  resulting:= truncprimes;
  if TaskChoise = 38 then
  resulting:= panconcproduct;
  if TaskChoise = 39 then
  resulting:= maxnatursolut(Param1);
  if TaskChoise = 40 then
  resulting:= champerconst;
  if TaskChoise = 41 then
  resulting:= largestpandigprime;
  if TaskChoise = 42 then
  resulting:= trianglewords;
  if TaskChoise = 43 then
  resulting:= pandigitsdivisions;
  if TaskChoise = 44 then
  resulting:= pentagonaldif;
  if TaskChoise = 45 then
  resulting:= tripenthex;
  if TaskChoise = 46 then
  resulting:= goldbachconj;
  if TaskChoise = 47 then
  resulting:= fourfromfour;
  if TaskChoise = 48 then
  resulting:= selfpowersum(Param1);
  if TaskChoise = 49 then
  resulting:= fourdigitprimerperm;
  if TaskChoise = 50 then
  resulting:= fourdigitprimerperm;
  if TaskChoise = 51 then
  resulting:= fourdigitprimerperm;
  if TaskChoise = 52 then
  resulting:= pandigitmultiples;
  if TaskChoise = 53 then
  resulting:= combinatoriccount(Param1);
  if TaskChoise = 54 then
  resulting:= pokerwinner;
  if TaskChoise = 55 then
  resulting:= lychrelnumbers;
  if TaskChoise = 56 then
  resulting:= selfpowersums(Param1);
  if TaskChoise = 57 then
  resulting:= sqrt2iterat(Param1);
  if TaskChoise = 58 then
  resulting:= diagonalprimes;
  if TaskChoise = 59 then
  resulting:= decyphernsumascii;
  if TaskChoise = 60 then
  resulting:= fiveprimesmakeprime;
  if TaskChoise = 61 then
  resulting:= tritooctsum;
  if TaskChoise = 62 then
  resulting:= cubicpermut;
  if TaskChoise = 63 then
  resulting:= poweqdigs;
  if TaskChoise = 64 then
  resulting:= sqrtiterationodd(Param1);
  if TaskChoise = 65 then
  resulting:= eulerapprox(Param1);
  if TaskChoise = 66 then
  resulting:= diophantine(Param1);
  if TaskChoise = 67 then
  resulting:= triangleroute(TaskChoise);
  if TaskChoise = 68 then
  resulting:= pentaring;
  if TaskChoise = 69 then
  resulting:= eulerfunction69(Param1);
  if TaskChoise = 70 then
  resulting:= eulerfunction70(Param1);
  if TaskChoise = 71 then
  resulting:= threeseventhfraction(Param1);
  if TaskChoise = 72 then
  resulting:= fractioncount(Param1);
  if TaskChoise = 73 then
  resulting:= fractionsinrange(Param1);
  if TaskChoise = 74 then
  resulting:= factorialchain;
  if TaskChoise = 75 then
  resulting:= singularrighttriangles(Param1);
  if TaskChoise = 76 then
  resulting:= sumsvariants(Param1);
  if TaskChoise = 77 then
  resulting:= primesumsvariants(Param1);
  if TaskChoise = 78 then
  resulting:= coinpartitions;
  if TaskChoise = 79 then
  resulting:= 73162890;
  if TaskChoise = 80 then
  resulting:= sumsqrtdigits(Param1);
  if TaskChoise = 81 then
  resulting:= bidirectionalway;
  if TaskChoise = 82 then
  resulting:= tridirectionalway;
  if TaskChoise = 83 then
  resulting:= tetradirectionalway;
  if TaskChoise = 84 then
  resulting:= monopolymoves;
  if TaskChoise = 85 then
  resulting:= rectanglecount;
  if TaskChoise = 86 then
  resulting:= cuboidways(Param1);
  if TaskChoise = 87 then
  resulting:= sumpwrprimes(Param1);
  if TaskChoise = 88 then
  resulting:= sumproductsum;
  if TaskChoise = 89 then
  resulting:= romanminimalize;
  if TaskChoise = 90 then
  resulting:= cubearrangements;
  if TaskChoise = 91 then
  resulting:= rightangletriangles(Param1);
  if TaskChoise = 92 then
  resulting:= digitssquares(Param1);
  if TaskChoise = 93 then
  resulting:= digitexpressions;
  if TaskChoise = 94 then
  resulting:= sumofperimeters(Param1);
  if TaskChoise = 95 then
  resulting:= amicablechain(Param1);
  if TaskChoise = 96 then
  resulting:= sudoku;
  if TaskChoise = 97 then
  resulting:= lasttenbigprimedigits;
  if TaskChoise = 98 then
  resulting:= anagramsquare;
  if TaskChoise = 99 then
  resulting:= largestnumberinfile;
  if TaskChoise = 100 then
  resulting:= halfprobability(Param1);
  if TaskChoise = 101 then
  resulting:= bopsum;
  if TaskChoise = 102 then
  resulting:= origininsidetriangle;
  if TaskChoise = 103 then
  resulting:= specialsets;
  if TaskChoise = 104 then
  resulting:= pandigitalfibonacci;
  if TaskChoise = 105 then
  resulting:= specialsets1;
  if TaskChoise = 106 then
  resulting:= testneededpairs;
  if TaskChoise = 107 then
  resulting:= networksaving;
  if TaskChoise = 108 then
  resulting:= diophantminus1degree;
  if TaskChoise = 109 then
  resulting:= darts;
  if TaskChoise = 110 then
  resulting:= diop4msol;
  if TaskChoise = 111 then
  resulting:= sum10dprimes;
  if TaskChoise = 112 then
  resulting:= bouncypart;
  if TaskChoise = 113 then
  resulting:= bouncyamount(Param1);
  if TaskChoise = 114 then
  resulting:= twotileplacement(Param1);
  if TaskChoise = 115 then
  resulting:= tiles50placement;
  if TaskChoise = 116 then
  resulting:= twotofourtilecvrg(Param1);
  if TaskChoise = 117 then
  resulting:= twothreefourtilecvrg(Param1);
  if TaskChoise = 118 then
  resulting:= primesetscount;
  if TaskChoise = 119 then
  resulting:= digitssum(Param1);
  if TaskChoise = 120 then
  resulting:= remaindersum(Param1);
  if TaskChoise = 121 then
  resulting:= prizefund(Param1);
  if TaskChoise = 122 then
  resulting:= pwrsund200;
  if TaskChoise = 123 then
  resulting:= primerem;
  if TaskChoise = 124 then
  resulting:= radseq;
  if TaskChoise = 125 then
  resulting:= palindconssquare;
  if TaskChoise = 126 then
  resulting:= cuboidscount;
  if TaskChoise = 127 then
  resulting:= triplethits(Param1);
  if TaskChoise = 128 then
  resulting:= hexaneib(Param1);
  if TaskChoise = 129 then
  resulting:= megarepunit;
  if TaskChoise = 130 then
  resulting:= repunitwthcomposite(Param1);
  if TaskChoise = 131 then
  resulting:= primencubes;
  if TaskChoise = 132 then
  resulting:= gigarepunit;
  if TaskChoise = 133 then
  resulting:= tenpowerrepunit;
  if TaskChoise = 134 then
  resulting:= consecprimes(Param1);
  if TaskChoise = 135 then
  resulting:= difsquaresall(Param1, Param2);
  if TaskChoise = 136 then
  resulting:= difsquaresall(Param1, Param2);
  if TaskChoise = 137 then
  resulting:= goldennugget(Param1);
  if TaskChoise = 138 then
  resulting:= isoscelestrngl(Param1);
  if TaskChoise = 139 then
  resulting:= holeincenter(Param1);
  if TaskChoise = 140 then
  resulting:= modgoldennugget;
  if TaskChoise = 141 then
  resulting:= progressivepsq(Param1);
  if TaskChoise = 142 then
  resulting:= sumdifsquares;
  if TaskChoise = 143 then
  resulting:= torritriangle(Param1);
  if TaskChoise = 144 then
  resulting:= beamreflect;
  if TaskChoise = 145 then
  resulting:= reversenum;
  if TaskChoise = 146 then
  resulting:= primepattern(Param1);
  if TaskChoise = 147 then
  resulting:= gridrect(Param1, Param2);
  if TPlatformServices.Current.SupportsPlatformService(IFMXExtendedClipboardService, clpbrd) then
    Clpbrd.SetText(resulting.ToString);
  TimeEnd:=DateTimeToTimeStamp(Time);
  TimeEnd.Date:=TimeEnd.Date - TimeStart.Date;
  TimeEnd.Time:=TimeEnd.Time - TimeStart.Time;
  ResultLabel.Visible:=True;
  ResultMainLabel.Text:=resulting.ToString;
  ResultMainLabel.Visible:=True;
  TimeMainLabel.Text:=((TimeEnd.Time div 1000).ToString+'.' + (TimeEnd.Time mod 1000).ToString + ' s.');
  TimeLabel.Visible:=True;
  TimeMainLabel.Visible:=True;
end;

procedure TForm1.FormCreate(Sender: TObject);
var f: file of TaskDescript;
    fillcombo: Tlist <TaskDescript>;
    reading: TaskDescript;
begin
  fillcombo:= TList <TaskDescript>.Create;
  if FileExists (FileWithTasks) then
  begin
    AssignFile (f, FileWithTasks);
    Reset (f);
    while not Eof (f) do
    begin
      read (f, reading);
      fillcombo.Add(reading)
    end;
    CloseFile (f);
    for reading in fillcombo do
      TaskNumberComboBox.Items.Add(reading.TaskNum.ToString);
  end;
end;

procedure TForm1.TaskNumberComboBoxChange(Sender: TObject);
var TaskChoise, i:integer;
    Tasks: TList <TaskDescript>;
    TaskHlpr:TaskDescript;
begin
  Param1Edit.Visible:=False;
  Param1Edit.Text:='';
  Param2Edit.Visible:=False;
  Param2Edit.Text:='';
  Param1Label.Visible:=False;
  ResultLabel.Visible:=False;
  Param2Label.Visible:=False;
  ResultLabel.Visible:=False;
  HintLabel.Visible:=False;
  TimeLabel.Visible:=False;
  TimeMainLabel.Visible:=False;
  ResultMainLabel.Visible:=False;
  TaskNumberComboBox.Locked:=True;
  TaskChoise:=TaskNumberComboBox.Items[TaskNumberComboBox.ItemIndex].ToInteger;
  if TaskChoise = 79 then
  begin
    CalculateButton.Enabled:= False;
    ResultMainLabel.Text:= '73162890';
    ResultMainLabel.Visible:= True;
  end
  else CalculateButton.Enabled:= True;
  Tasks:=Tlist<TaskDescript>.Create;
  ReadTasks(FilewithTasks, Tasks);
  CalculateButton.Visible:=True;
  for i := 0 to Tasks.Count-1 do
  begin
    TaskHlpr:=Tasks[i];
    if TaskHlpr.TaskNum=TaskChoise then break
  end;
  if TaskHlpr.ParamAmount > 0 then
  begin
    Param1Edit.Visible:=True;
    Param1Label.Visible:=True;
  end;
  if TaskHlpr.ParamAmount > 1 then
  begin
    Param2Edit.Visible:=True;
    Param2Label.Visible:=True;
  end;
  Param1Label.Text:= parnam(TaskChoise, TaskHlpr.ParamAmount, 1);  //available name of possible parameter
  Param1Edit.Text:= setdefault(TaskChoise, TaskHlpr.ParamAmount, 1);  //assign default parameter
  HintLabel.Text:= sethint(TaskChoise);   //assign hint to show
  if TaskHlpr.ParamAmount > 1 then
  begin
    Param2Label.Text:= parnam(TaskChoise, TaskHlpr.ParamAmount, 2);  //available name of possible parameter
    Param2Edit.Text:= setdefault(TaskChoise, TaskHlpr.ParamAmount, 2);  //assign default parameter
  end;
  If HintLabel.Text<>'No parameter.' then HintLabel.Visible:=True;
  TaskDescriptionMainLabel.Text:=TaskHlpr.TaskText;
  Tasks.Destroy;
end;
end.
