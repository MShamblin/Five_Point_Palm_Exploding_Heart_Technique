Attribute VB_Name = "EstimatorWB_WS3600"
Sub WC3601MS()
Ans = MsgBox("3601 Rust Preventive Treatment ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I33] = [G5] * [C33] + [D33]
[L33] = [I33]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub MachineShopWS_WC3602Clean()
Ans = MsgBox("3602 Clean Parts ? Use Blank Size for Cleaning ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I65] = [G5] * [C65] + [D65]
[L65] = [I65]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub MachineShopWS_WC3602()
Ans = MsgBox("3602 Piece Parts ? Use Blank Size for Coating ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I66] = [G5] * [C66] + [D66]
[L66] = [I66]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub FabricationWS_WC3602()
Ans = MsgBox("3602 Piece Parts ? Use Blank Size for Coating ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I81] = [G5] * [C81] + [D81]
[L81] = [I81]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub FabricationWS_WC3605()
Ans = MsgBox("3605 ? Use Square Feet for Coating ?", vbYesNo)
    If [G5] = "" Then MsgBox "Missing SqFt": Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I82] = [G5] * [C81] + [D82]
[L82] = [I82]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub WeldingWS_WC3602()
Ans = MsgBox("3602 Piece Parts ? Use BOM  for Coating ?", vbYesNo)
    If [G5] = "" Then MsgBox "Missing SqFt": Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I51] = [G5] * [C51] + [D51]
[L51] = [I51]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub WeldingWS_WC3605()
Ans = MsgBox("3605 ? Use BOM for Coating ?", vbYesNo)
    If [G5] = "" Then MsgBox "Missing SqFt": Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I52] = [G5] * [C52] + [D52]
[L52] = [I52]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub WheelPropWS_WC3602()
Ans = MsgBox("3602 Powder Coat ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I115] = [G5] * [C115] + [D115]
[L115] = [I115]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub WheelPropWS_WC3605()
Ans = MsgBox("3605 Powder Coat ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I116] = [G5] * [C116] + [D116]
[L116] = [I116]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub

Sub ShuttereWS_3602()
Ans = MsgBox("3602 Powder Coat ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I114] = [G5] * [C114] + [D114]
[L114] = [I114]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
Sub ShuttersWS_3605()
Ans = MsgBox("3605 Powder Coat ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I115] = [G5] * [C115] + [D115]
[L115] = [I115]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
