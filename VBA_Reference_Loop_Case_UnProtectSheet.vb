Sub Case_UnProtectSheet()
    Dim ws As Worksheet
    
    For Each ws In Worksheets
        Select Case ws.Name    'List of all sheets with Ratios
        Case "Budget", "Forecast", "Trailing12", "Flex", "OtherRatios", _
             "Comparison", "BudReview", "P&L_Review", "Other"
            ws.Unprotect
        End Select
    Next ws
    
End Sub