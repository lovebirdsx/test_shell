!q:: ; ! 表示 Alt 键
  WinGetClass, ActiveClass, A ; 获取当前激活窗口的类名
  IfWinActive, ahk_class %ActiveClass% ; 如果当前激活窗口是该类名对应的窗口，则发送退出快捷键
  {
    PostMessage, 0x112, 0xF060,,, A ; 向当前激活窗口发送 WM_SYSCOMMAND 消息，参数为 SC_CLOSE，相当于发送 Alt + F4 快捷键
  }
return