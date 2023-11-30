<%@ page import="java.sql.*"%>
<%@ page language= "java" contentType= "text/html; charset=windows-1256"
pageEncoding= "windows-1256"%>
<%@ page import ="java.sql.*" %>
<%
String username = String.valueOf(session.getAttribute("username")); 
String URL = "jdbc:mysql://localhost:3306/cpit455?useSSL=false";
String USERNAME = "root"; // use your username of Mysql server
String PASSWORD = "1234"; // use your password of Mysql server
Connection connection = null;
String sqlQuery = "";
PreparedStatement preparedStmt = null;
ResultSet resultSet = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

	String cnum = request.getParameter("CardNumber");
	String date = request.getParameter("expDate");
	String cvc = request.getParameter("CVC");
	String name = request.getParameter("OwnerName");
	if (cnum == null) {
		cnum = "0";

	}
	if (date == null) {
		date = "0";

	}
	if (cvc == null) {
		cvc = "0";

	}
	if (name == null) {
		name = "0";

	}
				
	

				

	if ((cnum.isEmpty() == false) && (date.isEmpty() == false)&& (cvc.isEmpty() == false)&&(name.isEmpty() == false) ) {

		// (1) clear user's cart and change the user items value to 0
		sqlQuery = "UPDATE users SET items = 0 WHERE username = '" + username + "'";
		try {
			preparedStmt = connection.prepareStatement(sqlQuery);
			preparedStmt.execute();
			System.out.print ("2");

		} catch (Exception e) {
			System.out.print(e.getMessage());
			e.printStackTrace();
			
		}
        //(2) delete the fruntiree from cart
		sqlQuery = "DELETE FROM cart WHERE username = '" + username + "'";
		try {

			preparedStmt = connection.prepareStatement(sqlQuery);
			preparedStmt.execute();
			System.out.print ("3");

		} catch (Exception e) {
			System.out.print(e.getMessage());
			e.printStackTrace();
			
		}
		
		 %>
         <script type="text/javascript">
         alert("Your order has been confirmed!");
         window.location.replace("cart.jsp");
         </script>
         <%
		}else{
			%>
	         <script type="text/javascript">
	         alert("You have to write all your credit card information!");
	         window.location.replace("payment.jsp");
	         </script>
	         <%
		}
	

}catch (SQLException e) {
			System.out.print(e);
			e.printStackTrace();

		}

%>