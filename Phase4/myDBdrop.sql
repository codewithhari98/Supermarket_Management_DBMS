SQL> drop table S22_S003_13_Handles; -- Dropped the Handles table.

Table dropped.

SQL> drop table S22_S003_13_Contains; -- Dropped the Contains table. 

Table dropped.

SQL> Alter table S22_S003_13_Department drop column Manager_Employee_Id; -- Dropped the column (Manager_Employee_Id) before dropping the Employee table.

Table altered.

SQL> drop table S22_S003_13_Employee; -- Dropped the Employee table.

Table dropped.

SQL> drop table S22_S003_13_Department; -- Dropped the Department table.

Table dropped.

SQL> 
SQL> 
SQL> drop table S22_S003_13_Product; -- Dropped the Product table.

Table dropped.

SQL> drop table S22_S003_13_Product_Category; -- Dropped the Product Category table.

Table dropped.

SQL> drop table S22_S003_13_Order; -- Dropped the Order table.

Table dropped.

SQL> drop table S22_S003_13_Customer_Phone_Number; -- Dropped the Customer Phone Number table.

Table dropped.

SQL> drop table S22_S003_13_Customer; -- Dropped the Customer table.

Table dropped.

SQL> select table_name from all_tables where owner = 'PXS7587'; -- Checking if all the tables are dropped.

no rows selected

SQL> spool off;
