Attribute VB_Name = "EstimatorWB_Protect"
Sub EstimatorWB_Protect_()
Attribute EstimatorWB_Protect_.VB_ProcData.VB_Invoke_Func = "p\n14"
 Application.DisplayFormulaBar = False
 ActiveWindow.DisplayGridlines = False
' ActiveWindow.DisplayHeadings = False
' Application.DisplayStatusBar = Not Application.DisplayStatusBar
 ActiveWindow.DisplayWorkbookTabs = True
 ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True
End Sub
Sub EstimatorWB_UnProtect()
Attribute EstimatorWB_UnProtect.VB_ProcData.VB_Invoke_Func = "u\n14"
    Dim Password As String
    Do Until Password = "acme" '''

        Password = InputBox("Enter Password or Cancel", "Password", "****")
        If Password = "" Then
            Exit Sub
        End If
    Loop
ActiveSheet.Unprotect
Application.DisplayFormulaBar = True
ActiveWindow.DisplayHeadings = True
ActiveWindow.DisplayGridlines = True
Application.DisplayStatusBar = True
ActiveWindow.DisplayWorkbookTabs = True
End Sub
Sub PasswordBreaker()
    'Breaks worksheet password protection.
    Dim i As Integer, j As Integer, k As Integer
    Dim l As Integer, m As Integer, n As Integer
    Dim i1 As Integer, i2 As Integer, i3 As Integer
    Dim i4 As Integer, i5 As Integer, i6 As Integer
    On Error Resume Next
    For i = 65 To 66: For j = 65 To 66: For k = 65 To 66
    For l = 65 To 66: For m = 65 To 66: For i1 = 65 To 66
    For i2 = 65 To 66: For i3 = 65 To 66: For i4 = 65 To 66
    For i5 = 65 To 66: For i6 = 65 To 66: For n = 32 To 126
    ActiveSheet.Unprotect Chr(i) & Chr(j) & Chr(k) & _
        Chr(l) & Chr(m) & Chr(i1) & Chr(i2) & Chr(i3) & _
        Chr(i4) & Chr(i5) & Chr(i6) & Chr(n)
    If ActiveSheet.ProtectContents = False Then
        MsgBox "One usable password is " & Chr(i) & Chr(j) & _
            Chr(k) & Chr(l) & Chr(m) & Chr(i1) & Chr(i2) & _
            Chr(i3) & Chr(i4) & Chr(i5) & Chr(i6) & Chr(n)
         Exit Sub
    End If
    Next: Next: Next: Next: Next: Next
    Next: Next: Next: Next: Next: Next
End Sub
Sub EstimatorWB_enableEvents()
    Application.enableEvents = True
End Sub
Sub EstimatorWB_disableEvents()
    Application.enableEvents = False
End Sub

