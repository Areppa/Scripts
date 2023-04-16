Option explicit
dim r1, r2, min, max, ans, uans

'Multiplication game
'r1 and r2 values to be multiplied
'min and max: min and max values to be calculated
'ans: answer
'uans: user answer

'Settings
min=1
max=10

sub RanNum
	Randomize
	r1 = Int((max-min+1)*Rnd+min)
	Randomize
	r2 = Int((max-min+1)*Rnd+min)
end sub

sub calculation
	Call RanNum
	ans=r1*r2
	uans =InputBox("What is " & r1 & " * " & r2 & " ?" & vblf & "Answer: " & ans)
	msgbox uans & " = " & ans & " ?"
	
	'shows values
	if uans=ans then
		msgbox "Correct"
	Else
		msgbox "Incorrect, Try Again!"
	end if
end sub

call calculation













