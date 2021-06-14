Sub TestSheetCreate()
    Dim mySheetName As String, mySheetNameTest As String
    mySheetName = "Sheet4"
    
    On Error Resume Next
    mySheetNameTest = Worksheets(mySheetName).Name
    If Err.Number = 0 Then
        MsgBox "The sheet named ''" & mySheetName & "'' DOES exist in this workbook."
    Else
        Err.Clear
        Worksheets.Add.Name = mySheetName
        MsgBox "The sheet named ''" & mySheetName & "'' did not exist in this workbook but it has been created now."
    End If
End Sub
