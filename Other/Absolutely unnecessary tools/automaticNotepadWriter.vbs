Option Explicit
Dim objSHL, Message, Length, i, EachLetter, TypeSpeed
Set objSHL = CreateObject("wscript.shell")

message = ""

Message=inputbox("Please type your message: ",,"Set the message!")

if Message="" then
	msgbox "You must write a message!"
	WScript.Quit
end if

objSHL.Run "notepad.exe"
WScript.Sleep 1000

TypeSpeed=40
Length=Len(Message)

For i = 0 TO Length
objSHL.SendKeys Mid(Message,i+1,1)
WScript.Sleep TypeSpeed
Next
