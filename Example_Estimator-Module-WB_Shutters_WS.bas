Attribute VB_Name = "ShuttersWS"
Sub ShutterWS_RoutingtoTop()
If [G5] = "" Then MsgBox "Missing Square Feet": Exit Sub
ActiveCell.Offset(0, 2).Select
ActiveCell = ([G2] + [G4]) * ActiveCell.Offset(0, -6).Value + ActiveCell.Offset(0, -5).Value
ActiveCell.Offset(0, 3).Select
ActiveCell.Value = ActiveCell.Offset(0, -3).Value
ActiveCell.Offset(0, -9).Select
Range(Selection, ActiveCell.Offset(0, 11)).Copy
Range("C27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
    :=False, Transpose:=False
Application.CutCopyMode = False
End Sub
Sub ShuttersWS_PowderCoat()
Range("O74").Select
End Sub
Sub ShutterWS_GetFabricationData()
Application.ScreenUpdating = False
    Sheets("FabricationWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("ShuttersWS").Select
    Range("E2:H5").Select
    ActiveSheet.Paste
    Sheets("FabricationWS").Select
    Range("B8:Z25").Select
    Selection.Copy
    Sheets("ShuttersWS").Select
    Range("B8:Z25").Select
    ActiveSheet.Paste
    Range("F2").Select
    Sheets("FabricationWS").Select
    Application.CutCopyMode = False
    Range("F2").Select
    Sheets("ShuttersWS").Select
Application.ScreenUpdating = True
End Sub
Sub ShuttersWS_ARCTN()
Range("O94").Select
End Sub
Sub ShuttersWS_WAGCTN()
Range("O111").Select
End Sub
