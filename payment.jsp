<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html>
<head>
<title>Payment Page| OUAB</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="stylesheet.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="javascript/javascript.js"></script>
</head>
<body>
<% String username = String.valueOf(session.getAttribute("username"));
session.setMaxInactiveInterval(60); 
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
							<li><a class="" href="cart.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">CART</p></a></li>
							<li><a class="" href="about_us.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">ABOUT US</p></a></li>
							<li><a class="" href="contact_us.jsp"
								onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
								onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p
										class="menuP">CONTACT US</p></a></li>
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
					<!-- ************** start of Heading specifics the title of the page ************** -->
					<h1>Payment</h1> <!-- ************** end of Heading ************** -->
				</th>
			</tr>
		</thead>

		<tbody>
		<tr> 
		<td>
			<!-- ************** start of form ************** -->
			<div class="cart-content">
			
			<div class = "form-box">
			
            <%                
    if(session.getAttribute("username") != null && session.getAttribute("password") != null){
 %>			
    <div>
        
       		<label>Credit card information:</label><br>
      </div>
      
			<form name="login_form" action="paymentChecking.jsp" method="POST">
					

				<br><label>CARD NUMBER</label>
				<input type="text" name="CardNumber" class="input-field"
					placeholder="Valid Card Number"
					pattern="[0-9]{13}" title="the input must be numbers with 13 digits!!"onkeydown="changeBr(this, '#a79084')"   required/> <br>
					
					
				<label>EXPIRATION DATE</label>
				<input type="text" name="expDate" class="input-field"
					placeholder="MM / YY"
				pattern="[0-9]{2}/[0-9]{2}"  title="invalid,the date should be MM/YY"  onkeydown="changeBr(this, '#a79084')"   required/>  <br>
					
					<label>CV CODE</label>
				<input type="text" name="CVC" class="input-field"  
					placeholder="CVC"
					pattern="^[0-9]{3}$" title="only the last three numbers!"onkeydown="changeBr(this, '#a79084')"   required/>  <br>
					
					<label>CARD OWNER</label>
				<input type="text" name="OwnerName" class="input-field"
					placeholder="Card Owner Name"
					pattern="[A-Za-z]*" title="only Letters allowed!!"onkeydown="changeBr(this, '#a79084')"   required/>  <br>
					
					
					<input type="submit" class="submit-btn" value="Confirm Payment" onmousedown="gradientBtn(this, '#836e62', '#836e62')"
					onmouseup="gradientBtn(this, '#cfae9f', '#836e62')" > 
					
					<input
					type="reset" class="reset-btn" value="Clear"
					onmousedown="gradientBtn(this, '#836e62', '#836e62')"
					onmouseup="gradientBtn(this, '#cfae9f', '#836e62')">

			</form>
                            
                           <% } else
                //out.print("You are not authorized to see info");
                response.sendRedirect("login.jsp");
    %>
			<!-- ************** end of form ************** -->
			 </div>
			 </div>
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
	
</body>
</html>
