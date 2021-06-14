Attribute VB_Name = "EstimatorWB_WS0100"
Sub WC0105() '0105 Ok
ActiveSheet.Unprotect
Diameter = InputBox("0105 Finished Outside Diameter ?", vbYesCancel)
    [H2] = Diameter
    If Diameter = Cancel Then Exit Sub
Height = InputBox("0105 Finished Spun Height")
    [H3] = Height
    If Height = Cancle Then Exit Sub
    [I30] = ([H2] * [H3]) / 144 * [C30] + [D30]
    [L30] = [I30]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0107() '0107 ok
ActiveSheet.Unprotect
KeyW1 = InputBox("0107 Large Key Way Mill" & vbCr & "Key Width ?", vbYesCancel)
            [H2] = KeyW1
            If KeyW1 = Cancel Then Exit Sub
            If KeyW1 < 0.38 Then MsgBox ("Keyway to Small use Work Center 4114"): Exit Sub
KeyL1 = InputBox("Key Length ?", vbYesCancel)
            [H3] = KeyL1
            If KeyL1 = Cancel Then Exit Sub
KeyQ1 = InputBox("Key Qty ?", vbYesCancel)
            [G4] = KeyQ1
            If KeyQ1 = Cancel Then Exit Sub
            [I30] = ((([H2] + [H3]) * [C30] + [D30])) * [G4]
            [L30] = [I30]
Run "EstimatorWB_BringWCTop"
End Sub
'0109 Drill and Tap
Sub WC0109()
ActiveSheet.Unprotect
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
[I31] = ((([H2] * 3.1416) * [C31] + [D31]) * [H2]) / 6
[F31] = "Spot Face Bolt Holes"
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
[I31] = [H3] - [H4] * 3.1416
[I31] = ([I31] * [H2]) * [H5]
[I31] = [I31] * [C31] + [D31]
[L31] = [I31]
[F31] = "Drill Chamfer and Tap Side Holes"
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0110()
ActiveSheet.Unprotect
Length = InputBox("0110 Buffalo Angle Roll" & vbCr & "Angle Flat Length")
        [H2] = Length
        If Length = Cancel Then Exit Sub
        [I32] = ([H2] * [C5]) * [D32] + [E32]
        [L32] = [I32]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0111()
HubBore = MsgBox("0111 Engine Lathe - Bore Hub", vbYesNo)
        Select Case HubBore
        Case vbYes
        If vb = Yes Then GoTo HubBore
        Case vbNo
        End Select
Shaft = MsgBox("0111 Engine Lathe - Turn Shaft", vbYesNo)
        Select Case Shaft
        Case vbYes
        If vb = Yes Then GoTo TurnShaft
        Case vbNo
        If vb = No Then Exit Sub
        End Select
BoreLength = InputBox("Bore Length")
        If BoreLength = Cancel Then Exit Sub
        [H2] = BoreLength
        [H3] = "Bore Length"
        [I33] = (([H2] * [C5]) + [H3]) * [C33] + [D33]
        [L33] = [I33]
GoTo WorkCenter
HubBore:
        FinishedBore = InputBox("Finished Bore")
        [H2] = FinishedBore
        If FinishedBore = Cancel Then Exit Sub
        BoreLength = InputBox("Bore Length")
        [H3] = BoreLength
        If BoreLength = Cancel Then Exit Sub
        [I33] = (([H2] * [C5]) + [H3]) * [C33] + [D33]
        [L33] = [I33]
GoTo WorkCenter
TurnShaft:
        Diameter = InputBox("Bar Round Diameter")
        [H2] = Diameter
        If Diameter = Cancel Then Exit Sub
        Finished = InputBox("Finished Bar Diameter")
        [H3] = Finished
        If Finished = Cancel Then Exit Sub
        Length = InputBox("Turned Bar Length")
        [H4] = Length
        If Length = Cancel Then Exit Sub
        [I33] = ((([H2] - [H3]) * [C5]) + [H4]) * [C33] + [D33]
        [L33] = [I33]
WorkCenter:
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0112() 'ok
ActiveSheet.Unprotect
KeyWidth = InputBox("0112 Broach American" & vbCr & "Key Width ?")
        If KeyWidth = Cancel Then Exit Sub
        [H2] = KeyWidth
KeyLength = InputBox("Key Length ?")
        If KeyLength = Cancel Then Exit Sub
        [H3] = KeyLength
        [I34] = (([H2] + [H3]) * [C34] + [D34])
        [L34] = [I34]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0113() 'ok
ActiveSheet.Unprotect
Diameter = InputBox("0113 Saw Horizonal" & vbCr & "Bar Diameter ?")
        If Diameter = Cancel Then Exit Sub
        [H2] = Diameter
Length = InputBox("Bar Length ?")
        If Length = Cancel Then Exit Sub
        [H3] = Length
        [I35] = (([H2] * [C5]) + [H3]) * [C35] + [D35]
        [L35] = [I35]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0114() 'ok
ActiveSheet.Unprotect
AngleLength = InputBox("0114 Ironworker Buffalo" & vbCr & "Angle Length")
        If AngleLength = Cancel Then Exit Sub
        [H2] = AngleLength
QTYR = InputBox("Qty of Round Holes")
        [H2] = QTYR
QTYSlots = InputBox("Qty of Slots")
        [H3] = QTYSlots
QTYNotches = InputBox("Qty of Notches")
        [H4] = QTYNotches
QTYSq = InputBox("Qty of Squares")
        [H5] = QTYSq
        [I36] = ([H2] + 2)
        [I36] = ([I36] + [H2] + [H3] + [H4] + [H5]) * [C36] + [D36]
        [L36] = [I36]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0116() 'ok
ActiveSheet.Unprotect
Ans = MsgBox("0116 Acme Blade Forming Machine ?", vbYesNo)
            Select Case Ans
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I31] = [G5] * [C31] + [D31]
[L31] = [I31]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0117() '
ActiveSheet.Unprotect
Face = MsgBox("0117 Manual Turrett Lathe" & vbCr & "Face Bore Chamfer ?", vbYesNo)
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
Diameter = InputBox("Outside Diameter Before Machining")
        If Diameter = Cancel Then Exit Sub
        [H4] = Diameter
        [I37] = ((([H2] * [C5]) + [H3] * [C5]) + [H4]) * [C37] + [D37]
        [L37] = [I37]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0128()
ActiveSheet.Unprotect
FinishedBore = InputBox("0128 Boring Mill" & vbCr & "Finished Bore ?")
        If FinishedBore = Cancel Then Exit Sub
        [H2] = FinishedBore
        BoreLength = InputBox("Finished Bore Length")
        If BoreLength = Cancel Then Exit Sub
        [H3] = BoreLength
        [I38] = (([H2] * [C5]) + [H3]) * [C38] + [D38]
        [L38] = [I38]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0131() '
ActiveSheet.Unprotect
Diameter = InputBox("0131 Finished Outside Diameter ?")
    [H2] = Diameter
    If Diameter = Cancel Then Exit Sub
Height = InputBox("0131 Finished Spun Height")
    [H3] = Height
    If Height = Cancel Then Exit Sub
    [I31] = ([H2] * [H3]) / 144 * [C31] + [D31]
    [L31] = [I31]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0311() '
ActiveSheet.Unprotect
Diameter = InputBox("0311 Finished Inside Diameter ?")
        [H2] = Diameter
        If Diameter = Cancel Then Exit Sub
FlangeQty = InputBox("0311 Flange Qty")
        [H3] = FlangeQty
        If FlangeQty = Cancel Then Exit Sub
        If [H3] > 2.1 Then MsgBox "Flange Qty Max is 2": Exit Sub
HoleQty = InputBox("0311 Flange Hole Qty ?")
        [G4] = HoleQty
        If HoleQty = Cancel Then Exit Sub
        [I32] = (([H2] * [T5]) * [C32] + [D32]) * [H3]
        [I32] = [I32] + ([G4] * [C32] + [D32])
        [L32] = [I32]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC0500()
ActiveSheet.Unprotect
If [G5] = "" Then MsgBox "Missing Dimensions Square Feet": Exit Sub
Ans = MsgBox("0500 Balance", vbYesNo)
        Select Case Ans
        Case vbNo
        If vb = No Then Exit Sub
        End Select
[I33] = [G5] * [C33] + [D33]
[L33] = [I33]
Run "EstimatorWB_BringWCTop"
End Sub
