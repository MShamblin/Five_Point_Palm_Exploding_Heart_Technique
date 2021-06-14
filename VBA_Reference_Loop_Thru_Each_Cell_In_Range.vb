
'This code will loop through each cell in a range:

Sub ForEachCell_inRange()
 
Dim cell As Range
 
For Each cell In Range("a1:a10")
    cell.Value = cell.Offset(0,1).Value
Next cell
 
End Sub