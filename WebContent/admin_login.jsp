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
                    <li ><a href="login.jsp">Login <i class="fa fa-user fa-sm"></i></a></li>
                    <li class="active"><a href="admin.jsp">Admin <i class="fa fa-sign-in fa-sm"></i></a></li>
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
        <a href="login.jsp">PGS</a>
    </li>
    <li class="breadcrumb-item active">Admin</li>
</ol>
<!---->
<!--// mian-content -->
<!--/ab -->

<!--/login -->




<section class="login">
   
    <form method="post" action="Admin">
       <div class="login_icon">
            <i class="fa fa-cogs fa-2x" style="color: #12343b;"><span style="color: #c89666;"> Admin Login</span></i>
       </div>
        <label for="admin_name">Admin Name</label>
        <input type="text" id="admin_name" name="admin_name" placeholder="Admin Name" required />
        
		<label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter Your Password" required />
			       <%
			String adminError = (String) session.getAttribute("adminError");
			if (null !=adminError) 
			{ %>
				<a class="forgot" style="color: red"><%=adminError %></a>
				
			    <%}
			
			%> 
        
        <input type="submit" name="submit" value="Log In" />

    </form> 
</section><br>
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
