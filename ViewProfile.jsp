<%-- 
    Document   : ViewProfile
    Created on : Aug 22, 2022, 2:00:31 AM
    Author     : rozanasendi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head style ="background-image:url('bbbb.jpg')">
        <title>User Profile</title>
         <link rel="stylesheet" href="stylee.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body class = "index">
<table class="Ouab">
		<thead>
			<tr class="headerbar">
				<th>
        <div><img src="images/logo.png" alt="logo.png" style="width:120px; height:115px;"></div>

        <nav>

            <ul>

                <li>

                    <a class="" href="index.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"

                       onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> HOME </p></a>

                </li>

                <li>
                    <a class="active" href="ViewProfile.jsp" onmousedown="gradientBtn(this, '#9bb7cc', '#9bb7cc')"
                       onmouseup="gradientBtn(this, '#bdcfdd', '#bdcfdd')"><p class="menuP"> Profile </p></a>
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
</th>
			</tr>
                      
        </nav></thead> 

        <div style= "float:right; width:15em; padding:0 1em; margin:-6.5em 0 0;">
            <% 
            String username = String.valueOf(session.getAttribute("username"));
            String email = String.valueOf(session.getAttribute("email"));
            String gender = String.valueOf(session.getAttribute("gender"));
            %>
            <div class="wrapper">
                <div class="left">
                    <img src= "d2.jpg" 
                         alt="user" width="100">
                    <br>
                    <h4><%out.print(username);%></h4>
                    <br>
                    <br>
                    <p></p>
                    <br>
                    <p></p>
                    <br>
                    <p></p>
                    <br>
                </div>
                <div class="right">
                    <div class="info">
                        <h3>User Profile</h3>
                        <div class="info_data">
                            <div class="data">
                                <h4>Username:</h4>
                                
                                <p><%out.print(username);%></p>
                                 <h4>Gender:</h4>
                                
                                <p><%out.print(gender);%></p>
                                
                                 <h4>Email:</h4>
                                
                                <p><%out.print(email);%></p>
                            </div>
                           
                    </div>

                   

                </div>
            </div>

    </body>

</html>
