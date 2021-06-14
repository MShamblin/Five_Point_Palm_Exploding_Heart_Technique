x = Array("Sheet1", "Sheet5", "Sheet7") 
Sheets(x).FillAcrossSheets _ 
 Worksheets("Sheet1").Range("A1:C5")
' Copies a range to the same area on all other worksheets in a collection.
