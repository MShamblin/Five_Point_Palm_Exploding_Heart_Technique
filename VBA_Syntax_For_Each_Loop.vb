'The VBA For Each Loop will loop through all objects in a collection:

'All cells in a range
'All worksheets in a workbook
'All shapes in a worksheet
'All open workbooks
'You can also use Nested For Each Loops to:

'All cells in a range on all worksheets
'All shapes on all worksheets
'All sheets in all open workbooks
'and so on…
'The syntax is:

For Each Object in Collection
[Do Something]
Next [Object]
Where:

'Object – Variable representing a Range, Worksheet, Workbook, Shape, etc. (ex. rng)
'Collection – Collection of objects (ex. Range(“a1:a10”)
'[Do Something] – Code block to run on each object
'Next [Object] – Closing statement. [Object] is optional, however strongly recommended.