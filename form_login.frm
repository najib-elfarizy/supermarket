VERSION 5.00
Begin VB.Form login_form 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form Login"
   ClientHeight    =   3630
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5670
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3630
   ScaleWidth      =   5670
   StartUpPosition =   2  'CenterScreen
   Begin MySIS.jcbutton cmd_keluar 
      Height          =   495
      Left            =   4200
      TabIndex        =   6
      Top             =   3000
      Width           =   1335
      _ExtentX        =   2355
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
      Caption         =   "  Keluar"
      Picture         =   "form_login.frx":0000
      UseMaskCOlor    =   -1  'True
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   5625
      TabIndex        =   5
      Top             =   2880
      Width           =   5655
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   2280
         TabIndex        =   2
         Top             =   120
         Width           =   1455
         _ExtentX        =   2566
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
         Caption         =   "    OK   "
         Picture         =   "form_login.frx":0436
         UseMaskCOlor    =   -1  'True
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
      ForeColor       =   &H80000008&
      Height          =   2895
      Left            =   0
      ScaleHeight     =   2865
      ScaleWidth      =   5625
      TabIndex        =   3
      Top             =   0
      Width           =   5655
      Begin VB.TextBox txtpwd 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         IMEMode         =   3  'DISABLE
         Left            =   2280
         PasswordChar    =   "*"
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   2325
         Width           =   3135
      End
      Begin VB.TextBox txtuser 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   2280
         TabIndex        =   0
         Text            =   "Text1"
         Top             =   1680
         Width           =   3135
      End
      Begin VB.Label Label6 
         Caption         =   "AndraSoft"
         BeginProperty Font 
            Name            =   "Bauhaus 93"
            Size            =   26.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   495
         Left            =   3120
         TabIndex        =   11
         Top             =   240
         Width           =   2415
      End
      Begin VB.Image Image3 
         Height          =   720
         Left            =   2280
         Picture         =   "form_login.frx":08C0
         Stretch         =   -1  'True
         Top             =   120
         Width           =   795
      End
      Begin VB.Image Image1 
         Height          =   3375
         Left            =   -480
         Picture         =   "form_login.frx":2EFF
         Top             =   0
         Width           =   2565
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   2280
         TabIndex        =   9
         Top             =   2040
         Width           =   3135
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "User ID"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   2280
         TabIndex        =   8
         Top             =   1400
         Width           =   3135
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00FF0000&
         Caption         =   "MySIS (My Simple sales)"
         BeginProperty Font 
            Name            =   "Arial Black"
            Size            =   12
            Charset         =   0
            Weight          =   900
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   2040
         TabIndex        =   7
         Top             =   900
         Width           =   3615
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   5280
         Width           =   6135
      End
      Begin VB.Label Label5 
         Height          =   975
         Left            =   2040
         TabIndex        =   10
         Top             =   0
         Width           =   3615
      End
   End
End
Attribute VB_Name = "login_form"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub cmd_keluar_Click()
    Unload Me
    End
End Sub

Private Sub cmd_simpan_Click()
On Error GoTo exc
If txtuser.Text <> "" Then
    masuk
Else
    MsgBox ("Lengkapi data terlebih dahulu!"), vbInformation, "Info"
End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Private Sub Form_Load()
    txtpwd.Text = ""
    txtuser.Text = ""
    
End Sub

Private Sub txtuser_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    KeyAscii = 0
    If txtuser.Text = "" Then
        MsgBox ("Isi user terlebih dahulu"), vbInformation, "Info"
        txtuser.SetFocus
        With txtuser
        .SelStart = 0
        .SelLength = Len(.Text)
        End With
    Else
        txtpwd.SetFocus
        With txtpwd
        .SelStart = 0
        .SelLength = Len(.Text)
        End With
    End If
Else
    If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
End If
End Sub
Private Sub txtpwd_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    KeyAscii = 0
    If txtuser.Text = "" Then
        MsgBox ("Isi user terlebih dahulu"), vbInformation, "Info"
        txtuser.SetFocus
        With txtuser
        .SelStart = 0
        .SelLength = Len(.Text)
        End With
    Else
        masuk
    End If
End If
End Sub

Sub masuk()
    koneksi
    Dim localip As String
    'localip = Winsock1.localip
    'If srvr = "localhost" Then
    '    localip = "localhost"
    'End If
    
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from tbluser where id_user ='" & LCase(txtuser) & "'", con, adOpenStatic, adLockReadOnly
    If Not rs1.EOF Then
        txtpwd = LCase(txtpwd)
        If rs1!pwd = EncryptText(txtpwd, "andra") Then
            xx = rs1!BO
            xy = rs1!id_user
            xz = rs1!Status
            MDIForm1.tampilmenu
            Unload Me
            
        Else
            MsgBox "Password anda salah !", vbExclamation
            txtpwd.SetFocus
            With txtpwd
            .SelStart = 0
            .SelLength = Len(.Text)
            End With
        End If
    Else
        MsgBox "Anda tidak terdaftar !", vbCritical
        txtuser.SetFocus
        With txtuser
        .SelStart = 0
        .SelLength = Len(.Text)
        End With
    End If
    Set rs1 = Nothing
End Sub
