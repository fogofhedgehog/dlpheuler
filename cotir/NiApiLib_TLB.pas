unit NiApiLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 11/25/2020 12:01:26 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: h:\inv\NiApi\NiApi.dll (1)
// LIBID: {512F2FDB-3B7D-456C-94BA-F052E2B3E2D3}
// LCID: 0
// Helpfile: 
// HelpString: NiApi 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Parameter 'Type' of ITable.Open changed to 'Type_'
//   Hint: Parameter 'Type' of ITransaction.Open changed to 'Type_'
//   Hint: Member 'Class' of 'IStatusMessage' changed to 'Class_'
//   Error creating palette bitmap of (TMessage) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TSrvrSession) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TTable) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TStructure) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TDataRow) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TDataRowSet) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TFilter) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TTransaction) : Server H:\inv\NiApi\NiApi.dll contains no icons
//   Error creating palette bitmap of (TStatusMessage) : Server H:\inv\NiApi\NiApi.dll contains no icons
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  NiApiLibMajorVersion = 1;
  NiApiLibMinorVersion = 0;

  LIBID_NiApiLib: TGUID = '{512F2FDB-3B7D-456C-94BA-F052E2B3E2D3}';

  IID_IMessage: TGUID = '{932B092F-4182-40EA-B2C8-314032B8B2A1}';
  CLASS_Message: TGUID = '{B01E956E-EC4D-470A-B717-B1FE6F892921}';
  DIID__ISrvrSessionEvents: TGUID = '{94CE1FA2-C3F1-41D4-A41F-417539A95499}';
  IID_ISrvrSession: TGUID = '{5194DAD8-D42B-49E6-9065-E576C66E34E2}';
  CLASS_SrvrSession: TGUID = '{727BB9ED-54D2-40A7-A6B1-A94ED206FC41}';
  DIID__ITableEvents: TGUID = '{E27F12A4-E9BF-4C7F-8A12-0BACD6F91B5F}';
  DIID__ITableEventsFast: TGUID = '{F3694514-EC8B-4B64-A2CF-10C677047D8B}';
  DIID__ITransactionEvents: TGUID = '{A3454F96-0C0C-4B9B-B87F-FD6C46E18697}';
  IID_ITable: TGUID = '{817A4470-30C6-40B2-8B1E-0C6C0E31FB55}';
  CLASS_Table: TGUID = '{C87F177C-8808-46CA-AF1A-DD3F6AB5C329}';
  IID_IStructure: TGUID = '{2672FE7C-E1E2-432B-A0C3-9EDCA53DFC29}';
  IID_IStructure2: TGUID = '{1361B71C-8791-4C97-A528-77A09DC89959}';
  CLASS_Structure: TGUID = '{08AF38A8-587C-4C3B-AECF-8DB921522F78}';
  IID_IDataRow: TGUID = '{5FC6EA3A-2438-43BA-B0A3-7A7144D31BC3}';
  CLASS_DataRow: TGUID = '{1F0F75C8-F485-491A-BC00-0DE48D52AF26}';
  IID_IDataRowSet: TGUID = '{28A6B3D1-E795-4E0E-A1A5-D28217E510C1}';
  IID_IDataRowSet2: TGUID = '{0A9051AD-9FED-4A1B-800F-C3614E227E6A}';
  CLASS_DataRowSet: TGUID = '{919CE250-70B0-40E4-8D5D-E0E5D253FE7F}';
  IID_IFilter: TGUID = '{E57A25C6-9F96-45AB-8638-47DDC7BB5C35}';
  CLASS_Filter: TGUID = '{626D757F-009E-483B-AFDF-28D6793DB03E}';
  IID_ITransaction: TGUID = '{BC7CC7EC-D9D1-4271-8B31-F99BE3C5A9F0}';
  CLASS_Transaction: TGUID = '{9EC6427B-3A80-4BB8-97C9-1B58E2AA0610}';
  IID_IStatusMessage: TGUID = '{84E3673F-B671-4350-9F8F-C90138FCD47B}';
  CLASS_StatusMessage: TGUID = '{FA1F745D-EAFC-43D3-892E-54318F29F376}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum ETableType
type
  ETableType = TOleEnum;
const
  tabAdrr = $00000000;
  tabNoneAddr = $00000001;

// Constants for enum ESubscribtion
type
  ESubscribtion = TOleEnum;
const
  subEnabled = $00000000;
  subDisabled = $00000001;

// Constants for enum ELogicalOperation
type
  ELogicalOperation = TOleEnum;
const
  logAnd = $00000000;
  logOr = $00000001;

// Constants for enum ECondition
type
  ECondition = TOleEnum;
const
  conEqual = $00000000;
  conNotEqual = $00000001;
  conLess = $00000002;
  conLessOrEqual = $00000003;
  conGreater = $00000004;
  conGreaterOrEqual = $00000005;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMessage = interface;
  IMessageDisp = dispinterface;
  _ISrvrSessionEvents = dispinterface;
  ISrvrSession = interface;
  ISrvrSessionDisp = dispinterface;
  _ITableEvents = dispinterface;
  _ITableEventsFast = dispinterface;
  _ITransactionEvents = dispinterface;
  ITable = interface;
  ITableDisp = dispinterface;
  IStructure = interface;
  IStructureDisp = dispinterface;
  IStructure2 = interface;
  IStructure2Disp = dispinterface;
  IDataRow = interface;
  IDataRowDisp = dispinterface;
  IDataRowSet = interface;
  IDataRowSetDisp = dispinterface;
  IDataRowSet2 = interface;
  IDataRowSet2Disp = dispinterface;
  IFilter = interface;
  IFilterDisp = dispinterface;
  ITransaction = interface;
  ITransactionDisp = dispinterface;
  IStatusMessage = interface;
  IStatusMessageDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Message = IMessage;
  SrvrSession = ISrvrSession;
  Table = ITable;
  Structure = IStructure;
  DataRow = IDataRow;
  DataRowSet = IDataRowSet;
  Filter = IFilter;
  Transaction = ITransaction;
  StatusMessage = IStatusMessage;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IMessage
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {932B092F-4182-40EA-B2C8-314032B8B2A1}
// *********************************************************************//
  IMessage = interface(IDispatch)
    ['{932B092F-4182-40EA-B2C8-314032B8B2A1}']
    function Count: Integer; safecall;
    function Value(Index: Integer): OleVariant; safecall;
    function Separator(Index: Integer): Integer; safecall;
    function Command: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMessageDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {932B092F-4182-40EA-B2C8-314032B8B2A1}
// *********************************************************************//
  IMessageDisp = dispinterface
    ['{932B092F-4182-40EA-B2C8-314032B8B2A1}']
    function Count: Integer; dispid 1;
    function Value(Index: Integer): OleVariant; dispid 2;
    function Separator(Index: Integer): Integer; dispid 3;
    function Command: Integer; dispid 4;
  end;

// *********************************************************************//
// DispIntf:  _ISrvrSessionEvents
// Flags:     (4096) Dispatchable
// GUID:      {94CE1FA2-C3F1-41D4-A41F-417539A95499}
// *********************************************************************//
  _ISrvrSessionEvents = dispinterface
    ['{94CE1FA2-C3F1-41D4-A41F-417539A95499}']
    function OnLogin(LoginResult: Integer): HResult; dispid 1;
    function OnConnectionLost: HResult; dispid 2;
    function OnMessage(const Msg: IDispatch): HResult; dispid 3;
    function OnStatusMessage(const pStatusMessage: IDispatch): HResult; dispid 4;
  end;

// *********************************************************************//
// Interface: ISrvrSession
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5194DAD8-D42B-49E6-9065-E576C66E34E2}
// *********************************************************************//
  ISrvrSession = interface(IDispatch)
    ['{5194DAD8-D42B-49E6-9065-E576C66E34E2}']
    function Get_HostAddr: WideString; safecall;
    procedure Set_HostAddr(const pVal: WideString); safecall;
    function Get_HostPort: Integer; safecall;
    procedure Set_HostPort(pVal: Integer); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pVal: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const pVal: WideString); safecall;
    procedure Connect; safecall;
    procedure Disconnect; safecall;
    function Get_CatalogName: WideString; safecall;
    procedure Set_CatalogName(const pVal: WideString); safecall;
    procedure CryptoStart(const FileName: WideString; const BaseName: WideString; 
                          const NodeName: WideString; const RemoteName: WideString); safecall;
    procedure CryptoStop; safecall;
    function Get_Journal: WideString; safecall;
    procedure Set_Journal(const pVal: WideString); safecall;
    function Get_PartInsert: Integer; safecall;
    procedure Set_PartInsert(pVal: Integer); safecall;
    procedure Ping; safecall;
    procedure CryptoStartSSL(const FileName: WideString; const BaseName: WideString; 
                             const NodeName: WideString; const RemoteName: WideString; 
                             UseSSL: Integer); safecall;
    procedure SetKeyPassword(const Password: WideString); safecall;
    procedure SetTokenPassword(const Password: WideString); safecall;
    procedure SetPSEPassword(const Password: WideString); safecall;
    procedure RequestServerTime; safecall;
    property HostAddr: WideString read Get_HostAddr write Set_HostAddr;
    property HostPort: Integer read Get_HostPort write Set_HostPort;
    property Name: WideString read Get_Name write Set_Name;
    property Password: WideString read Get_Password write Set_Password;
    property CatalogName: WideString read Get_CatalogName write Set_CatalogName;
    property Journal: WideString read Get_Journal write Set_Journal;
    property PartInsert: Integer read Get_PartInsert write Set_PartInsert;
  end;

// *********************************************************************//
// DispIntf:  ISrvrSessionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5194DAD8-D42B-49E6-9065-E576C66E34E2}
// *********************************************************************//
  ISrvrSessionDisp = dispinterface
    ['{5194DAD8-D42B-49E6-9065-E576C66E34E2}']
    property HostAddr: WideString dispid 1;
    property HostPort: Integer dispid 2;
    property Name: WideString dispid 3;
    property Password: WideString dispid 4;
    procedure Connect; dispid 5;
    procedure Disconnect; dispid 6;
    property CatalogName: WideString dispid 7;
    procedure CryptoStart(const FileName: WideString; const BaseName: WideString; 
                          const NodeName: WideString; const RemoteName: WideString); dispid 8;
    procedure CryptoStop; dispid 9;
    property Journal: WideString dispid 10;
    property PartInsert: Integer dispid 11;
    procedure Ping; dispid 12;
    procedure CryptoStartSSL(const FileName: WideString; const BaseName: WideString; 
                             const NodeName: WideString; const RemoteName: WideString; 
                             UseSSL: Integer); dispid 13;
    procedure SetKeyPassword(const Password: WideString); dispid 14;
    procedure SetTokenPassword(const Password: WideString); dispid 15;
    procedure SetPSEPassword(const Password: WideString); dispid 16;
    procedure RequestServerTime; dispid 17;
  end;

// *********************************************************************//
// DispIntf:  _ITableEvents
// Flags:     (4096) Dispatchable
// GUID:      {E27F12A4-E9BF-4C7F-8A12-0BACD6F91B5F}
// *********************************************************************//
  _ITableEvents = dispinterface
    ['{E27F12A4-E9BF-4C7F-8A12-0BACD6F91B5F}']
    function OnData(Code: Integer; const DataRowSet: IDispatch; const TableName: WideString): HResult; dispid 1;
    function OnDataComplete(Code: Integer; const TableName: WideString): HResult; dispid 2;
    function OnClear(const TableName: WideString): HResult; dispid 3;
    function OnClose(const TableName: WideString): HResult; dispid 4;
    function OnInsert(const NiDataRow: IDispatch; const TableName: WideString): HResult; dispid 5;
    function OnModify(const NiDataRow: IDispatch; const TableName: WideString): HResult; dispid 6;
    function OnDelete(Recid: Int64; const TableName: WideString): HResult; dispid 7;
    function OnPartInsert(const NiDataRow: IDispatch; const TableName: WideString): HResult; dispid 8;
  end;

// *********************************************************************//
// DispIntf:  _ITableEventsFast
// Flags:     (4096) Dispatchable
// GUID:      {F3694514-EC8B-4B64-A2CF-10C677047D8B}
// *********************************************************************//
  _ITableEventsFast = dispinterface
    ['{F3694514-EC8B-4B64-A2CF-10C677047D8B}']
    function OnData(Code: Integer; pRowSetArray: OleVariant; const TableName: WideString): HResult; dispid 1;
    function OnDataComplete(Code: Integer; const TableName: WideString): HResult; dispid 2;
    function OnClear(const TableName: WideString): HResult; dispid 3;
    function OnClose(const TableName: WideString): HResult; dispid 4;
    function OnInsert(pRowArray: OleVariant; const TableName: WideString): HResult; dispid 5;
    function OnModify(pRowArray: OleVariant; const TableName: WideString): HResult; dispid 6;
    function OnDelete(Recid: Int64; const TableName: WideString): HResult; dispid 7;
    function OnPartInsert(const NiDataRow: IDispatch; const TableName: WideString): HResult; dispid 8;
  end;

// *********************************************************************//
// DispIntf:  _ITransactionEvents
// Flags:     (4096) Dispatchable
// GUID:      {A3454F96-0C0C-4B9B-B87F-FD6C46E18697}
// *********************************************************************//
  _ITransactionEvents = dispinterface
    ['{A3454F96-0C0C-4B9B-B87F-FD6C46E18697}']
    function OnClose: HResult; dispid 4;
  end;

// *********************************************************************//
// Interface: ITable
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {817A4470-30C6-40B2-8B1E-0C6C0E31FB55}
// *********************************************************************//
  ITable = interface(IDispatch)
    ['{817A4470-30C6-40B2-8B1E-0C6C0E31FB55}']
    function GetData(Filter: OleVariant): Integer; safecall;
    function Get_Structure: IDispatch; safecall;
    procedure Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType); safecall;
    function Get_Name: WideString; safecall;
    function GetSlice(Filter: OleVariant): Integer; safecall;
    function Get_Addressed: ETableType; safecall;
    procedure SetOnlineUpdates(Val: ESubscribtion); safecall;
    procedure Clear; safecall;
    procedure Insert(const NiDataRow: IDispatch); safecall;
    procedure Modify(const NiDataRow: IDispatch); safecall;
    procedure Delete(Recid: Int64); safecall;
    procedure RetrieveField(const Field: OleVariant); safecall;
    procedure ClearRetrieveFields; safecall;
    function AddUpdateFilter(ParentId: Integer; Operation: ELogicalOperation; 
                             const Field: OleVariant; Condition: ECondition; const Value: OleVariant): Integer; safecall;
    procedure DeleteUpdateFilter(FilterId: Integer); safecall;
    procedure RetrieveUpdateField(const pIndexVar: OleVariant); safecall;
    procedure ClearRetrieveUpdateFields; safecall;
    property Structure: IDispatch read Get_Structure;
    property Name: WideString read Get_Name;
    property Addressed: ETableType read Get_Addressed;
  end;

// *********************************************************************//
// DispIntf:  ITableDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {817A4470-30C6-40B2-8B1E-0C6C0E31FB55}
// *********************************************************************//
  ITableDisp = dispinterface
    ['{817A4470-30C6-40B2-8B1E-0C6C0E31FB55}']
    function GetData(Filter: OleVariant): Integer; dispid 1;
    property Structure: IDispatch readonly dispid 2;
    procedure Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType); dispid 3;
    property Name: WideString readonly dispid 4;
    function GetSlice(Filter: OleVariant): Integer; dispid 5;
    property Addressed: ETableType readonly dispid 6;
    procedure SetOnlineUpdates(Val: ESubscribtion); dispid 7;
    procedure Clear; dispid 8;
    procedure Insert(const NiDataRow: IDispatch); dispid 9;
    procedure Modify(const NiDataRow: IDispatch); dispid 10;
    procedure Delete(Recid: Int64); dispid 11;
    procedure RetrieveField(const Field: OleVariant); dispid 12;
    procedure ClearRetrieveFields; dispid 13;
    function AddUpdateFilter(ParentId: Integer; Operation: ELogicalOperation; 
                             const Field: OleVariant; Condition: ECondition; const Value: OleVariant): Integer; dispid 14;
    procedure DeleteUpdateFilter(FilterId: Integer); dispid 15;
    procedure RetrieveUpdateField(const pIndexVar: OleVariant); dispid 16;
    procedure ClearRetrieveUpdateFields; dispid 17;
  end;

// *********************************************************************//
// Interface: IStructure
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2672FE7C-E1E2-432B-A0C3-9EDCA53DFC29}
// *********************************************************************//
  IStructure = interface(IDispatch)
    ['{2672FE7C-E1E2-432B-A0C3-9EDCA53DFC29}']
    function Get_Count: Integer; safecall;
    function FieldName(Index: Integer): WideString; safecall;
    function FieldAcronym(Index: Integer): WideString; safecall;
    function FieldDispName(Index: Integer): WideString; safecall;
    function FieldType(Index: Integer): Integer; safecall;
    function FieldNum(i: Integer): Integer; safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IStructureDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2672FE7C-E1E2-432B-A0C3-9EDCA53DFC29}
// *********************************************************************//
  IStructureDisp = dispinterface
    ['{2672FE7C-E1E2-432B-A0C3-9EDCA53DFC29}']
    property Count: Integer readonly dispid 1;
    function FieldName(Index: Integer): WideString; dispid 2;
    function FieldAcronym(Index: Integer): WideString; dispid 3;
    function FieldDispName(Index: Integer): WideString; dispid 4;
    function FieldType(Index: Integer): Integer; dispid 5;
    function FieldNum(i: Integer): Integer; dispid 6;
  end;

// *********************************************************************//
// Interface: IStructure2
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1361B71C-8791-4C97-A528-77A09DC89959}
// *********************************************************************//
  IStructure2 = interface(IStructure)
    ['{1361B71C-8791-4C97-A528-77A09DC89959}']
    function FieldVisible(Index: Integer): Integer; safecall;
    function FieldLinked(Index: Integer): Integer; safecall;
    function FieldCalculate(Index: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IStructure2Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1361B71C-8791-4C97-A528-77A09DC89959}
// *********************************************************************//
  IStructure2Disp = dispinterface
    ['{1361B71C-8791-4C97-A528-77A09DC89959}']
    function FieldVisible(Index: Integer): Integer; dispid 7;
    function FieldLinked(Index: Integer): Integer; dispid 8;
    function FieldCalculate(Index: Integer): Integer; dispid 9;
    property Count: Integer readonly dispid 1;
    function FieldName(Index: Integer): WideString; dispid 2;
    function FieldAcronym(Index: Integer): WideString; dispid 3;
    function FieldDispName(Index: Integer): WideString; dispid 4;
    function FieldType(Index: Integer): Integer; dispid 5;
    function FieldNum(i: Integer): Integer; dispid 6;
  end;

// *********************************************************************//
// Interface: IDataRow
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5FC6EA3A-2438-43BA-B0A3-7A7144D31BC3}
// *********************************************************************//
  IDataRow = interface(IDispatch)
    ['{5FC6EA3A-2438-43BA-B0A3-7A7144D31BC3}']
    function Get_Count: Integer; safecall;
    function Get_Structure: IDispatch; safecall;
    procedure Set_Structure(const pVal: IDispatch); safecall;
    function Get_Item(const indexVar: OleVariant): OleVariant; safecall;
    procedure Set_Item(const indexVar: OleVariant; pVal: OleVariant); safecall;
    property Count: Integer read Get_Count;
    property Structure: IDispatch read Get_Structure write Set_Structure;
    property Item[const indexVar: OleVariant]: OleVariant read Get_Item write Set_Item;
  end;

// *********************************************************************//
// DispIntf:  IDataRowDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5FC6EA3A-2438-43BA-B0A3-7A7144D31BC3}
// *********************************************************************//
  IDataRowDisp = dispinterface
    ['{5FC6EA3A-2438-43BA-B0A3-7A7144D31BC3}']
    property Count: Integer readonly dispid 1;
    property Structure: IDispatch dispid 4;
    property Item[const indexVar: OleVariant]: OleVariant dispid 8;
  end;

// *********************************************************************//
// Interface: IDataRowSet
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {28A6B3D1-E795-4E0E-A1A5-D28217E510C1}
// *********************************************************************//
  IDataRowSet = interface(IDispatch)
    ['{28A6B3D1-E795-4E0E-A1A5-D28217E510C1}']
    function Get_Count: Integer; safecall;
    function GetRow(Index: Integer): IDispatch; safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IDataRowSetDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {28A6B3D1-E795-4E0E-A1A5-D28217E510C1}
// *********************************************************************//
  IDataRowSetDisp = dispinterface
    ['{28A6B3D1-E795-4E0E-A1A5-D28217E510C1}']
    property Count: Integer readonly dispid 1;
    function GetRow(Index: Integer): IDispatch; dispid 2;
  end;

// *********************************************************************//
// Interface: IDataRowSet2
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0A9051AD-9FED-4A1B-800F-C3614E227E6A}
// *********************************************************************//
  IDataRowSet2 = interface(IDataRowSet)
    ['{0A9051AD-9FED-4A1B-800F-C3614E227E6A}']
    function GetRowBSTRArr(i: Integer): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDataRowSet2Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0A9051AD-9FED-4A1B-800F-C3614E227E6A}
// *********************************************************************//
  IDataRowSet2Disp = dispinterface
    ['{0A9051AD-9FED-4A1B-800F-C3614E227E6A}']
    function GetRowBSTRArr(i: Integer): OleVariant; dispid 3;
    property Count: Integer readonly dispid 1;
    function GetRow(Index: Integer): IDispatch; dispid 2;
  end;

// *********************************************************************//
// Interface: IFilter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E57A25C6-9F96-45AB-8638-47DDC7BB5C35}
// *********************************************************************//
  IFilter = interface(IDispatch)
    ['{E57A25C6-9F96-45AB-8638-47DDC7BB5C35}']
    procedure Clear; safecall;
    procedure Add(const pIndexVar: OleVariant; Condition: ECondition; const pVal: OleVariant); safecall;
    function Get_Structure: IDispatch; safecall;
    procedure Set_Structure(const pVal: IDispatch); safecall;
    property Structure: IDispatch read Get_Structure write Set_Structure;
  end;

// *********************************************************************//
// DispIntf:  IFilterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E57A25C6-9F96-45AB-8638-47DDC7BB5C35}
// *********************************************************************//
  IFilterDisp = dispinterface
    ['{E57A25C6-9F96-45AB-8638-47DDC7BB5C35}']
    procedure Clear; dispid 1;
    procedure Add(const pIndexVar: OleVariant; Condition: ECondition; const pVal: OleVariant); dispid 2;
    property Structure: IDispatch dispid 3;
  end;

// *********************************************************************//
// Interface: ITransaction
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BC7CC7EC-D9D1-4271-8B31-F99BE3C5A9F0}
// *********************************************************************//
  ITransaction = interface(IDispatch)
    ['{BC7CC7EC-D9D1-4271-8B31-F99BE3C5A9F0}']
    procedure Execute(const NiDataRow: IDispatch); safecall;
    function Get_Addressed: ETableType; safecall;
    function Get_Name: WideString; safecall;
    procedure Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType); safecall;
    function Get_Structure: IDispatch; safecall;
    property Addressed: ETableType read Get_Addressed;
    property Name: WideString read Get_Name;
    property Structure: IDispatch read Get_Structure;
  end;

// *********************************************************************//
// DispIntf:  ITransactionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BC7CC7EC-D9D1-4271-8B31-F99BE3C5A9F0}
// *********************************************************************//
  ITransactionDisp = dispinterface
    ['{BC7CC7EC-D9D1-4271-8B31-F99BE3C5A9F0}']
    procedure Execute(const NiDataRow: IDispatch); dispid 2;
    property Addressed: ETableType readonly dispid 3;
    property Name: WideString readonly dispid 4;
    procedure Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType); dispid 5;
    property Structure: IDispatch readonly dispid 6;
  end;

// *********************************************************************//
// Interface: IStatusMessage
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {84E3673F-B671-4350-9F8F-C90138FCD47B}
// *********************************************************************//
  IStatusMessage = interface(IDispatch)
    ['{84E3673F-B671-4350-9F8F-C90138FCD47B}']
    function Get_Code: Integer; safecall;
    function Get_Description: WideString; safecall;
    function Get_Class_: WideString; safecall;
    function Get_ExtendedInfo: WideString; safecall;
    function Get_Message: IDispatch; safecall;
    property Code: Integer read Get_Code;
    property Description: WideString read Get_Description;
    property Class_: WideString read Get_Class_;
    property ExtendedInfo: WideString read Get_ExtendedInfo;
    property Message: IDispatch read Get_Message;
  end;

// *********************************************************************//
// DispIntf:  IStatusMessageDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {84E3673F-B671-4350-9F8F-C90138FCD47B}
// *********************************************************************//
  IStatusMessageDisp = dispinterface
    ['{84E3673F-B671-4350-9F8F-C90138FCD47B}']
    property Code: Integer readonly dispid 1;
    property Description: WideString readonly dispid 2;
    property Class_: WideString readonly dispid 3;
    property ExtendedInfo: WideString readonly dispid 4;
    property Message: IDispatch readonly dispid 5;
  end;

// *********************************************************************//
// The Class CoMessage provides a Create and CreateRemote method to          
// create instances of the default interface IMessage exposed by              
// the CoClass Message. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMessage = class
    class function Create: IMessage;
    class function CreateRemote(const MachineName: string): IMessage;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMessage
// Help String      : Message Class
// Default Interface: IMessage
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TMessage = class(TOleServer)
  private
    FIntf: IMessage;
    function GetDefaultInterface: IMessage;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMessage);
    procedure Disconnect; override;
    function Count: Integer;
    function Value(Index: Integer): OleVariant;
    function Separator(Index: Integer): Integer;
    function Command: Integer;
    property DefaultInterface: IMessage read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoSrvrSession provides a Create and CreateRemote method to          
// create instances of the default interface ISrvrSession exposed by              
// the CoClass SrvrSession. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSrvrSession = class
    class function Create: ISrvrSession;
    class function CreateRemote(const MachineName: string): ISrvrSession;
  end;

  TSrvrSessionOnLogin = procedure(ASender: TObject; LoginResult: Integer) of object;
  TSrvrSessionOnMessage = procedure(ASender: TObject; const Msg: IDispatch) of object;
  TSrvrSessionOnStatusMessage = procedure(ASender: TObject; const pStatusMessage: IDispatch) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSrvrSession
// Help String      : SrvrSession Class
// Default Interface: ISrvrSession
// Def. Intf. DISP? : No
// Event   Interface: _ISrvrSessionEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TSrvrSession = class(TOleServer)
  private
    FOnLogin: TSrvrSessionOnLogin;
    FOnConnectionLost: TNotifyEvent;
    FOnMessage: TSrvrSessionOnMessage;
    FOnStatusMessage: TSrvrSessionOnStatusMessage;
    FIntf: ISrvrSession;
    function GetDefaultInterface: ISrvrSession;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_HostAddr: WideString;
    procedure Set_HostAddr(const pVal: WideString);
    function Get_HostPort: Integer;
    procedure Set_HostPort(pVal: Integer);
    function Get_Name: WideString;
    procedure Set_Name(const pVal: WideString);
    function Get_Password: WideString;
    procedure Set_Password(const pVal: WideString);
    function Get_CatalogName: WideString;
    procedure Set_CatalogName(const pVal: WideString);
    function Get_Journal: WideString;
    procedure Set_Journal(const pVal: WideString);
    function Get_PartInsert: Integer;
    procedure Set_PartInsert(pVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISrvrSession);
    procedure Disconnect; override;
    procedure Connect1;
    procedure Disconnect1;
    procedure CryptoStart(const FileName: WideString; const BaseName: WideString; 
                          const NodeName: WideString; const RemoteName: WideString);
    procedure CryptoStop;
    procedure Ping;
    procedure CryptoStartSSL(const FileName: WideString; const BaseName: WideString; 
                             const NodeName: WideString; const RemoteName: WideString; 
                             UseSSL: Integer);
    procedure SetKeyPassword(const Password: WideString);
    procedure SetTokenPassword(const Password: WideString);
    procedure SetPSEPassword(const Password: WideString);
    procedure RequestServerTime;
    property DefaultInterface: ISrvrSession read GetDefaultInterface;
    property HostAddr: WideString read Get_HostAddr write Set_HostAddr;
    property HostPort: Integer read Get_HostPort write Set_HostPort;
    property Name: WideString read Get_Name write Set_Name;
    property Password: WideString read Get_Password write Set_Password;
    property CatalogName: WideString read Get_CatalogName write Set_CatalogName;
    property Journal: WideString read Get_Journal write Set_Journal;
    property PartInsert: Integer read Get_PartInsert write Set_PartInsert;
  published
    property OnLogin: TSrvrSessionOnLogin read FOnLogin write FOnLogin;
    property OnConnectionLost: TNotifyEvent read FOnConnectionLost write FOnConnectionLost;
    property OnMessage: TSrvrSessionOnMessage read FOnMessage write FOnMessage;
    property OnStatusMessage: TSrvrSessionOnStatusMessage read FOnStatusMessage write FOnStatusMessage;
  end;

// *********************************************************************//
// The Class CoTable provides a Create and CreateRemote method to          
// create instances of the default interface ITable exposed by              
// the CoClass Table. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTable = class
    class function Create: ITable;
    class function CreateRemote(const MachineName: string): ITable;
  end;

  TTableOnData = procedure(ASender: TObject; Code: Integer; const DataRowSet: IDispatch; 
                                             const TableName: WideString) of object;
  TTableOnDataComplete = procedure(ASender: TObject; Code: Integer; const TableName: WideString) of object;
  TTableOnClear = procedure(ASender: TObject; const TableName: WideString) of object;
  TTableOnClose = procedure(ASender: TObject; const TableName: WideString) of object;
  TTableOnInsert = procedure(ASender: TObject; const NiDataRow: IDispatch; 
                                               const TableName: WideString) of object;
  TTableOnModify = procedure(ASender: TObject; const NiDataRow: IDispatch; 
                                               const TableName: WideString) of object;
  TTableOnDelete = procedure(ASender: TObject; Recid: Int64; const TableName: WideString) of object;
  TTableOnPartInsert = procedure(ASender: TObject; const NiDataRow: IDispatch; 
                                                   const TableName: WideString) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTable
// Help String      : Table Class
// Default Interface: ITable
// Def. Intf. DISP? : No
// Event   Interface: _ITableEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTable = class(TOleServer)
  private
    FOnData: TTableOnData;
    FOnDataComplete: TTableOnDataComplete;
    FOnClear: TTableOnClear;
    FOnClose: TTableOnClose;
    FOnInsert: TTableOnInsert;
    FOnModify: TTableOnModify;
    FOnDelete: TTableOnDelete;
    FOnPartInsert: TTableOnPartInsert;
    FIntf: ITable;
    function GetDefaultInterface: ITable;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Structure: IDispatch;
    function Get_Name: WideString;
    function Get_Addressed: ETableType;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ITable);
    procedure Disconnect; override;
    function GetData: Integer; overload;
    function GetData(Filter: OleVariant): Integer; overload;
    procedure Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType);
    function GetSlice: Integer; overload;
    function GetSlice(Filter: OleVariant): Integer; overload;
    procedure SetOnlineUpdates(Val: ESubscribtion);
    procedure Clear;
    procedure Insert(const NiDataRow: IDispatch);
    procedure Modify(const NiDataRow: IDispatch);
    procedure Delete(Recid: Int64);
    procedure RetrieveField(const Field: OleVariant);
    procedure ClearRetrieveFields;
    function AddUpdateFilter(ParentId: Integer; Operation: ELogicalOperation; 
                             const Field: OleVariant; Condition: ECondition; const Value: OleVariant): Integer;
    procedure DeleteUpdateFilter(FilterId: Integer);
    procedure RetrieveUpdateField(const pIndexVar: OleVariant);
    procedure ClearRetrieveUpdateFields;
    property DefaultInterface: ITable read GetDefaultInterface;
    property Structure: IDispatch read Get_Structure;
    property Name: WideString read Get_Name;
    property Addressed: ETableType read Get_Addressed;
  published
    property OnData: TTableOnData read FOnData write FOnData;
    property OnDataComplete: TTableOnDataComplete read FOnDataComplete write FOnDataComplete;
    property OnClear: TTableOnClear read FOnClear write FOnClear;
    property OnClose: TTableOnClose read FOnClose write FOnClose;
    property OnInsert: TTableOnInsert read FOnInsert write FOnInsert;
    property OnModify: TTableOnModify read FOnModify write FOnModify;
    property OnDelete: TTableOnDelete read FOnDelete write FOnDelete;
    property OnPartInsert: TTableOnPartInsert read FOnPartInsert write FOnPartInsert;
  end;

// *********************************************************************//
// The Class CoStructure provides a Create and CreateRemote method to          
// create instances of the default interface IStructure exposed by              
// the CoClass Structure. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStructure = class
    class function Create: IStructure;
    class function CreateRemote(const MachineName: string): IStructure;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TStructure
// Help String      : Structure Class
// Default Interface: IStructure
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TStructure = class(TOleServer)
  private
    FIntf: IStructure;
    function GetDefaultInterface: IStructure;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IStructure);
    procedure Disconnect; override;
    function FieldName(Index: Integer): WideString;
    function FieldAcronym(Index: Integer): WideString;
    function FieldDispName(Index: Integer): WideString;
    function FieldType(Index: Integer): Integer;
    function FieldNum(i: Integer): Integer;
    property DefaultInterface: IStructure read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
  end;

// *********************************************************************//
// The Class CoDataRow provides a Create and CreateRemote method to          
// create instances of the default interface IDataRow exposed by              
// the CoClass DataRow. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataRow = class
    class function Create: IDataRow;
    class function CreateRemote(const MachineName: string): IDataRow;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDataRow
// Help String      : DataRow Class
// Default Interface: IDataRow
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TDataRow = class(TOleServer)
  private
    FIntf: IDataRow;
    function GetDefaultInterface: IDataRow;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
    function Get_Structure: IDispatch;
    procedure Set_Structure(const pVal: IDispatch);
    function Get_Item(const indexVar: OleVariant): OleVariant;
    procedure Set_Item(const indexVar: OleVariant; pVal: OleVariant);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDataRow);
    procedure Disconnect; override;
    property DefaultInterface: IDataRow read GetDefaultInterface;
    property Count: Integer read Get_Count;
    property Structure: IDispatch read Get_Structure write Set_Structure;
    property Item[const indexVar: OleVariant]: OleVariant read Get_Item write Set_Item;
  published
  end;

// *********************************************************************//
// The Class CoDataRowSet provides a Create and CreateRemote method to          
// create instances of the default interface IDataRowSet exposed by              
// the CoClass DataRowSet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDataRowSet = class
    class function Create: IDataRowSet;
    class function CreateRemote(const MachineName: string): IDataRowSet;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDataRowSet
// Help String      : DataRowSet Class
// Default Interface: IDataRowSet
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TDataRowSet = class(TOleServer)
  private
    FIntf: IDataRowSet;
    function GetDefaultInterface: IDataRowSet;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDataRowSet);
    procedure Disconnect; override;
    function GetRow(Index: Integer): IDispatch;
    property DefaultInterface: IDataRowSet read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
  end;

// *********************************************************************//
// The Class CoFilter provides a Create and CreateRemote method to          
// create instances of the default interface IFilter exposed by              
// the CoClass Filter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFilter = class
    class function Create: IFilter;
    class function CreateRemote(const MachineName: string): IFilter;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFilter
// Help String      : Filter Class
// Default Interface: IFilter
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TFilter = class(TOleServer)
  private
    FIntf: IFilter;
    function GetDefaultInterface: IFilter;
  protected
    procedure InitServerData; override;
    function Get_Structure: IDispatch;
    procedure Set_Structure(const pVal: IDispatch);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IFilter);
    procedure Disconnect; override;
    procedure Clear;
    procedure Add(const pIndexVar: OleVariant; Condition: ECondition; const pVal: OleVariant);
    property DefaultInterface: IFilter read GetDefaultInterface;
    property Structure: IDispatch read Get_Structure write Set_Structure;
  published
  end;

// *********************************************************************//
// The Class CoTransaction provides a Create and CreateRemote method to          
// create instances of the default interface ITransaction exposed by              
// the CoClass Transaction. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTransaction = class
    class function Create: ITransaction;
    class function CreateRemote(const MachineName: string): ITransaction;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTransaction
// Help String      : Transaction Class
// Default Interface: ITransaction
// Def. Intf. DISP? : No
// Event   Interface: _ITransactionEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TTransaction = class(TOleServer)
  private
    FOnClose: TNotifyEvent;
    FIntf: ITransaction;
    function GetDefaultInterface: ITransaction;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Addressed: ETableType;
    function Get_Name: WideString;
    function Get_Structure: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ITransaction);
    procedure Disconnect; override;
    procedure Execute(const NiDataRow: IDispatch);
    procedure Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType);
    property DefaultInterface: ITransaction read GetDefaultInterface;
    property Addressed: ETableType read Get_Addressed;
    property Name: WideString read Get_Name;
    property Structure: IDispatch read Get_Structure;
  published
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
  end;

// *********************************************************************//
// The Class CoStatusMessage provides a Create and CreateRemote method to          
// create instances of the default interface IStatusMessage exposed by              
// the CoClass StatusMessage. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStatusMessage = class
    class function Create: IStatusMessage;
    class function CreateRemote(const MachineName: string): IStatusMessage;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TStatusMessage
// Help String      : StatusMessage Class
// Default Interface: IStatusMessage
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TStatusMessage = class(TOleServer)
  private
    FIntf: IStatusMessage;
    function GetDefaultInterface: IStatusMessage;
  protected
    procedure InitServerData; override;
    function Get_Code: Integer;
    function Get_Description: WideString;
    function Get_Class_: WideString;
    function Get_ExtendedInfo: WideString;
    function Get_Message: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IStatusMessage);
    procedure Disconnect; override;
    property DefaultInterface: IStatusMessage read GetDefaultInterface;
    property Code: Integer read Get_Code;
    property Description: WideString read Get_Description;
    property Class_: WideString read Get_Class_;
    property ExtendedInfo: WideString read Get_ExtendedInfo;
    property Message: IDispatch read Get_Message;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses System.Win.ComObj;

class function CoMessage.Create: IMessage;
begin
  Result := CreateComObject(CLASS_Message) as IMessage;
end;

class function CoMessage.CreateRemote(const MachineName: string): IMessage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Message) as IMessage;
end;

procedure TMessage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B01E956E-EC4D-470A-B717-B1FE6F892921}';
    IntfIID:   '{932B092F-4182-40EA-B2C8-314032B8B2A1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMessage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMessage;
  end;
end;

procedure TMessage.ConnectTo(svrIntf: IMessage);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMessage.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMessage.GetDefaultInterface: IMessage;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TMessage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TMessage.Destroy;
begin
  inherited Destroy;
end;

function TMessage.Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TMessage.Value(Index: Integer): OleVariant;
begin
  Result := DefaultInterface.Value(Index);
end;

function TMessage.Separator(Index: Integer): Integer;
begin
  Result := DefaultInterface.Separator(Index);
end;

function TMessage.Command: Integer;
begin
  Result := DefaultInterface.Command;
end;

class function CoSrvrSession.Create: ISrvrSession;
begin
  Result := CreateComObject(CLASS_SrvrSession) as ISrvrSession;
end;

class function CoSrvrSession.CreateRemote(const MachineName: string): ISrvrSession;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SrvrSession) as ISrvrSession;
end;

procedure TSrvrSession.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{727BB9ED-54D2-40A7-A6B1-A94ED206FC41}';
    IntfIID:   '{5194DAD8-D42B-49E6-9065-E576C66E34E2}';
    EventIID:  '{94CE1FA2-C3F1-41D4-A41F-417539A95499}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSrvrSession.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as ISrvrSession;
  end;
end;

procedure TSrvrSession.ConnectTo(svrIntf: ISrvrSession);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TSrvrSession.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TSrvrSession.GetDefaultInterface: ISrvrSession;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSrvrSession.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TSrvrSession.Destroy;
begin
  inherited Destroy;
end;

procedure TSrvrSession.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1: if Assigned(FOnLogin) then
         FOnLogin(Self, Params[0] {Integer});
    2: if Assigned(FOnConnectionLost) then
         FOnConnectionLost(Self);
    3: if Assigned(FOnMessage) then
         FOnMessage(Self, Params[0] {const IDispatch});
    4: if Assigned(FOnStatusMessage) then
         FOnStatusMessage(Self, Params[0] {const IDispatch});
  end; {case DispID}
end;

function TSrvrSession.Get_HostAddr: WideString;
begin
  Result := DefaultInterface.HostAddr;
end;

procedure TSrvrSession.Set_HostAddr(const pVal: WideString);
begin
  DefaultInterface.HostAddr := pVal;
end;

function TSrvrSession.Get_HostPort: Integer;
begin
  Result := DefaultInterface.HostPort;
end;

procedure TSrvrSession.Set_HostPort(pVal: Integer);
begin
  DefaultInterface.HostPort := pVal;
end;

function TSrvrSession.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

procedure TSrvrSession.Set_Name(const pVal: WideString);
begin
  DefaultInterface.Name := pVal;
end;

function TSrvrSession.Get_Password: WideString;
begin
  Result := DefaultInterface.Password;
end;

procedure TSrvrSession.Set_Password(const pVal: WideString);
begin
  DefaultInterface.Password := pVal;
end;

function TSrvrSession.Get_CatalogName: WideString;
begin
  Result := DefaultInterface.CatalogName;
end;

procedure TSrvrSession.Set_CatalogName(const pVal: WideString);
begin
  DefaultInterface.CatalogName := pVal;
end;

function TSrvrSession.Get_Journal: WideString;
begin
  Result := DefaultInterface.Journal;
end;

procedure TSrvrSession.Set_Journal(const pVal: WideString);
begin
  DefaultInterface.Journal := pVal;
end;

function TSrvrSession.Get_PartInsert: Integer;
begin
  Result := DefaultInterface.PartInsert;
end;

procedure TSrvrSession.Set_PartInsert(pVal: Integer);
begin
  DefaultInterface.PartInsert := pVal;
end;

procedure TSrvrSession.Connect1;
begin
  DefaultInterface.Connect;
end;

procedure TSrvrSession.Disconnect1;
begin
  DefaultInterface.Disconnect;
end;

procedure TSrvrSession.CryptoStart(const FileName: WideString; const BaseName: WideString; 
                                   const NodeName: WideString; const RemoteName: WideString);
begin
  DefaultInterface.CryptoStart(FileName, BaseName, NodeName, RemoteName);
end;

procedure TSrvrSession.CryptoStop;
begin
  DefaultInterface.CryptoStop;
end;

procedure TSrvrSession.Ping;
begin
  DefaultInterface.Ping;
end;

procedure TSrvrSession.CryptoStartSSL(const FileName: WideString; const BaseName: WideString; 
                                      const NodeName: WideString; const RemoteName: WideString; 
                                      UseSSL: Integer);
begin
  DefaultInterface.CryptoStartSSL(FileName, BaseName, NodeName, RemoteName, UseSSL);
end;

procedure TSrvrSession.SetKeyPassword(const Password: WideString);
begin
  DefaultInterface.SetKeyPassword(Password);
end;

procedure TSrvrSession.SetTokenPassword(const Password: WideString);
begin
  DefaultInterface.SetTokenPassword(Password);
end;

procedure TSrvrSession.SetPSEPassword(const Password: WideString);
begin
  DefaultInterface.SetPSEPassword(Password);
end;

procedure TSrvrSession.RequestServerTime;
begin
  DefaultInterface.RequestServerTime;
end;

class function CoTable.Create: ITable;
begin
  Result := CreateComObject(CLASS_Table) as ITable;
end;

class function CoTable.CreateRemote(const MachineName: string): ITable;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Table) as ITable;
end;

procedure TTable.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C87F177C-8808-46CA-AF1A-DD3F6AB5C329}';
    IntfIID:   '{817A4470-30C6-40B2-8B1E-0C6C0E31FB55}';
    EventIID:  '{E27F12A4-E9BF-4C7F-8A12-0BACD6F91B5F}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTable.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as ITable;
  end;
end;

procedure TTable.ConnectTo(svrIntf: ITable);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TTable.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TTable.GetDefaultInterface: ITable;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTable.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTable.Destroy;
begin
  inherited Destroy;
end;

procedure TTable.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    1: if Assigned(FOnData) then
         FOnData(Self,
                 Params[0] {Integer},
                 Params[1] {const IDispatch},
                 Params[2] {const WideString});
    2: if Assigned(FOnDataComplete) then
         FOnDataComplete(Self,
                         Params[0] {Integer},
                         Params[1] {const WideString});
    3: if Assigned(FOnClear) then
         FOnClear(Self, Params[0] {const WideString});
    4: if Assigned(FOnClose) then
         FOnClose(Self, Params[0] {const WideString});
    5: if Assigned(FOnInsert) then
         FOnInsert(Self,
                   Params[0] {const IDispatch},
                   Params[1] {const WideString});
    6: if Assigned(FOnModify) then
         FOnModify(Self,
                   Params[0] {const IDispatch},
                   Params[1] {const WideString});
    7: if Assigned(FOnDelete) then
         FOnDelete(Self,
                   Params[0] {Int64},
                   Params[1] {const WideString});
    8: if Assigned(FOnPartInsert) then
         FOnPartInsert(Self,
                       Params[0] {const IDispatch},
                       Params[1] {const WideString});
  end; {case DispID}
end;

function TTable.Get_Structure: IDispatch;
begin
  Result := DefaultInterface.Structure;
end;

function TTable.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TTable.Get_Addressed: ETableType;
begin
  Result := DefaultInterface.Addressed;
end;

function TTable.GetData: Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.GetData(EmptyParam);
end;

function TTable.GetData(Filter: OleVariant): Integer;
begin
  Result := DefaultInterface.GetData(Filter);
end;

procedure TTable.Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType);
begin
  DefaultInterface.Open(SrvrSession, Name, Type_);
end;

function TTable.GetSlice: Integer;
var
  EmptyParam: OleVariant;
begin
  EmptyParam := System.Variants.EmptyParam;
  Result := DefaultInterface.GetSlice(EmptyParam);
end;

function TTable.GetSlice(Filter: OleVariant): Integer;
begin
  Result := DefaultInterface.GetSlice(Filter);
end;

procedure TTable.SetOnlineUpdates(Val: ESubscribtion);
begin
  DefaultInterface.SetOnlineUpdates(Val);
end;

procedure TTable.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TTable.Insert(const NiDataRow: IDispatch);
begin
  DefaultInterface.Insert(NiDataRow);
end;

procedure TTable.Modify(const NiDataRow: IDispatch);
begin
  DefaultInterface.Modify(NiDataRow);
end;

procedure TTable.Delete(Recid: Int64);
begin
  DefaultInterface.Delete(Recid);
end;

procedure TTable.RetrieveField(const Field: OleVariant);
begin
  DefaultInterface.RetrieveField(Field);
end;

procedure TTable.ClearRetrieveFields;
begin
  DefaultInterface.ClearRetrieveFields;
end;

function TTable.AddUpdateFilter(ParentId: Integer; Operation: ELogicalOperation; 
                                const Field: OleVariant; Condition: ECondition; 
                                const Value: OleVariant): Integer;
begin
  Result := DefaultInterface.AddUpdateFilter(ParentId, Operation, Field, Condition, Value);
end;

procedure TTable.DeleteUpdateFilter(FilterId: Integer);
begin
  DefaultInterface.DeleteUpdateFilter(FilterId);
end;

procedure TTable.RetrieveUpdateField(const pIndexVar: OleVariant);
begin
  DefaultInterface.RetrieveUpdateField(pIndexVar);
end;

procedure TTable.ClearRetrieveUpdateFields;
begin
  DefaultInterface.ClearRetrieveUpdateFields;
end;

class function CoStructure.Create: IStructure;
begin
  Result := CreateComObject(CLASS_Structure) as IStructure;
end;

class function CoStructure.CreateRemote(const MachineName: string): IStructure;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Structure) as IStructure;
end;

procedure TStructure.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{08AF38A8-587C-4C3B-AECF-8DB921522F78}';
    IntfIID:   '{2672FE7C-E1E2-432B-A0C3-9EDCA53DFC29}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TStructure.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IStructure;
  end;
end;

procedure TStructure.ConnectTo(svrIntf: IStructure);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TStructure.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TStructure.GetDefaultInterface: IStructure;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TStructure.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TStructure.Destroy;
begin
  inherited Destroy;
end;

function TStructure.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TStructure.FieldName(Index: Integer): WideString;
begin
  Result := DefaultInterface.FieldName(Index);
end;

function TStructure.FieldAcronym(Index: Integer): WideString;
begin
  Result := DefaultInterface.FieldAcronym(Index);
end;

function TStructure.FieldDispName(Index: Integer): WideString;
begin
  Result := DefaultInterface.FieldDispName(Index);
end;

function TStructure.FieldType(Index: Integer): Integer;
begin
  Result := DefaultInterface.FieldType(Index);
end;

function TStructure.FieldNum(i: Integer): Integer;
begin
  Result := DefaultInterface.FieldNum(i);
end;

class function CoDataRow.Create: IDataRow;
begin
  Result := CreateComObject(CLASS_DataRow) as IDataRow;
end;

class function CoDataRow.CreateRemote(const MachineName: string): IDataRow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataRow) as IDataRow;
end;

procedure TDataRow.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1F0F75C8-F485-491A-BC00-0DE48D52AF26}';
    IntfIID:   '{5FC6EA3A-2438-43BA-B0A3-7A7144D31BC3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDataRow.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDataRow;
  end;
end;

procedure TDataRow.ConnectTo(svrIntf: IDataRow);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDataRow.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDataRow.GetDefaultInterface: IDataRow;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDataRow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDataRow.Destroy;
begin
  inherited Destroy;
end;

function TDataRow.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TDataRow.Get_Structure: IDispatch;
begin
  Result := DefaultInterface.Structure;
end;

procedure TDataRow.Set_Structure(const pVal: IDispatch);
begin
  DefaultInterface.Structure := pVal;
end;

function TDataRow.Get_Item(const indexVar: OleVariant): OleVariant;
begin
  Result := DefaultInterface.Item[indexVar];
end;

procedure TDataRow.Set_Item(const indexVar: OleVariant; pVal: OleVariant);
begin
  DefaultInterface.Item[indexVar] := pVal;
end;

class function CoDataRowSet.Create: IDataRowSet;
begin
  Result := CreateComObject(CLASS_DataRowSet) as IDataRowSet;
end;

class function CoDataRowSet.CreateRemote(const MachineName: string): IDataRowSet;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DataRowSet) as IDataRowSet;
end;

procedure TDataRowSet.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{919CE250-70B0-40E4-8D5D-E0E5D253FE7F}';
    IntfIID:   '{28A6B3D1-E795-4E0E-A1A5-D28217E510C1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDataRowSet.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDataRowSet;
  end;
end;

procedure TDataRowSet.ConnectTo(svrIntf: IDataRowSet);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDataRowSet.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDataRowSet.GetDefaultInterface: IDataRowSet;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDataRowSet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDataRowSet.Destroy;
begin
  inherited Destroy;
end;

function TDataRowSet.Get_Count: Integer;
begin
  Result := DefaultInterface.Count;
end;

function TDataRowSet.GetRow(Index: Integer): IDispatch;
begin
  Result := DefaultInterface.GetRow(Index);
end;

class function CoFilter.Create: IFilter;
begin
  Result := CreateComObject(CLASS_Filter) as IFilter;
end;

class function CoFilter.CreateRemote(const MachineName: string): IFilter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Filter) as IFilter;
end;

procedure TFilter.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{626D757F-009E-483B-AFDF-28D6793DB03E}';
    IntfIID:   '{E57A25C6-9F96-45AB-8638-47DDC7BB5C35}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFilter.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IFilter;
  end;
end;

procedure TFilter.ConnectTo(svrIntf: IFilter);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFilter.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFilter.GetDefaultInterface: IFilter;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFilter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TFilter.Destroy;
begin
  inherited Destroy;
end;

function TFilter.Get_Structure: IDispatch;
begin
  Result := DefaultInterface.Structure;
end;

procedure TFilter.Set_Structure(const pVal: IDispatch);
begin
  DefaultInterface.Structure := pVal;
end;

procedure TFilter.Clear;
begin
  DefaultInterface.Clear;
end;

procedure TFilter.Add(const pIndexVar: OleVariant; Condition: ECondition; const pVal: OleVariant);
begin
  DefaultInterface.Add(pIndexVar, Condition, pVal);
end;

class function CoTransaction.Create: ITransaction;
begin
  Result := CreateComObject(CLASS_Transaction) as ITransaction;
end;

class function CoTransaction.CreateRemote(const MachineName: string): ITransaction;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Transaction) as ITransaction;
end;

procedure TTransaction.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9EC6427B-3A80-4BB8-97C9-1B58E2AA0610}';
    IntfIID:   '{BC7CC7EC-D9D1-4271-8B31-F99BE3C5A9F0}';
    EventIID:  '{A3454F96-0C0C-4B9B-B87F-FD6C46E18697}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTransaction.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as ITransaction;
  end;
end;

procedure TTransaction.ConnectTo(svrIntf: ITransaction);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TTransaction.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TTransaction.GetDefaultInterface: ITransaction;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTransaction.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TTransaction.Destroy;
begin
  inherited Destroy;
end;

procedure TTransaction.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    4: if Assigned(FOnClose) then
         FOnClose(Self);
  end; {case DispID}
end;

function TTransaction.Get_Addressed: ETableType;
begin
  Result := DefaultInterface.Addressed;
end;

function TTransaction.Get_Name: WideString;
begin
  Result := DefaultInterface.Name;
end;

function TTransaction.Get_Structure: IDispatch;
begin
  Result := DefaultInterface.Structure;
end;

procedure TTransaction.Execute(const NiDataRow: IDispatch);
begin
  DefaultInterface.Execute(NiDataRow);
end;

procedure TTransaction.Open(const SrvrSession: IDispatch; const Name: WideString; Type_: ETableType);
begin
  DefaultInterface.Open(SrvrSession, Name, Type_);
end;

class function CoStatusMessage.Create: IStatusMessage;
begin
  Result := CreateComObject(CLASS_StatusMessage) as IStatusMessage;
end;

class function CoStatusMessage.CreateRemote(const MachineName: string): IStatusMessage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StatusMessage) as IStatusMessage;
end;

procedure TStatusMessage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FA1F745D-EAFC-43D3-892E-54318F29F376}';
    IntfIID:   '{84E3673F-B671-4350-9F8F-C90138FCD47B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TStatusMessage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IStatusMessage;
  end;
end;

procedure TStatusMessage.ConnectTo(svrIntf: IStatusMessage);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TStatusMessage.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TStatusMessage.GetDefaultInterface: IStatusMessage;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TStatusMessage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TStatusMessage.Destroy;
begin
  inherited Destroy;
end;

function TStatusMessage.Get_Code: Integer;
begin
  Result := DefaultInterface.Code;
end;

function TStatusMessage.Get_Description: WideString;
begin
  Result := DefaultInterface.Description;
end;

function TStatusMessage.Get_Class_: WideString;
begin
  Result := DefaultInterface.Class_;
end;

function TStatusMessage.Get_ExtendedInfo: WideString;
begin
  Result := DefaultInterface.ExtendedInfo;
end;

function TStatusMessage.Get_Message: IDispatch;
begin
  Result := DefaultInterface.Message;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TMessage, TSrvrSession, TTable, TStructure, 
    TDataRow, TDataRowSet, TFilter, TTransaction, TStatusMessage]);
end;

end.
