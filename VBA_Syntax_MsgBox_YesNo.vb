Sub MsgBox_YesNo()
 
Dim answer As Integer
answer = MsgBox("Yes No Example", vbYesNo)
 
  If answer = vbYes Then
    MsgBox "Yes"
  Else
    MsgBox "No"
  End If
 
End Sub