VERSION 5.00
Begin VB.Form master_user 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tambah/Edit User"
   ClientHeight    =   4110
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5655
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4110
   ScaleWidth      =   5655
   StartUpPosition =   2  'CenterScreen
   Begin MySIS.jcbutton cmd_keluar 
      Height          =   495
      Left            =   4320
      TabIndex        =   17
      Top             =   3480
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
      Picture         =   "master_user.frx":0000
      UseMaskCOlor    =   -1  'True
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   5625
      TabIndex        =   11
      Top             =   3360
      Width           =   5655
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   3000
         TabIndex        =   6
         Top             =   120
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
         Picture         =   "master_user.frx":0436
         UseMaskCOlor    =   -1  'True
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   3375
      Left            =   0
      ScaleHeight     =   3345
      ScaleWidth      =   5625
      TabIndex        =   7
      Top             =   0
      Width           =   5655
      Begin VB.TextBox Text1 
         Height          =   315
         IMEMode         =   3  'DISABLE
         Index           =   3
         Left            =   2040
         PasswordChar    =   "*"
         TabIndex        =   5
         Text            =   "Text1"
         Top             =   2520
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   315
         IMEMode         =   3  'DISABLE
         Index           =   2
         Left            =   2040
         PasswordChar    =   "*"
         TabIndex        =   4
         Text            =   "Text1"
         Top             =   2160
         Width           =   1815
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2040
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   1800
         Width           =   1815
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "master_user.frx":07D0
         Left            =   2040
         List            =   "master_user.frx":07E6
         Style           =   2  'Dropdown List
         TabIndex        =   2
         Top             =   1440
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   1
         Left            =   2040
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   1080
         Width           =   3375
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   0
         Left            =   2040
         TabIndex        =   0
         Text            =   "Text1"
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Konfirmasi : "
         Height          =   255
         Index           =   5
         Left            =   480
         TabIndex        =   16
         Top             =   2520
         Width           =   1455
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Password : "
         Height          =   255
         Index           =   4
         Left            =   840
         TabIndex        =   15
         Top             =   2160
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Akses Gudang/Dept : "
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   14
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kelompok User : "
         Height          =   255
         Index           =   2
         Left            =   480
         TabIndex        =   13
         Top             =   1440
         Width           =   1455
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Nama User : "
         Height          =   255
         Index           =   1
         Left            =   480
         TabIndex        =   12
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   5280
         Width           =   6135
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "User ID : "
         Height          =   255
         Index           =   0
         Left            =   840
         TabIndex        =   9
         Top             =   720
         Width           =   1095
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFC0&
         Caption         =   "Data User Akses"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   405
         Index           =   0
         Left            =   -240
         TabIndex        =   8
         Top             =   0
         Width           =   5895
      End
   End
End
Attribute VB_Name = "master_user"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub cmd_keluar_Click()
    Unload Me
End Sub

Private Sub cmd_simpan_Click()
On Error GoTo exc
If Text1(0).Text <> "" And Text1(1).Text <> "" And Text1(2).Text <> "" And Combo1.Text <> "" And Combo2.Text <> "" Then
    If Text1(2).Text = Text1(3).Text Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "select * from tbluser where id_user='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
        If Not rs1.EOF Then
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "update tbluser set pwd='" & EncryptText(Text1(2).Text, "andra") & "',nama='" & Text1(1).Text & "',status='" & Combo1.Text & "',bo='" & Combo2.Text & "' where id_user='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
        Else
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "insert into tbluser (pwd,nama,status,bo,id_user) values ('" & EncryptText(Text1(2).Text, "andra") & "','" & Text1(1).Text & "','" & Combo1.Text & "','" & Combo2.Text & "','" & Text1(0).Text & "')", con, adOpenKeyset, adLockOptimistic
        End If
        MsgBox ("simpan sukses!"), vbInformation, "Info"
        daftar_user.GETMEMBER
        Unload Me
    Else
        MsgBox ("text Pasword dan konfirmasi tidak sama!"), vbInformation, "Info"
    End If
Else
    MsgBox ("Lengkapi data terlebih dahulu!"), vbInformation, "Info"
End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Private Sub Form_Load()
    Combo2.Clear
    Text1(0).Text = ""
    On Error GoTo exc
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from bo", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        Do While Not rs1.EOF
            z = 5 - Len(rs1.Fields!BO)
            'Combo2.AddItem (rs1.Fields!bo & Space(z) & rs1.Fields!cabang)
            Combo2.AddItem (rs1.Fields!BO)
        rs1.MoveNext
        Loop
    End If
    Me.KeyPreview = True
Exit Sub
exc:
MsgBox ("error")
    
End Sub
Sub getuserx()
    On Error Resume Next
    If Text1(0).Text <> "" Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "select * from tbluser where id_user='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
        If Not rs1.EOF Then
            Text1(1).Text = "" & rs1.Fields!nama
            Combo1.Text = "" & rs1.Fields!Status
            Combo2.Text = "" & rs1.Fields!BO
            Text1(1).SetFocus
        End If
    End If
End Sub

Private Sub Text1_Change(Index As Integer)
Select Case Index
    Case 0
        Text1(1).Text = ""
        Text1(2).Text = ""
        Text1(3).Text = ""
        
End Select
End Sub

Private Sub Text1_GotFocus(Index As Integer)
Select Case Index
    Case 0
        If Label1(0).Caption = "Edit Data User" Then
            getuserx
        End If
        
    Case 1, 2, 3
        With Text1(Index)
        .SelStart = 0
        .SelLength = Len(.Text)
        End With
End Select
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
    Case 0, 1, 2, 3
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If


End Select
End Sub
