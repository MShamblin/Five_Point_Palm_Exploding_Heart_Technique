-- A stored procedure that adds a linked server 
	USE master; 
	EXEC sp_addlinkedserver 
		@server='DBServer', 
		@srvproduct='', 
		@provider='SQLNCLI', 
        @datasrc='localhost\SqlExpress';    