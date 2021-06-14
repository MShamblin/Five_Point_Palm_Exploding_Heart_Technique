Attribute VB_Name = "EstimatorWB_WS3100"
Sub WeldingWS_AddWelds()
ActiveSheet.Unprotect

[I27] = [I8] + [I9] + [I10] + [I11] + [I12] + [I13] + [I14] + [I15] + [I16] + [I17] + [I18] + [I19] + [I20] + [I21] + [I22] + [I23] + [I24] + [I25]
[L27] = [I27]
Range("B27:N27").Copy
Range("B27:N27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Range("B8:N25").ClearContents
Range("B27:N27").Copy
Range("B8:N8").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
ActiveSheet.Protect
End Sub
Sub WC3101() 'Ok 3101 Welding
Ans = MsgBox("3101 Welding" & vbCr & "Linear Continuous Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo LinearContWeld
        Case vbNo
        If vb = No Then GoTo SkipWeld
        End Select
LinearContWeld:
LCWW:
        LCWW = InputBox("Weld Width")
        [H2] = LCWW
        If [H2] = "" Then Exit Sub
LCWL:
        LCWL = InputBox("Weld Length")
        [H3] = LCWL
        If [H3] = "" Then Exit Sub
LCWQ:
        LCWQ = InputBox("Weld Qty")
        [H4] = LCWQ
        If [H4] = "" Then Exit Sub
        [I36] = (([H2] + [H3]) * [C36] + [D36]) * [H4]
        [L36] = [I36]
        [F36] = "Linear Continuous Weld"
Run "EstimatorWB_BringWCTop"
Exit Sub
SkipWeld:
Ans = MsgBox("Linear Skip Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo SkipWL
        Case vbNo
        If vb = No Then GoTo DiaContWeld
        End Select
SkipWL:
        SWL = InputBox("Enter Skip Weld Width")
        [H2] = SWL
        If [H2] = "" Then Exit Sub
SWL:
        SWL = InputBox("Enter Skip Weld Length")
        [H3] = SWL
        If [H3] = "" Then Exit Sub
SWS:
        SWS = InputBox("Enter Skip Weld Spacing")
        [H4] = SWS
        If [H4] = "" Then Exit Sub
SWPL:
        SWPL = InputBox("Enter Skip Weld Part Length")
        [H5] = SWPL
        If [H5] = "" Then Exit Sub
EndThis:
        [I36] = (((([H5] + [H4]) / 2) * [H3] + [H2]) * [C36] + [D36])
        [L36] = [I36]
        [F36] = "Linear Skip Welds"
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaContWeld:
Ans = MsgBox("Diameter Continuous Weld", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DCWW
        Case vbNo
        If vb = No Then GoTo DiaSkipWeld
        End Select
DCWW:
        DCWW = InputBox("Enter Continuous Weld Width")
        [H2] = DCWW
        If [H2] = "" Then Exit Sub
DCWL:
        DCWL = InputBox("Enter Continuous Weld Diameter")
        [H3] = DCWL
        If [H3] = "" Then Beep: MsgBox "Missing Data": Exit Sub
DCWQ:
        DCWQ = InputBox("Enter Continuous Weld Qty")
        [H4] = DCWQ
        If [H4] = "" Then Exit Sub
        [I36] = (([H2] + ([H3] * [D5])) * [C36] + [D36]) * [H4]
        [L36] = [I36]
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaSkipWeld:
Ans = MsgBox("Skip Weld Diameter", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DSWW
        Case vbNo
        If vb = No Then Beep: MsgBox "Missing Data": Exit Sub
        End Select
DSWW:
        DSWW = InputBox("Enter Skip Weld Width")
        [H2] = DSWW
DSWL:
        DSWL = InputBox("Enter Skip Weld Length")
        [H3] = DSWL
        If DSWL = "" Then Exit Sub
SWD:
        SWD = InputBox("Enter Skip Weld Spacing")
        [H4] = SWD
DSWS:
        DSWS = InputBox("Enter Skip Weld Diameter")
        [H5] = DSWS
SWDia:
        [I36] = ((((([H5] * [D5] + [H4]) / 2) * [H3] + [H2]) * [C36] + [D36]))
        [L36] = [I36]
        [F36] = "Skip Weld Diameter"
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3102() 'Ok 3102 Wheel Welding Aluminum
QtyBlades:
        QB = InputBox("3102 Wheel Welding" & vbCr & "Enter Qty of Blades")
        [H2] = QB
        If [H2] = "" Then Exit Sub
WeldWidth:
        WW = InputBox("Enter Weld Width")
        [H3] = WW
        If [H3] = "" Then Exit Sub
WeldLength:
        WL = InputBox("Enter Weld Length")
        [H4] = WL
        If [H4] = "" Then Exit Sub
WeldQtyBlade:
        WQB = InputBox("Enter Qty of Welds per Blade")
        [H5] = WQB
        If [H5] = "" Then Exit Sub
        [I37] = ((([H2] + [H3]) * [C37] + [D37]) * [H4]) * [H5]
        [L37] = [I37]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3103() 'Ok 3103 Wheel Welding Steel
QtyBlades:
        QB = InputBox("3102 Wheel Welding" & vbCr & "Enter Qty of Blades")
        [H2] = QB
        If [H2] = "" Then Exit Sub
WeldWidth:
        WW = InputBox("Enter Weld Width")
        [H3] = WW
        If [H3] = "" Then Exit Sub
WeldLength:
        WL = InputBox("Enter Weld Length")
        [H4] = WL
        If [H4] = "" Then Exit Sub
WeldQtyBlade:
        WQB = InputBox("Enter Qty of Welds per Blade")
        [H5] = WQB
        If [H5] = "" Then Exit Sub
        [I38] = ((([H2] + [H3]) * [C38] + [D38]) * [H4]) * [H5]
        [L38] = [I38]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3104() 'Ok 3104 Weld Small Frames
FS = InputBox("3104 Small Frame Welding" & vbCr & "Frame Size")
        [H2] = FS
        If [H2] = "" Then Exit Sub
        [I39] = [H2] * [C39] + [D39]
        [L39] = [I39]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3105() 'Ok 3105 Weld Large Frames 39-72
FS = InputBox("3105 Large Frame Welding" & vbCr & "Frame Size")
        [H2] = FS
        If [H2] = "" Then Exit Sub
        [I40] = [H2] * [C40] + [D40]
        [L40] = [I40]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3106() 'Ok 3106 Welding
Ans = MsgBox("3106 Welding" & vbCr & "Linear Continuous Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo LinearContWeld
        Case vbNo
        If vb = No Then GoTo SkipWeld
        End Select
LinearContWeld:
LCWW:
        LCWW = InputBox("Weld Width")
        [H2] = LCWW
        If [H2] = "" Then Exit Sub
LCWL:
        LCWL = InputBox("Weld Length")
        [H3] = LCWL
        If [H3] = "" Then Exit Sub
LCWQ:
        LCWQ = InputBox("Weld Qty")
        [H4] = LCWQ
        If [H4] = "" Then Exit Sub
        [I41] = (([H2] + [H3]) * [C41] + [D41]) * [H4]
        [L41] = [I41]
        [F41] = "Linear Continuous Weld"
Run "EstimatorWB_BringWCTop"
Exit Sub
SkipWeld:
Ans = MsgBox("Linear Skip Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo SkipWL
        Case vbNo
        If vb = No Then GoTo DiaContWeld
        End Select
SkipWL:
        SWL = InputBox("Enter Skip Weld Width")
        [H2] = SWL
        If [H2] = "" Then Exit Sub
SWL:
        SWL = InputBox("Enter Skip Weld Length")
        [H3] = SWL
        If [H3] = "" Then Exit Sub
SWS:
        SWS = InputBox("Enter Skip Weld Spacing")
        [H4] = SWS
        If [H4] = "" Then Exit Sub
SWPL:
        SWPL = InputBox("Enter Skip Weld Part Length")
        [H5] = SWPL
        If [H5] = "" Then Exit Sub
EndThis:
        [I41] = (((([H5] + [H4]) / 2) * [H3] + [H2]) * [C41] + [D41])
        [L41] = [I41]
        [F41] = "Linear Skip Welds"
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaContWeld:
Ans = MsgBox("Diameter Continuous Weld", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DCWW
        Case vbNo
        If vb = No Then GoTo DiaSkipWeld
        End Select
DCWW:
        DCWW = InputBox("Enter Continuous Weld Width")
        [H2] = DCWW
        If [H2] = "" Then Exit Sub
DCWL:
        DCWL = InputBox("Enter Continuous Weld Diameter")
        [H3] = DCWL
        If [H3] = "" Then Exit Sub
DCWQ:
        DCWQ = InputBox("Enter Continuous Weld Qty")
        [H4] = DCWQ
        If [H4] = "" Then Exit Sub
        [I41] = (([H2] + ([H3] * [T5])) * [C41] + [D41]) * [H4]
        [L41] = [I41]
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaSkipWeld:
Ans = MsgBox("Skip Weld Diameter", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DSWW
        Case vbNo
        If vb = No Then Exit Sub
        End Select
DSWW:
        DSWW = InputBox("Enter Skip Weld Width")
        [H2] = DSWW
DSWL:
        DSWL = InputBox("Enter Skip Weld Length")
        [H3] = DSWL
        If DSWL = "" Then Exit Sub
SWD:
        SWD = InputBox("Enter Skip Weld Spacing")
        [H4] = SWD
DSWS:
        DSWS = InputBox("Enter Skip Weld Diameter")
        [H5] = DSWS
SWDia:
        [I41] = ((((([H5] * [T5] + [H4]) / 2) * [H3] + [H2]) * [C41] + [D41]))
        [L41] = [I41]
        [F41] = "Skip Weld Diameter"
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3107() 'Ok 3107 Welding
ActiveSheet.Unprotect
Ans = MsgBox("3107 Welding" & vbCr & "Linear Continuous Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo LinearContWeld
        Case vbNo
        If vb = No Then GoTo SkipWeld
        End Select
LinearContWeld:
LCWW:
        LCWW = InputBox("Weld Width")
        [H2] = LCWW
        If [H2] = "" Then Exit Sub
LCWL:
        LCWL = InputBox("Weld Length")
        [H3] = LCWL
        If [H3] = "" Then Exit Sub
LCWQ:
        LCWQ = InputBox("Weld Qty")
        [H4] = LCWQ
        If [H4] = "" Then Exit Sub
        [I42] = (([H2] + [H3]) * [C42] + [D42]) * [H4]
        [L42] = [I42]
        [F42] = "Linear Continuous Weld"
Run "EstimatorWB_BringWCTop"
Exit Sub
SkipWeld:
Ans = MsgBox("Linear Skip Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo SkipWL
        Case vbNo
        If vb = No Then GoTo DiaContWeld
        End Select
SkipWL:
        SWL = InputBox("Enter Skip Weld Width")
        [H2] = SWL
        If [H2] = "" Then Exit Sub
SWL:
        SWL = InputBox("Enter Skip Weld Length")
        [H3] = SWL
        If [H3] = "" Then Exit Sub
SWS:
        SWS = InputBox("Enter Skip Weld Spacing")
        [H4] = SWS
        If [H4] = "" Then Exit Sub
SWPL:
        SWPL = InputBox("Enter Skip Weld Part Length")
        [H5] = SWPL
        If [H5] = "" Then Exit Sub
EndThis:
        [I42] = (((([H5] + [H4]) / 2) * [H3] + [H2]) * [C42] + [D42])
        [L42] = [I42]
        [F42] = "Linear Skip Welds"
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaContWeld:
Ans = MsgBox("Diameter Continuous Weld", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DCWW
        Case vbNo
        If vb = No Then GoTo DiaSkipWeld
        End Select
DCWW:
        DCWW = InputBox("Enter Continuous Weld Width")
        [H2] = DCWW
        If [H2] = "" Then Exit Sub
DCWL:
        DCWL = InputBox("Enter Continuous Weld Diameter")
        [H3] = DCWL
        If [H3] = "" Then Exit Sub
DCWQ:
        DCWQ = InputBox("Enter Continuous Weld Qty")
        [H4] = DCWQ
        If [H4] = "" Then Exit Sub
        [I42] = (([H2] + ([H3] * [D5])) * [C42] + [D42]) * [H4]
        [L42] = [I42]
[F42] = "Diameter Continuous Weld"
ActiveSheet.Protect
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaSkipWeld:
Ans = MsgBox("Skip Weld Diameter", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DSWW
        Case vbNo
        If vb = No Then Exit Sub
        End Select
DSWW:
        DSWW = InputBox("Enter Skip Weld Width")
        [H2] = DSWW
DSWL:
        DSWL = InputBox("Enter Skip Weld Length")
        [H3] = DSWL
        If DSWL = "" Then Exit Sub
SWD:
        SWD = InputBox("Enter Skip Weld Spacing")
        [H4] = SWD
DSWS:
        DSWS = InputBox("Enter Skip Weld Diameter")
        [H5] = DSWS
SWDia:
        [I42] = ((((([H5] * [T5] + [H4]) / 2) * [H3] + [H2]) * [C42] + [D42]))
        [L42] = [I42]
        [F42] = "Skip Weld Diameter"
ActiveSheet.Protect
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3109() 'Ok 3109 Spot Weld
            SW = InputBox("3109 Spot Weld" & vbCr & "Spot Weld Qty ?")
            [H2] = SW
            If SW = "" Then Exit Sub
            [I43] = ([H2] * [C43]) + [D43]
            [L43] = [I43]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3110() 'Ok 3110 Spot Weld
SW = InputBox("3110 Spot Weld" & vbCr & "Enter Spot Weld Qty ?")
            [H2] = SW
            If SW = "" Then Exit Sub
            [I44] = ([H2] * [C44]) + [D44]
            [L44] = [I44]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3112() 'Ok Seam Weld
WW: WW = InputBox("3112 Seam Welder ?" & vbCr & "Weld Width ?")
    [H2] = WW
    If [H2] > 0.01 Then GoTo WL
    If vb = Cancel Then Exit Sub
WL: WL = InputBox("Weld Length ?")
    [H3] = WL
    If [H3] > 0.01 Then GoTo WQ
    If vb = Cancel Then Exit Sub
WQ: WQ = InputBox("Weld Qty ?")
    [H2] = WQ
    If [H2] > 0.01 Then GoTo Run
    If vb = Cancel Then Exit Sub
Run:
    [I77] = ((([H2] + [H3]) * [C77]) + [D77]) * [H2]
    [L77] = [I77]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3113() ' 3113 Seam Weld
WW: WW = InputBox("3113 Seam Welder ?" & vbCr & "Weld Width ?")
    [H2] = WW
    If [H2] > 0.01 Then GoTo WL
    If vb = Cancel Then Exit Sub
WL: WL = InputBox("Weld Length ?")
    [H3] = WL
    If [H3] > 0.01 Then GoTo WQ
    If vb = Cancel Then Exit Sub
WQ: WQ = InputBox("Weld Qty ?")
    [H2] = WQ
    If [H2] > 0.01 Then GoTo Run
    If vb = Cancel Then Exit Sub
Run:
    [I78] = ((([H2] + [H3]) * [C78]) + [D78]) * [H2]
    [L78] = [I78]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3114() 'Ok 3114 Auto Seam Weld
WW: WW = InputBox("3114 Heliarc Seam Welder ?" & vbCr & "Weld Width ?")
    [H2] = WW
    If [H2] > 0.01 Then GoTo WL
    If vb = Cancel Then Exit Sub
WL: WL = InputBox("Weld Length ?")
    [H3] = WL
    If [H3] > 0.01 Then GoTo WQ
    If vb = Cancel Then Exit Sub
WQ: WQ = InputBox("Weld Qty ?")
    [H2] = WQ
    If [H2] > 0.01 Then GoTo Run
    If vb = Cancel Then Exit Sub
Run:
    [I79] = ((([H2] + [H3]) * [C79]) + [D79]) * [H2]
    [L79] = [I79]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3115() 'Ok 3115 Date Code
DateCode = MsgBox("3115 Date Code", vbOKCancel)
        Select Case DateCode
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
            [H2] = 1
            [I45] = ([H2] * [C45] + [D45])
            [L45] = [I45]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3116() 'Ok 3116 Date Code
Ans2 = MsgBox("3116 Weld Blades to Hub", vbOKCancel)
        Select Case Ans2
        Case vbCancel
        If vb = Cancel Then Exit Sub
        End Select
WeldWidth = InputBox("Weld Width ?")
        [H2] = WeldWidth
        If WeldWidth = "" Then Exit Sub
WeldLength = InputBox("Weld Length per Blade ?")
        [H3] = WeldLength
        If WeldLength = "" Then Exit Sub
BladeQty = InputBox("Blade Qty ?")
        [H4] = BladeQty
        If BladeQty = "" Then Exit Sub
        [I46] = (([H2] + [H3]) / 12) * [C46] + [D46]
        [L46] = [I46]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3117() ' Weld
Ans = MsgBox("3117 Welding" & vbCr & "Linear Continuous Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo LinearContWeld
        Case vbNo
        If vb = No Then GoTo SkipWeld
        End Select
LinearContWeld:
LCWW:
        LCWW = InputBox("Weld Width")
        [H2] = LCWW
        If [H2] = "" Then Exit Sub
LCWL:
        LCWL = InputBox("Weld Length")
        [H3] = LCWL
        If [H3] = "" Then Exit Sub
LCWQ:
        LCWQ = InputBox("Weld Qty")
        [H4] = LCWQ
        If [H4] = "" Then Exit Sub
        [I47] = (([H2] + [H3]) * [C47] + [D47]) * [H4]
        [L47] = [I47]
        [F47] = "Linear Continuous Weld"
Run "EstimatorWB_BringWCTop"
Exit Sub
SkipWeld:
Ans = MsgBox("Linear Skip Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo SkipWL
        Case vbNo
        If vb = No Then GoTo DiaContWeld
        End Select
SkipWL:
        SWL = InputBox("Enter Skip Weld Width")
        [H2] = SWL
        If [H2] = "" Then Exit Sub
SWL:
        SWL = InputBox("Enter Skip Weld Length")
        [H3] = SWL
        If [H3] = "" Then Exit Sub
SWS:
        SWS = InputBox("Enter Skip Weld Spacing")
        [H4] = SWS
        If [H4] = "" Then Exit Sub
SWPL:
        SWPL = InputBox("Enter Skip Weld Part Length")
        [H5] = SWPL
        If [H5] = "" Then Exit Sub
EndThis:
        [I47] = (((([H5] + [H4]) / 2) * [H3] + [H2]) * [C47] + [D47])
        [L47] = [I47]
        [F47] = "Linear Skip Welds"
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaContWeld:
Ans = MsgBox("Diameter Continuous Weld", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DCWW
        Case vbNo
        If vb = No Then GoTo DiaSkipWeld
        End Select
DCWW:
        DCWW = InputBox("Enter Continuous Weld Width")
        [H2] = DCWW
        If [H2] = "" Then Exit Sub
DCWL:
        DCWL = InputBox("Enter Continuous Weld Diameter")
        [H3] = DCWL
        If [H3] = "" Then Exit Sub
DCWQ:
        DCWQ = InputBox("Enter Continuous Weld Qty")
        [H4] = DCWQ
        If [H4] = "" Then Exit Sub
        [I47] = (([H2] + ([H3] * [D5])) * [C47] + [D47]) * [H4]
        [L47] = [I47]
[F47] = "Diameter Continuous Weld"
ActiveSheet.Protect
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaSkipWeld:
Ans = MsgBox("Skip Weld Diameter", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DSWW
        Case vbNo
        If vb = No Then Exit Sub
        End Select
DSWW:
        DSWW = InputBox("Enter Skip Weld Width")
        [H2] = DSWW
DSWL:
        DSWL = InputBox("Enter Skip Weld Length")
        [H3] = DSWL
        If DSWL = "" Then Exit Sub
SWD:
        SWD = InputBox("Enter Skip Weld Spacing")
        [H4] = SWD
DSWS:
        DSWS = InputBox("Enter Skip Weld Diameter")
        [H5] = DSWS
SWDia:
        [I47] = ((((([H5] * [T5] + [H4]) / 2) * [H3] + [H2]) * [C47] + [D47]))
        [L47] = [I47]
        [F47] = "Skip Weld Diameter"
ActiveSheet.Protect
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3118() 'Ok 3118 Welding
Ans = MsgBox("3118 Welding" & vbCr & "Linear Continuous Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo LinearContWeld
        Case vbNo
        If vb = No Then GoTo SkipWeld
        End Select
LCWW:
        LCWW = InputBox("Weld Width")
        [H2] = LCWW
        If [H2] = "" Then Exit Sub
LCWL:
        LCWL = InputBox("Weld Length")
        [H3] = LCWL
        If [H3] = "" Then Exit Sub
LCWQ:
        LCWQ = InputBox("Weld Qty")
        [H4] = LCWQ
        If [H4] = "" Then Exit Sub
        [I48] = (([H2] + [H3]) * [C48] + [D48]) * [H4]
        [L48] = [I48]
        [F48] = "Linear Continuous Weld"
Run "EstimatorWB_BringWCTop"
Exit Sub
SkipWeld:
Ans = MsgBox("Linear Skip Welds", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo SkipWL
        Case vbNo
        If vb = No Then GoTo DiaContWeld
        End Select
SkipWL:
        SWL = InputBox("Enter Skip Weld Width")
        [H2] = SWL
        If [H2] = "" Then Exit Sub
SWL:
        SWL = InputBox("Enter Skip Weld Length")
        [H3] = SWL
        If [H3] = "" Then Exit Sub
SWS:
        SWS = InputBox("Enter Skip Weld Spacing")
        [H4] = SWS
        If [H4] = "" Then Exit Sub
SWPL:
        SWPL = InputBox("Enter Skip Weld Part Length")
        [H5] = SWPL
        If [H5] = "" Then Exit Sub
EndThis:
        [I48] = (((([H5] + [H4]) / 2) * [H3] + [H2]) * [C48] + [D48])
        [L48] = [I48]
        [F48] = "Linear Skip Welds"
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaContWeld:
Ans = MsgBox("Diameter Continuous Weld", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DCWW
        Case vbNo
        If vb = No Then GoTo DiaSkipWeld
        End Select
DCWW:
        DCWW = InputBox("Enter Continuous Weld Width")
        [H2] = DCWW
        If [H2] = "" Then Exit Sub
DCWL:
        DCWL = InputBox("Enter Continuous Weld Diameter")
        [H3] = DCWL
        If [H3] = "" Then Exit Sub
DCWQ:
        DCWQ = InputBox("Enter Continuous Weld Qty")
        [H4] = DCWQ
        If [H4] = "" Then Exit Sub
        [I48] = (([H2] + ([H3] * [D5])) * [C48] + [D48]) * [H4]
        [L48] = [I48]
[F48] = "Diameter Continuous Weld"
ActiveSheet.Protect
Run "EstimatorWB_BringWCTop"
Exit Sub
DiaSkipWeld:
Ans = MsgBox("Skip Weld Diameter", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo DSWW
        Case vbNo
        If vb = No Then Exit Sub
        End Select
DSWW:
        DSWW = InputBox("Enter Skip Weld Width")
        [H2] = DSWW
DSWL:
        DSWL = InputBox("Enter Skip Weld Length")
        [H3] = DSWL
        If DSWL = "" Then Exit Sub
SWD:
        SWD = InputBox("Enter Skip Weld Spacing")
        [H4] = SWD
DSWS:
        DSWS = InputBox("Enter Skip Weld Diameter")
        [H5] = DSWS
SWDia:
        [I48] = ((((([H5] * [T5] + [H4]) / 2) * [H3] + [H2]) * [C48] + [D48]))
        [L48] = [I48]
        [F48] = "Skip Weld Diameter"
ActiveSheet.Protect
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC3119() 'Scales
Scales = InputBox("3119 Scales Qty of Blades or Cheeks")
        [H2] = Scales
        If [H2] = "" Then Exit Sub
        [I49] = [H2] * [C49] + [D49]
        [L49] = [I49]
Run "EstimatorWB_BringWCTop"
End Sub
