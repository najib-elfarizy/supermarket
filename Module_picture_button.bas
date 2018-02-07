Attribute VB_Name = "Module_button"
Option Explicit
'<10/21/2004 ROBDOG888 VB/OUTLOOK GURU>
Private Declare Function SetParent Lib "user32.dll" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long

Public Const BS_LEFT    As Long = &H100&
Public Const BS_RIGHT   As Long = &H200&
Public Const BS_CENTER  As Long = &H300&
Public Const BS_TOP     As Long = &H400&
Public Const BS_BOTTOM  As Long = &H800&
Public Const BS_vCENTER As Long = &HC00

Private Const GWL_STYLE  As Long = (-16)

Private Declare Function GetWindowLong Lib "user32.dll" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long

Private Declare Function SetWindowLong Lib "user32.dll" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, _
ByVal dwNewLong As Long) As Long

Private Type OSVERSIONINFO
  dwOSVersionInfoSize   As Long
  dwMajorVersion        As Long
  dwMinorVersion        As Long
  dwBuildNumber         As Long
  dwPlatformId          As Long '1 = Windows 95. '2 = Windows NT
  szCSDVersion          As String * 128
End Type

Private Declare Function GetVersionExA Lib "kernel32" (lpVersionInformation As OSVERSIONINFO) As Integer

Public Function AlignButtonText(ByRef oCmdBtn As CommandButton, ByVal lStyle As Long)
'<10/21/2004 ROBDOG888 VB/OUTLOOK GURU>
'Note: Align text to make room for the image. Depends on type of alignment passed
    Dim lRet As Long
    If lStyle = BS_RIGHT Then
        lRet = GetWindowLong(oCmdBtn.hwnd, GWL_STYLE) And Not lStyle
        oCmdBtn.Caption = oCmdBtn.Caption & Chr(32)
    ElseIf lStyle = BS_LEFT Then
        lRet = GetWindowLong(oCmdBtn.hwnd, GWL_STYLE) And Not lStyle
        oCmdBtn.Caption = Chr(32) & oCmdBtn.Caption
    ElseIf lStyle = BS_CENTER Then
        lRet = GetWindowLong(oCmdBtn.hwnd, GWL_STYLE) And Not BS_RIGHT Or BS_LEFT
    End If
    lRet = SetWindowLong(oCmdBtn.hwnd, GWL_STYLE, lRet Or lStyle)
    oCmdBtn.Refresh
End Function

Public Function MakeGraphicalOutOfStandardButton(ByRef oCmdBtn As CommandButton, ByRef oPic As PictureBox, ByVal lStyle As Long)
'<10/21/2004 ROBDOG888 VB/OUTLOOK GURU>
'Note: If running XP+ then dont need to adjust pic left and down when the button is clicked
'      In the Button_Click, Button_MouseDown, and the Button_MouseUp events place a refresh method for the pic
    SetParent oPic.hwnd, oCmdBtn.hwnd
    If lStyle = BS_RIGHT Then
        '95 IS THE BUFFER SPACING WHEN RIGHT ALIGNED
        oPic.Move (oCmdBtn.Width - oPic.Width) - 95, (oCmdBtn.Height / 2) - (oPic.Height / 2)
    ElseIf lStyle = BS_LEFT Then
        '95 IS THE BUFFER SPACING WHEN LEFT ALIGNED
        oPic.Move 95, (oCmdBtn.Height / 2) - (oPic.Height / 2)
    ElseIf lStyle = BS_CENTER Then
        oPic.Move (oCmdBtn.Width / 2) - (oPic.Width / 2), (oCmdBtn.Height / 2) - (oPic.Height / 2)
    End If
    oPic.Refresh
End Function

Public Function GetFullVersion() As String
'<07/07/2004 ROBDOG888 VB/OUTLOOK GURU>
    Dim osinfo  As OSVERSIONINFO
    Dim lRetVal As Integer
    osinfo.dwOSVersionInfoSize = 148
    osinfo.szCSDVersion = Space$(128)
    lRetVal = GetVersionExA(osinfo)
    GetFullVersion = osinfo.dwPlatformId & "." & osinfo.dwMajorVersion & "." & osinfo.dwMinorVersion
End Function
