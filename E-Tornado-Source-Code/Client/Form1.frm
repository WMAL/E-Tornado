VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ACTIVESKIN.OCX"
Begin VB.Form Formchat 
   Caption         =   "Chat"
   ClientHeight    =   3555
   ClientLeft      =   1425
   ClientTop       =   -2295
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   5370
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Close"
      Height          =   255
      Left            =   3120
      TabIndex        =   8
      Top             =   0
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinButton SkinButton1 
      Height          =   255
      Left            =   2280
      OleObjectBlob   =   "Form1.frx":0000
      TabIndex        =   7
      Top             =   0
      Width           =   735
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   120
      TabIndex        =   6
      Top             =   2400
      Width           =   5175
   End
   Begin VB.ListBox List1 
      Height          =   2010
      Left            =   120
      TabIndex        =   5
      Top             =   360
      Width           =   5175
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   120
      TabIndex        =   4
      Top             =   3120
      Width           =   5175
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   3840
      TabIndex        =   3
      Top             =   0
      Width           =   1455
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "Form1.frx":0086
      TabIndex        =   2
      Top             =   0
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1080
      TabIndex        =   1
      Text            =   "Some one"
      Top             =   0
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   120
      OleObjectBlob   =   "Form1.frx":0108
      TabIndex        =   0
      Top             =   840
      Width           =   480
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   120
      Top             =   840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
End
Attribute VB_Name = "Formchat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Winsock1.SendData Text1.Text & " Says: " & Combo1.Text

List1.AddItem Text1.Text & " Says: " & Combo1.Text

Combo1.Text = " "

End If

End Sub

Private Sub Command1_Click()
Winsock1.SendData "end*"
End Sub

Private Sub Form_Load()
SkinButton1.ApplySkin SkinForm1
SkinLabel1.ApplySkin SkinForm1
Text3.Text = Form1.Text1.Text
      With Winsock1
     .Protocol = sckUDPProtocol
     .RemotePort = 96
     .RemoteHost = Text3.Text
     .Bind
     
    End With
     
     Me.Height = 4050
     Me.Width = 5655
     
End Sub

Private Sub SkinButton1_Click()
Unload Me
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim Reply As String
      
    Winsock1.GetData Reply
  
   List1.AddItem "Victim says " & Reply
Text2 = "Victim says " & Reply
End Sub

