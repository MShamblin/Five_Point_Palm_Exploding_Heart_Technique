'Current Date Macro
'Crtl+Shift+D
Sub CurrentDate()
    ActiveCell.Value = Date
    ActiveCell.NumberFormat = "mmmm d, yyyy"
    ActiveCell.Font.Bold = True
    ActiveCell.Columns.AutoFit
End Sub
