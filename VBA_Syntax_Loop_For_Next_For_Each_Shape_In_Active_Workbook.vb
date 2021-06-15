

'You can also nest For Each Loops. Here we will loop through all shapes in all worksheets in the active workbook:

Sub ForEachShape_inAllWorksheets()
 
Dim shp As Shape, ws As Worksheet
 
For Each ws In Worksheets
    For Each shp In ws.Shapes
        shp.Delete
    Next shp
Next ws
 
End Sub