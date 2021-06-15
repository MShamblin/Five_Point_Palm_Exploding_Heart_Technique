Sub CheckFolderExists ()

Dim strFolderName As String
Dim strFolderExists As String

    strFolderName = "C:\Users\Nikola\Desktop\VBA articles\Test Folder\"
    strFolderExists = Dir(strFolderName, vbDirectory)

    If strFolderExists = "" Then
        MsgBox "The selected folder doesn't exist"
    Else
        MsgBox "The selected folder exists"
    End If

End Sub