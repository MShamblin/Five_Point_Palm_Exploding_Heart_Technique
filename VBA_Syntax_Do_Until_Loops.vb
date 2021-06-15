'The Do Until loop is very similar to the Do While loop. 
'The loop repeatedly executes a section of code until a 
'specified condition evaluates to True. This is shown in 
'the following sub procedure, where a Do Until loop is 
'used to extract the values from all cells in Column '
'A of a Worksheet, until it encounters an empty cell:


stepRow = 1
Do Until IsEmpty(Cells(stepRow, 1))
' Store the current cell value in the cellValues array
cellValues(stepRow) = Cells(stepRow, 1).Value
stepRow = stepRow + 1
Loop


'In the above example, as the condition IsEmpty(Cells(iRow, 1)) 
'is at the start of the Do Until loop, the loop will only be 
'entered if the first cell encountered is non-blank.