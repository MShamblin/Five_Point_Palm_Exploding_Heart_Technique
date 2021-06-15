Sub LoopThroughFiles ()

Dim oFSO As Object
Dim oFolder As Object
Dim oFile As Object
Dim i As Integer

Set oFSO = CreateObject("Scripting.FileSystemObject")

Set oFolder = oFSO.GetFolder("C:\VBA Folder")

For Each oFile In oFolder.Files

    Cells(i + 1, 1) = oFile.Name

    i = i + 1

Next oFile

End Sub