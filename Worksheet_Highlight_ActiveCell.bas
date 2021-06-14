Private Sub Worksheet_SelectionChange(ByVal Target As Range)
    Application.ScreenUpdating = False
    ' Clear the color of all the cells
    Cells.Interior.ColorIndex = 0
    ' Highlight the active cell
    Target.Interior.ColorIndex = 8
    Application.ScreenUpdating = True
End Sub
