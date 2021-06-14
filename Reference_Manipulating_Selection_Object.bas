Sub FormatSelection()

Range("A1:C1").Select

Selection.Font.Name = "Arial"
Selection.Font.Bold = True
Selection.Font.Italic = True
Selection.Interior.Color = vbGreen

End Sub