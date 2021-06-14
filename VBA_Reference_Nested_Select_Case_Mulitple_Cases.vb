Sub NestedSelectCase()
    Dim sex As String
    Dim age As Integer
    
    sex = "male" ' or female
    age = 15
    
    Select Case age
        Case Is < 20
            Select Case sex
                Case "male"
                    MsgBox "Male under 20"
                Case "female"
                    MsgBox "Female under 20"
            End Select
        Case Is >= 20 And sex = "female"
            Select Case sex
                Case "male"
                    MsgBox "Male over 20"
                Case "female"
                    MsgBox "Female over 20"
            End Select
    End Select
End Sub