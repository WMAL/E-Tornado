VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form222 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Loading...."
   ClientHeight    =   495
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3840
   Icon            =   "Form4.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   495
   ScaleWidth      =   3840
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   135
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   238
      _Version        =   393216
      Appearance      =   0
   End
End
Attribute VB_Name = "Form222"
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



Private Sub Form_Unload(Cancel As Integer)
Cancel = True
End Sub

