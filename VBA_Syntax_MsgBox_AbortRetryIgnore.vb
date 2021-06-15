Sub MsgBox_AbortRetryIgnore()
 
Dim answer As Integer
answer = MsgBox("Abort Retry Ignore Example", vbAbortRetryIgnore)
 
  If answer = vbAbort Then
    MsgBox "Abort"
  ElseIf answer = vbRetry Then
    MsgBox "Retry"
  Else
    MsgBox "Ignore"
  End If
 
End Sub