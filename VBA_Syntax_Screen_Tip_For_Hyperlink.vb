Sub ScreenTipForHyperlink()

ActiveSheet.Hyperlinks.Add Range("A1"), Address:="https://www.automateexcel.com/excel/", TextToDisplay:="Automate Excel", ScreenTip:="This is the link for Automate Excel"

End Sub