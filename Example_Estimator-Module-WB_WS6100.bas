Attribute VB_Name = "EstimatorWB_WS6100"
Sub WC6103() '6103 Backplate Assemble
HubBolts = InputBox("Qty of Hub Bolts ?" & vbCr & "( 6103 Backplate Assembly )")
        [E2] = HubBolts
Rivets = InputBox("Qty of Rivets ?" & vbCr & " ( 6103 Backplate Assembly )")
        [E3] = Rivets
Huckbolts = InputBox("Qty of Huck Bolts ?" & vbCr & " ( 6103 Backplate Assembly )")
        [E4] = Huckbolts
CoolFins = InputBox("Qty of Cooling Fins ?" & vbCr & " ( 6103 Backplate Assembly )")
        [E5] = CoolFins
E2: If [E2] < 0.01 Then GoTo E3
[H2] = [E2] * [C32] + [D32]
E3: If [E3] < 0.01 Then GoTo E4
[H3] = [E3] * [C32] + [D32]
E4: If [E4] < 0.01 Then GoTo E5
[H4] = [E4] * [C32] + [D32]
E5: If [E5] < 0.01 Then GoTo E6
[H5] = [E5] * [C32] + [D32]
E6:
[I32] = [H2] + [H3] + [H4] + [H5]
[L32] = [I32]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6106() '6106 Drill Press
DrillX = InputBox("Enter Drill Diameter ?" & vbCr & " ( 6106 Drill Press )")
        If DrillX = Cancel Then Exit Sub
        [H2] = DrillX
Qty = InputBox("Enter Drill Qty ?" & vbCr & " ( 6106 Drill Press )")
        If Qty = Cancel Then Exit Sub
        [H3] = Qty
[I33] = (([H2] * [B2]) * [C33] + [D33]) * [H3]
[L33] = [I33]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6109() '6109 Roll 36 Inch
Widthx = InputBox("Enter Flat Blade Width ?" & vbCr & " ( 6109 Roll 36 Inch )")
        If Widthx = Cancel Then Exit Sub
        [H2] = Widthx
Length = InputBox("Enter Flat Blade Length ?" & vbCr & " ( 6109 Roll 36 Inch )")
        If Length = Cancel Then Exit Sub
        [H3] = Length
[I34] = (([H2] * [H3]) / 144) * [C34] + [D34]
[L34] = [I34]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6112() '6112 Acme Blade 5 Stage Forming
Widthx = InputBox("Enter Flat Blade Width ?" & vbCr & " ( 6112 Form Blades )")
        If Widthx = Cancel Then Exit Sub
        [H2] = Widthx
Length = InputBox("Enter Flat Blade Length ?" & vbCr & " ( 6112 Form Blades )")
        If Length = Cancel Then Exit Sub
        [H3] = Length
[I35] = (([H2] * [H3]) / 144) * [C35] + [D35]
[L35] = [I35]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6115() '6115 Federal Press Blade Blank Form
Widthx = InputBox("Enter Flat Blade Width ?" & vbCr & " ( 6115 Blank Form Blades )")
        If Widthx = Cancel Then Exit Sub
        [H2] = Widthx
Length = InputBox("Enter Flat Blade Length ?" & vbCr & " ( 6115 Blank8 Form Blades )")
        If Length = Cancel Then Exit Sub
        [H3] = Length

[I36] = (([H2] * [H3]) / 144) * [C36] + [D36]
[L36] = [I36]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6118() '6118 Federal Press Blank Form Blades Decoil
Widthx = InputBox("Enter Flat Blade Width ?" & vbCr & " ( 6118 Blank Form Blades )")
        If Widthx = Cancel Then Exit Sub
        [H2] = Widthx
Length = InputBox("Enter Flat Blade Length ?" & vbCr & "( 6118 Blank Form Blades )")
        If Length = Cancel Then Exit Sub
        [H3] = Length

[I37] = (([H2] * [H3]) / 144) * [C37] + [D37]
[L37] = [I37]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6121() '6121 Chicago Press Brake 4 Stage Forming
Widthx = InputBox("Enter Flat Blade Width ?" & vbCr & " ( 6121 Blank Form Blades 4 Stage )")
        If Widthx = Cancel Then Exit Sub
        [H2] = Widthx
Length:
Length = InputBox("Enter Flat Blade Length ?" & vbCr & "( 6118 Blank Form Blades 4 Stage )")
        If Length = Cancel Then Exit Sub
        [H3] = Length
[I38] = (([H2] * [H3]) / 144) * [C38] + [D38]
[L38] = [I38]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6124() '6124 Chicago Rivet Air Foil Blades
Rivets = InputBox("Enter Qty of Rivets per Blade ?" & vbCr & "( 6124 Rivet Blades )")
        If Rivets = Cancel Then Exit Sub
        [H4] = Rivets
[I39] = [H4] * [C39] + [D39]
[L39] = [I39]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6127() '6127 Rivet Air Foil Blades
Rivets = InputBox("Enter Qty of Rivets per Blade ?" & vbCr & "( 6127 Rivet Blades )")
        If Rivets = Cancel Then Exit Sub
        [H4] = Rivets
[I40] = [H4] * [C40] + [D40]
[L40] = [I40]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6130() '6130 Aaon Assemble Small Wheels 150 170 185
Blades = InputBox("Enter Qty of Blades ?" & vbCr & " ( 6130 Small Wheel Assembly )")
        If Blades = Cancel Then Exit Sub
        [H2] = Blades
Tabs = InputBox("Enter Qty of Tabs per Blade ?" & vbCr & "( 6130 Small Wheel Asembly )")
        If Tabs = Cancel Then Exit Sub
        [H3] = Tabs
[I43] = ([H3] * [H3]) * [C43] + [D43]
[L43] = [I43]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6133() '6133 Aaon Attach Hub Small Wheels
Bolts = InputBox("Enter Qty of Hub Bolts ?" & vbCr & "( 6133 Attach Hub )")
        If Bolts = Cancel Then Exit Sub
        [H4] = Bolts
[I44] = [H4] * [C44] + [D44]
[L44] = [I44]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6136() '6136 Aaon Balance Small Wheels
If [G2] > 0.01 Then GoTo G3
If [G2] < 0.01 Then GoTo Diameter
G3:
If [G3] > 0.01 Then GoTo Math
If [G3] < 0.01 Then GoTo Diameter
Diameter:
Diameter = InputBox("Enter Wheel Diameter ?" & vbCr & "( 6136 Balance Wheel )")
        If Diameter = Cancel Then Exit Sub
        [G2] = Diameter
Depth = InputBox("Enter Wheel Depth ?" & vbCr & "( 6136 Balance Wheel )")
        If Depth = Cancel Then Exit Sub
        [G3] = Depth
Math:
[I45] = ([G2] + [G3]) * [C45] + [D45]
[L45] = [I45]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6139() 'Package Small Wheel
Diameter = InputBox("Enter Wheel Diameter ?" & vbCr & "( 6139 Package Wheel )")
        If Diameter = Cancel Then Exit Sub
        [G2] = Diameter
Depth = InputBox("Enter Wheel Depth ?" & vbCr & "( 6139 Package Wheel )")
        If Depth = Cancel Then Exit Sub
        [G3] = Depth
[I44] = ([G2] * [G3]) * [C44] + [D44]
[L44] = [I44]
End Sub
Sub WC6142() '6142 Aaon Attach Hub Large Wheels 220 245 270
Bolts = InputBox("Enter Qty of Hub Bolts ?" & vbCr & "( 6142 Attach Hub )")
        If Bolts = Cancel Then Exit Sub
        [H4] = Bolts
[I48] = [H4] * [C48] + [D48]
[L48] = [I48]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6145() '6145 Aaon Assemble Large Wheels
Blades = InputBox("Enter Qty of Blades ?" & vbCr & " ( 6145 Large Wheel Assembly )")
        If Blades = Cancel Then Exit Sub
        [H2] = Blades
Tabs = InputBox("Enter Qty of Tabs per Blade ?" & vbCr & "( 6145 Large Wheel Asembly )")
        If Tabs = Cancel Then Exit Sub
        [H3] = Tabs
[I49] = ([H2] * [H3]) * [C49] + [D49]
[L49] = [I49]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6148() '6148 Aaon Balance Large Wheels
If [G2] > 0.01 Then GoTo G3
If [G2] < 0.01 Then GoTo Diameter
G3:
If [G3] > 0.01 Then GoTo Math
If [G3] < 0.01 Then GoTo Diameter
Diameter:
Diameter = InputBox("Enter Wheel Diameter ?" & vbCr & "( 6138 Balance Wheel )")
        If Diameter = Cancel Then Exit Sub
        [G2] = Diameter
Depth = InputBox("Enter Wheel Depth ?" & vbCr & "( 6138 Balance Wheel )")
        If Depth = Cancel Then Exit Sub
        [G3] = Depth
Math:
[I50] = ([G2] + [G3]) * [C50] + [D50]
[L50] = [I50]
Run "EstimatorWB_BringWCTop"
End Sub
'6151 Aaon Package Large Wheels
Sub WC6151()
Diameter = InputBox("Enter Wheel Diameter ?" & vbCr & "( 6151 Package Wheel )")
        If Diameter = Cancel Then Exit Sub
        [G2] = Diameter
Depth = InputBox("Enter Wheel Depth ?" & vbCr & "( 6151 Package Wheel )")
        If Depth = Cancel Then Exit Sub
        [G3] = Depth
[I48] = ([G2] * [G3]) * [C48] + [D48]
[L48] = [I48]
End Sub
' Hines Balancer
Sub WC6152()
Diameter = InputBox("Enter Wheel Diameter ?" & vbCr & "( 6152 Balance Wheel )")
        If Diameter = Cancel Then Exit Sub
        [G2] = Diameter
Depth = InputBox("Enter Wheel Depth ?" & vbCr & "( 6152 Balance Wheel )")
        If Depth = Cancel Then Exit Sub
        [G3] = Depth
[I53] = ([G2] * [G3]) * [C53] + [D53]
[L53] = [I53]
End Sub
'6154 Assemble Wheel
Sub WC6154()
Blades = InputBox("Enter Qty of Blades ?" & vbCr & " ( 6154 Large Assembly )")
        If Blades = Cancel Then Exit Sub
        [H2] = Blades
Tabs = InputBox("Enter Qty of Tabs per Blade ?" & vbCr & "( 6154 Wheel Asembly )")
        If Tabs = Cancel Then Exit Sub
        [H3] = Tabs
[I54] = ([H2] * [H3]) * [C54] + [D54]
[L54] = [I54]
Run "EstimatorWB_BringWCTop"
End Sub
'6157 Attach Hub
Sub WC6157()
Bolts = InputBox("Enter Qty of Hub Bolts ?" & vbCr & "( 6157 Attach Hub )")
        If Bolts = Cancel Then Exit Sub
        [H4] = Bolts
[I55] = [H4] * [C55] + [D55]
[L55] = [I55]
Run "EstimatorWB_BringWCTop"
End Sub
'Hub Assembly
Sub WC6158()

End Sub
'6160 Balance
Sub WC6160()
Diameter = InputBox("Enter Wheel Diameter ?" & vbCr & "( 6160 Balance Wheel )")
        If Diameter = Cancel Then Exit Sub
        [G2] = Diameter
Depth = InputBox("Enter Wheel Depth ?" & vbCr & "( 6160 Balance Wheel )")
        If Depth = Cancel Then Exit Sub
        [G3] = Depth
[I57] = ([G2] * [G3]) * [C57] + [D57]
[L57] = [I57]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6163() '6163 Package
Diameter = InputBox("Enter Wheel Diameter ?" & vbCr & "( 6163 Package Wheel )")
        If Diameter = Cancel Then Exit Sub
        [G2] = Diameter
Depth = InputBox("Enter Wheel Depth ?" & vbCr & "( 6163 Package Wheel )")
        If Depth = Cancel Then Exit Sub
        [G3] = Depth
[I54] = ([G2] * [G3]) * [C54] + [D54]
[L54] = [I54]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6172() 'Alum Wheel Welding
Ans = MsgBox("6172 Welding" & vbCr & "Linear Continuous Welds", vbYesNo)
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
        [I60] = (([H2] + [H3]) * [C60] + [D60]) * [H4]
        [L60] = [I60]
        [F60] = "Linear Continuous Weld"
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
        [I60] = (((([H5] + [H4]) / 2) * [H3] + [H2]) * [C60] + [D60])
        [L60] = [I60]
        [F60] = "Linear Skip Welds"
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
        [I60] = (([H2] + ([H3] * [T5])) * [C60] + [D60]) * [H4]
        [L60] = [I60]
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
        [I60] = ((((([H5] * [T5] + [H4]) / 2) * [H3] + [H2]) * [C60] + [D60]))
        [L60] = [I60]
        [F60] = "Skip Weld Diameter"
Run "EstimatorWB_BringWCTop"
End Sub
'6181 Rivet
Sub WC6181()
Rivets = InputBox("Enter Qty of Rivets per Blade ?" & vbCr & "( 6181 Rivet Blades )")
        If Rivets = Cancel Then Exit Sub
        [H4] = Rivets
[I61] = [H4] * [C61] + [D61]
[L61] = [I61]
Run "EstimatorWB_BringWCTop"
End Sub
'6183 Rivet
Sub WC6183()
Rivets = InputBox("Enter Qty of Rivets per Blade ?" & vbCr & "( 6183 Rivet Blades )")
        If Rivets = Cancel Then Exit Sub
        [H4] = Rivets
[I62] = [H4] * [C62] + [D62]
[L62] = [I62]
Run "EstimatorWB_BringWCTop"
End Sub
'6190
Sub WC6190()
[J64] = 0.0001
[M64] = 0.0001

Run "EstimatorWB_BringWCTop"
End Sub

'Wheels Copy to Crates
Sub Wheels_CopytoCrates()
Windows("Estimator.03.xlsb").Activate
Application.ScreenUpdating = False
Sheets("Crates").Select
ActiveSheet.Unprotect
Sheets("Wheels").Select
Range("C7:AA18").Copy
Sheets("Crates").Select
Range("C7:AA18").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Wheels").Select
Range("C2:C5").Copy
Sheets("Crates").Select
Range("C2:C5").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Wheels").Select
Range("C3:J3").Copy
Sheets("Crates").Select
Range("C3:J3").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Wheels").Select
Range("G5:N5").Copy
Sheets("Crates").Select
Range("G5:N5").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Crates").Select
Application.ScreenUpdating = True
End Sub
'Copy Assembly Data to Options
Sub Wheels_Copy_from_Welding()
Windows("Estimator.03.xlsb").Activate
Application.ScreenUpdating = False
Sheets("Wheels").Select
ActiveSheet.Unprotect
Sheets("Welding").Select
Range("C7:AA18").Copy
Sheets("Wheels").Select
Range("C7:AA18").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Welding").Select
Range("C2:C5").Copy
Sheets("Wheels").Select
Range("C2:C5").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Welding").Select
Range("C3:J3").Copy
Sheets("Wheels").Select
Range("C3:J3").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Welding").Select
Range("G5:N5").Copy
Sheets("Wheels").Select
Range("G5:N5").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
Sheets("Welding").Select
Range("C3").Select
Application.ScreenUpdating = True
Sheets("Wheels").Select
Range("C3").Select
End Sub






