Attribute VB_Name = "Tubing"
Sub WC4BTube()
ActiveSheet.Unprotect
Dia = InputBox("Enter Tubing Diameter in Inches?", vbYesCancel)
        [H2] = Dia
        If Dia = "" Then
        If Dai = Cancel Then Exit Sub
        End If

'Ans = MsgBox("Default Tubing Length is 1 foot ?", vbYesNo)
'        Select Case Ans
'        Case vbYes
'        If vb = Yes Then GoTo OneFoot
'        End Select


Length = InputBox("Tubing Length in Feet ?", vbYesCancel)
        [H3] = Length
        If Length = "" Then
        If Length = Cancel Then Exit Sub
        End If
ActiveCell.Offset(0, 2).Select
ActiveCell = [H3] * [B3] + [B2]
ActiveCell.Offset(0, 3).Select
ActiveCell = [H3] * [B3] + [B2]
GoTo Endit


OneFoot:
ActiveCell.Offset(0, 2).Select
ActiveCell = [H2] * [B2] + [B3]
ActiveCell.Offset(0, 3).Select
ActiveCell = [H2] * [B2] + [B3]
'ActiveCell.Offset(0, -5).Select


Endit:
ActiveCell.Offset(0, -10).Select
ActiveCell.Resize(, 13).Copy
Range("B27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Application.CutCopyMode = False
Range("B30").Select
End Sub

Sub WC4BJetx()
ActiveSheet.Unprotect
Dia = InputBox("Enter Tubing Diameter in Inches?", vbYesCancel)
        [H2] = Dia
        If Dia = "" Then
        If Dai = Cancel Then Exit Sub
        End If

Ans = MsgBox("Default Tubing Length is 1 foot ?", vbYesNo)
        Select Case Ans
        Case vbYes
        If vb = Yes Then GoTo OneFoot
        End Select

OneFoot:
ActiveCell.Offset(0, 2).Select
ActiveCell = [H2] * [B3] + [B4]
ActiveCell.Offset(0, 3).Select
ActiveCell = [H2] * [B3] + [B4]
'ActiveCell.Offset(0, -5).Select


Endit:
ActiveCell.Offset(0, -10).Select
ActiveCell.Resize(, 13).Copy
Range("B27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Application.CutCopyMode = False
Range("B30").Select
End Sub

