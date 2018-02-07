VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form daftar_user 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Daftar User"
   ClientHeight    =   5190
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   8325
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5190
   ScaleWidth      =   8325
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
      Begin VB.PictureBox pic_hapus 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         FillColor       =   &H8000000F&
         ForeColor       =   &H8000000F&
         Height          =   240
         Left            =   6120
         Picture         =   "daftar_user.frx":0000
         ScaleHeight     =   240
         ScaleWidth      =   240
         TabIndex        =   11
         Top             =   240
         Width           =   240
      End
      Begin VB.PictureBox pic_edit 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         FillColor       =   &H8000000F&
         ForeColor       =   &H8000000F&
         Height          =   240
         Left            =   4680
         Picture         =   "daftar_user.frx":058A
         ScaleHeight     =   240
         ScaleWidth      =   240
         TabIndex        =   10
         Top             =   240
         Width           =   240
      End
      Begin VB.CommandButton cmd_hapus 
         Caption         =   "Hapus   "
         Height          =   495
         Left            =   2760
         TabIndex        =   9
         Top             =   120
         Width           =   1215
      End
      Begin VB.CommandButton cmd_edit 
         Caption         =   "Edit   "
         Height          =   495
         Left            =   1440
         TabIndex        =   8
         Top             =   120
         Width           =   1215
      End
      Begin VB.PictureBox pic_batal 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         FillColor       =   &H8000000F&
         ForeColor       =   &H8000000F&
         Height          =   240
         Left            =   5280
         Picture         =   "daftar_user.frx":06D4
         ScaleHeight     =   240
         ScaleWidth      =   240
         TabIndex        =   6
         Top             =   240
         Width           =   240
      End
      Begin VB.PictureBox pic_baru 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         FillColor       =   &H8000000F&
         ForeColor       =   &H8000000F&
         Height          =   240
         Left            =   5640
         Picture         =   "daftar_user.frx":0A5E
         ScaleHeight     =   240
         ScaleWidth      =   240
         TabIndex        =   5
         Top             =   120
         Width           =   240
      End
      Begin VB.CommandButton cmd_baru 
         Caption         =   "Baru   "
         Height          =   495
         Left            =   120
         TabIndex        =   4
         Top             =   120
         Width           =   1215
      End
      Begin VB.CommandButton cmd_batal 
         Caption         =   "Tutup   "
         Height          =   495
         Left            =   6840
         TabIndex        =   3
         Top             =   120
         Width           =   1215
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
         TabIndex        =   7
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
Private mlX As Long
Private mlY As Long
Private Sub pic_batal_Click()
    cmd_batal_Click
End Sub

Private Sub cmd_batal_Click()
    pic_batal.Refresh
    Unload Me
End Sub
Private Sub cmd_batal_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_batal.Move pic_batal.Left + mlX, pic_batal.Top + mlY
    pic_batal.Refresh
End Sub
Private Sub cmd_batal_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_batal.Move pic_batal.Left - mlX, pic_batal.Top - mlY
    pic_batal.Refresh
End Sub

Private Sub pic_baru_Click()
    cmd_baru_Click
End Sub

Private Sub cmd_baru_Click()
    pic_baru.Refresh
    master_user.Show 1
    
End Sub
Private Sub cmd_baru_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_baru.Move pic_baru.Left + mlX, pic_baru.Top + mlY
    pic_baru.Refresh
End Sub
Private Sub cmd_baru_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_baru.Move pic_baru.Left - mlX, pic_baru.Top - mlY
    pic_baru.Refresh
End Sub

Private Sub cmd_hapus_Click()
    pic_hapus.Refresh
    
End Sub
Private Sub cmd_hapus_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_hapus.Move pic_hapus.Left + mlX, pic_hapus.Top + mlY
    pic_hapus.Refresh
End Sub
Private Sub cmd_hapus_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_hapus.Move pic_hapus.Left - mlX, pic_hapus.Top - mlY
    pic_hapus.Refresh
End Sub
Private Sub pic_hapus_Click()
    cmd_hapus_Click
End Sub
Private Sub cmd_edit_Click()
    pic_edit.Refresh
    master_user.Show 1
End Sub
Private Sub cmd_edit_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_edit.Move pic_edit.Left + mlX, pic_edit.Top + mlY
    pic_edit.Refresh
End Sub
Private Sub cmd_edit_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    pic_edit.Move pic_edit.Left - mlX, pic_edit.Top - mlY
    pic_edit.Refresh
End Sub
Private Sub pic_edit_Click()
    cmd_edit_Click
End Sub
Private Sub Form_Load()
    Select Case GetFullVersion
        Case "2.5.1", "2.5.2" 'XP, SERVER 2003, +
            'OFF - NO OFFSET WHEN CLICKED
            mlX = 0
            mlY = 0
        Case Else
            'ON - OFFSET WHEN CLICKED
            mlX = 15
            mlY = 15
    End Select
    
    MakeGraphicalOutOfStandardButton cmd_baru, pic_baru, BS_LEFT
    AlignButtonText cmd_baru, BS_RIGHT
    
    MakeGraphicalOutOfStandardButton cmd_batal, pic_batal, BS_LEFT
    AlignButtonText cmd_batal, BS_RIGHT
    
    MakeGraphicalOutOfStandardButton cmd_hapus, pic_hapus, BS_LEFT
    AlignButtonText cmd_hapus, BS_RIGHT
    
    MakeGraphicalOutOfStandardButton cmd_edit, pic_edit, BS_LEFT
    AlignButtonText cmd_edit, BS_RIGHT
    
    ListView1.ListItems.Clear
    ListView1.View = lvwReport

End Sub

