#IfWinActive ahk_exe cmd.exe ;仅在cmd.exe窗口中生效
  ^l::SendInput, cls{Enter} ;发送 cls + Enter 命令
#If
