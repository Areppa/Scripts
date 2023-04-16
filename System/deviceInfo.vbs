Set CD = CreateObject("Wscript.Network")
strUser = CreateObject("WScript.Network").UserName

msgbox "Device name: " & CD.ComputerName & vbCrLf & "Username: " & strUser & "",, "Info about your PC"