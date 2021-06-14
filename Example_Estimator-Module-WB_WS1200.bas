Attribute VB_Name = "EstimatorWB_WS1200"
Sub WC1200() 'Ok1200 Amada
Range("H2:H5").ClearContents
Ans = MsgBox("1200 Amada", vbYesNo)
If [G5] < 0.01 Then Exit Sub
Range("AC30:AC100").ClearContents
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
If [G4] < 0.00001 Then Exit Sub
    Run ("FabricationWB_WC1200_1230")
    [I42] = [AD119]
    [L42] = [I42]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1202() 'Ok 1202 Punch Press Cincinnati
Range("H2:H5").ClearContents
Ans = MsgBox("Punch Press ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo PunchPress
        End Select
Ans = MsgBox("Notch ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    
Notch:
NQty = InputBox("What is Notch Qty ?")
        If NQty = "" Then Exit Sub
        [H5] = NQty
[I43] = ([H5] * [C43] + [D43]) * 10
[L43] = [I43]
Run "EstimatorWB_BringWCTop"
Exit Sub

PunchPress:
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G3").Select: Exit Sub
BLQty = InputBox("1202 Brake Length Is " & Worksheets("FabricationWS").Range("G2") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty:
BWQty = InputBox("1202 Brake Width Is " & Worksheets("FabricationWS").Range("G3") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I43] = (([G2] * [C43]) + [D43]) * [H2]
[I43] = [I43] + (([G3] * [C43]) + [D43]) * [H3]
[L43] = [I43]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1203() 'Ok 1203 Press Brake Cincinnati
Range("H2:H5").ClearContents
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G3").Select: Exit Sub
BLQty = InputBox("1203 Brake Length Is " & Worksheets("FabricationWS").Range("G2") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty:
BWQty = InputBox("1203 Brake Width Is " & Worksheets("FabricationWS").Range("G3") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I44] = (([G2] * [C44]) + [D44]) * [H2]
[I44] = [I44] + (([G3] * [C44]) + [D44]) * [H3]
[L44] = [I44]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1204() 'Ok 1204 Press Brake Pacific
Range("H2:H5").ClearContents
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G3").Select: Exit Sub
BLQty = InputBox("1204 Brake Length Is " & Worksheets("FabricationWS").Range("G2") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty:
BWQty = InputBox("1204 Brake Width Is " & Worksheets("FabricationWS").Range("G3") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I45] = (([G2] * [C45]) + [D45]) * [H2]
[I45] = [I45] + (([G3] * [C45]) + [D45]) * [H3]
[L45] = [I45]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1205() 'Ok 1205 Press Brake Cincinnati
Range("H2:H5").ClearContents
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G3").Select: Exit Sub
BLQty = InputBox("1205 Brake Length Is " & Worksheets("FabricationWS").Range("G2") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty:
BWQty = InputBox("1205 Brake Width Is " & Worksheets("FabricationWS").Range("G3") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I46] = (([G2] * [C46]) + [D46]) * [H2]
[I46] = [I46] + (([G3] * [C46]) + [D46]) * [H3]
[L46] = [I46]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1206() 'Ok 1206 Press Brake Chicago
Range("H2:H5").ClearContents
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G3").Select: Exit Sub
BLQty = InputBox("1206 Brake Length Is " & Worksheets("FabricationWS").Range("G2") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty:
BWQty = InputBox("1206 Brake Width Is " & Worksheets("FabricationWS").Range("G3") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I47] = (([G2] * [C47]) + [D47]) * [H2]
[I47] = [I47] + (([G3] * [C47]) + [D47]) * [H3]
[L47] = [I47]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1207() 'Ok 1207 Press Brake Cincinnati
Range("H2:H5").ClearContents
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G3").Select: Exit Sub
BLQty = InputBox("1207 Brake Length Is " & Worksheets("FabricationWS").Range("G2") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty:
BWQty = InputBox("1207 Brake Width Is " & Worksheets("FabricationWS").Range("G3") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I48] = (([G2] * [C48]) + [D48]) * [H2]
[I48] = [I48] + (([G3] * [C48]) + [D48]) * [H3]
[L48] = [I48]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1208() 'Ok 1208 Press Niagara 110 / 150
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1208 Press Niagara ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I49] = [G5] * [C49] + [D49]
    [L49] = [I49]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1211() 'Ok 1211 Press Johnson
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1211 Press Johnson ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I50] = [G5] * [C50] + [D50]
    [L50] = [I50]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1212() 'Ok 1212 Press Federal 90
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1212 Press Federal 90 ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I51] = [G5] * [C51] + [D51]
    [L51] = [I51]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1225() 'Ok 1225 Press Niagara E60
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1225 Press Niagara E60 ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I52] = [G5] * [C52] + [D52]
    [L52] = [I52]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1230() 'Ok 1230 Laser Mazak
'Range("H2:H5").ClearContents
Ans = MsgBox("1230 Laser", vbYesNo)
If [G5] < 0.01 Then MsgBox "Missing Square Foot Dimensions": Exit Sub
Range("AC30:AC100").ClearContents
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    Run ("FabricationWB_WC1200_1230")
    [I53] = [AD119]
    [L53] = [I53]
    Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1240() 'Ok 1240 Laser Shake-Out Table
Ans = MsgBox("1240 Laser Shake-Out Table", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I54] = "0.00001"
    [L54] = "0.00001"
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1243() 'Ok 1243 Roll Montgomery Machine
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1243 Roll a FULL CIRCLE ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo FullCircle
        End Select
Ans = MsgBox("1243 Roll PART of a CIRCLE ARC ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Arc
        End Select
Ans = MsgBox("1243 ROLL CONE from Flat ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo ConeFlat
        End Select
Ans = MsgBox("1243 Re-Roll Welded Cone ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo ConeWeld
        End Select
FullCircle:
        [I55] = [G5] * [C55] + [D55]
        [L55] = [I55]
         GoTo Done
Arc:
        [I55] = ([G5] * [C55] + [D55])
        [L55] = [I55]
        GoTo Done
ConeFlat:
        [I55] = ([G5] * [C55] + [D55]) * 2
        [L55] = [I55]
         GoTo Done
ConeWeld:
        [I55] = [G5] * [C55] + [D55]
        [L55] = [I55]
Done:
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1245() 'Ok 1245 Press Straight Side Pacific
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1245 Press Straight Side Pacific ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I56] = [G5] * [C56] + [D56]
    [L56] = [I56]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1246() 'Ok 1246 Press Logan Hydro
Range("H2:H5").ClearContents
If [G5] < 0.01 Then MsgBox "Missing Square Feet": Exit Sub
Ans = MsgBox("1246 Punch Part ?", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
    [I57] = [G5] * [C57] + [D57]
    [L57] = [I57]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4D() 'Ok 4D Press Brake Kool Cell
Range("H2:H5").ClearContents
If [G2] = "" Then MsgBox "Missing Length": Range("G2").Select: Exit Sub
If [G3] = "" Then MsgBox "Missing Width": Range("G3").Select: Exit Sub
BLQty = InputBox("4D Brake Length Is " & Worksheets("FabricationWS").Range("D4") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty:
BWQty = InputBox("4D Brake Width Is " & Worksheets("FabricationWS").Range("D5") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I80] = (([G2] * [C79]) + [D80]) * [H2]
[I80] = [I80] + (([G3] * [C80]) + [D80]) * [H3]
[L80] = [I80]
Run "EstimatorWB_BringWCTop"
End Sub
