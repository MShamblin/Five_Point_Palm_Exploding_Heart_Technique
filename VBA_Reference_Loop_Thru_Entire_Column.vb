Public Sub LoopColumn()

Dim c As Range

For Each c In Range("A:A")
    If c.Value = "FindMe" Then
      MsgBox "FindMe found at " & c.Address
    End If
Next c

End Sub