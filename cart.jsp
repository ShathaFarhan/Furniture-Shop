<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cart Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <script type="text/javascript" src="javascript/javascript.js"></script>
    </head>
    <body>

        <%
            String username = String.valueOf(session.getAttribute("username"));

            if (session.getAttribute("username") == null) {
                username = "Guest";
            }

            if (username != null) {
                int num;
                int bookID = 0;
                int qty = 0;
                int bookPrice = 0;
                int total = 0;
                String bookName = null;
                String full_Cart = null;
                String empty_Cart = null;
                String USERNAME = "root"; // use your username of Mysql server
                String PASSWORD = "1234"; // use your password of Mysql server
                //Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                String URL = "jdbc:mysql://localhost:3306/cpit455?useSSL=false";

                //Connection connection;
                String sqlQuery = "";

                PreparedStatement preparedStmt = null;
                ResultSet result = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver"); //name of driver
                    Connection connectionDB = DriverManager.getConnection(URL, USERNAME, PASSWORD);

                    // Check whether the user has items in the cart or not
                    sqlQuery = "SELECT items FROM users WHERE username = '" + username + "'";

                    preparedStmt = connectionDB.prepareStatement(sqlQuery);
                    result = preparedStmt.executeQuery();
        %>




        <table class="Ouab">
            <thead>
                <tr class="headerbar">
                    <th>
                        <!-- ************** start of menu ************** -->
                        <div>
                            <img src="images/logo.png" alt="logo.png"
                                 style="width: 120px; height: 115px;">
                        </div>
                        <nav>
                            <ul>
                                <li><a class="" href="index.jsp"
                                       onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                                       onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
                                            class="menuP">HOME</p></a></li>
                                <li><a class="" href="furniture.jsp"
                                       onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                                       onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
                                            class="menuP">Furniture</p></a></li>
                                <li><a class="active" href="cart.jsp"
                                       onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                                       onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
                                            class="menuP">My CART</p></a></li>
                                <li><a class="" href="contact_us.jsp"
                                       onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                                       onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
                                            class="menuP">CONTACT US</p></a></li>
                                <li><a class="" href="about_us.jsp"
                                       onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                                       onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
                                            class="menuP">ABOUT US</p></a></li>

                            </ul>
                        </nav>
                        <div
                            style="float: right; width: 15em; padding: 0 1em; margin: -6.5em 0 0;">


                            <%
                                // Only show the login link when user not login into the website
                                if (session.getAttribute("username") == null) {

                                    out.print("<a href='login.jsp'><img src='images/user.png' alt='user.png' "
                                            + "style='width: 28%; float: left;'></a>	");
                                    out.print("<p id='hello' style='margin: 1.5em 2em 0 0;'>Hello, Guest</p>");
                                } // Only show the logout link when user login into the website
                                else if (session.getAttribute("username") != null) {
                                    out.print("<img src='images/user.png' alt='user.png' " + "style='width: 28%; float: left;'>");
                                    out.print("<p id='hello' style='margin: 1.5em 2em 0 0;'>Hello, " + username + "</p>");
                                    out.print("<a href='logout.jsp'>logout</a>");
                                }
                            %>


                        </div> <!-- ************** end of menu ************** -->

                    </th>
                </tr>

                <tr>
                    <th>
                        <!-- ************** start of Heading specifics the title of the page ************** -->
                        <h1>Cart</h1> <!-- ************** end of Heading ************** -->
                    </th>
                </tr>
            </thead>

            <tbody>

                <tr>
                    <td>
                        <%
                            while (result.next()) {

                                int num2 = result.getInt("items");

                                if (num2 == 0) {
                        %> <!-- ************** Content here ************** -->
                        <div class="cart-content">
                            <div class="no-items">
                                <img src="images/empty-cart.png" alt="your cart is empty">
                                <h2>Sorry! your cart is empty</h2>
                            </div>
                        </div>
                    </td>
                </tr>

                <tr>
                    <td>
                      <%
                        } // if items value(num) is 1, the user has added items to the cart
                        else if (num2 > 0) {
                            //Get Cart
                            sqlQuery = "SELECT * FROM cart WHERE username = '" + username + "' ORDER BY Fuid DESC LIMIT 1";
                            preparedStmt = connectionDB.prepareStatement(sqlQuery);
                            result = preparedStmt.executeQuery();
                            while (result.next()) {
                        %>
                        <div class="cart-content">
                            <table class="tab_cart" style="display: table">
                                    <!--<% out.print(full_Cart);%>>-->

                                <thead>
                                    <tr>
                                        <th colspan="3"><h2>The Cart Items:</h2></th>
                                    </tr>

                                    <tr>
                                        <th>furniture  name</th>
                                        <th>qty</th>
                                        <th>price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%

                                        bookID = result.getInt("Fuid");
                                        qty = result.getInt("qty");

                                        //Get Book Name
                                        sqlQuery = "SELECT name FROM furniture WHERE Fid = '" + bookID + "' ORDER BY Fid";
                                        preparedStmt = connectionDB.prepareStatement(sqlQuery);
                                        result = preparedStmt.executeQuery();

                                        while (result.next()) {

                                            bookName = result.getString("name");

                                        }

                                        //Get Book price
                                        sqlQuery = "SELECT price FROM furniture WHERE Fid = '" + bookID + "' ORDER BY Fid";
                                        preparedStmt = connectionDB.prepareStatement(sqlQuery);
                                        result = preparedStmt.executeQuery();
                                        while (result.next()) {

                                            bookPrice = result.getInt("price");

                                        }

                                        // Calculating the total price
                                        total = total + (bookPrice * qty);
                                    %>

                                    <tr id='items'>
                                        <td id='furniture-name'><%=bookName%></td>
                                        <td id='books-qty'><%=qty%></td>
                                        <td id='books-price'><%=bookPrice%></td>
                                    </tr>

                                    <tr>
                                        <td colspan='2'>The Total Price:</td>
                                        <td id='total-price'>
                                            <%
                                                out.print(total);
                                            %>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="3">
                                            <form action="userChecking.jsp" method="post" class="form-inline">

                                                <input type="submit" class="submit-btn" value="Purchase"												
                                                       onmousedown="gradientBtn(this, '#836e62', '#836e62')"
                                                       onmouseup="gradientBtn(this, '#cfae9f', '#836e62')">

                                            </form>

                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <%
                                    } //While
                                } //if (num > 0)							
                            %>
                            <%
                                        }

                                        connectionDB.close();
                                    } catch (SQLException e) {
                                        System.out.print(e);
                                        e.printStackTrace();

                                    }
                                }
                            %>

                        </div> <!-- ************** Content here ************** -->
                    </td>
                </tr>

            </tbody>

            <tfoot>
                <!-- ************** quote of the page ************** -->
                <tr>
                    <td><div class="quote"></div></td>
                </tr>
                <!-- ************** footer ************** -->
                <tr>
                    <td class="footer">&copy;2022 by AA3 group. and created for
                        CPIT-455 coures.</td>
                </tr>
            </tfoot>
        </table>

    </body>
</html>