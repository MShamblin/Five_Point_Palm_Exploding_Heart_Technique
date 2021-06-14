Sub StripeyPresentation()

Dim Rng As Range
Set Rng = Selection

With Rng.FormatConditions.Add(Type:=xlExpression, Formula1:="=MOD(ROW(),2)=0")
    .Interior.Color = RGB(208, 216, 232)
    .Borders.LineStyle = xlContinuous
    .Borders.ThemeColor = 1
    .Borders.Weight = xlThin
End With

With Rng.FormatConditions.Add(Type:=xlExpression, Formula1:="=MOD(ROW(),2)=1")

    .Interior.Color = RGB(233, 237, 244)
    .Borders.LineStyle = xlContinuous
    .Borders.ThemeColor = 1
    .Borders.Weight = xlThin

End With

End Sub