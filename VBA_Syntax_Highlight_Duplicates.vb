Sub Highlight_Duplicates(Values As Range)
Dim Cell

For Each Cell In Values
    If WorksheetFunction.CountIf(Values, Cell.Value) > 1 Then
        Cell.Interior.ColorIndex = 6
    End If

Next Cell
End Sub