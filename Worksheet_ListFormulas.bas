List Formulas
Option Explicit

Sub ListFormulas()
    Dim InputRange As Range
    Dim OutputSheet As Worksheet
    Dim OutputRow As Long
    Dim Cell As Range
' Create a range objects
  Set InputRange = ActiveSheet.UsedRange

' Add a new sheet
  Set OutputSheet = Worksheets.Add
    
' Variable for the output row
  OutputRow = 1
    
' Loop through the range
  For Each Cell In InputRange
    If Cell.HasFormula Then
      OutputSheet.Cells(OutputRow, 1) = "'" & Cell.Address
      OutputSheet.Cells(OutputRow, 2) = "'" & Cell.Formula
      OutputRow = OutputRow + 1
    End If
  Next Cell
End Sub
