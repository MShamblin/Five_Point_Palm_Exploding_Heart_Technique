Sub DisplayColumnCount() 

    Dim AreaCount As Integer 
    Dim Int As Integer 
 
    Worksheets("Sheet1").Activate 
    AreaCount = Selection.Areas.Count 
 
    If AreaCount <= 1 Then 
        MsgBox "The selection contains " & Selection.Columns.Count & " columns." 
    Else 
        For Int = 1 To AreaCount 
            MsgBox "Area " & Int & " of the selection contains " & _ 
            Selection.Areas(Int).Columns.Count & " columns." 
        Next Int 
    End If 
End Sub