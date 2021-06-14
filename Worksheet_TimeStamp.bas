Time Stamp
Sub TimeStamp()
       Ctrl+Shift+T
    ActiveCell.Value = Now()
    ActiveCell.Font.Bold = True
    ActiveCell.Columns.AutoFit
    
End Sub
