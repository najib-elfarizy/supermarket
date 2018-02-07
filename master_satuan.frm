VERSION 5.00
Begin VB.Form master_satuan 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tambah/Edit Satuan/Unit"
   ClientHeight    =   2820
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5655
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2820
   ScaleWidth      =   5655
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   5625
      TabIndex        =   7
      Top             =   2040
      Width           =   5655
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   2880
         TabIndex        =   2
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
         Picture         =   "master_satuan.frx":0000
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_keluar 
         Height          =   495
         Left            =   4200
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
         Caption         =   "Keluar"
         Picture         =   "master_satuan.frx":039A
         UseMaskCOlor    =   -1  'True
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2055
      Left            =   0
      ScaleHeight     =   2025
      ScaleWidth      =   5625
      TabIndex        =   3
      Top             =   0
      Width           =   5655
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   1
         Left            =   1440
         MaxLength       =   50
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   1080
         Width           =   3975
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   0
         Left            =   1440
         MaxLength       =   20
         TabIndex        =   0
         Text            =   "Text1"
         Top             =   720
         Width           =   2055
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Keterangan : "
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   8
         Top             =   1080
         Width           =   1095
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   5280
         Width           =   6135
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Merk : "
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   5
         Top             =   720
         Width           =   1095
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
         TabIndex        =   4
         Top             =   0
         Width           =   5895
      End
   End
End
Attribute VB_Name = "master_satuan"
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
If Text1(0).Text <> "" And Text1(1).Text <> "" Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "select * from msatuan where satuan='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
        If Not rs1.EOF Then
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "update msatuan set ket_satuan='" & Text1(1).Text & "' where satuan='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
        Else
            If rs1.State <> 0 Then rs1.Close
            rs1.Open "insert into msatuan (satuan,ket_satuan) values ('" & Text1(0).Text & "','" & Text1(1).Text & "')", con, adOpenKeyset, adLockOptimistic
        End If
        MsgBox ("simpan sukses!"), vbInformation, "Info"
        daftar_satuan.tampilsatuan
        Unload Me
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

Exit Sub
exc:
MsgBox ("error")
    
End Sub

Private Sub Text1_Change(Index As Integer)
Select Case Index
    Case 0
        Text1(1).Text = ""
        
End Select
End Sub

Private Sub Text1_GotFocus(Index As Integer)
Select Case Index
    Case 0, 1
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
            SendKeys "{tab}"
             If Text1(0).Text <> "" Then
                If rs1.State <> 0 Then rs1.Close
                rs1.Open "select * from msatuan where satuan='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
                If Not rs1.EOF Then
                    Text1(1).Text = "" & rs1.Fields!ket_satuan
                    Text1(1).SetFocus
                End If
            End If
        Else
            If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
        End If
   
    Case 1
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If

End Select
End Sub
