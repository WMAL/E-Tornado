{-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
 
   Unit Name: SFolders (Search Folders)
   Purpose  : Enable out programs to scan Disks for files
   Author   : Arjen Wiersma
   Company  : Digital Dreams Sofware
   History  :
   1.0 - Initial release (built up out of 15 samples I had)

 -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~}

unit SFolders;

interface

uses
  Windows, Messages, SysUtils, Classes, Forms;

type
  TScanOptions = (soAllDisks, soSpecifiedDisk, soSpecifiedDir);
  TOnProcessEvent = procedure (Sender: TObject; Dir : string;
                       CountFiles, SizeOfFiles : longint) of object;
  TOnChangedEvent = procedure (Sender: TObject;
                       CountFiles, SizeOfFiles : longint) of object;


  TSearchFolders = class(TComponent)
  private
    { Private declarations }
    FMask : string;
    FUpdateList : boolean;
    FScanOptions : TScanOptions;
    FScanDir : string;
    FDoRecursive : boolean;
    FMessages : boolean;
    FCountFiles : longint;
    FSizeOfFiles : longint;
    FOnProcess : TOnProcessEvent;
    FOnChanged : TOnChangedEvent;
    FStopScan : boolean;
    FFilesFound : TList;
    procedure SetScanDir(const Value : string);
    procedure ScanDirectory(const ADir : string; const AAttr : integer;
                            AMasks : TCollection);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
    Destructor Destroy; override;
    procedure Scan;
    procedure Stop;
    procedure UpdateFilesList(const ADir: string; AFile : TSearchRec);
    property CountFiles : longint read FCountFiles;
    property SizeOfFiles : longint read FSizeOfFiles;
    property FilesFound : TList read FFilesFound;
  published
    { Published declarations }
    property FileMask : string read FMask write FMask;
    property UpdateList : boolean read FUpdateList write FUpdateList;
    property ScanOptions : TScanOptions read FScanOptions write FScanOptions;
    property ScanDir : string read FScanDir write SetScanDir;
    property Messages : boolean read FMessages write FMessages;
    property DoRecursive : boolean read FDoRecursive write FDoRecursive;
    property OnProcess : TOnProcessEvent read FOnProcess write FOnProcess;
    property OnChanged : TOnChangedEvent read FOnChanged write FOnChanged;
  end;

  TFilePack = class(TObject)
    FileName : string;
    FullPath : string;
    FileSize : integer;
    FileAttr : integer;
    FileTime : integer;
  public
    constructor Create(AName, APath : string; ASize, AAttr, ATime: integer);
  end;

{ ----- Taken from DELPHI 3 Internet Components source ---- }
type
  TMask = class
  private
    FMask: Pointer;
    FSize: Integer;
  public
    constructor Create(const MaskValue: string);
    destructor Destroy; override;
    function Matches(const Filename: string): Boolean;
  end;

function MatchesMask(const Filename, Mask: string): Boolean;
{ ^^^^^ Taken from DELPHI 3 Internet Components source ^^^^^ }
procedure Register;

implementation

uses FileCtrl;

type
  TMultiMask = class(TCollectionItem)
    FMask : TMask;
  public
    destructor Destroy; override;
  end;

{ -------- Start Mask Unit ---------- }

const
  MaxCards = 30;

type
  PMaskSet = ^TMaskSet;
  TMaskSet = set of Char;
  TMaskStates = (msLiteral, msAny, msSet);
  TMaskState = record
    SkipTo: Boolean;
    case State: TMaskStates of
      msLiteral: (Literal: Char);
      msAny: ();
      msSet: (
        Negate: Boolean;
        CharSet: PMaskSet);
  end;
  PMaskStateArray = ^TMaskStateArray;
  TMaskStateArray = array[0..128] of TMaskState;

function InitMaskStates(const Mask: string;
  var MaskStates: array of TMaskState): Integer;
var
  I: Integer;
  SkipTo: Boolean;
  Literal: Char;
  P: PChar;
  Negate: Boolean;
  CharSet: TMaskSet;
  Cards: Integer;

  procedure InvalidMask;
  begin
    raise Exception.CreateFmt('''%s'' is an invalid mask at (%d)', [Mask,
      P - PChar(Mask) + 1]);
  end;

  procedure Reset;
  begin
    SkipTo := False;
    Negate := False;
    CharSet := [];
  end;

  procedure WriteScan(MaskState: TMaskStates);
  begin
    if I <= High(MaskStates) then
    begin
      if SkipTo then
      begin
        Inc(Cards);
        if Cards > MaxCards then InvalidMask;
      end;
      MaskStates[I].SkipTo := SkipTo;
      MaskStates[I].State := MaskState;
      case MaskState of
        msLiteral: MaskStates[I].Literal := UpCase(Literal);
        msSet:
          begin
            MaskStates[I].Negate := Negate;
            New(MaskStates[I].CharSet);
            MaskStates[I].CharSet^ := CharSet;
          end;
      end;
    end;
    Inc(I);
    Reset;
  end;

  procedure ScanSet;
  var
    LastChar: Char;
    C: Char;
  begin
    Inc(P);
    if P^ = '!' then
    begin
      Negate := True;
      Inc(P);
    end;
    LastChar := #0;
    while not (P^ in [#0, ']']) do
    begin
      case P^ of
        '-':
          if LastChar = #0 then InvalidMask
          else
          begin
            Inc(P);
            for C := LastChar to UpCase(P^) do Include(CharSet, C);
          end;
      else
        LastChar := UpCase(P^);
        Include(CharSet, LastChar);
      end;
      Inc(P);
    end;
    if (P^ <> ']') or (CharSet = []) then InvalidMask;
    WriteScan(msSet);
  end;

begin
  P := PChar(Mask);
  I := 0;
  Cards := 0;
  Reset;
  while P^ <> #0 do
  begin
    case P^ of
      '*': SkipTo := True;
      '?': if not SkipTo then WriteScan(msAny);
      '[':  ScanSet;
    else
      Literal := P^;
      WriteScan(msLiteral);
    end;
    Inc(P);
  end;
  Literal := #0;
  WriteScan(msLiteral);
  Result := I;
end;

function MatchesMaskStates(const Filename: string;
  MaskStates: array of TMaskState): Boolean;
type
  TStackRec = record
    sP: PChar;
    sI: Integer;
  end;
var
  T: Integer;
  S: array[0..MaxCards - 1] of TStackRec;
  I: Integer;
  P: PChar;

  procedure Push(P: PChar; I: Integer);
  begin
    with S[T] do
    begin
      sP := P;
      sI := I;
    end;
    Inc(T);
  end;

  function Pop(var P: PChar; var I: Integer): Boolean;
  begin
    if T = 0 then
      Result := False
    else
    begin
      Dec(T);
      with S[I] do
      begin
        P := sP;
        I := sI;
      end;
      Result := True;
    end;
  end;

  function Matches(P: PChar; Start: Integer): Boolean;
  var
    I: Integer;
  begin
    Result := False;
    for I := Start to High(MaskStates) do
      with MaskStates[I] do
      begin
        if SkipTo then
        begin
          case State of
            msLiteral:
              while (P^ <> #0) and (UpperCase(P^) <> Literal) do Inc(P);
            msSet:
              while (P^ <> #0) and not (Negate xor (UpCase(P^) in CharSet^)) do Inc(P);
          end;
          if P^ <> #0 then Push(@P[1], I);
        end;
        case State of
          msLiteral: if UpperCase(P^) <> Literal then Exit;
          msSet: if not (Negate xor (UpCase(P^) in CharSet^)) then Exit;
        end;
        Inc(P);
      end;
    Result := True;
  end;

begin
  Result := True;
  T := 0;
  P := PChar(Filename);
  I := Low(MaskStates);
  repeat
    if Matches(P, I) then Exit;
  until not Pop(P, I);
  Result := False;
end;

procedure DoneMaskStates(var MaskStates: array of TMaskState);
var
  I: Integer;
begin
  for I := Low(MaskStates) to High(MaskStates) do
    if MaskStates[I].State = msSet then Dispose(MaskStates[I].CharSet);
end;

{ TMask }

constructor TMask.Create(const MaskValue: string);
var
  A: array[0..0] of TMaskState;
begin
  FSize := InitMaskStates(MaskValue, A);
  FMask := AllocMem(FSize * SizeOf(TMaskState));
  InitMaskStates(MaskValue, Slice(PMaskStateArray(FMask)^, FSize));
end;

destructor TMask.Destroy;
begin
  if FMask <> nil then
  begin
    DoneMaskStates(Slice(PMaskStateArray(FMask)^, FSize));
    FreeMem(FMask, FSize * SizeOf(TMaskState));
  end;
end;

function TMask.Matches(const Filename: string): Boolean;
begin
  Result := MatchesMaskStates(Filename, Slice(PMaskStateArray(FMask)^, FSize));
end;

function MatchesMask(const Filename, Mask: string): Boolean;
var
  CMask: TMask;
begin
  CMask := TMask.Create(Mask);
  try
    Result := CMask.Matches(Filename);
  finally
    CMask.Free;
  end;
end;

{ ------- TMask Unit -------- }

{ TFileObject }

constructor TFilePack.Create;
begin
  inherited Create;
  FileName := AName;
  FullPath := APath;
  FileSize := ASize;
  FileAttr := AAttr;
  FileTime := ATime;
end;

function SlashSep(const Path, S: String): String;
begin
  Result := '';
  if Path = '' then Exit;
  if AnsiLastChar(Path)^ <> '\' then
    Result := Path + '\' + S
  else
    Result := Path + S;
end;

procedure CreateMasks(ACol : TCollection; AStr : string);
var
  P : TMultiMask;
  i : integer;
  S : string;
begin
  i := 1; S := '';
  while i <= Length(AStr) do
  begin
    case AnsiChar(AStr[i]) of
     ' ' : begin
             if S = '' then Inc(i) else
             begin
               S := S + AStr[i];
               if i = Length(AStr) then
               begin
                 while AnsiLastChar(S)^ = ' ' do
                     S := Copy(S, 1, Length(S)-1);
                 P := TMultiMask(ACol.Add);
                 P.FMask := TMask.Create(S);
                 Exit;
               end else  Inc(i);
             end;
           end;
     ',' : begin
             while AnsiLastChar(S)^ = ' ' do
                  S := Copy(S, 1, Length(S)-1);
             P := TMultiMask(ACol.Add);
             P.FMask := TMask.Create(S);
             S := '';
             if i = Length(AStr) then Exit else Inc(i);
           end;
    else   begin
             S := S + AStr[i];
             if i = Length(AStr) then
             begin
               while AnsiLastChar(S)^ = ' ' do
                    S := Copy(S, 1, Length(S)-1);
               P := TMultiMask(ACol.Add);
               P.FMask := TMask.Create(S);
               Exit;
             end else  Inc(i);
           end;
    end;
  end;
end;

{ TMultiMask }

destructor TMultiMask.Destroy;
begin
  if Assigned(FMask) then FMask.Free;
  inherited;
end;

{ TSearchFolders }

constructor TSearchFolders.Create;
begin
  inherited Create(AOwner);
  FMask := '*';
  FScanDir := 'C:\';
  FUpdateList := true;
  FScanOptions := soAllDisks;
  FMessages := true; FDoRecursive := true;
  FStopScan := false;
  FFilesFound := TList.Create;
end;

Destructor TSearchFolders.Destroy;
begin
  FFilesFound.Free;
  inherited Destroy;
end;

procedure TSearchFolders.SetScanDir;
begin
  FScanDir := Value;
  if (csDesigning in ComponentState) then
  begin
    if FScanDir <> '' then FScanOptions := soSpecifiedDir else
       FScanOptions := soAllDisks;
    if (FScanDir <> '') and (Length(FScanDir) < 3) and (AnsiLastChar(FScanDir)^ = ':') then
        FScanOptions := soSpecifiedDisk;
  end;
end;

procedure TSearchFolders.Scan;
var
  Masks : TCollection;

  procedure GlobalScan;
  var
    DriveNum: Integer;
    DriveChar: Char;
    DriveType: TDriveType;
    DriveBits: set of 0..25;
  begin
    Integer(DriveBits) := GetLogicalDrives;
    for DriveNum := 0 to 25 do
    begin
      if not (DriveNum in DriveBits) then Continue;
      DriveChar := Char(DriveNum + Ord('a'));
      DriveType := TDriveType(GetDriveType(PChar(DriveChar + ':\')));
      DriveChar := Upcase(DriveChar);
      case DriveType of
        dtFixed, dtNetwork,
        dtCDROM, dtRAM: ScanDirectory(DriveChar+':', 0{GetIntegerAttr}, Masks);
      end;
    end;
  end;
begin
  FFilesFound.Clear;
  FCountFiles := 0; FSizeOfFiles := 0;
  Masks := TCollection.Create(TMultiMask);
  CreateMasks(Masks, FMask);
  FStopScan := false;
  case FScanOptions of
    soAllDisks : GlobalScan;
    soSpecifiedDisk : ScanDirectory(Copy(FScanDir, 1, 2), 0{GetIntegerAttr}, Masks);
    soSpecifiedDir : ScanDirectory(FScanDir, 0{GetIntegerAttr}, Masks);
  end;
  Masks.Destroy;
  if Assigned(FOnChanged) then
     OnChanged(Self, FCountFiles, FSizeOfFiles);
end;

procedure TSearchFolders.ScanDirectory;
var
  Status: Integer;
  SearchRec: TSearchRec;

  function MultiMatches(N : string) : boolean;
  var i : integer;
  begin
    MultiMatches := true;
    for i := 0 to Pred(AMasks.Count) do
        if TMultiMask(AMasks.Items[i]).FMask.Matches(N) then exit;
    MultiMatches := false;
  end;

begin
  if Assigned(FOnProcess) then
     FOnProcess(Self, ADir, FCountFiles, FSizeOfFiles);
  Status := FindFirst(SlashSep(ADir, '*.*'), faAnyFile, SearchRec);
  try
    while (Status = 0) and (not FStopScan) do
    begin
      if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
      begin
        if MultiMatches(SearchRec.Name) then
        begin
          Inc(FCountFiles); Inc(FSizeOfFiles, SearchRec.Size);
          if FUpdateList then
             UpdateFilesList(ADir, SearchRec);
         end;
        if FDoRecursive and (SearchRec.Attr and SysUtils.faDirectory = SysUtils.faDirectory) then
            ScanDirectory(SlashSep(ADir, SearchRec.Name), 0{AAttr}, AMasks);
      end;
      Status := FindNext(SearchRec);
      if FMessages then Application.ProcessMessages;
    end;
  finally
    FindClose(SearchRec);
  end;
end;

procedure TSearchFolders.Stop;
begin
  FStopScan := true;
end;

procedure TSearchFolders.UpdateFilesList;
var F : TFilePack;
begin
  F := TFilePack.Create(AFile.Name, SlashSep(ADir, ''), AFile.Size,
       AFile.Attr, AFile.Time);
  FFilesFound.Add(F);
end;

procedure Register;
begin
  RegisterComponents('DDS', [TSearchFolders]);
end;

end.
