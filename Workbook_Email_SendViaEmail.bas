Attribute VB_Name = "SendViaEmail"
Sub Send_Via_Email()
'
'
'
'   Sending file via email - it does it behind the scenes

    Application.DisplayAlerts = False
    Windows("Project_Repair_or_Services_Form.xls").Activate
    Worksheets("Worksheet").Select
    

    MkDir "U:\usermast\Manufacturing_Eng_Support\Project_Repair_Service_Quotes_and_Invoices\Project_Repair_Service_Folders\" & Range("E4").Value
    ActiveWorkbook.SaveAs "U:\usermast\Manufacturing_Eng_Support\Project_Repair_Service_Quotes_and_Invoices\Project_Repair_Service_Folders\" & Range("E4").Value & "\" & Range("E7").Value


    Worksheets("Worksheet").Select
    Dim oOApp As Object
    Dim oMail As Object

    Set oOApp = CreateObject("Outlook.Application")
    Set oMail = oOApp.CreateItem(0)

    On Error Resume Next
    With oMail
    .To = Range("E17")
    .CC = "MShamblin@acmefan.com; DAldridge@acmefan.com; AcmeAP@acmefan.com"
    .BCC = ""
    .Subject = "New Project, Repair, or Service Record:  " & Range("E4")
    .Body = "This is a new quote for a project, service and/or repair." & vbCrLf & vbCrLf & vbCrLf & _
            "Project Manager:       " & Range("E17") & vbCrLf & _
            "Department:            " & Range("E18") & vbCrLf & _
            "Purchase Order Number (for Vendor):            " & Range("E4") & vbCrLf & _
            "Project File Name:     " & Range("E7") & vbCrLf & vbCrLf & vbCrLf & vbCrLf & _
            "Item Needing Repair:       " & Range("E9") & vbCrLf & _
            "Account To Be Charged:     " & Range("E11") & vbCrLf & _
            "Account Description:       " & Range("E10") & vbCrLf & vbCrLf & vbCrLf & vbCrLf & _
            "Group Performing Service:  " & Range("E14") & vbCrLf & _
            "Group Document Number (Quote #):   " & Range("E15") & vbCrLf & _
            "Method of Payment:         " & Range("E16") & vbCrLf & vbCrLf & vbCrLf & vbCrLf & _
            "Scope of Project:      " & Range("E19") & vbCrLf & _
            "Special Details:       " & Range("E20") & vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf & _
            "Please put a copy of all files associated with this project in this file folder: " & vbCrLf & _
            "file://" & "U:\usermast\Manufacturing_Eng_Support\Project_Repair_Service_Quotes_and_Invoices\Project_Repair_Service_Folders\" & Range("E4").Value
        
    
    
'   To add any Attachment
    .Attachments.Add ("U:\usermast\Manufacturing_Eng_Support\Project_Repair_Service_Quotes_and_Invoices\Project_Repair_Service_Folders\" & Range("E4").Value & "\" & Range("E7").Value)
'    .Display '=> It will display the message
    .Send '=> It will send the mail
    End With
    On Error GoTo 0

    Set oMail = Nothing
    Set oOApp = Nothing

    

'   Closes the workbook after the email is sent
    Worksheets("Worksheet").Select
    ActiveWorkbook.Protect
    ActiveWorkbook.Close
    Application.DisplayAlerts = False
    


End Sub


