Sub LoopForArrayStatic() 
   'declare a variant array 
   Dim strNames(1 To 4) As String 

   'populate the array 
   strNames(1) = "Bob"
   strNames(2) = "Peter" 
   strNames(3) = "Keith" 
   strNames(4) = "Sam" 

   'declare a variant to hold the array element 
   Dim item as variant

   'loop through the entire array
   For Each item in strNames 
      'show the element in the debug window.
      Debug.Print item
   Loop
End Sub