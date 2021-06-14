Sub LoopForNextDynamic()
'declare a variant array
   Dim strNames() As String
'initialize the array
   ReDim strNames(1 to 4)
'populate the array
   strNames(1) = "Bob"
   strNames(2) = "Peter"
   strNames(3) = "Keith"
   strNames(4) = "Sam"
'declare an integer
   Dim i As Integer
'loop from the lower bound of the array to the upper bound of the array - the entire array
   For i = LBound(strNames) To UBound(strNames)
'show the name in the immediate window
      Debug.Print strNames(i)
   Next i
End Sub