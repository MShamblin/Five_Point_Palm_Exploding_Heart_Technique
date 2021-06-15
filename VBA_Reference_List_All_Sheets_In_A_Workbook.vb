Sub ListSheets()
    
    Dim ws As Worksheet
    Dim x As Integer
    
    x = 1
    
    ActiveSheet.Range("A:A").Clear
    
    For Each ws In Worksheets
        ActiveSheet.Cells(x, 1) = ws.Name
        x = x + 1
    Next ws
    
End Sub