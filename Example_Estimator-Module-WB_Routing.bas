Attribute VB_Name = "EstimatorWB_Routing"
Sub Rout0100() 'ok
If [N27] = "Balance" Then MsgBox "Balance Operation Not Allowed": Exit Sub
If [N27] = "Powder" Then MsgBox "Powder Coating Operation Not Allowed": Exit Sub
If [N27] = "Lazer" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("B27:N27").Copy
Range("B8").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B8] = [F2]
[C8] = "Std"
[E8] = ""
If [N8] = "Bag" Then [D8] = "'1090"
If [N8] = "Nest" Then [D8] = "'0010"
If [N8] = "WC" Then [D8] = "'0100"
If [N8] = "Weld" Then [D8] = "'0100"
If [N8] = "Brg" Then [D8] = "'0100"
If [N8] = "Crts" Then [D8] = "'0900"
If [N8] = "AVD1000" Then [D8] = "'1000"
If [N8] = "Assy" Then [D8] = "'1100"
If [J8] = "Options" Then [D8] = [D27]
If [N8] = "" Then [D8] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0150() 'ok
If [N27] = "Balance" Then MsgBox "Balance Operation Not Allowed": Exit Sub
If [N27] = "Lazer" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("B27:N27").Copy
Range("B9").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B9] = [F2]
[C9] = "Std"
[E9] = ""
If [N9] = "Bag" Then [D9] = "'1090"
If [N9] = "WC" Then [D9] = "'0150"
If [N9] = "Weld" Then [D9] = "'0150"
If [N9] = "Brg" Then [D9] = "'0150"
If [N9] = "Pull" Then [D9] = "'0805"
If [N9] = "Powder" Then [D9] = "'0805"
If [N9] = "Balance" Then [D9] = "'0805"
If [N9] = "Crts" Then [D9] = "'0905"
If [N9] = "AVD1005" Then [D9] = "'1005"
If [N9] = "Assy" Then [D9] = "'1100"
If [N9] = "" Then [D9] = "'1110"
If [G9] = "Options" Then [D9] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0200()
If [N27] = "Balance" Then MsgBox "Balance Operation Not Allowed": Exit Sub
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C10").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B10] = [F2]
[C10] = "Std"
[E10] = ""
If [N10] = "WC" Then [D10] = "'0200"
If [N10] = "Weld" Then [D10] = "'0200"
If [N10] = "Brg" Then [D10] = "'0200"
If [N10] = "Lazer" Then [D10] = "'0200"
If [N10] = "Pull" Then [D10] = "'0810"
If [N10] = "Powder" Then [D10] = "'0810"
If [N10] = "Balance" Then [D10] = "'0810"
If [N10] = "Crts" Then [D10] = "'0910"
If [N10] = "AVD1010" Then [D10] = "'1010"
If [N10] = "Assy" Then [D10] = "'1100"
If [N10] = "" Then [D10] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0250()
'If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C11").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B11] = [F2]
[C11] = "Std"
[E11] = ""
If [N11] = "Table" Then [D11] = "'0210"
If [N11] = "WC" Then [D11] = "'0250"
If [N11] = "Weld" Then [D11] = "'0250"
If [N11] = "Brg" Then [D11] = "'0250"
If [N11] = "Lazer" Then [D11] = "'0250"
If [N11] = "Pull" Then [D11] = "'0815"
If [N11] = "Powder" Then [D11] = "'0815"
If [N11] = "Balance" Then [D11] = "'0815"
If [N11] = "Crts" Then [D11] = "'0915"
If [N11] = "AVD1015" Then [D11] = "'1015"
If [N11] = "Assy" Then [D11] = "'1100"
If [N11] = "" Then [D11] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0300()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C12").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B12] = [F2]
[C12] = "Std"
[E12] = ""
If [N12] = "WC" Then [D12] = "'0300"
If [N12] = "Weld" Then [D12] = "'0300"
If [N12] = "Brg" Then [D12] = "'0300"
If [N12] = "Pull" Then [D12] = "'0820"
If [N12] = "Powder" Then [D12] = "'0820"
If [N12] = "Balance" Then [D12] = "'0820"
If [N12] = "Crts" Then [D12] = "'0920"
If [N12] = "AVD1020" Then [D12] = "'1020"
If [N12] = "Assy" Then [D12] = "'1100"
If [N12] = "" Then [D12] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0350()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C13").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B13] = [F2]
[C13] = "Std"
[E13] = ""
If [N13] = "WC" Then [D13] = "'0350"
If [N13] = "Weld" Then [D13] = "'0350"
If [N13] = "Brg" Then [D13] = "'0350"
If [N13] = "Pull" Then [D13] = "'0825"
If [N13] = "Powder" Then [D13] = "'0825"
If [N13] = "Balance" Then [D13] = "'0825"
If [N13] = "Crts" Then [D13] = "'0925"
If [N13] = "AVD1025" Then [D13] = "'1025"
If [N13] = "Assy" Then [D13] = "'1100"
If [N13] = "" Then [D13] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0400()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C14").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B14] = [F2]
[C14] = "Std"
[E14] = ""
If [N14] = "WC" Then [D14] = "'0400"
If [N14] = "Weld" Then [D14] = "'0400"
If [N14] = "Brg" Then [D14] = "'0400"
If [N14] = "Pull" Then [D14] = "'0830"
If [N14] = "Powder" Then [D14] = "'0830"
If [N14] = "Balance" Then [D14] = "'0830"
If [N14] = "Crts" Then [D14] = "'0930"
If [N14] = "AVD1030" Then [D14] = "'1030"
If [N14] = "Assy" Then [D14] = "'1100"
If [N14] = "" Then [D14] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0450()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C15").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B15] = [F2]
[C15] = "Std"
[E15] = ""
If [N15] = "WC" Then [D15] = "'0450"
If [N15] = "Weld" Then [D15] = "'0450"
If [N15] = "Brg" Then [D15] = "'0450"
If [N15] = "Pull" Then [D15] = "'0835"
If [N15] = "Powder" Then [D15] = "'0835"
If [N15] = "Balance" Then [D15] = "'0835"
If [N15] = "Crts" Then [D15] = "'0935"
If [N15] = "AVD1035" Then [D15] = "'1035"
If [N15] = "Assy" Then [D15] = "'1100"
If [N15] = "" Then [D15] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0500()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C16").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B16] = [F2]
[C16] = "Std"
[E16] = ""
If [N16] = "WC" Then [D16] = "'0500"
If [N16] = "Weld" Then [D16] = "'0500"
If [N16] = "Brg" Then [D16] = "'0500"
If [N16] = "Pull" Then [D16] = "'0840"
If [N16] = "Powder" Then [D16] = "'0840"
If [N16] = "Balance" Then [D16] = "'0840"
If [N16] = "Crts" Then [D16] = "'0940"
If [N16] = "AVD1040" Then [D16] = "'1040"
If [N16] = "Assy" Then [D16] = "'1100"
If [N16] = "" Then [D16] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0550()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C17").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B17] = [F2]
[C17] = "Std"
[E17] = ""
If [N17] = "WC" Then [D17] = "'0550"
If [N17] = "Weld" Then [D17] = "'0550"
If [N17] = "Brg" Then [D17] = "'0550"
If [N17] = "Pull" Then [D17] = "'0845"
If [N17] = "Powder" Then [D17] = "'0845"
If [N17] = "Balance" Then [D17] = "'0845"
If [N17] = "Crts" Then [D17] = "'0945"
If [N17] = "AVD1045" Then [D17] = "'1045"
If [N17] = "Assy" Then [D17] = "'1100"
If [N17] = "" Then [D17] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0600()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C18").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B18] = [F2]
[C18] = "Std"
[E18] = ""
If [N18] = "WC" Then [D18] = "'0600"
If [N18] = "Weld" Then [D18] = "'0600"
If [N18] = "Brg" Then [D18] = "'0600"
If [N18] = "Pull" Then [D18] = "'0850"
If [N18] = "Powder" Then [D18] = "'0850"
If [N18] = "Balance" Then [D18] = "'0850"
If [N18] = "Crts" Then [D18] = "'0950"
If [N18] = "AVD1050" Then [D18] = "'1050"
If [N18] = "Assy" Then [D18] = "'1100"
If [N18] = "" Then [D18] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0650()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C19").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B19] = [F2]
[C19] = "Std"
[E19] = ""
If [N19] = "WC" Then [D19] = "'0650"
If [N19] = "Weld" Then [D19] = "'0650"
If [N19] = "Brg" Then [D19] = "'0650"
If [N19] = "Pull" Then [D19] = "'0855"
If [N19] = "Powder" Then [D19] = "'0855"
If [N19] = "Balance" Then [D19] = "'0855"
If [N19] = "Crts" Then [D19] = "'0955"
If [N19] = "AVD1055" Then [D19] = "'1055"
If [N19] = "Assy" Then [D19] = "'1100"
If [N19] = "" Then [D19] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0700()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C20").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B20] = [F2]
[C20] = "Std"
[E20] = ""
If [N20] = "WC" Then [D20] = "'0700"
If [N20] = "Weld" Then [D20] = "'0700"
If [N20] = "Brg" Then [D20] = "'0700"
If [N20] = "Pull" Then [D20] = "'0860"
If [N20] = "Powder" Then [D20] = "'0860"
If [N20] = "Balance" Then [D20] = "'0860"
If [N20] = "Crts" Then [D20] = "'0960"
If [N20] = "AVD1060" Then [D20] = "'1060"
If [N20] = "Assy" Then [D20] = "'1100"
If [N20] = "" Then [D20] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0750()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C21").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B21] = [F2]
[C21] = "Std"
[E21] = ""
If [N21] = "WC" Then [D21] = "'0750"
If [N21] = "Weld" Then [D21] = "'0750"
If [N21] = "Brg" Then [D21] = "'0750"
If [N21] = "Pull" Then [D21] = "'0865"
If [N21] = "Powder" Then [D21] = "'0865"
If [N21] = "Balance" Then [D21] = "'0865"
If [N21] = "Crts" Then [D21] = "'0965"
If [N21] = "AVD1065" Then [D21] = "'1065"
If [N21] = "Assy" Then [D21] = "'1100"
If [N21] = "" Then [D21] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0760()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C22").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B22] = [F2]
[C22] = "Std"
[E22] = ""
If [N22] = "WC" Then [D22] = "'07600"
If [N22] = "Weld" Then [D22] = "'0760"
If [N22] = "Brg" Then [D22] = "'0760"
If [N22] = "Pull" Then [D22] = "'0870"
If [N22] = "Powder" Then [D22] = "'0870"
If [N22] = "Balance" Then [D22] = "'0870"
If [N22] = "Crts" Then [D22] = "'0970"
If [N22] = "AVD1070" Then [D22] = "'1070"
If [N22] = "Assy" Then [D22] = "'1100"
If [N22] = "" Then [D22] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0770()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C23").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B23] = [F2]
[C23] = "Std"
[E23] = ""
If [N23] = "WC" Then [D23] = "'0770"
If [N23] = "Weld" Then [D23] = "'0770"
If [N23] = "Brg" Then [D23] = "'0770"
If [N23] = "Pull" Then [D23] = "'0875"
If [N23] = "Powder" Then [D23] = "'0875"
If [N23] = "Balance" Then [D23] = "'0875"
If [N23] = "Crts" Then [D23] = "'0975"
If [N23] = "AVD1075" Then [D23] = "'1075"
If [N23] = "Assy" Then [D23] = "'1100"
If [N23] = "" Then [D23] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0780()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C24").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B24] = [F2]
[C24] = "Std"
[E24] = ""
If [N24] = "WC" Then [D24] = "'0780"
If [N24] = "Weld" Then [D24] = "'0780"
If [N24] = "Brg" Then [D24] = "'0780"
If [N24] = "Pull" Then [D24] = "'0880"
If [N24] = "Powder" Then [D24] = "'0880"
If [N24] = "Balance" Then [D24] = "'0880"
If [N24] = "Crts" Then [D24] = "'0980"
If [N24] = "AVD1080" Then [D24] = "'1080"
If [N24] = "Assy" Then [D24] = "'1100"
If [N24] = "" Then [D24] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub
Sub Rout0790()
If [N27] = "Table" Then MsgBox "Amada Lazer Operation Not Allowed": Exit Sub
If [N27] = "LAZ" Then MsgBox "Operation Not Allowed": Exit Sub
If [N27] = "Nest" Then MsgBox "Nest Operation Not Allowed": Exit Sub
ActiveSheet.Unprotect
Range("C27:N27").Copy
Range("C25").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
[B25] = [F2]
[C25] = "Std"
[E25] = ""
If [N25] = "WC" Then [D25] = "'0790"
If [N25] = "Weld" Then [D25] = "'0790"
If [N25] = "Brg" Then [D25] = "'0790"
If [N25] = "Pull" Then [D25] = "'0885"
If [N25] = "Powder" Then [D25] = "'0885"
If [N25] = "Balance" Then [D25] = "'0885"
If [N25] = "Crts" Then [D25] = "'0985"
If [N25] = "AVD1085" Then [D25] = "'1085"
If [N25] = "Assy" Then [D25] = "'1100"
If [N25] = "" Then [D25] = [D27]
Application.CutCopyMode = False
ActiveSheet.Protect
End Sub





