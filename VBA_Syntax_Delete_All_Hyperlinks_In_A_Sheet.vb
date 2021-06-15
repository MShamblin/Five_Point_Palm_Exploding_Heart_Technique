Sub RemoveAllHyperlinksInASheet()

ThisWorkbook.Sheets(1).Hyperlinks.Delete

End Sub

'Could also use
ActiveSheet.Hyperlinks.Delete