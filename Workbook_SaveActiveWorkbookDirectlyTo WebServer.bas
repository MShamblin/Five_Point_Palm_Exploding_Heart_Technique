With ActiveWorkbook 
 With .WebOptions 
 .RelyonVML = True 
 .PixelsPerInch = 96 
 End With 
 With .PublishObjects(1) 
 .FileName = _ 
 "https://example.homepage.com/annualreport.htm" 
 .Publish 
 End With 
End With
