Sub SingleLevelSortByCellColor()
 
Worksheets("Sheet1").Sort.SortFields.Clear
ActiveWorkbook.Worksheets("Sheet1").Sort.SortFields.Add2 Key:=Range("A2:A6"), _
    SortOn:=xlSortOnCellColor, Order:=xlAscending, DataOption:=xlSortNormal
 
With ActiveWorkbook.Worksheets("Sheet1").Sort
    .SetRange Range("A1:E6")
    .Apply
End With
 
End Sub