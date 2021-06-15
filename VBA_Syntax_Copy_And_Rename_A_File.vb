Dim oFSO As Object

Set oFSO = CreateObject("Scripting.FileSystemObject")

Call oFSO.CopyFile("C:\VBA Folder\Sample file 1.xlsx", "C:\VBA Folder\Sample file Copy.xlsx")