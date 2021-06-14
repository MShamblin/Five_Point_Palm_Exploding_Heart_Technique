Attribute VB_Name = "EstimatorWB_WS1100"
Sub WC1100() 'Ok
Ans = MsgBox("1100 Nest Operation", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I33] = "0.00001"
    [L33] = "0.00001"
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1101() 'Ok
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G2").Select: Exit Sub
Ans = MsgBox("1101 Large Cininnati Shear", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I34] = (([G2] * [C34]) + [D34]) + ([G3] * [C34] + [D34])
    [L34] = [I34]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1102() 'Ok
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G2").Select: Exit Sub
Ans = MsgBox("1102 Small Cininnati Shear", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I35] = (([G2] * [C35]) + [D35]) + ([G3] * [C35] + [D35])
    [L35] = [I35]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1107() 'Ok
Range("H2:H5").ClearContents
OD = InputBox("1107 Outside Diameter ?", vbYesCancel)
        [H2] = OD
        If OD = "" Then GoTo ID
        If OD = Cancel Then Exit Sub
ID: ID = InputBox("1107 Inside Diameter ?", vbYesCancel)
        [H3] = ID
        If ID = "" Then GoTo Rout1107
        If ID = Cancel Then Exit Sub
Rout1107:
If [H2] + [H3] < 0.01 Then Exit Sub
        [I38] = (([D5] * [H2]) / 144) * [C38] + [D38]
        [L38] = [I38]
        If [H3] = "" Then GoTo Endit
        [I38] = [I38] + (([D5] * [H3]) / 144) * [C38] + [D38]
        [L38] = [I38]
Endit:
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1108() 'Ok
If [G5] = "" Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1108 Center Punch", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I39] = (([D5] * [G5]) / 144) * [C39] + [D39]
    [L39] = [I39]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1109() 'Ok
Range("H2:H5").ClearContents
OD = InputBox("1109 Outside Diameter ?", vbYesCancel)
        [H2] = OD
        If OD = "" Then GoTo ID
        If OD = Cancel Then Exit Sub
ID: ID = InputBox("1109 Inside Diameter ?", vbYesCancel)
        [H3] = ID
        If ID = "" Then GoTo Rout1109
        If ID = Cancel Then Exit Sub
Rout1109:
If [H2] + [H3] < 0.01 Then Exit Sub
        [I40] = (([D5] * [H2]) / 144) * [C40] + [D40]
        [L40] = [I40]
        If [H3] = "" Then GoTo Endit
        [I40] = [I40] + (([D5] * [H3]) / 144) * [C40] + [D40]
        [L40] = [I40]
Endit:
Run "EstimatorWB_BringWCTop"
End Sub





