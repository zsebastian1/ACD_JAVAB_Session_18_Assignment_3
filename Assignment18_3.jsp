<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validation</title>
</head>
<body>
	<form action="Assignment18_3.jsp">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="address" value=""></td>
			</tr>
			<tr>
				<td>Phone Number:</td>
				<td><input type="text" name="number" value=""></td>
			</tr>
			<tr>
				<td><input type="submit" value="Validate"></td>
			</tr>
		</table>
	</form>
	<br>
	<%
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String snumber = request.getParameter("number");
		if (name == null && address == null && snumber == null) {
			
		} else if (name.length() == 0 || address.length() == 0 || snumber.length() == 0) {
	%>
	<p style="color: red;">
		<b>ALL FIELDS MUST BE FILLED</b>
	</p>
	<%
		} else if (!isNumber(snumber)) {
	%>
	<p style="color: red;">
		<b>NUMBER MUST NOT INCLUDE CHARACTERS</b>
	</p>
	<%
		} else {
			int number = Integer.valueOf(snumber);
	%>
	<b>Your name is <%=name%>.
	</b>
	<br />
	<b>Your address is <%=address%>.
	</b>
	<br />
	<b>Your number is <%=number%>.
	</b>
	<br />
	<br />
	<b>Is this information correct? If yes, click the button.
	</b>
	<br />
	<!-- Form to send correct info wherever -->
	<form action="SentInfo.jsp">
		<input type="submit" value="Submit">
	</form>
	<%
		}
	%>
	<%!public static boolean isNumber(String snumber) {
		try {
			double d = Double.parseDouble(snumber);
		} catch (NumberFormatException | NullPointerException e) {
			return false;
		}
		return true;
	}%>
</body>
</html>