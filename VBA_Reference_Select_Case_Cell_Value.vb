'This example will test a student’s score in a cell, 
'outputting the letter grade directly to the cell to the right.

Sub TestCellValue()
    Dim cell As Range
    Set cell = Range("C1")
 
    Select Case cell.Value
    Case 90 To 100
        cell.Offset(0, 1) = "A"
    Case 80 To 90
        cell.Offset(0, 1) = "B"
    Case 70 To 80
        cell.Offset(0, 1) = "C"
    Case 60 To 80
        cell.Offset(0, 1) = "D"
    End Select
 
End Sub