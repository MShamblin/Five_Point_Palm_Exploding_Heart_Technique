Sub MsgBox_RetryCancel()
 
Dim answer As Integer
answer = MsgBox("Retry Cancel Example", vbRetryCancel)
 
  If answer = vbRetry Then
    MsgBox "Retry"
  Else
    MsgBox "Cancel"
  End If
 
End Sub