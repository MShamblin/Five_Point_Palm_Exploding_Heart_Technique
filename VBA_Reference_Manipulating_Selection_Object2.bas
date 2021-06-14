Sub UsingWithEndWithSelection()

Range("A1:C1").Select

With Selection
.Font.Name = "Arial"
.Font.Bold = True
.Font.Italic = True
.Interior.Color = vbGreen
End With

End Sub