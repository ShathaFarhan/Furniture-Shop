<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
  <title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <script type="text/javascript" src="javascript/javascript.js""></script>
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
                <a class="active" href="index.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
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
                <a class="" href="contact_us.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> CONTACT US </p></a>
            </li>
            <li>
                <a class="" href="about_us.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> ABOUT US </p></a>
            </li>
            
          </ul>
    </nav>
    <div style= "float:right; width:15em; padding:0 1em; margin:-6.5em 0 0;">
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
  <!-- ************** end of menu ************** -->
  </th></tr>
  
  <tr><th>
  <!-- ************** start of strip ************** -->
  <div class="strip">
    <div>
      <section>
        <p> Welcome to our store! </p>
        <p>we hope to found what you need </p>
      </section>
    </div>
  </div>
  <!-- ************** end of strip ************** -->
  </th></tr></thead>
  
  <tbody><tr><td>
  <!-- ************** page content ************** -->
  <table class="content">
    <thead>
      <tr>
        <th><img src="images/logo.png" alt="logo.png" style="width:170px; height:166px;">
          <h2>About our website ?</h2>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td colspan="3">
          <P>our furniture market is an easy-to-use website that provides <br>
			 you can Used our website to be easily purchased a furniture a lower price and with good quality, <br>
			 also we provide free delivary if you purches more than 300$<br>
			
          </p>
        </td>
      </tr>
    </tbody>
  </table>
  <!-- ************** end of content ************** -->
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