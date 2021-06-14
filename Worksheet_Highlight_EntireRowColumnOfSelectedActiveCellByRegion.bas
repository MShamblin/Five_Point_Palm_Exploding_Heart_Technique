Private Sub Worksheet_SelectionChange(ByVal Target As Range)
    ' Clear the color of all the cells
    Cells.Interior.ColorIndex = 0
    If IsEmpty(Target) Or Target.Cells.Count > 1 Then Exit Sub
    Application.ScreenUpdating = False
    With ActiveCell
        ' Highlight the row and column that contain the active cell, within the current region
        Range(Cells(.Row, .CurrentRegion.Column), Cells(.Row, .CurrentRegion.Columns.Count + .CurrentRegion.Column - 1)).Interior.ColorIndex = 8
        Range(Cells(.CurrentRegion.Row, .Column), Cells(.CurrentRegion.Rows.Count + .CurrentRegion.Row - 1, .Column)).Interior.ColorIndex = 8
    End With
    Application.ScreenUpdating = True
End Sub
