Sub TestSheetReplace()
    Dim mySheetName As String
    mySheetName = "Sheet4"
    
    Application.DisplayAlerts = False
    On Error Resume Next
    Worksheets(mySheetName).Delete
    Err.Clear
    Application.DisplayAlerts = True
    Worksheets.Add.Name = mySheetName
    MsgBox "The sheet named ''" & mySheetName & "'' has been replaced."
End Sub
