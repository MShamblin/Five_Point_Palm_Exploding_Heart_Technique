Public Sub StartFilter()



If Not ActiveSheet.AutoFilterMode Then

     ActiveSheet.Range("A1").AutoFilter

End If



End Sub