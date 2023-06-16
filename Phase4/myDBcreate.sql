SQL> Create table S22_S003_13_Customer(Customer_Id Number NOT NULL, Name varchar(30) NOT NULL, Email varchar(30) NOT NULL, PRIMARY KEY(Customer_Id));

Table created.

SQL> Create table S22_S003_13_Customer_Phone_Number(Customer_Id Number NOT NULL, Phone_Type varchar(30) NOT NULL, Phone_Number varchar(30), FOREIGN KEY(Customer_Id) REFERENCES S22_S003_13_Customer(Customer_Id));

Table created.

SQL> Create table S22_S003_13_Order(Order_Id Number NOT NULL, Order_Amount varchar(30) NOT NULL, Order_Mode varchar(30) NOT NULL, Customer_Id Number NOT NULL, Placed_Order_Day varchar(30) NOT NULL, Placed_Order_Date varchar(30) NOT NULL, Placed_Order_Time varchar(30) NOT NULL, PRIMARY KEY(Order_Id), FOREIGN KEY(Customer_Id) REFERENCES S22_S003_13_Customer(Customer_Id));

Table created.

SQL> Create table S22_S003_13_Product_Category(Category varchar(30) NOT NULL, Aisle varchar(30) NOT NULL, PRIMARY KEY(Category));

Table created.

SQL> Create table S22_S003_13_Product(Product_Id NUMBER NOT NULL, Product_Name varchar(30) NOT NULL, Category varchar(30) NOT NULL, Selling_Price varchar(30) NOT NULL, Cost_Price varchar(30) NOT NULL, PRIMARY KEY(Product_Id), Foreign KEY(Category) references S22_S003_13_PProduct_Category(Category));
Create table S22_S003_13_Product(Product_Id NUMBER NOT NULL, Product_Name varchar(30) NOT NULL, Category varchar(30) NOT NULL, Selling_Price varchar(30) NOT NULL, Cost_Price varchar(30) NOT NULL, PRIMARY KEY(Product_Id), Foreign KEY(Category) references S22_S003_13_PProduct_Category(Category))
                                                                                                                                                                                                                                                              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> Create table S22_S003_13_Product(Product_Id NUMBER NOT NULL, Product_Name varchar(30) NOT NULL, Category varchar(30) NOT NULL, Selling_Price varchar(30) NOT NULL, Cost_Price varchar(30) NOT NULL, PRIMARY KEY(Product_Id), Foreign KEY(Category) references S22_S003_13_Product_Category(Category));

Table created.

SQL> Create table S22_S003_13_Department(Department_Id Number NOT NULL, Department_Name varchar(30) NOT NULL, Manager_Employee_ID Number, PRIMARY KEY(Department_Id));
     -- Creating the Department table without adding any FOREIGN KEY constraint to the Manager_Employee_ID column
Table created.

SQL> Create table S22_S003_13_Employee(Employee_Id Number NOT NULL, Salary Number NOT NULL, Designation varchar(30) NOT NULL, First_Name varchar(30) NOT NULL, Middle_Name varchar(30) NOT NULL, Last_Name varchar(30) NOT NULL, Employee_Department_ID Number NOT NULL, PRIMARY KEY(Employee_Id));

Table created.

SQL> Create table S22_S003_13_Handles(Product_Id Number NOT NULL, Employee_Id Number NOT NULL, Foreign KEY(Product_Id) references S22_S003_13_Product(Product_Id),Foreign KEY(Employee_Id) references S22_S003_13_Employee(Employee_Id));

Table created.

SQL> Create table S22_S003_13_Contains(Product_Quantity Number NOT Null, Product_Id Number NOT Null, Order_Id Number NOT Null, FOREIGN KEY (Product_Id) REFERENCES S22_S003_13_Product(Product_Id), FOREIGN KEY(Order_Id) REFERENCES S22_S003_13_Order(Order_Id));

Table created.

SQL> select table_name from all_tables where owner='PXS7587';

TABLE_NAME                                                                      
--------------------------------------------------------------------------------
S22_S003_13_CONTAINS                                                            
S22_S003_13_CUSTOMER                                                            
S22_S003_13_CUSTOMER_PHONE_NUMBER                                               
S22_S003_13_DEPARTMENT                                                          
S22_S003_13_EMPLOYEE                                                            
S22_S003_13_HANDLES                                                             
S22_S003_13_ORDER                                                               
S22_S003_13_PRODUCT                                                             
S22_S003_13_PRODUCT_CATEGORY                                                    

9 rows selected.

SQL> spool off
