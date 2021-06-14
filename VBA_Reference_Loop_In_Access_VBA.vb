'Most of the examples above will also work in Access VBA. 
'However, in Access, we loop through the Recordset 
'Object rather than the Range Object.

Sub LoopThroughRecords()
   On Error Resume Next
   Dim dbs As Database
   Dim rst As Recordset
   Set dbs = CurrentDb
   Set rst = dbs.OpenRecordset("tblClients", dbOpenDynaset)
   With rst
      .MoveLast
      .MoveFirst
      Do Until .EOF = True
         MsgBox (rst.Fields("ClientName"))
        .MoveNext
     Loop
   End With
   rst.Close
   Set rst = Nothing
   Set dbs = Nothing
End Sub