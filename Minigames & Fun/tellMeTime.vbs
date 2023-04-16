Option explicit
Dim msg, sapi

msg= date
Set sapi=CreateObject("sapi.spvoice")
sapi.Speak msg