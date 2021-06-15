Sub ShowAllTheHyperlinksInTheWorkbook()

Dim ws As Worksheet

For Each ws In ActiveWorkbook.Worksheets
For Each lnk In ws.Hyperlinks
MsgBox lnk.Address
Next lnk
Next ws

End Sub