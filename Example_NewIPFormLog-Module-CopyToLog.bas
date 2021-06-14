Attribute VB_Name = "CopyToLog"
Sub CopyToLog()
'   Created by Mike Shamblin
'   December 2013


'   Unprotect Worksheets
'    ActiveSheet.UnProtect
    ActiveWindow.ActivateNext
    ActiveSheet.UnProtect
    ActiveWindow.ActivateNext
    

'   Getting the log number in order
    Windows("New Internal Project Log.xls").Activate
    Worksheets("IP Log").Select
    ActiveSheet.UnProtect
    Range("B2:E2").Select
    Selection.Copy
    Range("B4").Select
    Selection.End(xlDown).Select
    ActiveCell.Offset(1, 0).Select
    ActiveCell.Value = ActiveCell.Value + 1
    Selection.PasteSpecial Paste:=xlPasteAll, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Selection.Borders(xlDiagonalDown).LineStyle = xlNone
    Selection.Borders(xlDiagonalUp).LineStyle = xlNone
    With Selection.Borders(xlEdgeLeft)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeBottom)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlInsideVertical)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlInsideHorizontal)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    Application.CutCopyMode = False

    ActiveSheet.UnProtect
    Range("E5").Select
    Selection.End(xlDown).Select
    Selection.Activate
    Selection.Copy
    
'   Putting the Log Number into the IP Form
    ActiveWindow.ActivateNext
'    ActiveSheet.UnProtect
    Range("E4").Select
    Selection.Activate
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Selection.Borders(xlDiagonalDown).LineStyle = xlNone
    Selection.Borders(xlDiagonalUp).LineStyle = xlNone
    With Selection.Borders(xlEdgeLeft)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeBottom)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlInsideVertical)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlInsideHorizontal)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    Application.CutCopyMode = False
    ExecuteExcel4Macro "PRINT(1,,,1,,,,,,,,2,,,TRUE,,FALSE)"
    Range("E5:E15").Select
    Selection.Copy
    
'   Copy the worksheet to the log
    Windows("New Internal Project Log.xls").Activate
    Worksheets("IP Log").Select
    Range("E5").Select
    Selection.End(xlDown).Select
    ActiveCell.Offset(0, 1).Select
    Selection.Activate
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=True
    Selection.Borders(xlDiagonalDown).LineStyle = xlNone
    Selection.Borders(xlDiagonalUp).LineStyle = xlNone
    With Selection.Borders(xlEdgeLeft)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeTop)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeBottom)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlEdgeRight)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlInsideVertical)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    With Selection.Borders(xlInsideHorizontal)
        .LineStyle = xlContinuous
        .Weight = xlThin
    End With
    ActiveCell.Offset(1, -1).Select
    Selection.Activate
    
'    ActiveSheet.Protect
    ActiveWindow.ActivateNext
    Application.CutCopyMode = False
    ActiveCell.Offset(-1, 0).Select
'    ActiveSheet.Protect
    
'   Saving the MRR as Specific File
    MkDir "Y:\Internal Projects IE Main Mfg Tool\External Data\" & Range("E16").Value
    ActiveWorkbook.SaveAs "Y:\Internal Projects IE Main Mfg Tool\External Data\" & Range("E16").Value & "\" & Range("E16").Value
    ActiveWorkbook.SaveAs "Y:\Internal Projects IE Main Mfg Tool\IP-Forms\" & Range("E16").Value
    ActiveWorkbook.Close

    
End Sub

