
'Conversely, Do Until Loops will loop until a condition is met. 
'This code does the same thing as the previous two examples.


Sub DoUntilLoop()
    Dim n As Integer
    n = 1
    Do Until n >= 10
        MsgBox n
        n = n + 1
    Loop
End Sub