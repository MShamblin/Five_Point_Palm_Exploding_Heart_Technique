Public Sub ExpandFolder(Mail As Outlook.MailItem)
  Dim F1 As Outlook.MAPIFolder
  Dim F2 As Outlook.MAPIFolder

  Set F1 = Application.ActiveExplorer.CurrentFolder
  Set F2 = Mail.Parent
  Set Application.ActiveExplorer.CurrentFolder = F2
  DoEvents
  Set Application.ActiveExplorer.CurrentFolder = F1
End Sub
