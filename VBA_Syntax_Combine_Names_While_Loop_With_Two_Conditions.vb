Sub combineNamesWhile()
 i = 2
 Do While Not IsEmpty(Cells(i, 1)) OR Not IsEmpty(Cells(i, 2))
   If IsEmpty(Cells(i, 1)) Then
     Cells(i, 3).Value = Cells(i, 2)
   ElseIf IsEmpty(Cells(i, 2)) Then
     Cells(i, 3).Value = Cells(i, 1)
   Else
     Cells(i, 3).Value = Cells(i, 1) & " " & Cells(i, 2)
   EndIf
   i = i +1
   Loop
End Sub