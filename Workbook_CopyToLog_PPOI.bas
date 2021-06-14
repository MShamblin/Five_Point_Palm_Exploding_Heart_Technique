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
    Windows("PPOI Log.xls").Activate
    Worksheets("PPOI Log").Select
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
    
'   Putting the Log Number into the MRR Form
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
    Range("E5:E21").Select
    Selection.Copy
    
'   Copy the worksheet to the log
    Windows("PPOI Log.xls").Activate
    Worksheets("PPOI Log").Select
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
    
'   Creating the Folder
    MkDir "U:\usermast\Manufacturing_Eng_Support\PPOI_Files\Logged\" & Range("E4").Value & "_" & Range("E9").Value
    
'   Saving the PPOI as Specific File
    ActiveWorkbook.SaveAs "U:\usermast\Manufacturing_Eng_Support\PPOI_Files\Logged\" & Range("E4").Value & "_" & Range("E9").Value & "\" & Range("E7").Value
'    ActiveWorkbook.Close

   
    
End Sub

