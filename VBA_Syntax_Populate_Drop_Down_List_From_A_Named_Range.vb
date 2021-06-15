Sub PopulateFromANamedRange()

Range("A7").Validation.Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, _
Formula1:="=Animals"

End Sub