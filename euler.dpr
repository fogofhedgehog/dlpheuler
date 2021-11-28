program euler;

uses
  System.StartUpCopy,
  FMX.Forms,
  eulerproj in 'eulerproj.pas' {Form1} ,
  NewTaskCreate in 'NewTaskCreate.pas' {AddNewTaskForm} ,
  eulertask in 'eulertask.pas',
  fogmath in 'fogmath.pas',
  eulclass in 'eulclass.pas',
  Velthuis.BigIntegers
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.BigIntegers.pas',
  CompilerAndRTLVersions
    in '..\..\..\GitHub\DelphiBigNumbers\Source\CompilerAndRTLVersions.pas',
  Velthuis.RandomNumbers
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.RandomNumbers.pas',
  Velthuis.Numerics
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.Numerics.pas',
  Velthuis.StrConsts
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.StrConsts.pas',
  Velthuis.Sizes
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.Sizes.pas',
  Velthuis.FloatUtils
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.FloatUtils.pas',
  Velthuis.BigDecimals
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.BigDecimals.pas',
  Velthuis.BigRationals
    in '..\..\..\GitHub\DelphiBigNumbers\Source\Velthuis.BigRationals.pas';

{$R *.res}
{$MAXSTACKSIZE 26000000}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAddNewTaskForm, AddNewTaskForm);
  Application.Run;

end.
