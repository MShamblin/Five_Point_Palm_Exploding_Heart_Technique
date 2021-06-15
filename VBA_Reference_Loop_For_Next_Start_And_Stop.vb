Sub LoopForNextStatic()
   
   'declare a variant array
   Dim strNames(1 To 4) As String
   
   'populate the array
   strNames(1) = "Bob"
   strNames(2) = "Peter"
   strNames(3) = "Keith"
   strNames(4) = "Sam"
   
   'declare an integer
   Dim i As Integer
   
   'loop from position 2 to position 3 of the array
   For i = 2 To 3
      'show the name in the immediate window
      Debug.Print strNames(i)
   Next i
   
End Sub