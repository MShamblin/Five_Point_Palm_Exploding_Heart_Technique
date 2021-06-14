Attribute VB_Name = "MiscWS"
Sub WCBG()
BagQty = InputBox("What is the Qty to be Bagged")
    [H2] = BagQty
    If BagQty = Cancel Then Exit Sub
[I131] = ([E131] * [C131]) * [D131]
[L131] = [I131]
Run "EstimatorWB_BringWCTop"
End Sub
