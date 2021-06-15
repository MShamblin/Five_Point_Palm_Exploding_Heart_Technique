Sub ShowAllTheHyperlinksInTheWorksheet()

Dim ws As Worksheet

Set ws = ThisWorkbook.Sheets(1)

For Each lnk In ws.Hyperlinks
Debug.Print lnk.Address
Next lnk

End Sub