Sub GoToAnotherCellInAnotherSheetInTheSameWorkbook()

ActiveSheet.Hyperlinks.Add Range("A1"), Address:="", SubAddress:="'" & Sheet2.Name & "'!B2", TextToDisplay:="Click Here to Go to Sheet2, cell B2 of the same workbook"

End Sub