Sub Msgbox_BeforeRunning()
 
  Dim answer As Integer
  answer = MsgBox("Do you want to run Macro1?", vbQuestion + vbYesNo)
 
  If answer = vbYes Then Call Macro1
 
End Sub