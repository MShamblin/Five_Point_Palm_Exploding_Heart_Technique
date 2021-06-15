' UnProtect All Worksheets
Sub UnProtectAllSheets()
    Dim ws As Worksheet
    
    For Each ws In Worksheets
        ws.Unprotect "password"
    Next ws
    
End Sub