VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form daftar_kategori 
   Caption         =   "Daftar Kategori"
   ClientHeight    =   5685
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   11610
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5685
   ScaleWidth      =   11610
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4935
      Left            =   0
      ScaleHeight     =   4905
      ScaleWidth      =   11505
      TabIndex        =   1
      Top             =   0
      Width           =   11535
      Begin MSComctlLib.ListView ListView1 
         Height          =   4335
         Left            =   120
         TabIndex        =   4
         Top             =   480
         Width           =   11295
         _ExtentX        =   19923
         _ExtentY        =   7646
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   8
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Object.Width           =   2
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "KATEGORI"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "KETERANGAN KATEGORI"
            Object.Width           =   6174
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "SUB KATEGORI"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "KETERANGAN SUBKATEGORI"
            Object.Width           =   6174
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFC0&
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
         TabIndex        =   3
         Top             =   0
         Width           =   11775
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   5280
         Width           =   6135
      End
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   11505
      TabIndex        =   0
      Top             =   4920
      Width           =   11535
      Begin MySIS.jcbutton cmb_tambah 
         Height          =   495
         Left            =   120
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
         Caption         =   "Tambah"
         Picture         =   "daftar_kategori.frx":0000
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_edit 
         Height          =   495
         Left            =   1440
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
         Caption         =   "Edit"
         Picture         =   "daftar_kategori.frx":03CA
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_hapus 
         Height          =   495
         Left            =   2760
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
         Caption         =   "Hapus"
         Picture         =   "daftar_kategori.frx":0524
         UseMaskCOlor    =   -1  'True
      End
   End
End
Attribute VB_Name = "daftar_kategori"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim kktg As String
Private Sub jcbutton1_Click()
    Unload Me
End Sub

Private Sub cmb_tambah_Click()
    master_kategori.Text1(0).Locked = False
    master_kategori.Text1(2).Locked = False
    master_kategori.Text1(0).Text = ""
    master_kategori.Text1(2).Text = ""
    master_kategori.Label1(0).Caption = "Tambah Data Kategori"
    master_kategori.Show 1
End Sub

Private Sub cmd_edit_Click()
If ListView1.ListItems.Count > 0 Then
    On Error Resume Next
    master_kategori.Text1(0).Locked = True
    master_kategori.Text1(0).Text = ListView1.SelectedItem.SubItems(6)
    master_kategori.Text1(1).Text = ListView1.SelectedItem.SubItems(7)
    master_kategori.Text1(2).Locked = True
    master_kategori.Text1(2).Text = ListView1.SelectedItem.SubItems(3)
    master_kategori.Text1(3).Text = ListView1.SelectedItem.SubItems(4)
    master_kategori.Combo1.Text = ListView1.SelectedItem.SubItems(5)
    master_kategori.Label1(0).Caption = "Edit Data Kategori"
    master_kategori.Show 1
End If
End Sub

Private Sub cmd_hapus_Click()
On Error GoTo exc
If ListView1.SelectedItem.SubItems(3) = "" Then
    pesan = MsgBox("Hapus SKTG " & ListView1.SelectedItem.SubItems(1) & "?", vbQuestion + vbYesNo, "Konfirmasi")
    If pesan = vbYes Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "delete from mktg where ktg='" & ListView1.SelectedItem.SubItems(1) & "'", con, adOpenKeyset, adLockOptimistic
        tampilktg
    End If
Else
    pesan = MsgBox("Hapus SubKTG " & ListView1.SelectedItem.SubItems(3) & "?", vbQuestion + vbYesNo, "Konfirmasi")
    If pesan = vbYes Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "delete from mktgsub where subktg='" & ListView1.SelectedItem.SubItems(3) & "'", con, adOpenKeyset, adLockOptimistic
        tampilktg
    End If
End If
Exit Sub
exc:
End Sub
Sub tampilktg()
    On Error GoTo exc
    ListView1.ListItems.Clear
    ListView1.View = lvwReport
    j = 0
    kktg = ""
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select mktg.ktg,mktg.ket_ktg,mktgsub.subktg,mktgsub.ket_subktg from mktg left join mktgsub on mktg.ktg=mktgsub.ktg order by mktg.ktg asc,mktgsub.subktg asc", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        Do While Not rs1.EOF
            j = j + 1
            Set item = ListView1.ListItems.Add(, , j)
            item.Text = j
            If UCase(kktg) <> UCase(rs1.Fields!ktg) Then
                item.SubItems(1) = "" & rs1.Fields!ktg
                item.SubItems(2) = "" & rs1.Fields!ket_ktg
                kktg = UCase(rs1.Fields!ktg)
            Else
                item.SubItems(1) = " "
                item.SubItems(2) = " "
            End If
            item.SubItems(3) = "" & rs1.Fields!subktg
            item.SubItems(4) = "" & rs1.Fields!ket_subktg
            z = 21 - Len(rs1.Fields!ktg)
            item.SubItems(5) = "" & rs1.Fields!ktg & Space(z) & rs1.Fields!ket_ktg
            item.SubItems(6) = "" & rs1.Fields!ktg
            item.SubItems(7) = "" & rs1.Fields!ket_ktg
        rs1.MoveNext
        Loop
    End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Private Sub Form_Load()
    ListView1.ListItems.Clear
    ListView1.View = lvwReport
    koneksi
    tampilktg
End Sub

Private Sub Form_Resize()
    Picture5.Top = Me.Height - 1305
    Picture2.Height = Me.Height - 1290
    ListView1.Height = Me.Height - 1890
End Sub
