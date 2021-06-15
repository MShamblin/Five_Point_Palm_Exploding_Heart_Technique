Sub DeleteAllShapes()

Dim GetShape As Shape

For Each GetShape In ActiveSheet.Shapes
  GetShape.Delete
Next

End Sub