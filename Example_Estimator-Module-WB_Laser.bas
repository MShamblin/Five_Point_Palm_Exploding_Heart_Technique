Attribute VB_Name = "EstimatorWB_Laser"
Sub FabricationWB_WC1200_1230()
Range("AC30:AC100").ClearContents
Ans = MsgBox("Round Holes", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vbNo Then GoTo Dimples
        End Select
Hole1:
Hole1 = InputBox("1st Hole Diameter")
If Hole1 = "" Then GoTo Dimples
[AC30] = Hole1
HoleQty1 = InputBox("1st Hole Qty")
If HoleQty1 = "" Then GoTo Hole1
[AC31] = HoleQty1
Hole2:
Hole2 = InputBox("2nd Hole Diameter")
If Hole2 = "" Then GoTo Dimples
[AC32] = Hole2
HoleQty2 = InputBox("2nd Hole Qty")
If HoleQty2 = "" Then GoTo Hole2
[AC33] = HoleQty2
Hole3:
Hole3 = InputBox("3rd Hole Diameter")
If Hole3 = "" Then GoTo Dimples
[AC34] = Hole3
HoleQty3 = InputBox("3rd Hole Qty")
If HoleQty3 = "" Then GoTo Hole3
[AC35] = HoleQty3
Hole4:
Hole4 = InputBox("4th Hole Diameter")
If Hole4 = "" Then GoTo Dimples
[AC36] = Hole4
HoleQty4 = InputBox("4th Hole Qty")
If HoleQty4 = "" Then GoTo Hole4
[AC37] = HoleQty4
Hole5:
Hole5 = InputBox("5th Hole Diameter")
If Hole5 = "" Then GoTo Dimples
[AC38] = Hole5
HoleQty5 = InputBox("5th Hole Qty")
If HoleQty5 = "" Then GoTo Hole5
[AC39] = HoleQty5
Hole6:
Hole6 = InputBox("6th Hole Diameter")
If Hole6 = "" Then GoTo Dimples
[AC40] = Hole6
HoleQty6 = InputBox("6th Hole Qty")
If HoleQty6 = "" Then GoTo Hole6
[AC41] = HoleQty6
Hole7:
Hole7 = InputBox("7th Hole Diameter")
If Hole7 = "" Then GoTo Dimples
[AC42] = Hole7
HoleQty7 = InputBox("7th Hole Qty")
If HoleQty7 = "" Then GoTo Hole7
[AC43] = HoleQty7
Hole8:
Hole8 = InputBox("8th Hole Diameter")
If Hole8 = "" Then GoTo Dimples
[AC44] = Hole8
HoleQty8 = InputBox("8th Hole Qty")
If HoleQty8 = "" Then GoTo Hole8
[AC45] = HoleQty8

Dimples:
'Ans = MsgBox("Dimples", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        Case vbNo
'        If vbNo Then GoTo Slot
'        End Select
'Dimple1:
'[AC47] = 0.1
'DimpleQty1 = InputBox("1st Dimple Qty")
'If DimpleQty1 = "" Then GoTo Slot
'[AC48] = DimpleQty1
'Dimples2:
'[AC49] = 0.1
'DimpleQty2 = InputBox("2nd Dimple Qty")
'If DimpleQty2 = "" Then GoTo Slot
'[AC50] = DimpleQty2

Slot:
Ans = MsgBox("Slots", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vbNo Then GoTo Square
        End Select
Slot1:
SlotRadius1 = InputBox("1st Slot Radius")
If SlotRadius1 = "" Then GoTo Square
[AC52] = SlotRadius1
SlotLength1 = InputBox("1st Slot Length")
If SlotLength1 = "" Then GoTo Slot1
[AC53] = SlotLength1
SlotQty1 = InputBox("1st Slot Qty")
If SlotQty1 = "" Then GoTo Slot1
[AC54] = SlotQty1
Slot2:
SlotRadius2 = InputBox("2nd Slot Radius")
If SlotRadius2 = "" Then GoTo Square
[AC55] = SlotRadius2
SlotLength2 = InputBox("2nd Slot Length")
If SlotLength2 = "" Then GoTo Slot2
[AC56] = SlotLength2
SlotQty2 = InputBox("2nd Slot Qty")
If SlotQty2 = "" Then GoTo Slot2
[AC57] = SlotQty2
Slot3:
SlotRadius3 = InputBox("3rd Slot Radius")
If SlotRadius3 = "" Then GoTo Square
[AC58] = SlotRadius3
SlotLength3 = InputBox("3rd Slot Length")
If SlotLength3 = "" Then GoTo Slot3
[AC59] = SlotLength3
SlotQty3 = InputBox("3rd Slot Qty")
If SlotQty3 = "" Then GoTo Slot3
[AC60] = SlotQty3
Slot4:
SlotRadius4 = InputBox("4th Slot Radius")
If SlotRadius4 = "" Then GoTo Square
[AC61] = SlotRadius4
SlotLength4 = InputBox("4th Slot Length")
If SlotLength4 = "" Then GoTo Slot4
[AC62] = SlotLength4
SlotQty4 = InputBox("4th Slot Qty")
If SlotQty4 = "" Then GoTo Slot4
[AC63] = SlotQty4
Slot5:
SlotRadius5 = InputBox("5th Slot Radius")
If SlotRadius5 = "" Then GoTo Square
[AC64] = SlotRadius5
SlotLength5 = InputBox("5th Slot Length")
If SlotLength5 = "" Then GoTo Slot5
[AC65] = SlotLength5
SlotQty5 = InputBox("5th Slot Qty")
If SlotQty5 = "" Then GoTo Slot5
[AC66] = SlotQty5

Square:
Ans = MsgBox("Square", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vbNo Then GoTo Linear
        End Select
Square1:
Square1 = InputBox("1st Square Size")
If Square1 = "" Then GoTo Linear
[AC68] = Square1
SquareQty1 = InputBox("1st Square Qty")
If SquareQty1 = "" Then GoTo Square1
[AC69] = SquareQty1
Square2:
Square2 = InputBox("2nd Square Size")
If Square2 = "" Then GoTo Linear
[AC70] = Square2
SquareQty2 = InputBox("2nd Square Qty")
If SquareQty2 = "" Then GoTo Square2
[AC71] = SquareQty2

Linear:
'Ans = MsgBox("Linear", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        Case vbNo
'        If vbNo Then GoTo Miter
'        End Select
'Linear1:
'Linear1 = InputBox("1st Linear Length")
'If Linear1 = "" Then GoTo Miter
'[AC73] = Linear1
'LinearQty1 = InputBox("1st Linear Qty")
'If LinearQty1 = "" Then GoTo Linear1
'[AC74] = LinearQty1
'Linear2:
'Linear2 = InputBox("2nd Linear Length")
'If Linear2 = "" Then GoTo Miter
'[AC75] = Linear2
'LinearQty2 = InputBox("2nd Linear Qty")
'If LinearQty2 = "" Then GoTo Linear1
'[AC76] = LinearQty2

Miter:
'Ans = MsgBox("Miters", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        Case vbNo
'        If vbNo Then GoTo TabA
'        End Select
'Miter1:
'MiterX1 = InputBox("1st Miter X Length")
'if MiterX1 = "" Then GoTo TabA
'[AC78] = MiterX1
'MiterY1 = InputBox("1st Miter Y Length")
'If MiterY1 = "" Then GoTo TabA
'[AC79] = MiterY1
'MiterQty1 = InputBox("1st Miter Qty")
'If MiterQty1 = "" Then GoTo TabA
'[AC80] = MiterQty1
'Miter2:
'MiterX2 = InputBox("2nd Miter X Length")
'If MiterX2 = "" Then GoTo TabA
'[AC81] = MiterX2
'MiterY2 = InputBox("2nd Miter Y Length")
'If MiterY2 = "" Then GoTo TabA
'[AC82] = MiterY2
'MiterQty2 = InputBox("2nd Miter Qty")
'If MiterQty2 = "" Then GoTo TabA
'[AC83] = MiterQty2

TabA:
'Ans = MsgBox("Tabs", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        Case vbNo
'        If vbNo Then GoTo OutsideDiameter
'        End Select
'Tab1:
'TabWidth1 = InputBox("1st Tab Width")
'If TabWidth1 = "" Then GoTo OutsideDiameter
'[AC85] = TabWidth1
'TabLenght1 = InputBox("1st Tab Length")
'If TabLenght1 = "" Then GoTo Tab1
'[AC86] = TabLenght1
'TabQty1 = InputBox("1st Tab Qty")
'If TabQty1 = "" Then GoTo Tab1
'[AC87] = TabQty1
'Tab2:
'TabWidth2 = InputBox("2nd Tab Width")
'If TabWidth2 = "" Then GoTo OutsideDiameter
'[AC88] = TabWidth2
'TabLength2 = InputBox("2nd Tab Length")
'If TabLength2 = "" Then GoTo Tab2
'[AC89] = TabLength2
'TabQty2 = InputBox("2nd Tab Qty")
'If TabQty2 = "" Then GoTo Tab2
'[AC90] = TabQty2

OutsideDiameter:
'Ans = MsgBox("OutSide Diameter", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        Case vbNo
'        If vbNo Then GoTo InSideDiameter
'        End Select
'OutsideDiameter = InputBox("Outside Diameter")
'If OutsideDiameter = "" Then GoTo InSideDiameter
'[AC92] = OutsideDiameter
'OutsideDiameterQty = InputBox("Qty Outside Diameter")
'If OutsideDiameter = "" Then GoTo InSideDiameter
'[AC93] = OutsideDiameterQty

InSideDiameter:
'Ans = MsgBox("InSide Diameter", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        Case vbNo
'        If vbNo Then GoTo Primeter
'        End Select
'InSideDiameter = InputBox("InSide Diameter")
'If InSideDiameter = "" Then GoTo Primeter
'[AC94] = InSideDiameter
'InSideDiameterQty = InputBox("Qty InSide Diameter")
'If InSideDiameter = "" Then GoTo Primeter
'[AC95] = InSideDiameterQty

Primeter:
Ans = MsgBox("*** Perimeter ***", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vbNo Then GoTo Reposition
        End Select
[AC94] = ([G2] + [G2]) + ([G3] + [G3])

Reposition:
'Ans = MsgBox("Reposition", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        Case vbNo
'        If vbNo Then GoTo Decimal1
'        End Select
'[AC95] = 0.0834

Decimal1:
[AC96] = [G4]
Exit Sub
End Sub


