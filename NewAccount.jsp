<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"%>
<%

    String USERNAME = "root"; // use your username of Mysql server
    String PASSWORD = "1234"; // use your password of Mysql server
    String URL = "jdbc:mysql://localhost:3306/cpit455?useSSL=false";

    PreparedStatement preparedStmt = null;
    ResultSet resultSet = null;
    String sqlQuery1 = "";

    String username = "";
    String password = "";
    String copass = "";
    String gender = "";
    String email = "";
    boolean check = false;

    try {
        username = request.getParameter("userName");
        password = request.getParameter("pass");
        gender = request.getParameter("gender");
        email = request.getParameter("email");
        int items = 0;

        username.trim();
        password.trim();
        gender.trim();
        email.trim();

        Class.forName("com.mysql.jdbc.Driver"); //name of driver
        //Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ouab?useSSL=false" + "user=root&password=1234"); 
        Connection connectionDB = DriverManager.getConnection(URL, USERNAME, PASSWORD);

        String sqlQuery = "insert into users(username,password,gender,email,items)values('" + username
                + "','" + password + "','" + gender + "','" + email + "','" + items + "');";
        Statement stmt = connectionDB.createStatement();
        stmt.executeUpdate(sqlQuery);

        check = true;
    } catch (Exception e) {
        out.print(e.getMessage());
%>
<script type="text/javascript">
    alert("Something went wrong !! Please try again");
    window.location.replace("Registration.jsp");
</script>
<%
    }

    if (check) {

        session.setAttribute("username", username);
        session.setAttribute("password", password);
        session.setAttribute("gender", gender);
        session.setAttribute("email", email);
        //response.sendRedirect("login.jsp");
    }
%>
<script type="text/javascript">
    alert("Registration completed successfully, please log in to the system");
    window.location.replace("login.jsp");
</script>