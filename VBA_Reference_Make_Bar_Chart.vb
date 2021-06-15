Sub MakeChart()
 Dim myRange As Range

Set myRange = Application.InputBox _
   (Prompt:="Select chart inputs", Type:=8)
   Charts.Add
   ActiveChart.ChartType = xlColumnClustered
   ActiveChart.SetSourceData Source:=myRange, _
   PlotBy:=xlColumns

   ActiveChart.Location Where:=xlLocationAsNewSheet

End Sub