Sub MsgBox_YesNoCancel()
 
Dim answer As Integer
answer = MsgBox("Yes No Cancel Example", vbYesNoCancel)
 
  If answer = vbYes Then
    MsgBox "Yes"
  ElseIf answer = vbNo Then
    MsgBox "No"
  Else
    MsgBox "Cancel"
  End If
 
End Sub