VERSION 5.00
Begin VB.Form Form2 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   Caption         =   "Settings"
   ClientHeight    =   5430
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9165
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   5430
   ScaleWidth      =   9165
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Logs Options"
      ForeColor       =   &H80000008&
      Height          =   4215
      Left            =   0
      TabIndex        =   5
      Top             =   1200
      Width           =   9135
      Begin VB.Frame Frame10 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Web server log path"
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   120
         TabIndex        =   15
         Top             =   2880
         Width           =   8895
         Begin VB.CheckBox Check8 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Caption         =   "Enable Logging"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   120
            TabIndex        =   24
            Top             =   240
            Width           =   1695
         End
         Begin VB.TextBox Text4 
            Appearance      =   0  'Flat
            Height          =   375
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   19
            Top             =   600
            Width           =   5055
         End
         Begin Project1.lvButtons_H lvButtons_H10 
            Height          =   375
            Left            =   7680
            TabIndex        =   16
            ToolTipText     =   "Clean the log file"
            Top             =   600
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            Caption         =   "Clean"
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
            Left            =   6360
            TabIndex        =   17
            ToolTipText     =   "View logs folder"
            Top             =   600
            Width           =   1215
            _ExtentX        =   2143
            _ExtentY        =   661
            Caption         =   "View folder"
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
            Left            =   5280
            TabIndex        =   18
            ToolTipText     =   "Choose where the captured data will be stored in "
            Top             =   600
            Width           =   975
            _ExtentX        =   1720
            _ExtentY        =   661
            Caption         =   "Browse"
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
         Begin VB.Label Label3 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Caption         =   "Log file size:"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   2280
            TabIndex        =   25
            Top             =   240
            Width           =   3255
         End
      End
      Begin VB.Frame Frame9 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Signals log path"
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   120
         TabIndex        =   10
         Top             =   1560
         Width           =   8895
         Begin VB.CheckBox Check4 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Caption         =   "Enable Logging"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   120
            TabIndex        =   22
            ToolTipText     =   "Allow the notification server to save all activities on a separate file."
            Top             =   240
            Width           =   1695
         End
         Begin VB.TextBox Text3 
            Appearance      =   0  'Flat
            Height          =   375
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   14
            Top             =   600
            Width           =   5055
         End
         Begin Project1.lvButtons_H lvButtons_H7 
            Height          =   375
            Left            =   7680
            TabIndex        =   11
            ToolTipText     =   "Clean the log file"
            Top             =   600
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            Caption         =   "Clean"
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
            Left            =   6360
            TabIndex        =   12
            ToolTipText     =   "View logs folder"
            Top             =   600
            Width           =   1215
            _ExtentX        =   2143
            _ExtentY        =   661
            Caption         =   "View folder"
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
            Left            =   5280
            TabIndex        =   13
            ToolTipText     =   "Choose where the captured data will be stored in "
            Top             =   600
            Width           =   975
            _ExtentX        =   1720
            _ExtentY        =   661
            Caption         =   "Browse"
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
         Begin VB.Label Label2 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Caption         =   "Log file size:"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   2280
            TabIndex        =   23
            Top             =   240
            Width           =   2775
         End
      End
      Begin VB.Frame Frame3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Victims log path"
         ForeColor       =   &H80000008&
         Height          =   1095
         Left            =   120
         TabIndex        =   6
         Top             =   360
         Width           =   8895
         Begin VB.CheckBox Check2 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            Caption         =   "Enable Auto Robot"
            ForeColor       =   &H80000008&
            Height          =   255
            Left            =   120
            TabIndex        =   21
            ToolTipText     =   "Allow the server to access the victims and save their information"
            Top             =   240
            Width           =   1935
         End
         Begin VB.TextBox Text11 
            Appearance      =   0  'Flat
            Height          =   405
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   9
            ToolTipText     =   "Full saving path"
            Top             =   600
            Width           =   6255
         End
         Begin Project1.lvButtons_H lvButtons_H1 
            Height          =   375
            Left            =   6480
            TabIndex        =   7
            ToolTipText     =   "Choose where the captured data will be stored in "
            Top             =   600
            Width           =   975
            _ExtentX        =   1720
            _ExtentY        =   661
            Caption         =   "Browse"
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
         Begin Project1.lvButtons_H lvButtons_H3 
            Height          =   375
            Left            =   7560
            TabIndex        =   8
            ToolTipText     =   "View logs folder"
            Top             =   600
            Width           =   1215
            _ExtentX        =   2143
            _ExtentY        =   661
            Caption         =   "View folder"
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
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Options"
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9135
      Begin VB.CheckBox Check1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Distribute clients login signals"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4080
         TabIndex        =   20
         ToolTipText     =   "Distribute clients login signals to other logged in clients"
         Top             =   720
         Width           =   2895
      End
      Begin VB.CheckBox Check3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Distribute victim signals to clients"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4080
         TabIndex        =   4
         ToolTipText     =   "Distribute victim signals to logged in cliens"
         Top             =   360
         Width           =   2655
      End
      Begin VB.CheckBox Check5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Enable sounds"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   3
         ToolTipText     =   "Notify you when normal victims come online"
         Top             =   720
         Width           =   1455
      End
      Begin VB.CheckBox Check6 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Stay on top"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   1800
         TabIndex        =   2
         ToolTipText     =   "Keep the application window on top of all windows"
         Top             =   360
         Width           =   1215
      End
      Begin VB.CheckBox Check7 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Tray Messages"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   1
         ToolTipText     =   "Show messages on system tray when signals are received"
         Top             =   360
         Width           =   1455
      End
   End
End
Attribute VB_Name = "Form2"
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


Private Sub Check2_Click()
If Check2.Value = 1 Then
        Frame3.Enabled = True
    Else
        Frame3.Enabled = False
 End If
End Sub

Private Sub Check6_Click()
 If Form2.Check6.Value = 1 Then
        MakeTopMost Me.hwnd
    Else
        MakeNormal Me.hwnd
 End If
End Sub

Private Sub Form_Load()


    'get saved data
    'get info from registry
    Dim tempregvalue As String
    tempregvalue = GetSetting(Form1.Name, "form1", "check2")
    If (tempregvalue = "1") Then
        Form2.Check2.Value = 1
        Frame3.Enabled = True
    Else
        Form2.Check2.Value = 0
        Frame3.Enabled = False
    End If
    
   
   
   
    tempregvalue = GetSetting(Form1.Name, "form1", "Check1")
    If (tempregvalue = "1") Then
        Form2.Check1.Value = 1
    Else
        Form2.Check1.Value = 0
    End If
    
    
    
    
    tempregvalue = GetSetting(Form1.Name, "form1", "check3")
    If (tempregvalue = "1") Then
        Form2.Check3.Value = 1
    Else
        Form2.Check3.Value = 0
    End If
      
     
   
    
    
    tempregvalue = GetSetting(Form1.Name, "form1", "check5")
    If (tempregvalue = "1") Then
        Form2.Check5.Value = 1
    Else
        Form2.Check5.Value = 0
    End If
    
    
    
    tempregvalue = GetSetting(Form1.Name, "form1", "check6")
    If (tempregvalue = "1") Then
        Form2.Check6.Value = 1
        MakeTopMost Me.hwnd
    Else
        Form2.Check6.Value = 0
    End If
    
    
    
    
    tempregvalue = GetSetting(Form1.Name, "form1", "check7")
    If (tempregvalue = "1") Then
        Form2.Check7.Value = 1
        
    Else
        Form2.Check7.Value = 0
    End If
    
    
    
    tempregvalue = GetSetting(Form1.Name, "form1", "check4b")
    If (tempregvalue = "1") Then
        Form2.Check4.Value = 1
        
    Else
        Form2.Check4.Value = 0
    End If
    
    
    
    tempregvalue = GetSetting(Form1.Name, "form1", "check8")
    If (tempregvalue = "1") Then
        Form2.Check8.Value = 1
        
    Else
        Form2.Check8.Value = 0
    End If
    
    
    
    
    
    Form2.Text11.Text = GetSetting(Form1.Name, "form1", "text11")
    Form2.Text3.Text = GetSetting(Form1.Name, "form1", "text3")
    Form2.Text4.Text = GetSetting(Form1.Name, "form1", "text4")
    
    
    
    
    
    
    'check for path
   
   If Form2.Text11.Text = "" Then
        Form2.Text11.Text = App.path
   End If
   
   If Form2.Text3.Text = "" Then
        Form2.Text3.Text = App.path & "\data"
   End If
   
   
   
   If Form2.Text4.Text = "" Then
        Form2.Text4.Text = "C:\apache\htdocs\etornado"
   End If
   
   Label2.Caption = "Log file size: " & GetFileSize(Form2.Text3.Text & "\logs.txt")
   Label3.Caption = "Log file size: " & GetFileSize(Form2.Text4.Text & "\index.txt")
 
    

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

Private Sub Form_Unload(Cancel As Integer)
    Form1.saveall
End Sub

'browse folder
Private Sub lvButtons_H1_Click()
    On Error GoTo ErrH
    
    Dim sPath As String
    
                '   Open the Browse Folder dialog box and
                '   return the folder selected
        sPath = SelectFolder(Me, "Select folder")
      
      
                '   If no folder was selected, exit here
        If Len(sPath) = 0 Then
            Form2.Text11.Text = "No folder selected"
            Exit Sub
        Else
            Form2.Text11.Text = sPath
        End If
    
    Exit Sub
        
ErrH:
    Exit Sub
    'MsgBox Err.Number & Chr(10) & Err.Description
End Sub

Private Sub lvButtons_H10_Click()
    Open Text4.Text & "\index.txt" For Output As #1
        Print #1, "cleaned at " & Time & "  on the " & Date
    Close #1
   
End Sub

Private Sub lvButtons_H3_Click()
    ShellExecute hwnd, "open", Form2.Text11.Text, vbNullString, vbNullString, conSwNormal

End Sub

Private Sub lvButtons_H5_Click()
    On Error GoTo ErrH
    
    Dim sPath As String
    
                '   Open the Browse Folder dialog box and
                '   return the folder selected
        sPath = SelectFolder(Me, "Select folder")
      
      
                '   If no folder was selected, exit here
        If Len(sPath) = 0 Then
            Form2.Text3.Text = "No folder selected"
            Exit Sub
        Else
            Form2.Text3.Text = sPath
        End If
    'get file size
    Label2.Caption = "Log file size: " & GetFileSize(Form2.Text3.Text & "\logs.txt")
 

    Exit Sub
        
ErrH:
    Exit Sub
    'MsgBox Err.Number & Chr(10) & Err.Description
End Sub

Private Sub lvButtons_H6_Click()
    ShellExecute hwnd, "open", Form2.Text3.Text, vbNullString, vbNullString, conSwNormal

End Sub

Private Sub lvButtons_H7_Click()
    Open Text3.Text & "\logs.txt" For Output As #1
        Print #1, "cleaned at " & Time & "  on the " & Date
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

Private Sub lvButtons_H8_Click()
    On Error GoTo ErrH
    
    Dim sPath As String
    
                '   Open the Browse Folder dialog box and
                '   return the folder selected
        sPath = SelectFolder(Me, "Select folder")
      
      
                '   If no folder was selected, exit here
        If Len(sPath) = 0 Then
            Form2.Text4.Text = "No folder selected"
            Exit Sub
        Else
            Form2.Text4.Text = sPath
        End If
    
    Exit Sub
        
ErrH:
    Exit Sub
    'MsgBox Err.Number & Chr(10) & Err.Description
End Sub

Private Sub lvButtons_H9_Click()
    ShellExecute hwnd, "open", Form2.Text4.Text, vbNullString, vbNullString, conSwNormal

End Sub






'get file size

Public Function GetFileSize(FileName) As String
    On Error GoTo Gfserror
    Dim TempStr As String
    TempStr = FileLen(FileName)


    If TempStr >= "1024" Then
        'KB
        TempStr = CCur(TempStr / 1024) & "KB"
    Else


        If TempStr >= "1048576" Then
            'MB
            TempStr = CCur(TempStr / (1024 * 1024)) & "KB"
        Else
            TempStr = CCur(TempStr) & "B"
        End If
    End If
    GetFileSize = TempStr
    Exit Function
Gfserror:
    GetFileSize = "0B"
    Exit Function
End Function

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

