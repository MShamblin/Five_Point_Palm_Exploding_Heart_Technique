'The more conditions to test, the more useful the Case Statement is compared to an If Statement. 
'Let’s look at an example.

'Here is the code required to test if a worksheet name equals a set of values using an If Statement:

If Name = "Budget" Or Name = "Forecast" Or Name = "Trailing12" Or _
   Name = "Flex" Or Name = "OtherRatios" Or Name = "Comparison" Or _
   Name = "BudReview" Or Name = "P&L_Review" Or Name = "Other" Then
   'Do something
End If



'Here is the same code using a Select Statement instead:

Select Case Name
Case "Budget", "Forecast", "Trailing12", "Flex", "OtherRatios", _
     "Comparison", "BudReview", "P&L_Review", "Other"
    'Do Something
End Select

'You can see it’s much easier to use a Select Statement in this scenario. 
'It’s significantly less typing, and it’s much easier to read.