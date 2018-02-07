VERSION 5.00
Begin VB.Form master_supplier 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Data Supplier"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7770
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   7770
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   7665
      TabIndex        =   30
      Top             =   5880
      Width           =   7695
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   120
         TabIndex        =   25
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
         Picture         =   "master_supplier.frx":0000
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_keluar 
         Height          =   495
         Left            =   1440
         TabIndex        =   26
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
         Picture         =   "master_supplier.frx":039A
         UseMaskCOlor    =   -1  'True
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   5895
      Left            =   0
      ScaleHeight     =   5865
      ScaleWidth      =   7665
      TabIndex        =   27
      Top             =   0
      Width           =   7695
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "master_supplier.frx":07D0
         Left            =   1080
         List            =   "master_supplier.frx":07DA
         Style           =   2  'Dropdown List
         TabIndex        =   15
         Top             =   5280
         Width           =   2775
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   4920
         Style           =   2  'Dropdown List
         TabIndex        =   24
         Top             =   4920
         Width           =   855
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   4920
         Style           =   2  'Dropdown List
         TabIndex        =   23
         Top             =   4560
         Width           =   855
      End
      Begin VB.Frame Frame9 
         BackColor       =   &H80000005&
         Height          =   1335
         Left            =   4920
         TabIndex        =   44
         Top             =   3120
         Width           =   2655
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Senin"
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   16
            Top             =   240
            Width           =   1095
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Selasa"
            Height          =   255
            Index           =   1
            Left            =   240
            TabIndex        =   17
            Top             =   480
            Width           =   1095
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Rabu"
            Height          =   255
            Index           =   2
            Left            =   240
            TabIndex        =   18
            Top             =   720
            Width           =   1095
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Kamis"
            Height          =   255
            Index           =   3
            Left            =   240
            TabIndex        =   19
            Top             =   960
            Width           =   1215
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Jumat"
            Height          =   255
            Index           =   4
            Left            =   1440
            TabIndex        =   20
            Top             =   240
            Width           =   975
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Sabtu"
            Height          =   255
            Index           =   5
            Left            =   1440
            TabIndex        =   21
            Top             =   480
            Width           =   1095
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Minggu"
            Height          =   255
            Index           =   6
            Left            =   1440
            TabIndex        =   22
            Top             =   720
            Width           =   1095
         End
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   14
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   14
         Text            =   "Text1"
         Top             =   4920
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   13
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   13
         Text            =   "Text1"
         Top             =   4560
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   12
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   12
         Text            =   "Text1"
         Top             =   4200
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   11
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   11
         Text            =   "Text1"
         Top             =   3840
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   10
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   10
         Text            =   "Text1"
         Top             =   3480
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   9
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   9
         Text            =   "Text1"
         Top             =   3120
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   8
         Left            =   4920
         MaxLength       =   30
         TabIndex        =   8
         Text            =   "Text1"
         Top             =   2760
         Width           =   2655
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   7
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   7
         Text            =   "Text1"
         Top             =   2760
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   6
         Left            =   4920
         MaxLength       =   30
         TabIndex        =   6
         Text            =   "Text1"
         Top             =   2400
         Width           =   2655
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   5
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   5
         Text            =   "Text1"
         Top             =   2400
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   4
         Left            =   4920
         MaxLength       =   30
         TabIndex        =   4
         Text            =   "Text1"
         Top             =   2040
         Width           =   2655
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   3
         Left            =   1080
         MaxLength       =   30
         TabIndex        =   3
         Text            =   "Text1"
         Top             =   2040
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         Height          =   675
         Index           =   2
         Left            =   1080
         MaxLength       =   100
         MultiLine       =   -1  'True
         TabIndex        =   2
         Text            =   "master_supplier.frx":0807
         Top             =   1320
         Width           =   6495
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   1
         Left            =   1080
         MaxLength       =   50
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   960
         Width           =   6495
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   0
         Left            =   1080
         MaxLength       =   15
         TabIndex        =   0
         Text            =   "Text1"
         Top             =   600
         Width           =   2655
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Faktur Pajak : "
         Height          =   255
         Index           =   13
         Left            =   0
         TabIndex        =   51
         Top             =   5280
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "NPWP : "
         Height          =   255
         Index           =   20
         Left            =   0
         TabIndex        =   50
         Top             =   3840
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Hari"
         Height          =   255
         Index           =   19
         Left            =   5880
         TabIndex        =   49
         Top             =   4920
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Hari"
         Height          =   255
         Index           =   18
         Left            =   5880
         TabIndex        =   48
         Top             =   4560
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "TOP : "
         Height          =   255
         Index           =   17
         Left            =   3840
         TabIndex        =   47
         Top             =   4920
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "TOD : "
         Height          =   255
         Index           =   16
         Left            =   3840
         TabIndex        =   46
         Top             =   4560
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kunjungan : "
         Height          =   255
         Index           =   15
         Left            =   3840
         TabIndex        =   45
         Top             =   3135
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Bank : "
         Height          =   255
         Index           =   14
         Left            =   0
         TabIndex        =   43
         Top             =   4920
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "No Rek : "
         Height          =   255
         Index           =   12
         Left            =   0
         TabIndex        =   42
         Top             =   4200
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Rek a/n : "
         Height          =   255
         Index           =   11
         Left            =   0
         TabIndex        =   41
         Top             =   4560
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Fax : "
         Height          =   255
         Index           =   10
         Left            =   3840
         TabIndex        =   40
         Top             =   2760
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Propinsi : "
         Height          =   255
         Index           =   9
         Left            =   3840
         TabIndex        =   39
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kode POS : "
         Height          =   255
         Index           =   8
         Left            =   3840
         TabIndex        =   38
         Top             =   2400
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Email : "
         Height          =   255
         Index           =   7
         Left            =   0
         TabIndex        =   37
         Top             =   3120
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kontak : "
         Height          =   255
         Index           =   6
         Left            =   0
         TabIndex        =   36
         Top             =   3480
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Negara : "
         Height          =   255
         Index           =   5
         Left            =   0
         TabIndex        =   35
         Top             =   2400
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Telepon : "
         Height          =   255
         Index           =   4
         Left            =   0
         TabIndex        =   34
         Top             =   2760
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Alamat : "
         Height          =   255
         Index           =   3
         Left            =   0
         TabIndex        =   33
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kota : "
         Height          =   255
         Index           =   2
         Left            =   0
         TabIndex        =   32
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Nama : "
         Height          =   255
         Index           =   1
         Left            =   0
         TabIndex        =   31
         Top             =   960
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kode : "
         Height          =   255
         Index           =   0
         Left            =   0
         TabIndex        =   29
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label1 
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
         TabIndex        =   28
         Top             =   0
         Width           =   7935
      End
   End
End
Attribute VB_Name = "master_supplier"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmd_keluar_Click()
    Unload Me
    MDIForm1.tabref
End Sub

Private Sub cmd_simpan_Click()
On Error GoTo exc
Dim nharik As String
If Text1(0).Locked = False Then
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from msupp where kdsp='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        MsgBox ("kode supplier sudah ada!, silahkan pakai kode lain atau edit"), vbInformation, "Info"
        Exit Sub
    End If
End If

nharik = ""
For z = 0 To 6
    If Check1(z).Value = 1 Then
        If nharik = "" Then
            nharik = Check1(z).Caption
        Else
            nharik = nharik & "," & Check1(z).Caption
        End If
    End If
Next z
If nharik = "" Then
    MsgBox ("Centang Jadwal Kunjungan Supplier!"), vbInformation, "Info"
    Exit Sub
End If

If Text1(0).Text <> "" And Text1(1).Text <> "" Then
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from msupp where kdsp='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "update msupp set namasp='" & Text1(1).Text & "',alamat='" & Text1(2).Text & "',kota='" & Text1(3).Text & "',propinsi='" & Text1(4).Text & "',negara='" & Text1(5).Text & "',kodepos='" & Text1(6).Text & "'," & _
                 "telp='" & Text1(7).Text & "',fax='" & Text1(8).Text & "',email='" & Text1(9).Text & "',kontak='" & Text1(10).Text & "',npwp='" & Text1(11).Text & "',rek='" & Text1(12).Text & "',namarek='" & Text1(13).Text & "'," & _
                 "bank='" & Text1(14).Text & "',ppn='" & Combo3.Text & "',tod='" & Combo1.Text & "',jt='" & Combo2.Text & "',hari='" & nharik & "' where kdsp='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    Else
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "insert into msupp (kdsp,namasp,alamat,kota,propinsi,negara,kodepos,telp,fax,email,kontak,npwp,rek,namarek,bank,ppn,tod,jt,hari,tglreg,usr) values ('" & Text1(0).Text & "','" & Text1(1).Text & "','" & Text1(2).Text & "','" & Text1(3).Text & "'," & _
                 "'" & Text1(4).Text & "','" & Text1(5).Text & "','" & Text1(6).Text & "','" & Text1(7).Text & "','" & Text1(8).Text & "','" & Text1(9).Text & "','" & Text1(10).Text & "','" & Text1(11).Text & "','" & Text1(12).Text & "','" & Text1(13).Text & "'," & _
                 "'" & Text1(14).Text & "','" & Combo3.Text & "','" & Combo1.Text & "','" & Combo2.Text & "','" & nharik & "','" & Format(Date, "yyyy-MM-dd") & "','" & xy & "')", con, adOpenKeyset, adLockOptimistic
    End If
    MsgBox ("simpan sukses!"), vbInformation, "Info"
    
    If daftar_supplier.Visible = True Then
        daftar_supplier.tampilsupp
    End If
Else
    MsgBox ("Lengkapi data terlebih dahulu!"), vbInformation, "Info"
End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Private Sub Form_Load()
    Text1(0).Text = ""
    On Error GoTo exc
    Me.KeyPreview = True
    Combo1.Clear
    Combo2.Clear
    For z = 1 To 100
        Combo1.AddItem z
        Combo2.AddItem z
    Next z
    Combo1.Text = "7"
    Combo2.Text = "7"
    Combo3.Text = Combo3.List(1)
    
Exit Sub
exc:
MsgBox ("error")
    
End Sub
Private Sub Form_Resize()
    On Error Resume Next
    Picture5.Top = Me.Height - 1305
    Picture2.Height = Me.Height - 1290
    Picture2.Width = Me.Width - 255
    Picture5.Width = Me.Width - 255
    Label1(0).Width = Me.Width - 50
End Sub


Private Sub Text1_Change(Index As Integer)
Select Case Index
    Case 0
        For z = 1 To 14
            Text1(z).Text = ""
        Next z
End Select
End Sub

Private Sub Text1_GotFocus(Index As Integer)
Select Case Index
    Case 0 To 14
        With Text1(Index)
        .SelStart = 0
        .SelLength = Len(.Text)
        End With
        
End Select
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
    Case 0
        If KeyAscii = 13 Then
            KeyAscii = 0
            If Text1(0).Text <> "" Then
                getsupp
            End If
            SendKeys "{tab}"
        Else
            If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
        End If
   
    Case 1 To 14
        If KeyAscii = 13 Then
            KeyAscii = 0
            SendKeys "{tab}"
                    
        Else
            If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
        End If

End Select
End Sub
Sub getsupp()
    On Error GoTo exc
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from msupp where kdsp='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        On Error Resume Next
        Text1(1).Text = "" & rs1.Fields!namasp
        Text1(2).Text = "" & rs1.Fields!alamat
        Text1(3).Text = "" & rs1.Fields!kota
        Text1(4).Text = "" & rs1.Fields!propinsi
        Text1(5).Text = "" & rs1.Fields!negara
        Text1(6).Text = "" & rs1.Fields!kodepos
        Text1(7).Text = "" & rs1.Fields!telp
        Text1(8).Text = "" & rs1.Fields!fax
        Text1(9).Text = "" & rs1.Fields!email
        Text1(10).Text = "" & rs1.Fields!kontak
        Text1(11).Text = "" & rs1.Fields!npwp
        Text1(12).Text = "" & rs1.Fields!rek
        Text1(13).Text = "" & rs1.Fields!namarek
        Text1(14).Text = "" & rs1.Fields!bank
        Combo3.Text = "" & rs1.Fields!ppn
        Combo1.Text = "" & rs1.Fields!tod
        Combo2.Text = "" & rs1.Fields!jt
        ABC = Split(rs1.Fields!hari, ",")
        For z = 0 To UBound(ABC)
            If LCase(ABC(z)) = "senin" Then
                Check1(0).Value = 1
            ElseIf LCase(ABC(z)) = "selasa" Then
                Check1(1).Value = 1
            ElseIf LCase(ABC(z)) = "rabu" Then
                Check1(2).Value = 1
            ElseIf LCase(ABC(z)) = "kamis" Then
                Check1(3).Value = 1
            ElseIf LCase(ABC(z)) = "jumat" Then
                Check1(4).Value = 1
            ElseIf LCase(ABC(z)) = "sabtu" Then
                Check1(5).Value = 1
            ElseIf LCase(ABC(z)) = "minggu" Then
                Check1(6).Value = 1
            End If
        Next z
    End If
Exit Sub
exc:

End Sub

Sub otomasi()
    On Error GoTo exc
    Dim nomorsup As String
    Dim NO
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mnomor where jenis='Supplier'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        j = Val(rs1.Fields!dgt)
        If rs1.Fields!kol1 = "[CNT]" Then
            nomorsup = "" & rs1.Fields!kol2 & Left(rs1.Fields!kol3, 4)
            z = Len(nomorsup)
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "select max(kdsp) as kdsp from msupp where length(kdsp)=" & j + z & " and right(kdsp," & z & ")='" & nomorsup & "' and left(KDSP," & j & ") REGEXP '^[0-9]+$';", con, adOpenKeyset, adLockOptimistic
            If rs1.EOF Then
                Text1(0).Text = Left("0000000000", j - 1) & "1" & nomorsup
            Else
                If Left(Trim(rs1.Fields(0)), j) Then
                    NO = Trim(rs1.Fields(0))
                    NO = Left(NO, j)
                    NO = Val(NO) + 1
                    NO = Str(NO)
                    NO = Trim(NO)
                    NO = Left("0000000000", j - Len(NO)) + NO
                    Text1(0).Text = NO & nomorsup
                Else
                    Text1(0).Text = Left("0000000000", j - 1) & "1" & nomorsup
                End If
            End If
        
        Else
            nomorsup = "" & Left(rs1.Fields!kol1, 4) & rs1.Fields!kol2
            z = Len(nomorsup)
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "select max(kdsp) as kdsp from msupp where length(kdsp)=" & j + z & " and left(kdsp," & z & ")='" & nomorsup & "' and RIGHT(KDSP," & j & ") REGEXP '^[0-9]+$';", con, adOpenKeyset, adLockOptimistic
            If rs1.EOF Then
                Text1(0).Text = nomorsup & Left("0000000000", j - 1) & "1"
            Else
                If Right(Trim(rs1.Fields(0)), j) Then
                    NO = Trim(rs1.Fields(0))
                    NO = Right(NO, j)
                    NO = Val(NO) + 1
                    NO = Str(NO)
                    NO = Trim(NO)
                    NO = Left("0000000000", j - Len(NO)) + NO
                    Text1(0).Text = nomorsup + NO
                Else
                    Text1(0).Text = nomorsup & Left("0000000000", j - 1) & "1"
                End If
            End If
        End If
    End If
Exit Sub
exc:

End Sub

