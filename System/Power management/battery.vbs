'Displays battery percentage

On Error Resume Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_Battery",,48)
For Each objItem in colItems
    msgbox "You have about " & objItem.EstimatedChargeRemaining&"%" & " battery left",,"Battery status"
Next