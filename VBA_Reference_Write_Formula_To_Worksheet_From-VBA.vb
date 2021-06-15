Sub Formula_Example()

    'Assign a hard-coded formula to a single cell
    Range("b3").Formula = "=b1+b2"
    
    'Assign a flexible formula to a range of cells
    Range("d1:d100").FormulaR1C1 = "=RC2+RC3"

End Sub