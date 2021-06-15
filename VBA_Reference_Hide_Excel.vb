Public Sub HideMyExcel()



Application.Visible = False

Application.Wait Now + TimeValue("00:00:05")

Application.Visible = True



End Sub
