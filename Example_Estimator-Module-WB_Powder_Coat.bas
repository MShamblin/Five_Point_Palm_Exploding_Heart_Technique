Attribute VB_Name = "Powder_Coat"
Sub FabricationWS_PC3602()
Ans = MsgBox("3602 ? Use Square Foot for Coating ?", vbYesNo)
    If [G5] = "" Then Exit Sub
            Select Case Ans
            Case vbYes
            Case vbNo
            If vb = No Then Exit Sub
            End Select
[I80] = [G5] * 0.01 + 0.1
[L80] = [I80]
Run "EstimatorWB_BringWCTop": Exit Sub
End Sub
