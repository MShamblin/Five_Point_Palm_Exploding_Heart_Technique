Public Sub LoopRow()

Dim c As Range

For Each c In Range("1:1")
    If c.Value = "FindMe" Then
      MsgBox "FindMe found at " & c.Address
    End If
Next c

End Sub