Attribute VB_Name = "FormulaWS"
Sub FormulaWS_ClearAll()
Sheets("FormulaWS").Select
ActiveWindow.DisplayGridlines = False
ActiveSheet.Protect
Range("C19:C22").ClearContents
Range("E25:E26").ClearContents
Range("G25:G27").ClearContents
Range("I25:I28").ClearContents
Range("K25:K29").ClearContents
Range("N25:N28").ClearContents
Range("T7:V12").ClearContents
Range("Y17:Z22").ClearContents
Range("C52:C54").ClearContents
Range("N43:N44").ClearContents
Call EstimatorWB_Protect_

End Sub

