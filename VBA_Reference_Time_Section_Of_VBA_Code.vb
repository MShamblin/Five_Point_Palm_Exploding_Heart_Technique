Sub BenchMark()

Dim Count As Long
Dim BenchMark As Double

BenchMark = Timer

'Start of Code to Test

For Count = 1 To 500000
    Sheet1.Cells(1, 1) = "test"
Next Count

'End of Code to Test

MsgBox Timer - BenchMark

End Sub