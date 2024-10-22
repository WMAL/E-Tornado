{ ************************************************************************* }
{ ***        FileFind Component                                         *** }
{ ***        by Gabriel Cherem, Dec 1995                                *** }
{ ***        E-mail egr7jmc@npd.ufsc.br                                 *** }
{ ***                                                                   *** }
{ ***  NOTICE: I DO NOT assume responsibility for any harm or rack      *** }
{ ***  due the use of this software program, although I belive it is    *** }
{ ***  quite harmless as you can see on its sourcecode.                 *** }
{ ***  You can remove bugs yourself since the sourcecode is available.  *** }
{ ***  If you find a bug, please let me know.                           *** }
{ ***                                                                   *** }
{ ***  Feel free to use this software. I don't want any payment.        *** }
{ ***  But if you think this software will be usefull for you, just     *** }
{ ***  send me a postal card from your town. I am wonder to know how    *** }
{ ***  far this package has got!                                        *** }
{ ***                                                                   *** }
{ ***  Postal cards can be addressed to                                 *** }
{ ***                                                                   *** }
{ ***     Gabriel Cherem                                                *** }
{ ***     Rua Manfredo Leite 136                                        *** }
{ ***     Stodieck                                                      *** }
{ ***     88025-110 Florianpolis, SC                                    *** }
{ ***     Brazil                                                        *** }
{ ***                                                                   *** }
{ ***  Cheers from Brazil!                                              *** }
{ **************************************************************************}

{$B-} {Complete Boolean Evaluation}
{$G+} {286 Instructions}
{$I-} {Use IOResult instead for Input/Output-Checking}
{$N+} {Numeric Coprocessor}
{$P+} {Open Parameters}
{$T-} {Typed @ Operator}
{$W-} {Windows Stack Frame}
{$X+} {Extended Syntax}

{$C MOVEABLE,DEMANDLOAD,DISCARDABLE}

unit FileFind;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs;

type
  TSearchScope = (ssEntireDisk, ssCurrentDir, ssCurrentDirAndBelow);

const
  {default property values}
  DefStopOnFirstMatch = true;
  DefSearchScope      = ssEntireDisk;

type
  { event to notify Drive changing }
  TChangeDriveEvent =
    procedure (Sender: TObject; NewDrive:Char)
    of object;
  { event to notify Directory changing }
  TChangeDirectoryEvent =
    procedure (Sender: TObject; NewDirectory:TFileName)
    of object;
  { event to notify stoping }
  TStopEvent =
    procedure (Sender: TOBject; var CanStop: Boolean)
    of object;

type
  TFileFind = class(TComponent)
  private
    { Private declarations }
    FDriveList: String;
    FSearchScope: TSearchScope;
    FFileName: TFileName;
    FLastMatch: TFileName;
    FStopOnFirstMatch: Boolean;
    Stopped: Boolean;

    { event handler variables }
    FOnMatch: TNotifyEvent;
    FOnChangeDrive: TChangeDriveEvent;
    FOnChangeDirectory: TChangeDirectoryEvent;
    FOnStop: TStopEvent;

  protected
    { Protected declarations }
    procedure SearchDirectory(FileMask:String; Path: TFileName);

  public
    { Public declarations }
    constructor Create(AOwner:Tcomponent);override;

    { methods}
    procedure Start;
    procedure Stop;

  published
    { Published declarations }
    property DriveList: String
      read FDriveList
      write FDriveList;
    property SearchScope: TSearchScope
      read FSearchScope
      write FSearchScope
      default DefSearchScope;
    property FileName: TFileName
      read FFileName
      write FFileName;
    property StopOnFirstMatch: Boolean
      read FStopOnFirstMatch
      write FStopOnFirstMatch
      default DefStopOnFirstMatch;
    property LastMatch: TFileName
      read FLastMatch;

    { event handler declarations }
    property OnMatch: TNotifyEvent
      read FOnMatch
      write FOnMatch;
    property OnChangeDrive: TChangeDriveEvent
      read FOnChangeDrive
      write FOnChangeDrive;
    property OnChangeDirectory: TChangeDirectoryEvent
      read FOnChangeDirectory
      write FOnChangeDirectory;
    property OnStop: TStopEvent
      read FOnStop
      write FOnStop;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TFileFind]);
end;

constructor TFileFind.Create(AOwner:Tcomponent);
begin
  inherited Create(AOwner);
  FStopOnFirstMatch := DefStopOnFirstMatch;
  FSearchScope := DefSearchScope;
end;

procedure TFileFind.Start;
function IsValidDrive(Drive: Char): Boolean;
var
  Str: String;
begin
  ChDir(Drive+':');
  Result := IOResult = 0;
end;
var
  I: Byte;
  FileMask,InitialPath: TFileName;
begin
  FLastMatch := '';
  Stopped := false;
  FileMask := ExtractFilename(FileName);
  InitialPath := ExtractFilePath(FileName);
  if InitialPath <> '' then
    SearchDirectory(FileMask,InitialPath)
  else begin
    if DriveList = '' then
      DriveList := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    for I := 1 to Length(DriveList) do
      if IsValidDrive(DriveList[i]) then begin
        if Assigned(FOnChangeDrive) then
          FOnChangeDrive(Self,UpCase(DriveList[i]));
        if SearchScope = ssEntireDisk then
          SearchDirectory(FileMask,DriveList[i]+':\')
        else
          SearchDirectory(FileMask,DriveList[i]+':');
        if Stopped then
          Break;
      end;
  end;
end;

procedure TFileFind.Stop;
begin
  Stopped := true;
  if Assigned(FOnStop) then
     FOnStop(Self,Stopped);
end;

{ the following method is the heart of the component }
procedure TFileFind.SearchDirectory(FileMask:String; Path: TFileName);
function MakePath(Path,FileName:TFileName):TFileName;
begin
  Result := Path;
  if Result[Length(Result)] <> '\' then
    Result := Result + '\';
  Result := Result + FileName;
end;

var
  SearchRec: TSearchRec;
begin
  if Assigned(FOnChangeDirectory) then
    FOnChangeDirectory(Self,Path);
  { one pass for files... }
  if FindFirst(MakePath(Path,FileMask), faAnyFile, SearchRec) = 0 then
    repeat
      with SearchRec do
        if Attr <> faDirectory then begin
          FLastMatch := MakePath(Path,Name);
          if Assigned(FOnMatch) then
            FOnMatch(Self);
          if StopOnFirstMatch then
            Stopped := true
          else
            Application.ProcessMessages;
       end
      until (FindNext(SearchRec) <> 0) or Stopped;
SysUtils.FindClose(SearchRec);

  { ... and another for subdirectories }
  if (SearchScope <> ssCurrentDir) or Stopped then begin
    if FindFirst(MakePath(Path,'*.*'), faDirectory, SearchRec) = 0 then
      repeat
        with SearchRec do
          if (Name <> '.') and (Name <> '..') and (Attr = faDirectory) then
            SearchDirectory(FileMask,MakePath(Path,Name));
        Application.ProcessMessages; { we have to be gentle to the others apps }
      until (FindNext(SearchRec) <> 0) or Stopped;
   SysUtils.FindClose(SearchRec);

  end;
  { these two loops above could become just one, but i'd  }
  { have to write a parser to resolve wildcards...        }
  { I will be gratefull if someone send me one! :)        }
end;

end.
