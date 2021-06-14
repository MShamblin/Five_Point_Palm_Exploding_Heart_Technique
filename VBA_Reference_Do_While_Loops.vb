

'Do While Loops will loop while a condition is met. 
'This code will also loop through integers 1 through 10, 
'displaying each with a message box

Sub DoWhileLoop()
    Dim n As Integer
    n = 1
    Do While n < 11
        MsgBox n
        n = n + 1
    Loop
End Sub
 