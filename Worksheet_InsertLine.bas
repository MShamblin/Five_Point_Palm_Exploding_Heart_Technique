Sub Insert_Line()
'
' Insert_Line Macro
'
' Keyboard Shortcut: Ctrl+Shift+I
'
    ActiveCell.Offset(-1, 0).Rows("1:1").EntireRow.Select
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
End Sub
