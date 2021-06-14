Attribute VB_Name = "Macros"
Sub Remove_Duplicate_Workorders()
Attribute Remove_Duplicate_Workorders.VB_Description = "Removes duplicate workorders than may have been printed twice."
Attribute Remove_Duplicate_Workorders.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Remove_Duplicate_Workorders Macro
' Removes duplicate workorders than may have been printed twice.
'

'
    ActiveSheet.Range("$A$3:$S$25000").RemoveDuplicates Columns:=6, Header:= _
        xlYes
End Sub
Sub Resource_Name_Sort_A_to_Z()
Attribute Resource_Name_Sort_A_to_Z.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Resource_Name_Sort_A_to_Z Macro
'

'

    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Add Key:= _
        Range("I6:I25000"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortTextAsNumbers
    With ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub CCP_Sort_Z_To_A()
Attribute CCP_Sort_Z_To_A.VB_ProcData.VB_Invoke_Func = " \n14"
'
' CCP_Sort_Z_To_A Macro
'

'

    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Add Key:= _
        Range("C6:C25000"), SortOn:=xlSortOnValues, Order:=xlDescending, DataOption _
        :=xlSortTextAsNumbers
    With ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub Item_Nbr_Sort_A_To_Z()
Attribute Item_Nbr_Sort_A_To_Z.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Item_Nbr_Sort_A_To_Z Macro
'

'
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Add Key:= _
        Range("G6:G25000"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortTextAsNumbers
    With ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub Item_Desc_Sort_A_To_Z()
Attribute Item_Desc_Sort_A_To_Z.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Item_Desc_Sort_A_To_Z Macro
'

'
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Add Key:= _
        Range("H6:H25000"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortTextAsNumbers
    With ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub WO_Nbr_Sort_A_To_Z()
Attribute WO_Nbr_Sort_A_To_Z.VB_ProcData.VB_Invoke_Func = " \n14"
'
' WO_Nbr_Sort_A_To_Z Macro
'

'
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Add Key:= _
        Range("F6:F25000"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortTextAsNumbers
    With ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub Ready_Sort_A_To_Z()
Attribute Ready_Sort_A_To_Z.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Ready_Sort_A_To_Z Macro
'

'
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort.SortFields.Add Key:= _
        Range("A6:A25000"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption _
        :=xlSortTextAsNumbers
    With ActiveWorkbook.Worksheets("Sheet1").QueryTables(1).Sort
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub Clear_All_Filters()
Attribute Clear_All_Filters.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Clear_All_Filters Macro
'

'
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=1
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=3
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=4
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=5
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=6
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=7
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=8
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=9
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=11
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=12
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=13
    ActiveSheet.Range("$A$6:$S$25000").AutoFilter Field:=19
End Sub
