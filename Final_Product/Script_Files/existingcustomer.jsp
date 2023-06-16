<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Please check your order record</title>
</head>
<body>
	
<%
	try {
		String cid=request.getParameter("customer_id");
		Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"pxs7587", "Hpintelamd22");
		Statement statement = connection.createStatement();
		String sql = "select O.ORDER_ID, P.PRODUCT_NAME, C.PRODUCT_QUANTITY, O.ORDER_MODE, O.ORDER_AMOUNT from S22_S003_13_ORDER O, S22_S003_13_PRODUCT P, S22_S003_13_CONTAINS C where P.PRODUCT_ID=C.PRODUCT_ID AND O.ORDER_ID=C.ORDER_ID AND O.CUSTOMER_ID="+cid+"";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">ORDER_ID</th>
				<th width="25%">PRODUCT_NAME</th>
				<th width="25%">PRODUCT_QUANTITY</th>
				<th width="25%">ORDER_MODE</th>
				<th width="25%">ORDER_AMOUNT</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("ORDER_ID") %></td>
		<td><%=rs.getString("PRODUCT_NAME") %></td>
		<td><%=rs.getString("PRODUCT_QUANTITY") %></td>
		<td><%=rs.getString("ORDER_MODE") %></td>
		<td><%=rs.getString("ORDER_AMOUNT") %></td>
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