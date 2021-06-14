Function GetGrade(Score As Integer) As String
    
    Select Case Score
        Case 90 To 100
            GetGrade = "A"            
        Case 80 To 90
            GetGrade = "B"            
        Case 70 To 80
            GetGrade = "C"            
        Case 60 To 70
            GetGrade = "D"           
        Case Else
            GetGrade = "F"
    End Select
    
End Function