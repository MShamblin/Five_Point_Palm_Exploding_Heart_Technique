Attribute VB_Name = "EstimatorWB_Macros"
Sub EstimatorWB_FullScreen()
Attribute EstimatorWB_FullScreen.VB_ProcData.VB_Invoke_Func = " \n14"
 Application.ScreenUpdating = False
 Application.ExecuteExcel4Macro "SHOW.TOOLBAR(""Ribbon"",True)"
 Application.DisplayFormulaBar = True
 Application.DisplayStatusBar = True
 ActiveWindow.DisplayGridlines = True
 ActiveWindow.DisplayHeadings = True
 ActiveWindow.DisplayWorkbookTabs = True
 Application.ScreenUpdating = True
 ActiveSheet.Protect
End Sub
Sub EstimatorWB_SaveWB()
Attribute EstimatorWB_SaveWB.VB_ProcData.VB_Invoke_Func = "w\n14"
    ChDir "S:\- GPEstimator\Estimator"
    ActiveWorkbook.SaveAs Filename:="S:\- GPEstimator\Estimator\EstimatorWB.xlsb" _
        , FileFormat:=xlExcel12, CreateBackup:=True
    ChDir "S:\- GPEstimator\Estimator"
    ActiveWorkbook.SaveAs Filename:="S:\- GPEstimator\Estimator Copy\EstimatorWB.xlsb" _
        , FileFormat:=xlExcel12, CreateBackup:=True
    ChDir "S:\- GPEstimator\Estimator"
    ActiveWorkbook.SaveAs Filename:="U:\usermast\Manufacturing_Eng_Support\Estimator\EstimatorWB.xlsb" _
        , FileFormat:=xlExcel12, CreateBackup:=True
    ChDir "G:\- GPEstimator\Estimator"
    ActiveWorkbook.SaveAs Filename:="G:\- GPEstimator\Estimator\EstimatorWB.xlsb" _
        , FileFormat:=xlExcel12, CreateBackup:=True
        
        

End Sub
Sub EstimatorWB_GPRouting()
    ChDir "S:\- GPEstimator\Estimator"
    Workbooks.Open Filename:="S:\- GPEstimator\Estimator\GPRouting.xls"
End Sub
Sub EstimatorWB_WorkCenterWhereUsed()
    ChDir "S:\- GPEstimator\Estimator"
    Workbooks.Open Filename:="S:\- GPEstimator\Estimator\WorkCenterWhereUsed.xls"
End Sub
Sub EstimatorWB_PartNumberWhereUsed()
    ChDir "S:\- GPEstimator\Estimator"
    Workbooks.Open Filename:="S:\- GPEstimator\Estimator\Item Where Used.xls"
End Sub
'This code will protect all the sheets at one go
Sub ProtectAllSheets()
Dim ws As Worksheet
Dim Password As String
Password = "acme"
For Each ws In Worksheets
   ws.Protect Password:=Password
Next ws
End Sub
'This code will unprotect all the sheets at one go
Sub UnProtectAllSheets()
Dim ws As Worksheet
Dim Password As String
Password = "acme"
For Each ws In Worksheets
ws.Unprotect Password:=Password
Next ws
End Sub
Sub EstimatorWB_ClearAll()
Application.ScreenUpdating = False
ActiveWindow.DisplayGridlines = False
ActiveSheet.Unprotect
If MsgBox("Erase All User Input Data !" & vbCr & "? Are you sure Clear All ?", vbYesNo) = vbNo Then Exit Sub
Range("E2:H5").ClearContents
Range("B8:Z27").ClearContents
Range("E28:E82").ClearContents
Range("I28:I82").ClearContents
Range("L28:L82").ClearContents
Range("O28:O400").ClearContents
[I7] = "Labor Time"
[L7] = "Cycle Time"
Call EstimatorWB_Protect_
Application.ScreenUpdating = True
Range("F29").Select
Range("F30").Select
Range("F2").Select
End Sub
Sub EstimatorWB_Home()
Range("A1").Select
Range("F29").Select
Range("F30").Select
Range("F2").Select
End Sub
Sub EstimatorWB_SqFT() 'ok
'ActiveSheet.Unprotect
[G5] = (([G2] * [G3] * 2) + ([G2] * [G4] * 2) + ([G3] * [G4] * 2)) / 144
'ActiveSheet.Protect
End Sub
Sub EstimatorWB_StartButton() 'ok
If [F2] > 0.01 Then GoTo F2
PN = InputBox("Enter Part Number ?")
        If PN = Cancel Then Exit Sub
        [F2] = PN
F2:
If [F3] > 0.01 Then GoTo Blank
Desc = InputBox("Enter Description ?")
        If Desc = Cancel Then ActiveSheet.Protect: Exit Sub
        [F3] = Desc
    Range("F2:F5").Select
    On Error Resume Next
    Dim myCell As Range
    For Each myCell In Selection.Cells
    myCell.Value = UCase(myCell.Value)
    Next
    On Error GoTo 0
Blank:
If [G2] > 0.01 Then GoTo Widthx
Length = InputBox("Enter Item Length ?")
        If Length = Cancel Then ActiveSheet.Protect: Exit Sub
        [G2] = Length
Widthx:
If [G3] > 0.01 Then GoTo Height
Widthx = InputBox("Enter Item Width ?")
        If Widthx = Cancel Then ActiveSheet.Protect: Exit Sub
        [G3] = Widthx
Height:
If [G4] > 0.01 Then GoTo Endit
Height = InputBox("Enter Item Height or Thickness ?")
        If Height = Cancel Then ActiveSheet.Protect: Exit Sub
        [G4] = Height
        Run "EstimatorWB_SqFT"
Endit:
Run "EstimatorWB_SqFT"
End Sub
Sub EstimatorWB_BringMaterialtoTop() 'ok
ActiveSheet.Unprotect
Range("O28").Select
Selection.End(xlDown).Select: If ActiveCell = "" Then MsgBox "No Material Selected": Exit Sub
Range(Selection, ActiveCell.Offset(0, 11)).Copy
Range("O27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Range("P30").Select
        Application.CutCopyMode = False
Range("O28:O430").ClearContents
Range("O28").Select
ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True
End Sub
Sub EstimatorWB_BringWCTop() ' Bring Work Center Routing to Top
ActiveSheet.Unprotect
Workbooks("EstimatorWB.xlsb").Activate
'Workbooks("EstimatorMike.xlsb").Activate
ActiveCell.Offset(0, 2).Select
If ActiveCell = "-" Then MsgBox "Missing Labor Time": ActiveSheet.Protect: Exit Sub
If ActiveCell = "" Then MsgBox "Missing Labor Time": ActiveSheet.Protect: Exit Sub
ActiveSheet.Unprotect
ActiveCell.Offset(0, -7).Select
ActiveCell.Resize(, 13).Copy
Range("B27").Select
Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        Application.CutCopyMode = False
Range("B30").Select
ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True
End Sub
Sub EstimatorWB_Change_Part_Numbers() 'Change Part Numbers
    PN = InputBox("Part Number ?")
            If PN = False Then
            MsgBox "User Cancelled"
            Exit Sub
            End If
ActiveSheet.Unprotect
            [F2] = PN
            
 Desc = InputBox("Enter Description ?")
        If Desc = Cancel Then ActiveSheet.Protect: Exit Sub
        [F3] = Desc
    Range("F2:F5").Select
    On Error Resume Next
    Dim myCell As Range
    For Each myCell In Selection.Cells
    myCell.Value = UCase(myCell.Value)
    Next
    On Error GoTo 0
            
            If [F2] = "" Then ActiveSheet.Protect: Exit Sub
                
    If [B8] > 0.01 Then
    [B8] = [F2]
    End If
    If [B9] > 0.01 Then
    [B9] = [F2]
    End If
    If [B10] > 0.01 Then
    [B10] = [F2]
    End If
    If [B11] > 0.01 Then
    [B11] = [F2]
    End If
    If [B12] > 0.01 Then
    [B12] = [F2]
    End If
    If [B13] > 0.01 Then
    [B13] = [F2]
    End If
    If [B14] > 0.01 Then
    [B14] = [F2]
    End If
    If [B15] > 0.01 Then
    [B15] = [F2]
    End If
    If [B16] > 0.01 Then
    [B16] = [F2]
    End If
    If [B17] > 0.01 Then
    [B17] = [F2]
    End If
    If [B18] > 0.01 Then
    [B18] = [F2]
    End If
    If [B19] > 0.01 Then
    [B19] = [F2]
    End If
    If [B20] > 0.01 Then
    [B20] = [F2]
    End If
    If [B21] > 0.01 Then
    [B21] = [F2]
    End If
    If [B22] > 0.01 Then
    [B22] = [F2]
    End If
    If [B23] > 0.01 Then
    [B23] = [F2]
    End If
    If [B24] > 0.01 Then
    [B24] = [F2]
    End If
    If [B25] > 0.01 Then
    [B25] = [F2]
    End If
    
    If [P8] > 0.01 Then
    [P8] = [F2]
    End If
    If [P9] > 0.01 Then
    [P9] = [F2]
    End If
    If [P10] > 0.01 Then
    [P10] = [F2]
    End If
    If [P11] > 0.01 Then
    [P11] = [F2]
    End If
    If [P12] > 0.01 Then
    [P12] = [F2]
    End If
    If [P13] > 0.01 Then
    [P13] = [F2]
    End If
    If [P14] > 0.01 Then
    [P14] = [F2]
    End If
    If [P15] > 0.01 Then
    [P15] = [F2]
    End If
    If [P16] > 0.01 Then
    [P16] = [F2]
    End If
    If [P17] > 0.01 Then
    [P17] = [F2]
    End If
    If [P18] > 0.01 Then
    [P18] = [F2]
    End If
    If [P19] > 0.01 Then
    [P19] = [F2]
    End If
    If [P20] > 0.01 Then
    [P20] = [F2]
    End If
    If [P21] > 0.01 Then
    [P21] = [F2]
    End If
    If [P22] > 0.01 Then
    [P22] = [F2]
    End If
    If [P23] > 0.01 Then
    [P23] = [F2]
    End If
    If [P24] > 0.01 Then
    [P24] = [F2]
    End If
    If [P25] > 0.01 Then
    [P25] = [F2]
    End If
    ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True
End Sub
Sub EstimatorWB_Import_GreatPlains() ' Ok Import to Great Plains (standard)
    Application.ScreenUpdating = False
ActiveWindow.DisplayGridlines = False
If [F2] < 0.01 Then MsgBox "Part Number Missing Exit ! Run Change Part Number": Exit Sub
Application.ScreenUpdating = False
        Dim FolderPath As String
        FolderPath = "S:\- GPEstimator\GP Import"
        If Right(FolderPath, 1) <> "\" Then
            FolderPath = FolderPath & "\"
        End If
        If Dir(FolderPath, vbDirectory) <> vbNullString Then
        Else
        Exit Sub
        End If
        For Each WB In Application.Workbooks
        On Error Resume Next
        If WB.Name Like "GP Import*" Then GoTo GPisOpen
        Next WB
        Workbooks.Open Filename:= _
        "S:\- GPEstimator\GP Import\GP Import.xls"
GPisOpen:
            Windows("GP Import.xls").Activate
            Sheets("GP").Select
            Windows("EstimatorWB.xlsb").Activate
            Range("B8:Z25").Copy
            Windows("GP Import.xls").Activate
            Sheets("GP").Select
            Range("C8").Select
                Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
                :=False, Transpose:=False
                
            Windows("EstimatorWB.xlsb").Activate
            Range("F2").Copy
            Windows("GP Import.xls").Activate
            Sheets("GP").Select
            Range("G3").Select
                Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
                :=False, Transpose:=False
            
            Windows("EstimatorWB.xlsb").Activate
            Range("F3").Copy
            Application.ScreenUpdating = True
            Windows("GP Import.xls").Activate
            Sheets("GP").Select
            Range("G4").Select
                Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
                :=False, Transpose:=False
    
            Application.ScreenUpdating = True
    
    SaveClose = MsgBox("Save and Close ?", vbYesNo)
                Select Case SaveClose
                Case vbNo
                If vb = No Then ActiveSheet.Protect: Exit Sub
                End Select
SC:
    ActiveWorkbook.SaveAs "S:\- GPEstimator\GP Imports Standards\" & Range("G5").Value
            ActiveWorkbook.Close
            Application.CutCopyMode = False
    End Sub
Sub EstimatorWB_SPR_Fantastic_Routing()
Application.ScreenUpdating = False
Application.DisplayAlerts = False
If [F2] < 0.01 Then MsgBox "Part Number Missing Exit ! Run Change Part Number": Exit Sub
Application.ScreenUpdating = False
    For Each WB In Application.Workbooks
    On Error Resume Next
    If WB.Name Like "FantasticSPR*" Then GoTo Routing
    Next WB
    Workbooks.Open Filename:= _
    "S:\- GPEstimator\GP Import\FantasticSPRRouting.xls"

Routing:
    For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("D8:D25").Select
    Selection.Copy
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("A2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

      For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("G8:G25").Select
    Selection.Copy
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("B2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

      For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("F8:F25").Select
    Selection.Copy
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("C2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

      For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("H8:H25").Select
    Selection.Copy
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("D2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False

      For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("I8:I25").Select
    Selection.Copy
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("E2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
            :=False, Transpose:=False
    Range("E2:E25").Copy
    Range("F2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        
    For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("K8:K25").Select
    Selection.Copy
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("G2").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        
    For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("F2").Select
    Selection.Copy
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("I3").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
        
    For Each WB In Application.Workbooks
    If WB.Name Like "EstimatorWB*" Then WB.Activate:
    Next WB
    Range("F3").Select
    Selection.Copy
    Application.ScreenUpdating = True
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    Range("I4").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
      
      Range("I1").Value = "=CONCATENATE(I2,H1,I3,H1,I4)"
      Application.DisplayAlerts = True
    
    Windows("FantasticSPRRouting.xls").Activate
    Sheets("SPRRouting").Select
    
    SaveClose = MsgBox("Save and Close ?", vbYesNo)
                Select Case SaveClose
                Case vbYes
                If vb = Yes Then GoTo SC
                Case vbNo
                If vb = No Then Exit Sub
                End Select
SC:
Application.DisplayAlerts = False
    ActiveWorkbook.SaveAs "S:\- GPEstimator\Fantastic SPRRoutings\" & Range("I1").Value
    For Each WB In Application.Workbooks
    If WB.Name Like "FantasticSPRRouting*" Then WB.Activate:
    Next WB
    Sheets("SPRRouting").Select
Application.DisplayAlerts = True
    ActiveWorkbook.Close SaveChanges:=True
End Sub

Sub EstimatorWB_CratesWU()
ChDir "S:\- GPEstimator\Logs"
Workbooks.Open Filename:="S:\- GPEstimator\Logs\WU Crates.xls"
End Sub
Sub EstimatorWB_CartonWU()
ChDir "S:\- GPEstimator\Logs"
Workbooks.Open Filename:="S:\- GPEstimator\Logs\WU Cartons.xls"
End Sub
Sub EstimatorWB_ToolingWU()
ChDir "S:\- GPEstimator\Logs"
Workbooks.Open Filename:="S:\- GPEstimator\Logs\WU Tooling.xls"
End Sub
Sub EstimatorWB_FanDim()
ChDir "S:\- GPEstimator\Logs"
Workbooks.Open Filename:="S:\- GPEstimator\Logs\FanDim.xls"
End Sub
Sub EstimatorWB_GPImport()
ChDir "S:\- GPEstimator\GP Import"
Workbooks.Open Filename:="S:\- GPEstimator\GP Import\GP Import.xls"
End Sub
Sub EstimatorWB_SPRImport()
ChDir "S:\- GPEstimator\GP Import"
Workbooks.Open Filename:="S:\- GPEstimator\GP Import\FantasticSPRRouting.xls"
End Sub
Sub SortNumsInRange()
Attribute SortNumsInRange.VB_ProcData.VB_Invoke_Func = "S\n14"
Dim Rng As Range
Dim WorkRng As Range
Dim Arr As Variant
On Error Resume Next
Set WorkRng = Application.Selection
Set WorkRng = Application.InputBox("Range To Sort", xTitleId, WorkRng.Address, Type:=8)
Set objArrayList = CreateObject("System.Collections.ArrayList")
For Each Rng In WorkRng
    Arr = VBA.Split(Rng.Value, " ")
    For i = 0 To UBound(Arr)
        xMin = i
        For j = i + 1 To UBound(Arr)
            If Arr(xMin) > Arr(j) Then
                xMin = j
            End If
        Next j
        If xMin <> i Then
            temp = Arr(i)
            Arr(i) = Arr(xMin)
            Arr(xMin) = temp
        End If
    Next i
    Rng.Value = VBA.Join(Arr, " ")
Next
End Sub
