Sub HowManyCopies()


    Application.ScreenUpdating = True

'   How many copies to print out
    NumberOfSheets = 0
    NumberOfSheets = InputBox("How many copies do you want?", "Multiple Printouts")

    On Error Resume Next
    
'   Print
    ActiveWindow.SelectedSheets.PrintOut Copies:=NumberOfSheets
    
    On Error Resume Next
    
End Sub