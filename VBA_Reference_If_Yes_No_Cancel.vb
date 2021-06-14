Sub If_Yes_No_Cancel()
    Dim nResult As VbMsgBoxResult
    
    nResult = MsgBox("...", vbYesNoCancel)
    
    If nResult = vbYes Then
        MsgBox "Yes"
    ElseIf nResult = vbNo Then
        MsgBox "No"
    ElseIf nResult = vbCancel Then
        MsgBox "Cancel"
    End If
End Sub

'Where:
'[Test Expression] – Is the value to evaluate. Usually this is a variable.

'[Action if condition n is true] – Is just the code to run if the condition is 
'met (just like with an If Statement)

'[Condition n] – Is the condition to test. There are a lot of different ways to 
'test conditions. We will discuss them below.

'The Case Statement will execute the code for the FIRST condition that is found 
'to be TRUE.  If no condition is met then no code will be executed, 
'unless the Else clause is added.