VERSION 5.00
Begin VB.Form master_sales 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Data Sales"
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
      TabIndex        =   20
      Top             =   5880
      Width           =   7695
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   120
         TabIndex        =   15
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
         Picture         =   "master_sales.frx":0000
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_keluar 
         Height          =   495
         Left            =   1440
         TabIndex        =   16
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
         Picture         =   "master_sales.frx":039A
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
      TabIndex        =   17
      Top             =   0
      Width           =   7695
      Begin VB.Frame Frame1 
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         Height          =   735
         Left            =   3960
         TabIndex        =   39
         Top             =   4320
         Width           =   3615
         Begin VB.TextBox Text1 
            Height          =   315
            Index           =   16
            Left            =   1200
            MaxLength       =   30
            TabIndex        =   43
            Text            =   "Text1"
            Top             =   360
            Width           =   1815
         End
         Begin VB.TextBox Text1 
            Height          =   315
            Index           =   15
            Left            =   1200
            MaxLength       =   30
            TabIndex        =   42
            Text            =   "Text1"
            Top             =   0
            Width           =   975
         End
         Begin VB.CheckBox Check2 
            BackColor       =   &H80000005&
            Caption         =   "Nominal"
            Height          =   195
            Left            =   0
            TabIndex        =   41
            Top             =   360
            Width           =   1215
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H80000005&
            Caption         =   "Persentase"
            Height          =   195
            Left            =   0
            TabIndex        =   40
            Top             =   0
            Width           =   1215
         End
      End
      Begin VB.OptionButton Option3 
         BackColor       =   &H80000005&
         Caption         =   "Total Faktur"
         Height          =   255
         Left            =   5040
         TabIndex        =   38
         Top             =   3960
         Width           =   2055
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H80000005&
         Caption         =   "Perbarang Harga Jual"
         Height          =   255
         Left            =   5040
         TabIndex        =   37
         Top             =   3600
         Value           =   -1  'True
         Width           =   2055
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H80000005&
         Caption         =   "Tidak Aktif"
         Height          =   255
         Left            =   5040
         TabIndex        =   36
         Top             =   3240
         Width           =   1575
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
         Text            =   "master_sales.frx":07D0
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
         Caption         =   "Komisi/Fee : "
         Height          =   255
         Index           =   15
         Left            =   3840
         TabIndex        =   35
         Top             =   3240
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "NPWP : "
         Height          =   255
         Index           =   20
         Left            =   0
         TabIndex        =   34
         Top             =   3840
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Bank : "
         Height          =   255
         Index           =   14
         Left            =   0
         TabIndex        =   33
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
         TabIndex        =   32
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
         TabIndex        =   31
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
         TabIndex        =   30
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
         TabIndex        =   29
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
         TabIndex        =   28
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
         TabIndex        =   27
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
         TabIndex        =   26
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
         TabIndex        =   25
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
         TabIndex        =   24
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
         TabIndex        =   23
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
         TabIndex        =   22
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
         TabIndex        =   21
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
         TabIndex        =   19
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
         TabIndex        =   18
         Top             =   0
         Width           =   7935
      End
   End
End
Attribute VB_Name = "master_sales"
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
'On Error GoTo exc
If Text1(0).Text <> "" And Text1(1).Text <> "" Then
    If Text1(15).Text = "" Then Text1(15).Text = "0"
    If Text1(16).Text = "" Then Text1(16).Text = "0"
    If Option1.Value = True Then
        z = 0
    ElseIf Option2.Value = True Then
        z = 1
    Else
        z = 2
    End If
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from msales where kdsl='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        If Text1(0).Locked = False Then
            MsgBox ("Kode Sales sudah ada, Silahkan pakai kode lain!"), vbInformation, "Info"
            Exit Sub
        Else
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "update msales set namasl='" & Text1(1).Text & "',alamat='" & Text1(2).Text & "',kota='" & Text1(3).Text & "',propinsi='" & Text1(4).Text & "',negara='" & Text1(5).Text & "',kodepos='" & Text1(6).Text & "'," & _
                     "telp='" & Text1(7).Text & "',fax='" & Text1(8).Text & "',email='" & Text1(9).Text & "',kontak='" & Text1(10).Text & "',npwp='" & Text1(11).Text & "',rek='" & Text1(12).Text & "',namarek='" & Text1(13).Text & "'," & _
                     "bank='" & Text1(14).Text & "',jenisfee='" & z & "',persenfee='" & Format(Text1(15).Text, "##0.00") & "',nominalfee='" & Format(Text1(16).Text, "##0.00") & "' where kdsl='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
        End If
    Else
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "insert into msales (kdSl,namasl,alamat,kota,propinsi,negara,kodepos,telp,fax,email,kontak,npwp,rek,namarek,bank,tglreg,usr,jenisfee,persenfee,nominalfee) values ('" & Text1(0).Text & "','" & Text1(1).Text & "','" & Text1(2).Text & "','" & Text1(3).Text & "'," & _
                 "'" & Text1(4).Text & "','" & Text1(5).Text & "','" & Text1(6).Text & "','" & Text1(7).Text & "','" & Text1(8).Text & "','" & Text1(9).Text & "','" & Text1(10).Text & "','" & Text1(11).Text & "','" & Text1(12).Text & "','" & Text1(13).Text & "'," & _
                 "'" & Text1(14).Text & "','" & Format(Date, "yyyy-MM-dd") & "','" & xy & "','" & z & "','" & Format(Text1(15).Text, "##0.00") & "','" & Format(Text1(16).Text, "##0.00") & "')", con, adOpenKeyset, adLockOptimistic
    
    End If
    MsgBox ("simpan sukses!"), vbInformation, "Info"
    
    If daftar_sales.Visible = True Then
        daftar_sales.tampilsupp
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
    Option1.Value = True
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


Private Sub Option1_Click()
If Option1.Value = True Then
    Frame1.Enabled = False
    Check1.Value = 0
    Check2.Value = 0
    Text1(15).Text = "0"
    Text1(16).Text = "0"
End If
End Sub

Private Sub Option2_Click()
If Option2.Value = True Then
    Frame1.Enabled = False
    Check1.Value = 0
    Check2.Value = 0
    Text1(15).Text = "0"
    Text1(16).Text = "0"
    
End If
End Sub

Private Sub Option3_Click()
If Option3.Value = True Then
    Frame1.Enabled = True
End If
End Sub

Private Sub Text1_Change(Index As Integer)
Select Case Index
    Case 0
        For z = 1 To 14
            Text1(z).Text = ""
        Next z
        Text1(15).Text = "0"
        Text1(16).Text = "0"
        Check1.Value = 0
        Check2.Value = 0
        
    Case 15, 16
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
    Case 0 To 16
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

    Case 15, 16
        If KeyAscii = 13 Then
            KeyAscii = 0
            
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
Sub getsupp()
    On Error GoTo exc
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from msales where kdsl='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        On Error Resume Next
        Text1(1).Text = "" & rs1.Fields!namasl
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
        If rs1.Fields!jenisfee = 0 Then
            Option1.Value = True
        ElseIf rs1.Fields!jenisfee = 1 Then
            Option2.Value = True
        Else
            Option3.Value = True
        End If
        Text1(15).Text = "" & rs1.Fields!persenfee
        Text1(16).Text = "" & rs1.Fields!nominalfee
    End If
Exit Sub
exc:

End Sub

Sub otomasi()
    On Error GoTo exc
    Dim nomorsup As String
    Dim NO
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mnomor where jenis='Sales'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        j = Val(rs1.Fields!dgt)
        If rs1.Fields!kol1 = "[CNT]" Then
            nomorsup = "" & rs1.Fields!kol2 & Left(rs1.Fields!kol3, 4)
            z = Len(nomorsup)
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "select max(kdsl) as kdsp from msales where length(kdsl)=" & j + z & " and right(kdsl," & z & ")='" & nomorsup & "' and left(KDSL," & j & ") REGEXP '^[0-9]+$';", con, adOpenKeyset, adLockOptimistic
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
            rs1.Open "select max(kdsl) as kdsp from msales where length(kdsl)=" & j + z & " and left(kdsl," & z & ")='" & nomorsup & "' and RIGHT(KDSL," & j & ") REGEXP '^[0-9]+$';", con, adOpenKeyset, adLockOptimistic
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

