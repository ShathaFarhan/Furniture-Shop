<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<title>Furniture page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<script type="text/javascript" src="javascript.js"></script>
</head>

<body>
<% String username = String.valueOf(session.getAttribute("username"));

if (session.getAttribute("username") == null){
	username = "Guest";
	}

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
							<li><a class="active" href="furniture.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">Furniture</p></a></li>
							<li><a class="" href="cart.jsp"
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
						} 
						
						// Only show the logout link when user login into the website
								else if (session.getAttribute("username") != null) {
									out.print("<img src='images/user.png' alt='user.png' "
											+ "style='width: 28%; float: left;'>");
									out.print("<p id='hello' style='margin: 1.5em 2em 0 0;'>Hello, "+ username+ "</p>");
									out.print("<a href='logout.jsp'>logout</a>");
								}
						%>
						
					</div> <!-- ************** end of menu ************** -->
				</th>
			</tr>

			<tr>
				<th>
					<!-- ************** strat of Heading specifics the title of the page ************** -->
					<h1>Furniture</h1> <!-- ************** end of Heading ************** -->
				</th>
			</tr>
		</thead>

		<tbody>
			<tr>
				<td class="booksPage"><!-- ************  ????? ??????************** -->
					<!-- ************** list of books ************** -->
					<table class="books_tab">
						<thead>
							<tr>
								<th colspan="3">here you will found what you want :</th>
                                                                <br><br>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th><img src="images/fu1.jpg"
									alt="picture of bed"><br>
								<span class="book-name"> bed |200$ <br> 
								</span>
									<button type="button" class="cart" name="book1"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./furniture.jsp?var=1';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
                                                                        
                                                                        
                                                                        
								<th><img src="images/fu2.jpg"
									alt="picture of office"><br>
								<span class="book-name">small office |150$<br>
								</span>
									<button type="button" class="cart" name="book2"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./furniture.jsp?var=2';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
                                                                        
								<th><img src="images/fu3.jpg"
									alt="picture of mirror whith wooden stand"><br>
								<span class="book-name">wooden stand |90$ <br>
								</span>
									<button type="button" class="cart" name="book3"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./furniture.jsp?var=3';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
							</tr>
							<tr>
								<th><img src="images/fu4.jpg"
									alt="picture of Rose decorative mirrors"><br>
								<span class="book-name">Rose decorative mirrors|60$<br>
										
								</span>
									<button type="button" class="cart" name="book4"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./furniture.jsp?var=4';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
								<th><img src="images/fu5.jpg" alt="desk chair"><br>
								<span class="book-name">desk chair |66$<br> 
								</span>
									<button type="button" class="cart" name="book5"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./furniture.jsp?var=5';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
								<th><img src="images/fu6.jpg"
									alt=" chair"><br>
								<span class="book-name">chair |59$<br>
										
								</span>
									<button type="button" class="cart" name="book6"
										onmousedown="gradientBtn(this, '#88a8c0', '#88a8c0')"
										onmouseup="gradientBtn(this, '#a4b9c9', '#a4b9c9')"
										onclick="alert('Added to cart successfully!'); location.href='./furniture.jsp?var=6';">
										<img src="images/add-cart.png" alt="cart">
									</button></th>
                                                                        
                                                                        
							</tr>
						</tbody>
					</table> <!-- ************** end of list of books ************** -->
				</td>
			</tr>

			<tr>
				<td>
					<!-- ************** Deal of the week************** -->
					<table class="best_tab">
						<thead>
							<tr>
								<th colspan="2"><h1>Deal of the week</h1></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<img
										src="images/fu7.jpg"
										alt="picture of deal of the weeks"></td>
								<td rowspan="2">
									<p> Don't miss the chance! </p>
									<ul>
										<li>You will receive more than one great offer when you purchase the item shown in the picture,<br>
                                                                                    and this offer will be for one person only.
										</li>
										<li>free delivery </li>
										<li>free gift.</li>
										
									</ul>
								</td>
							</tr>
						</tbody>
					</table> <!-- ************** end of best seller book************** -->
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
		
		
		 <%
                //String msg="";
                String USERNAME = "root"; // use your username of Mysql server
                String PASSWORD = "1234"; // use your password of Mysql server
                //Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                String URL = "jdbc:mysql://localhost:3306/cpit455?useSSL=false";

                //Connection connection = null;
                String sqlQuery = "";
                PreparedStatement preparedStmt = null;
                ResultSet resultSet = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver"); //name of driver
                    Connection connectionDB = DriverManager.getConnection(URL, USERNAME, PASSWORD);

                    String bookid = request.getParameter("var");
                    if (bookid == null) {
                        bookid = "0";

                    }

                    if ((bookid.isEmpty() == false) || (bookid.equals("0") == false)) {

                        // checking if the user has added book with id $book_num to the cart or not
                        sqlQuery = "SELECT * FROM cart WHERE Fuid= " + bookid + " AND username='" + username + "'";

                        preparedStmt = connectionDB.prepareStatement(sqlQuery);
                        //preparedStmt.execute();

                        preparedStmt.execute();
                        resultSet = preparedStmt.getResultSet();

                        int num = 0;
                        while (resultSet.next()) {
                            num++;
                        }
                        System.out.print(num);
                        // if the book has been added to the cart, then increment the quantity
                        if (num > 0) {
                            sqlQuery = "Update cart set qty =  qty + 1 WHERE Fuid= " + bookid + " AND username='" + username + "'";
                            preparedStmt = connectionDB.prepareStatement(sqlQuery);

                            preparedStmt.executeUpdate();
                        } // if the book is not in the cart, then change the user items value to 1 and add the book to the cart
                        else {
                            sqlQuery = "UPDATE users SET items = 1 WHERE username='" + username + "'";
                            preparedStmt = connectionDB.prepareStatement(sqlQuery);
                            preparedStmt.executeUpdate();

                            sqlQuery = "INSERT INTO cart (Fuid, qty, username) VALUES (" + bookid + ", 1,'" + username + "')";
                            preparedStmt = connectionDB.prepareStatement(sqlQuery);
                            preparedStmt.execute();

                        }
                    }

                } catch (SQLException e) {
                    System.out.print(e);
                    e.printStackTrace();

                }
            %>

	
</body>
</html>