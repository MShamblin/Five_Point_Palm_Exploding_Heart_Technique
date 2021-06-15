Sub ProtectAllSheets()

Dim ws As Worksheet
Dim Password As String

Password = "acme"
For Each ws In Worksheets
   ws.Protect Password:=Password
Next ws

End Sub