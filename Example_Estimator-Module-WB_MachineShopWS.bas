Attribute VB_Name = "MachineShopWS"
Sub MachineShopWS_StartButton() 'ok
If [F2] > 0.01 Then GoTo F2
PN = InputBox("Enter Part Number ?")
        If PN = Cancel Then Exit Sub
        [F2] = PN
F2:
If [F3] > 0.01 Then GoTo Blank
Desc = InputBox("Enter Description ?")
        If Desc = Cancel Then Exit Sub
        [F3] = Desc
    Range("F2:F5").Select
    On Error Resume Next
    Dim myCell As Range
    For Each myCell In Selection.Cells
    myCell.Value = UCase(myCell.Value)
    Next
    On Error GoTo 0
Blank:
If [G2] > 0.01 Then GoTo Widthx
Length = InputBox("Enter Item Length ?")
        If Length = Cancel Then Exit Sub
        [G2] = Length
Widthx:
If [G3] > 0.01 Then GoTo Height
Widthx = InputBox("Enter Item Width or Diameter ?")
        If Widthx = Cancel Then Exit Sub
        [G3] = Widthx
Height:
If [G4] > 0.01 Then GoTo Endit
Height = InputBox("Enter Item Height or Diameter ?")
        If Height = Cancel Then Exit Sub
        [G4] = Height
        Run "EstimatorWB_SqFT"
Endit:
Run "EstimatorWB_SqFT"
Range("B29").Select
Range("B30").Select
End Sub

Sub MachineShopWS_0111() 'AVD Cast Hubs
CHD = InputBox("Cast Hub Diameter ?", vbYesCancel)
        If CHD = Cancel Then Exit Sub
        [H2] = CHD
Bore = InputBox("Cast Hub Bore ?", vbYesCancel)
        If Bore = Cancel Then Exit Sub
        [H3] = Bore
        [I60] = ([H2] * [H3]) * [C60] + [D60]
        [L60] = [I60]
        [I61] = ([H2] * [H3]) * [C61] + [D61]
        [L61] = [I61]
        [I61] = ([H2] * [H3]) * [C61] + [D61]
        [L61] = [I61]
        [I62] = ([H2] * [H3]) * [C62] + [D62]
        [L62] = [I62]
        [I63] = ([H2] * [H3]) * [C63] + [D63]
        [L63] = [I63]
        [I64] = ([H2] * [H3]) * [C64] + [D64]
        [L64] = [I64]
        [I65] = ([H2] * [H3]) * [C65] + [D65]
        [L65] = [I65]
Run "EstimatorWB_BringWCTop"
End Sub
'AVD Cast Hubs
Sub MachinwShopWS_BringWCTop() ' Bring Work Center Routing to Top
Sheets("MachineShopWS").Select
Application.ScreenUpdating = False
ActiveCell.Offset(0, -4).Select
ActiveCell.Resize(, 12).Copy
Range("C21").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Application.CutCopyMode = False
Range("F21").Select
Application.ScreenUpdating = True
Range("F22").Select
End Sub
Sub WCTOOL()
Ans = MsgBox("TOOL Work Center", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
[I79] = ".0167"
[L79] = [I79]
        
Run "EstimatorWB_BringWCTop"
End Sub
Sub MachineShopWS_GotoArborTool()
Range("O397").Select
End Sub
Sub MachineShopWS_GotoArborPhantomTool()
Range("O411").Select
End Sub
Sub MachineShopWS_GotoBarRoundAlum()
Range("O104").Select
End Sub
Sub MachineShopWS_GotoBarRoundSteel()
Range("O129").Select
End Sub
Sub MachineShopWS_GotoPipe()
Range("O334").Select
End Sub
Sub MachineShopWS_GotoTube()
Range("O362").Select
End Sub
