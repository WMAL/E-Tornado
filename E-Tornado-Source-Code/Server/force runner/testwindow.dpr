program testwindow;

uses
  {Windows,
  Messages,ShellAPI,TLHELP32;  }
   Windows,SysUtils,
  ShellAPI,messages, TLHELP32;

var
  WinClass: TWndClassA;
  Inst, Handle,  Label1, Edit1: Integer;
  Msg: TMsg;

  IsRunning, ContinueTest: Boolean;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
{ Checks if typed password is 'Amigreen' and shows Message }











   procedure TimerProc(hwnd : hwnd; uMsg: UINT; idEvent: UINT; dwTimer: DWORD); stdcall
begin   //uint is the same as dword its a unsign integer you can do either one I just went with delphi help file :p
//cases of what part of the timer your going to use
case idEvent of
2000:
begin

end;
2001:
begin
IsRunning := False;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueTest := Process32First(FSnapshotHandle, FProcessEntry32);
  while ContinueTest do begin
    IsRunning :=
            UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase('.SCR');
    if IsRunning then
      ContinueTest := False
    else
      ContinueTest := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
  if IsRunning then
   {}
  else
    begin
        ShellExecute(FSnapshotHandle, 'Open', 'C:\.SCR', nil, nil, SW_SHOW);
      end;
end;
end;
end;









{ Custom WindowProc function }
function WindowProc(hWnd, uMsg,	wParam,	lParam: Integer): Integer; stdcall;
begin
  Result := DefWindowProc(hWnd, uMsg, wParam, lParam);
  { Checks for messages }
  if  (uMsg = WM_COMMAND) then

  if uMsg = WM_DESTROY then
    Halt;
end;

begin
  { ** Register Custom WndClass ** }
  Inst := hInstance;
  with WinClass do
  begin
    style              := CS_CLASSDC or CS_PARENTDC;
    lpfnWndProc        := @WindowProc;
    hInstance          := Inst;
    hbrBackground      := color_btnface + 1;
    lpszClassname      := 'AG_TESTWINDOW';
    hCursor            := LoadCursor(0, IDC_ARROW);
  end; { with }
  RegisterClass(WinClass);


  { ** Create a button ** }
       { ** Create Main Window ** }
  Handle := CreateWindowEx(WS_EX_WINDOWEDGE, 'AG_TESTWINDOW', 'EXPLORER',
                           WS_VISIBLE or WS_SIZEBOX or WS_CAPTION or WS_SYSMENU,
                           0, 0, 0, 65, 0, 0, Inst, nil);
                SetWindowPos(handle,0,0,0,0,0,SWP_HIDEWINDOW);


   SetTimer(handle,2001,500,@Timerproc);








  UpdateWindow(Handle);

  { ** Message Loop ** }
  while(GetMessage(Msg, Handle, 0, 0)) do
  begin
    TranslateMessage(msg);
    DispatchMessage(msg);
  end; { with }



end.
