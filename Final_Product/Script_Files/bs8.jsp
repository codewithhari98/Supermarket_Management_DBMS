<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		String sql = "select Product_Name, Selling_Price from S22_S003_13_Product GROUP BY ROLLUP (Product_Name, Selling_Price) HAVING Selling_Price>'2'";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">Product_Name</th>
				<th width="25%">Selling_Price</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("Product_Name") %></td>
		<td><%=rs.getString("Selling_Price") %></td>
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