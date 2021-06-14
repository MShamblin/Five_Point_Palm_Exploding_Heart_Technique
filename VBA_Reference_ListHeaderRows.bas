Set rTbl = ActiveCell.CurrentRegion 
' remove the headers from the range 
iHdrRows = rTbl.ListHeaderRows 
If iHdrRows > 0 Then 
 ' resize the range minus n rows 
 Set rTbl = rTbl.Resize(rTbl.Rows.Count - iHdrRows) 
 ' and then move the resized range down to 
 ' get to the first non-header row 
 Set rTbl = rTbl.Offset(iHdrRows) 
End If