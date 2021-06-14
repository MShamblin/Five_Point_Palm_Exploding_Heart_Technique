

'This code will loop through all worksheets in a workbook, unprotecting each sheet:

Sub ForEachSheet_inWorkbook()
 
Dim ws As Worksheet
 
For Each ws In Worksheets
    ws.Unprotect "password"
Next ws
 
End Sub