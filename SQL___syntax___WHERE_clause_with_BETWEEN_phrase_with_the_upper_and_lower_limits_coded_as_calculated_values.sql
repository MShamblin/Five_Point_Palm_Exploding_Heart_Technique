-- The syntax of the WHERE clause with a BETWEEN phrase
-- A BETWEEN phrase with the upper and lower limits coded as calculated values 


WHERE InvoiceDueDate BETWEEN GetDate() AND GetDate() + 30
