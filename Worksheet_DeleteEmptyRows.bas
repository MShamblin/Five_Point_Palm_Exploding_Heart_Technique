Sub Delete_Empty_Rows()
    'The range from which to delete the rows.
    Dim rnSelection As Range
    
    'Row and count variables used in the deletion process.
    Dim lnLastRow As Long
    Dim lnRowCount As Long
    Dim lnDeletedRows As Long
    
    'Initialize the number of deleted rows.
    lnDeletedRows = 0
    
    'Confirm that a range is selected, and that the range is contiguous.
    If TypeName(Selection) = "Range" Then
        If Selection.Areas.Count = 1 Then
            
            'Initialize the range to what the user has selected, and initialize the count for the upcoming FOR loop.
            Set rnSelection = Application.Selection
            lnLastRow = rnSelection.Rows.Count
        
            'Start at the bottom row and work up: if the row is empty then
            'delete the row and increment the deleted row count.
            For lnRowCount = lnLastRow To 1 Step -1
                If Application.CountA(rnSelection.Rows(lnRowCount)) = 0 Then
                    rnSelection.Rows(lnRowCount).Delete
                    lnDeletedRows = lnDeletedRows + 1
                End If
            Next lnRowCount
        
            rnSelection.Resize(lnLastRow - lnDeletedRows).Select
         Else
            MsgBox "Please select only one area.", vbInformation
         End If
    Else
        MsgBox "Please select a range.", vbInformation
    End If
    
    'Turn screen updating back on.
    Application.ScreenUpdating = True

End Sub
