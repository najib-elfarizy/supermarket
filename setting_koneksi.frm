VERSION 5.00
Begin VB.Form Setting_koneksi 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Setting Koneksi Database"
   ClientHeight    =   3090
   ClientLeft      =   2850
   ClientTop       =   1755
   ClientWidth     =   4470
   ControlBox      =   0   'False
   Icon            =   "setting_koneksi.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   4470
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "&Test Koneksi"
      Height          =   450
      Left            =   120
      TabIndex        =   7
      Top             =   2520
      Width           =   1200
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   450
      Left            =   3120
      TabIndex        =   6
      Top             =   2520
      Width           =   1200
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   450
      Left            =   1800
      TabIndex        =   5
      Top             =   2520
      Width           =   1200
   End
   Begin VB.Frame fraStep3 
      Caption         =   "Connection Values"
      Height          =   2295
      Index           =   0
      Left            =   120
      TabIndex        =   14
      Top             =   120
      Width           =   4230
      Begin VB.TextBox textadmsm 
         Height          =   300
         Left            =   1080
         TabIndex        =   8
         Top             =   2520
         Visible         =   0   'False
         Width           =   2895
      End
      Begin VB.TextBox TxtDRV 
         Height          =   315
         Left            =   1200
         TabIndex        =   4
         Text            =   "MySQL ODBC 5.1 Driver"
         Top             =   1560
         Width           =   2895
      End
      Begin VB.TextBox txtUID 
         Height          =   300
         Left            =   1200
         TabIndex        =   1
         Top             =   600
         Width           =   2895
      End
      Begin VB.TextBox txtPWD 
         Height          =   300
         IMEMode         =   3  'DISABLE
         Left            =   1200
         PasswordChar    =   "*"
         TabIndex        =   2
         Top             =   930
         Width           =   2895
      End
      Begin VB.TextBox textgl 
         Height          =   300
         Left            =   1200
         TabIndex        =   3
         Top             =   1260
         Width           =   2895
      End
      Begin VB.TextBox txtServer 
         Height          =   330
         Left            =   1200
         TabIndex        =   0
         Top             =   255
         Width           =   2895
      End
      Begin VB.Label lblStep3 
         AutoSize        =   -1  'True
         Caption         =   "Database EJ"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   16
         Top             =   2520
         Visible         =   0   'False
         Width           =   915
      End
      Begin VB.Label lblStep3 
         AutoSize        =   -1  'True
         Caption         =   "Pastikan Driver Sudah Diinstal"
         Height          =   195
         Index           =   1
         Left            =   1200
         TabIndex        =   15
         Top             =   1920
         Width           =   2145
      End
      Begin VB.Label lblStep3 
         AutoSize        =   -1  'True
         Caption         =   "&UID:"
         Height          =   195
         Index           =   2
         Left            =   135
         TabIndex        =   9
         Top             =   630
         Width           =   330
      End
      Begin VB.Label lblStep3 
         AutoSize        =   -1  'True
         Caption         =   "&Password:"
         Height          =   195
         Index           =   3
         Left            =   135
         TabIndex        =   10
         Top             =   975
         Width           =   735
      End
      Begin VB.Label lblStep3 
         AutoSize        =   -1  'True
         Caption         =   "Data&base"
         Height          =   195
         Index           =   4
         Left            =   135
         TabIndex        =   11
         Top             =   1320
         Width           =   690
      End
      Begin VB.Label lblStep3 
         AutoSize        =   -1  'True
         Caption         =   "Dri&ver:"
         Height          =   195
         Index           =   5
         Left            =   135
         TabIndex        =   12
         Top             =   1580
         Width           =   465
      End
      Begin VB.Label lblStep3 
         AutoSize        =   -1  'True
         Caption         =   "&Server:"
         Height          =   195
         Index           =   6
         Left            =   135
         TabIndex        =   13
         Top             =   330
         Width           =   510
      End
   End
End
Attribute VB_Name = "Setting_koneksi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    End
End Sub

Private Sub cmdOK_Click()
    Open App.Path & "\kon.dll" For Output As #1
    Print #1, "" & txtServer.Text
    Print #1, "" & txtUID.Text
    Print #1, "" & EncryptText(txtPWD.Text, "ANDRA030279")
    Print #1, "" & textgl.Text
    Print #1, "" & textadmsm.Text
    Print #1, "" & TxtDRV.Text
    Print #1, "----------------------------WARNING-----------------------------"
    Print #1, "DO NOT CHANGE OR MODIFY THIS .TXT FILE IT IS NEEDED"
    Print #1, "FOR AN APPLICATION TO WORK CORRECTLY (IF CHANGED APP WONT WORK)"
    Close #1
    teskoneksi
End Sub
Sub teskoneksi()

On Error GoTo pass
Open App.Path & "\kon.dll" For Input As #1
Line Input #1, srvr
Line Input #1, usr
Line Input #1, pws
Line Input #1, dtsm
Line Input #1, dtej
Line Input #1, drv
Close #1

pws = DecryptText("" & pws, "ANDRA030279")

On Error GoTo cek

If con.State > 0 Then con.Close
con.ConnectionString = "DRIVER={" & drv & "};" & _
"SERVER=" & srvr & ";" & _
"DATABASE=" & dtsm & ";" & _
"UID=" & usr & ";PWD=" & pws & ";OPTION=3"
con.Open

If conej.State > 0 Then conej.Close
conej.ConnectionString = "DRIVER={" & drv & "};" & _
"SERVER=" & srvr & ";" & _
"DATABASE=" & dtej & ";" & _
"UID=" & usr & ";PWD=" & pws & ";OPTION=3"
conej.Open

MsgBox ("Setting Sukses"), vbInformation, "Info"
Unload Me

Exit Sub
cek:
    MsgBox ("Koneksi Gagal!"), vbInformation, "Info"

Exit Sub
pass:
    MsgBox ("File kon.dll corupt!"), vbInformation, "Info"
    'End
End Sub

Private Sub Command1_Click()
    On Error GoTo exc
    If con.State > 0 Then con.Close
    con.ConnectionString = "DRIVER={" & drv & "};" & _
    "SERVER=" & srvr & ";" & _
    "DATABASE=" & dtsm & ";" & _
    "UID=" & usr & ";PWD=" & pws & ";OPTION=3"
    con.Open
    
    MsgBox ("Koneksi Sukses!")
    
Exit Sub
exc:
    MsgBox ("Koneksi Gagal!")
End Sub

Private Sub Form_Load()

    On Error Resume Next
    Open App.Path & "\kon.dll" For Input As #1
    Line Input #1, aa
    Line Input #1, bb
    Line Input #1, cc
    Line Input #1, dd
    Line Input #1, ee
    Line Input #1, gg
    
    txtServer.Text = aa
    txtUID.Text = bb
    txtPWD.Text = cc
    txtPWD.Text = DecryptText(txtPWD.Text, "ANDRA030279")
    textgl.Text = dd
    textadmsm.Text = ee
    TxtDRV.Text = gg
    Close #1
    Me.KeyPreview = True
End Sub


Private Sub textgl_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If
End Sub

Private Sub TxtDRV_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If
End Sub

Private Sub txtPWD_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If

End Sub

Private Sub txtServer_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If
End Sub


Private Sub txtUID_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        KeyAscii = 0
        SendKeys "{tab}"
                
    Else
        If (KeyAscii = 34 Or KeyAscii = 39 Or KeyAscii = 92) Then KeyAscii = 0
    End If

End Sub
