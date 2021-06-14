Attribute VB_Name = "EstimatorWB_WS6200"
Sub WC6203() '6203 Blade Roll
Ans = MsgBox("6203 Blade Roll?", vbYesNo)
        Select Case Ans
        Case vbYes
        Case vbNo
        End Select
BL = InputBox("What is Blade Length ?")
    If BL = "" Then Exit Sub
    [H2] = BL
BW = InputBox("What is Blade Width ?")
    If BW = "" Then Exit Sub
    [H3] = BW
    
        [I80] = ([H2] * [H3] / 144) * [C80] + [D80]
        [L80] = [I80]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6205() 'Ok 6205 Balance Prop
Diameter = InputBox("What is Prop Diameter ?")
        If Diameter = "" Then MsgBox "User Cancled": Exit Sub
        [H2] = Diameter
BladeQty = InputBox("What is Blade Qty ?")
        If BladeQty = "" Then MsgBox "User Cancled": Exit Sub
        [H3] = BladeQty
[I81] = [H2] * [C81] + [D81]
[I81] = [I81] * [H3]
[L81] = [I81]
Run "EstimatorWB_BringWCTop"
End Sub
Sub WC6206() ' Ok Spot Weld Balance Weight
Diameter = InputBox("What is Prop Diameter ?")
        If Diameter = "" Then MsgBox "User Cancled": Exit Sub
        [H2] = Diameter
BladeQty = InputBox("What is Blade Qty ?")
        If BladeQty = "" Then MsgBox "User Cancled": Exit Sub
        [H3] = BladeQty
[I82] = [H2] * [C82] + [D82]
[I82] = [I82] * [H3]
[L82] = [I82]
Run "EstimatorWB_BringWCTop"
End Sub
'6209 Weigh Blades and Cheeks
Sub WC6209()
Rivets = InputBox("Enter Qty of Blades?" & vbCr & "( 6209 Weigh Blades )")
        If Rivets = Cancel Then Exit Sub
        [H4] = Rivets
[I68] = [H4] * [C68] + [D68]
[L68] = [I68]
Run "EstimatorWB_BringWCTop"
End Sub
'6212 Rivet
Sub WC6212()
Rivets = InputBox("Enter Qty of Rivets per Blade?" & vbCr & "( 6212 Rivet Blades )")
        If Rivets = Cancel Then Exit Sub
        [H4] = Rivets
[I69] = [H4] * [C69] + [D69]
[L69] = [I69]
Run "EstimatorWB_BringWCTop"
End Sub
