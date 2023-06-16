<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>thank you</title>

<link rel="stylesheet" href="css/n9.css">
<style>
table, th, td {
	border: 1px solid black;
}

.btn btn-danger {
	margin-top: -13px;
}
</style>
</head>
<body>


	<h1>Product added successfully</h1>

	<%
	String pid = request.getParameter("PRODUCT_ID");
	String pname = request.getParameter("PRODUCT_NAME");
	String pcat = request.getParameter("CATEGORY");
	String psp = request.getParameter("SELLING_PRICE");
	String pcp = request.getParameter("COST_PRICE");
	

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"pxs7587", "Hpintelamd22");
		PreparedStatement st2 = con.prepareStatement("insert into S22_S003_13_Product (PRODUCT_ID,PRODUCT_NAME,CATEGORY,SELLING_PRICE,COST_PRICE) values(?,?,?,?,?)");
		st2.setString(1, pid);
		st2.setString(2, pname);
		st2.setString(3, pcat);
		st2.setString(4, psp);
		st2.setString(5, pcp);
		int x2 = st2.executeUpdate();
		if (x2!=0) {
			out.print("product added successfully..... Please visit admin panel");
		} else {
			out.print("unable to register, please try again....");
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	
	<form action="viewproducts.jsp"method "post">
		<input type="submit" class="button" value="View_Product">
	</form>

</body>
</html>