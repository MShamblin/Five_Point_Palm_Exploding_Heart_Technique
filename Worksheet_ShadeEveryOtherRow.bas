Sub ShadeEveryOtherRow()
    Dim Counter As Integer

   'For every row in the current selection...
    For Counter = 1 To Selection.Rows.Count
        'If the row is an odd number (within the selection)...
        If Counter Mod 2 = 1 Then
            'Set the pattern to xlGray16.
            Selection.Rows(Counter).Interior.Pattern = xlGray16
        End If
    Next

End Sub