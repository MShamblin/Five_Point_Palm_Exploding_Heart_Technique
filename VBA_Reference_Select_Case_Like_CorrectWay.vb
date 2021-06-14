Sub Select_Case_Like_CorrectWay()
    Dim word As String
    word = "COCOA"
    
    Select Case True
        Case word Like "*C*C*"
            MsgBox "Good"
        Case Else
            MsgBox "Not Good"
    End Select
End Sub