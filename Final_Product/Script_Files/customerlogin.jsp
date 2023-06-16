<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
</head>
<style>
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
<body>
<form action="customerdata.jsp"method "post">
		<table align="center">
			<tr>
				<h1 style="color:red;font-size:35px;text-align:center;">Customer Registration</h1>
			</tr>
			<tr>
				<td>Customer ID</td>
				<td><input type="text" name="CUSTOMER_ID"></td>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td><input type="text" name="NAME"></td>
			</tr>
			<tr>
				<tr>
				<td>Email</td>
				<td><input type="text" name="EMAIL"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" class="button" value="register"></td>
			</tr>
		</table>

	</form>
	
	<form action="existingcustomer.jsp"method "post">
	<table align="center">
			<tr>
				<h1 style="color:red;font-size:35px;text-align:center;">Existing Customers please check below</h1>
			</tr>
			<tr>
				<td>Enter your Customer ID to view your orders</td>
				<td><input type="text" name="customer_id"></td>
			<tr>
				<tr>
				<td></td>
				<td><input type="submit" class="button" value="Enter"></td>
			</tr>
			</table>
	</form>
	
	<div class="header">
		<h1>Below Are The Customer Records</h1>
	</div>
	<%
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"pxs7587", "Hpintelamd22");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select * from S22_S003_13_CUSTOMER");
	while (rs.next()) {
		%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">CUSTOMER_ID</th>
				<th width="25%">NAME</th>
				<th width="25%">EMAIL</th>


			</tr>
			<tr>
				<td width="25%"><%=rs.getString(1)%></td>
				<td width="25%"><%=rs.getString(2)%></td>
				<td width="25%"><%=rs.getString(3)%></td>


			</tr>
		</tbody>
	</table>
	<%
	}


	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
	
</body>
</html>