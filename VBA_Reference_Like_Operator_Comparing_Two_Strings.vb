Sub LikeDemo()

Dim strName As String
Dim blnResult As Boolean

strName = "Mr. Michael James" 

If strName Like "Mr*" Then
    blnResult = True
Else
    blnResult = False
End If

End Sub