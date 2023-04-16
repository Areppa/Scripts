Option Explicit
Dim play, Min, Max, objRandom

play = 4

Min = 1
Max = 6

Do while play=4

Set objRandom = CreateObject( "System.Random" )
Play = Msgbox("You rolled: " & objRandom.Next_2( Min, Max ),5," D   I   C   E ")

loop