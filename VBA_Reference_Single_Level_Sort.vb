Sub SingleLevelSort()
 
Worksheets("Sheet1").Sort.SortFields.Clear
 
Range("A1:E6").Sort Key1:=Range("A1"), Header:=xlYes
 
End Sub