<%@ page language= "java" contentType= "text/html; charset=windows-1256"
pageEncoding= "windows-1256"%>

<!DOCTYPE html>
<html>
<head>
  <title>Login page </title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href=stylesheet.css>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript" src="javascript/javascript.js"></script>
  <style>
      body {
  background-image: url('backGr.jpg');
  background-repeat: no-repeat;
}
</style>
</head>

<body class = "registration "style ="background-image:url('bbbb.jpg')">

  <table class="Ouab">
  <thead>
  </thead>
  <tbody><tr><td>
  <!-- ************** page contents ************** -->
  <div class = "registration">
    <button type="button" id="cancel" onclick="location.href='index.jsp';"><img src="images/ex.png" alt="cancel.png"></button>
    <img src="images/logo.png" alt="logo.png" style="width:170px; height:200px;">
    <div class = "form-box" >
      <div class = "button-box">
        <div id = "btnL"></div>
        <button type="button" class="switch-btn" style= "color:black"onmousedown = "gradientBtn(document.getElementById('btn'), '#926d72', '#926d72')" onmouseup = "gradientBtn(document.getElementById('btn'), '#4f2c57', '#926d72')"> Log in </button>
        <button type="button" class="switch-btn" style= "color:black"onclick="location.href='Registration.jsp';" onmousedown = "gradientBtn(document.getElementById('btn'), '#926d72', '#926d72')" onmouseup = "gradientBtn(document.getElementById('btn'), '#4f2c57', '#926d72')"> Sign UP </button>
      </div>
      
      <!-- ************** login form ************** -->
      <form name="login_form" action="Validate.jsp" method="POST" onsubmit="confirmation(1)" onreset="confirmation(2)">
      
		  
          <input type="text" name="userName" class="input-field" placeholder="Enter your user name" onkeydown="changeBr(this, '#a79084')" required/>
          
          
          <input type="password" name="pass" class="input-field" placeholder="Enter your password" onkeydown="changeBr(this, '#a79084')" required/>
          
          
		  
          <input type="submit" class="submit-btn" value="Log in"style= "color:black" onmousedown = "gradientBtn(this, '#926d72', '#926d72')"
onmouseup = "gradientBtn(this, '#836e62', '#836e62')"> 

          <input type="reset" class="reset-btn" value="Clear" style= "color:black" onmousedown = "gradientBtn(this, '#926d72', '#926d72')"
onmouseup = "gradientBtn(this, '#836e62', '#836e62')"> 

      </form>

    </div>
  </div>
  <!-- ************** end of page contents ************** -->
  </td></tr>
</tbody>

  <tfoot>
  <!-- ************** footer ************** -->
  <tr><td class="footer">&copy;2022 by A3 group. and created for
					 CPIT-455 coures.</td></tr>
  </tfoot>
  </table>

</body>
</html>