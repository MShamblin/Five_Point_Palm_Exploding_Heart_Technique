Sub Send_Mail()
    Dim OutApp As Object
    Dim OutMail As Object
    Set OutApp = CreateObject("Outlook.Application")
    Set OutMail = OutApp.CreateItem(0)
    With OutMail
        .to = "test@test.com"
        .Subject = "Test Email"
        .Body = "Message Body"
        .Attachments.Add ActiveWorkbook.FullName
        .Display
    End With
    Set OutMail = Nothing
    Set OutApp = Nothing
End Sub