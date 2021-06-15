' Protect All Worksheets
Sub ProtectAllSheets()
    Dim ws As Worksheet
    
    For Each ws In Worksheets
        ws.protect "password"
    Next ws
    
End Sub