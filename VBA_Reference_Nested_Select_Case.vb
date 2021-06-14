Sub NestedSelectCase()
    Dim sex As String
    Dim age As Integer
    
    sex = "male" ' or female
    age = 15
    
    Select Case age
        Case Is < 20 And sex = "male"
            Msgbox "Male under 20"
        Case Is < 20 And sex = "female"
            Msgbox "Female under 20"        
        Case Is >= 20 And sex = "male"
            Msgbox "Male over 20" 
        Case Is >= 20 And sex = "female"
            Msgbox "Female over 20" 
    End Select
End Sub