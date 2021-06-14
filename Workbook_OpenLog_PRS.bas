Attribute VB_Name = "OpenLog"
Sub Open_Log()
Attribute Open_Log.VB_Description = "Opens the Log"
Attribute Open_Log.VB_ProcData.VB_Invoke_Func = "o\n14"
'
' Open_Log Macro
'

'
    ChDir _
        "U:\usermast\Manufacturing_Eng_Support\Project_Repair_Service_Quotes_and_Invoices"
    Workbooks.Open Filename:= _
        "U:\usermast\Manufacturing_Eng_Support\Project_Repair_Service_Quotes_and_Invoices\Project_Repair_Service_Quotes_and_Invoices_Log.xls"
'    ActiveWindow.ActivateNext
    
End Sub
