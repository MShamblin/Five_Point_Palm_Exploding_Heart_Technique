

'As we’ve mentioned before, you can use an If statement within a loop, 
'performing actions only if certain criteria is met.

'This code will hide all blank rows in a range:

Sub ForEachCell_inRange()
 
Dim cell As Range
 
For Each cell In Range("a1:a10")
    If cell.Value = "" Then _
       cell.EntireRow.Hidden = True
Next cell
 
End Sub