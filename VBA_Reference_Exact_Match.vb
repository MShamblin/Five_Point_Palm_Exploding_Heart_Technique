Sub ExactMatch_Food()
 
Select Case Range("a1").Value
    Case "Beets"
        MsgBox "Vegetable"
    Case "Apple", "Banana", "Orange"
        MsgBox "Fruit"
End Select
 
End Sub