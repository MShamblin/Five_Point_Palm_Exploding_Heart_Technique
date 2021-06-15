Sub Paste_OneRow()

'Copy and Paste Row
Sheets("sheet1").Range("1:1").Copy Sheets("sheet2").Range("1:1")

Application.CutCopyMode = False

End Sub