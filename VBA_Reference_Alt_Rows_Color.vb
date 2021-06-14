Sub Color_Alt_Rows(Rng As Range)
    Application.ScreenUpdating = False

    Rng.Interior.ColorIndex = xlNone
    Rng = Rng.SpecialCells(xlCellTypeVisible)
    Rng.FormatConditions.Add Type:=xlExpression, Formula1:="=mod(row()+1,2)"
    Rng.FormatConditions(1).Interior.ColorIndex = 34
End Sub