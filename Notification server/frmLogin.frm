VERSION 5.00
Begin VB.Form frmLogin 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Login"
   ClientHeight    =   1350
   ClientLeft      =   2835
   ClientTop       =   1.50900e5
   ClientWidth     =   4980
   Icon            =   "frmLogin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   797.67
   ScaleMode       =   0  'User
   ScaleWidth      =   4675.951
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Login"
      ForeColor       =   &H80000008&
      Height          =   1335
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   4935
      Begin Project1.lvButtons_H lvButtons_H2 
         Height          =   375
         Left            =   3600
         TabIndex        =   4
         ToolTipText     =   "Clear Text field"
         Top             =   840
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "&Clear"
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
         TabIndex        =   3
         ToolTipText     =   "Login to the system"
         Top             =   360
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "&Login"
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
      Begin VB.ComboBox txtUserName 
         Height          =   315
         Left            =   1200
         TabIndex        =   1
         Text            =   "Click to view"
         Top             =   360
         Width           =   2295
      End
      Begin VB.ListBox licensess 
         Height          =   840
         Left            =   600
         TabIndex        =   8
         Top             =   1320
         Visible         =   0   'False
         Width           =   1095
      End
      Begin VB.TextBox txtPassword 
         Appearance      =   0  'Flat
         ForeColor       =   &H00000000&
         Height          =   345
         IMEMode         =   3  'DISABLE
         Left            =   1200
         PasswordChar    =   "*"
         TabIndex        =   2
         Top             =   840
         Width           =   2325
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Password:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "User Name:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   3120
      Width           =   3855
   End
End
Attribute VB_Name = "frmLogin"
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
Private objSysInfo As New cSystemInfo
Public allowuse As Boolean
Public theversion As String
Public realname As String
Public thepassword As String
Public striNN



Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
logon
End If

End Sub

Private Sub Form_Load()
   
   'on top
    MakeTopMost Me.hwnd
    
   getnetinfo
   
   'delete after this
   'Me.Hide
    'aftreLogon
   ' Form1.Show
    
   
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub lvButtons_H1_Click()

    logon
End Sub

'validate users
Public Sub logon()
    If txtPassword = thepassword And txtUserName = realname Then
        Me.Hide
        aftreLogon
        Form1.Show
       
       
     Else
        Me.Hide
        MsgBox "Invalid Password, Try Again!", , "Login"
        Me.Show
        txtPassword.SetFocus
       
    End If
End Sub

Private Sub lvButtons_H1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
logon
End If
End Sub

Private Sub lvButtons_H2_Click()
txtPassword.Text = ""
End Sub



Private Sub txtPassword_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then
logon
End If

End Sub


Public Sub aftreLogon()


'formnoty.Text4 = Text1
'here


End Sub





Public Sub getnetinfo()

Dim thestatus As String

Form222.Show
Form222.SetFocus


Form222.Caption = "Connecting to server ...."
Form222.ProgressBar1.Max = 2

'wait dont hang the gui
Call GotoSleep(1, 1)


'check lincess
lincesscheck
Form222.ProgressBar1.Value = Form222.ProgressBar1.Value + 1

'wait dont hang the gui
Call GotoSleep(1, 1)

'check if version is locked or not
Form222.Caption = "Checking security ...."
thestatus = Trim(OpenURL("http://xx.net/wolf/data/v16/vicserver16.pp"))

'wait dont hang the gui
Call GotoSleep(1, 1)

Form222.ProgressBar1.Value = Form222.ProgressBar1.Value + 1
'bypass security
thestatus = 1
If Trim(thestatus) = 0 Then
    Form222.Caption = "Closing ...."
    MsgBox OpenURL("http://xx.net/wolf/data/v16/lockmsg.pp")
    End

ElseIf (Trim(thestatus) = 1) Then

Else
    Form222.Caption = "Closing ...."
    MsgBox "The program can't connect to the internet!" & vbCrLf & vbCrLf & "Possible Reasons:" & vbCrLf & "1- Your are not connected to the Internet" & vbCrLf & "2- You are using a firewall that blocks this application" & vbCrLf & "3- Our Servers are shutdown temporary for maintenance" & vbCrLf & "4- The version you are using is too old." & vbCrLf & vbCrLf & "Please contact support@oman70.net"
End
End If
'wait dont hang the gui
Call GotoSleep(1, 1)


Form222.Caption = "Done ...."
Unload Form222
Form222.Hide

Me.Show

End Sub




'check for registered users
Public Sub lincesscheck()


allowuse = False

'set current version
theversion = "16"

'check for lincesss
Dim l1 As String
Dim thecounter2 As Long
Dim free2all As String
Dim thememory, theccode As String



'get ram and c drive code
thememory = CStr(objSysInfo.MemoryTotal)
theccode = CStr(Hex(DriveSerial("C")))

Open App.path & "/l.sys" For Output As #1
    Print #1, Trim(OpenURL("http://xxxxxx.net/wolf/licences.pp"))
Close #1

Open App.path & "/l.sys" For Input As #1
    Do While Not EOF(1)
        Input #1, l1
        licensess.AddItem Trim(l1)
    Loop
Close #1

Kill App.path & "/l.sys"


'check if thic pc is licencessed
For thecounter2 = 0 To licensess.ListCount
    If (licensess.List(thecounter2) <> "") Then
         
         striNN = Split(licensess.List(thecounter2), "|")
         
       
         txtUserName.AddItem Trim(striNN(0))
        On Error Resume Next
        If (Trim(thememory & "-" & theccode) = Trim(striNN(1))) Then
            allowuse = True
            realname = Trim(striNN(0))
            thepassword = Trim(striNN(2))
            
           
        End If
        
    End If
Next thecounter2
 'bypass
 allowuse = True
If allowuse = False Then
End
End If

End Sub


Private Sub txtUserName_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
logon
End If
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
