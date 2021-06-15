Sub GreenBarMe(rng As Range, firstColor As Long, secondColor As Long)
    
    rng.Interior.ColorIndex = xlNone
    rng.FormatConditions.Add Type:=xlExpression, Formula1:="=MOD(ROW(),2)=0"
    rng.FormatConditions(1).Interior.Color = firstColor
    rng.FormatConditions.Add Type:=xlExpression, Formula1:="=MOD(ROW(),2)<>0"
    rng.FormatConditions(2).Interior.Color = secondColor

End Sub