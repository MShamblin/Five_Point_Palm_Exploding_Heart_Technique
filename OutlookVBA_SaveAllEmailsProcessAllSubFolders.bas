Option Explicit
       Dim StrSavePath     As String

Sub SaveAllEmails_ProcessAllSubFolder()
       
    Dim i               As Long
    Dim j               As Long
    Dim n               As Long
    Dim StrSubject      As String
    Dim StrName         As String
    Dim StrFile         As String
    Dim StrReceived     As String
    Dim StrFolder       As String
    Dim StrSaveFolder   As String
    Dim StrFolderPath   As String
    Dim iNameSpace      As NameSpace
    Dim myOlApp         As Outlook.Application
    Dim SubFolder       As MAPIFolder
    Dim mItem           As MailItem
    Dim FSO             As Object
    Dim ChosenFolder    As Object
    Dim Folders         As New Collection
    Dim EntryID         As New Collection
    Dim StoreID         As New Collection
       
    Set FSO = CreateObject("Scripting.FileSystemObject")
    Set myOlApp = Outlook.Application
    Set iNameSpace = myOlApp.GetNamespace("MAPI")
    Set ChosenFolder = iNameSpace.PickFolder
    If ChosenFolder Is Nothing Then
GoTo ExitSub:
    End If
       
BrowseForFolder StrSavePath
          
    Call GetFolder(Folders, EntryID, StoreID, ChosenFolder)
       
    For i = 1 To Folders.Count
        StrFolder = StripIllegalChar(Folders(i))
        n = InStr(3, StrFolder, "\") + 1
        StrFolder = Mid(StrFolder, n, 256)
        StrFolderPath = StrSavePath & "\" & StrFolder & "\"
        StrSaveFolder = Left(StrFolderPath, Len(StrFolderPath) - 1) & "\"
        If Not FSO.FolderExists(StrFolderPath) Then
            FSO.CreateFolder (StrFolderPath)
        End If
           
        Set SubFolder = myOlApp.Session.GetFolderFromID(EntryID(i), StoreID(i))
        On Error Resume Next
        For j = 1 To SubFolder.Items.Count
            Set mItem = SubFolder.Items(j)
            StrReceived = Format(mItem.ReceivedTime, "YYYYMMDD-hhmm")
            StrSubject = mItem.Subject
            StrName = StripIllegalChar(StrSubject)
            StrFile = StrSaveFolder & StrReceived & "_" & StrName & ".msg"
            StrFile = Left(StrFile, 256)
            mItem.SaveAs StrFile, 3
        Next j
        On Error GoTo 0
    Next i
       
ExitSub:
       
End Sub
   
Function StripIllegalChar(StrInput)
    Dim RegX            As Object
       
    Set RegX = CreateObject("vbscript.regexp")
       
    RegX.Pattern = "[\" & Chr(34) & "\!\@\#\$\%\^\&\*\(\)\=\+\|\[\]\{\}\`\'\;\:\<\>\?\/\,]"
    RegX.IgnoreCase = True
    RegX.Global = True
       
    StripIllegalChar = RegX.Replace(StrInput, "")
       
ExitFunction:
    Set RegX = Nothing
       
End Function
   

Sub GetFolder(Folders As Collection, EntryID As Collection, StoreID As Collection, Fld As MAPIFolder)
    Dim SubFolder       As MAPIFolder
       
    Folders.Add Fld.FolderPath
    EntryID.Add Fld.EntryID
    StoreID.Add Fld.StoreID
    For Each SubFolder In Fld.Folders
        GetFolder Folders, EntryID, StoreID, SubFolder
    Next SubFolder
       
ExitSub:
    Set SubFolder = Nothing
       
End Sub
   
   
Function BrowseForFolder(StrSavePath As String, Optional OpenAt As String) As String
    Dim objShell As Object
    Dim objFolder '  As Folder

Dim enviro
enviro = CStr(Environ("USERPROFILE"))
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.BrowseForFolder(0, "Please choose a folder", 0, enviro & "\Documents\")
StrSavePath = objFolder.self.Path

    On Error Resume Next
    On Error GoTo 0
       
ExitFunction:
    Set objShell = Nothing
       
End Function
