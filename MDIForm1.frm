VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MySIS (POS & Inventory Control)"
   ClientHeight    =   6240
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   9285
   Icon            =   "MDIForm1.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   600
      Top             =   2760
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      MaskColor       =   12632256
      _Version        =   393216
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   5865
      Width           =   9285
      _ExtentX        =   16378
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   5
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   13229
            MinWidth        =   13229
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   13229
            MinWidth        =   13229
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin MySIS.ACPRibbon ACPRibbon1 
      Align           =   1  'Align Top
      Height          =   1740
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9285
      _ExtentX        =   16378
      _ExtentY        =   3069
      BackColor       =   4210752
      ForeColor       =   -2147483630
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   480
      Top             =   3480
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   24
      ImageHeight     =   23
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   33
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":1CFA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":22AF
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":2701
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":2B53
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":2FA5
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":4937
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":4D89
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":51DB
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":755D
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":98DF
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":9D31
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":9F8F
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":A3E1
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":A833
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":AC85
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":B0D7
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":B590
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":BE6A
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":C2C4
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":C716
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":CB68
            Key             =   ""
         EndProperty
         BeginProperty ListImage22 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":D2E2
            Key             =   ""
         EndProperty
         BeginProperty ListImage23 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":D734
            Key             =   ""
         EndProperty
         BeginProperty ListImage24 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":DB86
            Key             =   ""
         EndProperty
         BeginProperty ListImage25 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":DFD8
            Key             =   ""
         EndProperty
         BeginProperty ListImage26 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":E42A
            Key             =   ""
         EndProperty
         BeginProperty ListImage27 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":E87C
            Key             =   ""
         EndProperty
         BeginProperty ListImage28 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":ECCE
            Key             =   ""
         EndProperty
         BeginProperty ListImage29 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":F120
            Key             =   ""
         EndProperty
         BeginProperty ListImage30 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":F572
            Key             =   ""
         EndProperty
         BeginProperty ListImage31 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":F9C4
            Key             =   ""
         EndProperty
         BeginProperty ListImage32 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":FE16
            Key             =   ""
         EndProperty
         BeginProperty ListImage33 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MDIForm1.frx":10268
            Key             =   ""
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Theme As Integer
'Dim fchild As ChildMDI
Option Explicit
Private WithEvents m_cMDITabs   As cMDITabs
Attribute m_cMDITabs.VB_VarHelpID = -1

Public Sub closeChild(ByVal frmChild As Form)
    On Error Resume Next
    Unload frmChild
    m_cMDITabs.ForceRefresh
End Sub

Private Function formForHwnd(ByVal hWnd As Long) As Form
    On Error Resume Next
    Dim frmChild As Form
    For Each frmChild In Forms
        If (frmChild.hWnd = hWnd) Then
            Set formForHwnd = frmChild
            Exit For
        End If
    Next
    Exit Function
End Function

Private Sub m_cMDITabs_CloseWindow(ByVal hWnd As Long)
    On Error Resume Next
    Dim frm As Form
    Set frm = formForHwnd(hWnd)
    Unload frm
    m_cMDITabs.ForceRefresh
End Sub

Private Sub ACPRibbon1_ButtonClick(ByVal ID As String, ByVal Caption As String)
If ID = 4 Then
    daftar_supplier.Show
    daftar_supplier.WindowState = 2
    daftar_supplier.SetFocus
    daftar_supplier.Picture = ACPRibbon1.LoadBackground
    daftar_supplier.BackColor = ACPRibbon1.BackColor
    m_cMDITabs.ForceRefresh
ElseIf ID = 5 Then
    daftar_sales.Show
    daftar_sales.WindowState = 2
    daftar_sales.SetFocus
    daftar_sales.Picture = ACPRibbon1.LoadBackground
    daftar_sales.BackColor = ACPRibbon1.BackColor
    m_cMDITabs.ForceRefresh
ElseIf ID = 6 Then
    daftar_pelanggan.Show
    daftar_pelanggan.WindowState = 2
    daftar_pelanggan.SetFocus
    daftar_pelanggan.Picture = ACPRibbon1.LoadBackground
    daftar_pelanggan.BackColor = ACPRibbon1.BackColor
    m_cMDITabs.ForceRefresh
ElseIf ID = 7 Then
    master_grup_member.Show 1
    master_grup_member.Picture = ACPRibbon1.LoadBackground
    master_grup_member.BackColor = ACPRibbon1.BackColor
ElseIf ID = 8 Then
    daftar_satuan.Show
    daftar_satuan.WindowState = 2
    daftar_satuan.SetFocus
    daftar_satuan.Picture = ACPRibbon1.LoadBackground
    daftar_satuan.BackColor = ACPRibbon1.BackColor
    m_cMDITabs.ForceRefresh
ElseIf ID = 9 Then
    daftar_kategori.Show
    daftar_kategori.WindowState = 2
    daftar_kategori.SetFocus
    daftar_kategori.Picture = ACPRibbon1.LoadBackground
    daftar_kategori.BackColor = ACPRibbon1.BackColor
    m_cMDITabs.ForceRefresh
ElseIf ID = 10 Then
    daftar_merk.Show
    daftar_merk.WindowState = 2
    daftar_merk.SetFocus
    daftar_merk.Picture = ACPRibbon1.LoadBackground
    daftar_merk.BackColor = ACPRibbon1.BackColor
    m_cMDITabs.ForceRefresh
ElseIf ID = 41 Then
    daftar_user.Show 1
    daftar_user.Picture = ACPRibbon1.LoadBackground
    daftar_user.BackColor = ACPRibbon1.BackColor
ElseIf ID = 43 Then
    master_company.Show 1
    master_company.Picture = ACPRibbon1.LoadBackground
    master_company.BackColor = ACPRibbon1.BackColor
ElseIf ID = 45 Then
    master_nomor.Show 1
    master_nomor.Picture = ACPRibbon1.LoadBackground
    master_nomor.BackColor = ACPRibbon1.BackColor
ElseIf ID = 47 Then
    Theme = Theme + 1
    If Theme = 3 Then Theme = 0
    '# Set Theme
    ACPRibbon1.Theme = Theme
    '# Refresh control
    ACPRibbon1.Refresh
    
    '# OPTIONAL - Load Background for Form.
    MDIForm1.Picture = ACPRibbon1.LoadBackground
    
    '# OPTIONAL - Load Background for Form
    MDIForm1.BackColor = ACPRibbon1.BackColor
    
    
    '# Search for all MDIChild loaded
    For j = 0 To Forms.Count - 1
        If Forms(j).Name = "ChildMDI" Then
            '# Change Theme from MDIChild Forms
            Forms(j).Picture = ACPRibbon1.LoadBackground
            Forms(j).BackColor = ACPRibbon1.BackColor
            '# Change Forecolor from all Labels on MDIChild forms
            For Each ctl In Forms(j)
                If TypeOf ctl Is Label Then ctl.ForeColor = ACPRibbon1.ForeColor
            Next
        End If
    Next
End If
End Sub


Private Sub MDIForm_Load()


Theme = 1

'# SET Theme
ACPRibbon1.Theme = Theme    ' 0 - Black
                            ' 1 - Blue
                            ' 2 - Silver
                        

'# OPTIONAL - Load Background for Form.
MDIForm1.Picture = ACPRibbon1.LoadBackground

'# OPTIONAL - Load Background for Form
MDIForm1.BackColor = ACPRibbon1.BackColor

'# Set ImageList to use for icons
ACPRibbon1.ImageList = ImageList1

'# Set Buttons on Center verticaly    (True = Center, False(Default) = Align on Top)
ACPRibbon1.ButtonCenter = False

'# Add Tabs ---   ID - Caption
ACPRibbon1.AddTab "1", "Master Data"
ACPRibbon1.AddTab "2", "Pembelian"
ACPRibbon1.AddTab "3", "Penjualan"
ACPRibbon1.AddTab "4", "Persediaan"
ACPRibbon1.AddTab "5", "Akuntansi"
ACPRibbon1.AddTab "6", "Laporan"
ACPRibbon1.AddTab "7", "Pengaturan"

'# Add Cats ---   ID - Tab - Caption - ShowDialogButton
ACPRibbon1.AddCat "1", "1", "Data Item", False
ACPRibbon1.AddCat "2", "1", "Data-data", False
ACPRibbon1.AddCat "3", "1", "Data Pendukung", False

ACPRibbon1.AddCat "4", "2", "Pesanan", False
ACPRibbon1.AddCat "5", "2", "Pembelian", False
ACPRibbon1.AddCat "6", "2", "BayarHutang", False
ACPRibbon1.AddCat "7", "2", "Return", False

ACPRibbon1.AddCat "8", "3", "Pesanan", False
ACPRibbon1.AddCat "9", "3", "Penjualan", False
ACPRibbon1.AddCat "10", "3", "Bayar Piutang", False
ACPRibbon1.AddCat "11", "3", "Return", False
ACPRibbon1.AddCat "12", "3", "Point", False


ACPRibbon1.AddCat "13", "4", "Penyesuaian", False
ACPRibbon1.AddCat "14", "4", "Transfer", False
ACPRibbon1.AddCat "15", "4", "Kontrol", False

ACPRibbon1.AddCat "16", "5", "Data Perkiraan", False
ACPRibbon1.AddCat "17", "5", "Kas", False
ACPRibbon1.AddCat "18", "5", "Akuntansi", False
ACPRibbon1.AddCat "19", "5", "Pengaturan", False

ACPRibbon1.AddCat "20", "6", "Master", False
ACPRibbon1.AddCat "21", "6", "Pembelian", False
ACPRibbon1.AddCat "22", "6", "Penjualan", False
ACPRibbon1.AddCat "23", "6", "Hutang Piutang", False
ACPRibbon1.AddCat "24", "6", "Persediaan", False
ACPRibbon1.AddCat "25", "6", "Akuntansi", False

ACPRibbon1.AddCat "26", "7", "Sistem", False
ACPRibbon1.AddCat "27", "7", "Import", False
ACPRibbon1.AddCat "28", "7", "Database", False
On Error Resume Next
MDIForm1.Picture = LoadPicture(App.Path & "\background.jpg")
koneksi
login_form.Show 1
'tampilmenu

End Sub
Sub tampilmenu()
    '# Add Button ---    ID - Cat - Capt. - Icons -   More Arrow   - ToolTip
    'ACPRibbon1.AddButton "5", "2", "Graph", 3, True
    '- Master Data
    ACPRibbon1.AddButton "0", "1", "Daftar" & vbNewLine & "Item", 1
    ACPRibbon1.AddButton "1", "1", "Item" & vbNewLine & "Baru", 2
    ACPRibbon1.AddButton "2", "1", "Kartu" & vbNewLine & "Stock", 3
    ACPRibbon1.AddButton "3", "1", "Barcode", 4
    
    ACPRibbon1.AddButton "4", "2", "Daftar" & vbNewLine & "Supplier", 5
    ACPRibbon1.AddButton "5", "2", "Daftar" & vbNewLine & "Sales", 6
    ACPRibbon1.AddButton "6", "2", "Daftar" & vbNewLine & "Pelanggan", 7
    ACPRibbon1.AddButton "7", "2", "Group" & vbNewLine & "Pelanggan", 8
    
    ACPRibbon1.AddButton "8", "3", "Satuan", 9
    ACPRibbon1.AddButton "9", "3", "Kategori", 10
    ACPRibbon1.AddButton "10", "3", "Merk", 11
    ACPRibbon1.AddButton "11", "3", "Dept/Gudang", 12
    
    '- Pembelian
    ACPRibbon1.AddButton "12", "4", "Pesanan" & vbNewLine & "Pembelian", 13
    ACPRibbon1.AddButton "13", "5", "Daftar" & vbNewLine & "Pembelian", 14
    ACPRibbon1.AddButton "14", "5", "History" & vbNewLine & "Harga Beli", 15
    
    ACPRibbon1.AddButton "15", "6", "Daftar" & vbNewLine & "Pembayaran", 16
    ACPRibbon1.AddButton "16", "6", "Status Lunas" & vbNewLine & "BG/Cek", 17
    
    ACPRibbon1.AddButton "16", "7", "Return" & vbNewLine & "Pembelian", 18
    
    '- Penjualan
    ACPRibbon1.AddButton "17", "8", "Pesanan" & vbNewLine & "Penjualan", 13
    ACPRibbon1.AddButton "18", "9", "Daftar" & vbNewLine & "Penjualan", 14
    ACPRibbon1.AddButton "19", "9", "Penjualan" & vbNewLine & "Kasir", 19
    ACPRibbon1.AddButton "20", "9", "History" & vbNewLine & "Harga Jual", 15
    
    ACPRibbon1.AddButton "21", "10", "Daftar" & vbNewLine & "Pembayaran", 16
    ACPRibbon1.AddButton "22", "10", "Status Lunas" & vbNewLine & "BG/Cek", 17
    
    ACPRibbon1.AddButton "23", "11", "Return" & vbNewLine & "Penjualan", 18
    
    ACPRibbon1.AddButton "24", "12", "Point" & vbNewLine & "Penjualan", 20
    
    '- Persediaan
    ACPRibbon1.AddButton "25", "13", "Daftar" & vbNewLine & "Item Masuk", 29
    ACPRibbon1.AddButton "26", "13", "Daftar" & vbNewLine & "Item Keluar", 30
    ACPRibbon1.AddButton "27", "13", "Stock" & vbNewLine & "Opname", 31
    ACPRibbon1.AddButton "28", "13", "Saldo Awal" & vbNewLine & "Item", 15
    
    ACPRibbon1.AddButton "29", "14", "Transfer" & vbNewLine & "Item", 16
    ACPRibbon1.AddButton "30", "15", "Stock" & vbNewLine & "Minimum", 17
    ACPRibbon1.AddButton "31", "15", "Produksi" & vbNewLine & "Item", 17
    
    '- Akuntansi
    ACPRibbon1.AddButton "32", "16", "Daftar" & vbNewLine & "Perkiraan", 32
    
    ACPRibbon1.AddButton "33", "17", "Kas" & vbNewLine & "Masuk", 29
    ACPRibbon1.AddButton "34", "17", "Kas" & vbNewLine & "Keluar", 30
    ACPRibbon1.AddButton "35", "17", "Transfer" & vbNewLine & "Kas", 31
    
    ACPRibbon1.AddButton "36", "18", "Daftar" & vbNewLine & "Jurnal", 32
    
    ACPRibbon1.AddButton "37", "19", "Saldo Awal" & vbNewLine & "Perkiraan", 15
    ACPRibbon1.AddButton "38", "19", "Saldo Awal" & vbNewLine & "Hutang", 15
    ACPRibbon1.AddButton "39", "19", "Saldo Awal" & vbNewLine & "Piuang", 15
    ACPRibbon1.AddButton "40", "19", "Setting" & vbNewLine & "Perkiraan", 33
    
    '- Pengaturan
    ACPRibbon1.AddButton "41", "26", "Daftar" & vbNewLine & "User", 5
    ACPRibbon1.AddButton "42", "26", "Kelompok" & vbNewLine & "Akses User", 8
    ACPRibbon1.AddButton "43", "26", "Data" & vbNewLine & "Perusahaan", 12
    ACPRibbon1.AddButton "44", "26", "Pengaturan" & vbNewLine & "Umum", 22
    ACPRibbon1.AddButton "45", "26", "Setting" & vbNewLine & "Nomor", 23
    ACPRibbon1.AddButton "46", "26", "Mini" & vbNewLine & "Printer", 21
    ACPRibbon1.AddButton "47", "26", "Tema", 25
    
    
    ACPRibbon1.AddButton "48", "27", "Import" & vbNewLine & "Data Item", 24
    ACPRibbon1.AddButton "49", "27", "Import" & vbNewLine & "Data Supplier", 24
    ACPRibbon1.AddButton "50", "27", "Import" & vbNewLine & "Data Pelanggan", 24
    
    ACPRibbon1.AddButton "51", "28", "Backup" & vbNewLine & "Database", 27
    ACPRibbon1.AddButton "52", "28", "Repair" & vbNewLine & "Database", 26
    ACPRibbon1.AddButton "53", "28", "Potong" & vbNewLine & "Database", 28
    
    
    '# Repaint Ribbon
    ACPRibbon1.Refresh
    
    
    Set m_cMDITabs = New cMDITabs
    m_cMDITabs.Attach Me.hWnd

End Sub
Private Sub MDIForm_Unload(Cancel As Integer)
    End
End Sub
Sub tabref()
    On Error Resume Next
    m_cMDITabs.ForceRefresh
End Sub
