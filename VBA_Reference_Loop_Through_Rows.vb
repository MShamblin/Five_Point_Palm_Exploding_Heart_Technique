
'This will loop through all the rows in a column:

Dim cell As Range
 
For Each cell In Range("A:A")
    If cell.value <> "" then MsgBox cell.address &": " & cell.value

Next cell
 
End Sub