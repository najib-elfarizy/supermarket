VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form daftar_pelanggan 
   Caption         =   "Daftar Pelanggan"
   ClientHeight    =   5685
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   7830
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5685
   ScaleWidth      =   7830
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4935
      Left            =   0
      ScaleHeight     =   4905
      ScaleWidth      =   7785
      TabIndex        =   1
      Top             =   0
      Width           =   7815
      Begin VB.OptionButton Option2 
         BackColor       =   &H00FFFFC0&
         Caption         =   "Desc"
         Height          =   195
         Left            =   4920
         TabIndex        =   14
         Top             =   520
         Width           =   855
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00FFFFC0&
         Caption         =   "Asc"
         Height          =   195
         Left            =   4080
         TabIndex        =   13
         Top             =   520
         Value           =   -1  'True
         Width           =   855
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "daftar_pelanggan.frx":0000
         Left            =   1920
         List            =   "daftar_pelanggan.frx":000D
         Style           =   2  'Dropdown List
         TabIndex        =   12
         Top             =   480
         Width           =   2055
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   1920
         TabIndex        =   10
         Text            =   "Text1"
         Top             =   160
         Width           =   4815
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   3855
         Left            =   120
         TabIndex        =   4
         Top             =   960
         Width           =   7575
         _ExtentX        =   13361
         _ExtentY        =   6800
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   18
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Object.Width           =   2
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Kode"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Nama"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Alamat"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Kota"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Propinsi"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Negara"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "Kode Pos"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   8
            Text            =   "Telp"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   9
            Text            =   "Fax"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   10
            Text            =   "Kontak"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   11
            Text            =   "Email"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   12
            Text            =   "No Rek"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(14) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   13
            Text            =   "Pemilik Rek"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(15) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   14
            Text            =   "Bank"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(16) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   15
            Text            =   "Grup"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(17) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   16
            Text            =   "Piutang"
            Object.Width           =   2117
         EndProperty
         BeginProperty ColumnHeader(18) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   17
            Text            =   "Point"
            Object.Width           =   2117
         EndProperty
      End
      Begin MySIS.jcbutton cmd_cari 
         Height          =   375
         Left            =   6840
         TabIndex        =   11
         Top             =   120
         Width           =   855
         _ExtentX        =   1508
         _ExtentY        =   661
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
         Caption         =   "Cari"
         Picture         =   "daftar_pelanggan.frx":0025
         UseMaskCOlor    =   -1  'True
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kata Kunci : "
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   9
         Top             =   160
         Width           =   1575
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Urut Berdasar : "
         Height          =   255
         Index           =   1
         Left            =   360
         TabIndex        =   8
         Top             =   480
         Width           =   1455
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
         Height          =   885
         Index           =   0
         Left            =   -240
         TabIndex        =   3
         Top             =   0
         Width           =   8055
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
      ScaleWidth      =   7785
      TabIndex        =   0
      Top             =   4920
      Width           =   7815
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
         Picture         =   "daftar_pelanggan.frx":03BF
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
         Picture         =   "daftar_pelanggan.frx":0789
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
         Picture         =   "daftar_pelanggan.frx":08E3
         UseMaskCOlor    =   -1  'True
      End
   End
End
Attribute VB_Name = "daftar_pelanggan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmb_tambah_Click()
    On Error Resume Next
    master_pelanggan.Text1(0).Locked = False
    master_pelanggan.Text1(0).Text = ""
    master_pelanggan.Label1(0).Caption = "     Tambah Data Pelanggan"
    master_pelanggan.Show
    master_pelanggan.WindowState = 2
    master_pelanggan.SetFocus
    master_pelanggan.otomasi
    MDIForm1.tabref
End Sub

Private Sub cmd_cari_Click()
    On Error GoTo exc
    ListView1.ListItems.Clear
    ListView1.View = lvwReport
    If Combo1.Text = "Kode" Then
        csql = "select * from mcustomer where kdpl like '%" & Text1.Text & "%' or namapl like '%" & Text1.Text & "%' or alamat like '%" & Text1.Text & "%' order by kdpl "
    ElseIf Combo1.Text = "Nama" Then
        csql = "select * from mcustomer where kdpl like '%" & Text1.Text & "%' or namapl like '%" & Text1.Text & "%' or alamat like '%" & Text1.Text & "%' order by namapl "
    Else
        csql = "select * from mcustomer where kdpl like '%" & Text1.Text & "%' or namapl like '%" & Text1.Text & "%' or alamat like '%" & Text1.Text & "%' order by alamat "
    End If
    If Option1.Value = True Then
        csql = csql & "asc"
    Else
        csql = csql & "desc"
    End If
    
    If Text1.Text = "" Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "select * from mcustomer order by kdpl asc", con, adOpenKeyset, adLockOptimistic
    Else
        If rs1.State <> 0 Then rs1.Close
        rs1.Open csql, con, adOpenKeyset, adLockOptimistic
    End If
    
    j = 0
    If Not rs1.EOF Then
        Do While Not rs1.EOF
            j = j + 1
            On Error Resume Next
            Set item = ListView1.ListItems.Add(, , j)
            item.Text = j
            item.SubItems(1) = "" & rs1.Fields!kdpl
            item.SubItems(2) = "" & rs1.Fields!namapl
            item.SubItems(3) = "" & rs1.Fields!alamat
            item.SubItems(4) = "" & rs1.Fields!kota
            item.SubItems(5) = "" & rs1.Fields!propinsi
            item.SubItems(6) = "" & rs1.Fields!negara
            item.SubItems(7) = "" & rs1.Fields!kodepos
            item.SubItems(8) = "" & rs1.Fields!telp
            item.SubItems(9) = "" & rs1.Fields!fax
            item.SubItems(10) = "" & rs1.Fields!kontak
            item.SubItems(11) = "" & rs1.Fields!email
            item.SubItems(12) = "" & rs1.Fields!rek
            item.SubItems(13) = "" & rs1.Fields!namarek
            item.SubItems(14) = "" & rs1.Fields!bank
            item.SubItems(15) = "" & rs1.Fields!grup
            item.SubItems(16) = "" & Format(rs1.Fields!piutang - rs1.Fields!bayar, "#,##0")
            item.SubItems(17) = "" & Format(rs1.Fields!POINT, "#,##0")
        rs1.MoveNext
        Loop
    End If
Exit Sub
exc:
MsgBox ("error")

End Sub

Private Sub cmd_edit_Click()
If ListView1.ListItems.Count > 0 Then
    On Error Resume Next
    master_pelanggan.Text1(0).Locked = True
    master_pelanggan.Text1(0).Text = ListView1.SelectedItem.SubItems(1)
    master_pelanggan.Text1(1).Text = ListView1.SelectedItem.SubItems(2)
    master_pelanggan.Label1(0).Caption = "     Edit Data Pelanggan: " & ListView1.SelectedItem.SubItems(1)
    master_pelanggan.Show
    master_pelanggan.WindowState = 2
    master_pelanggan.SetFocus
    MDIForm1.tabref
    master_pelanggan.getpelanggan
End If
End Sub

Private Sub cmd_hapus_Click()
On Error GoTo exc
If rs1.State <> 0 Then rs1.Close
rs1.Open "select * from mcustomer where kdpl='" & ListView1.SelectedItem.SubItems(1) & "'", con, adOpenKeyset, adLockOptimistic
If Not rs1.EOF Then
    If (rs1.Fields!piutang - rs1.Fields!bayar) = 0 And rs1.Fields!POINT = 0 Then
        pesan = MsgBox("Hapus Data Pelanggan " & ListView1.SelectedItem.SubItems(1) & "?", vbQuestion + vbYesNo, "Konfirmasi")
        If pesan = vbYes Then
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "delete from mcustomer where kdpl='" & ListView1.SelectedItem.SubItems(1) & "'", con, adOpenKeyset, adLockOptimistic
            Text1.Text = ""
            tampilpelanggan
        End If
    Else
        MsgBox ("Tidak bisa dihapus, Pelanggan masih ada piutang atau point!"), vbInformation, "Info"
    End If
End If
Exit Sub
exc:
End Sub
Sub tampilpelanggan()
    On Error GoTo exc
    ListView1.ListItems.Clear
    ListView1.View = lvwReport
    j = 0
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mcustomer order by kdpl asc", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        Do While Not rs1.EOF
            j = j + 1
            Set item = ListView1.ListItems.Add(, , j)
            item.Text = j
            item.SubItems(1) = "" & rs1.Fields!kdpl
            item.SubItems(2) = "" & rs1.Fields!namapl
            item.SubItems(3) = "" & rs1.Fields!alamat
            item.SubItems(4) = "" & rs1.Fields!kota
            item.SubItems(5) = "" & rs1.Fields!propinsi
            item.SubItems(6) = "" & rs1.Fields!negara
            item.SubItems(7) = "" & rs1.Fields!kodepos
            item.SubItems(8) = "" & rs1.Fields!telp
            item.SubItems(9) = "" & rs1.Fields!fax
            item.SubItems(10) = "" & rs1.Fields!kontak
            item.SubItems(11) = "" & rs1.Fields!email
            item.SubItems(12) = "" & rs1.Fields!rek
            item.SubItems(13) = "" & rs1.Fields!namarek
            item.SubItems(14) = "" & rs1.Fields!bank
            item.SubItems(15) = "" & rs1.Fields!grup
            item.SubItems(16) = "" & Format(rs1.Fields!piutang - rs1.Fields!bayar, "#,##0")
            item.SubItems(17) = "" & Format(rs1.Fields!POINT, "#,##0")
        rs1.MoveNext
        Loop
    End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Private Sub Form_Load()
    On Error Resume Next
    Text1.Text = ""
    ListView1.ListItems.Clear
    ListView1.View = lvwReport
    koneksi
    Combo1.Text = Combo1.List(0)
    tampilpelanggan
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    Picture5.Top = Me.Height - 1305
    Picture2.Height = Me.Height - 1290
    ListView1.Height = Me.Height - 2370
    Picture2.Width = Me.Width - 255
    Picture5.Width = Me.Width - 255
    ListView1.Width = Me.Width - 495
    Label1(0).Width = Me.Width - 50
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        KeyAscii = 0
        
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If
End Sub
