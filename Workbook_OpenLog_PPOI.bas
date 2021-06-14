Attribute VB_Name = "OpenPPOILog"
Sub Open_Log()
'
' Open_Log Macro

    ChDir _
        "U:\usermast\Manufacturing_Eng_Support\PPOI_Files"
    Workbooks.Open Filename:= _
        "U:\usermast\Manufacturing_Eng_Support\PPOI_Files\PPOI Log.xls"
        
'    ActiveWindow.ActivateNext
End Sub

