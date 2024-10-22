VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Formtrans 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   Caption         =   "Arabic Encoder"
   ClientHeight    =   7680
   ClientLeft      =   1170
   ClientTop       =   7335
   ClientWidth     =   10755
   Icon            =   "Formtrans.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7680
   ScaleWidth      =   10755
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Control"
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   10695
      Begin Project1.lvButtons_H lvButtons_H6 
         Height          =   375
         Left            =   9120
         TabIndex        =   8
         ToolTipText     =   "Copy decoded tect "
         Top             =   240
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         Caption         =   "Copy results"
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
      Begin Project1.lvButtons_H lvButtons_H5 
         Height          =   375
         Left            =   6000
         TabIndex        =   7
         ToolTipText     =   "Paste copied text"
         Top             =   240
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         Caption         =   "Paste to source"
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
      Begin Project1.lvButtons_H lvButtons_H4 
         Height          =   375
         Left            =   7800
         TabIndex        =   6
         ToolTipText     =   "Clear all texts"
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         Caption         =   "Clear All"
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
         Left            =   4320
         TabIndex        =   5
         ToolTipText     =   "Saved decoded text to a file"
         Top             =   240
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         Caption         =   "Save Results"
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
      Begin Project1.lvButtons_H lvButtons_H2 
         Height          =   375
         Left            =   2040
         TabIndex        =   4
         ToolTipText     =   "Decode capital letters"
         Top             =   240
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         Caption         =   "Decocde English capital letters"
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
      Begin Project1.lvButtons_H lvButtons_H1 
         Height          =   375
         Left            =   120
         TabIndex        =   3
         ToolTipText     =   "Decode small letters"
         Top             =   240
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "Decode English small  letters"
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
   End
   Begin MSComDlg.CommonDialog CDialog1 
      Left            =   2640
      Top             =   1320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      FileName        =   "keys arabic 1"
      Filter          =   ".txt"
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      Height          =   6765
      Left            =   5880
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      ToolTipText     =   "Decoded text"
      Top             =   840
      Width           =   4815
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Height          =   6765
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      ToolTipText     =   "Source text"
      Top             =   840
      Width           =   5775
   End
End
Attribute VB_Name = "Formtrans"
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
Private Sub Command1_Click()

End Sub

Private Sub Command2_Click()

End Sub

Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub lvButtons_H1_Click()
Text2 = Replace(Text1.Text, "q", "�")
Text2 = Replace(Text2.Text, "w", "�")
Text2 = Replace(Text2.Text, "e", "�")
Text2 = Replace(Text2.Text, "r", "�")
Text2 = Replace(Text2.Text, "t", "�")
Text2 = Replace(Text2.Text, "y", "�")
Text2 = Replace(Text2.Text, "u", "�")
Text2 = Replace(Text2.Text, "i", "�")
Text2 = Replace(Text2.Text, "o", "�")
Text2 = Replace(Text2.Text, "p", "�")
Text2 = Replace(Text2.Text, "[", "�")
Text2 = Replace(Text2.Text, "]", "�")
Text2 = Replace(Text2.Text, "a", "�")
Text2 = Replace(Text2.Text, "s", "�")
Text2 = Replace(Text2.Text, "d", "�")
Text2 = Replace(Text2.Text, "f", "�")
Text2 = Replace(Text2.Text, "g", "�")
Text2 = Replace(Text2.Text, "h", "�")
Text2 = Replace(Text2.Text, "j", "�")
Text2 = Replace(Text2.Text, "k", "�")
Text2 = Replace(Text2.Text, "l", "�")
Text2 = Replace(Text2.Text, ";", "�")
Text2 = Replace(Text2.Text, "'", "�")
Text2 = Replace(Text2.Text, "z", "�")
Text2 = Replace(Text2.Text, "x", "�")
Text2 = Replace(Text2.Text, "c", "�")
Text2 = Replace(Text2.Text, "v", "�")
Text2 = Replace(Text2.Text, "b", "��")
Text2 = Replace(Text2.Text, "n", "�")
Text2 = Replace(Text2.Text, "m", "�")
Text2 = Replace(Text2.Text, ",", "�")
Text2 = Replace(Text2.Text, ".", "�")
Text2 = Replace(Text2.Text, "/", "�")
Text2 = Replace(Text2.Text, "`", "�")
Text2 = Replace(Text2.Text, "H", "�")
Text2 = Replace(Text2.Text, "Y", "�")
Text2 = Replace(Text2.Text, "N", "�")
Text2 = Replace(Text2.Text, "<", ",")
Text2 = Replace(Text2.Text, "C", "}")
Text2 = Replace(Text2.Text, "U", "�")
Text2 = Replace(Text2.Text, "T", "��")
Text2 = Replace(Text2.Text, "Q", " �")
Text2 = Replace(Text2.Text, "W", " �")
Text2 = Replace(Text2.Text, "E", " �")
Text2 = Replace(Text2.Text, "R", " �")
Text2 = Replace(Text2.Text, "A", " �")
Text2 = Replace(Text2.Text, "S", " �")
Text2 = Replace(Text2.Text, "D", "]")
Text2 = Replace(Text2.Text, "F", "[")
Text2 = Replace(Text2.Text, "G", "��")
Text2 = Replace(Text2.Text, "K", "�")
Text2 = Replace(Text2.Text, "B", "��")




End Sub

Public Sub decodCapital()
Text2 = Replace(Text1.Text, "Q", "�")
Text2 = Replace(Text2.Text, "W", "�")
Text2 = Replace(Text2.Text, "E", "�")
Text2 = Replace(Text2.Text, "R", "�")
Text2 = Replace(Text2.Text, "Y", "�")
Text2 = Replace(Text2.Text, "U", "�")
Text2 = Replace(Text2.Text, "I", "�")
Text2 = Replace(Text2.Text, "O", "�")
Text2 = Replace(Text2.Text, "[", "�")
Text2 = Replace(Text2.Text, "]", "�")
Text2 = Replace(Text2.Text, "A", "�")
Text2 = Replace(Text2.Text, "S", "�")
Text2 = Replace(Text2.Text, "D", "�")
Text2 = Replace(Text2.Text, "F", "�")
Text2 = Replace(Text2.Text, "G", "�")
Text2 = Replace(Text2.Text, "H", "�")
Text2 = Replace(Text2.Text, "J", "�")
Text2 = Replace(Text2.Text, "K", "�")
Text2 = Replace(Text2.Text, "L", "�")
Text2 = Replace(Text2.Text, ":", "�")
Text2 = Replace(Text2.Text, "'", "�")
Text2 = Replace(Text2.Text, "Z", "�")
Text2 = Replace(Text2.Text, "X", "�")
Text2 = Replace(Text2.Text, "C", "�")
Text2 = Replace(Text2.Text, "V", "�")
Text2 = Replace(Text2.Text, "B", "��")
Text2 = Replace(Text2.Text, "N", "�")
Text2 = Replace(Text2.Text, "M", "�")
Text2 = Replace(Text2.Text, ",", "�")
Text2 = Replace(Text2.Text, ".", "�")
Text2 = Replace(Text2.Text, "/", "�")
Text2 = Replace(Text2.Text, "`", "�")
Text2 = Replace(Text2.Text, "T", "�")
Text2 = Replace(Text2.Text, "P", "�")

End Sub


Private Sub lvButtons_H2_Click()

    decodCapital
End Sub

Private Sub lvButtons_H3_Click()
CDialog1.ShowSave
Open CDialog1.Filename & ".txt" For Output As #1
Write #1, Text2.Text

Close #1
End Sub

Private Sub lvButtons_H4_Click()
Text1.Text = ""
Text2.Text = ""
End Sub

Private Sub lvButtons_H5_Click()
Text1.Text = Clipboard.GetText
End Sub

Private Sub lvButtons_H6_Click()
Clipboard.SetText Text2.Text
End Sub

Private Sub SkinButton1_Click()
Text1.Text = " "
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

Private Sub SkinButton2_Click()

End Sub

Private Sub SkinButton3_Click()

End Sub

Private Sub SkinButton4_Click()
Text2.Text = " "
End Sub

Private Sub SkinButton5_Click()

End Sub

Private Sub SkinButton6_Click()
CDialog1.ShowSave
Open CDialog1.Filename & ".txt" For Output As #1
Write #1, Text2

Close #1
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

