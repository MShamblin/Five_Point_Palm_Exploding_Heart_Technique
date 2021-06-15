'Merge Workbooks
'This code will take all the first sheets in every workbook found in a directory:
Sub MergeWBs()
    Application.EnableEvents = False
    Application.ScreenUpdating = False

    Dim path As String, ThisWB As String, lngFilecounter As Long
    Dim wbDest As Workbook, shtDest As Worksheet, ws As Worksheet
    Dim Filename As String, Wkb As Workbook
    Dim CopyRng As Range, Dest As Range
    Dim RowofCopySheet As Integer

    RowofCopySheet = 2 ' Row to start on in the sheets you are copying from

    ThisWB = ActiveWorkbook.Name
    
    path = GetDirectory("Select a folder containing Excel files you want to merge")

    Set shtDest = ActiveWorkbook.Sheets(1)
    Filename = Dir(path & "\*.xlsm", vbNormal)
    If Len(Filename) = 0 Then Exit Sub
    Do Until Filename = vbNullString
        If Not Filename = ThisWB Then
            Set Wkb = Workbooks.Open(Filename:=path & "\" & Filename)
            Set CopyRng = Wkb.Sheets(1).Range(Cells(RowofCopySheet, 1), Cells(ActiveSheet.UsedRange.Rows.Count, ActiveSheet.UsedRange.Columns.Count))
            Set Dest = shtDest.Range("A" & shtDest.UsedRange.SpecialCells(xlCellTypeLastCell).Row + 1)
            CopyRng.Copy Dest
            Wkb.Close False
        End If
        
        Filename = Dir()
    Loop
    
    Application.EnableEvents = True
    Application.ScreenUpdating = True
    MsgBox "Macro Complete"
End Sub