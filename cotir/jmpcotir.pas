unit jmpcotir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NiApiLib_TLB, connect;

type
  TForm1 = class(TForm)
    ConnectButton: TButton;
    ConnectLabel: TLabel;
    procedure ConnectButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type TNITable = class
private

public
    __Table : TTable ;

    // Constructor/destructor
    constructor Create ;
    destructor Destroy ; override ;

    // TTable methods
    procedure Open( const SrvrSession : IDispatch ; const szName: WideString ; Type_: ETableType ) ; safecall ;
    function GetData( Filter : OleVariant ) : Integer ; safecall ;
    function GetSlice( Filter : OleVariant ) : Integer ; safecall ;
    procedure SetOnlineUpdates( Val : ESubscribtion ) ; safecall ;
    procedure RetrieveField(var Field: OleVariant); safecall;
    procedure RetrieveUpdateField(var pIndexVar: OleVariant); safecall;
    function AddUpdateFilter(ParentId: Integer; Operation: ELogicalOperation;
                             var Field: OleVariant; Condition: ECondition; var Value: OleVariant): Integer; safecall;

    // TTable events
    procedure OnData( ASender : TObject ; iCode : Integer ; const DataRowSet : IDispatch ; const szTableName : WideString ) ;
    procedure OnDataComplete( ASender : TObject ; iCode : Integer ; const szTableName : WideString ) ;
    procedure OnInsert( ASender: TObject ; const NiDataRow : IDispatch ; const szTableName : WideString ) ;
end ;

//******************************************************************************
//  TNIDataRow
//******************************************************************************
type TNIDataRow = class
private

public
    __DataRow : TDataRow ;
    Structure : IDispatch ;
    Item : array of OleVariant ;

    // Constructor/destructor
    constructor Create ;
    destructor  Destroy ; override ;
end ;

//******************************************************************************
// TNITransaction
//******************************************************************************
type TNITransaction = class
private

public
    Trans : TTransaction ;
    Structure : IDispatch ;
    // Constructor/destructor
    constructor Create ;
    destructor Destroy ; override ;
    // Methods
    procedure Open( const SrvrSession : IDispatch ; const Name : WideString ; Type_ : ETableType ) ;
    procedure Execute( const NiDataRow : IDispatch ) ; safecall ;
end ;

//******************************************************************************
// TNIStructure
//******************************************************************************
type TNIStructure = class
private
public
    // Vars
    __Struct : TStructure ;

    // Constructor/destructor
    constructor Create ;
    destructor Destroy ;
    // Methods
//    function FieldName( Index : Integer ) : WideString ; safecall ;
    function FieldAcronym( iIndex : Integer ) : WideString ; safecall ;
end;

type
  TMyThread = class (TThread)
  private
    {Private declarations}
  protected
    procedure Execute; override;
  end;


var
  Form1: TForm1;
  conct: NIsession;

procedure niapi_OnLogin ;
procedure niapi_QuotesOnInsert( NiDataRow : IDispatch ) ;
procedure niapi_QuotesOnData( NiDataRowSet : IDispatch ) ;
procedure niapi_QuotesGetStructure ;

implementation

{$R *.dfm}

constructor TNITable.Create ;
begin
    __Table := TTable.Create( nil ) ;
    __Table.OnInsert := self.OnInsert ;
    __Table.OnData := self.OnData ;
end ;

destructor TNITable.Destroy ;
begin
  FreeAndNil( __Table ) ;
end ;

procedure TNITable.Open (const SrvrSession: IDispatch; const szName: WideString; Type_: ETableType) ; safecall;
begin
  __Table.Open( SrvrSession, szName, Type_ ) ;
end ;

procedure TNITable.OnData( ASender : TObject ; iCode : Integer ; const DataRowSet : IDispatch ; const szTableName : WideString ) ;
begin
    if szTableName = 'QUOTES' then
        niapi_QuotesOnData( DataRowSet ) ;
end ;

procedure TNITable.OnDataComplete( ASender : TObject ; iCode : Integer ; const szTableName : WideString ) ;
begin
    MessageBox (frmMain.Handle, 'OnDataComplete', '', MB_OK ) ;
end ;

procedure TNITable.OnInsert( ASender: TObject ; const NiDataRow : IDispatch ; const szTableName : WideString ) ;
begin
    niapi_QuotesOnInsert( NiDataRow ) ;
end ;

function TNITable.GetData( Filter : OleVariant ) : Integer ; safecall ;
begin
    GetData := __Table.GetData( Filter ) ;
end ;

function TNITable.GetSlice( Filter : OleVariant ) : Integer ; safecall ;
begin
    GetSlice := __Table.GetSlice( Filter ) ;
end ;

procedure TNItable.SetOnlineUpdates( Val : ESubscribtion ) ; safecall ;
begin
    __Table.SetOnlineUpdates( Val ) ;
end ;

//procedure RetrieveField(var Field: OleVariant); safecall;
//    function AddUpdateFilter(ParentId: Integer; Operation: ELogicalOperation;
//                             var Field: OleVariant; Condition: ECondition; var Value: OleVariant): Integer; safecall;

procedure TNITable.RetrieveUpdateField (var pIndexVar: OleVariant); safecall;
begin
    __Table.RetrieveUpdateField (pIndexVar);
end ;

procedure TNITable.RetrieveField (var Field: OleVariant); safecall;
begin
    __Table.RetrieveField (Field) ;
end ;

function TNITable.AddUpdateFilter (ParentId: Integer;
                                           Operation: ELogicalOperation;
                                           var Field: OleVariant;
                                           Condition: ECondition;
                                           var Value: OleVariant): Integer ; safecall ;
begin
    __Table.AddUpdateFilter (ParentId, Operation, Field, Condition, Value);
end;

procedure TMyThread.Execute;
begin

end;

constructor TNIDataRow.Create ;
begin
    __DataRow := TDataRow.Create( nil ) ;
end ;

destructor TNIDataRow.Destroy ;
begin
    FreeAndNil( __DataRow ) ;
end ;

constructor TNITransaction.Create ;
begin
    Trans := TTransaction.Create( nil ) ;
end ;

destructor TNITransaction.Destroy ;
begin
   FreeAndNil( Trans ) ;
end ;

procedure TNITransaction.Open( const SrvrSession : IDispatch ; const Name : WideString ; Type_ : ETableType ) ;
begin
    Trans.Open( SrvrSession, Name, Type_ ) ;
    self.Structure := Trans.Structure ;
end ;

procedure TNITransaction.Execute( const NiDataRow : IDispatch ) ; safecall ;
begin
    Trans.Execute( NiDataRow ) ;
end ;

constructor TNIStructure.Create ;
begin
    __Struct := TStructure.Create( nil ) ;
end ;

destructor TNIStructure.Destroy ;
begin
    FreeAndNil( __Struct ) ;
end ;

function TNIStructure.FieldAcronym( iIndex : Integer ) : WideString ; safecall ;
begin
    FieldAcronym := __Struct.FieldAcronym( iIndex ) ;
end ;

//******************************************************************************
//  Additional procs
//******************************************************************************
procedure niapi_OnLogin ;
var
    Filter : IFilter ;
    ov : OleVariant ;

begin
    // Open QUOTES
    tblQuotes.Open( NISession.S.DefaultInterface, 'QUOTES', tabNoneAddr ) ;
    niapi_QuotesGetStructure ;

//    tblQuotes.GetData( Filter ) ;
    ov := 'I_NAME' ;
    tblQuotes.RetrieveUpdateField( ov ) ;
    tblQuotes.GetSlice( Filter ) ;

   tblQuotes.SetOnlineUpdates( subEnabled ) ;

end ;



procedure TForm1.ConnectButtonClick(Sender: TObject);
begin
  if ConnectButton.Caption = 'Connect'
  then
  begin
    conct:= Nis;
    Form2.ShowModal;
    Form1.Show;
    if logres = 1 then
    begin
      ConnectLabel.Caption:= 'Connected';
      ConnectLabel.Font.Color:= clGreen;
      ConnectButton.Caption:= 'Disconnect'
    end
  end
  else
  begin
    ConnectButton.Caption:= 'Connect';
    conct.disconnect
  end;

end;

end.
