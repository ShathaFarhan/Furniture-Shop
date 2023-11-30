<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

<title>Contact-us</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href=stylesheet.css>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script type="text/javascript" src="javascript/javascript.js"></script>

</head>
<body >
<%
	String username = String.valueOf(session.getAttribute("username"));
	%>
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

                <a class="active" href="contact_us.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"

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
  <h1> Contact Us </h1>

<!-- ************** start of form ************** -->

<form action="contact.jsp" method="POST" class="contact" onsubmit ="confirmation(1)" onreset ="confirmation(2)">

<ul class="form">

<li class="firstname">

<input type="text" name="first-name"  placeholder="Enter your first name" 
pattern="[A-Za-z]*" title="Please enter on letters only" onkeydown="changeBr(this, '#a79084')" input type="submit" required>

</li>




<li class="lastname">

<input type="text" name="last-name"  placeholder="Enter your last name" 
pattern="[A-Za-z]*" title="Please enter on letters only" onkeydown="changeBr(this, '#a79084')" input type="submit"required>

</li><br>



<li class="email">

<input class="email" type="email" name="email"  placeholder="Enter your e-mail"

pattern="^.+@.+\.[a-zA-Z]{2,63}$" maxlength="250" onkeydown="changeBr(this, '#a79084')" input type="submit" required>


</p>

</li>

<li>

<div class="gender">
            <label >Gender:</label>
            <input name="gender" type="radio" value="Male" onfocus = "hint(document.getElementById('hint-box'), 0)" onblur = "hint(document.getElementById('hint-box'), 8)" required><p> Male </p>
            <input name="gender" type="radio" value="Female" onfocus = "hint(document.getElementById('hint-box'), 0)" onblur = "hint(document.getElementById('hint-box'), 8)"><p> Female </p>
            </li>
            
          </div>




<li>

<br><textarea name="message" placeholder="Write your massage..." onkeydown="changeBr(this, '#a79084')"></textarea>

</li>







<li>

<label>Rate Our store</label>

<select name="rate" required placeholder="Rate Our Store:" >

<option value="">None</option>

<option value="very Dissatisfied">1 - Very Dissatisfied</option>

<option value="Dissatisfied">2 - Dissatisfied</option>

<option value="Fair">3 - Fair</option>

<option value="Satisfied">4 - Satisfied</option>

<option value="Very Satisfied">5 - Very Satisfied</option>

</select>

</li><br>



<li class="button">


<input type="submit" value="Send" onmousedown="gradientBtn(this, '#836e62', '#836e62') 

"onmouseup="gradientBtn(this, '#cfae9f', '#836e62')" >


<input type="reset" value="Clear" onmousedown="gradientBtn(this, '#836e62', '#836e62')"

onmouseup="gradientBtn(this, '#cfae9f', '#836e62')">

</li>

</ul>

</form>

<!-- ************** end of form ************** -->

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