Sub Msgbox_BeforeRunning()
 
  Dim answer As Integer
  answer = MsgBox("Do you want to continue?", vbQuestion + vbYesNo)
 
  If answer = vbNo Then Exit Sub
  
  'Some Code
 
End Sub