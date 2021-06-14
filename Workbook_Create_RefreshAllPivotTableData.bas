Sub vba_refresh_all_pivots()
Dim pt As PivotTable
For Each pt In ActiveWorkbook.PivotTables
pt.RefreshTable
Next pt
End Sub
