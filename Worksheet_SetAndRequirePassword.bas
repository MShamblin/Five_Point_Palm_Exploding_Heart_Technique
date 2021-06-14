Dim Password As String
    Do Until Password = "acme"
        Password = InputBox("enter password", "Password", "????")
        If Password = "" Then
            Exit Sub
        End If
    Loop
