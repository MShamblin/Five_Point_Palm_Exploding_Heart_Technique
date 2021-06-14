Sub StartSpelling()
   'Set up your variables
   Dim iRow As Integer
   
   'And define your error handling routine.
   On Error GoTo ERRORHANDLER
   
   'Go through all the cells in column A, and perform a spellcheck on the value.
   'If the value is spelled incorrectly, write "Wrong" in column B; otherwise, write "OK".
   For iRow = 1 To WorksheetFunction.CountA(Columns(1))
      If Application.CheckSpelling( _
         Cells(iRow, 1).Value, , True) = False Then
         Cells(iRow, 2).Value = "Wrong"
      Else
         Cells(iRow, 2).Value = "OK"
      End If
   Next iRow
   Exit Sub

    'Error handling routine.
ERRORHANDLER:
    MsgBox "The spell check feature is not installed!"
    
End Sub
