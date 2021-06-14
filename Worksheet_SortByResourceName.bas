Sub Sort_By_Resource_Name()
'
' Sort_By_Resource_Name Macro
'

'
    Selection.QueryTable.Refresh BackgroundQuery:=False
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Add Key:= _
        Range("I3:I5730"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortTextAsNumbers
    With ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
