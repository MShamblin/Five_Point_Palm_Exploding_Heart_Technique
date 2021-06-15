VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True

Private Sub Worksheet_SelectionChange(ByVal Target As Range)

    Cells.Interior.ColorIndex = xlNone
    With ActiveCell
        .EntireRow.Interior.ColorIndex = 35
        .EntireColumn.Interior.ColorIndex = 35
    End With

End Sub
