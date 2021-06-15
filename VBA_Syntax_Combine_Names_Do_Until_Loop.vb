Sub combineNamesUntil()
 i = 2
 Do Until IsEmpty(Cells(i, 1))
   Cells(i, 3).Value = Cells(i, 1) & " " & Cells(i, 2)
   i = i +1
   Loop
End Sub