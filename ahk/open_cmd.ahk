;获得当前活动的资源管理器的路径，如果没有找到资源管理器窗口，则返回用户目录的路径
GetActiveExplorerPath() {
	explorerHwnd := WinActive("ahk_class CabinetWClass")
	if (explorerHwnd) {
		for window in ComObjCreate("Shell.Application").Windows {
			if (window.hwnd==explorerHwnd) {
				return window.Document.Folder.Self.Path
			}
		}
	}
  return %USERPROFILE%
}

; win + o，以当前目录打开cmd
#o:: 
  _PATH := GetActiveExplorerPath()
  Run, cmd.exe /k cd /d %_PATH%
  return

; win + c，以当前目录打开git bash
#c::
  _PATH := GetActiveExplorerPath()
  Run, C:\Program Files\Git\git-bash.exe --cd=%_PATH%