VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form daftar_user 
   Caption         =   "Daftar User"
   ClientHeight    =   5190
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8310
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5190
   ScaleWidth      =   8310
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   8265
      TabIndex        =   2
      Top             =   4440
      Width           =   8295
      Begin MySIS.jcbutton cmb_tambah 
         Height          =   495
         Left            =   120
         TabIndex        =   4
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
         Caption         =   "Tambah"
         Picture         =   "daftar_user.frx":0000
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_edit 
         Height          =   495
         Left            =   1440
         TabIndex        =   5
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
         Caption         =   "Edit"
         Picture         =   "daftar_user.frx":03CA
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_hapus 
         Height          =   495
         Left            =   2760
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
         Caption         =   "Hapus"
         Picture         =   "daftar_user.frx":0524
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_keluar 
         Height          =   495
         Left            =   6960
         TabIndex        =   7
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
         Caption         =   "Keluar"
         Picture         =   "daftar_user.frx":067E
         UseMaskCOlor    =   -1  'True
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4455
      Left            =   0
      ScaleHeight     =   4425
      ScaleWidth      =   8265
      TabIndex        =   0
      Top             =   0
      Width           =   8295
      Begin MSComctlLib.ListView ListView1 
         Height          =   4215
         Left            =   120
         TabIndex        =   3
         Top             =   120
         Width           =   8055
         _ExtentX        =   14208
         _ExtentY        =   7435
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   5
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "No"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "User ID"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Nama User"
            Object.Width           =   4762
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Kantor/Gudang"
            Object.Width           =   3175
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Akses"
            Object.Width           =   2999
         EndProperty
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   5280
         Width           =   6135
      End
   End
End
Attribute VB_Name = "daftar_user"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmb_tambah_Click()
    master_user.Text1(0).Locked = False
    master_user.Text1(0).Text = ""
    master_user.Label1(0).Caption = "Tambah Data User"
    master_user.Show 1
End Sub

Private Sub cmd_edit_Click()
If ListView1.ListItems.Count > 0 Then
    master_user.Text1(0).Locked = True
    master_user.Text1(0).Text = ListView1.SelectedItem.SubItems(1)
    master_user.Label1(0).Caption = "Edit Data User"
    master_user.Show 1
    'master_user.getuser
End If
End Sub

Private Sub cmd_hapus_Click()
On Error GoTo exc
pesan = MsgBox("Hapus Data User " & ListView1.SelectedItem.SubItems(1) & "?", vbQuestion + vbYesNo, "Konfirmasi")
If pesan = vbYes Then
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "delete from TBLUSER where id_user='" & ListView1.SelectedItem.SubItems(1) & "'", con, adOpenKeyset, adLockOptimistic
    GETMEMBER
End If
Exit Sub
exc:
End Sub

Private Sub cmd_keluar_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    koneksi
    GETMEMBER

End Sub

Sub GETMEMBER()
    On Error GoTo exc
    ListView1.ListItems.Clear
    ListView1.View = lvwReport
    j = 0
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from TBLUSER", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        Do While Not rs1.EOF
            j = j + 1
            Set item = ListView1.ListItems.Add(, , j)
            item.Text = j
            item.SubItems(1) = "" & rs1.Fields!id_user
            item.SubItems(2) = "" & rs1.Fields!nama
            item.SubItems(3) = "" & rs1.Fields!BO
            item.SubItems(4) = "" & rs1.Fields!Status
        rs1.MoveNext
        Loop
    End If
Exit Sub
exc:
MsgBox ("error")
End Sub
