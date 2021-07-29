'How the tables in a relational database are related'

'Concepts 
    • The tables in a relational database are related to each other through their key columns. 
        For example, the VendorID column is used to relate the Vendors and Invoices tables above. 
        The VendorID column in the Invoices table is called a foreign key because it identifies 
        a related row in the Vendors table. A table may contain one or more foreign keys.
    • When you define a foreign key for a table in SQL Server, you can’t add rows to the table 
        with the foreign key unless there’s a matching primary key in the related table.
    • The relationships between the tables in a database correspond to the relationships between 
        the entities they represent. The most common type of relationship is a one-to-many 
        relationship as illustrated by the Vendors and Invoices tables. A table can also have a 
        one-to-one relationship or a many-to-many relationship with another table.'



