Attribute VB_Name = "EstimatorWB_WS1400"
Sub WC1404()
Ans = MsgBox("1404 Shear Niagara (Air) Wire Only")
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I30] = (([G2] * [C30]) + [D30]) + ([G3] * [C30] + [D30])
    [L30] = [I30]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1405()
Ans = MsgBox("1405 Shear L & S", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I31] = (([G2] * [C31]) + [D31]) + ([G3] * [C31] + [D31])
    [L31] = [I31]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1407()
Ans = MsgBox("1407 Wysong 6 Foot Shear", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I32] = (([G2] * [C32]) + [D32]) + ([G3] * [C32] + [D32])
    [L32] = [I32]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1409()
Ans = MsgBox("1409 Niagara Punch Press 60", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I33] = (([G2] * [C33]) + [D33]) + ([G3] * [C33] + [D33])
    [L33] = [I33]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1410()
Ans = MsgBox("1410 Punch Press Federal", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I34] = (([G2] * [C34]) + [D34]) + ([G3] * [C34] + [D34])
    [L34] = [I34]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1414()
Ans = MsgBox("1414 Punch Press Strippit", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Qty = InputBox("Qty Punched Holes or Qty of Notches")
    [H2] = Qty
    [I35] = [H2] * [C35] + [D35]
    [L35] = [I35]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1416()
Ans = MsgBox("1416 Press Benchmaster", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I36] = (([G2] * [C36]) + [D36]) + ([G3] * [C36] + [D36])
    [L36] = [I36]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1422()
Ans = MsgBox("1422 Stapler Bostitch", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Qty = InputBox("Qty of Staples")
    [H2] = Qty
    [I37] = [H2] * [C37] + [D37]
    [L37] = [I37]
Run "EstimatorWB_BringWCTop"
End Sub
'1423 Press Verson
Sub WC1423()
Ans = MsgBox("1423 Press Verson", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I38] = (([G2] * [C38]) + [D38]) + ([G3] * [C38] + [D38])
    [L38] = [I38]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1424()
Ans = MsgBox("1430 Press Summit", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Qty = InputBox("Qty of Hits?")
    [H2] = Qty
    If Qty = "" Then MsgBox "Missing Square Feet": Exit Sub
    [I39] = [H2] * [C39] + [D39]
    [L39] = [I39]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1425()
Ans = MsgBox("1425 Press Clausing", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I40] = (([G2] * [C40]) + [D40]) + ([G3] * [C40] + [D40])
    [L40] = [I40]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1426()
Ans = MsgBox("1426 Press Brake", vbOKCancel)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo BWQty
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
BWQty:
BLQty = InputBox("1426 Brake Length Is " & Worksheets("FabricationWS").Range("G2") & " Inches" & vbCr & _
        "Brake Length Qty ?")
        If BLQty = "" Then GoTo BWQty
        [H2] = BLQty
BWQty = InputBox("1426 Brake Width Is " & Worksheets("FabricationWS").Range("G3") & " Inches" & vbCr & _
        "Brake Width Qty ?")
        If BWQty = "" Then GoTo BLT
        [H3] = BWQty
BLT:
[I41] = (([G2] * [C41]) + [D41]) * [H2]
[I41] = [I41] + (([G3] * [C41]) + [D41]) * [H3]
[L41] = [I41]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1431()
Ans = MsgBox("1431 Flattener Extrusion Machine Acme", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
    [I42] = (([G2] * [C42]) + [D42]) + ([G3] * [C42] + [D42])
    [L42] = [I42]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC1438() 'Press Brake
Ans = MsgBox("1438 Press Denison Hydro 034-AA Miter", vbOKCancel)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Rout
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Rout:
Length = InputBox("Extrusion Length Is " & Worksheets("ShuttersWs").Range("G2") & " Inches ?")
        If Length = Cancel Then Exit Sub
        [H2] = Length
Qty = InputBox("Qty Notches " & Worksheets("ShuttersWs").Range("G3") & " Qty ?")
        If Qty = Cancel Then Exit Sub
        [H3] = Qty
[I43] = (([H2] * [C43]) + [D43])
[I43] = [I43] + (([H3] * [C43]) + [D43])
[L43] = [I43]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3A13()
Ans = MsgBox("3A13 Saw Plastic", vbOKCancel)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Rout
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Rout:
Length = Application.InputBox("Enter Saw Length ?")
        If Length = Cancel Then Exit Sub
        [H2] = Length
        [I44] = [H2] * [C44] + [D44]
        [L44] = [I44]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3A14()
Diameter = InputBox("1300 Drill Diameter")
    [H2] = Diameter
    If Diameter = Cancel Then Exit Sub
DrillQty = InputBox("Drill Qty")
    [H3] = DrillQty
    If DrillQty = Cancel Then Exit Sub
    [I45] = ((([H2] + [G4]) * 3.14156) * [C45] + [D45]) * [H3]
    [L45] = [I45]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3B11()
Ans = MsgBox("3B11 Shutter Wire Cut Off Die ?", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = Cancel Then Exit Sub
        End Select
    SWL = InputBox("Enter Shutter Wire Length")
    [H2] = SWL
    If SWL = "" Then Exit Sub
    [I46] = ([H2] * [C46] + [D46])
    [L46] = [I46]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3B22()
Ans = MsgBox("3B22 Shutter Blade Cut Off Die", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = Cancel Then Exit Sub
        End Select
    SBL = InputBox("Enter Shutter Blade Length")
    [H2] = SBL
    If SBL = "" Then Exit Sub
Finished:
    [I47] = ([H2] * [C47] + [D47])
    [L47] = [I47]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3B33()
Ans = MsgBox("3B33 Brake Assemble Wire in Blade", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = Cancel Then Exit Sub
        End Select
    SBL = InputBox("Enter Shutter Blade Length")
    [H2] = SBL
    If SBL = "" Then Exit Sub
    [I48] = ([H2] * [C48] + [D48])
    [L48] = [I48]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3B44()
            SW = InputBox("3B44 Spot Weld" & vbCr & "Spot Weld Qty ?")
            [H2] = SW
            If SW = "" Then Exit Sub
            [I49] = ([H2] * [D49]) + [E49]
            [L49] = [I49]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3A() '
Ans = MsgBox("3A Insulated Shutter Blade Assembly", vbOKCancel)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Rout
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Rout:
Length = InputBox("Enter Blade Length ?")
        If Length = Cancel Then Exit Sub
        [H2] = Length
Qty = InputBox("Qty of Items ?")
        If Qty = Cancel Then Run "Canceled": Exit Sub
        [H3] = Qty
[J50] = ([H2] + [H3]) * [D50] + [E50]
[M50] = [J50]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3B() '
Ans = MsgBox("3A Insulated Shutter Blade Assembly", vbOKCancel)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Rout
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Rout:
Length = InputBox("Enter Blade Length ?")
        If Length = Cancel Then Exit Sub
        [H2] = Length
Qty = InputBox("Qty of Items ?")
        If Qty = Cancel Then Exit Sub
        [H3] = Qty
[J51] = ([H2] + [H3]) * [D51] + [E51]
[M51] = [J51]
Run "EstimatorWB_BringWCTop"
End Sub

Sub WC3F() '
Diameter = InputBox("Drill Diameter")
    [H2] = Diameter
    If Diameter = Cancel Then Exit Sub
DrillQty = InputBox("Drill Qty")
    [H3] = DrillQty
    If DrillQty = Cancel Then Exit Sub
    [I52] = ((([H2] + [G4]) * 3.14156) * [C52] + [D52]) * [H3]
    [L52] = [I52]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC7B() '
Ans = MsgBox("Assembly and Repackage", vbOKCancel)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Rout
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
Rout:
[I53] = ([G2] + [G3]) * [C53] + [D53]
[L53] = [I53]
Run "EstimatorWB_BringWCTop"
End Sub



