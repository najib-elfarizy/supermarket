VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form master_nomor 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Pengaturan Nomor Master dan Transaksi"
   ClientHeight    =   4920
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9015
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   9015
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   240
      ScaleHeight     =   705
      ScaleWidth      =   8505
      TabIndex        =   8
      Top             =   3960
      Width           =   8535
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   5880
         TabIndex        =   9
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
         Picture         =   "nomor_master.frx":0000
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_keluar 
         Height          =   495
         Left            =   7200
         TabIndex        =   10
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
         Picture         =   "nomor_master.frx":039A
         UseMaskCOlor    =   -1  'True
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8775
      _ExtentX        =   15478
      _ExtentY        =   8281
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Nomor Master"
      TabPicture(0)   =   "nomor_master.frx":07D0
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Picture2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Nomor Transaksi"
      TabPicture(1)   =   "nomor_master.frx":07EC
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Picture1"
      Tab(1).ControlCount=   1
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   3375
         Left            =   -74880
         ScaleHeight     =   3345
         ScaleWidth      =   8505
         TabIndex        =   11
         Top             =   480
         Width           =   8535
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   7
            Left            =   1560
            Style           =   2  'Dropdown List
            TabIndex        =   40
            Top             =   1440
            Width           =   1095
         End
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   6
            Left            =   7320
            TabIndex        =   39
            Text            =   "Combo2"
            Top             =   1080
            Width           =   1095
         End
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   5
            Left            =   6480
            Style           =   2  'Dropdown List
            TabIndex        =   38
            Top             =   1080
            Width           =   855
         End
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   4
            Left            =   5400
            TabIndex        =   37
            Text            =   "Combo2"
            Top             =   1080
            Width           =   1095
         End
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   3
            Left            =   4560
            Style           =   2  'Dropdown List
            TabIndex        =   36
            Top             =   1080
            Width           =   855
         End
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   2
            Left            =   3480
            TabIndex        =   35
            Text            =   "Combo2"
            Top             =   1080
            Width           =   1095
         End
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   1
            Left            =   2640
            Style           =   2  'Dropdown List
            TabIndex        =   34
            Top             =   1080
            Width           =   855
         End
         Begin VB.ComboBox cmb_trx 
            Height          =   315
            Index           =   0
            Left            =   1560
            TabIndex        =   33
            Text            =   "Combo2"
            Top             =   1080
            Width           =   1095
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            Left            =   1560
            Style           =   2  'Dropdown List
            TabIndex        =   32
            Top             =   720
            Width           =   6855
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "Digit Count"
            Height          =   255
            Index           =   8
            Left            =   120
            TabIndex        =   16
            Top             =   1440
            Width           =   1215
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "Foramat "
            Height          =   255
            Index           =   7
            Left            =   360
            TabIndex        =   15
            Top             =   1080
            Width           =   1095
         End
         Begin VB.Label Label4 
            BackStyle       =   0  'Transparent
            Height          =   255
            Left            =   240
            TabIndex        =   14
            Top             =   5280
            Width           =   6135
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "Modul Transaksi"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   13
            Top             =   720
            Width           =   1335
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
            Index           =   1
            Left            =   -240
            TabIndex        =   12
            Top             =   0
            Width           =   8775
         End
      End
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   3375
         Left            =   120
         ScaleHeight     =   3345
         ScaleWidth      =   8505
         TabIndex        =   1
         Top             =   480
         Width           =   8535
         Begin VB.ComboBox cmb_sales 
            Height          =   315
            Index           =   3
            Left            =   6240
            Style           =   2  'Dropdown List
            TabIndex        =   30
            Top             =   1440
            Width           =   1215
         End
         Begin VB.ComboBox cmb_sales 
            Height          =   315
            Index           =   2
            Left            =   4200
            TabIndex        =   29
            Text            =   "Combo1"
            Top             =   1440
            Width           =   1215
         End
         Begin VB.ComboBox cmb_sales 
            Height          =   315
            Index           =   1
            Left            =   2880
            Style           =   2  'Dropdown List
            TabIndex        =   28
            Top             =   1440
            Width           =   1215
         End
         Begin VB.ComboBox cmb_sales 
            Height          =   315
            Index           =   0
            Left            =   1560
            TabIndex        =   27
            Text            =   "Combo1"
            Top             =   1440
            Width           =   1215
         End
         Begin VB.ComboBox cmb_plg 
            Height          =   315
            Index           =   3
            Left            =   6240
            Style           =   2  'Dropdown List
            TabIndex        =   25
            Top             =   1080
            Width           =   1215
         End
         Begin VB.ComboBox cmb_plg 
            Height          =   315
            Index           =   2
            Left            =   4200
            TabIndex        =   24
            Text            =   "Combo1"
            Top             =   1080
            Width           =   1215
         End
         Begin VB.ComboBox cmb_plg 
            Height          =   315
            Index           =   1
            Left            =   2880
            Style           =   2  'Dropdown List
            TabIndex        =   23
            Top             =   1080
            Width           =   1215
         End
         Begin VB.ComboBox cmb_plg 
            Height          =   315
            Index           =   0
            Left            =   1560
            TabIndex        =   22
            Text            =   "Combo1"
            Top             =   1080
            Width           =   1215
         End
         Begin VB.ComboBox cmb_supp 
            Height          =   315
            Index           =   3
            Left            =   6240
            Style           =   2  'Dropdown List
            TabIndex        =   20
            Top             =   720
            Width           =   1215
         End
         Begin VB.ComboBox cmb_supp 
            Height          =   315
            Index           =   2
            Left            =   4200
            TabIndex        =   19
            Text            =   "Combo1"
            Top             =   720
            Width           =   1215
         End
         Begin VB.ComboBox cmb_supp 
            Height          =   315
            Index           =   1
            ItemData        =   "nomor_master.frx":0808
            Left            =   2880
            List            =   "nomor_master.frx":080A
            Style           =   2  'Dropdown List
            TabIndex        =   18
            Top             =   720
            Width           =   1215
         End
         Begin VB.ComboBox cmb_supp 
            Height          =   315
            Index           =   0
            ItemData        =   "nomor_master.frx":080C
            Left            =   1560
            List            =   "nomor_master.frx":080E
            TabIndex        =   17
            Text            =   "Combo1"
            Top             =   720
            Width           =   1215
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "Digit Cnt"
            Height          =   255
            Index           =   12
            Left            =   5520
            TabIndex        =   31
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "Digit Cnt"
            Height          =   255
            Index           =   5
            Left            =   5520
            TabIndex        =   26
            Top             =   1080
            Width           =   615
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "Digit Cnt"
            Height          =   255
            Index           =   4
            Left            =   5520
            TabIndex        =   21
            Top             =   720
            Width           =   615
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
            TabIndex        =   7
            Top             =   0
            Width           =   8655
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "No. Supplier"
            Height          =   255
            Index           =   0
            Left            =   360
            TabIndex        =   6
            Top             =   720
            Width           =   1095
         End
         Begin VB.Label Label3 
            BackStyle       =   0  'Transparent
            Height          =   255
            Left            =   240
            TabIndex        =   5
            Top             =   5280
            Width           =   6135
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "No. Pelanggan"
            Height          =   255
            Index           =   1
            Left            =   360
            TabIndex        =   4
            Top             =   1080
            Width           =   1095
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            BackStyle       =   0  'Transparent
            Caption         =   "No. Sales"
            Height          =   255
            Index           =   2
            Left            =   240
            TabIndex        =   3
            Top             =   1440
            Width           =   1215
         End
         Begin VB.Label Label2 
            BackStyle       =   0  'Transparent
            Caption         =   "[CNT] = Count, Kode otomais"
            Height          =   255
            Index           =   3
            Left            =   480
            TabIndex        =   2
            Top             =   2520
            Width           =   6135
         End
      End
   End
End
Attribute VB_Name = "master_nomor"
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
pesan = MsgBox("Setting no transaksi akan disimpan?", vbQuestion + vbYesNo, "Konfirmasi")
If pesan = vbYes Then
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "delete from mnomor where jenis = 'Supplier' or jenis = 'Pelanggan' or jenis = 'Sales'", con, adOpenKeyset, adLockOptimistic
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "insert into mnomor (jenis,kol1,kol2,kol3,dgt) values ('Supplier','" & cmb_supp(0).Text & "','" & cmb_supp(1).Text & "','" & cmb_supp(2).Text & "','" & cmb_supp(3).Text & "')", con, adOpenKeyset, adLockOptimistic
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "insert into mnomor (jenis,kol1,kol2,kol3,dgt) values ('Pelanggan','" & cmb_plg(0).Text & "','" & cmb_plg(1).Text & "','" & cmb_plg(2).Text & "','" & cmb_plg(3).Text & "')", con, adOpenKeyset, adLockOptimistic
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "insert into mnomor (jenis,kol1,kol2,kol3,dgt) values ('Sales','" & cmb_sales(0).Text & "','" & cmb_sales(1).Text & "','" & cmb_sales(2).Text & "','" & cmb_sales(3).Text & "')", con, adOpenKeyset, adLockOptimistic
    If Combo1.Text <> "" Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "delete from mnomor where jenis='" & Combo1.Text & "'", con, adOpenKeyset, adLockOptimistic
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "insert into mnomor (jenis,kol1,kol2,kol3,kol4,kol5,kol6,kol7,dgt) values ('" & Combo1.Text & "','" & cmb_trx(0).Text & "','" & cmb_trx(1).Text & "','" & cmb_trx(2).Text & "','" & cmb_trx(3).Text & "','" & cmb_trx(4).Text & "','" & cmb_trx(5).Text & "','" & cmb_trx(6).Text & "','" & cmb_trx(7).Text & "')", con, adOpenKeyset, adLockOptimistic
    End If
End If
Exit Sub
exc:

End Sub

Private Sub Combo1_Change()
    On Error Resume Next
    cmb_trx(0).Text = ""
    cmb_trx(1).Text = ""
    cmb_trx(2).Text = ""
    cmb_trx(3).Text = ""
    cmb_trx(4).Text = ""
    cmb_trx(5).Text = ""
    cmb_trx(6).Text = ""
    cmb_trx(7).Text = ""
End Sub

Private Sub Combo1_Click()
    On Error GoTo exc
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mnomor where jenis='" & Combo1.Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        cmb_trx(0).Text = "" & rs1.Fields!kol1
        cmb_trx(1).Text = "" & rs1.Fields!kol2
        cmb_trx(2).Text = "" & rs1.Fields!kol3
        cmb_trx(3).Text = "" & rs1.Fields!kol4
        cmb_trx(4).Text = "" & rs1.Fields!kol5
        cmb_trx(5).Text = "" & rs1.Fields!kol6
        cmb_trx(6).Text = "" & rs1.Fields!kol7
        cmb_trx(7).Text = "" & rs1.Fields!dgt
    End If
    Exit Sub
    
exc:
MsgBox ("error!")
End Sub

Private Sub Form_Load()
    cmb_supp(0).Clear
    cmb_supp(1).Clear
    cmb_supp(2).Clear
    cmb_supp(3).Clear
    
    cmb_plg(0).Clear
    cmb_plg(1).Clear
    cmb_plg(2).Clear
    cmb_plg(3).Clear
    
    cmb_sales(0).Clear
    cmb_sales(1).Clear
    cmb_sales(2).Clear
    cmb_sales(3).Clear
    
    cmb_trx(0).Clear
    cmb_trx(1).Clear
    cmb_trx(2).Clear
    cmb_trx(3).Clear
    cmb_trx(4).Clear
    cmb_trx(5).Clear
    cmb_trx(6).Clear
    cmb_trx(7).Clear
    
    For z = 1 To 10
        cmb_supp(3).AddItem z
        cmb_plg(3).AddItem z
        cmb_sales(3).AddItem z
        cmb_trx(7).AddItem z
    Next z
    
    cmb_supp(0).AddItem ""
    cmb_supp(0).AddItem "[CNT]"
    cmb_supp(2).AddItem ""
    cmb_supp(2).AddItem "[CNT]"
    cmb_supp(1).AddItem ""
    cmb_supp(1).AddItem "/"
    cmb_supp(1).AddItem "-"
    cmb_supp(1).AddItem "."
    
    
    cmb_plg(0).AddItem ""
    cmb_plg(0).AddItem "[CNT]"
    cmb_plg(2).AddItem ""
    cmb_plg(2).AddItem "[CNT]"
    cmb_plg(1).AddItem ""
    cmb_plg(1).AddItem "/"
    cmb_plg(1).AddItem "-"
    cmb_plg(1).AddItem "."
    
    
    cmb_sales(0).AddItem ""
    cmb_sales(0).AddItem "[CNT]"
    cmb_sales(2).AddItem ""
    cmb_sales(2).AddItem "[CNT]"
    cmb_sales(1).AddItem ""
    cmb_sales(1).AddItem "/"
    cmb_sales(1).AddItem "-"
    cmb_sales(1).AddItem "."
    
    cmb_trx(1).AddItem ""
    cmb_trx(1).AddItem "/"
    cmb_trx(1).AddItem "-"
    cmb_trx(1).AddItem "."

    cmb_trx(3).AddItem ""
    cmb_trx(3).AddItem "/"
    cmb_trx(3).AddItem "-"
    cmb_trx(3).AddItem "."

    cmb_trx(5).AddItem ""
    cmb_trx(5).AddItem "/"
    cmb_trx(5).AddItem "-"
    cmb_trx(5).AddItem "."

    cmb_trx(0).AddItem ""
    cmb_trx(0).AddItem "[BLN]"
    cmb_trx(0).AddItem "[THN]"
    cmb_trx(0).AddItem "[THNBLN]"
    cmb_trx(0).AddItem "[DEPT]"
    cmb_trx(0).AddItem "[CNT]"

    cmb_trx(2).AddItem ""
    cmb_trx(2).AddItem "[BLN]"
    cmb_trx(2).AddItem "[THN]"
    cmb_trx(2).AddItem "[THNBLN]"
    cmb_trx(2).AddItem "[DEPT]"
    cmb_trx(2).AddItem "[CNT]"

    cmb_trx(4).AddItem ""
    cmb_trx(4).AddItem "[BLN]"
    cmb_trx(4).AddItem "[THN]"
    cmb_trx(4).AddItem "[THNBLN]"
    cmb_trx(4).AddItem "[DEPT]"
    cmb_trx(4).AddItem "[CNT]"

    cmb_trx(6).AddItem ""
    cmb_trx(6).AddItem "[BLN]"
    cmb_trx(6).AddItem "[THN]"
    cmb_trx(6).AddItem "[THNBLN]"
    cmb_trx(6).AddItem "[DEPT]"
    cmb_trx(6).AddItem "[CNT]"

    Combo1.Clear
    Combo1.AddItem "Pesanan Beli"
    Combo1.AddItem "Pesanan Jual"
    Combo1.AddItem "Pembelian"
    Combo1.AddItem "Penjualan"
    Combo1.AddItem "Retur Beli"
    Combo1.AddItem "Retur Jual"
    Combo1.AddItem "Item Masuk"
    Combo1.AddItem "Item Keluar"
    Combo1.AddItem "Item Transfer"
    Combo1.AddItem "Item Opname"
    Combo1.AddItem "Kas Masuk"
    Combo1.AddItem "Kas Keluar"
    Combo1.AddItem "Transfer Kas"
    Combo1.AddItem "Jurnal"
    Combo1.AddItem "Hutang"
    Combo1.AddItem "Piutang"
    koneksi
    getno
End Sub
Sub getno()
    On Error GoTo exc
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mnomor", con, adOpenKeyset, adLockOptimistic
    Do While Not rs1.EOF
        On Error Resume Next
        If rs1.Fields!jenis = "Supplier" Then
            cmb_supp(0).Text = "" & rs1.Fields!kol1
            cmb_supp(1).Text = "" & rs1.Fields!kol2
            cmb_supp(2).Text = "" & rs1.Fields!kol3
            cmb_supp(3).Text = "" & rs1.Fields!dgt
        ElseIf rs1.Fields!jenis = "Pelanggan" Then
            cmb_plg(0).Text = "" & rs1.Fields!kol1
            cmb_plg(1).Text = "" & rs1.Fields!kol2
            cmb_plg(2).Text = "" & rs1.Fields!kol3
            cmb_plg(3).Text = "" & rs1.Fields!dgt
        ElseIf rs1.Fields!jenis = "Sales" Then
            cmb_sales(0).Text = "" & rs1.Fields!kol1
            cmb_sales(1).Text = "" & rs1.Fields!kol2
            cmb_sales(2).Text = "" & rs1.Fields!kol3
            cmb_sales(3).Text = "" & rs1.Fields!dgt
        End If
    rs1.MoveNext
    Loop
Exit Sub
exc:

End Sub
