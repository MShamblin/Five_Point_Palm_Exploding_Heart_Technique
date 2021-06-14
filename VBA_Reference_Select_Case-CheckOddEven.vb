Sub CheckOddEven()
    Dim n As Integer
    n = InputBox("Enter a number")
    
    Select Case n Mod 2
        Case 0
            MsgBox "The number is even."
        Case 1
            MsgBox "The number is odd."
    End Select
    
End Sub