Attribute VB_Name = "CrateWS"
Sub CrateWS_GetWeldWSdata()
Application.ScreenUpdating = False
    Sheets("WeldingWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("E2:H5").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("WeldingWS").Select
    Range("B8:Z25").Select
    Selection.Copy
    Sheets("WeldingWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("weldingWS").Select
    Range("F2").Select
    Sheets("CrateWS").Select
    Range("G2").Select
    Application.ScreenUpdating = True
End Sub

Sub CrateWS_GetWheelPropWSdata()
Application.ScreenUpdating = False
    Sheets("WheelPropWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("E2:H5").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("WheelPropWS").Select
    Range("B8:Z25").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("WheelPropWS").Select
    Range("F2").Select
    Sheets("CrateWS").Select
    Range("G2").Select
    Application.ScreenUpdating = True
End Sub
Sub CrateWS_GetWelding()
Application.ScreenUpdating = False
    Sheets("WeldingWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("E2:H5").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("WeldingWS").Select
    Range("B8:Z25").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("WeldingWS").Select
    Range("F2").Select
    Sheets("CrateWS").Select
    Range("G2").Select
    Application.ScreenUpdating = True
End Sub
Sub CrateWS_GetFAB()
Application.ScreenUpdating = False
    Sheets("FabricationWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("E2:H5").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("FabricationWS").Select
    Range("B8:Z25").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Application.CutCopyMode = False
    Sheets("FabricationWS").Select
    Range("F2").Select
    Sheets("CrateWS").Select
    Range("G2").Select
    Application.ScreenUpdating = True
End Sub
Sub CrateWS_78Series()
    Workbooks.Open Filename:="S:\- GPEstimator\Logs\78-Numbers-LJ.xls"
End Sub
Sub CrateWS_CrateRequestForm()
    Workbooks.Open Filename:= _
        "S:\- GPEstimator\Request Forms\Crate Request Form.xlsb"
End Sub
Sub CrateWS_GetShutterData()
Application.ScreenUpdating = False
    ActiveSheet.Unprotect
    Sheets("ShuttersWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("E2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("ShuttersWS").Select
    Range("B8:Z25").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("CrateWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("ShuttersWS").Select
    Application.CutCopyMode = False
    Range("F2").Select
    Sheets("CrateWS").Select
Application.ScreenUpdating = True
End Sub
Sub CrateWS_DBC() 'Crate Distance Between Centers
Dis = InputBox("Distance Between Centers")
    [H2] = Dis
    If [H2] = "" Then Exit Sub
    Qty = InputBox("Qty of Boards")
    [H3] = Qty
    If [H3] = "" Then Exit Sub
[I37] = [H2] / ([H3] - 1)
If [I37] < 4 Then [I37] = "Error"
End Sub
Sub CrateWS_Saw()
If [P52] = "-" Then MsgBox "Material Required": Range("I33").Select: Exit Sub
[I30] = [P65] * [C30] / [D30]
[L30] = [I30]
Run "EstimatorWB_BringWCTop"
End Sub
Sub CrateWS_Nail()
If [P52] = "-" Then MsgBox "Material Required": Range("I33").Select: Exit Sub
[I32] = [P65] * [C32] / [D32]
[L32] = [I32]
Run "EstimatorWB_BringWCTop"
End Sub
Sub CrateWS_SND() ' Saw Nail Drill
If [P52] = "-" Then MsgBox "Material Required": Range("I33").Select: Exit Sub
[I33] = [I30] + [I31] + [I32]
[L33] = [I33]
Run "EstimatorWB_BringWCTop"
End Sub
Sub CrateWS_Drill()
Thickness = InputBox("Enter Board Thickness ?")
        If Thickness = Cancel Then Exit Sub
        [H2] = Thickness
Size = InputBox("Enter Drill Diameter ?")
        If Size = Cancel Then Exit Sub
        [H3] = Size
Qty = InputBox("Enter Drill Qty ?")
        If Qty = Cancel Then Exit Sub
        [H4] = Qty
[I31] = (([H31] * [H2] + [H3]) * [D31]) * [H4]
[L31] = [I31]
Run "EstimatorWB_BringWCTop"
End Sub
Sub CrateWS_Square() 'Crate Square
If [G2] < 0.01 Then MsgBox "Missing Item Length": Range("G2").Select: Exit Sub
If [G3] < 0.01 Then MsgBox "Missing Item Width": Range("G3").Select: Exit Sub
If [G4] < 0.01 Then MsgBox "Missing Item Height": Range("G4").Select: Exit Sub
[I40] = "1.00"
[I41] = "4.00"
[L40] = [G2] + 2
[L41] = 6
[I42] = "1.00"
[I43] = "4.00"
[L42] = [G3] + 1
[L43] = 12
[I44] = "1.00"
[I45] = "4.00"
[L44] = [G4] + 3
[L45] = 12
[I35] = [C35] * [P65]
[L35] = [I35]
Run "EstimatorWB_BringWCTop"
End Sub
Sub CrateWS_Wheel() 'Crate Wheel
If [G2] < 0.01 Then MsgBox "Missing Item Length": Range("G2").Select: Exit Sub
If [G3] < 0.01 Then MsgBox "Missing Item Width": Range("G3").Select: Exit Sub
If [G4] < 0.01 Then MsgBox "Missing Item Height": Range("G4").Select: Exit Sub
[I40] = "1.00"
[I41] = "4.00"
[L40] = [G2] + 2
[L41] = 6
[I42] = "1.00"
[I43] = "4.00"
[L42] = [G3] + 1
[L43] = 12
[I44] = "1.00"
[I45] = "4.00"
[L44] = [G4] + 3
[L45] = 12
[I36] = [C36] * [P65]
[L36] = [I36]
Run "EstimatorWB_BringWCTop"
End Sub
Sub CrateWS_WheelSteel() 'Crate Wheel
If [G2] < 0.01 Then MsgBox "Missing Item Length": Range("G2").Select: Exit Sub
If [G3] < 0.01 Then MsgBox "Missing Item Width": Range("G3").Select: Exit Sub
If [G4] < 0.01 Then MsgBox "Missing Item Height": Range("G4").Select: Exit Sub
[I40] = "1.00"
[I41] = "4.00"
[L40] = [G2] + 2
[L41] = 6
[I42] = "1.00"
[I43] = "4.00"
[L42] = [G3] + 1
[L43] = 12
[I44] = "2.00"
[I45] = "4.00"
[L44] = [G4] + 3
[L45] = 12
[I37] = [C37] * [P65]
[L37] = [I37]
Run "EstimatorWB_BringWCTop"
End Sub
Sub CrateWS_Perentage()
Ans = MsgBox("Calculate Crate Percentage", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        If vb = No Then Exit Sub
        End Select
'Range("G29").Select
'Range("B8").Select
Per = InputBox("Enter the Percentage Required")
    [C38] = Per / 100
If [G27] = "7000" Then [I27] = [C43]
[L27] = [I27]
If [R27] = "917001" Then [S27] = [C44]
End Sub
Sub CrateWS_AddPercentagetoLast()
If [S27] < 0.01 Then MsgBox "Missing BOM": Exit Sub
Range("I7").Select
Selection.End(xlDown).Select
ActiveCell = ActiveCell + [I27]
Range("L7").Select
Selection.End(xlDown).Select
ActiveCell = ActiveCell + [L27]

Range("S7").Select
Selection.End(xlDown).Select
ActiveCell = [S27]
End Sub
Sub CrateWS_BOM010() 'Crate Boards BOM
Item10T:
If [I40] > 0.01 Then GoTo Item10W
    Item10T = InputBox("Item 10 Board Thickness")
    [I40] = Item10T
Item10W:
If [I41] > 0.01 Then GoTo Item10L
    Item10W = InputBox("Item 10 Board Width")
    [I41] = Item10W
Item10L:
If [L40] > 0.01 Then GoTo Item10Q
    Item10L = InputBox("Item 10 Board Length")
    [L40] = Item10L
Item10Q:
If [L41] > 0.01 Then Exit Sub
    Item10Q = InputBox("Item 10 Board Qty")
    [L41] = Item10Q
End Sub
Sub CrateWS_BOM020()
Item20T:
If [I42] > 0.01 Then GoTo Item20W
    Item20T = InputBox("Item 20 Board Thickness")
    [I42] = Item20T
Item20W:
If [I43] > 0.01 Then GoTo Item20L
    Item20W = InputBox("Item 20 Board Width")
    If Item20W = Cancel Then MsgBox "User canceled": Exit Sub
    [I43] = Item20W
Item20L:
If [L42] > 0.01 Then GoTo Item20Q
    Item20L = InputBox("Item 20 Board Length")
    [L42] = Item20L
Item20Q:
If [L43] > 0.01 Then Exit Sub
    Item20Q = InputBox("Item 20 Board Qty")
    [L43] = Item20Q
End Sub
Sub CrateWS_BOM030()
Item30T:
If [I44] > 0.01 Then GoTo Item30W
    Item30T = InputBox("Item 30 Board Thickness")
    [I44] = Item30T
Item30W:
If [I45] > 0.01 Then GoTo Item30L
    Item30W = InputBox("Item 30 Board Width")
    [I45] = Item30W
Item30L:
If [L44] > 0.01 Then GoTo Item30Q
    Item30L = InputBox("Item 30 Board Length")
    [L44] = Item30L
Item30Q:
If [L45] > 0.01 Then Exit Sub
    Item30Q = InputBox("Item 30 Board Qty")
    [L45] = Item30Q
End Sub
Sub CrateWS_BOM040()
Item40T:
If [I46] > 0.01 Then GoTo Item40W
    Item40T = InputBox("Item 40 Board Thickness")
    [I46] = Item40T
Item40W:
If [I47] > 0.01 Then GoTo Item40L
    Item40W = InputBox("Item 40 Board Width")
    [I47] = Item40W
Item40L:
If [L46] > 0.01 Then GoTo Item40Q
    Item40L = InputBox("Item 40 Board Length")
    [L46] = Item40L
Item40Q:
If [L47] > 0.01 Then Exit Sub
    Item40Q = InputBox("Item 40 Board Qty")
    [L47] = Item40Q
End Sub
Sub CrateWS_BOM050()
Item50T:
If [I48] > 0.01 Then GoTo Item50W
    Item50T = InputBox("Item 50 Board Thickness")
    [I48] = Item50T
Item50W:
If [I49] > 0.01 Then GoTo Item50L
    Item50W = InputBox("Item 50 Board Width")
    [I49] = Item50W
Item50L:
If [L48] > 0.01 Then GoTo Item50Q
    Item50L = InputBox("Item 50 Board Length")
    [L48] = Item50L
Item50Q:
If [L49] > 0.01 Then Exit Sub
    Item50Q = InputBox("Item 50 Board Qty")
    [L49] = Item50Q
End Sub
Sub CrateWS_BOM060()
Item60T:
If [I50] > 0.01 Then GoTo Item60W
    Item60T = InputBox("Item 60 Board Thickness")
    [I50] = Item60T
Item60W:
If [I51] > 0.01 Then GoTo Item60L
    Item60W = InputBox("Item 60 Board Width")
    [I51] = Item60W
Item60L:
If [L50] > 0.01 Then GoTo Item60Q
    Item60L = InputBox("Item 60 Board Length")
    [L50] = Item60L
Item60Q:
If [L51] > 0.01 Then Exit Sub
    Item60Q = InputBox("Item 60 Board Qty")
    [L51] = Item60Q
End Sub
Sub CrateWS_BOM070()
Item70T:
If [I52] > 0.01 Then GoTo Item70W
    Item70T = InputBox("Item 70 Board Thickness")
    [I52] = Item70T
Item70W:
If [I53] > 0.01 Then GoTo Item70L
    Item70W = InputBox("Item 70 Board Width")
    [I53] = Item70W
Item70L:
If [L52] > 0.01 Then GoTo Item70Q
    Item70L = InputBox("Item 70 Board Length")
    [L52] = Item70L
Item70Q:
If [L53] > 0.01 Then Exit Sub
    Item70Q = InputBox("Item 70 Board Qty")
    [L53] = Item70Q
End Sub
Sub CrateWS_BOM080()
Item80T:
If [I54] > 0.01 Then GoTo Item80W
    Item80T = InputBox("Item 80 Board Thickness")
    [I54] = Item80T
Item80W:
If [I55] > 0.01 Then GoTo Item80L
    Item80W = InputBox("Item 80 Board Width")
    [I55] = Item80W
Item80L:
If [L54] > 0.01 Then GoTo Item80Q
    Item80L = InputBox("Item 80 Board Length")
    [L54] = Item80L
Item80Q:
If [L55] > 0.01 Then Exit Sub
    Item80Q = InputBox("Item 80 Board Qty")
    [L55] = Item80Q
End Sub
Sub CrateWS_BOM090()
Item90T:
If [I56] > 0.01 Then GoTo Item90W
    Item90T = InputBox("Item 90 Board Thickness")
    [I56] = Item90T
Item90W:
If [I57] > 0.01 Then GoTo Item90L
    Item90W = InputBox("Item 90 Board Width")
    [I57] = Item90W
Item90L:
If [L56] > 0.01 Then GoTo Item90Q
    Item90L = InputBox("Item 90 Board Length")
    [L56] = Item90L
Item90Q:
If [L57] > 0.01 Then Exit Sub
    Item90Q = InputBox("Item 90 Board Qty")
    [L57] = Item90Q
End Sub
Sub CrateWS_BOM100()
Item100T:
If [I58] > 0.01 Then GoTo Item100W
    Item100T = InputBox("Item 100 Board Thickness")
    [I58] = Item100T
Item100W:
If [I59] > 0.01 Then GoTo Item100L
    Item100W = InputBox("Item 100 Board Width")
    [I59] = Item100W
Item100L:
If [L58] > 0.01 Then GoTo Item100Q
    Item100L = InputBox("Item 100 Board Length")
    [L58] = Item100L
Item100Q:
If [L59] > 0.01 Then Exit Sub
    Item100Q = InputBox("Item 100 Board Qty")
    [L59] = Item100Q
    Application.ScreenUpdating = True
End Sub


