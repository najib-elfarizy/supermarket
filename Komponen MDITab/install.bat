regedit.exe /s IntegratedRegsvr.reg
copy *.ocx %systemroot%\system32\
copy *.dll %systemroot%\system32\


RegSvr32.exe vbalMDITabs6.dll
RegSvr32.exe SSubTmr6.dll
RegSvr32.exe vbalIml6.ocx
RegSvr32.exe vbalExpBar6.ocx 


regedit.exe /s VBCTRLS.REG