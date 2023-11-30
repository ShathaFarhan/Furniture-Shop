<%@ page language= "java" contentType= "text/html; charset=windows-1256"
pageEncoding= "windows-1256"%>
<!DOCTYPE html>
<html>
<head>
  <title> Registration page </title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript" src="javascript/javascript.js"></script>
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
    <div class = "form-box">
      <div class = "button-box">
        <div id = "btnR"></div>
        <button type="button" class="switch-btn1"style= "color:black" onclick="location.href='login.jsp';" onmousedown = "gradientBtn(document.getElementById('btn'),'#926d72','#926d72')" onmouseup = "gradientBtn(document.getElementById('btn'),'#4f2c57','#926d72')"> Log in </button>
        <button type="button" class="switch-btn1" style= "color:black"onmousedown = "gradientBtn(document.getElementById('btn'), '#926d72', '#926d72')" onmouseup = "gradientBtn(document.getElementById('btn'), '#4f2c57','#926d72')"> Sign UP </button>
      </div>
      <br>
            
      <!-- ************** sign up form ************** -->
      <form name="registerForm" action= "NewAccount.jsp" method="POST" onsubmit="confirmation(1)" onreset="confirmation(2)">
          <span id="hint-box"></span>
          <div class="gender">
            <label >Gender:</label>
            <input name="gender" type="radio" value="Male" onfocus = "hint(document.getElementById('hint-box'), 0)" onblur = "hint(document.getElementById('hint-box'), 8)" required><p> Male </p>
            <input name="gender" type="radio" value="Female" onfocus = "hint(document.getElementById('hint-box'), 0)" onblur = "hint(document.getElementById('hint-box'), 8)"><p> Female </p>
            
          </div>
          
          <input type="text" name="userName" class="input-field" placeholder="Enter your user name" pattern="[A-Za-z]*" 
          title="Please enter letters only"  onfocus = "hint(document.getElementById('hint-box'), 1)" 
          onblur = "hint(document.getElementById('hint-box'), 8)" required>
          
          
          <input type="email" name="email" class="input-field" placeholder="Enter your email"  
          onfocus = "hint(document.getElementById('hint-box'), 2)" onblur = "hint(document.getElementById('hint-box'), 8)" required>
          
          
          <input type="password" name="pass" class="input-field" placeholder="Enter your password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
          title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"   
          onfocus = "hint(document.getElementById('hint-box'), 3)" onblur = "hint(document.getElementById('hint-box'), 8)" required>
          
          
          <span id="checking"><input type="checkbox" name="agree" class="check-box" 
          onfocus = "hint(document.getElementById('hint-box'), 5)" onblur = "hint(document.getElementById('hint-box'), 8)" required>I agree to the Terms of Use
          </span>
          
          <input type="submit" class="submit-btn" value="Sign UP" style= "color:black" onmousedown = "gradientBtn(this, '#926d72', '#926d72')"
onmouseup = "gradientBtn(this, '#836e62', '#836e62')" onfocus = "hint(document.getElementById('hint-box'), 6)" onblur = "hint(document.getElementById('hint-box'), 8)">  
          
          <input type="reset" class="reset-btn" value="Clear" style= "color:black"onmousedown = "gradientBtn(this, '#926d72', '#926d72')"
onmouseup = "gradientBtn(this, '#836e62', '#836e62')" onfocus = "hint(document.getElementById('hint-box'), 7)" onblur = "hint(document.getElementById('hint-box'), 8)"> 
      </form>
    </div>
  </div>
  <!-- ************** end of page contents ************** -->
  </td></tr>
</tbody>

  <tfoot>
  <!-- ************** footer ************** -->
  <tr><td class="footer">&copy;2022 by AA3 group. and created for
					 CPIT-455 coures.</td></tr>
  </tfoot>

</body>
</html>