Attribute VB_Name = "FabricationWS"
Sub FabricationWS_Aluminum()
Range("O30").Select
End Sub
Sub FabricationWS_Galvanized()
Range("O104").Select
End Sub
Sub FabricationWS_KSI()
Range("O144").Select
End Sub
Sub FabricationWS_Stainless()
Range("O156").Select
End Sub
Sub FabricationWS_Steel()
Range("O175").Select
End Sub
Sub FabricationWS_PowderCoat()
Range("O209").Select
End Sub
Sub FabricationWS_Circles()
Range("O229").Select
End Sub
Sub FabricationWS_Coils()
Range("O245").Select
End Sub
Sub FabricationWS_ProtoLog()
    Workbooks.Open Filename:= _
        "U:\usermast\Industrial_Eng_Support\Protos\- Proto Log\ProtoLog.xls"
End Sub
Sub FabricationWS_GetWeld()
Application.ScreenUpdating = False
    Sheets("WeldingWS").Select
    Range("F2:H5").Select
    Selection.Copy
    Sheets("FabricationWS").Select
    Range("F2:H5").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("WeldingWS").Select
    Range("B8:Z25").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("FabricationWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("WeldingWS").Select
    Range("F2").Select
    Application.CutCopyMode = False
    Sheets("FabricationWS").Select
    Range("F2").Select
Application.ScreenUpdating = True
End Sub


