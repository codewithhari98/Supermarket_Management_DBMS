SQL> update S22_S003_13_Department set MANAGER_EMPLOYEE_ID=100 where DEPARTMENT_ID=2001;

1 row updated.

SQL> update S22_S003_13_Department set MANAGER_EMPLOYEE_ID=103 where DEPARTMENT_ID=2002;

1 row updated.

SQL> update S22_S003_13_Department set MANAGER_EMPLOYEE_ID=106 where DEPARTMENT_ID=2003;

1 row updated.
    -- Assigning values to FOREIGN KEY (MANAGER_EMPLOYEE_ID)
SQL> spool off;

-- Updating the records in the tables:-

SQL> update S22_S003_13_Product set Product_Name='Wheat Bread' where Product_Id=224;

1 row updated.

SQL> update S22_S003_13_Product set Product_Name='Grape Wine' where Product_Id=229;

1 row updated.

SQL> update S22_S003_13_Customer set Name='Prudhvi' where Customer_Id=2;

1 row updated.

SQL> update S22_S003_13_Employee set Salary=3200 where Last_Name='Wynne';

1 row updated.