
'The For Next Loop allows you to repeat a block of code a specified number of times. 
'The syntax is:

[Dim Counter as Integer]
 
For Counter = Start to End [Step Value]
    [Do Something]
Next [Counter]


'Where the items in brackets are optional.

'[Dim Counter as Long] – Declares the counter variable. 
'Required if Option Explicit is declared at the top of your module.

'Counter – An integer variable used to count

'Start – The start value (Ex. 1)

'End – The end value (Ex. 10)

'[Step Value] – Allows you to count every n integers instead of 
'every 1 integer. You can also go in reverse with a negative value (ex. Step -1)

'[Do Something] – The code that will repeat

'Next [Counter] – Closing statement to the For Next Loop. You can include the Counter or not. However, I strongly recommend including the counter as it makes your code easier to read.