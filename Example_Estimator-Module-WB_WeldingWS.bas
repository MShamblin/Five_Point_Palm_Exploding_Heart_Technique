Attribute VB_Name = "WeldingWS"
Sub WeldingWS_Routing()
ActiveSheet.Unprotect
Sheets("WeldingWS").Select
ActiveCell.Offset(0, -2).Select
'If ActiveCell < 0.01 Then MsgBox "No Model Size Selected": Exit Sub
'ActiveCell.Offset(0, 4).Select
'ActiveCell.Value = ActiveCell.Offset(0, 4).Value
'ActiveCell.Value = ActiveCell.Offset(0, -6).Value * ActiveCell
'ActiveCell.Value = ActiveCell.Offset(0, -5).Value + ActiveCell
ActiveCell.Offset(0, 3).Select
ActiveCell.Value = ActiveCell.Offset(0, -3).Value
ActiveCell.Offset(0, -9).Select
ActiveCell.Resize(, 12).Copy
Range("C27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Application.CutCopyMode = False
ActiveSheet.Protect
Range("F30").Select
Range("F27").Select
End Sub
Sub WeldingWS_GetFabricationWS()
Application.ScreenUpdating = False
    Sheets("WeldingWS").Select
ActiveSheet.Unprotect
    Sheets("FabricationWS").Select
ActiveSheet.Unprotect
    Range("F2:H5").Select
    Selection.Copy
    Sheets("WeldingWS").Select
    Range("F2").Select
    ActiveSheet.Paste
    Sheets("FabricationWS").Select
    Range("B8:Z25").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("WeldingWS").Select
    Range("B8:Z25").Select
    ActiveSheet.Paste
    Range("F2").Select
    Sheets("FabricationWS").Select
    Application.CutCopyMode = False
    Range("F2").Select

Sheets("FabricationWS").Select
ActiveSheet.Protect
Sheets("WeldingWS").Select
ActiveSheet.Protect
Application.ScreenUpdating = True
End Sub
Sub WeldingWS_PullPowderRouting()
ActiveSheet.Unprotect
Sheets("WeldingWS").Select
Ans = MsgBox("3101 - Pull Parts and Deliver to Powder Coating?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I82] = "0.01670"
    [L82] = "0.01670"
ActiveCell.Offset(0, 2).Select
ActiveSheet.Unprotect
ActiveCell.Offset(0, -7).Select
ActiveCell.Resize(, 13).Copy
Range("B27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Application.CutCopyMode = False
Range("B30").Select
ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True
End Sub

