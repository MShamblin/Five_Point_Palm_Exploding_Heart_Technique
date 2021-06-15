Sub MultiLevelSort()
 
Worksheets("Sheet1").Sort.SortFields.Clear
 
Range("A1:E6").Sort Key1:=Range("E1"), Key2:=Range("C1"), Header:=xlYes, _
    Order1:=xlAscending, Order2:=xlDescending
 
End Sub