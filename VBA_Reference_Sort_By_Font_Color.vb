 
Worksheets("Sheet1").Sort.SortFields.Clear
ActiveWorkbook.Worksheets("Sheet1").Sort.SortFields.Add(Range("A2:A6"), _
    xlSortOnFontColor, xlAscending, xlSortNormal).SortOnValue.Color = RGB(0, 0, 0)
 
With ActiveWorkbook.Worksheets("Sheet1").Sort
    .SetRange Range("A1:E6")
    .Header = xlYes
    .Orientation = xlTopToBottom
    .Apply
End With
 
End Sub