Sub CreateWorkbooks()
   Dim newSheet As Worksheet, regionSheet As Worksheet
   Dim cell As Object
   Dim regionRange As String

   Set regionSheet = Sheets("REGION SHEET")

   ' Turn off screen updating to increase performance.
   Application.ScreenUpdating = False

   ' Build a string that specifies the cells in column B that
   ' contain region names starting from cell B4.
   regionRange = "B4:" & regionSheet.Range("B4").End(xlDown).Address

   For Each cell In regionSheet.Range(regionRange)
      If SheetExists(cell.Value) = False Then
         ' Add a new worksheet.
         Sheets.Add After:=Sheets(Sheets.Count)
         ' Set newSheet variable to the new worksheet.
         Set newSheet = ActiveSheet
         ' Copy boilerplate data from first three rows 
         ' of the master worksheet to the range starting at
         ' A1 in the new sheet.
         regionSheet.Range("A1:A3").EntireRow.Copy newSheet.Range("A1")
         ' Copy and paste the column widths to the new sheet.
         regionSheet.Range("A1:A3").EntireRow.Copy
         newSheet.Range("A1").PasteSpecial xlPasteColumnWidths
         ' Copy the entire row for the current region and
         ' paste starting at cell A4 in the new sheet.
         cell.EntireRow.Copy newSheet.Range("A4")
         ' Name the new sheet.
         newSheet.Name = cell.Value
         ' Call the SaveWorkbook function to save the current
         ' worksheet as a new workbook file.
         SaveWorkbook (cell.Value)
         ' Turn off alerts, and then delete the new worksheet
         ' from the current workbook.
         Application.DisplayAlerts = False
         newSheet.Delete
         ' Turn alerts back on.
         Application.DisplayAlerts = True
      End If
   Next Cell

   ' Notify the user that the process is complete.
   MsgBox "All workbooks have been created successfully"

   ' Turn screen updating back on.
   Application.ScreenUpdating = True

End Sub
