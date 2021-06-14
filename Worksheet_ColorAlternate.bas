Sub ColorAlternate()

Dim LR As Long, i As Long

'Stop the screen from flickering
Application.ScreenUpdating = False

'Find the last filled row in column A
LR = Range("A" & Rows.Count).End(xlUp).Row

'Loop through the filled rows in steps of 2
For i = 2 To LR Step 2

'Colour alternate rows
    Rows(i).EntireRow.Interior.ColorIndex = 6
Next i

'Turn screen updating on again
Application.ScreenUpdating = True

End Sub