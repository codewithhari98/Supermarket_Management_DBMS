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
		String eid=request.getParameter("employee_id");
		Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"pxs7587", "Hpintelamd22");
		Statement statement = connection.createStatement();
		String sql = "update S22_S003_13_EMPLOYEE set Salary = Salary + (Salary*0.05) where EMPLOYEE_ID="+eid+"";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	Employee Salary Updated Successfully..... Please Visit Admin Panel
	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
</body>
</html>