unit NewTaskCreate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.ListBox,
  Generics.Collections;

type
  TAddNewTaskForm = class(TForm)
    HeaderLabel: TLabel;
    TaskNumberEdit: TEdit;
    TaskDescriptionEdit: TEdit;
    ParamsAmountEdit: TEdit;
    TaskDescriptionLabel: TLabel;
    TaskNumLabel: TLabel;
    ParamsAmountLabel: TLabel;
    ReturnButton: TButton;
    ParamErrorLabel: TLabel;
    EditTaskButton: TButton;
    TaskEditNumberComboBox: TComboBox;
    RecEditionButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ReturnButtonClick(Sender: TObject);
    procedure EditTaskButtonClick(Sender: TObject);
    procedure TaskEditNumberComboBoxChange(Sender: TObject);
    procedure RecEditionButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  FileWithTasks = 'Tasks.desc';

var
  AddNewTaskForm: TAddNewTaskForm;

implementation

{$R *.fmx}

uses eulerproj;

procedure TAddNewTaskForm.EditTaskButtonClick(Sender: TObject);
var
  AllTasks: file of TaskDescript;
  Tasks: TList<TaskDescript>;
  TaskHlpr: TaskDescript;
  i: integer;
begin
  Tasks := TList<TaskDescript>.Create;
  Tasks.Clear;
  AssignFile(AllTasks, FileWithTasks);
  Reset(AllTasks);
  while not eof(AllTasks) do
  begin
    Read(AllTasks, TaskHlpr);
    Tasks.Add(TaskHlpr);
    TaskEditNumberComboBox.Items.Add(TaskHlpr.TaskNum.ToString);
  end;
  CloseFile(AllTasks);
  TaskNumberEdit.Visible := False;
  TaskEditNumberComboBox.Visible := True;
  ReturnButton.Visible := False;
  Tasks.Destroy;
end;

procedure TAddNewTaskForm.FormCreate(Sender: TObject);
begin
  TaskNumberEdit.Text := TaskHlpr.TaskNum.ToString;
end;

procedure TAddNewTaskForm.RecEditionButtonClick(Sender: TObject);
var
  i: integer;
  AllTasks: file of TaskDescript;
  Tasks: TList<TaskDescript>;
  TaskHlpr: TaskDescript;
begin
  TaskEditNumberComboBox.Locked := True;
  RecEditionButton.Visible := True;
  i := TaskNumberEdit.Text.ToInteger;
  Tasks := TList<TaskDescript>.Create;
  Tasks.Clear;
  AssignFile(AllTasks, FileWithTasks);
  Reset(AllTasks);
  while not eof(AllTasks) do
  begin
    Read(AllTasks, TaskHlpr);
    if TaskHlpr.TaskNum = i then
    begin
      TaskHlpr.TaskText := TaskDescriptionEdit.Text;
      TaskHlpr.ParamAmount := StrToInt(ParamsAmountEdit.Text);
    end;
    Tasks.Add(TaskHlpr);
  end;
  CloseFile(AllTasks);
  Rewrite(AllTasks);
  for i := 0 to Tasks.Count - 1 do
  begin
    TaskHlpr := Tasks[i];
    Write(AllTasks, TaskHlpr);
  end;
  CloseFile(AllTasks);
  Tasks.Destroy;
  ReturnButton.Visible := True;
  RecEditionButton.Visible := False;
  TaskEditNumberComboBox.Locked := False;
  TaskEditNumberComboBox.Visible := False;
  TaskNumberEdit.Visible := True;
  TaskNumberEdit.ReadOnly := False;
  Form1.Show;
  AddNewTaskForm.Hide;
end;

procedure TAddNewTaskForm.ReturnButtonClick(Sender: TObject);
// type TaskDescript=record
// TaskNum:integer;
// TaskText:string[254];
// ParamAmount:integer;
// end;
var
  f: file of TaskDescript;
  a, b: TaskDescript;
begin
  RecEditionButton.Visible := False;
  TaskHlpr.TaskText := TaskDescriptionEdit.Text;
  TaskHlpr.ParamAmount := ParamsAmountEdit.Text.ToInteger;
  a.TaskNum := TaskNumberEdit.Text.ToInteger;
  a.TaskText := TaskHlpr.TaskText;
  Try
    a.ParamAmount := TaskHlpr.ParamAmount;
  Except
    ParamErrorLabel.Text := 'Positive integer required'
  End;
  if not(a.TaskText = '') then
  begin
    AssignFile(f, 'Tasks.desc');
    Reset(f);
    while not eof(f) do
      Read(f, b);
    write(f, a);
    CloseFile(f);
    AddNewTaskForm.Hide;
    Form1.Show
  end;
end;

procedure TAddNewTaskForm.TaskEditNumberComboBoxChange(Sender: TObject);
var
  i: integer;
  AllTasks: file of TaskDescript;
  Tasks: TList<TaskDescript>;
  TaskHlpr: TaskDescript;
begin
  TaskEditNumberComboBox.Locked := True;
  RecEditionButton.Visible := True;
  i := TaskEditNumberComboBox.Items[TaskEditNumberComboBox.ItemIndex].ToInteger;
  TaskEditNumberComboBox.Visible := False;
  TaskNumberEdit.Text := i.ToString;
  TaskNumberEdit.Visible := True;
  TaskNumberEdit.ReadOnly := True;
  Tasks := TList<TaskDescript>.Create;
  Tasks.Clear;
  AssignFile(AllTasks, FileWithTasks);
  Reset(AllTasks);
  while not eof(AllTasks) do
  begin
    Read(AllTasks, TaskHlpr);
    Tasks.Add(TaskHlpr);
    if TaskHlpr.TaskNum = i then
    begin
      TaskDescriptionEdit.Text := TaskHlpr.TaskText;
      ParamsAmountEdit.Text := TaskHlpr.ParamAmount.ToString;
    end;
  end;
  CloseFile(AllTasks);
  Tasks.Destroy;
end;

end.
