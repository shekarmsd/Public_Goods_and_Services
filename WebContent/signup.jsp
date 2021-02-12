	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Public Goods and Services</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
   
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="icon" href="https://image.flaticon.com/icons/svg/1997/1997291.svg" type="image/x-icon">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->
    <style>
.fa-users:before {
  color: transparent;
  position: relative;
  background-clip: text;
  -webkit-background-clip: text;
  background-image: linear-gradient(#01193f 1%, #203554, #ff0164);
}

</style>

</head>

<body onload="document.registration.username.focus();">

<!-- mian-content -->
<div class="main-banner inner1" id="home">
    <!-- header -->
    <header class="header">
        <div class="container-fluid px-lg-5">
            <!-- nav -->
            <nav class="py-4">
                <div id="logo">
                    <a href="#home"><i class="fa fa-users fa-2x"></i><span> PGS</span></a>
                </div>

                <label for="drop" class="toggle">Menu</label>
                <input type="checkbox" id="drop" />
                <ul class="menu mt-2">
                    <li><a href="login.jsp">Login <i class="fa fa-user fa-sm"></i></a></li>
                    <li><a href="admin.jsp">Admin <i class="fa fa-sign-in fa-sm"></i></a></li>
                </ul>
            </nav>
            <!-- //nav -->
        </div>
    </header>
    <!-- //header -->

</div>
<!--//main-content-->
<!---->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="#">PGS</a>
    </li>
    <li class="breadcrumb-item active">Sign Up</li>
</ol>
<!---->
<!--// mian-content -->
<!--/ab -->

<!--/login -->
<section class="login">

	<%String message = (String) session.getAttribute("message"); %>

    <form method="post" action="CheckRegister" onSubmit="return check();">
        <div class="login_icons">
            <i class="fa fa-user-plus fa-4x" style="color: #12343b;"><span style="color: #c89666;"> Sign Up</span></i>
        </div>
        <%
			String errorMsg = (String) session.getAttribute("errorMsg");
			if (null !=errorMsg) 
			{ %>
				<a class="forgot" style="color: red"><h6><%=errorMsg %></h6></a>
			 <%}
		%><br>
        <label for="username" >User Name</label>
        <input type="text" id="username" class="big medium-margin"  name="username" placeholder="Enter your Name"/>
        <label for="email">Email</label>
        <input type="text" id="email" class="big medium-margin" name="email" placeholder="Enter your Email" />
        <label for="phone">Phone Number</label>
        <input type="text" id="phone" class="big medium-margin" name="phone" placeholder="Enter your Phone Number" />
        <label for="password">Password</label>
        <input type="password" id="password" class="big medium-margin" name="password" placeholder=" Enter your Password"  />
        <label for="confirm_password">Confirm Password</label>
        <input type="password" id="confirm_password" class="big medium-margin" name="confirm_password" placeholder="Confirm Password"  />
        <a class="register" href="login.jsp"><span style="color: #c89666; font-size: large">Login to PGS</span></a>

        <input type="submit" name="submit" value="Sign Up"/>

    </form>
<script>

function check()
{
	var username = document.getElementById('username');
	var email = document.getElementById('email');
	var phone = document.getElementById('phone'); 
	var password = document.getElementById('password');
	var confirm_password = document.getElementById('confirm_password');
	
	if(nameVal(username))
	{
		if(emailVal(email))
		{
			if(phoneVal(phone))
			{
				if(passVal(password, confirm_password))
	    		{
	    			return true;
	    		}
			}
		} 			
	}	
	
	return false;
} 	



function nameVal(username)
{ 
		var letters = /^[A-Za-z]+$/;
		if(username.value == "")
		{
			alert('Please enter your name.');
			username.focus();
			return false;
		}
		if(username.value.match(letters))
		{
			return true;
		}
		else
		{
			alert('Username must have alphabet characters only');
			username.focus();
			return false;
		}
}
	
	function emailVal(email)
	{
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(email.value == "")
		{
			alert("Please enter your email address.");
			email.focus();
			return false;
		}
		if(email.value.match(mailformat))
		{
			return true;
		}
		else
		{
			alert("You have entered an invalid email address!");
			email.focus();
			return false;
		}
	}
	function phoneVal(phone)
	{
		
		if(phone.value == "")                           
		{ 
			alert("Please enter your telephone number."); 
			phone.focus();
			return false; 
		} 
		if(/^\d{10}$/.test(phone.value)) 
		{
			return true;   
		}
		else 
		{
		    alert("Invalid number; must be ten digits");
		    phone.focus();
		    return false;
		}
		
	}
	function passVal(password, confirm_password)
	{
		 if((password.value == "") && (confirm_password.value == ""))
		{
			alert("Please enter your password.");
				password.focus();
				return false;
		}
		
		if(password.value == confirm_password.value)
		{
			return true;
		}
		else
		{
			alert("Password did not match!");
			confirm_password.focus();
			return false;
		}
	
}

</script>
    
</section>
<!-- /login -->


<!-- footer -->

<div class="footer col-100 floatLft">
    <div class="footmenu">
        <ul>
            <a href="#home"><i class="fa fa-users fa-lg"></i><span> PGS</span></a>
            <li> <a>Caught On</a> </li>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <!-- <li><a target="_blank" href="https://discoverychannel.co.in/assets/front-css/images/Final_Expedition_TnC_pdf.pdf"> ExpeditionUnknown Contest T&Cs</a></li> --> </ul>
        <div class="copy">© 2020 Public Goods and Services. All rights reserved </div>
    </div>
</div>


<!-- //footer -->

</body>

</html>
