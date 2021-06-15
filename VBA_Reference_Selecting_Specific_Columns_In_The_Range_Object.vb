Sub SelectingSpecificColumnsInTheRangeObject()

Dim rng As Range
Set rng = Range("A1:C3")

rng.Columns(3).Select

End Sub