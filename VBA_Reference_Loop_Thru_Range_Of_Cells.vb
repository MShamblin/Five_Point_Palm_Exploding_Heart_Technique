Public Sub LoopCells()

Dim c As Range

For Each c In Range("A1:A10")
    If c.Value = "FindMe" Then
      MsgBox "FindMe found at " & c.Address
    End If
Next c

End Sub