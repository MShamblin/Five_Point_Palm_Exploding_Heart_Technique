Attribute VB_Name = "EstimatorWB_WS1300"
Sub WC1300() 'Ok Drill Area
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Diameter = InputBox("1300 Drill Diameter")
    [H2] = Diameter
    If Diameter = Cancel Then Exit Sub
DrillQty = InputBox("Drill Qty")
    [H3] = DrillQty
    If DrillQty = Cancel Then Exit Sub
    [I58] = (([H2] * 3.14156) * [C58] + [D58]) * [H3]
    [L58] = [I58]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1301() ' Ok Breather Tube
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1301 Punch 2.50 inch Breather Tube Hole", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I59] = [G5] * [C59] + [D59]
    [L59] = [I59]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1305() 'Ok  Turret Lathe Flange
Range("H2:H5").ClearContents
SDia = InputBox("1305 Finished Inside Diameter ?")
    [H2] = SDia
    If SDia = Cancel Then Exit Sub
Qty = InputBox("0105 Flange Qty")
    [H3] = Qty
    If Qty = Cancle Then Exit Sub
    [I60] = ([H2] * [C60] + [D60]) * [H3]
    [L60] = [I60]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1312() 'Ok Flange Blue Valley
Range("H2:H5").ClearContents
SDia = InputBox("1312 Finished Inside Diameter ?")
    [H2] = SDia
    If SDia = Cancel Then Exit Sub
Qty = InputBox("0105 Flange Qty")
    [H3] = Qty
    If Qty = Cancle Then Exit Sub
    [I61] = ([C2] * [H61] + [D61]) * [H3]
    [L61] = [I61]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1315() ' Ok Lock Former
Range("H2:H5").ClearContents
Length = InputBox("1315 Lockformer Length ?")
    [H2] = Length
Qty = InputBox("Enter Qty ?")
    [H3] = Qty
    [I62] = ([H2] * [C62] + [D62]) * [H3]
    [L62] = [I62]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1317() 'Ok Lauffer Straight Side Press
Range("H2:H5").ClearContents
FID = InputBox("1317 Finished Inside Diameter ?")
    [H4] = FID
    If FID = No Then Exit Sub
FH = InputBox("1317 Finished Height ?")
    [H5] = FH
    If FH = No Then Exit Sub
    [I63] = (([H4] * 3.14156 + [H5]) / 144) * [C63] + [D63]
    [L63] = [I63]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1318() 'Ok HPM Straight Side Press
Range("H2:H5").ClearContents
FID = InputBox("1318 Finished Inside Diameter ?")
    [H2] = FID
    If FID = No Then Exit Sub
FH = InputBox("1317 Finished Height ?")
    [H3] = FH
    If FH = No Then Exit Sub
    [I64] = (([H2] * 3.14156 + [H3]) / 144) * [C64] + [D64]
    [L64] = [I64]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1319() 'Ok Clearing Straight Side Press
Range("H2:H5").ClearContents
FID = InputBox("1318 Finished Inside Diameter ?")
    [G2] = FID
    If FID = No Then Exit Sub
FH = InputBox("1317 Finished Height ?")
    [G3] = FH
    If FH = No Then Exit Sub
    [I65] = (([G2] * 3.14156 + [G3]) / 144) * [C65] + [D65]
    [L65] = [I65]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1330() 'Ok
Range("H2:H5").ClearContents
Size = InputBox("1330 Former & Brake QB Dual Edge" & vbCr & "Wraparound Size in Inches?")
        [H2] = Size
        If Size = No Then Exit Sub
            [I34] = [H2] * [C34] + [D34]
            [L34] = [I34]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1331()
Range("H2:H5").ClearContents
Size = InputBox("1331 Scroll Machine & Weld Assemble" & vbCr & "Wraparound Size in Inches?")
        [H2] = Size
        If Size = No Then Exit Sub
[I35] = [H2] * [C35] + [D35]
[L35] = [I35]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1342()
Range("H2:H5").ClearContents
Ans = MsgBox("1342 Roll a FULL CIRCLE ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo FullCircle
        End Select
Ans = MsgBox("1242 Roll PART of a CIRCLE ARC ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Arc
        End Select
Ans = MsgBox("1242 ROLL CONE from Flat ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo ConeFlat
        End Select
Ans = MsgBox("1242 Re-Roll Welded Cone ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo ConeWeld
        Case vbNo
        If vb = No Then Exit Sub
        End Select
FullCircle:
        [I66] = [G5] * [C66] + [D66]
        [L66] = [I66]
         GoTo Done
Arc:
        [I66] = ([G5] * [C66] + [D66])
        [L66] = [I66]
        GoTo Done
ConeFlat:
        [I66] = ([G5] * [C66] + [D66]) * 2
        [L66] = [I66]
         GoTo Done
ConeWeld:
        [I66] = [G5] * [C66] + [D66]
        [L66] = [I66]
Done:
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1344() 'Roll Buffalo Roll Offset
Range("H2:H5").ClearContents
Ans = MsgBox("1344 Buffalo Roll ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I67] = [G5] * [C67] + [D67]
    [L67] = [I67]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1345() 'Orifice Roll Cut in two pieces
Range("H2:H5").ClearContents
Ans = MsgBox("1345 Orifice Roll ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I68] = [G5] * [C68] + [D68]
    [L68] = [I68]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1351() 'Spining Lathe Large
Range("H2:H5").ClearContents
SDia = InputBox("1351 Finished Inside Diameter ?")
    [H2] = SDia
    If [H2] > 0.01 Then GoTo FQty
    If vb = No Then Exit Sub
FQty:
    FQty = InputBox("1351 Enter Flange Qty ?")
    [H3] = FQty
    If FQty > 2.1 Then MsgBox "Maximun Qty 2 Exit Start Over": Exit Sub
    If [H3] > 0.01 Then GoTo Run
    If vb = No Then Exit Sub
Run:
    [I69] = ([H2] * [C69] + [D69]) * [H3]
    [L69] = [I69]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1352() 'Spining Lathe Small
Range("H2:H5").ClearContents
SDia = InputBox("1352 Finished Inside Diameter ?")
    [H2] = SDia
    If [H2] > 0.01 Then GoTo FQty
    If vb = No Then Exit Sub
FQty:
    FQty = InputBox("1352 Enter Flange Qty ?")
    [H3] = FQty
    If FQty > 2.1 Then MsgBox "Maximun Qty 2 Exit Start Over": Exit Sub
    If [H3] > 0.01 Then GoTo Run
    If vb = No Then Exit Sub
Run:
    [I70] = ([H2] * [C70] + [D70]) * [H3]
    [L70] = [I70]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1353() 'Trim & Bead Mach Small
Range("H2:H5").ClearContents
Ans = MsgBox("1353 Trim & Bead Mach Small ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I71] = [G5] * [C71] + [D71]
    [L71] = [I71]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1354() 'Trim & Bead Mach Large
Range("H2:H5").ClearContents
Ans = MsgBox("1354 Trim & Bead Mach Large ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I72] = [G5] * [C72] + [D72]
    [L72] = [I72]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1355()
Range("H2:H5").ClearContents
Ans = MsgBox("1355 Annealing Heat Table ", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
            [I73] = [G5] * [C73] + [D73]
            [L73] = [I73]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1357()
Range("H2:H5").ClearContents
SDia = InputBox("1357 Finished Inside Diameter ?")
    [H2] = SDia
    If SDia = Cancel Then Exit Sub
Qty = InputBox("1357 Flange Qty")
    [H3] = Qty
    If Qty = Cancle Then Exit Sub
    [I74] = ([H2] * [C74] + [D74]) * [H3]
    [L74] = [I74]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1360()
Range("H2:H5").ClearContents
Ans = MsgBox("1360 - Alum?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo RollAlum
        End Select
Ans = MsgBox("1360 - Steel?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo RollSteel
        End Select
RollAlum:
        [I75] = ([G2] * ["4"] * ["0.00011"])
        [L75] = [I75]
         GoTo Done
RollSteel:
        [I75] = ([G2] * ["6"] * ["0.00011"])
        [L75] = [I75]
        GoTo Done
Done:
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1374()
Range("H2:H5").ClearContents
Length = InputBox("1374 Lockformer Length ?")
    [H2] = Length
    If Length = Cancel Then Exit Sub
Qty = InputBox("Enter Qty ?")
    [H3] = Qty
    [I76] = ([H2] * [C76] + [D76]) * [H3]
    [L76] = [I76]
Run "EstimatorWB_BringWCTop"
End Sub


