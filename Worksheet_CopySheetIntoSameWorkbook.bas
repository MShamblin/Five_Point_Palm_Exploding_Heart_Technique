Sub Copy_Sheet()
'
' Copy_Sheet Macro
'

'
    Sheets("Sheet4").Select
    Cells.Select
    Selection.Copy
    Sheets("Sheet2").Select
    Cells.Select
    ActiveSheet.Paste
    Range("A1").Select
End Sub
