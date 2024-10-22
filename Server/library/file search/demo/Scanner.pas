{-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
 
   Unit Name: Scanner
   Purpose  : Demo for the DDSScanner Component
   Author   : Arjen Wiersma
   Company  : Digital Dreams Sofware
   History  : None.... 1.0 Initial Release

 -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~}

unit Scanner;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, FileCtrl, StdCtrls,  Buttons, Menus, ComCtrls, SFolders;

type
  TScanUnit = class(TForm)
    Panel1: TPanel;
    Status: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    SearchFolders: TSearchFolders;
    ToBe: TListView;
    RadioGroup2: TRadioGroup;
    DriveComboBox1: TDriveComboBox;
    DirBox: TDirectoryListBox;
    procedure SearchFoldersChanged(Sender: TObject; FilesCount,
      FilesSize: Integer);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SearchFoldersProcess(Sender: TObject; Dir: String; FilesCount,
      FilesSize: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanUnit: TScanUnit;

implementation

{$R *.DFM}

function GetFileAttrStr(Attr : integer) : string;
begin
  Result := '';
  if (Attr and SysUtils.faArchive) <> 0 then Result := Result+'A'
     else Result := Result+'-';
  if (Attr and SysUtils.faDirectory) <> 0 then Result := Result+'D'
     else Result := Result+'-';
  if (Attr and SysUtils.faHidden) <> 0 then Result := Result+'H'
     else Result := Result+'-';
  if (Attr and SysUtils.faReadOnly) <> 0 then Result := Result+'R'
     else Result := Result+'-';
  if (Attr and SysUtils.faSysFile) <> 0 then Result := Result+'S'
     else Result := Result+'-';
  if (Attr and SysUtils.faVolumeID) <> 0 then Result := Result+'V'
     else Result := Result+'-';
end;


procedure TScanUnit.SearchFoldersChanged(Sender: TObject; FilesCount,
  FilesSize: Integer);
var i : cardinal;
    Chk : integer;
    F : TFilePack;
    Item : TListItem;
begin
  Status.Caption := 'Done Scanning';
  if FilesSize < 1024000 then
    ScanUnit.Caption := 'SearchFolders Test >>> ' + IntToStr(FilesCount) + ' Files: ' + IntToStr(FilesSize div 1024)+ ' Kb'
  else
    ScanUnit.Caption := 'SearchFolders Test >>> ' + IntToStr(FilesCount) + ' Files: ' + IntToStr(FilesSize div 1024000)+ ' Mb';
  if SearchFolders.FilesFound.Count = 0 then
  begin
   exit;
  end;
    Screen.Cursor := crHourGlass;
    for i := 0 to Pred(SearchFolders.FilesFound.Count) do
    begin
      F := TFilePack(SearchFolders.FilesFound.Items[i]);
      Item := ToBe.Items.Add;
      Item.Caption := F.FileName;
      Item.SubItems.Add(IntToStr(F.FileSize div 1024)+ 'Kb');
      Item.SubItems.Add(DateToStr(FileDateToDateTime(F.FileTime)));
      Item.SubItems.Add(GetFileAttrStr(F.FileAttr));
      Item.SubItems.Add(F.FullPath);
    end;
    Screen.Cursor := crDefault;
end;

procedure TScanUnit.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup2.ItemIndex of
     0 : begin SearchFolders.ScanOptions := soSpecifiedDisk;
               SearchFolders.DoRecursive := True;
         end;
     1 : begin SearchFolders.ScanOptions := soSpecifiedDir;
               SearchFolders.DoRecursive := False;
         end;
     2 : begin SearchFolders.ScanOptions := soSpecifiedDir;
               SearchFolders.DoRecursive := True;
         end;
     3 : begin SearchFolders.ScanOptions := soAllDisks;
               SearchFolders.DoRecursive := True;
         end;
  end;
end;

procedure TScanUnit.SearchFoldersProcess(Sender: TObject; Dir: String;
  FilesCount, FilesSize: Integer);
begin
  Status.Caption := Dir;
  if FilesSize < 1024000 then
    ScanUnit.Caption := 'SearchFolders Test >>> ' + IntToStr(FilesCount) + ' Files: ' + IntToStr(FilesSize div 1024)+ ' Kb'
  else
    ScanUnit.Caption := 'SearchFolders Test >>> ' + IntToStr(FilesCount) + ' Files: ' + IntToStr(FilesSize div 1024000)+ ' Mb';

//  ScanUnit.Caption := 'SearchFolders Test >>> ' + IntToStr(FilesCount) + ' Files: ' + IntToStr(FilesSize div 1024)+ ' Kb';
end;

procedure TScanUnit.BitBtn1Click(Sender: TObject);
begin
  BitBtn2.Enabled := True;
  ToBe.Items.Clear;
  SearchFolders.FileMask := Edit1.Text;
  SearchFolders.ScanDir := DirBox.Directory;
  SearchFolders.FilesFound.Clear;
  SearchFolders.Scan;
  BitBtn2.Enabled := False;
end;

procedure TScanUnit.BitBtn2Click(Sender: TObject);
begin
  SearchFolders.Stop;
end;

procedure TScanUnit.BitBtn4Click(Sender: TObject);
begin
 Close;
end;

end.
