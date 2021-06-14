Attribute VB_Name = "MikeMacro"
Sub MikeMacroStart()
Attribute MikeMacroStart.VB_ProcData.VB_Invoke_Func = "j\n14"
'
' MikeMacro Macro
' Using this to prepare editing to the worksheet
'
' Keyboard Shortcut: Ctrl+j
'

'    Application.Run "EstimatorWB.xlsb!EstimatorWB_UnProtect"
    Application.Run "EstimatorMike.xlsb!EstimatorWB_UnProtect"
    Rows("8:29").Select
    Selection.EntireRow.Hidden = True
    Columns("F:F").Select
    Selection.ColumnWidth = 30
    Range("B485").Select
    
End Sub

Sub MikeMacroEnd()
Attribute MikeMacroEnd.VB_ProcData.VB_Invoke_Func = "k\n14"
'
' MikeMacro Macro
' Using this to prepare editing to the worksheet
'
' Keyboard Shortcut: Ctrl+k
'

    Rows("8:29").Select
    Selection.EntireRow.Hidden = False
    Columns("F:F").Select
    Selection.ColumnWidth = 80
    Range("F2").Select
    
'    Application.Run "EstimatorWB.xlsb!EstimatorWB_Protect_"
    Application.Run "EstimatorMike.xlsb!EstimatorWB_Protect_"
    
End Sub
