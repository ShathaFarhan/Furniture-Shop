<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ page import="java.sql.*"%>
<%
try {
	String username = String.valueOf(session.getAttribute("username")); 
	String URL = "jdbc:mysql://localhost:3306/cpit455?useSSL=false";
	String USERNAME = "root"; // use your username of Mysql server
	String PASSWORD = "1234"; // use your password of Mysql server
	Connection connection = null;
	String sqlQuery = "";
	PreparedStatement preparedStmt = null;
	ResultSet resultSet = null;
	String guestUser ="Guest";

	if (session.getAttribute("username") == null) {
		username = "Guest";
	}

	if (username == "Guest") {
		
%>


<script type="text/javascript">
	alert("Sorry You have to log in first");
	<%
	// (1) clear user's cart and change the user items value to 0
	sqlQuery = "UPDATE users SET items = 0 WHERE username = '"+guestUser+"'";
	try {
		preparedStmt = connection.prepareStatement(sqlQuery);
		preparedStmt.execute();
		System.out.print ("2");

	} catch (Exception e) {
		System.out.print(e.getMessage());
		e.printStackTrace();
		
	}
    //(2) delete furniture from cart
	sqlQuery = "DELETE FROM cart WHERE username = '"+guestUser+"'";
	try {

		preparedStmt = connection.prepareStatement(sqlQuery);
		preparedStmt.execute();
		System.out.print ("3");

	} catch (Exception e) {
		System.out.print(e.getMessage());
		e.printStackTrace();
		
	}
	
	%>
	window.location.replace("login.jsp");
</script>
<%
} else if (session.getAttribute("username") != null) {
%>
<script type="text/javascript">	
	window.location.replace("payment.jsp");
</script>
<%
}
} catch (Exception e) {

%>
<script type="text/javascript">
	alert("Something went wrong !! Please try again");
	window.location.replace("cart.jsp");
</script>
<%
}
%>