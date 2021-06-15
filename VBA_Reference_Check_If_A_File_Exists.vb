Sub CheckFileExists ()

Dim strFileName As String
Dim strFileExists As String

    strFileName = "C:\Users\Nikola\Desktop\VBA articles\Test File Exists.xlsx"
    strFileExists = Dir(strFileName)

   If strFileExists = "" Then
        MsgBox "The selected file doesn't exist"
    Else
        MsgBox "The selected file exists"
    End If

End Sub