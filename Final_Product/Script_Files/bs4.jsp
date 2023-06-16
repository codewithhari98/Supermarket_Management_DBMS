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
		String sql = "select PRODUCT_NAME, COUNT(PRODUCT_NAME) as count from S22_S003_13_Product P, S22_S003_13_Product_Category PC, S22_S003_13_CONTAINS C where P.Category=PC.Category AND PC.Aisle='A10' AND P.PRODUCT_ID=C.PRODUCT_ID GROUP BY P.PRODUCT_NAME ORDER BY count DESC FETCH FIRST 1 ROW ONLY";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">PRODUCT_NAME</th>
				<th width="25%">count</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("PRODUCT_NAME") %></td>
		<td><%=rs.getString("count") %></td>
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