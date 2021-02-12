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

<body>


<%
    String un = (String) session.getAttribute("email");
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
                        <a href="index.html"><i class="fa fa-users fa-2x"></i><span> PGS</span></a>
                    </div>

                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu mt-2">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="collections.jsp">Collections</a></li>
                        <li class="active"><a href="contact.jsp">Contact</a></li>
                        <li><a href="Activities.jsp">Activities</a></li>
                        <li><a href="LogoutServlet">Logout <i class="fa fa-sign-out fa-sm"></i></a></li>
                         <li><a style="background-color: white; color:black; border-radius: 20px;" title="View Profile" href="ProfilePage.jsp">&nbsp<%=un %>&nbsp </a></li>
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
        <li class="breadcrumb-item active">Contact Us</li>
    </ol>
    <!---->
    <!--// mian-content -->
    <!-- banner -->
    <section class="ab-info-main py-5">
        <div class="container py-3">
            <h3 class="tittle text-center"><span class="sub-tittle"></span> Contact Us</h3>
            <div class="row contact-main-info mt-5">
                <div class="col-md-6 contact-right-content">
                    <form action="Contact" method="post" onSubmit = "return check();">
                        <input type="text" id="name" name="name" placeholder="Name">
                        <input type="text" class="email" id="email" name="email" placeholder="Email">
                        <input type="text" name="phone"  id="phone" placeholder="Phone">
                        <textarea name="message" id="message" placeholder="Message"></textarea>
                        <div class="read mt-3">
                            <input type="submit" value="Submit">
                        </div>
                    </form>
                    
                    
                    <script>
                    
                    function check()
                   	{
                    	var name = document.getElementById('name');
                    	var email = document.getElementById('email');
                    	var phone = document.getElementById('phone');
                    	var message = document.getElementById('message');
                    	
                    	if(nameVal(name))
                    	{
                    		if(emailVal(email))
                    		{
                    			if(phoneVal(phone))
                    			{
                    				if(msgVal(message))
                    				{
                    					return true;
                    				}
                    			}
                    		}
                    	}
                    	return false;
                   	}
                    
                    function nameVal(name)
                    {
                    	if(name.value == "")
                    	{
                    		alert("Please enter your name.");
                    		name.focus();
                    		return false;
                    	}
                    	if(/^[A-Za-z]+$/.test(name.value))
                    	{
                    		return true;
                    	}
                    	else
                    	{
                    		alert("Username must have alphabet characters only");
                    		name.focus();
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
                    
                    function msgVal(message)
                    {
                    	if(message.value == "")
                    	{
                    		alert("Please some message.");
                    		message.focus();
                    		return false;
                    	}
                    	return true;
                    }
                    </script>
                    
                    
                    
                </div>
                <div class="col-md-6 contact-left-content">
                    <div class="address-con">
                        <h4 class="mb-2"><span class="fa fa-phone-square" aria-hidden="true"></span> Phone</h4>
                        <p>+91 87781 95264</p>
                        <p>+91 96299 43838</p>
                    </div>
                    <div class="address-con my-4">
                        <h4 class="mb-2"><span class="fa fa-envelope-o" aria-hidden="true"></span> Email </h4>
                        <p><a href="mailto:info@example.com">formal.snps@gmail.com</a></p>
                        <p><a href="mailto:info@example.com">abdulrahman7@gmail.com</a></p>
                    </div>
                    <div class="address-con">
                        <h4 class="mb-2"><span class="fa fa-map-marker" aria-hidden="true"></span> Location </h4>

                        <p>Kristu Jayanti College Autonomous, Bengaluru.</p>
                    </div>

                </div>

            </div>
        </div>
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
