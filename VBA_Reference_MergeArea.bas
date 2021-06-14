Set ma = Range("a3").MergeArea 
If ma.Address = "$A$3" Then 
 MsgBox "not merged" 
Else 
 ma.Cells(1, 1).Value = "42" 
End If