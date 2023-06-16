<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.header {
	padding: 60px;
	text-align: center;
	background: #1abc9c;
	color: white;
	font-size: 30px;
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
<meta charset="ISO-8859-1">
<title>Admin - Page</title>
</head>
<body>
<div class="header">
		<h1>Welcome Admin</h1>
	</div>
	
	<form action="deletecustomer.jsp"method "post">
		<input type="submit" class="button" value="Delete_Customer_Record">
	</form>
	
	<form action="orderdiscount.jsp"method "post">
		<input type="submit" class="button" value="Order_Discount">
	</form>
	
	<form action="employee2.jsp"method "post">
		<input type="submit" class="button" value="Employee">
	</form>
	
	<form action="addproduct.jsp"method "post">
		<input type="submit" class="button" value="Add_Product">
	</form>
	
	<form action="reports.jsp"method "post">
		<input type="submit" class="button" value="REPORTS">
	</form>
	
</body>
</html>