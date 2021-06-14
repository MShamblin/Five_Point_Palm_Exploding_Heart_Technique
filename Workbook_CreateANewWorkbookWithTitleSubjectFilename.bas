Sub AddNew() 
Set NewBook = Workbooks.Add 
 With NewBook 
 .Title = "All Sales" 
 .Subject = "Sales" 
 .SaveAs Filename:="Allsales.xls" 
 End With 
End Sub
