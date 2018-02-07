VERSION 5.00
Begin VB.Form ChildMDI1 
   Caption         =   "Form2"
   ClientHeight    =   5190
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   11220
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5190
   ScaleWidth      =   11220
   Begin MySIS.jcbutton jcbutton1 
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   840
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "jcbutton"
      Picture         =   "MDIChild.frx":0000
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmd_hapus 
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   2640
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Hapus"
      Picture         =   "MDIChild.frx":0452
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmd_simpan 
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   2040
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "simpan"
      Picture         =   "MDIChild.frx":05AC
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmd_cari 
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   1440
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Tampilkan"
      Picture         =   "MDIChild.frx":0946
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmd_cetak 
      Height          =   495
      Left            =   600
      TabIndex        =   4
      Top             =   3240
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Cetak"
      Picture         =   "MDIChild.frx":0CE0
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmd_edit 
      Height          =   495
      Left            =   1920
      TabIndex        =   5
      Top             =   2640
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Edit"
      Picture         =   "MDIChild.frx":107A
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmd_keluar 
      Height          =   495
      Left            =   1920
      TabIndex        =   6
      Top             =   2040
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Keluar"
      Picture         =   "MDIChild.frx":11D4
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmb_tambah 
      Height          =   495
      Left            =   1920
      TabIndex        =   7
      Top             =   1440
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Tambah"
      Picture         =   "MDIChild.frx":160A
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton jcbutton5 
      Height          =   495
      Left            =   1920
      TabIndex        =   8
      Top             =   3240
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Cetak"
      Picture         =   "MDIChild.frx":19D4
      UseMaskCOlor    =   -1  'True
   End
   Begin MySIS.jcbutton cmd_ok 
      Height          =   495
      Left            =   1920
      TabIndex        =   9
      Top             =   840
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   873
      ButtonStyle     =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   15199212
      Caption         =   "Tambah"
      Picture         =   "MDIChild.frx":1D6E
      UseMaskCOlor    =   -1  'True
   End
   Begin VB.Shape Shape1 
      Height          =   4575
      Left            =   120
      Top             =   120
      Width           =   5295
   End
End
Attribute VB_Name = "ChildMDI1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub jcbutton1_Click()
    Unload Me
End Sub
