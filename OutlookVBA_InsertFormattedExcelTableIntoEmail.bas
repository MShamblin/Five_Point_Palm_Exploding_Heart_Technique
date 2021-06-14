Sub PasteFormattedTable()
  Dim Doc As Word.Document
  Dim wdRn As Word.Range
  Dim Xl As Excel.Application
  Dim Ws As Excel.Worksheet
  Dim xlRn As Excel.Range

  Set Doc = Application.ActiveInspector.WordEditor
  Set wdRn = Doc.Range

  Set Xl = GetObject(, "Excel.Application")
  Set Ws = Xl.Workbooks("Mappe1.xls").Worksheets(1)

  Set xlRn = Ws.Range("b2", "c6")
  xlRn.Copy

  wdRn.Paste
End Sub
