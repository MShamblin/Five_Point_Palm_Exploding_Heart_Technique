Sub SelectingSpecificRowsInTheRangeObject()

Dim rng As Range
Set rng = Range("A1:C3")

rng.Rows(3).Select

End Sub