VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form master_grup_member 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tambah/Edit Grup"
   ClientHeight    =   5715
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5685
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5715
   ScaleWidth      =   5685
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ListView ListView1 
      Height          =   2775
      Left            =   0
      TabIndex        =   12
      Top             =   2880
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   4895
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
         Text            =   "NO"
         Object.Width           =   0
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "KODE"
         Object.Width           =   2822
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "KETERANGAN"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   1
         SubItemIndex    =   3
         Text            =   "DISC"
         Object.Width           =   2117
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   2
         SubItemIndex    =   4
         Text            =   "LEVEL"
         Object.Width           =   2117
      EndProperty
   End
   Begin VB.PictureBox Picture5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   0
      ScaleHeight     =   705
      ScaleWidth      =   5625
      TabIndex        =   10
      Top             =   2040
      Width           =   5655
      Begin MySIS.jcbutton cmd_simpan 
         Height          =   495
         Left            =   2880
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
         Caption         =   "simpan"
         Picture         =   "master_grup.frx":0000
         UseMaskCOlor    =   -1  'True
      End
      Begin MySIS.jcbutton cmd_keluar 
         Height          =   495
         Left            =   4200
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
         Caption         =   "Keluar"
         Picture         =   "master_grup.frx":039A
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
      TabIndex        =   6
      Top             =   0
      Width           =   5655
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   2
         Left            =   1320
         MaxLength       =   20
         TabIndex        =   2
         Text            =   "Text1"
         Top             =   1200
         Width           =   1335
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   1320
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   1560
         Width           =   1335
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   1
         Left            =   1320
         MaxLength       =   50
         TabIndex        =   1
         Text            =   "Text1"
         Top             =   840
         Width           =   3975
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   0
         Left            =   1320
         MaxLength       =   20
         TabIndex        =   0
         Text            =   "Text1"
         Top             =   480
         Width           =   2055
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Prioritas : "
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   14
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Discount : "
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   13
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Keterangan : "
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   11
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   5280
         Width           =   6135
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Kode : "
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   8
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFC0&
         Caption         =   "Mastering Grup Pelanggan"
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
         Width           =   5895
      End
   End
End
Attribute VB_Name = "master_grup_member"
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
If Text1(0).Text <> "" And Text1(1).Text <> "" And Text1(2).Text <> "" And Combo1.Text <> "" Then
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from MGRUP_CUSTOMER where KODE='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "update MGRUP_CUSTOMER set GRUP='" & Text1(1).Text & "',POTONGAN='" & Format(Text1(2).Text, "##0.00") & "',LEVEL='" & Combo1.Text & "' where KODE='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
    Else
        If rs1.State <> 0 Then rs1.Close
        rs1.Open "insert into MGRUP_CUSTOMER (KODE,GRUP,POTONGAN,LEVEL) values ('" & Text1(0).Text & "','" & Text1(1).Text & "','" & Format(Text1(2).Text, "##0.00") & "','" & Combo1.Text & "')", con, adOpenKeyset, adLockOptimistic
    End If
    MsgBox ("simpan sukses!"), vbInformation, "Info"
    Text1(0).Text = ""
    tampil
    Text1(0).SetFocus
Else
    MsgBox ("Lengkapi data terlebih dahulu!"), vbInformation, "Info"
End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Sub tampil()
    On Error GoTo exc
    ListView1.ListItems.Clear
    ListView1.View = lvwReport
    j = 0
    If rs1.State <> 0 Then rs1.Close
    rs1.Open "select * from mgrup_customer", con, adOpenKeyset, adLockOptimistic
    If Not rs1.EOF Then
        Do While Not rs1.EOF
            j = j + 1
            Set item = ListView1.ListItems.Add(, , j)
            item.Text = j
            item.SubItems(1) = "" & rs1.Fields!kode
            item.SubItems(2) = "" & rs1.Fields!grup
            item.SubItems(3) = "" & rs1.Fields!potongan
            item.SubItems(4) = "" & rs1.Fields!Level
        rs1.MoveNext
        Loop
    End If
Exit Sub
exc:
MsgBox ("error")
End Sub

Private Sub Form_Load()
    Text1(0).Text = ""
    Text1(1).Text = ""
    Text1(2).Text = ""
    
    On Error GoTo exc
    koneksi
    Combo1.Clear
    For z = 0 To 10
        Combo1.AddItem (z)
    Next z
    Combo1.Text = "1"
    tampil
    Me.KeyPreview = True

Exit Sub
exc:
MsgBox ("error")
    
End Sub


Private Sub ListView1_DblClick()
If ListView1.ListItems.Count > 0 Then
    Text1(0).Text = ListView1.SelectedItem.SubItems(1)
    Text1(0).SetFocus
    SendKeys "{enter}"
End If
End Sub

Private Sub Text1_Change(Index As Integer)
Select Case Index
    Case 0
        Text1(1).Text = ""
        Text1(2).Text = ""
        
    Case 2
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
    Case 0, 1, 2, 3
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
                If rs1.State <> 0 Then rs1.Close
                rs1.Open "select * from mgrup_customer where kode='" & Text1(0).Text & "'", con, adOpenKeyset, adLockOptimistic
                If Not rs1.EOF Then
                    On Error Resume Next
                    Text1(1).Text = "" & rs1.Fields!grup
                    Text1(2).Text = "" & rs1.Fields!potongan
                    Combo1.Text = "" & rs1.Fields!Level
                    Text1(1).SetFocus
                Else
                    SendKeys "{tab}"
                End If
            End If
        Else
            If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
        End If
   
    Case 1
        If KeyAscii = 13 Then
            KeyAscii = 0
            SendKeys "{tab}"
            Text1(2).SetFocus
            
        Else
            If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
        End If

    Case 2
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
