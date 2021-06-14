Attribute VB_Name = "OpenLog"
Sub Open_Log()
Attribute Open_Log.VB_Description = "Opens the Log"
Attribute Open_Log.VB_ProcData.VB_Invoke_Func = "o\n14"
'
' Open_Log Macro
'

'
    ChDir _
        "Y:\Internal Projects IE Main Mfg Tool"
    Workbooks.Open Filename:= _
        "Y:\Internal Projects IE Main Mfg Tool\New Internal Project Log.xls"
'    ActiveWindow.ActivateNext
    
End Sub
