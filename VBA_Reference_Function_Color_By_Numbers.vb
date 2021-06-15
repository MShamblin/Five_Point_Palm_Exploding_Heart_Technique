Function Color_By_Numbers(Color_Range As Range, Color_Index As Integer) As Double

' Dim Color_By_Numbers  As Double
Dim Cell

'Will look at cells that are in the range and if
'the color interior property matches the cell color required
'then it will sum

'Loop Through range

For Each Cell In Color_Range

If (Cell.Interior.ColorIndex = Color_Index) Then
Color_By_Numbers = Color_By_Numbers + Cell.Value
End If

Next Cell

End Function