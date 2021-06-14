Attribute VB_Name = "FitToScreen"
Sub FitToScreen()

    ActiveWorkbook.Unprotect
    Range("A1:G22").Select
    ActiveWindow.Zoom = True
    ActiveWorkbook.Protect
    Range("E5").Select
    
End Sub
