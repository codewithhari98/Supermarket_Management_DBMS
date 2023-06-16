<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.header {
	padding: 60px;
	text-align: center;
	background: #1abc9c;
	color: white;
	font-size: 30px;
}

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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<td></td>
	<form action="customerdelete.jsp" method="post">
		<tr>
			<td>Enter The Customer Id To Delete Their Record</td>
			<td><input type="text" name="customer_id"></td>
			<button type="reset" class="button" value="Reset">Reset</button>
		<tr>
			<td><input type="submit" class="button" value="Proceed"></td>
	</form>

	<td></td>
</body>
</html>