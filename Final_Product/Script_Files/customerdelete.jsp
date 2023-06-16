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

<h1>Customer Data </h1>
<%

	try {
		String cid=request.getParameter("customer_id");
		Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"pxs7587", "Hpintelamd22");
		PreparedStatement st = connection.prepareStatement("Delete from S22_S003_13_CUSTOMER where CUSTOMER_ID="+cid+"");
		
		int x = st.executeUpdate();
		if (x != 0) {
			out.print("Customer Record Deleted Successfully");
		} else {
			out.print("Unable To Delete, Please Try Again...");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	
</body>
</html>