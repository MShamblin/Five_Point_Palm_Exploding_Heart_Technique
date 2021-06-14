Attribute VB_Name = "EstimatorWB_BOM"
Sub EstimatorWB_BOM_SEQ0010() 'ok
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P8").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U8] = "'0810": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U8] = "'0310": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U8] = "'0010": [G4] = [V27]: [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U8] = "'0010": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U8] = "'0010": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U8] = "'0010": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U8] = "'0910": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U8] = "'0710": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U8] = "'0950": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U8] = "'0981": [P8] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0015()
ActiveSheet.Unprotect
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P9").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U9] = "'0815": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U9] = "'0315": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U9] = "'0015": [G4] = [V27]: [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U9] = "'0015": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U9] = "'0015": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U9] = "'0015": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U9] = "'0915": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U9] = "'0720": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U9] = "'0951": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U9] = "'0982": [P9] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0020()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P10").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U10] = "'0820": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U10] = "'0320": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U10] = "'0020": [G4] = [V27]: [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U10] = "'0020": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U10] = "'0020": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U10] = "'0020": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U10] = "'0920": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U10] = "'0730": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U10] = "'0952": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U10] = "'0983": [P10] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0025()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P11").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U11] = "'0825": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U11] = "'0325": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U11] = "'0025": [G4] = [V27]: [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U11] = "'0025": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U11] = "'0025": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U11] = "'0025": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U11] = "'0925": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U11] = "'0740": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U11] = "'0953": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U11] = "'0984": [P11] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0030()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P12").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U12] = "'0830": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U12] = "'0330": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U12] = "'0030": [G4] = [V27]: [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U12] = "'0030": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U12] = "'0030": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U12] = "'0030": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U12] = "'0930": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U12] = "'0740": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U12] = "'0954": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U12] = "'0985": [P12] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0035()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P13").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U13] = "'0835": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U13] = "'0335": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U13] = "'0035": [G4] = [V27]: [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U13] = "'0035": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U13] = "'0035": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U13] = "'0035": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U13] = "'0935": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U13] = "'0750": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U13] = "'0955": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U13] = "'0986": [P13] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0040()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P14").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U14] = "'0840": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U14] = "'0340": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U14] = "'0040": [G4] = [V27]: [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U14] = "'0040": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U14] = "'0040": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U14] = "'0040": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U14] = "'0940": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U14] = "'0760": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U14] = "'0956": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U14] = "'0987": [P14] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0045()
If [P27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P15").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U15] = "'0845": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U15] = "'0345": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U15] = "'0045": [G4] = [V27]: [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U15] = "'0045": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U15] = "'0045": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U15] = "'0045": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U15] = "'0945": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U15] = "'0770": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U15] = "'0957": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U15] = "'0988": [P15] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0050()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P16").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U16] = "'0850": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U16] = "'0350": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U16] = "'0050": [G4] = [V27]: [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U16] = "'0050": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U16] = "'0050": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U16] = "'0050": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U16] = "'0950": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U16] = "'0770": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U16] = "'0957": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U16] = "'0989": [P16] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0055()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P17").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U17] = "'0855": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U17] = "'0355": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U17] = "'0055": [G4] = [V27]: [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U17] = "'0055": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U17] = "'0055": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U17] = "'0055": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U17] = "'0955": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U17] = "'0780": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U17] = "'0958": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U17] = "'0991": [P17] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0060()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P18").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U18] = "'0860": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U18] = "'0360": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U18] = "'0060": [G4] = [V27]: [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U18] = "'0060": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U18] = "'0060": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U18] = "'0060": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U18] = "'0960": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U18] = "'0785": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U18] = "'0959": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U18] = "'0992": [P18] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0065()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P19").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U19] = "'0865": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U19] = "'0365": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U19] = "'0065": [G4] = [V27]: [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U19] = "'0065": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U19] = "'0065": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U19] = "'0065": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U19] = "'0965": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U19] = "'0790": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U19] = "'0961": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tooll" Then [U19] = "'0993": [P19] = [F2]: Application.CutCopyMode = False: Exit Sub

End Sub
Sub EstimatorWB_BOM_SEQ0070()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P20").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U20] = "'0870": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U20] = "'0370": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U20] = "'0070": [G4] = [V27]: [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U20] = "'0070": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U20] = "'0070": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U20] = "'0070": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U20] = "'0970": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U20] = "'0791": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U20] = "'0962": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U20] = "'0994": [P20] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0075()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P21").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U21] = "'0875": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U21] = "'0375": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U21] = "'0075": [G4] = [V27]: [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U21] = "'0075": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U21] = "'0075": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U21] = "'0075": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U21] = "'0975": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U21] = "'0792": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U21] = "'0963": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U21] = "'0995": [P21] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0076()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P22").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U22] = "'0880": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U22] = "'0380": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U22] = "'0080": [G4] = [V27]: [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U22] = "'0080": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U22] = "'0080": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U22] = "'0080": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U22] = "'0980": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U22] = "'0793": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U22] = "'0964": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U22] = "'0996": [P22] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0077()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P23").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U23] = "'0885": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U23] = "'0385": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U23] = "'0085": [G4] = [V27]: [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U23] = "'0085": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U23] = "'0085": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U23] = "'0085": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U23] = "'0985": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U23] = "'0794": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U23] = "'0965": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U23] = "'0997": [P23] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0078()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P24").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U24] = "'0890": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U24] = "'0390": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U24] = "'0090": [G4] = [V27]: [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U24] = "'0090": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U24] = "'0090": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U24] = "'0090": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U24] = "'0990": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U24] = "'0795": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U24] = "'0966": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tool" Then [U24] = "'0998": [P24] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub
Sub EstimatorWB_BOM_SEQ0079()
If [T27] = "" Then MsgBox "Missing Material Data": Exit Sub
Range("P27:Z27").Copy: Range("P25").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
If [W27] = "PC" Then [U25] = "'0895": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [W27] = "CTN" Then [U25] = "'0395": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Lb" Then [U25] = "'0095": [G4] = [V27]: [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ea" Then [U25] = "'0095": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Ft" Then [U25] = "'0095": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Sf" Then [U25] = "'0095": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "BF" Then [U25] = "'0995": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tubing" Then [U25] = "'0796": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Label" Then [U25] = "'0967": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
If [T27] = "Tooll" Then [U25] = "'0999": [P25] = [F2]: Application.CutCopyMode = False: Exit Sub
End Sub



