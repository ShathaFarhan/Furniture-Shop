<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>About-us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <script type="text/javascript" src="javascript/javascript.js"></script>
</head>
<body>
<% String username = String.valueOf(session.getAttribute("username")); %>
  <table class="Ouab">
  <thead><tr class="headerbar"><th>
  <!-- ************** start of menu ************** -->
    <div><img src="images/logo.png" alt="logo.png" style="width:120px; height:115px;"></div>
    <nav>
          <ul>
            <li>
                <a class="" href="index.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> HOME </p></a>
            </li>
            <li>
                <a class="" href="furniture.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> Furniture </p></a>
            </li>
            <li>
                <a class="" href="cart.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> My CART </p></a>
            </li>
            <li>
                <a class="active" href="about_us.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> ABOUT US </p></a>
            </li>
            <li>
                <a class="" href="contact_us.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> CONTACT US </p></a>
            </li>
          </ul>
    </nav>
  <!-- ************** end of menu ************** -->
  
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
						
					</div>
  </th></tr>

  <tr><th>
  <!-- ************** strat of Heading specifics the title of the page ************** -->
  <h1> About Us </h1><br><br><br>
  <p>As a team, we are satisfied with what has been achieved in this short time ,<br> and this is our information we hope you enjoyed seeing our work.</p>
  <!-- ************** end of Heading ************** -->
  </th></tr></thead>
  
  <tbody><tr><td>
  <!-- ************** Page Content ************** -->
  <table class="content">
        <thead>
        </thead>
        <tbody>
                              
                <tr>
                    <td>
                        <img src="images/user.png" alt="user.png" style="height:200px;"><br>
                        <br> <h4> Rahaf Alarwi <br></h4>
                          id : 1805630<br>ralarwi0003@stu.kau.edu.sa <br>IT student
                       
                    </td>
                    <td>
                        <img src="images/user.png" alt="u1.png" style="height:200px;"><br>
                    <br>     <h4> joud alghamdi<br> </h4>
                       id : 1806201<br>jalghamdi0083@stu.kau.edu.sa <br>IT student
                    </td>
                     <td>
                        <img src="images/user.png" alt="u1.png" style="height:200px;"><br>
                        <br> <h4> shatha Alfaifi<br></h4>
                         id : 1808196<br>salfaifi0029@stu.kau.edu.sa <br>IT student
                    </td>
                    <td>
                        <img src="images/user.png" alt="u1.png" style="height:200px;"><br>
                       <br>  <h4>Rozana Sendi<br></h4>
                      id : 1910897<br>Rsendi0005@stu.kau.edu.sa <br>IT student
                    </td>
                </tr>
        </tbody>
    </table>
  <!-- ************** Content here ************** -->
  </td></tr></tbody>
  
  <tfoot>
  <!-- ************** quote of the page ************** -->
  <tr><td><div class="quote"></div></td></tr>
  <!-- ************** footer ************** -->
  <tr><td class="footer">&copy;2022 by AA3 group. and created for
					 CPIT-455 coures.</td></tr>
  </tfoot>

</body>
</html>