Attribute VB_Name = "EstimatorWB_WS4100"
Sub MachineShopWS_AVDHubs()
Range("H2:H5").ClearContents
AVD = InputBox("AVD Cast Hub Maching ?" & vbCr & "Enter Hub Size ?", vbYesCancel)
        If AVD = Cancel Then Exit Sub
        [H2] = AVD
Select Case Range("H2").Value
Case 160
Case 230
Case 330
Case 403
Case 578
Case Else
MsgBox "Entered Size Not Found": Exit Sub
End Select
        
        [I69] = [H2] * [C69] + [D69]
        [L69] = [I69]
        [I70] = [H2] * [C70] + [D70]
        [L70] = [I70]
        [I71] = [H2] * [C71] + [D71]
        [L71] = [I71]
        [I72] = [H2] * [C72] + [D72]
        [L72] = [I72]
        [I73] = [H2] * [C73] + [D73]
        [L73] = [I73]
        [I74] = [H2] * [C74] + [D74]
        [L74] = [I74]
Range("F69:N74").Copy
Range("F8").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

Range("F2").Copy
Range("B8:B13").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[C8] = "Std"
[C9] = "Std"
[C10] = "Std"
[C11] = "Std"
[C12] = "Std"
[C13] = "Std"
[D8] = "100"
[D9] = "200"
[D10] = "300"
[D11] = "400"
[D12] = "500"
[D13] = "600"
Range("F2").Select
Application.CutCopyMode = False
End Sub

Sub Bring_Pipe_to_Top() 'Machine Shop Bring Pipe to Top
Range("O24").Select
Selection.End(xlDown).Select
If ActiveCell = "" Then
MsgBox "Select Material (x)"
Exit Sub
End If
ActiveCell.Offset(0, -2).Select
Range(Selection, ActiveCell.Offset(0, 7)).Copy
Range("O22").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        [R22] = "Regular"
CutCopyMode = False
Range("Q24:Q37").ClearContents
End Sub
Sub WC4100() '4100 Drill Roll pins
Range("H2:H5").ClearContents
RPD = InputBox("4100 Drill Roll Pin" & vbCr & "Enter Roll Pin Diameter ?", vbYesCancel)
        If RPD = Cancel Then Exit Sub
        [H2] = RPD
RPQty = InputBox("Enter Roll Pin Qty ?", vbYesCancel)
        If RPQty = Cancel Then Exit Sub
        [H3] = RPQty
If RPQty = Cancel Then Exit Sub
        [I40] = (([G2] * [C5]) - ([H3] * [C5])) + [G3]
        [I40] = [I40] * [C40] + [D40]
        [L40] = [I40]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4101() '4101 Doall Horizontal Band Saw
Range("H2:H5").ClearContents
Thickness = InputBox("4101 Horizontal Band Saw" & vbCr & "Item Thickness ?")
        If Thickness = Cancel Then Exit Sub
        [H2] = Thickness
Length = InputBox("Saw Length ?")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        [I41] = ([H2] + [H3]) * [C41] + [D41]
        [L41] = [I41]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4102() '4102 Miter Pipe Band Saw_Doall Vertical
Range("H2:H5").ClearContents
Thickness = InputBox("4102 Vertical Band Saw" & vbCr & "Item Thickness ?")
        If Thickness = Cancel Then Exit Sub
        [H2] = Thickness
Length = InputBox("Saw Length ?")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        [I42] = ([H2] + [H3]) * [C42] + [D42]
        [L42] = [I42]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4103() '4103 Eisele Extrusion Saw, Old 1105
Range("H2:H5").ClearContents
WidthA = InputBox("4103 Extrusion Saw" & vbCr & "Item Width ?")
        If WidthA = Cancel Then Exit Sub
        [H2] = WidthA
Length = InputBox("Saw Length ?")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        [I43] = ([H2] + [H3]) * [C43] + [D43]
        [L43] = [I43]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4104() '4104 Pipe Cutter
Range("H2:H5").ClearContents
Length = InputBox("4104 Pipe Cutter" & vbCr & "Cut Length ?")
        If Length = Cancel Then Exit Sub
        [H2] = Length
Dia = InputBox("Pipe Diameter ?")
        If Dia = Cancel Then Exit Sub
        [H3] = Dia
[I44] = (([H3] * [D5]) + [H2]) * [C44] + [D44]
[L44] = [I44]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4105() '4105 Pipe Bender
Range("H2:H5").ClearContents

Ans = MsgBox("4105 Pipe Bender ?" & vbCr & "Did you Select Pipe Material (x) ?", vbOKCancel)
        Select Case Ans
        Case vbYes
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
If [Y44] = 0 Then MsgBox ("You Must Select A Pipe Size ( X )"): Range("Q22").Select: Exit Sub

If [H2] > 0.00001 Then GoTo H3
Height = InputBox("Pipe Bend Height ?")
            If Height = Cancel Then Exit Sub
            [H2] = Height
H3:
If [H3] > 0.00001 Then GoTo H4
Width1 = InputBox("Pipe Bend Width ?")
            If Width1 = Cancel Then Exit Sub
            [H3] = Width1
H4:
If [H4] > 0.00001 Then GoTo Rout
Qty = InputBox("Pipe Bend Qty ?")
            If Qty = Cancel Then Exit Sub
            [H4] = Qty
Rout:
[F44] = ""
[F45] = ""
If [H4] = 1 Then [H5] = [U59]
If [H4] = 2 Then [H5] = [T59]
[F44] = [F44& "Cut Length "&R57& " Inches"]
[F45] = [F45& "End Stop "&U57& " Inches"]


If [H4] = 1 Then [I45] = [S46] * [C45] + [D45]
If [H4] = 1 Then [I44] = [S47] * [C44] + [D44]
If [H4] = 2 Then [I45] = [R59] * [C45] + [D45]
If [H4] = 2 Then [I44] = [R59] * [C44] + [D44]
[L44] = [I44]
[L45] = [I45]

ActiveCell.Offset(0, -4).Select
ActiveCell.Offset(-1, 0).Select
ActiveCell.Resize(2, 12).Copy
Range("C8").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B8] = [F2]
[B9] = [F2]
[C8] = "Std"
[C9] = "Std"
[D8] = "'0100"
[D9] = "'0200"
Range("O27").Select
Selection.End(xlDown).Select
ActiveCell.Offset(0, 4).Select
Range("P8").Select
Application.CutCopyMode = False

End Sub
Sub WC4106() 'Turrett Lathe Snap Ring Groves
Range("H2:H5").ClearContents
Ans = MsgBox("4106 J & L Manual Turrett Lathe", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
Face = MsgBox("Face Bore Chamfer", vbYesNo)
        Select Case Face
        Case vbYes
        If vb = Yes Then GoTo FaceBore
        Case vbNo
        End Select
Grove = MsgBox("Turn Snap Ring Groves", vbYesNo)
        Select Case Grove
        Case vbYes
        If vb = Yes Then GoTo SnapRing
        Case vbNo
        If vb = No Then MsgBox "Out of Options"
        Exit Sub
        End Select
SnapRing:
        SnapRing = InputBox("Snap Ring Grove Diameter")
        If SnapRing = "" Then MsgBox "Required Snap Ring Grove Diameter"
        If SnapRing = "" Then Exit Sub
        [H2] = SnapRing
SnapRingQty:
        SnapRingQty = InputBox("Snap Ring Grove Qty")
        If SnapRingQty = "" Then MsgBox "Required Snap Ring Grove Qty"
        If SnapRingQty = "" Then Exit Sub
        [H3] = SnapRingQty
[I46] = (([H2] * [C5]) * [C46] + [D46] * [H3])
[L46] = [I46]
Run "EstimatorWB_BringWCTop"
Exit Sub

FaceBore:
        Bore = InputBox("Finished Bore")
        If Bore = Cancel Then Exit Sub
        [H2] = Bore
        Length = InputBox("Finished Bore Length")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        Diameter = InputBox("Outside Diameter")
        [H4] = Diameter
        [I46] = ((([H4] * [W5]) + [H2] * [W5]) + [H3]) * [C46] + [D46]
        [L46] = [I46]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4107()
Range("H2:H5").ClearContents
Face = MsgBox("4107 Miyano Small Lathe" & vbCr & "Face Bore Chamfer", vbYesNo)
        Select Case Face
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
        Bore = InputBox("Finished Bore")
        If Bore = Cancel Then Exit Sub
        [H2] = Bore
        Length = InputBox("Finished Bore Length")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        Diameter = InputBox("Outside Diameter")
        [H4] = Diameter
        [I47] = ((([H4] * [W5]) + [H2]) + [H3]) * [C47] + [D47]
        [L47] = [I47]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4108()
Range("H2:H5").ClearContents
Face = MsgBox("4108 Miyano Large Lathe" & vbCr & "Face Bore Chamfer", vbYesNo)
        Select Case Face
        Case vbYes
        Case vbNo
        If vb = No Then MsgBox "User Canceled": Exit Sub
        End Select
        
        Bore = InputBox("Finished Bore")
        If Bore = Cancel Then Exit Sub
        [H2] = Bore
        Length = InputBox("Finished Bore Length")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        Diameter = InputBox("Outside Diameter")
        [H4] = Diameter
        [I48] = ((([H4] * [C5]) + [H2]) + [H3]) * [C48] + [D48]
        [L48] = [I48]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4109()
Range("H2:H5").ClearContents
AVD = MsgBox("4109 Engine Lathe AVD Cast Hub", vbYesNo)
        Select Case AVD
        Case vbYes
        If vb = Yes Then GoTo AVD
        Case vbNo
        End Select
HubBore = MsgBox("Bore Hub", vbYesNo)
        Select Case HubBore
        Case vbYes
        If vb = Yes Then GoTo HubBore
        Case vbNo
        End Select
Shaft = MsgBox("Turn Shaft", vbYesNo)
        Select Case Shaft
        Case vbYes
        If vb = Yes Then GoTo TurnShaft
        Case vbNo
        If vb = No Then Exit Sub
        End Select
AVD:
FinishedBore = InputBox("Finished Bore")
        If FinishedBore = Cancel Then Exit Sub
        [H2] = FinishedBore
BoreLength = InputBox("Bore Length")
        If BoreLength = Cancel Then Exit Sub
        [H3] = BoreLength
        [I49] = (([H2] * [W5]) + [H3]) * [C49] + [D49]
        [L49] = [I49]
Run "EstimatorWB_BringWCTop"
Exit Sub
HubBore:
        FinishedBore = InputBox("Finished Bore")
        If FinishedBore = Cancel Then Exit Sub
        [H2] = FinishedBore
        BoreLength = InputBox("Bore Length")
        If BoreLength = Cancel Then Exit Sub
        [H3] = BoreLength
        [I49] = (([H2] * [W5]) + [H3]) * [C49] + [D49]
        [L49] = [I49]
Run "EstimatorWB_BringWCTop"
Exit Sub
TurnShaft:
        Diameter = InputBox("Bar Round Diameter")
        If Diameter = Cancel Then Exit Sub
        [H2] = Diameter
        Finished = InputBox("Finished Bar Diameter")
        If Finished = Cancel Then Exit Sub
        [H3] = Finished
        Length = InputBox("Turned Bar Length")
        If Length = Cancel Then Exit Sub
        [H4] = Length
        [I49] = ((([H2] - [H3]) * [W5]) + [H3]) * [C49] + [D49]
        [J49] = [I49]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4110()
Range("H2:H5").ClearContents
Ans = MsgBox("4110 Ream", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
Bore = InputBox("Bore Dimension")
    [H2] = Bore
HubL = InputBox("Enter Hub Length")
    [H3] = HubL
HubTime:
    [I50] = ([H2] + [H3]) * [C50] + [D50]
    [L50] = [I50]
Run "EstimatorWB_BringWCTop"
End Sub

Sub WC4112()
Range("H2:H5").ClearContents
Ans = MsgBox("4112 Ream", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
Bore = InputBox("Bore Dimension")
    [H2] = Bore
HubL = InputBox("Enter Hub Length")
    [H3] = HubL
HubTime:
    [I51] = ([H2] * [C5])
    [I51] = ([I51] + [H3]) * [D51] + [E51]
    [L51] = [I51]
Run "EstimatorWB_BringWCTop"
End Sub

Sub WC4113()
Range("H2:H5").ClearContents
Ans = MsgBox("4113 Drill Chamfer and Tap Side Holes", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Drill
        End Select
Ans = MsgBox("4113 Spot Face Holes", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Spot
        Case vbNo
        If vb = No Then Exit Sub
        End Select
Spot:
DD = InputBox("Enter Drill Diameter")
    [H2] = DD
SF = InputBox("Enter Spot Face Qty")
    [H3] = SF
[I52] = ((([H2] * [C5]) * [C52] + [D52]) * [H2]) / 6
[L52] = [I52]
[F52] = "Spot Face Bolt Holes"
Run "EstimatorWB_BringWCTop"
Exit Sub

Drill:
DD = InputBox("Enter Drill Diameter")
    [H2] = DD
HD = InputBox("Enter Hub Diameter")
    [H3] = HD
BD = InputBox("Enter Finished Bore")
    [H4] = BD
Qty = InputBox("Enter Qty of Drilled Holes")
    [H5] = Qty
[I52] = [H3] - [H4] * [C5]
[I52] = ([I52] * [H2]) * [H5]
[I52] = [I52] * [C52] + [D52]
[L52] = [I52]
[F52] = "Drill Chamfer and Tap Side Holes"
Run "EstimatorWB_BringWCTop"
End Sub

Sub WC4114() 'Key Seating Mill
Range("H2:H5").ClearContents
Ans = MsgBox("4114 Small Key Seating Mill", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
KeyW1:
[H2:H5] = ""
KeyW1 = InputBox("What is the Key Width ?")
            [H2] = KeyW1
            If KeyW1 = "" Then GoTo KeyW1
If [H2] > 0.38 Then
MsgBox ("Key Width to wide use Work Center 0107")
Exit Sub
End If
KeyL1:
KeyL1 = InputBox("What is the Key Length ?")
            [H3] = KeyL1
            If KeyL1 = "" Then GoTo KeyL1
KeyQ1:
KeyQ1 = InputBox("What is the Key Qty ?")
            [H4] = KeyQ1
            If KeyQ1 = "" Then GoTo KeyQ1
            [I53] = (([H2] + [H3]) * [C53] + [D53]) * [H4]
            [L53] = [I53]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4115()
Range("H2:H5").ClearContents
Thickness = InputBox("4115 Chamfer Machine Pines" & vbCr & "Bar Diameter ?")
        If Thickness = Cancel Then Exit Sub
        [H4] = Thickness
Length = InputBox("Saw Length ?")
        If Length = Cancel Then Exit Sub
        [H2] = Length
        [I54] = ([H4] + [H2]) * [C54] + [D54]
        [L54] = [I54]
Run "EstimatorWB_BringWCTop"
End Sub

Sub WC4119()
Range("H2:H5").ClearContents
Ans = MsgBox("4119 Broach Machine Oilgear", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
KW = InputBox("Key Width")
    [H2] = KW
KL = InputBox("Key Length")
    [H3] = KL
[I56] = ([H2] + [H3]) * [C56] + [D56]
[L56] = [I56]
Run "EstimatorWB_BringWCTop"
End Sub

Sub WC4120()
Range("H2:H5").ClearContents
Ans = MsgBox("4120 Colonial Press", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select

Qty = InputBox("Smash or Punch Qty")
        [H2] = Qty
        [I57] = [H2] * [C57] + [D57]
        [L57] = [I57]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4122() 'Tap Holes
Range("H2:H5").ClearContents
Ans = MsgBox("4120 Tap", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
DD = InputBox("Enter Tap Diameter")
    [H2] = DD
DL = InputBox("Enter Finished Bore Dimension")
    [H3] = DL
DQ = InputBox("Enter Hub Outside Diameter")
    [H4] = DQ
[I58] = ((([C5] * [H2]) + (([H4] - [H3]) / 2))) * [C58] + [D58]
[L58] = [I58]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4123()
Range("H2:H5").ClearContents
Ans = MsgBox("4123 Drill and Chamfer", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Drill
        Case vbNo
        End Select
Drill:
DD = InputBox("Enter Drill Diameter")
    [H2] = DD
DL = InputBox("Enter Finished Bore Dimension")
    [H3] = DL
DQ = InputBox("Enter Hub Outside Diameter")
    [H4] = DQ
[I59] = ((([C5] * [H2]) + (([H4] - [H3]) / 2))) * [C59] + [D59]
[L59] = [I59]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4123M()
Range("H2:H5").ClearContents
Ans = MsgBox("4123 Add Set Screws", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Screw
        Case vbNo
        If vb = No Then Exit Sub
        End Select
Screw:
DD = InputBox("Enter Set Screw Diameter")
    [H2] = DD
DL = InputBox("Enter Finished Bore Dimension")
    [H3] = DL
DQ = InputBox("Enter Hub Outside Diameter")
    [H4] = DQ
Qty = InputBox("Enter Qty of Set Screws")
    [H5] = Qty
[I60] = ((((([C5] * [H2]) + (([H4] - [H3]) / 2))) * [C60] + [D60]) * [H5]) / 4
[L60] = [I60]
Run "EstimatorWB_BringWCTop"
Exit Sub
Drill:
DD = InputBox("Enter Drill Diameter")
    [H2] = DD
DL = InputBox("Enter Finished Bore Dimension")
    [H3] = DL
DQ = InputBox("Enter Hub Outside Diameter")
    [H4] = DQ
[I60] = ((([C5] * [H2]) + (([H4] - [H3]) / 2))) * [C60] + [D60]
[L60] = [I60]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4124()
Range("H2:H5").ClearContents
Thickness = InputBox("4124 Cold Saw Elsele" & vbCr & "Item Thickness ?")
        If Thickness = Cancel Then Exit Sub
        [H4] = Thickness
Length = InputBox("Saw Length ?")
        If Length = Cancel Then Exit Sub
        [H2] = Length
        [I61] = ([H4] + [H2]) * [C61] + [D61]
        [L61] = [I61]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4130()
Range("H2:H5").ClearContents
Ans = MsgBox("4130 Mazak Lathe", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
        Bore = InputBox("Finished Bore")
        If Bore = Cancel Then Exit Sub
        [H2] = Bore
        Length = InputBox("Finished Bore Length")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        Diameter = InputBox("Outside Diameter")
        [H4] = Diameter
        [I62] = ((([H4] * [C5]) + [H2] * [C5]) + [H3]) * [C62] + [D62]
        [L62] = [I62]
Run "EstimatorWB_BringWCTop"
End Sub
'HAAS
Sub WC4140()
Range("H2:H5").ClearContents
Ans = MsgBox("4140 HASS Lathe", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
        Bore = InputBox("Finished Bore")
        If Bore = Cancel Then Exit Sub
        [H2] = Bore
        Length = InputBox("Finished Bore Length")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        Diameter = InputBox("Outside Diameter")
        [H4] = Diameter
        [I63] = ((([H4] * [C5]) + [H2] * [C5]) + [H3]) * [C63] + [D63]
        [L63] = [i6]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC4153() 'Eitei Shaft Straightener
Range("H2:H5").ClearContents
Ans = MsgBox("4153 Eitei Shaft Straightener", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select

        Dia = InputBox("Bar Diameter")
        If Dia = Cancel Then Exit Sub
        [H2] = Length
        Length = InputBox("Bar Length")
        If Length = Cancel Then Exit Sub
        [H3] = Length
[I64] = (([C5] * [H2]) + [H3]) / 144 * [C64] + [D64]
[L64] = [I64]
Run "EstimatorWB_BringWCTop"
End Sub

