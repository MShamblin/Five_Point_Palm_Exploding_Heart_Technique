Sub Loop3()
' Fills cells B1:B56 with the 56 background colors' 
Dim X As Integer
    For X = 1 To 56
        Range("B" & X).Select
        With Selection.Interior
            .ColorIndex = X
            .Pattern = xlSolid
        End With
    Next X
End Sub