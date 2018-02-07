VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form master_company 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Master data Perusahaan"
   ClientHeight    =   5490
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   7335
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5490
   ScaleWidth      =   7335
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   7305
      TabIndex        =   12
      Top             =   4800
      Width           =   7335
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   4560
         TabIndex        =   7
         Top             =   120
         Width           =   1215
         _extentx        =   2143
         _extenty        =   873
         buttonstyle     =   2
         font            =   "master_company.frx":0000
         backcolor       =   15199212
         caption         =   "simpan"
         picture         =   "master_company.frx":0028
         usemaskcolor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_keluar 
         Height          =   495
         Left            =   6000
         TabIndex        =   17
         Top             =   120
         Width           =   1215
         _extentx        =   2143
         _extenty        =   873
         buttonstyle     =   2
         font            =   "master_company.frx":03C2
         backcolor       =   15199212
         caption         =   "Keluar"
         picture         =   "master_company.frx":03EA
         usemaskcolor    =   -1  'True
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4935
      Left            =   0
      ScaleHeight     =   4905
      ScaleWidth      =   7305
      TabIndex        =   8
      Top             =   0
      Width           =   7335
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   315
         Left            =   1800
         TabIndex        =   6
         Top             =   2880
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   556
         _Version        =   393216
         Format          =   98107393
         CurrentDate     =   43131
      End
      Begin VB.PictureBox Picture1 
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   5880
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   22
         Top             =   2280
         Visible         =   0   'False
         Width           =   375
      End
      Begin MSComDlg.CommonDialog codi 
         Left            =   5760
         Top             =   3240
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   5
         Left            =   1800
         MaxLength       =   30
         TabIndex        =   5
         Text            =   "Text1"
         Top             =   2520
         Width           =   3255
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   4
         Left            =   1800
         MaxLength       =   30
         TabIndex        =   4
         Text            =   "Text1"
         Top             =   2160
         Width           =   3255
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   3
         Left            =   1800
         MaxLength       =   30
         TabIndex        =   3
         Text            =   "Text1"
         Top             =   1800
         Width           =   3255
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   2
         Left            =   1800
         MaxLength       =   50
         TabIndex        =   2
         Text            =   "Text1"
         Top             =   1440
         Width           =   5295
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   1
         Left            =   1800
         MaxLength       =   50
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   1080
         Width           =   5295
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   0
         Left            =   1800
         MaxLength       =   30
         TabIndex        =   0
         Text            =   "Text1"
         Top             =   720
         Width           =   3255
      End
      Begin MySIS.jcbutton cmd_cari 
         Height          =   495
         Left            =   3480
         TabIndex        =   20
         Top             =   3240
         Width           =   1575
         _extentx        =   2778
         _extenty        =   873
         buttonstyle     =   2
         font            =   "master_company.frx":0820
         backcolor       =   15199212
         caption         =   "  Browse "
         picture         =   "master_company.frx":0848
         usemaskcolor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_hapus 
         Height          =   495
         Left            =   3480
         TabIndex        =   21
         Top             =   3840
         Width           =   1575
         _extentx        =   2778
         _extenty        =   873
         buttonstyle     =   2
         font            =   "master_company.frx":0BE2
         backcolor       =   15199212
         caption         =   "Bersihkan"
         picture         =   "master_company.frx":0C0A
         usemaskcolor    =   -1  'True
      End
      Begin VB.Image ImgPhoto 
         Appearance      =   0  'Flat
         BorderStyle     =   1  'Fixed Single
         Height          =   1450
         Left            =   1800
         Stretch         =   -1  'True
         Top             =   3240
         Width           =   1450
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Tanggal PKP : "
         Height          =   255
         Index           =   6
         Left            =   600
         TabIndex        =   19
         Top             =   2880
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Logo : "
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   18
         Top             =   3240
         Width           =   1455
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "NPWP : "
         Height          =   255
         Index           =   5
         Left            =   240
         TabIndex        =   16
         Top             =   2520
         Width           =   1455
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Fax : "
         Height          =   255
         Index           =   4
         Left            =   600
         TabIndex        =   15
         Top             =   2160
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Telepon : "
         Height          =   255
         Index           =   3
         Left            =   0
         TabIndex        =   14
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Alamat : "
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   13
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   240
         TabIndex        =   11
         Top             =   5280
         Width           =   6135
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Nama Perusahaan : "
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   10
         Top             =   720
         Width           =   1575
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
         TabIndex        =   9
         Top             =   0
         Width           =   7575
      End
   End
End
Attribute VB_Name = "master_company"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pathpic As String
Option Explicit

Private Sub cmd_cari_Click()
    On Error Resume Next
    codi.Filter = "(*.jpg,*.bmp,*.gif)|*.jpg;*.bmp|*.gif"
    codi.ShowOpen
    pathpic = codi.FileName
    If pathpic <> "" Then
        Dim pic As StdPicture
        Const sizeX As Integer = 100, sizeY As Integer = 100
        Set pic = LoadPicture(pathpic)
        With Picture1
          .Width = (sizeX * Screen.TwipsPerPixelX) + .Width - .ScaleX(.ScaleWidth, .ScaleMode, vbTwips)
          .Height = (sizeY * Screen.TwipsPerPixelY) + .Height - .ScaleY(.ScaleHeight, .ScaleMode, vbTwips)
          .AutoRedraw = True
          .Cls
          Call .PaintPicture(pic, 0, 0, .ScaleWidth, .ScaleHeight)
          .AutoRedraw = False
          Call SavePicture(.Image, App.Path & "\gambar.jpg")
        End With
        codi.FileName = App.Path & "\gambar.jpg"
        pathpic = App.Path & "\gambar.jpg"
        ImgPhoto.Picture = LoadPicture(codi.FileName)
    End If
Exit Sub
cc:
    MsgBox ("File Tidak dapat ditampilkan"), vbInformation, "Info"
    codi.FileName = ""
    pathpic = ""
    ImgPhoto.Picture = LoadPicture("")

End Sub

Private Sub cmd_hapus_Click()
    codi.FileName = ""
    pathpic = ""
    ImgPhoto.Picture = LoadPicture("")
End Sub

Private Sub cmd_keluar_Click()
    Unload Me
End Sub

Private Sub cmd_simpan_Click()
On Error GoTo exc
If Text1(0).Text <> "" Then
    If rs2.State <> 0 Then rs2.Close
    rs2.Open "delete from mperusahaan", con, adOpenKeyset, adLockOptimistic
    If rs2.State <> 0 Then rs2.Close
    rs2.Open "insert into mperusahaan (NAMA_PERUSAHAAN,ALAMAT1,ALAMAT2,TELP,FAX,NPWP,TGL_PKP) values ('" & Text1(0).Text & "','" & Text1(1).Text & "'," & _
             "'" & Text1(2).Text & "','" & Text1(3).Text & "','" & Text1(4).Text & "','" & Text1(5).Text & "','" & Format(DTPicker1.Value, "yyyy-MM-dd") & "')", con, adOpenKeyset, adLockOptimistic
    simpangambar
    MsgBox ("Data Perusahaan berhasil disimpan"), vbInformation, "Info"
Else
    MsgBox ("Lengkapi data terlebih dahulu!"), vbInformation, "Info"
End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Sub simpangambar()

pathpic = codi.FileName
If pathpic <> "" Then
    If rs2.State <> 0 Then rs2.Close
    rs2.Open "delete from zfoto_perusahaan", con, adOpenKeyset, adLockOptimistic
    
    Dim bytData() As Byte
    Dim strDescription As String
    
    On Error GoTo err
    Open pathpic For Binary As #1
    ReDim bytData(FileLen(pathpic))
    Get #1, , bytData
    Close #1
    
    Set rs3 = New ADODB.Recordset
    rs3.CursorLocation = adUseClient
    rs3.Open "zfoto_perusahaan", con, adOpenKeyset, adLockPessimistic, adCmdTable
    With rs3
         .AddNew
         .Fields("gambar").AppendChunk bytData 'adding the picture to the db
         .Update
    End With

End If

Exit Sub
err:
        If err.Number = 32755 Then     'simple error check.
        Else
            MsgBox err.Description
            err.Clear
        End If

End Sub

Private Sub Form_Load()
    
    For z = 0 To 5
        Text1(z).Text = ""
    Next z
    koneksi
    
    On Error GoTo exc
    If rs2.State <> 0 Then rs2.Close
    rs2.Open "select * from mperusahaan limit 1", con, adOpenKeyset, adLockOptimistic
    If Not rs2.EOF Then
        On Error Resume Next
        Text1(0).Text = "" & rs2.Fields!NAMA_PERUSAHAAN
        Text1(1).Text = "" & rs2.Fields!alamat1
        Text1(2).Text = "" & rs2.Fields!alamat2
        Text1(3).Text = "" & rs2.Fields!telp
        Text1(4).Text = "" & rs2.Fields!fax
        Text1(5).Text = "" & rs2.Fields!npwp
        DTPicker1.Value = rs2.Fields!tgl_pkp
    End If
    
    If rs2.State <> 0 Then rs2.Close
    rs2.Open "select * from zfoto_perusahaan limit 1", con, adOpenKeyset, adLockOptimistic
    If Not rs2.EOF Then
        If IsNull(rs2.Fields!gambar) = False Then
            Set ImgPhoto.DataSource = rs2 'setting image1’s datasource
            ImgPhoto.DataField = "Gambar" 'set its datafield.
            Set rs2 = Nothing
        Else
            ImgPhoto.Picture = LoadPicture("")
        End If
    End If
    If rs2.State <> 0 Then rs2.Close
    
    Me.KeyPreview = True
Exit Sub
exc:
MsgBox ("error")
    
End Sub

Private Sub Text1_GotFocus(Index As Integer)
Select Case Index
    Case 0, 1, 2, 3, 4, 5, 6
        With Text1(Index)
        .SelStart = 0
        .SelLength = Len(.Text)
        End With
End Select
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
    Case 0, 1, 2, 3, 4, 5, 6
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If

End Select
End Sub
