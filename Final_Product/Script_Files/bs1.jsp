<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
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
		String sql = "SELECT placed_order_day, SUM(ORDER_AMOUNT) AS TOTAL FROM s22_s003_13_order GROUP BY placed_order_day having SUM(ORDER_AMOUNT) IN (SELECT MAX(TOTAL) FROM (SELECT placed_order_day, SUM(ORDER_AMOUNT) AS TOTAL FROM s22_s003_13_order GROUP BY placed_order_day)) UNION SELECT placed_order_day, SUM(ORDER_AMOUNT) AS TOTAL FROM s22_s003_13_order GROUP BY placed_order_day having SUM(ORDER_AMOUNT) IN (SELECT MIN(TOTAL) FROM (SELECT placed_order_day, SUM(ORDER_AMOUNT) AS TOTAL FROM s22_s003_13_order GROUP BY placed_order_day))";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">placed_order_day</th>
				<th width="25%">TOTAL</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("placed_order_day") %></td>
		<td><%=rs.getString("TOTAL") %></td>
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