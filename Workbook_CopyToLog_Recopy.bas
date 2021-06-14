Attribute VB_Name = "ReCopyToLog"
Sub ReCopyToLog()
'   Created by Mike Shamblin
'   December 2013


'   Getting the log number in order
    Windows("PPOI Log.xls").Activate
    Worksheets("PPOI Log").Select
    
    ActiveWindow.ActivateNext
    ActiveSheet.UnProtect
    Range("E8:E21").Select
    Selection.Copy

    ActiveWindow.ActivateNext
    ActiveSheet.UnProtect
    ActiveCell.Activate
    ActiveCell.Offset(0, 4).Select
    Selection.Activate
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=True
    Application.CutCopyMode = False
    
    
    ActiveWindow.ActivateNext
    Application.CutCopyMode = False
    ActiveWorkbook.SaveAs "U:\usermast\Manufacturing_Eng_Support\PPOI_Files\Logged\" & Range("E4").Value & "_" & Range("E9").Value & "\" & Range("E7").Value
    ActiveWorkbook.Close
    
    
End Sub

