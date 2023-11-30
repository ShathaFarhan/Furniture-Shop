<%-- 
    Document   : contact
    Created on : Aug 19, 2022, 1:39:47 AM
    Author     : ááÌãíÚ
--%>

<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"%>

<%

    String USERNAME = "root"; // use your username of Mysql server
    String PASSWORD = "1234"; // use your password of Mysql server
    //Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
    String URL = "jdbc:mysql://localhost:3306/cpit455?useSSL=false";
    Class.forName("com.mysql.jdbc.Driver"); //name of driver
    Connection connectionDB = DriverManager.getConnection(URL, USERNAME, PASSWORD);

    String username = "";
    String lastname = "";
    String email = "";
    String gender1 = "";
    String message = "";

    boolean check = false;
    try {

        username = request.getParameter("first-name");
        lastname = request.getParameter("last-name");
        email = request.getParameter("email");
        gender1 = request.getParameter("gender");
        message = request.getParameter("message");
        String rate = request.getParameter("rate");

        username.trim();
        lastname.trim();
        email.trim();
        gender1.trim();
        message.trim();

        String sqlQuery = "insert into contact(Firstname,lastNane,email,gender,message,rate)values('" + username
                + "','" + lastname + "','" + email + "','" + gender1 + "','" + message + "','" + rate + "');";
        Statement stmt = connectionDB.createStatement();
        stmt.executeUpdate(sqlQuery);

        check = true;
    } catch (Exception e) {
        out.print(e.getMessage());


%>



<%    }

    if (check) {

%>


<script type="text/javascript">
    alert("Thank you for getting in touch with us");
    window.location.replace("index.jsp");
</script>

<%        // response.sendRedirect("index.jsp");
    }
%>









