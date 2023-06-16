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

<div class="header">
		<h1>Below are the products</h1>
	</div>
	<%
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
	"pxs7587", "Hpintelamd22");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select * from S22_S003_13_PRODUCT");
	while (rs.next()) {
		%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
			<tr>

				<th width="25%">PRODUCT_ID</th>
				<th width="25%">PRODUCT_NAME</th>
				<th width="25%">CATEGORY</th>
				<th width="25%">SELLING_PRICE</th>
				<th width="25%">COST_PRICE</th>
			


			</tr>
			<tr>
				<td width="25%"><%=rs.getString(1)%></td>
				<td width="25%"><%=rs.getString(2)%></td>
				<td width="25%"><%=rs.getString(3)%></td>
				<td width="25%"><%=rs.getString(4)%></td>
				<td width="25%"><%=rs.getString(5)%></td>
				


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