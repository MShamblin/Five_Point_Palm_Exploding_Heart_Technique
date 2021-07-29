The Relational Databases and SQL


Concepts 
    • A relational database consists of tables. Tables consist of rows and columns, 
        which can also be referred to as records and fields.
    • A table is typically modeled after a real-world entity, such as an invoice or 
        a vendor.
    • A column represents some attribute of the entity, such as the amount of an 
        invoice or a vendor’s address.
    • A row contains a set of values for a single instance of the entity, such as 
        one invoice or one vendor.
    • The intersection of a row and a column is sometimes called a cell. A cell 
        stores a single value.
    • Most tables have a primary key that uniquely identifies each row in the table.
        The primary key is usually a single column, but it can also consist of two or more columns. If a primary key uses two or more columns, it’s called a composite primary key.
    • In addition to primary keys, some database management systems let you define 
        one or more non-primary keys. In SQL Server, these keys are called unique keys. Like a primary key, a non-primary key uniquely identifies each row in the table.
    • A table can also be defined with one or more indexes. An index provides an 
        efficient way to access data from a table based on the values in specific 
        columns. An index is automatically created for a table’s primary and 
        non-primary keys.'

