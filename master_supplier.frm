VERSION 5.00
Begin VB.Form master_pelanggan 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Data Pelanggan"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7740
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   7740
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   7665
      TabIndex        =   25
      Top             =   5880
      Width           =   7695
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   120
         TabIndex        =   20
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
         TabIndex        =   21
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
      TabIndex        =   22
      Top             =   0
      Width           =   7695
      Begin VB.ComboBox Combo5 
         Height          =   315
         ItemData        =   "master_supplier.frx":07D0
         Left            =   5040
         List            =   "master_supplier.frx":07DA
         Style           =   2  'Dropdown List
         TabIndex        =   19
         Top             =   4800
         Width           =   2535
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         ItemData        =   "master_supplier.frx":0808
         Left            =   5040
         List            =   "master_supplier.frx":0812
         Style           =   2  'Dropdown List
         TabIndex        =   18
         Top             =   4440
         Width           =   2535
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   15
         Left            =   5040
         MaxLength       =   30
         TabIndex        =   15
         Text            =   "Text1"
         Top             =   3120
         Width           =   2535
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   5040
         Style           =   2  'Dropdown List
         TabIndex        =   17
         Top             =   4080
         Width           =   855
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   5040
         Style           =   2  'Dropdown List
         TabIndex        =   16
         Top             =   3480
         Width           =   855
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
         Left            =   5040
         MaxLength       =   30
         TabIndex        =   8
         Text            =   "Text1"
         Top             =   2760
         Width           =   2535
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
         Left            =   5040
         MaxLength       =   30
         TabIndex        =   6
         Text            =   "Text1"
         Top             =   2400
         Width           =   2535
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
         Left            =   5040
         MaxLength       =   30
         TabIndex        =   4
         Text            =   "Text1"
         Top             =   2040
         Width           =   2535
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
         Text            =   "master_supplier.frx":0840
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
         Caption         =   "Tipe Potongan : "
         Height          =   255
         Index           =   23
         Left            =   3840
         TabIndex        =   47
         Top             =   4800
         Width           =   1215
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Grup Plg : "
         Height          =   255
         Index           =   22
         Left            =   3840
         TabIndex        =   46
         Top             =   4440
         Width           =   1215
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "0 = Tanpa limit "
         Height          =   255
         Index           =   21
         Left            =   5040
         TabIndex        =   45
         Top             =   3840
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "NPWP : "
         Height          =   255
         Index           =   20
         Left            =   0
         TabIndex        =   44
         Top             =   3840
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Hari"
         Height          =   255
         Index           =   19
         Left            =   6000
         TabIndex        =   43
         Top             =   4080
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Hari"
         Height          =   255
         Index           =   18
         Left            =   6000
         TabIndex        =   42
         Top             =   3480
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Jatuh Tempo : "
         Height          =   255
         Index           =   17
         Left            =   3960
         TabIndex        =   41
         Top             =   4080
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Limit Hari : "
         Height          =   255
         Index           =   16
         Left            =   3960
         TabIndex        =   40
         Top             =   3480
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Limit Piutang : "
         Height          =   255
         Index           =   15
         Left            =   3960
         TabIndex        =   39
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
         TabIndex        =   38
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
         TabIndex        =   37
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
         TabIndex        =   36
         Top             =   4560
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Fax : "
         Height          =   255
         Index           =   10
         Left            =   3960
         TabIndex        =   35
         Top             =   2760
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Propinsi : "
         Height          =   255
         Index           =   9
         Left            =   3960
         TabIndex        =   34
         Top             =   2040
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kode POS : "
         Height          =   255
         Index           =   8
         Left            =   3960
         TabIndex        =   33
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
         TabIndex        =   32
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
         TabIndex        =   31
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
         TabIndex        =   30
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
         TabIndex        =   29
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
         TabIndex        =   28
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
         TabIndex        =   27
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
         TabIndex        =   26
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
         TabIndex        =   24
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
         TabIndex        =   23
         Top             =   0
         Width           =   7935
      End
   End
End
Attribute VB_Name = "master_pelanggan"
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
If Text1(0).Text <> "" And Text1(1).Text <> "" Then
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mcustomer where kdpl='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        If Text1(0).Locked = False Then
            MsgBox ("kode pelanggan sudah ada!, silahkan pakai kode lain atau edit"), vbInformation, "Info"
            Exit Sub
        Else
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "update mcustomer set namapl='" & Text1(1).Text & "',alamat='" & Text1(2).Text & "',kota='" & Text1(3).Text & "',propinsi='" & Text1(4).Text & "',negara='" & Text1(5).Text & "',kodepos='" & Text1(6).Text & "'," & _
                     "telp='" & Text1(7).Text & "',fax='" & Text1(8).Text & "',email='" & Text1(9).Text & "',kontak='" & Text1(10).Text & "',npwp='" & Text1(11).Text & "',rek='" & Text1(12).Text & "',namarek='" & Text1(13).Text & "'," & _
                     "bank='" & Text1(14).Text & "',plafon='" & Format(Text1(15).Text, "##0.00") & "',topy='" & Combo1.Text & "',jt='" & Combo2.Text & "',grup='" & Combo4.Text & "',tipe_potongan='" & Combo5.Text & "' where kdpl='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
        End If
    Else
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "insert into mcustomer (kdpl,namapl,alamat,kota,propinsi,negara,kodepos,telp,fax,email,kontak,npwp,rek,namarek,bank,tglreg,usr,plafon,topy,jt,grup,tipe_potongan) values ('" & Text1(0).Text & "','" & Text1(1).Text & "','" & Text1(2).Text & "','" & Text1(3).Text & "'," & _
                 "'" & Text1(4).Text & "','" & Text1(5).Text & "','" & Text1(6).Text & "','" & Text1(7).Text & "','" & Text1(8).Text & "','" & Text1(9).Text & "','" & Text1(10).Text & "','" & Text1(11).Text & "','" & Text1(12).Text & "','" & Text1(13).Text & "'," & _
                 "'" & Text1(14).Text & "','" & Format(Date, "yyyy-MM-dd") & "','" & xy & "','" & Format(Text1(15).Text, "##0.00") & "','" & Combo1.Text & "','" & Combo2.Text & "','" & Combo4.Text & "','" & Combo5.Text & "')", con, adOpenKeyset, adLockOptimistic
    End If
    MsgBox ("simpan sukses!"), vbInformation, "Info"
    
    If daftar_pelanggan.Visible = True Then
        daftar_pelanggan.tampilpelanggan
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
    For z = 0 To 100
        Combo1.AddItem z
        Combo2.AddItem z
    Next z
    Combo4.Clear
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mgrup_customer", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        Do While Not rs1.EOF
            Combo4.AddItem ("" & rs1.Fields!kode)
        rs1.MoveNext
        Loop
    End If
    Combo1.Text = "0"
    Combo2.Text = "0"
    Combo4.Text = Combo4.List(1)
    Combo5.Text = Combo5.List(1)
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
        Text1(15).Text = "0"
        On Error Resume Next
        Combo1.Text = "0"
        Combo2.Text = "0"
    
    Case 15
        ABC = Split(Text1(Index).Text, ".")
        If UBound(ABC) > 1 Then
            sss = ABC(0) & "." & ABC(1)
            Text1(Index).Text = sss
        End If
        Text1(Index).SelStart = Len(Text1(Index).Text)

        
End Select
End Sub

Private Sub Text1_GotFocus(Index As Integer)
Select Case Index
    Case 0 To 15
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
                getpelanggan
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
    
    Case 15
        If KeyAscii = 13 Then
            KeyAscii = 0
            SendKeys "{tab}"
        Else
            If Not (KeyAscii >= Asc("0") _
            And KeyAscii <= Asc("9") _
            Or KeyAscii = vbKeyBack _
            Or KeyAscii = vbKeyDelete _
            Or KeyAscii = 45) Then
            KeyAscii = 0
            End If
        End If
    
End Select
End Sub
Sub getpelanggan()
    On Error GoTo exc
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mcustomer where kdpl='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        On Error Resume Next
        Text1(1).Text = "" & rs1.Fields!namapl
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
        Text1(15).Text = "" & Format(rs1.Fields!plafon, "#,##0")
        Combo1.Text = "" & rs1.Fields!topy
        Combo2.Text = "" & rs1.Fields!jt
        Combo4.Text = "" & rs1.Fields!grup
        Combo5.Text = "" & rs1.Fields!tipe_potongan
    End If
Exit Sub
exc:

End Sub

Sub otomasi()
    On Error GoTo exc
    Dim nomorsup As String
    Dim NO
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mnomor where jenis='Pelanggan'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        j = Val(rs1.Fields!dgt)
        If rs1.Fields!kol1 = "[CNT]" Then
            nomorsup = "" & rs1.Fields!kol2 & Left(rs1.Fields!kol3, 4)
            z = Len(nomorsup)
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "select max(kdpl) as kdsp from mcustomer where length(kdpl)=" & j + z & " and right(kdpl," & z & ")='" & nomorsup & "' and left(KDPL," & j & ") REGEXP '^[0-9]+$';", con, adOpenKeyset, adLockOptimistic
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
            rs1.Open "select max(kdpl) as kdsp from mcustomer where length(kdpl)=" & j + z & " and left(kdpl," & z & ")='" & nomorsup & "' and RIGHT(KDPL," & j & ") REGEXP '^[0-9]+$';", con, adOpenKeyset, adLockOptimistic
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

