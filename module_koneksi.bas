Attribute VB_Name = "Module_koneksi"
Option Explicit
 Global persentase As Integer
 Public con As New ADODB.Connection
 Public conej As New ADODB.Connection
 
 Public rs1 As New ADODB.Recordset
 Public rs2 As New ADODB.Recordset
 Public rs3 As New ADODB.Recordset
 Public rs4 As New ADODB.Recordset
 Public srvr, usr, pws, dtsm, dtej, drv As String
 Public aa, bb, cc, dd, ee, gg As String
 Public xy, xx, xz, csql, sss As String
 Public j, k, l, m, n, z As Integer
 Public ctl As Variant
 Public item, pesan, ABC As Variant

Public Sub koneksi()

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

'If conej.State > 0 Then conej.Close
'conej.ConnectionString = "DRIVER={" & drv & "};" & _
'"SERVER=" & srvr & ";" & _
'"DATABASE=" & dtej & ";" & _
'"UID=" & usr & ";PWD=" & pws & ";OPTION=3"
'conej.Open

'On Error Resume Next
'If rs1.State <> 0 Then rs1.Close
'rs1.Open "Call waktu_server", con, adOpenKeyset, adLockOptimistic
'If Not rs1.EOF Then
'    Date = Format(rs1.Fields!CURRENT_TIMESTAMP, "yyyy-MM-dd")
'    Time = Format(rs1.Fields!CURRENT_TIMESTAMP, "HH:mm:ss")
'End If
'If rs1.State <> 0 Then rs1.Close

Exit Sub
cek:
    MsgBox ("Seting Koneksi Database terlebih dahulu!"), vbInformation, "Info"
    Setting_koneksi.Show 1
Exit Sub
pass:
    MsgBox ("File kon.dll corupt, Instal Ulang program anda!"), vbInformation, "Info"
    End

End Sub


Public Sub tes_konek()

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

Exit Sub
cek:
    MsgBox ("Koneksi Database Gagal!"), vbInformation, "Info"
    'Setting_koneksi.Show 1
Exit Sub
pass:
    MsgBox ("File kon.dll corupt, Instal Ulang program anda!"), vbInformation, "Info"
    End

End Sub


