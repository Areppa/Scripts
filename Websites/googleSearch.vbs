Option Explicit
Dim URL, Search, objSHL
Set objSHL = CreateObject("wscript.shell")

URL =InputBox("Search from Google or type URL","Google Search:","")

If URL = "" Then
	WScript.Quit
Elseif URL = "Secret" Then
	Msgbox "Secret Message!"
Else
	objSHL.Run "firefox.exe"
	WScript.Sleep 1100
	objSHL.SendKeys URL & "{enter}"
End If