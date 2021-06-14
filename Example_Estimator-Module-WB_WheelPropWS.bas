Attribute VB_Name = "WheelPropWS"
Sub WheelPropWS_GetWeldData()
Application.ScreenUpdating = False

    Sheets("WeldingWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("WheelPropWS").Select
    Range("E2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("WeldingWS").Select
    Range("B8:Z25").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("WheelPropWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Range("F2").Select
    Sheets("WheelPropWS").Select
    Application.CutCopyMode = False
    Range("F2").Select
    Sheets("WheelPropWS").Select
    Application.ScreenUpdating = True
End Sub
Sub CrateWS_GetWheelData()
Application.ScreenUpdating = False

    Sheets("WheelPropWS").Select
    Range("E2:H5").Select
    Selection.Copy
    Sheets("CrateWS").Select
    Range("E2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("WheelPropWS").Select
    Range("B8:Z25").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("CrateWS").Select
    Range("B8:Z25").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Range("F2").Select
    Sheets("WheelPropWS").Select
    Application.CutCopyMode = False
    Range("F2").Select
    Sheets("CrateWS").Select
    Application.ScreenUpdating = True
End Sub
Sub WC2C()
Ans = MsgBox("2C Roll Blades?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo Blades
        Case vbNo
        End Select
Ans = MsgBox("2C Twist and Form Spiders?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo TwistSpider
        Case vbNo
        End Select
Ans = MsgBox("2C Rivet Spiders Bolt in Hub?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo RivetSpiders
        Case vbNo
        End Select
Ans = MsgBox("2C Huck Bolt Spiders Bolt in Hub?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo HuckBoltSpiders
        Case vbNo
        End Select
        
Ans = MsgBox("2C Rivet Blades to Spiders ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo RivetBlades
        Case vbNo
        End Select
        
Blades:
Blades = InputBox("Qty of Blades ?")
    If Blades = "" Then Exit Sub
    [H4] = Blades
        [I72] = [H4] * [C72] + [D72]
        [L72] = [I72]
Run "EstimatorWB_BringWCTop"
Exit Sub



TwistSpider:
SL = InputBox("What is Spider Length ?")
    If SL = "" Then Exit Sub
    [H4] = SL
SW = InputBox("What is Spider Width ?")
    If SW = "" Then Exit Sub
    [H5] = SW
        [I73] = ([H4] * [H5] / 144) * [C73] + [D73]
        [L73] = [I73]
Run "EstimatorWB_BringWCTop"



RivetSpiders:
Rivets = InputBox("Qty of Spider Rivets ?")
    If Rivets = "" Then Exit Sub
    [H4] = Rivets
        [I74] = [H4] * [C74] + [D74]
        [L74] = [I74]
Run "EstimatorWB_BringWCTop"
Exit Sub

HuckBoltSpiders:
Huckbolts = InputBox("Qty of Huckbolts ?")
    If Huckbolts = "" Then Exit Sub
    [H4] = Huckbolts
        [I74] = ([H4] * [C74] + [D74]) * 5
        [L74] = [I74]
Run "EstimatorWB_BringWCTop"
Exit Sub

RivetBlades:
Rivets = InputBox("Qty of Blade Rivets ?")
    If Rivets = "" Then Exit Sub
    [H4] = Rivets
        [I75] = [H4] * [C75] + [D75]
        [L75] = [I75]
Run "EstimatorWB_BringWCTop"
Exit Sub
End Sub
Sub WC2D()
Ans = MsgBox("2D Balance and Spotweld PROP?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo BP
        Case vbNo
        End Select
BP:
BP = InputBox("What is PROP Diameter ?")
    If BP = "" Then Exit Sub
    [G2] = BP
        [I76] = [G2] * [C76] + [D76]
        [L76] = [I76]
Run "EstimatorWB_BringWCTop"
End Sub


