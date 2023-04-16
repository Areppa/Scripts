option explicit
dim msg, strUser, user, correctUser

'This script checks if correct user runs this script

strUser = CreateObject("WScript.Network").UserName
'Define correct user, enter your username here
correctUser = "yourUserName"

if strUser=correctUser then
	msgbox "Hello " & strUser & "."
else
	msgbox "GET AWAY!"
end if
