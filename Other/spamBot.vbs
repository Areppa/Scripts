Set objSHL = CreateObject("wscript.shell")

'TimeToStart: Time between entering message and spamming starting
'TimeToStart: Recommended 1000+, 1000 = 1 sec
TimeToStart="2500"

'Defines the spamming message
Message =Inputbox("Enter your message","","Your text")
'Defines the spamming speed, recommend to keep over 50 if not notepad
Speed =Inputbox("Enter time in milliseconds, 1000 = 1sec","Spam speed","100")
'Defines how many times the text will be typed
HowManyTimes =Inputbox("How many times?","","15")
'The "WARNING" before spam


msgbox "You have " & TimeToStart / 1000 & " seconds time after pressing ok",,"Are you ready?"
'Safety timer
WScript.Sleep TimeToStart

For i=2 TO HowManyTimes Step 1
	objSHL.SendKeys Message
	WScript.Sleep 10
	objSHL.SendKeys "{ENTER}"
	WScript.Sleep Speed
Next

msgbox "Done" ,,""