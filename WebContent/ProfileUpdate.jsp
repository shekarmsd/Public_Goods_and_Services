<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%	
		
		%>
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

<body>


<%
    String un = (String)session.getAttribute("email");
    if (null == un) {
	    session.setAttribute("errorMessage", "Invalid Credentials! Enter Valid Email / Password ");
	    response.sendRedirect("login.jsp");
    }

    %>

    <!-- mian-content -->
    <div class="main-banner inner" id="home">
        <!-- header -->
        <header class="header">
            <div class="container-fluid px-lg-5">
                <!-- nav -->
                <nav class="py-4">
                    <div id="logo">
                        <a href="index.jsp"><i class="fa fa-users fa-2x"></i><span> PGS</span></a>
                    </div>

                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu mt-2">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="collections.jsp">Collections</a></li>
                        <li ><a href="contact.jsp">Contact</a></li>
                        <li><a href="Activities.jsp">Activities</a></li>
                        <li><a href="LogoutServlet">Logout <i class="fa fa-sign-out fa-sm"></i></a></li>
                         <li class="active"><a style="background-color: gray; color:white; border-radius: 20px;" title="View Profile" href="ProfilePage.jsp">&nbsp<%=un %>&nbsp </a></li>
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
            <a href="index.jsp">Home</a>
        </li>
        <li class="breadcrumb-item active"><a href="ProfilePage.jsp">Profile</a></li>
        <li class="breadcrumb-item active">Update Profile</li>
    </ol>
    <!---->
    <!--// mian-content -->
    <!-- banner -->
  

<section class="login">
	

    <form method="post" action="ProfileUpdate" onSubmit="return check();">
        <div class="login_icons">
            <i class="fa fa-address-card fa-3x" style="color: #12343b;"><span style="color: #c89666;"> Profile Update</span></i>
        </div>
       
      <br>
      <%		String id = request.getParameter("ID"); %>
		<%
	
			try{	
				Connection connection = null;
	            Class.forName("oracle.jdbc.driver.OracleDriver");
	            connection = DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-5DJ472J:1521/orcl", "SYSTEM", "swift3");
				Statement st = connection.createStatement();
				String sql ="SELECT * FROM PGSREGISTER WHERE ID="+id;
				ResultSet rt = st.executeQuery(sql);
			while(rt.next()){	
			%>      
      	<input type="hidden"  name="id" value="<%=rt.getString("ID") %>">

        <label for="username" >User Name</label>
        <input type="text" id="username" class="big medium-margin"  name="username" placeholder="Enter your Name" value="<%=rt.getString("USER_NAME") %>"/>
        <label for="email">Email</label>
        <input type="text" id="email" class="big medium-margin" name="email" placeholder="Enter your Email" value="<%=rt.getString("MAILID") %>"/>
        <label for="phone">Phone Number</label>
        <input type="text" id="phone" class="big medium-margin" name="phone" placeholder="Enter your Phone Number" value="<%=rt.getString("PHONE_NO") %>" />
        
        <input type="hidden" id="password" class="big medium-margin" name="password" placeholder=" Enter your Password" value="<%=rt.getString("PASSCODE") %>" />
        
        <input type="submit" name="submit" value="Update"/>
        <%
				}
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
			%>

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

	
    <!-- //contact -->
    <!-- footer -->

    <div class="footer col-100 floatLft">
        <div class="footmenu">
            <ul>
                <a href="index.jsp"><i class="fa fa-users fa-lg"></i><span> PGS</span></a>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li> <a>Caught On</a> </li>
                <a href="#"><i class="fa fa-twitter fa-lg"></i></a>
                <a href="#"><i class="fa fa-instagram fa-lg"></i></a>
                <a href="#"><i class="fa fa-facebook fa-lg"></i></a>
                <!-- <li><a target="_blank" href="https://discoverychannel.co.in/assets/front-css/images/Final_Expedition_TnC_pdf.pdf"> ExpeditionUnknown Contest T&Cs</a></li> --> </ul>
            <div class="copy">© 2020 Public Goods and Services. All rights reserved </div>
        </div>
    </div>
    <!-- //footer -->
</body>

</html>
