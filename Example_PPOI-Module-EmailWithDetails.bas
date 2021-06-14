Attribute VB_Name = "EmailWithDetails"
Sub Send_PPOI_Via_Email()
'
'
'
'   Sending file via email - it does it behind the scenes

    Application.DisplayAlerts = False

    ActiveWorkbook.SaveAs "U:\usermast\Manufacturing_Eng_Support\PPOI_Files\Emailed_PPOI\" & Range("E7").Value


    Worksheets("PPOI").Select
    Dim oOApp As Object
    Dim oMail As Object

    Set oOApp = CreateObject("Outlook.Application")
    Set oMail = oOApp.CreateItem(0)

    On Error Resume Next
    With oMail
        .To = "BRitter@acmefan.com; BLanham@acmefan.com"
        .CC = "MShamblin@acmefan.com; SRyan@acmefan.com"
        .BCC = ""
        .Subject = "PPOI - " & Range("E9")
        .Body = "Status:  " & Range("E8") & vbCrLf & vbCrLf & _
            "Order Number and Item:  " & vbCrLf & Range("E9") & vbCrLf & vbCrLf & _
            "Order Quantity:  " & Range("E10") & vbCrLf & vbCrLf & _
            "Project Header:  " & vbCrLf & Range("E11") & vbCrLf & vbCrLf & _
            "Customer Name:  " & Range("E12") & vbCrLf & vbCrLf & _
            "Is this an SPR?:  " & Range("E13") & vbCrLf & vbCrLf & _
            "PPOI Requested By:   " & Range("E14") & vbCrLf & vbCrLf & vbCrLf & vbCrLf & _
            "Investigation Results:  " & vbCrLf & Range("E15") & vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf & _
            "To look directly at the Excel file, click below" & vbCrLf & _
            "file://" & ActiveWorkbook.FullName

        .Send
    
    End With
    On Error GoTo 0

    Set oMail = Nothing
    Set oOApp = Nothing

    Worksheets("PPOI").Select
    ActiveWorkbook.Protect
    ActiveWorkbook.Close
    Application.DisplayAlerts = False
    


End Sub


