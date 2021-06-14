Attribute VB_Name = "Module2"
Sub Sort()
Attribute Sort.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Sort Macro
'

'
    ActiveWorkbook.Worksheets("Routings By Model").ListObjects( _
        "Table_Query_from_GPFProd").Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Routings By Model").ListObjects( _
        "Table_Query_from_GPFProd").Sort.SortFields.Add Key:=Range( _
        "Table_Query_from_GPFProd[[#All],[opt_Description]]"), SortOn:=xlSortOnValues _
        , Order:=xlAscending, DataOption:=xlSortNormal
    With ActiveWorkbook.Worksheets("Routings By Model").ListObjects( _
        "Table_Query_from_GPFProd").Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    ActiveWorkbook.Worksheets("Routings By Model").ListObjects( _
        "Table_Query_from_GPFProd").Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Routings By Model").ListObjects( _
        "Table_Query_from_GPFProd").Sort.SortFields.Add Key:=Range( _
        "Table_Query_from_GPFProd[[#All],[og_Description]]"), SortOn:=xlSortOnValues _
        , Order:=xlAscending, DataOption:=xlSortNormal
    With ActiveWorkbook.Worksheets("Routings By Model").ListObjects( _
        "Table_Query_from_GPFProd").Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub FilterOptionOut()
Attribute FilterOptionOut.VB_ProcData.VB_Invoke_Func = " \n14"
'
' FilterOptionOut Macro
'

'
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:= _
        17, Criteria1:=Array("3605", "A4", "="), Operator:=xlFilterValues
End Sub
Sub ClearOptionFilter()
Attribute ClearOptionFilter.VB_ProcData.VB_Invoke_Func = " \n14"
'
' ClearOptionFilter Macro
'

'
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=17

End Sub
Sub ClearAllFilters()
'
' ClearOptionFilter Macro
'

'
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=1
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=2
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=3
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=4
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=5
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=6
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=7
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=8
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=9
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=10
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=11
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=12
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=13
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=14
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=15
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=16
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=17
    ActiveSheet.ListObjects("Table_Query_from_GPFProd").Range.AutoFilter Field:=18
    
    
End Sub

