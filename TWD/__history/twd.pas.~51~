unit twd;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.DataSet, Data.Bind.Components, Data.Bind.DBScope,
  Data.Bind.Controls, System.Rtti, FMX.Grid.Style, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Grid, FMX.Controls.Presentation, FMX.ScrollBox,
  FMX.Grid, FMX.Layouts, Fmx.Bind.Navigator, FMX.StdCtrls, Generics.Collections,
  FMX.ListBox, FMX.DateTimeCtrls, FMX.Edit, DateUtils;

const
  LAYOUTWIDTH = 1064;
  LAYOUTHEIGHT = 469;
  BL: array [0..10] of string = ('"walkers_killed"', '"raiders_defeated"',
  '"missions_played"', '"missions_completed"', '"shots_fired"',
  '"stash_collected"', '"total_power_heroes"', '"total_power_weapons"',
  '"cards_collected"', '"survivors_rescued"', '"level"');
  allowed: set of char = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
  #8, #46, #37, #39];

type
  TForm1 = class(TForm)
    TWDConnection: TFDConnection;
    PostgresDriverLink: TFDPhysPgDriverLink;
    GroupListQuery: TFDQuery;
    DataSource1: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    SeasonsQuery: TFDQuery;
    TargetComboBox: TComboBox;
    SeasonActionComboBox: TComboBox;
    SeasonAddLayout: TLayout;
    SeasonAddNameEdit: TEdit;
    SeasonNameLabel: TLabel;
    SeasonRoundsLabel: TLabel;
    SeasonStartDateEdit: TDateEdit;
    SeasonStartLabel: TLabel;
    SeasonRoundsComboBox: TComboBox;
    SeasonEditLayout: TLayout;
    SeasonStringGrid: TStringGrid;
    BindSourceDB2: TBindSourceDB;
    SeasonAddButton: TButton;
    SeasonStart2DateEdit: TDateEdit;
    SeasonStart3DateEdit: TDateEdit;
    SeasonStart4DateEdit: TDateEdit;
    SeasonStart5DateEdit: TDateEdit;
    SeasonStart6DateEdit: TDateEdit;
    SeasonFinishDateEdit: TDateEdit;
    SeasonFinishLabel: TLabel;
    SeasonStart3Label: TLabel;
    SeasonStart6Label: TLabel;
    SeasonStart5Label: TLabel;
    SeasonStart4Label: TLabel;
    SeasonStart2Label: TLabel;
    WarningSeasonAddLabel: TLabel;
    WorkQuery: TFDQuery;
    GroupActionComboBox: TComboBox;
    WarningGroupAddLabel: TLabel;
    GroupEditLayout: TLayout;
    BindSourceDB3: TBindSourceDB;
    GroupEditStringGrid: TStringGrid;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    GroupRenameLabel: TLabel;
    GroupRenameButton: TButton;
    GroupNewNameEdit: TEdit;
    GroupEditUpdateButton: TButton;
    GroupEditRemoveButton: TButton;
    GroupRemoveLabel: TLabel;
    GroupRemoveConfirmButton: TButton;
    GroupRemoveConfirmLabel: TLabel;
    SeasonsDataSource: TDataSource;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    SeasonDeleteLabel: TLabel;
    SeasonRemoveButton: TButton;
    SeasonRemoveConfirmLabel: TLabel;
    SeasonRemoveConfirmButton: TButton;
    SeasonEditLabel: TLabel;
    SeasonEditButton: TButton;
    SeasonUpdateButton: TButton;
    SeasonUpdateLabel: TLabel;
    SeasonUpdateCancelButton: TButton;
    PlayerLayout: TLayout;
    PlayerQuery: TFDQuery;
    PlayerDataSource: TDataSource;
    PlayerStringGrid: TStringGrid;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    PlayerActionComboBox: TComboBox;
    PlayerEditLabel: TLabel;
    PlayerEditButton: TButton;
    PlayerEditCancelButton: TButton;
    PlayerNameEdit: TEdit;
    PlayerEditEnterLabel: TLabel;
    PlayerUpdateButton: TButton;
    PlayerUpdateCancelButton: TButton;
    PlayerAddLabel: TLabel;
    PlayerAddButton: TButton;
    PlayerAddCancelButton: TButton;
    PlayerAddConfirmLabel: TLabel;
    PlayerAddConfirmButton: TButton;
    PlayerAddConfirmCancelButton: TButton;
    PlayerRemoveLabel: TLabel;
    PlayerRemoveButton: TButton;
    PlayerRemoveCancelButton: TButton;
    CheckDuplicatesButton: TButton;
    PlayerMergeLabel: TLabel;
    Player1MergeEdit: TEdit;
    Player2MergeEdit: TEdit;
    Player1NameMergeEdit: TEdit;
    Player2NameMergeEdit: TEdit;
    Player1MergeLabel: TLabel;
    Player2MergeLabel: TLabel;
    PlayerMergeButton: TButton;
    PlayerMergeCancelButton: TButton;
    SeasonAddCancelButton: TButton;
    StatActionComboBox: TComboBox;
    StatLayout: TLayout;
    StatDate2DateEdit: TDateEdit;
    StatGroupComboBox: TComboBox;
    StatGroupLabel: TLabel;
    StatDate1Label: TLabel;
    StatShowButton: TButton;
    StatWeekQuery: TFDQuery;
    StatWeekStringGrid: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    StringColumn3: TStringColumn;
    StringColumn4: TStringColumn;
    StringColumn5: TStringColumn;
    StringColumn6: TStringColumn;
    StringColumn7: TStringColumn;
    StringColumn8: TStringColumn;
    StringColumn9: TStringColumn;
    StringColumn10: TStringColumn;
    StringColumn11: TStringColumn;
    StringColumn12: TStringColumn;
    StringColumn13: TStringColumn;
    ColumnDeleteLabel: TLabel;
    ColumnDeleteDateEdit: TDateEdit;
    ColumnDeleteConfirmButton: TButton;
    ColumnDeleteCancelButton: TButton;
    SeasonEditCancelButton: TButton;
    SeasonRemoveCancelButton: TButton;
    GroupRemoveCancelButton: TButton;
    GroupAddLabel: TLabel;
    GroupAddEdit: TEdit;
    GroupAddButton: TButton;
    GroupAddCancelButton: TButton;
    GroupRenameCancelButton: TButton;
    StatWeekReturnButton: TButton;
    StatSeasonGroupLabel: TLabel;
    StatSeasonGroupComboBox: TComboBox;
    StatSeasonReturnButton: TButton;
    procedure TargetComboBoxMouseEnter(Sender: TObject);
    procedure TargetComboBoxChange(Sender: TObject);
    procedure SeasonActionComboBoxMouseEnter(Sender: TObject);
    procedure SeasonActionComboBoxChange(Sender: TObject);
    procedure SeasonRoundsComboBoxChange(Sender: TObject);
    procedure SeasonStartDateEditChange(Sender: TObject);
    procedure SeasonAddNameEditKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure SeasonAddNameEditChange(Sender: TObject);
    procedure SeasonAddButtonClick(Sender: TObject);
    procedure GroupActionComboBoxMouseEnter(Sender: TObject);
    procedure GroupActionComboBoxChange(Sender: TObject);
    procedure GroupAddEditKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure GroupAddEditChange(Sender: TObject);
    procedure GroupAddButtonClick(Sender: TObject);
    procedure GroupRenameButtonClick(Sender: TObject);
    procedure GroupEditUpdateButtonClick(Sender: TObject);
    procedure GroupEditRemoveButtonClick(Sender: TObject);
    procedure GroupRemoveConfirmButtonClick(Sender: TObject);
    procedure SeasonRemoveButtonClick(Sender: TObject);
    procedure SeasonRemoveConfirmButtonClick(Sender: TObject);
    procedure SeasonEditButtonClick(Sender: TObject);
    procedure SeasonUpdateButtonClick(Sender: TObject);
    procedure SeasonUpdateCancelButtonClick(Sender: TObject);
    procedure PlayerActionComboBoxMouseEnter(Sender: TObject);
    procedure PlayerActionComboBoxChange(Sender: TObject);
    procedure PlayerEditButtonClick(Sender: TObject);
    procedure PlayerEditCancelButtonClick(Sender: TObject);
    procedure PlayerUpdateCancelButtonClick(Sender: TObject);
    procedure PlayerUpdateButtonClick(Sender: TObject);
    procedure PlayerAddCancelButtonClick(Sender: TObject);
    procedure PlayerAddButtonClick(Sender: TObject);
    procedure PlayerAddConfirmButtonClick(Sender: TObject);
    procedure PlayerAddConfirmCancelButtonClick(Sender: TObject);
    procedure PlayerRemoveCancelButtonClick(Sender: TObject);
    procedure PlayerRemoveButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckDuplicatesButtonClick(Sender: TObject);
    procedure Player1MergeEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Player2MergeEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure PlayerMergeCancelButtonClick(Sender: TObject);
    procedure PlayerMergeButtonClick(Sender: TObject);
    procedure Player1MergeEditChange(Sender: TObject);
    procedure Player1MergeEditKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure Player2MergeEditChange(Sender: TObject);
    procedure Player2MergeEditKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure SeasonAddCancelButtonClick(Sender: TObject);
    procedure StatActionComboBoxMouseEnter(Sender: TObject);
    procedure StatActionComboBoxChange(Sender: TObject);
    procedure StatGroupComboBoxChange(Sender: TObject);
    procedure StatDate2DateEditChange(Sender: TObject);
    procedure StatShowButtonClick(Sender: TObject);
    procedure ColumnDeleteConfirmButtonClick(Sender: TObject);
    procedure SeasonEditCancelButtonClick(Sender: TObject);
    procedure SeasonRemoveCancelButtonClick(Sender: TObject);
    procedure GroupRemoveCancelButtonClick(Sender: TObject);
    procedure GroupAddCancelButtonClick(Sender: TObject);
    procedure GroupRenameCancelButtonClick(Sender: TObject);
    procedure StatWeekReturnButtonClick(Sender: TObject);
    procedure StatSeasonReturnButtonClick(Sender: TObject);
    procedure StatSeasonGroupComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function chdt(dat: TDate): string;
function chstrtodate(str: string): TDate;
procedure SecComboMO(var ComBox: TComboBox);
procedure checkNewPlayers(var chks1, chks2: Tlist<integer>; var WorkQuery: TFDQuery);
function setForm (plrs: TList<integer>): string;
function downToThursday (dat: TDate): TDate;

var
  Form1: TForm1;
  target, actn, nameGlob: string;
  amnt, idGlob: integer;
  strt, s2, s3, s4, s5, s6, fin: TDate;
  list1, list2: TList<integer>;
  plrsAll: TDictionary<integer, string>;

implementation

{$R *.fmx}

function setForm (plrs: TList<integer>): string;
var i: integer;
begin
  result:= '(';
  for i := 0 to plrs.Count - 2 do
    result:= result + plrs[i].ToString + ', ';
  result:= result + plrs[plrs.Count - 1].ToString + ')';
end;

function chstrtodate(str: string): TDate;
var m, d, y: string;
    i: integer;
begin
  m:= '';
  i:= 1;
  while str[i] <> '/' do
  begin
    m:= m + str[i];
    i:= i + 1
  end;
  i:= i + 1;
  d:= '';
  while str[i] <> '/' do
  begin
    d:= d + str[i];
    i:= i + 1
  end;
  i:= i + 1;
  y:= '';
  while i <= length(str) do
  begin
    y:= y + str[i];
    i:= i + 1
  end;
  result:= EncodeDate(y.ToInteger, m.ToInteger, d.ToInteger)
end;

function chdt(dat: TDate): string;
var y, m, d: word;
begin
  result:= '';
  DecodeDate(dat, y, m, d);
  result:=y.ToString + '-';
  if m < 10
  then
    result:= result + '0' + m.ToString + '-'
  else
    result:= result + m.ToString + '-';
  if d < 10
  then
    result:= result + '0' + d.ToString
  else
    result:= result + d.ToString
end;

function downToThursday (dat: TDate): TDate;
begin
  result:= dat;
  while DayOfTheWeek(result) <> DayThursday do
    result:= result - 1
end;

procedure SecComboMO(var ComBox: TComboBox);
var i: integer;
begin
  ComBox.Items.Add('Add');
  ComBox.Items.Add('Remove');
  ComBox.Items.Add('Edit');
  for i:= 0 to ComBox.Count - 1 do
    begin
      ComBox.ListBox.ListItems[i].TextSettings.Font.Size:= 15;
      ComBox.ListBox.ListItems[i].StyledSettings:= ComBox.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
    end;
end;

procedure checkNewPlayers(var chks1, chks2: Tlist<integer>; var WorkQuery: TFDQuery);
type summary = record
     id: integer;
     first: integer;
     last: integer;
     ld: string;
     weeksInterval: integer;
     weeksTimeout: integer
     end;
     weekstat = record
     id: integer;
     wk: integer;
     rd: integer;
     mp: integer;
     mc: integer;
     sf: integer;
     sc: integer;
     tph: integer;
     tpw: integer;
     cc: integer;
     sr: integer;
     l: integer
     end;
var dat: TDate;
    plN, grN: TDictionary<string, string>;
    datSQL, st, st1, n1, n2: string;
    i, j, k, flds, fieldIndex: integer;
    diff: real;
    flag: boolean;
    chks1_1: TList<integer>;
    player: summary;
    players: TList<summary>;
    pl1: weekstat;
    fout: TextFile;
begin
  plN:= TDictionary<string, string>.Create;
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "players" ORDER BY "Id"';
  WorkQuery.Open();
  while not WorkQuery.Eof do
  begin
    plN.Add(WorkQuery.Fields[0].AsString, WorkQuery.Fields[1].AsString);
    WorkQuery.Next
  end;
  grN:= TDictionary<string, string>.Create;
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "Groups" ORDER BY "Id"';
  WorkQuery.Open();
  while not WorkQuery.Eof do
  begin
    grN.Add(WorkQuery.Fields[0].AsString, WorkQuery.Fields[1].AsString);
    WorkQuery.Next
  end;
  chks1.Clear;
  chks2.Clear;
  dat:= now;
//  dat:= EncodeDate(2021, 9, 23);
  while DayOfWeek(dat) <> 5 do
    dat:= IncDay(dat, -1);
  datSQL:=chdt(dat);
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "teams" WHERE "' + datSQL + '" IS NOT NULL ORDER BY "player"';
  WorkQuery.Open();
  flds:= WorkQuery.FieldCount;
  fieldIndex:= WorkQuery.FieldByName(datSQL).Index;
  while not WorkQuery.Eof do
  begin
    flag:= true;
    i := 1;
    while (i <= fieldIndex - 1) and flag do
    begin
      if WorkQuery.Fields[i].AsString <> '' then flag:= False;
      i:= i + 1
    end;
    if flag then chks1.Add(WorkQuery.Fields[0].AsInteger);
    WorkQuery.Next
  end;
  if chks1.Count <> 0 then
  begin
    WorkQuery.Close;
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'SELECT * FROM "teams" WHERE "' + datSQL + '" IS NULL ORDER BY "player"';
    WorkQuery.Open();
    while not WorkQuery.Eof do
    begin
      chks2.Add(WorkQuery.Fields[0].AsInteger);
      WorkQuery.Next
    end;
    WorkQuery.Close;
    WorkQuery.SQL.Clear;
    ShowMessage(chks1.Count.ToString);
    WorkQuery.SQL.Text:= 'SELECT "player", "' + datSQL + '" FROM "missions_completed" WHERE "player" IN ' +
    setForm(chks1) + ' ORDER BY "player"';
    WorkQuery.Open();
    chks1_1:= TList<integer>.Create;
    chks1_1.Clear;
    chks1.Clear;
    while not WorkQuery.Eof do
    begin
      chks1.Add(WorkQuery.Fields[0].AsInteger);
      chks1_1.Add(WorkQuery.Fields[1].Asinteger);
      WorkQuery.Next
    end;
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'SELECT * FROM "missions_completed" WHERE "player" IN ' +
    setForm(chks2) +' ORDER BY "player"';
    WorkQuery.Open();
    flag:= (fieldIndex < (WorkQuery.Fields.Count - 1));
    players:= TList<summary>.Create;
    players.Clear;
    while not WorkQuery.Eof do
    begin
      i:= fieldIndex - 1;
      while WorkQuery.Fields[i].AsString = '' do
        i:= i - 1;
      j:= 1;
      while WorkQuery.Fields[i].AsString = '' do
        j:= j + 1;
      if flag
      then
      begin
        st:= '';
        for k:= fieldIndex + 1 to WorkQuery.Fields.Count - 1 do
          st:= st + WorkQuery.Fields[k].AsString;
      end;
      player.id:= WorkQuery.Fields[0].AsInteger;
      player.first:= WorkQuery.Fields[j].AsInteger;
      player.last:=WorkQuery.Fields[i].AsInteger;
      player.ld:= WorkQuery.Fields[i].DisplayName;
      player.weeksInterval:= i - j;
      player.weeksTimeout:= WorkQuery.Fields.Count - 1 - i;
      if not flag or (st = '') then
        Players.Add(player);
      WorkQuery.Next
    end;
    st:= '';
    for i:= 0 to chks1.Count - 1 do
    begin
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'SELECT "walkers_killed"."player", ';
      for k:= 0 to 9 do
        WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[k] + '."' + datSQL + '", ';
      WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[10] + '."' + datSQL + '" FROM ';
      for k:= 0 to 9 do
        WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[k] + ', ';
      WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[10] + ' WHERE ';
      for k:= 0 to 9 do
        WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[k] + '."player" = ' + chks1[i].ToString + ' AND ';
      WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[10] + '."player" = ' + chks1[i].ToString;
      WorkQuery.Open();
      pl1.id:= WorkQuery.Fields[0].AsInteger;
      pl1.wk:= WorkQuery.Fields[1].AsInteger;
      pl1.rd:= WorkQuery.Fields[2].AsInteger;
      pl1.mp:= WorkQuery.Fields[3].AsInteger;
      pl1.mc:= WorkQuery.Fields[4].AsInteger;
      pl1.sf:= WorkQuery.Fields[5].AsInteger;
      pl1.sc:= WorkQuery.Fields[6].AsInteger;
      pl1.tph:= WorkQuery.Fields[7].AsInteger;
      pl1.tpw:= WorkQuery.Fields[8].AsInteger;
      pl1.cc:= WorkQuery.Fields[9].AsInteger;
      pl1.sr:= WorkQuery.Fields[10].AsInteger;
      pl1.l:= WorkQuery.Fields[11].AsInteger;
      WorkQuery.Close;
      for j:= 0 to players.Count - 1 do
        if chks1_1[i] >= players[j].last
        then
        begin
          if players[j].weeksInterval <> 0
          then
            diff:= (players[j].last - players[j].first) / players[j].weeksInterval
          else
            diff:= players[j].last / 45;
          WorkQuery.SQL.Clear;
          WOrkQuery.SQL.Text:= 'SELECT ';
          for k:= 0 to 9 do
            WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[k] + '."' + players[j].ld + '", ';
          WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[10] + '."' + players[j].ld + '" FROM ';
          for k:= 0 to 9 do
            WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[k] + ', ';
          WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[10] + ' WHERE ';
          for k:= 0 to 9 do
            WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[k] + '."player" = ' + players[j].id.ToString + ' AND ';
          WorkQuery.SQL.Text:= WorkQuery.SQL.Text + BL[10] + '."player" = ' + players[j].id.ToString;
          WorkQuery.Open();
          if (pl1.wk >= WorkQuery.Fields[0].AsInteger) and (pl1.rd >= WorkQuery.Fields[1].AsInteger) and
          (pl1.mp >= WorkQuery.Fields[2].AsInteger) and (pl1.mc >= WorkQuery.Fields[3].AsInteger) and
          (pl1.sf >= WorkQuery.Fields[4].AsInteger) and (pl1.sc >= WorkQuery.Fields[5].AsInteger) and
          (pl1.tph >= WorkQuery.Fields[6].AsInteger) and (pl1.tpw >= WorkQuery.Fields[7].AsInteger) and
          (pl1.cc >= WorkQuery.Fields[8].AsInteger) and (pl1.sr >= WorkQuery.Fields[9].AsInteger) and
          (pl1.l >= WorkQuery.Fields[10].AsInteger) then
            if (chks1_1[1] < players[j].last + players[j].weeksTimeout * diff * 1.15) and
            (chks1_1[1] > players[j].last + players[j].weeksTimeout * diff * 0.9)
            then
              st:= st + 'p' + chks1[i].ToString + '-' + players[j].id.ToString + ' '
            else
              if (chks1_1[1] < players[j].last + players[j].weeksTimeout * diff * 1.5) and
              (chks1_1[1] > players[j].last + players[j].weeksTimeout * diff * 0.7)
              then
                st:= st + 'd' + chks1[i].ToString + '-' + players[j].id.ToString + ' '
              else
                st:= st + 'v' + chks1[i].ToString + '-' + players[j].id.ToString + ' '
        end;
    end;
    Assign(fout, 'c:/1/1.txt');
    Rewrite(fout);
    writeln(fout, st);
    Writeln(fout, 'possible');
    i:= 1;
    while i < length(st) do
    begin
      st1:= '';
      while (st[i] <> ' ') and (i <> length(st)) do
      begin
        st1:= st1 + st[i];
        i:= i + 1
      end;
      if st1[1] = 'v' then
        i:= i;
      i:= i + 1;
      if st1[1] = 'p' then
      begin
        j:= 2;
        n1:= '';
        while st1[j] <> '-' do
        begin
          n1:= n1 + st1[j];
          j:= j + 1
        end;
        j:= j + 1;
        n2:= '';
        while j <= length(st1) do
        begin
          n2:= n2 + st1[j];
          j:= j + 1
        end;
        st1:= n1 + ' ' + plN[n1] + ' ';
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'SELECT "' + datSQL + '" FROM "teams" WHERE "player" = ' + n1;
        WorkQuery.Open();
        st1:= st1 + grN[WorkQuery.Fields[0].AsString] + ' and ' + n2 + ' ' + plN[n2] + ' ';
        k:= 0;
        while players[k].id <> n2.toInteger do
          k:= k + 1;
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'SELECT "' + players[k].ld + '" FROM "teams" WHERE "player" = ' + n2;
        WorkQuery.Open();
        st1:= st1 + grN[WorkQuery.Fields[0].AsString] + ' ' + players[k].ld;
        Writeln(fout, st1)
      end;
    end;
    Close(fout);
  end
  else
    ShowMessage('No new players this week')
end;

procedure TForm1.SeasonAddCancelButtonClick(Sender: TObject);
begin
  SeasonActionComboBox.ItemIndex:= 0;
  SeasonEditLayout.Visible:= False;
  SeasonEditLayout.Enabled:= False;
  SeasonActionComboBox.Enabled:= False;
  SeasonActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  SeasonAddLayout.Visible:= False;
  SeasonAddLayout.Enabled:= False;
  SeasonAddButton.Visible:= False;
  SeasonAddButton.Enabled:= False;
  SeasonAddCancelButton.Visible:= False;
  SeasonAddCancelButton.Enabled:= False;
end;

procedure TForm1.CheckDuplicatesButtonClick(Sender: TObject);
begin
checkNewPlayers(list1, list2, WorkQuery);
end;

procedure TForm1.Player1MergeEditChange(Sender: TObject);
var i: integer;
    key: word;
    keychar: char;
begin
  if Player1MergeEdit.Text = ''
  then
    Player1NameMergeEdit.Text:= ''
  else
  begin
    i:= Player1MergeEdit.Text.ToInteger;
    if plrsAll.ContainsKey(i)
    then
      Player1NameMergeEdit.Text:= plrsAll[i]
    else
    begin
      key:= vkBack;
      keychar:= #8;
      Player1MergeEdit.SetFocus;
      Focused.KeyDown(Key, KeyChar, [])
    end;
  end;
  if (Player1NameMergeEdit.Text = '') or (Player2NameMergeEdit.Text = '') or
  (Player1MergeEdit.Text = Player2MergeEdit.Text)
  then
    PlayerMergeButton.Enabled:= False
  else
    PlayerMergeButton.Enabled:= True
end;

procedure TForm1.Player1MergeEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if not (KeyChar in allowed) then
    KeyChar:= #0
end;

procedure TForm1.Player1MergeEditKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var i: integer;
begin
  if Player1MergeEdit.Text = ''
  then
    Player1NameMergeEdit.Text:= ''
  else
  begin
    i:= Player1MergeEdit.Text.ToInteger;
    if plrsAll.ContainsKey(i)
    then
      Player1NameMergeEdit.Text:= plrsAll[i]
    else
    begin
      key:= vkBack;
      keychar:= #8;
      Player1MergeEdit.SetFocus;
      Focused.KeyDown(Key, KeyChar, [])
    end;
  end;
  if (Player1NameMergeEdit.Text = '') or (Player2NameMergeEdit.Text = '') or
  (Player1MergeEdit.Text = Player2MergeEdit.Text)
  then
    PlayerMergeButton.Enabled:= False
  else
    PlayerMergeButton.Enabled:= True
end;


procedure TForm1.Player2MergeEditChange(Sender: TObject);
var i: integer;
    key: word;
    keychar: char;
begin
  if Player2MergeEdit.Text = ''
  then
    Player2NameMergeEdit.Text:= ''
  else
  begin
    i:= Player2MergeEdit.Text.ToInteger;
    if plrsAll.ContainsKey(i)
    then
      Player2NameMergeEdit.Text:= plrsAll[i]
    else
    begin
      key:= vkBack;
      keychar:= #8;
      Player2MergeEdit.SetFocus;
      Focused.KeyDown(Key, KeyChar, [])
    end;
  end;
  if (Player1NameMergeEdit.Text = '') or (Player2NameMergeEdit.Text = '') or
  (Player1MergeEdit.Text = Player2MergeEdit.Text)
  then
    PlayerMergeButton.Enabled:= False
  else
    PlayerMergeButton.Enabled:= True
end;

procedure TForm1.Player2MergeEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if not (KeyChar in allowed) then
    KeyChar:= #0
end;

procedure TForm1.Player2MergeEditKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var i: integer;
begin
  if Player2MergeEdit.Text = ''
  then
    Player2NameMergeEdit.Text:= ''
  else
  begin
    i:= Player2MergeEdit.Text.ToInteger;
    if plrsAll.ContainsKey(i)
    then
      Player2NameMergeEdit.Text:= plrsAll[i]
    else
    begin
      key:= vkBack;
      keychar:= #8;
      Player2MergeEdit.SetFocus;
      Focused.KeyDown(Key, KeyChar, [])
    end;
  end;
  if (Player1NameMergeEdit.Text = '') or (Player2NameMergeEdit.Text = '') or
  (Player1MergeEdit.Text = Player2MergeEdit.Text)
  then
    PlayerMergeButton.Enabled:= False
  else
    PlayerMergeButton.Enabled:= True
end;

procedure TForm1.ColumnDeleteConfirmButtonClick(Sender: TObject);
var dat: TDate;
    chk, datstr: string;
    exist: boolean;
begin
  ColumnDeleteConfirmButton.Enabled:= False;
  ColumnDeleteCancelButton.Enabled:= False;
  dat:= ColumnDeleteDateEdit.Date;
  datstr:= chdt(dat);
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "teams" WHERE "player" = 10';
  WorkQuery.Open();
  exist:= False;
  try
    chk:= WorkQuery.FieldByName(datstr).AsString;
    exist:= True
  except
    ShowMessage('No such date in the baes!');
    ColumnDeleteConfirmButton.Enabled:= True;
    ColumnDeleteCancelButton.Enabled:= True
  end;
  if exist
  then
  begin
    if DayOfTheWeek(dat) = DayThursday
    then
    begin
      ShowMessage('This date is Thursday. For a while it'' s not allowed to delete Thursday!"');
      ColumnDeleteConfirmButton.Enabled:= True;
      ColumnDeleteCancelButton.Enabled:= True
    end
    else
    begin
      for chk in BL do
      begin
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'ALTER TABLE ' + chk + 'DROP COLUMN "' + datstr + '"';
        WorkQuery.ExecSQL
      end;
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'ALTER TABLE "teams" DROP COLUMN "' + datstr + '"';
      WorkQuery.ExecSQL;
      ColumnDeleteLabel.Visible:= False;
      ColumnDeleteDateEdit.Visible:= False;
      ColumnDeleteDateEdit.Enabled:= False;
      ColumnDeleteConfirmButton.Visible:= False;
      ColumnDeleteConfirmButton.Enabled:= False;
      ColumnDeleteCancelButton.Visible:= False;
      ColumnDeleteCancelButton.Enabled:= False;
      SeasonActionComboBox.ItemIndex:= 0;
      SeasonEditLayout.Visible:= False;
      SeasonEditLayout.Enabled:= False;
      SeasonActionComboBox.Visible:= False;
      SeasonActionComboBox.Enabled:= False;
      TargetComboBox.ItemIndex:= 0;
      TargetComboBox.Enabled:= True;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
list1:= TList<integer>.Create;
list2:= TList<integer>.Create
end;

procedure TForm1.GroupActionComboBoxChange(Sender: TObject);
var actn: string;
begin
  actn:= GroupActionComboBox.Items[GroupActionComboBox.ItemIndex];
  GroupActionComboBox.Enabled:= False;
  GroupListQuery.Close;
  GroupListQuery.Open();
  if actn = 'Add'
  then
  begin
    GroupAddEdit.Visible:= True;
    GroupAddEdit.Enabled:= True;
    GroupAddLabel.Visible:= True;
    GroupAddButton.Visible:= True;
    GroupAddButton.Enabled:= False;
    GroupAddCancelButton.Visible:= True;
    GroupAddCancelButton.Enabled:= True
  end;
  if (actn = 'Edit') or (actn = 'Remove')
  then
  begin
    GroupEditLayout.Visible:= True;
    GroupEditLayout.Enabled:= True;
    GroupListQuery.Active:= True;
    GroupEditStringGrid.Col:= 0;
    GroupEditStringGrid.Row:= 0;
    GroupEditStringGrid.Enabled:= True;
    GroupEditStringGrid.Visible:= True;
    GroupEditUpdateButton.Enabled:= False;
    GroupEditUpdateButton.Visible:= False;
    if actn = 'Edit'
    then
    begin
      GroupRenameButton.Position.X:= 440;
      GroupRenameButton.Position.Y:= 353;
      GroupRenameButton.Visible:= True;
      GroupRenameButton.Enabled:= True;
      GroupRenameCancelButton.Visible:= True;
      GroupRenameCancelButton.Enabled:= True;
      GroupRenameLabel.Position.X:= 192;
      GroupRenameLabel.Position.Y:= 8;
      GroupRenameLabel.Visible:= True
    end
    else
    begin
      GroupEditRemoveButton.Position.X:= 240;
      GroupEditRemoveButton.Position.Y:= 363;
      GroupEditRemoveButton.Visible:= True;
      GroupEditRemoveButton.Enabled:= True;
      GroupRemoveCancelButton.Position.X:= 540;
      GroupRemoveCancelButton.Position.Y:= 363;
      GroupRemoveCancelButton.Visible:= True;
      GroupRemoveCancelButton.Enabled:= True;
      GroupRemoveLabel.Position.X:= 192;
      GroupRemoveLabel.Position.Y:= 8;
      GroupRemoveLabel.Visible:= True
    end;
  end;
end;

procedure TForm1.GroupActionComboBoxMouseEnter(Sender: TObject);
begin
  if GroupActionComboBox.Count < 2
  then
    SecComboMO(GroupActionComboBox);
end;

procedure TForm1.GroupAddButtonClick(Sender: TObject);
var id: integer;
    nam: string;
    nams: TList<string>;
begin
  nam:= GroupAddEdit.Text;
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "Groups" ORDER BY "Id" DESC';
  WorkQuery.Open;
  nams:= TList<string>.Create;
  id:= WorkQuery.FieldByName('Id').AsInteger;
  while not WorkQuery.Eof do
  begin
    nams.Add(WorkQuery.FieldByName('Name').AsString);
    WorkQuery.Next
  end;
  inc(id);
  if not nams.Contains(nam)
  then
  begin
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'INSERT INTO "Groups" ("Id", "Name") VALUES (' + id.ToString + ', ''' +
    nam + ''')';
    try
      WorkQuery.ExecSQL;
      ShowMessage('Group "' + nam + ' successfully added.');
      GroupAddEdit.Visible:= False;
      GroupAddEdit.Enabled:= False;
      WarningGroupAddLabel.Visible:= False;
      GroupAddButton.Visible:= False;
      GroupAddButton.Enabled:= False
    except
      ShowMessage('Something went wrong');
      GroupAddEdit.Visible:= False;
      GroupAddEdit.Enabled:= False;
      WarningGroupAddLabel.Visible:= False;
      GroupAddButton.Visible:= False;
      GroupAddButton.Enabled:= False
    end
  end
  else
    ShowMessage('Group already exist. Id = ' + (id - 1).ToString + '. Try other name');
  GroupActionComboBox.Visible:= False;
  GroupActionComboBox.ItemIndex:= 0;
  GroupAddLabel.Visible:= False;
  GroupAddEdit.Visible:= False;
  GroupAddEdit.Enabled:= False;
  GroupAddButton.Visible:= False;
  GroupAddButton.Enabled:= False;
  GroupAddCancelButton.Visible:= False;
  GroupAddCancelButton.Enabled:= False;
  GroupActionComboBox.Visible:= False;
  GroupActionComboBox.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  nams.Destroy
end;

procedure TForm1.GroupAddCancelButtonClick(Sender: TObject);
begin
  GroupActionComboBox.ItemIndex:= 0;
  GroupAddLabel.Visible:= False;
  GroupAddEdit.Visible:= False;
  GroupAddEdit.Enabled:= False;
  GroupAddButton.Visible:= False;
  GroupAddButton.Enabled:= False;
  GroupAddCancelButton.Visible:= False;
  GroupAddCancelButton.Enabled:= False;
  GroupActionComboBox.Visible:= False;
  GroupActionComboBox.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
end;

procedure TForm1.GroupAddEditChange(Sender: TObject);
begin
  if length(GroupAddEdit.Text) <> 0
  then
  begin
    GroupAddButton.Position.X:= 428;
    GroupAddButton.Position.Y:= 592;
    GroupAddButton.Visible:= True;
    GroupAddButton.Enabled:= True;
    WarningGroupAddLabel.Position.X:= 251;
    WarningGroupAddLabel.Position.Y:= 472;
    WarningGroupAddLabel.Visible:= True
  end;
  if length(GroupAddEdit.Text) = 0
  then
  begin
    GroupAddButton.Enabled:= False;
    WarningGroupAddLabel.Visible:= False
  end
end;

procedure TForm1.GroupAddEditKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if length(GroupAddEdit.Text) <> 0
  then
  begin
    GroupAddButton.Enabled:= True;
  end;
  if length(GroupAddEdit.Text) = 0
  then
  begin
    GroupAddButton.Enabled:= False;
  end
end;

procedure TForm1.GroupEditRemoveButtonClick(Sender: TObject);
var lbl: string;
begin
  lbl:= 'If you are sure want to remove group ';
  idGlob:= GroupEditStringGrid.Cells[0, GroupEditStringGrid.Row].ToInteger;
  nameGlob:= GroupEditStringGrid.Cells[1, GroupEditStringGrid.Row];
  lbl:= lbl + nameGlob + ' press "Confirm" button!';
  GroupEditRemoveButton.Enabled:= False;
  GroupRemoveConfirmLabel.Text:= lbl;
  GroupRemoveConfirmLabel.Visible:= True;
  GroupRemoveConfirmLabel.Enabled:= True;
  GroupRemoveConfirmLabel.Text:= lbl;
  GroupRemoveConfirmButton.Position.X:= 440;
  GroupRemoveConfirmButton.Position.Y:= 468;
  GroupRemoveConfirmButton.Enabled:= True;
  GroupRemoveConfirmButton.Visible:= True;
  GroupActionComboBox.Visible:= False;
  GroupActionComboBox.ItemIndex:= 0;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True
end;

procedure TForm1.GroupEditUpdateButtonClick(Sender: TObject);
var nams: TList<string>;
    nam: string;
begin
  nam:= GroupNewNameEdit.Text;
  nams:= TList<string>.Create;
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT "Name" FROM "Groups"';
  WorkQuery.Open;
  while not WorkQuery.Eof do
  begin
    nams.Add(WorkQuery.FieldByName('Name').AsString);
    WorkQuery.Next
  end;
  if not nams.Contains(nam)
  then
  begin
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'UPDATE "Groups" SET "Name" = ''' + nam + ''' WHERE "Id" = ' + idGlob.ToString;
    try
      WorkQuery.ExecSQL;
      ShowMessage('Group # ' + idGlob.ToString + ' renamed successfully');
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'INSERT INTO "rename_history" ("OldName", "NewName", "Date", "Id") VALUES (''' +
      nameGlob + ''', ''' + nam + ''', ''' + chdt(Tdate(Now)) + ''', ' + idGlob.ToString + ')';
      ShowMessage(WorkQuery.SQL.Text);
      WorkQuery.ExecSQL;
    except
      ShowMessage('Something went wrong');
    end
  end
  else
    ShowMessage('Group ' + nam + ' already exist!');
  GroupActionComboBox.ItemIndex:= 0;
  GroupRenameLabel.Visible:= False;
  GroupEditStringGrid.Visible:= False;
  GroupEditStringGrid.Enabled:= False;
  GroupRenameButton.Visible:= False;
  GroupRenameButton.Enabled:= False;
  GroupRenameCancelButton.Visible:= False;
  GroupRenameCancelButton.Enabled:= False;
  GroupEditUpdateButton.Visible:= False;
  GroupEditUpdateButton.Enabled:= False;
  GroupNewNameEdit.Visible:= False;
  GroupNewNameEdit.Enabled:= False;
  GroupEditLayout.Visible:= False;
  GroupEditLayout.Enabled:= False;
  GroupActionComboBox.Enabled:= False;
  GroupActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
end;

procedure TForm1.GroupRemoveCancelButtonClick(Sender: TObject);
begin
  GroupActionComboBox.ItemIndex:= 0;
  GroupRemoveLabel.Visible:= False;
  GroupEditRemoveButton.Visible:= False;
  GroupEditRemoveButton.Enabled:= False;
  GroupRemoveCancelButton.Visible:= False;
  GroupRemoveCancelButton.Enabled:= False;
  GroupEditStringGrid.Visible:= False;
  GroupEditStringGrid.Enabled:= False;
  GroupActionComboBox.Visible:= False;
  GroupActionComboBox.Enabled:= False;
  GroupEditLayout.Visible:= False;
  GroupEditLayout.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True
end;

procedure TForm1.GroupRemoveConfirmButtonClick(Sender: TObject);
begin
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'DELETE FROM "Groups" WHERE "Id" = ' + idGlob.ToString;
  try
    WorkQuery.ExecSQL;
    ShowMessage('Group # ' + idGlob.ToString + ' removed successfully');
    WorkQuery.SQL.Clear
  except
    ShowMessage('Something went wrong')
  end;
  GroupRemoveConfirmButton.Visible:= False;
  GroupRemoveConfirmButton.Enabled:= False;
  GroupEditRemoveButton.Visible:= False;
  GroupEditRemoveButton.Enabled:= False;
  GroupRemoveConfirmLabel.Text:= '';
  GroupRemoveConfirmLabel.Visible:= False;
  GroupRemoveConfirmLabel.Enabled:= False;
  GroupEditRemoveButton.Visible:= False;
  GroupEditRemoveButton.Visible:= True;
  GroupActionComboBox.Visible:= False;
  TargetComboBox.Enabled:= True;
  GroupEditLayout.Visible:= False;
  GroupEditLayout.Enabled:= False
end;

procedure TForm1.GroupRenameButtonClick(Sender: TObject);
var id: integer;
    nam: string;
begin
  id:= GroupEditStringGrid.Cells[0, GroupEditStringGrid.Row].ToInteger;
  nam:= GroupEditStringGrid.Cells[1, GroupEditStringGrid.Row];
  idGlob:= id;
  nameGlob:= nam;
  GroupEditStringGrid.Enabled:= False;
  GroupRenameButton.Visible:= False;
  GroupRenameButton.Enabled:= False;
  GroupNewNameEdit.Position.X:= 387;
  GroupNewNameEdit.Position.Y:= 360;
  GroupNewNameEdit.Text:= nam;
  GroupNewNameEdit.Visible:= True;
  GroupNewNameEdit.Enabled:= True;
  GroupEditUpdateButton.Visible:= True;
  GroupEditUpdateButton.Enabled:= True;
end;

procedure TForm1.GroupRenameCancelButtonClick(Sender: TObject);
begin
  GroupActionComboBox.ItemIndex:= 0;
  GroupRenameLabel.Visible:= False;
  GroupEditStringGrid.Visible:= False;
  GroupEditStringGrid.Enabled:= False;
  GroupRenameButton.Visible:= False;
  GroupRenameButton.Enabled:= False;
  GroupRenameCancelButton.Visible:= False;
  GroupRenameCancelButton.Enabled:= False;
  GroupEditUpdateButton.Visible:= False;
  GroupEditUpdateButton.Enabled:= False;
  GroupNewNameEdit.Visible:= False;
  GroupNewNameEdit.Enabled:= False;
  GroupEditLayout.Visible:= False;
  GroupEditLayout.Enabled:= False;
  GroupActionComboBox.Enabled:= False;
  GroupActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
end;

procedure TForm1.PlayerActionComboBoxChange(Sender: TObject);
begin
  actn:= PlayerActionComboBox.Items[PlayerActionComboBox.ItemIndex];
  PlayerLayout.Visible:= True;
  PlayerLayout.Enabled:= True;
  PlayerActionComboBox.Enabled:= False;
  if actn = 'Edit'
  then
  begin
    PlayerEditLabel.Visible:= True;
    PlayerStringGrid.Visible:= True;
    PlayerStringGrid.Enabled:= True;
    PlayerQuery.Active:= True;
    PlayerEditButton.Position.X:= 364;
    PlayerEditButton.Position.Y:= 561;
    PlayerEditButton.Visible:= True;
    PlayerEditButton.Enabled:= True;
    PlayerEditCancelButton.Position.X:= 552;
    PlayerEditCancelButton.Position.Y:= 561;
    PlayerEditCancelButton.Visible:= True;
    PlayerEditCancelButton.Enabled:= True;
  end;
  if actn = 'Add'
  then
  begin
    PlayerNameEdit.Visible:= True;
    PlayerNameEdit.Enabled:= True;
    PlayerAddLabel.Visible:= True;
    PlayerAddButton.Visible:= True;
    PlayerAddButton.Enabled:= True;
    PlayerAddCancelButton.Visible:= True;
    PlayerAddCancelButton.Enabled:= True
  end;
  if actn = 'Remove'
  then
  begin
    PlayerStringGrid.Visible:= True;
    PlayerStringGrid.Enabled:= True;
    PlayerQuery.Active:= True;
    PlayerRemoveLabel.Visible:= True;
    PlayerRemoveLabel.Enabled:= True;
    PlayerRemoveButton.Visible:= True;
    PlayerRemoveButton.Enabled:= True;
    PlayerRemoveCancelButton.Visible:= True;
    PlayerRemoveCancelButton.Enabled:= True
  end;
  if actn = 'Merge two players' then
  begin
    plrsAll:= TDictionary<integer, string>.Create;
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'SELECT * FROM "players" ORDER BY "Id"';
    WorkQuery.Open();
    while not WorkQuery.Eof do
    begin
      plrsAll.Add(WorkQuery.Fields[0].AsInteger, WorkQuery.Fields[1].AsString);
      WorkQuery.Next
    end;
    PlayerMergeLabel.Visible:= True;
    Player1MergeLabel.Visible:= True;
    Player2MergeLabel.Visible:= True;
    Player1MergeEdit.Visible:= True;
    Player1MergeEdit.Enabled:= True;
    Player2MergeEdit.Visible:= True;
    Player2MergeEdit.Enabled:= True;
    Player1NameMergeEdit.Visible:= True;
    Player2NameMergeEdit.Visible:= True;
    PlayerMergeButton.Visible:= True;
    PlayerMergeButton.Enabled:= False;
    PlayerMergeCancelButton.Visible:= True;
    PlayerMergeCancelButton.Enabled:= True
  end;
end;

procedure TForm1.PlayerActionComboBoxMouseEnter(Sender: TObject);
begin
  if PlayerActionComboBox.Count < 2
  then
  begin
    SecComboMO(PlayerActionComboBox);
    PlayerActionComboBox.Items.Add('Merge two players');
    PlayerActionComboBox.ListBox.ListItems[4].TextSettings.Font.Size:= 15;
    PlayerActionComboBox.ListBox.ListItems[4].StyledSettings:= PlayerActionComboBox.ListBox.ListItems[4].StyledSettings - [TStyledSetting.Size];
  end;
end;

procedure TForm1.PlayerAddButtonClick(Sender: TObject);
var nams: TList<integer>;
    flag: boolean;
begin
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "players" ORDER BY "Id" DESC';
  WorkQuery.Open();
  nams:= TList<integer>.Create;
  idGlob:= WorkQuery.FieldByName('Id').AsInteger;
  idGlob:= idGlob + 1;
  nameGlob:= PlayerNameEdit.Text;
  while not WorkQuery.Eof do
  begin
    if nameGlob = WorkQuery.FieldByName('Name').AsString
    then
      nams.Add(WorkQuery.FieldByName('Id').AsInteger);
    WorkQuery.Next
  end;
  flag:= True;
  if nams.Count > 0
  then
  begin
    flag:= False;
    PlayerNameEdit.Enabled:= False;
    PlayerAddLabel.Visible:= False;
    PlayerAddButton.Enabled:= False;
    PlayerAddCancelButton.Enabled:= False;
    PlayerAddConfirmLabel.Text:= 'Player ''' + nameGlob + ''' alresdy exist ' +
    nams.Count.ToString + ' times! Add one more?';
    PlayerAddConfirmLabel.Visible:= True;
    PlayerAddConfirmLabel.Enabled:= True;
    PlayerAddConfirmButton.Visible:= True;
    PlayerAddConfirmButton.Enabled:= True;
    PlayerAddConfirmCancelButton.Visible:= True;
    PlayerAddConfirmCancelButton.Enabled:= True;
  end;
  if flag
  then
  begin
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'INSERT INTO "players" ("Id", "Name") VALUES (' +
    idGlob.ToString + ', ''' + nameGlob + ''')';
    try
      WorkQuery.ExecSQL;
      ShowMessage('Player "' + nameGlob + '" was added successfully.')
    except
      ShowMessage(('Something went wrong. Player was not added!'))
    end;
    PlayerActionComboBox.ItemIndex:= 0;
    PlayerActionComboBox.Enabled:= False;
    PlayerActionComboBox.Visible:= False;
    TargetComboBox.ItemIndex:= 0;
    TargetComboBox.Enabled:= True;
    PlayerLayout.Visible:= False;
    PlayerLayout.Enabled:= False;
    PlayerAddLabel.Visible:= False;
    PlayerNameEdit.Visible:= False;
    PlayerNameEdit.Enabled:= False;
    PlayerAddButton.Visible:= False;
    PlayerAddButton.Enabled:= False;
    PlayerAddCancelButton.Visible:= False;
    PlayerAddCancelButton.Enabled:= False;
  end
end;

procedure TForm1.PlayerAddCancelButtonClick(Sender: TObject);
begin
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Enabled:= False;
  PlayerActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerLayout.Visible:= False;
  PlayerLayout.Enabled:= False;
  PlayerAddLabel.Visible:= False;
  PlayerAddLabel.Enabled:= False;
  PlayerNameEdit.Enabled:= False;
  PlayerNameEdit.Visible:= False;
  PlayerAddButton.Visible:= False;
  PlayerAddButton.Enabled:= False;
  PlayerAddCancelButton.Enabled:= False;
  PlayerAddCancelButton.Visible:= False
end;

procedure TForm1.PlayerAddConfirmButtonClick(Sender: TObject);
begin
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'INSERT INTO "players" ("Id", "Name") VALUES (' +
  idGlob.ToString + ', ''' + nameGlob + ''')';
  try
    WorkQuery.ExecSQL;
    ShowMessage('Player "' + nameGlob + '" was added successfully.');
  finally
    ShowMessage('Something went wrong. Player was not added!');
  end;
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Enabled:= False;
  PlayerActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerLayout.Visible:= False;
  PlayerLayout.Enabled:= False;
  PlayerAddLabel.Visible:= False;
  PlayerNameEdit.Visible:= False;
  PlayerNameEdit.Enabled:= False;
  PlayerAddButton.Visible:= False;
  PlayerAddButton.Enabled:= False;
  PlayerAddCancelButton.Visible:= False;
  PlayerAddCancelButton.Enabled:= False;
  PlayerAddConfirmLabel.Visible:= False;
  PlayerAddConfirmButton.Visible:= False;
  PlayerAddConfirmButton.Enabled:= False;
  PlayerAddConfirmCancelButton.Visible:= False;
  PlayerAddConfirmCancelButton.Enabled:= False
end;

procedure TForm1.PlayerAddConfirmCancelButtonClick(Sender: TObject);
begin
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Enabled:= False;
  PlayerActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerLayout.Visible:= False;
  PlayerLayout.Enabled:= False;
  PlayerAddLabel.Visible:= False;
  PlayerNameEdit.Visible:= False;
  PlayerNameEdit.Enabled:= False;
  PlayerAddButton.Visible:= False;
  PlayerAddButton.Enabled:= False;
  PlayerAddCancelButton.Visible:= False;
  PlayerAddCancelButton.Enabled:= False;
  PlayerAddConfirmLabel.Visible:= False;
  PlayerAddConfirmButton.Visible:= False;
  PlayerAddConfirmButton.Enabled:= False;
  PlayerAddConfirmCancelButton.Visible:= False;
  PlayerAddConfirmCancelButton.Enabled:= False
end;

procedure TForm1.PlayerEditButtonClick(Sender: TObject);
var i: integer;
begin
  i:= PlayerStringGrid.Row;
  idGlob:= PlayerStringGrid.Cells[0, i].ToInteger;
  nameGlob:= PlayerStringGrid.Cells[1, i];
  PlayerStringGrid.Visible:= False;
  PlayerStringGrid.Enabled:= False;
  PlayerEditLabel.Visible:= False;
  PlayerEditButton.Visible:= False;
  PlayerEditButton.Enabled:= False;
  PlayerEditCancelButton.Visible:= False;
  PlayerEditCancelButton.Enabled:= False;
  PlayerEditEnterLabel.Visible:= True;
  PlayerNameEdit.Text:= nameGlob;
  PlayerNameEdit.Visible:= True;
  PlayerNameEdit.Enabled:= True;
  PlayerUpdateButton.Visible:= True;
  PlayerUpdateButton.Enabled:= True;
  PlayerUpdateCancelButton.Visible:= True;
  PlayerUpdateCancelButton.Enabled:= True;
  PlayerNameEdit.Text:= nameGlob;
end;

procedure TForm1.PlayerEditCancelButtonClick(Sender: TObject);
begin
  PlayerQuery.Active:= False;
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Visible:= False;
  PlayerActionComboBox.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerLayout.Visible:= False;
  PlayerLayout.Enabled:= False;
  PlayerStringGrid.Visible:= False;
  PlayerStringGrid.Enabled:= False;
  PlayerEditLabel.Visible:= False;
  PlayerEditButton.Visible:= False;
  PlayerEditButton.Enabled:= False;
  PlayerEditCancelButton.Visible:= False;
  PlayerEditCancelButton.Enabled:= False
end;

procedure TForm1.PlayerMergeButtonClick(Sender: TObject);
var i: integer;
    base, st: string;
    firstPlayer:TList<integer>;
    fields:TList<string>;
    flag: boolean;
begin
  Player1MergeEdit.Enabled:= False;
  Player2MergeEdit.Enabled:= False;
  PlayerMergeButton.Enabled:= False;
  firstPlayer:= TList<integer>.Create;
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "teams" WHERE "player" = ' + Player1MergeEdit.Text;
  WorkQuery.Open();
  base:= '';
  for i:= 1 to WorkQuery.Fields.Count - 1 do
    firstPlayer.Add(WorkQuery.Fields[i].AsInteger);
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'SELECT * FROM "teams" WHERE "player" = ' + Player2MergeEdit.Text;
  WorkQuery.Open();
  flag:= False;
  for i:= 1 to WorkQuery.Fields.Count - 1 do
    if (firstPlayer[i - 1] <> 0) and (WorkQuery.Fields[i].AsString <> '')
    then
    begin
      flag:= True;
      break
    end;
  if flag then
    ShowMessage('Players have common resultative weeks, merging impossible!')
  else
    begin
      for base in BL do
      begin
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'SELECT * FROM ' + base + 'WHERE "player" = ' +
        Player1MergeEdit.Text;
        WorkQuery.Open();
        firstPlayer.Clear;
        fields:= TList<string>.Create;
        for i:= 1 to WorkQuery.Fields.Count - 2 do
        begin
          fields.Add(WorkQuery.Fields[i].FieldName);
          if WorkQuery.Fields[i].AsString <> ''
          then
            firstPlayer.Add(WorkQuery.Fields[i].AsInteger)
          else
            firstPlayer.Add(-1);
        end;
        fields.Add(WorkQuery.Fields[WorkQuery.Fields.Count - 1].FieldName);
        if WorkQuery.Fields[WorkQuery.Fields.Count - 1].AsString <> ''
        then
          firstPlayer.Add(WorkQuery.Fields[WorkQuery.Fields.Count - 1].AsInteger)
        else
          firstPlayer.Add(-1);
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'UPDATE ' + base + ' SET ';
        st:= '';
        for i := 0 to firstPlayer.Count - 1 do
          if firstPlayer[i] <> -1 then
            st:= st + '"' + fields[i] + '" = ' + firstPlayer[i].ToString + ', ';
        Delete(st, length(st) - 1, 1);
        WorkQuery.SQL.Text:= WorkQuery.SQL.Text + st + 'WHERE "player" = ' +
        Player2MergeEdit.Text;
        WorkQuery.ExecSQL;
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'DELETE FROM ' + base + ' WHERE "player" = ' +
        Player1MergeEdit.Text;
        WorkQuery.ExecSQL;
      end;
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'SELECT * FROM "teams" WHERE "player" = ' +
      Player1MergeEdit.Text;
      WorkQuery.Open();
      firstPlayer.Clear;
      fields:= TList<string>.Create;
      for i:= 1 to WorkQuery.Fields.Count - 2 do
      begin
        fields.Add(WorkQuery.Fields[i].FieldName);
        if WorkQuery.Fields[i].AsString <> ''
        then
          firstPlayer.Add(WorkQuery.Fields[i].AsInteger)
        else
          firstPlayer.Add(-1);
      end;
      fields.Add(WorkQuery.Fields[WorkQuery.Fields.Count - 1].FieldName);
      if WorkQuery.Fields[WorkQuery.Fields.Count - 1].AsString <> ''
      then
        firstPlayer.Add(WorkQuery.Fields[WorkQuery.Fields.Count - 1].AsInteger)
      else
        firstPlayer.Add(-1);
      WorkQuery.SQL.Text:= 'UPDATE "teams" SET ';
      st:= '';
      for i := 0 to firstPlayer.Count - 1 do
        if firstPlayer[i] <> -1 then
          st:= st + '"' + fields[i] + '" = ' + firstPlayer[i].ToString + ', ';
      Delete(st, length(st) - 1, 1);
      WorkQuery.SQL.Text:= WorkQuery.SQL.Text + st + 'WHERE "player" = ' +
      Player2MergeEdit.Text;
      WorkQuery.ExecSQL;
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'DELETE FROM "teams" WHERE "player" = ' +
      Player1MergeEdit.Text;
      WorkQuery.ExecSQL;
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'DELETE FROM "players" WHERE "Id" = ' +
      Player1MergeEdit.Text;
      WorkQuery.ExecSQL;
      PlayerActionComboBox.ItemIndex:= 0;
      PlayerActionComboBox.Enabled:= False;
      PlayerActionComboBox.Visible:= False;
      TargetComboBox.ItemIndex:= 0;
      TargetComboBox.Enabled:= True;
      PlayerLayout.Visible:= False;
      PlayerLayout.Enabled:= False;
      PlayerMergeLabel.Visible:= False;
      Player1MergeLabel.Visible:= False;
      Player2MergeLabel.Visible:= False;
      Player1MergeEdit.Visible:= False;
      Player1MergeEdit.Enabled:= False;
      Player2MergeEdit.Visible:= False;
      Player2MergeEdit.Enabled:= False;
      Player1NameMergeEdit.Visible:= False;
      Player2NameMergeEdit.Visible:= False;
      PlayerMergeButton.Visible:= False;
      PlayerMergeButton.Enabled:= False;
      PlayerMergeCancelButton.Visible:= False;
      PlayerMergeCancelButton.Enabled:= False
    end;
end;

procedure TForm1.PlayerMergeCancelButtonClick(Sender: TObject);
begin
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Enabled:= False;
  PlayerActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerLayout.Visible:= False;
  PlayerLayout.Enabled:= False;
  PlayerMergeLabel.Visible:= False;
  Player1MergeLabel.Visible:= False;
  Player2MergeLabel.Visible:= False;
  Player1MergeEdit.Visible:= False;
  Player1MergeEdit.Enabled:= False;
  Player2MergeEdit.Visible:= False;
  Player2MergeEdit.Enabled:= False;
  Player1NameMergeEdit.Visible:= False;
  Player2NameMergeEdit.Visible:= False;
  PlayerMergeButton.Visible:= False;
  PlayerMergeButton.Enabled:= False;
  PlayerMergeCancelButton.Visible:= False;
  PlayerMergeCancelButton.Enabled:= False
end;

procedure TForm1.PlayerRemoveButtonClick(Sender: TObject);
begin
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'DELETE FROM "players" WHERE "Id" = ' +
  PlayerStringGrid.Cells[0, PlayerStringGrid.Row];
  try
    WorkQuery.ExecSQL;
    ShowMessage('Player number ' + PlayerStringGrid.Cells[0, PlayerStringGrid.Row] +
    ' was removed successfully')
  except
    ShowMessage('Something went wrong. Player was not removed!')
  end;
  PlayerQuery.Active:= False;
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Visible:= False;
  PlayerActionComboBox.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerLayout.Visible:= False;
  PlayerLayout.Enabled:= False;
  PlayerStringGrid.Visible:= False;
  PlayerStringGrid.Enabled:= False;
  PlayerRemoveLabel.Visible:= False;
  PlayerRemoveButton.Visible:= False;
  PlayerRemoveButton.Enabled:= False;
  PlayerRemoveCancelButton.Visible:= False;
  PlayerRemoveCancelButton.Enabled:= False
end;

procedure TForm1.PlayerRemoveCancelButtonClick(Sender: TObject);
begin
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Enabled:= False;
  PlayerActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerRemoveLabel.Visible:= False;
  PlayerStringGrid.Visible:= False;
  PlayerStringGrid.Enabled:= False;
  PlayerQuery.Active:= False;
  PlayerRemoveButton.Visible:= False;
  PlayerRemoveButton.Enabled:= False;
  PlayerRemoveCancelButton.Visible:= False;
  PlayerRemoveCancelButton.Enabled:= False;
  PlayerLayout.Visible:= False;
  PlayerLayout.Enabled:= False
end;

procedure TForm1.PlayerUpdateButtonClick(Sender: TObject);
var newName: string;
begin
  newName:= PlayerNameEdit.Text;
  if newName = nameGlob
  then
    ShowMessage('No changes, try again')
  else
  begin
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'UPDATE "players" SET "Name" = ''' + newName +
    ''' WHERE "Id" = ' + idGlob.ToString;
    try
      WorkQuery.ExecSQL;
      ShowMessage('Player number ' + idGlob.ToString + 'updated successfully')
    except
      ShowMessage('Something went wrong. Player was not updated')
    end;
    PlayerQuery.Active:= False;
    PlayerActionComboBox.ItemIndex:= 0;
    PlayerActionComboBox.Visible:= False;
    PlayerActionComboBox.Enabled:= False;
    TargetComboBox.ItemIndex:= 0;
    TargetComboBox.Enabled:= True;
    PlayerLayout.Visible:= False;
    PlayerLayout.Enabled:= False;
    PlayerEditEnterLabel.Visible:= False;
    PlayerNameEdit.Visible:= False;
    PlayerNameEdit.Enabled:= False;
    PlayerUpdateButton.Visible:= False;
    PlayerUpdateButton.Enabled:= False;
    PlayerUpdateCancelButton.Visible:= False;
    PlayerUpdateCancelButton.Enabled:= False
  end
end;

procedure TForm1.PlayerUpdateCancelButtonClick(Sender: TObject);
begin
  PlayerActionComboBox.ItemIndex:= 0;
  PlayerActionComboBox.Visible:= False;
  PlayerActionComboBox.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  PlayerEditEnterLabel.Visible:= False;
  PlayerEditEnterLabel.Enabled:= False;
  PlayerNameEdit.Text:= '';
  PlayerNameEdit.Visible:= False;
  PlayerNameEdit.Enabled:= False;
  PlayerUpdateButton.Visible:= False;
  PlayerUpdateButton.Enabled:= False;
  PlayerUpdateCancelButton.Visible:= False;
  PlayerUpdateCancelButton.Enabled:= False
end;

procedure TForm1.SeasonActionComboBoxChange(Sender: TObject);
var i: integer;
begin
  actn:= SeasonActionComboBox.Items[SeasonActionComboBox.ItemIndex];
  SeasonActionComboBox.Enabled:= False;
  SeasonEditButton.Visible:= False;
  SeasonEditCancelButton.Visible:= False;
  SeasonEditLabel.Visible:= False;
  amnt:= 0;
  name:= '';
  if actn = 'Add'
  then
  begin
    SeasonAddLayout.Position.X:= 8;
    SeasonAddLayout.Position.Y:= 196;
    SeasonAddLayout.Visible:= True;
    SeasonAddLayout.Enabled:= True;
    for i := 0 to 5 do
    begin
      SeasonRoundsComboBox.ListBox.ListItems[i].TextSettings.Font.Size:= 30;
      SeasonRoundsComboBox.ListBox.ListItems[i].StyledSettings:= SeasonRoundsComboBox.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
    end;
    SeasonAddButton.Visible:= True;
    SeasonAddButton.Enabled:= False;
    SeasonAddButton.Position.X:= 232;
    SeasonAddButton.Position.Y:= 427;
    SeasonAddCancelButton.Visible:= True;
    SeasonAddCancelButton.Enabled:= True;
    SeasonAddCancelButton.Position.X:= 624;
    SeasonAddCancelButton.Position.Y:= 427
  end
  else
    if SeasonActionComboBox.Items[SeasonActionComboBox.ItemIndex] <> 'Delete column'  then
    begin
      SeasonDeleteLabel.Visible:= False;
      SeasonRemoveConfirmLabel.Visible:= False;
      SeasonRemoveConfirmButton.Visible:= False;
      SeasonRemoveButton.Visible:= False;
      SeasonRemoveConfirmButton.Visible:= False;
      SeasonRemoveCancelButton.Visible:= False;
      SeasonEditLayout.Position.X:= 8;
      SeasonEditLayout.Position.Y:= 192;
      SeasonEditLayout.Visible:= True;
      SeasonEditLayout.Enabled:= True;
      SeasonsQuery.Close;
      SeasonsQuery.Open();
      SeasonStringGrid.Visible:= True;
      SeasonStringGrid.Enabled:= True;
      SeasonStringGrid.Row:= 0;
      SeasonStringGrid.Col:= 0;
      if actn = 'Remove'
      then
      begin
        SeasonDeleteLabel.Enabled:= True;
        SeasonDeleteLabel.Visible:= True;
        SeasonRemoveButton.Position.X:= 296;
        SeasonRemoveButton.Position.Y:= 513;
        SeasonRemoveButton.Visible:= True;
        SeasonRemoveCancelButton.Enabled:= True;
        SeasonRemoveCancelButton.Position.X:= 560;
        SeasonRemoveCancelButton.Position.Y:= 513;
        SeasonRemoveCancelButton.Visible:= True;
        SeasonRemoveCancelButton.Enabled:= True
      end
      else
      begin
        SeasonRemoveButton.Visible:= False;
        SeasonRemoveButton.Enabled:= False;
        SeasonRemoveConfirmLabel.Visible:= False;
        SeasonRemoveConfirmLabel.Visible:= False;
        SeasonDeleteLabel.Visible:= False;
        SeasonEditLabel.Visible:= True;
        SeasonEditLabel.Enabled:= True;
        SeasonEditButton.Position.X:= 296;
        SeasonEditButton.Position.Y:= 520;
        SeasonEditCancelButton.Position.X:= 560;
        SeasonEditCancelButton.Position.Y:= 520;
        SeasonEditButton.Visible:= True;
        SeasonEditButton.Enabled:= True;
        SeasonEditCancelButton.Visible:= True;
        SeasonEditCancelButton.Enabled:= True
      end;
    end
    else
    begin
      ColumnDeleteLabel.Visible:= True;
      ColumnDeleteDateEdit.Visible:= True;
      ColumnDeleteDateEdit.Enabled:= True;
      ColumnDeleteConfirmButton.Visible:= True;
      ColumnDeleteConfirmButton.Enabled:= True;
      ColumnDeleteCancelButton.Visible:= True;
      ColumnDeleteCancelButton.Enabled:= True;
    end;
end;

procedure TForm1.SeasonActionComboBoxMouseEnter(Sender: TObject);
begin
  if SeasonActionComboBox.Count < 2
  then
  begin
    SecComboMO(SeasonActionComboBox);
    SeasonActionComboBox.Items.Add('Delete column');
    SeasonActionComboBox.ListBox.ListItems[4].TextSettings.Font.Size:= 15;
    SeasonActionComboBox.ListBox.ListItems[4].StyledSettings:= SeasonActionComboBox.ListBox.ListItems[4].StyledSettings - [TStyledSetting.Size];
  end;
end;

procedure TForm1.SeasonAddButtonClick(Sender: TObject);
var id: integer;
    sqlqry: string;
begin
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Add('SELECT "Id" FROM "seasons" ORDER BY "Id" DESC');
  WorkQuery.Open();
  id:= WorkQuery.FieldByName('Id').AsInteger;
  inc(id);
  sqlqry:= 'INSERT INTO "seasons" ("Id", "Name", "Start1", ';
  case amnt of
  1: sqlqry:= sqlqry + '"Finish", "rounds") VALUES (' + id.ToString + ', ''' + SeasonAddNameEdit.Text + ''', ''' +
  chdt(SeasonStartDateEdit.Date) + ''', ''' + chdt(SeasonFinishDateEdit.Date) + ''', ' + amnt.ToString +')';
  2: sqlqry:= sqlqry + '"Start2", "Finish", "rounds") VALUES (' + id.ToString +
  ', ''' + SeasonAddNameEdit.Text + ''', ''' + chdt(SeasonStartDateEdit.Date) + ''', ''' + chdt(SeasonStart2DateEdit.Date) +
  ''', ''' + chdt(SeasonFinishDateEdit.Date) + ''', ' + amnt.ToString +')';
  3: sqlqry:= sqlqry + '"Start2", "Start3", "Finish", "rounds") VALUES (' + id.ToString +
  ', ''' + SeasonAddNameEdit.Text + ''', ''' + chdt(SeasonStartDateEdit.Date) + ''', ''' + chdt(SeasonStart2DateEdit.Date) +
  ''', ''' + chdt(SeasonStart3DateEdit.Date) + ''', ''' + chdt(SeasonFinishDateEdit.Date) + ''', ' + amnt.ToString +')';
  4: sqlqry:= sqlqry + '"Start2", "Start3", "Start4", "Finish", "rounds") VALUES (' + id.ToString +
  ', ''' + SeasonAddNameEdit.Text + ''', ''' + chdt(SeasonStartDateEdit.Date) + ''', ''' + chdt(SeasonStart2DateEdit.Date) +
  ''', ''' + chdt(SeasonStart3DateEdit.Date) + ''', ''' + chdt(SeasonStart4DateEdit.Date) + ''', ''' +
  chdt(SeasonFinishDateEdit.Date) + ''', ' + amnt.ToString +')';
  5: sqlqry:= sqlqry + '"Start2", "Start3", "Start4", "Start5", "Finish", "rounds") VALUES (' + id.ToString +
  ', ''' + SeasonAddNameEdit.Text + ''', ''' + chdt(SeasonStartDateEdit.Date) + ''', ''' + chdt(SeasonStart2DateEdit.Date) +
  ''', ''' + chdt(SeasonStart3DateEdit.Date) + ''', ''' + chdt(SeasonStart4DateEdit.Date) + ''', ''' +
  chdt(SeasonStart5DateEdit.Date) + ''', ''' + chdt(SeasonFinishDateEdit.Date) + ''', ' + amnt.ToString +')';
  6: sqlqry:= sqlqry + '"Start2", "Start3", "Start4", "Start5", "Start6", "Finish", "rounds") VALUES (' + id.ToString +
  ', ''' + SeasonAddNameEdit.Text + ''', ''' + chdt(SeasonStartDateEdit.Date) + ''', ''' + chdt(SeasonStart2DateEdit.Date) +
  ''', ''' + chdt(SeasonStart3DateEdit.Date) + ''', ''' + chdt(SeasonStart4DateEdit.Date) + ''', ''' +
  chdt(SeasonStart5DateEdit.Date) + ''', ''' + chdt(SeasonStart6DateEdit.Date) + ''', ''' + chdt(SeasonFinishDateEdit.Date) +
  ''', ' + amnt.ToString +')';
  end;
  try
    WorkQuery.SQL.Text:= sqlqry;
    WorkQuery.ExecSQL;
    ShowMessage('Season ''' +  SeasonAddNameEdit.Text + ''' successfully added')
  except
    ShowMessage('Something went wrong, season was not added')
  end;
  SeasonAddNameEdit.Text:= '';
  SeasonStart2DateEdit.IsEmpty:= True;
  SeasonStart3DateEdit.IsEmpty:= True;
  SeasonStart4DateEdit.IsEmpty:= True;
  SeasonStart5DateEdit.IsEmpty:= True;
  SeasonStart6DateEdit.IsEmpty:= True;
  SeasonFinishDateEdit.IsEmpty:= True;
  amnt:= 0;
  SeasonActionComboBox.Visible:= False;
  SeasonActionComboBox.Enabled:= False;
  Target:= '';
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  SeasonAddButton.Visible:= False;
  SeasonAddButton.Enabled:= False;
  WarningSeasonAddLabel.Visible:= False;
  SeasonAddLayout.Visible:= False;
  SeasonAddLayout.Enabled:= False
end;

procedure TForm1.SeasonAddNameEditChange(Sender: TObject);
begin
  if length(SeasonAddNameEdit.Text) <> 0
  then
   if (not SeasonStartDateEdit.IsEmpty) and (amnt <> 0) and (actn = 'Add')
   then
    begin
      SeasonAddButton.Enabled:= True;
      WarningSeasonAddLabel.Visible:= True
    end;
  if length(SeasonAddNameEdit.Text) = 0
  then
    begin
      SeasonAddButton.Enabled:= False;
      WarningSeasonAddLabel.Visible:= False
    end
end;

procedure TForm1.SeasonAddNameEditKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if length(SeasonAddNameEdit.Text) <> 0
  then
   if (not SeasonStartDateEdit.IsEmpty) and (amnt <> 0) and (actn = 'Add')
   then
    begin
      SeasonAddButton.Enabled:= True;
      WarningSeasonAddLabel.Visible:= True
    end;
  if length(SeasonAddNameEdit.Text) = 0
  then
    begin
      SeasonAddButton.Enabled:= False;
      WarningSeasonAddLabel.Visible:= False
    end
end;

procedure TForm1.SeasonEditButtonClick(Sender: TObject);
begin
  idGlob:= SeasonStringGrid.Cells[0, SeasonStringGrid.Row].ToInteger;
  SeasonAddNameEdit.Text:= SeasonStringGrid.Cells[1, SeasonStringGrid.Row];
  SeasonRoundsComboBox.ItemIndex:= SeasonStringGrid.Cells[9, SeasonStringGrid.Row].ToInteger - 1;
  SeasonAddLayout.Visible:= True;
  SeasonAddLayout.Enabled:= True;
  if SeasonStringGrid.Cells[2, SeasonStringGrid.Row] = ''
  then
    SeasonStartDateEdit.IsEmpty:= True
  else
  begin
    SeasonStartDateEdit.Date:= chstrtodate(SeasonStringGrid.Cells[2, SeasonStringGrid.Row]);
    SeasonStartDateEdit.IsEmpty:= False
  end;
  if SeasonStringGrid.Cells[3, SeasonStringGrid.Row] = ''
  then
    SeasonStart2DateEdit.IsEmpty:= True
  else
  begin
    SeasonStart2DateEdit.Date:= chstrtodate(SeasonStringGrid.Cells[3, SeasonStringGrid.Row]);
    SeasonStart2DateEdit.IsEmpty:= False
  end;
  if SeasonStringGrid.Cells[4, SeasonStringGrid.Row] = ''
  then
    SeasonStart3DateEdit.IsEmpty:= True
  else
  begin
    SeasonStart3DateEdit.Date:= chstrtodate(SeasonStringGrid.Cells[4, SeasonStringGrid.Row]);
    SeasonStart3DateEdit.IsEmpty:= False
  end;
  if SeasonStringGrid.Cells[5, SeasonStringGrid.Row] = ''
  then
    SeasonStart4DateEdit.IsEmpty:= True
  else
  begin
    SeasonStart4DateEdit.Date:= chstrtodate(SeasonStringGrid.Cells[5, SeasonStringGrid.Row]);
    SeasonStart4DateEdit.IsEmpty:= False
  end;
  if SeasonStringGrid.Cells[6, SeasonStringGrid.Row] = ''
  then
    SeasonStart5DateEdit.IsEmpty:= True
  else
  begin
    SeasonStart5DateEdit.Date:= chstrtodate(SeasonStringGrid.Cells[6, SeasonStringGrid.Row]);
    SeasonStart5DateEdit.IsEmpty:= False
  end;
  if SeasonStringGrid.Cells[7, SeasonStringGrid.Row] = ''
  then
    SeasonStart6DateEdit.IsEmpty:= True
  else
  begin
    SeasonStart6DateEdit.Date:= chstrtodate(SeasonStringGrid.Cells[7, SeasonStringGrid.Row]);
    SeasonStart6DateEdit.IsEmpty:= False
  end;
  if SeasonStringGrid.Cells[8, SeasonStringGrid.Row] = ''
  then
    SeasonFinishDateEdit.IsEmpty:= True
  else
  begin
    SeasonFinishDateEdit.Date:= chstrtodate(SeasonStringGrid.Cells[8, SeasonStringGrid.Row]);
    SeasonFinishDateEdit.IsEmpty:= False
  end;
  SeasonEditLabel.Visible:= False;
  SeasonStringGrid.Visible:= False;
  SeasonStringGrid.Enabled:= False;
  SeasonUpdateButton.Position.X:= 323;
  SeasonUpdateButton.Position.Y:= 416;
  SeasonUpdateButton.Visible:= True;
  SeasonUpdateButton.Enabled:= True;
  SeasonUpdateCancelButton.Position.X:= 563;
  SeasonUpdateCancelButton.Position.Y:= 416;
  SeasonUpdateCancelButton.Visible:= True;
  SeasonUpdateCancelButton.Enabled:= True;
  SeasonUpdateLabel.Visible:= True;
  SeasonUpdateLabel.Enabled:= True;
  SeasonEditButton.Visible:= False;
  SeasonEditButton.Enabled:= False;
  SeasonEditLabel.Visible:= False;
  SeasonEditLabel.Enabled:= False;
  SeasonEditLayout.Visible:= False;
  SeasonEditLayout.Enabled:= False
end;

procedure TForm1.SeasonEditCancelButtonClick(Sender: TObject);
begin
  SeasonActionComboBox.ItemIndex:= 0;
  SeasonActionComboBox.Visible:= False;
  SeasonActionComboBox.Enabled:= False;
  SeasonEditLabel.Visible:= False;
  SeasonEditButton.Visible:= False;
  SeasonEditButton.Enabled:= False;
  SeasonEditCancelButton.Visible:= False;
  SeasonEditCancelButton.Enabled:= False;
  SeasonStringGrid.Visible:= False;
  SeasonStringGrid.Enabled:= False;
  SeasonEditLayout.Visible:= False;
  SeasonEditLayout.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
end;

procedure TForm1.SeasonRemoveButtonClick(Sender: TObject);
var i, j: integer;
    nam: string;
begin
  idGlob:= SeasonStringGrid.Cells[0, SeasonStringGrid.Row].ToInteger;
  nameGlob:= SeasonStringGrid.Cells[1, SeasonStringGrid.Row];
  nam:= '';
  if length(nameGlob) < 18
  then
    j:= Length(nameGlob)
  else
    j:= 18;
  for i:= 1 to j do
  begin
    nam:= nam + nameGlob[i];
  end;
  nam:= nam + '...';
  SeasonRemoveButton.Visible:= False;
  SeasonRemoveButton.Enabled:= False;
  SeasonRemoveConfirmLabel.Text:= 'If you are sure want to remove "' + nam + '" press "Confirm" buttom';
  SeasonRemoveConfirmLabel.Visible:= True;
  SeasonRemoveConfirmLabel.Enabled:= True;
  SeasonRemoveConfirmButton.Visible:= True;
  SeasonRemoveConfirmButton.Enabled:= True;
end;

procedure TForm1.SeasonRemoveCancelButtonClick(Sender: TObject);
begin
  SeasonActionComboBox.ItemIndex:= 0;
  SeasonActionComboBox.Visible:= False;
  SeasonActionComboBox.Enabled:= False;
  SeasonDeleteLabel.Visible:= False;
  SeasonEditLabel.Visible:= False;
  SeasonRemoveConfirmLabel.Visible:= True;
  SeasonRemoveButton.Visible:= False;
  SeasonRemoveButton.Enabled:= False;
  SeasonRemoveCancelButton.Visible:= False;
  SeasonRemoveCancelButton.Enabled:= False;
  SeasonStringGrid.Visible:= False;
  SeasonStringGrid.Enabled:= False;
  SeasonEditLayout.Visible:= False;
  SeasonEditLayout.Enabled:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True
end;

procedure TForm1.SeasonRemoveConfirmButtonClick(Sender: TObject);
begin
  WorkQuery.SQL.Clear;
  WorkQuery.SQL.Text:= 'DELETE FROM "seasons" WHERE "Id" = ' + idGlob.ToString;
  try
    WorkQuery.ExecSQL;
    ShowMessage('Season number "' + idGlob.ToString + '" deleted successfully')
  except
    ShowMessage('Something went wrong.')
  end;
  SeasonActionComboBox.ItemIndex:= 0;
  SeasonRemoveCancelButton.Visible:= False;
  SeasonRemoveCancelButton.Enabled:= False;
  SeasonRemoveConfirmLabel.Text:= '';
  SeasonRemoveConfirmLabel.Visible:= False;
  SeasonRemoveConfirmLabel.Enabled:= False;
  SeasonRemoveConfirmButton.Visible:= False;
  SeasonRemoveConfirmButton.Enabled:= False;
  SeasonActionComboBox.Enabled:= False;
  SeasonActionComboBox.Visible:= False;
  Target:= '';
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  SeasonEditLayout.Visible:= False;
  SeasonEditLayout.Enabled:= False
end;

procedure TForm1.SeasonRoundsComboBoxChange(Sender: TObject);
begin
  amnt:= SeasonRoundsComboBox.Items[SeasonRoundsComboBox.ItemIndex].ToInteger;
  if amnt = 0
  then
  begin
    SeasonStartDateEdit.IsEmpty:= True;
    SeasonFinishDateEdit.IsEmpty:= True;
    SeasonStart2DateEdit.IsEmpty:= True;
    SeasonStart3DateEdit.IsEmpty:= True;
    SeasonStart4DateEdit.IsEmpty:= True;
    SeasonStart5DateEdit.IsEmpty:= True;
    SeasonStart6DateEdit.IsEmpty:= True
  end;
  if amnt <> 0
  then
  begin
      if amnt = 1
    then
    begin
      SeasonStartDateEdit.IsEmpty:= False;
      SeasonFinishDateEdit.Date:= strt + 6;
      SeasonStart2DateEdit.IsEmpty:= True;
      SeasonStart3DateEdit.IsEmpty:= True;
      SeasonStart4DateEdit.IsEmpty:= True;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 2
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonFinishDateEdit.Date:= strt + 13;
      SeasonStart3DateEdit.IsEmpty:= True;
      SeasonStart4DateEdit.IsEmpty:= True;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 3
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonFinishDateEdit.Date:= strt + 20;
      SeasonStart4DateEdit.IsEmpty:= True;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 4
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart4DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonStart4DateEdit.Date:= strt + 21;
      SeasonFinishDateEdit.Date:= strt + 27;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 5
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart4DateEdit.IsEmpty:= False;
      SeasonStart5DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonStart4DateEdit.Date:= strt + 21;
      SeasonStart5DateEdit.Date:= strt + 28;
      SeasonFinishDateEdit.Date:= strt + 34;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 6
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart4DateEdit.IsEmpty:= False;
      SeasonStart5DateEdit.IsEmpty:= False;
      SeasonStart6DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonStart4DateEdit.Date:= strt + 21;
      SeasonStart5DateEdit.Date:= strt + 28;
      SeasonStart6DateEdit.Date:= strt + 35;
      SeasonFinishDateEdit.Date:= strt + 41
    end;

  end;
  if (not SeasonStartDateEdit.IsEmpty) and (amnt <> 0) and (SeasonAddNameEdit.Text <> '') and (actn = 'Add')
  then
  begin
    SeasonAddButton.Enabled:= True;
    WarningSeasonAddLabel.Visible:= True
  end;
  if SeasonStartDateEdit.IsEmpty or (amnt = 0) or (length(SeasonAddNameEdit.Text) = 0)
  then
  begin
    SeasonAddButton.Enabled:= False;
    WarningSeasonAddLabel.Visible:= False
  end;
end;

procedure TForm1.SeasonStartDateEditChange(Sender: TObject);
begin
  strt:= SeasonStartDateEdit.Date;
  if amnt <> 0
  then
  begin
    if amnt = 1
    then
    begin
      SeasonFinishDateEdit.Date:= strt + 6;
      SeasonStart2DateEdit.IsEmpty:= True;
      SeasonStart3DateEdit.IsEmpty:= True;
      SeasonStart4DateEdit.IsEmpty:= True;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 2
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonFinishDateEdit.Date:= strt + 13;
      SeasonStart3DateEdit.IsEmpty:= True;
      SeasonStart4DateEdit.IsEmpty:= True;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 3
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonFinishDateEdit.Date:= strt + 20;
      SeasonStart4DateEdit.IsEmpty:= True;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 4
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart4DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonStart4DateEdit.Date:= strt + 21;
      SeasonFinishDateEdit.Date:= strt + 27;
      SeasonStart5DateEdit.IsEmpty:= True;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 5
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart4DateEdit.IsEmpty:= False;
      SeasonStart5DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonStart4DateEdit.Date:= strt + 21;
      SeasonStart5DateEdit.Date:= strt + 28;
      SeasonFinishDateEdit.Date:= strt + 34;
      SeasonStart6DateEdit.IsEmpty:= True
    end;
    if amnt = 6
    then
    begin
      SeasonStart2DateEdit.IsEmpty:= False;
      SeasonStart3DateEdit.IsEmpty:= False;
      SeasonStart4DateEdit.IsEmpty:= False;
      SeasonStart5DateEdit.IsEmpty:= False;
      SeasonStart6DateEdit.IsEmpty:= False;
      SeasonStart2DateEdit.Date:= strt + 7;
      SeasonStart3DateEdit.Date:= strt + 14;
      SeasonStart4DateEdit.Date:= strt + 21;
      SeasonStart5DateEdit.Date:= strt + 28;
      SeasonStart6DateEdit.Date:= strt + 35;
      SeasonFinishDateEdit.Date:= strt + 41
    end;
    if (SeasonAddNameEdit.Text <> '') and (not SeasonStartDateEdit.IsEmpty) and (actn = 'Add')
    then
    begin
      SeasonAddButton.Enabled:= True;
      WarningSeasonAddLabel.Visible:= True
    end;
  end;
end;

procedure TForm1.SeasonUpdateButtonClick(Sender: TObject);
var txt: string;
begin
  WorkQuery.SQL.Clear;
  txt:= 'UPDATE "seasons" SET "Name" = ''' + SeasonAddNameEdit.Text + ''', "Start1" = ''' +
  chdt(SeasonStartDateEdit.Date) + ''', "Start2" = ';
  if SeasonStart2DateEdit.IsEmpty
  then
    txt:= txt + 'Null, "Start3" = '
  else
    txt:= txt + '''' + chdt(SeasonStart2DateEdit.Date) + ''', "Start3" = ';
  if SeasonStart3DateEdit.IsEmpty
  then
    txt:= txt + 'Null, "Start4" = '
  else
    txt:= txt + '''' + chdt(SeasonStart3DateEdit.Date) + ''', "Start4" = ';
  if SeasonStart4DateEdit.IsEmpty
  then
    txt:= txt + 'Null, "Start5" = '
  else
    txt:= txt + '''' + chdt(SeasonStart4DateEdit.Date) + ''', "Start5" = ';
  if SeasonStart5DateEdit.IsEmpty
  then
    txt:= txt + 'Null, "Start6" = '
  else
    txt:= txt + '''' + chdt(SeasonStart5DateEdit.Date) + ''', "Start6" = ';
  if SeasonStart6DateEdit.IsEmpty
  then
    txt:= txt + 'Null'
  else
    txt:= txt + '''' + chdt(SeasonStart6DateEdit.Date) + '''';
  txt:= txt + ', "Finish" = ''' + chdt(SeasonFinishDateEdit.Date) + ''', "rounds" = ' +
  SeasonRoundsComboBox.Items[SeasonRoundsComboBox.ItemIndex] + ' WHERE "Id" = ' + idGlob.ToString;
  WorkQuery.SQL.Text:= txt;
  try
    WorkQuery.ExecSQL;
    ShowMessage('Season number ' + idGlob.ToString + ' updated successfully')
  except
    ShowMessage('Something went wrong')
  end;
  SeasonUpdateCancelButton.Visible:= False;
  SeasonUpdateCancelButton.Enabled:= False;
  SeasonActionComboBox.Enabled:= False;
  SeasonActionComboBox.Visible:= False;
  SeasonActionComboBox.ItemIndex:= 0;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  SeasonUpdateLabel.Visible:= False;
  SeasonUpdateLabel.Enabled:= False;
  SeasonUpdateButton.Visible:= False;
  SeasonUpdateButton.Enabled:= False;
  SeasonEditButton.Visible:= False;
  SeasonEditButton.Enabled:= False;
  SeasonEditLabel.Visible:= False;
  SeasonEditLabel.Enabled:= False;
  SeasonAddLayout.Visible:= False;
  SeasonAddLayout.Enabled:= False;
  SeasonEditLayout.Visible:= False;
  SeasonEditLayout.Enabled:= False
end;

procedure TForm1.SeasonUpdateCancelButtonClick(Sender: TObject);
begin
  SeasonUpdateCancelButton.Visible:= False;
  SeasonUpdateCancelButton.Enabled:= False;
  SeasonStringGrid.Visible:= False;
  SeasonStringGrid.Enabled:= False;
  SeasonEditLabel.Visible:= False;
  SeasonActionComboBox.Enabled:= False;
  SeasonActionComboBox.Visible:= False;
  SeasonActionComboBox.ItemIndex:= 0;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True;
  SeasonEditButton.Visible:= False;
  SeasonEditButton.Enabled:= False;
  SeasonEditLabel.Visible:= False;
  SeasonEditLabel.Enabled:= False;
  SeasonUpdateButton.Visible:= False;
  SeasonUpdateButton.Enabled:= False;
  SeasonUpdateLabel.Visible:= False;
  SeasonUpdateLabel.Enabled:= False;
  SeasonAddLayout.Visible:= False;
  SeasonAddLayout.Enabled:= False;
  SeasonEditLayout.Visible:= False;
  SeasonEditLayout.Enabled:= False
end;

procedure TForm1.StatActionComboBoxChange(Sender: TObject);
begin
  StatActionComboBox.Enabled:= false;
  if (StatActionComboBox.Items[StatActionComboBox.ItemIndex] = 'Group week') or
  (StatActionComboBox.Items[StatActionComboBox.ItemIndex] = 'Group season')
  then
  begin
    StatGroupComboBox.Items.Clear;
    StatGroupLabel.Visible:= True;
    StatGroupLabel.Enabled:= True;
    StatShowButton.Enabled:= False;
    StatShowButton.Visible:= True;
    StatGroupComboBox.Items.Add('Choose group');
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'SELECT * FROM "Groups" ORDER BY "Name"';
    WorkQuery.Open();
    while not WorkQuery.Eof do
    begin
      StatGroupComboBox.Items.Add(WorkQuery.FieldByName('Name').AsString
      + ' ' + WorkQuery.FieldByName('Id').AsString);
      WorkQuery.Next
    end;
    StatGroupComboBox.ItemIndex:= 0;
    StatGroupComboBox.Visible:= True;
    StatGroupComboBox.Enabled:= True;
    if (StatActionComboBox.Items[StatActionComboBox.ItemIndex] = 'Group week')
    then
    begin
      StatDate1Label.Visible:= True;
      StatDate1Label.Enabled:= True;
      StatDate2DateEdit.IsEmpty:= True;
      StatDate2DateEdit.Visible:= True;
      StatDate2DateEdit.Enabled:= True;
      StatWeekReturnButton.Visible:= True;
      StatWeekReturnButton.Enabled:= True;
      end;
    if StatActionComboBox.Items[StatActionComboBox.ItemIndex] = 'Group season'
    then
    begin
      StatSeasonGroupLabel.Visible:= True;
      StatSeasonGroupComboBox.Items.Clear;
      StatSeasonGroupComboBox.Items.Add('Choose season');
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'SELECT * FROM "seasons" ORDER BY "Id" DESC';
      WorkQuery.Open();
      while not WorkQuery.Eof do
      begin
        StatSeasonGroupComboBox.Items.Add(WorkQuery.FieldByName('Name').AsString +
        ' ' + WorkQuery.FieldByName('Start1').AsString);
        WorkQuery.Next
      end;
      StatSeasonGroupComboBox.ItemIndex:= 0;
      StatSeasonGroupComboBox.Visible:= True;
      StatSeasonGroupComboBox.Enabled:= True;
      StatSeasonReturnButton.Visible:= True;
      StatSeasonReturnButton.Enabled:= True
    end;
    StatLayout.Visible:= True;
    StatLayout.Enabled:= True;
  end;
end;

procedure TForm1.StatActionComboBoxMouseEnter(Sender: TObject);
var i: integer;
begin
  if StatActionComboBox.Items.Count < 2
  then
  begin
    StatActionComboBox.Items.Add('Group week');
    StatActionComboBox.Items.Add('Group season')
  end;
  for i:= 0 to StatActionComboBox.Count - 1 do
    begin
      StatActionComboBox.ListBox.ListItems[i].TextSettings.Font.Size:= 15;
      StatActionComboBox.ListBox.ListItems[i].StyledSettings:= StatActionComboBox.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
    end;
end;

procedure TForm1.StatDate2DateEditChange(Sender: TObject);
begin
  StatDate2DateEdit.IsEmpty:= False;
  if StatGroupComboBox.ItemIndex <> 0
  then
    StatShowButton.Enabled:= True
  else
    StatShowButton.Enabled:= False
end;

procedure TForm1.StatGroupComboBoxChange(Sender: TObject);
begin
  if StatSeasonGroupComboBox.Visible
  then
    if (StatGroupComboBox.ItemIndex <> 0) and (StatSeasonGroupComboBox.ItemIndex <> 0)
    then
      StatShowButton.Enabled:= True
    else
      StatShowButton.Enabled:= False
  else
    if (StatGroupComboBox.ItemIndex <> 0) and not StatDate2DateEdit.IsEmpty
    then
      StatShowButton.Enabled:= True
    else
      StatShowButton.Enabled:= False
end;

procedure TForm1.StatSeasonGroupComboBoxChange(Sender: TObject);
begin
  if (StatSeasonGroupComboBox.ItemIndex <> 0) and (StatGroupComboBox.ItemIndex <> 0)
  then
    StatShowButton.Enabled:= True
  else
    StatShowButton.Enabled:= False
end;

procedure TForm1.StatSeasonReturnButtonClick(Sender: TObject);
begin
  StatSeasonGroupLabel.Visible:= False;
  StatSeasonGroupComboBox.Visible:= False;
  StatSeasonGroupComboBox.Enabled:= False;
  StatGroupComboBox.Visible:= False;
  StatGroupComboBox.Enabled:= False;
  StatGroupLabel.Visible:= False;
  StatSeasonReturnButton.Visible:= False;
  StatSeasonReturnButton.Enabled:= False;
  WorkQuery.Close;
  StatWeekStringGrid.RowCount:= 0;
  StatActionComboBox.ItemIndex:= 0;
  StatLayout.Visible:= False;
  StatLayout.Enabled:= False;
  StatActionComboBox.Enabled:= False;
  StatActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True
end;

procedure TForm1.StatShowButtonClick(Sender: TObject);
type a = array [0..2] of integer;
     rec = array [0..11] of integer;
var grp, seas, basedat, basedat1, base, plrsSQL, fldsSQL: string;
    i, j, k, id: integer;
    dat, dat1: TDate;
    dt: rec;
    alldat, alldat1: TList<rec>;
    pl: a;
    ppl: TList<a>;
    plrs, dats: TList<string>;
    ordrs: TDictionary<string, string>;
begin
  grp:= StatGroupComboBox.Items[StatGroupComboBox.ItemIndex];
  id:= Length(grp);
  while grp[id] <> ' ' do
    id:= id - 1;
  id:= StrToInt(copy(grp, id, length(grp)));
  if StatSeasonGroupComboBox.Visible
  then
  begin
    seas:= StatSeasonGroupComboBox.Items[StatSeasonGroupComboBox.ItemIndex];
    i:= Length(seas);
    while seas[i] <> ' ' do
      i:= i - 1;
    seas:= copy(seas, 1, i - 1);
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'SELECT * FROM "seasons" WHERE "Name" = ''' + seas + '''';
    WorkQuery.Open();
    i:= WorkQuery.FieldByName('rounds').AsInteger;
    dats:= TList<string>.Create;
    dats.Clear;
    for j:= 1 to i do
      if WorkQuery.FieldByName('Start' + j.ToString).AsDateTime < Date.Now
      then
        dats.Add(chdt(WorkQuery.FieldByName('Start' + j.ToString).AsDateTime));
    if (dats.Count < 2) and (i > 1)
    then
      ShowMessage('First round of this season is not yet completed')
    else
    begin
      dat:= WorkQuery.FieldByName('Finish').AsDateTime + 1;
      basedat:= chdt(Date.Now);
      if basedat > chdt(dat)
      then
        dats.Add(chdt(dat));
      if dats.Count < 2
      then
        ShowMessage('First round of this season is not yet completed')
      else
      begin
        fldsSQL:= '"';
        for i:= 0 to dats.Count - 2 do
          fldsSQL:= fldsSQL + dats[i] + '", "';
        fldsSQL:= fldsSQL + dats[dats.Count - 1] + '"';
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'SELECT "player", ' + fldsSQL + ' FROM "teams" WHERE "';
        for i:= 0 to dats.Count - 2 do
          WorkQuery.SQL.Text:= WorkQuery.SQL.Text + dats[i] + '" = ' + id.ToString + ' OR "';
        WorkQuery.SQL.Text:= WorkQuery.SQL.Text + dats[dats.Count - 1] + '" = ' + id.ToString +
        ' ORDER BY "player"';
        WorkQuery.Open();
        ppl:=TList<a>.Create;
        while not WorkQuery.Eof do
        begin
          for i:= 1 to WorkQuery.Fields.Count - 1 do
            if WorkQuery.Fields[i].AsInteger = id then
              break;
          if i <> WorkQuery.Fields.Count - 1
          then
            for j:= WorkQuery.Fields.Count - 1 downto 1 do
              if WorkQuery.Fields[j].AsInteger = id then
                break;
          if (i <> j) and (i <> WorkQuery.Fields.Count - 1)
          then
          begin
            pl[0]:= WorkQuery.Fields[0].AsInteger;
            pl[1]:= i;
            pl[2]:= j;
            ppl.Add(pl)
          end;
          WorkQuery.Next
        end;
        if ppl.Count = 0
        then
          ShowMessage('Nobody played continuously ih this group this season')
        else
        begin
          StatWeekStringGrid.RowCount:= ppl.Count + 1;
          plrsSQL:= '"player" = ';
          if ppl.Count > 1
          then
          begin
            for i:= 0 to ppl.Count - 2 do
              plrsSQL:= plrsSQL + ppl[i][0].ToString + ' OR "player" = ';
            plrsSQL:= plrsSQL + ppl[ppl.Count - 1][0].ToString
          end
          else
            plrsSQL:= plrsSQL + ppl[0][0].ToString;
          alldat:= TList<rec>.Create;
          alldat.Clear;
          for i:= 0 to ppl.Count - 1 do
          begin
            dt[0]:= ppl[i][0];
            for j:= 1 to 11 do
              dt[j]:= 0;
            alldat.Add(dt)
          end;
          j:= 0;
          alldat1:= TList<rec>.Create;
          for base in BL do
          begin
            WorkQuery.SQL.Clear;
            WorkQuery.SQL.Text:= 'SELECT "player", ' + fldsSQL + ' FROM ' +
              base + ' WHERE ' + plrsSQL + ' ORDER BY "player"';
            WorkQuery.Open();
            i:= 0;
            alldat1.Clear;
            while not WorkQuery.Eof do
            begin
              dt:= alldat[i];
              if dt[0] <> WorkQuery.Fields[0].AsInteger
              then
                ShowMessage('Error in data');
              dt[j + 1]:= WorkQuery.Fields[ppl[i][2]].AsInteger - WorkQuery.Fields[ppl[i][1]].AsInteger;
              alldat1.Add(dt);
              i:= i + 1;
              WorkQuery.Next
            end;
            alldat.Clear;
            for dt in alldat1 do
              alldat.Add(dt);
            j:= j + 1
          end;
          alldat1.Clear;
          while alldat.Count > 0 do
          begin
            i:= 0;
            k:= 0;
            for j:= 0 to alldat.Count - 1 do
            begin
              if alldat[j][1] > i
              then
              begin
                i:= alldat[j][1];
                k:= j
              end;
            end;
            alldat1.Add(alldat[k]);
            alldat.Delete(k)
          end;
          alldat.Clear;
          while alldat1.Count > 0 do
          begin
            i:= 0;
            k:= 0;
            for j:= 0 to alldat1.Count - 1 do
            begin
              if alldat1[j][4] > i
              then
              begin
                i:= alldat1[j][4];
                k:= j
              end;
            end;
            alldat.Add(alldat1[k]);
            alldat1.Delete(k)
          end;
          plrsSQL:= '(';
          for dt in alldat do
            plrsSQL:= plrsSQL + dt[0].ToString + ', ';
          plrsSQL:= copy(plrsSQL, 1, length(plrsSQL) - 2) + ')';
          WorkQuery.SQL.Clear;
          WorkQuery.SQL.Text:= 'SELECT * FROM "players" WHERE "Id" in ' + plrsSQL;
          WorkQuery.Open();
          ordrs:= TDictionary<String, String>.Create;
          while not WorkQuery.Eof do
          begin
            ordrs.Add(WorkQuery.Fields[0].AsString, WorkQuery.Fields[1].AsString);
            WorkQuery.Next
          end;
          WorkQuery.Close;
          for i:= 0 to alldat.Count - 1 do
          begin
            StatWeekStringGrid.Cells[0, i]:= alldat[i][0].ToString;
            StatWeekStringGrid.Cells[1, i]:= ordrs[alldat[i][0].ToString]
          end;
          StatWeekStringGrid.Cells[0, alldat.Count]:= alldat.Count.ToString;
          StatWeekStringGrid.Cells[1, alldat.Count]:= 'Total';
          for i:= 0 to alldat.Count - 1 do
            for j:= 1 to 11 do
              StatWeekStringGrid.Cells[j + 1, i]:= alldat[i][j].ToString;
          for i:= 1 to 11 do
          begin
            k:= 0;
            for dt in alldat do
              k:= k + dt[i];
            StatWeekStringGrid.Cells[i + 1, alldat.Count]:= k.ToString
          end;
        end;
      end;
    end
  end
  else
  begin
    dat:= StatDate2DateEdit.Date;
    dat:= downToThursday(dat);
    dat1:= dat - 7;
    basedat:= chdt(dat);
    basedat1:= chdt(dat1);
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'SELECT "player" FROM "teams" WHERE "' + basedat + '" = ' + id.ToString +
    ' AND "' + basedat1 + '" IS NOT NULL ORDER BY "player"';
    WorkQuery.Open();
    plrs:= TList<string>.Create;
    plrs.Clear;
    while not WorkQuery.Eof do
    begin
      plrs.Add(WorkQuery.Fields[0].AsString);
      WorkQuery.Next
    end;
    WorkQuery.SQL.Clear;
    WorkQuery.SQL.Text:= 'SELECT "player" FROM "missions_completed" where "player" IN (';
    if plrs.Count <> 0 then
    begin
      if plrs.Count = 1 then
        WorkQuery.SQL.Text:= WorkQuery.SQL.Text + plrs[0] + ') ORDER BY "' +
        basedat + '" - "' + basedat1 + '" DESC'
      else
      begin
        for i:= 0 to plrs.Count - 2 do
          WorkQuery.SQL.Text:= WorkQuery.SQL.Text + plrs[i] + ', ';
        WorkQuery.SQL.Text:= WorkQuery.SQL.Text + plrs[plrs.Count - 1] + ') ORDER BY "' +
        basedat + '" - "' + basedat1 + '" DESC'
      end;
      WorkQuery.Open();
      StatWeekStringGrid.RowCount:= plrs.Count + 1;
      plrs.Clear;
      i:= 0;
      while not WorkQuery.Eof do
      begin
        plrs.Add(WorkQuery.Fields[0].AsString);
        StatWeekStringGrid.Cells[0, i]:= plrs[i];
        i:= i + 1;
        WorkQuery.Next
      end;
      StatWeekStringGrid.Cells[0, plrs.Count]:= plrs.Count.ToString;
      plrsSQL:= '(';
      for i:= 0 to plrs.Count - 2 do
        plrsSQL:= plrsSQL + plrs[i] + ', ';
      plrsSQL:= plrsSQL + plrs[plrs.Count - 1] + ') ';
      WorkQuery.SQL.Clear;
      WorkQuery.SQL.Text:= 'SELECT * FROM "players" WHERE "Id" IN ' + plrsSQL;
      WorkQuery.Open();
      ordrs:= TDictionary<string, string>.Create;
      while not WorkQuery.Eof do
      begin
        ordrs.Add(WorkQuery.Fields[0].AsString, WorkQuery.Fields[1].AsString);
        WorkQuery.Next
      end;
      for i:= 0 to plrs.Count - 1 do
        StatWeekStringGrid.Cells[1, i]:= ordrs[plrs[i]];
      i:= 2;
      for base in BL do
      begin
        ordrs.Clear;
        WorkQuery.SQL.Clear;
        WorkQuery.SQL.Text:= 'SELECT "player", "' + basedat + '" - "' + basedat1 +
        '" FROM ' + base + ' WHERE "player" IN ' + plrsSQL;
        WorkQuery.Open();
        while not WorkQuery.Eof do
        begin
          ordrs.Add(WorkQuery.Fields[0].AsString, WorkQuery.Fields[1].AsString);
          WorkQuery.Next
        end;
        for j:= 0 to plrs.Count - 1 do
          StatWeekStringGrid.Cells[i, j]:= ordrs[plrs[j]];
        i:= i + 1
      end;
      j:= StatWeekStringGrid.RowCount - 1;
      StatWeekStringGrid.Cells[1, j]:= 'Total';
      for i:= 2 to 12 do
      begin
        id:= 0;
        for k:= 0 to j - 1 do
           id:= id + StatWeekStringGrid.Cells[i, k].ToInteger;
        StatWeekStringGrid.Cells[i, j]:= id.ToString
      end;
    end
    else
      ShowMessage('No players played in group this week')
  end
end;

procedure TForm1.StatWeekReturnButtonClick(Sender: TObject);
begin
  StatSeasonGroupLabel.Visible:= False;
  StatSeasonGroupComboBox.Visible:= False;
  StatSeasonGroupComboBox.Enabled:= False;
  StatDate1Label.Visible:= False;
  StatDate1Label.Enabled:= False;
  StatDate2DateEdit.IsEmpty:= True;
  StatDate2DateEdit.Visible:= False;
  StatDate2DateEdit.Enabled:= False;
  StatWeekReturnButton.Visible:= False;
  StatWeekReturnButton.Enabled:= False;
  WorkQuery.Close;
  StatWeekStringGrid.RowCount:= 0;
  StatActionComboBox.ItemIndex:= 0;
  StatLayout.Visible:= False;
  StatLayout.Enabled:= False;
  StatActionComboBox.Enabled:= False;
  StatActionComboBox.Visible:= False;
  TargetComboBox.ItemIndex:= 0;
  TargetComboBox.Enabled:= True
end;

procedure TForm1.TargetComboBoxChange(Sender: TObject);
begin
  target:= TargetComboBox.Items[TargetComboBox.ItemIndex];
  TargetComboBox.Enabled:= False;
  if Target = 'Season'
  then
  begin
    SeasonActionComboBox.Position.X:= 440;
    SeasonActionComboBox.Position.Y:= 94;
    SeasonActionComboBox.Visible:= True;
    SeasonActionComboBox.Enabled:= True;
  end;
  if target = 'Group'
  then
  begin
    GroupActionComboBox.Position.X:= 440;
    GroupActionComboBox.Position.Y:= 94;
    GroupActionComboBox.Visible:= True;
    GroupActionComboBox.Enabled:= True;
  end;
  if Target = 'Player'
  then
  begin
    PlayerActionComboBox.Position.X:= 440;
    PlayerActionComboBox.Position.Y:= 94;
    PlayerActionComboBox.Visible:= True;
    PlayerActionComboBox.Enabled:= True;
  end;
  if Target = 'Statistics'
  then
  begin
    StatActionComboBox.Position.X:= 440;
    StatActionComboBox.Position.Y:= 94;
    StatActionComboBox.Visible:= True;
    StatActionComboBox.Enabled:= True;
  end;
end;

procedure TForm1.TargetComboBoxMouseEnter(Sender: TObject);
var i: integer;
begin
  if TargetComboBox.Count < 2
  then
  begin
    TargetComboBox.Items.Add('Season');
    TargetComboBox.Items.Add('Player');
    TargetComboBox.Items.Add('Group');
    TargetComboBox.Items.Add('Statistics');
    for i:= 0 to TargetComboBox.Count - 1 do
    begin
      TargetComboBox.ListBox.ListItems[i].TextSettings.Font.Size:= 15;
      TargetComboBox.ListBox.ListItems[i].StyledSettings:= TargetComboBox.ListBox.ListItems[i].StyledSettings - [TStyledSetting.Size];
    end;
  end;
end;

end.
