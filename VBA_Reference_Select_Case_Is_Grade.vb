Sub Select_Case_Is_Grade()
    Dim Score      As Integer
    Dim LetterGrade As String
    
    Score = InputBox("Enter Student Score")
    
    Select Case Score
        Case Is >= 90
            LetterGrade = "A"            
        Case Is >= 80
            LetterGrade = "B"            
        Case Is >= 70
            LetterGrade = "C"            
        Case Is >= 60
            LetterGrade = "D"            
        Case Else
            LetterGrade = "F"
    End Select
    
    MsgBox "The Student's Grade is: " & LetterGrade
    
End Sub