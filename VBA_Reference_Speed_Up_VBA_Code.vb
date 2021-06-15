Application.ScreenUpdating = False
Application.DisplayStatusBar = False
Application.EnableEvents = False
ActiveSheet.DisplayPageBreaks = False
Application.Calculation = xlCalculationManual

'Your Code Here

Application.ScreenUpdating = True
Application.DisplayStatusBar = True
Application.EnableEvents = True
ActiveSheet.DisplayPageBreaks = True
Application.Calculation = xlCalculationAutomatic
end sub