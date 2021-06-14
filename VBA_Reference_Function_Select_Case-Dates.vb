
'This Case Select example is a Function that tests which quarter a date fall into.
'Because it’s a function, you can use it as a function inside Excel:

Sub TestDate ()
 MsgBox GetQuarter(CDate("7/20/2019"))
End Sub
 
Function GetQuarter(dt As Date) As Integer
    Dim sht As Worksheet
 
    Select Case dt
        Case CDate("01/01/2019") To CDate("03/31/2019")
            GetQuarter = 1
        Case CDate("04/01/2019") To CDate("06/30/2019")
            GetQuarter = 2
        Case CDate("07/01/2019") To CDate("09/30/2019")
            GetQuarter = 3
        Case CDate("10/01/2019") To CDate("12/31/2019")
            GetQuarter = 4
    End Select
End Function