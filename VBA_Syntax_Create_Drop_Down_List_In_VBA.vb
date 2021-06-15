Sub DropDownListinVBA()

Range("A2").Validation.Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, _
Formula1:="Orange,Apple,Mango,Pear,Peach"

End Sub