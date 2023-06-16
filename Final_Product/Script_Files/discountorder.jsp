<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	try {
		String oid=request.getParameter("ORDER_ID");
		Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"pxs7587", "Hpintelamd22");
		Statement statement = connection.createStatement();
		String sql = "update S22_S003_13_ORDER set ORDER_AMOUNT = ORDER_AMOUNT - (ORDER_AMOUNT*0.25) where ORDER_ID="+oid+"";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	25% Dicount applied on Order....
	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
	<div class="header">
		<h1>Order Details after Discount</h1>
	</div>
	<%
try {
	String oid=request.getParameter("ORDER_ID");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"pxs7587", "Hpintelamd22");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select * from S22_S003_13_ORDER where ORDER_ID="+oid+"");
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