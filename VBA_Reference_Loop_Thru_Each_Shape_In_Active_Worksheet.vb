

'This code will delete all shapes in the active sheet.

Sub ForEachShape()
 
Dim shp As Shape
 
For Each shp In ActiveSheet.Shapes
    shp.Delete
Next shp
 
End Sub