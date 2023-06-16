<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

    <form action="discountorder.jsp"method "post">
		<table align="center">
			<tr>
				<h1 style="color:red;font-size:35px;text-align:center;">Discount On Order</h1>
			</tr>
			<tr>
				<td>ORDER_ID</td>
				<td><input type="text" name="ORDER_ID"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" class="button" value="Submit"></td>
			</tr>
		</table>

	 </form>
	
<div class="header">
		<h1>Below Are The Orders Placed</h1>
	</div>
	<%
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"pxs7587", "Hpintelamd22");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select * from S22_S003_13_ORDER");
	while (rs.next()) {
		%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">ORDER_ID</th>
				<th width="25%">ORDER_AMOUNT</th>
				<th width="25%">ORDER_MODE</th>
				<th width="25%">CUSTOMER_ID</th>
				<th width="25%">PLACED_ORDER_DAY</th>
				<th width="25%">PLACED_ORDER_DATE</th>
				<th width="25%">PLACED_ORDER_TIME</th>
				


			</tr>
			<tr>
				<td width="25%"><%=rs.getString(1)%></td>
				<td width="25%"><%=rs.getString(2)%></td>
				<td width="25%"><%=rs.getString(3)%></td>
				<td width="25%"><%=rs.getString(4)%></td>
				<td width="25%"><%=rs.getString(5)%></td>
				<td width="25%"><%=rs.getString(6)%></td>
				<td width="25%"><%=rs.getString(7)%></td>


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