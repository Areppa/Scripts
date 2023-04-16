Option explicit
Dim msg, sapi
msg=InputBox("Write what you want to hear")
Set sapi=CreateObject("sapi.spvoice")
sapi.Speak msg