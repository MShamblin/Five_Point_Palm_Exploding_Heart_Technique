How relational databases compare to other data models


A comparison of relational databases and conventional file systems 
Feature                 Conventional File System                        Relational database
Definition              Each program that uses the                      Tables, rows, and columns
                        are defined within the database                 and can be accessed by name                    
                        file must define the file and                  
                        the layout of the records within 
                        the file
Maintenance             If the definition of a file changes,            Programs can be used without
                        each program that uses the file must            modification when the definition
                        be modified                                     of a table changes
Validity checking       Each program that updates a file                Can include checks for valid
                        must include code to check for                  data
                        valid data
Relationships           Each program must provide for and               Can enforce relationships between
                        enforce relationships between files             tables using foreign keys; ad hoc
                                                                        relationships can also be used
Data access             Each I/O operation targets a                    A program can use SQL to access
                        specific record in a file based                 selected data in one or more 
                        on its relative position in the                 tables of a database
                        file or its key value




A comparison of relational databases and other database systems 
Feature                 Hierachical Database           Network Database             Relational Database
Supported               One-to-many only               One-to-many, one-to-one,     One-to-many, one-to-one,
relationships                                          and many-to-many             and many-to-many; ad hoc 
                                                                                    relationships can also be 
                                                                                    used
Data access             Program must include            Programs must include       Programs can access data
                        code to navigate through        code to navigate through    without knowing its
                        the physical structure of       the physical structure of   physical structure
                        the database                    the database                
Maintenance             New and modified                New and modified            Programs can be used
                        relationships can be            relationships can be        without modification when
                        difficult to implement          difficult to implement in   the definition of a table
                        application programs            application programs        changes



Description 
    • To work with any of the data models other than the relational database model, you must 
        know the physical structure of the data and the relationships between the files or tables.
    • Because relationships are difficult to implement in a conventional file system, redundant 
        data is often stored in these types of files.
    • The hierarchical database model provides only for one-to-many relationships, called 
        parent/child relationships.
    • The network database model can accommodate any type of relationship. 
    • Conventional files, hierarchical databases, and network databases are all more efficient 
        than relational databases because they require fewer system resources. However, the 
        flexibility and ease of use of relational databases typically outweigh this inefficiency.


