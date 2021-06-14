


'This code will save and close all open workbooks:

Sub ForEachWB_inWorkbooks()
 
Dim wb As Workbook
 
For Each wb In Workbooks
    wb.Close SaveChanges:=True
Next wb
 
End Sub