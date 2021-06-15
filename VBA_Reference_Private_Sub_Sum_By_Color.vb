Private Sub CommandButton1_Click()

'Will look at each color and produce summary table of values
'on sheet 1 in cell A1 and downwards

Dim Current_Color_Number As Integer
Dim Color_Total As Double

For Current_Color_Number = 1 To 56

Color_Total = Color_By_Numbers(Sheets("Sheet2").Range("a11:aa64"), Current_Color_Number)

Worksheets("Sheet1").Range("A1").Offset(Current_Color_Number, 0) = Current_Color_Number
Worksheets("Sheet1").Range("A1").Offset(Current_Color_Number, 0).Interior.ColorIndex = Current_Color_Number

If Color_Total  0# Then
    Worksheets("Sheet1").Range("a1").Offset(Current_Color_Number, 1).Value = Color_Total
End If

Next Current_Color_Number

End Sub