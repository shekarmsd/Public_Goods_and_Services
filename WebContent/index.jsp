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
    <div class="main-banner" id="home">
        <!-- header -->
        <header class="header">
            <div class="container-fluid px-lg-5">
                <!-- nav -->
                <nav class="py-4">
                    <div id="logo">
                        <a href="index.jsp"><i class="fa fa-users fa-2x" style="color: #f9c5bd;"></i><span> PGS</span></a>
                    </div>

                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu mt-2">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="collections.jsp">Collections</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                         <li><a href="Activities.jsp">Activities</a></li>
                        <li><a href="LogoutServlet">Logout <i class="fa fa-sign-out fa-sm"></i></a></li>
                
                    
                        <li><a style="background-color: white;color:black; border-radius: 20px;" title="View Profile" href="ProfilePage.jsp">&nbsp<%= un%>&nbsp </a></li>
       
                    
                    </ul>
                    
                </nav>
                <!-- //nav -->
            </div>
        </header>
        
        
        <!-- //header -->
        <!--/banner-->
        <div class="banner-info">
  			
            <p>Public Goods and Services</p>
            <h3 class="mb-4">We Provide Goods For People Who Affected By Natural Disaster</h3>
            <div class="ban-buttons">
                <a href="#goods" class="btn">Find Your Needs</a>
                <a href="donate.jsp" class="btn active">Wish to Donate</a>
            </div>
         
        </div>
        <!--// banner-inner -->

    </div>
    <!--//main-content-->
    <!--/ab -->
    <section class="about py-md-5 py-5">
        <div class="container-fluid">
            <div class="feature-grids row px-3">
                <div class="col-lg-3 gd-bottom">
                    <a href="donate.jsp">
                        <div class="bottom-gd row">
                            <div class="icon-gd col-md-3 text-center"><span class="fa fa-archive" aria-hidden="true"></span></div>
                            <div class="icon-gd-info col-md-9">
                                <h3 class="mb-2">I'm Willing to Donate</h3>
                                <p>Click to become a donor!</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-3 gd-bottom">
                    <a href="about.jsp">
                        <div class="bottom-gd row">
                            <div class="icon-gd col-md-3 text-center"> <span class="fa fa-exclamation-circle" aria-hidden="true"></span></div>
                            <div class="icon-gd-info col-md-9">
                                <h3 class="mb-2">About Us</h3>
                                <p>Click to know about PGS.</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 gd-bottom">
                    <a href="request.jsp">
                        <div class="bottom-gd row">
                            <div class="icon-gd col-md-3 text-center"> <span class="fa fa-address-card" aria-hidden="true"></span></div>
                            <div class="icon-gd-info col-md-9">
                                <h3 class="mb-2">Request for Goods</h3>
                                <p>We acknowledge you're request 24/7.</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 gd-bottom">
                    <a href="contact.jsp">
                        <div class="bottom-gd row">
                            <div class="icon-gd col-md-3 text-center"> <span class="fa fa-envelope" aria-hidden="true"></span></div>
                            <div class="icon-gd-info col-md-9">
                                <h3 class="mb-2">Contact Us</h3>
                                <p>You're need is our job. Feel free to contact us.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- //ab -->
    <!--/ab -->
    <section class="about py-5" id="goods">
        <div class="container pb-lg-3">
            <h3 class="tittle text-center">Available Goods</h3>
            <div class="row">
                <div class="col-md-4 product-men">
                    <a href="collections.jsp">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img src="images/clothes.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a>Clothes</a>
                                </h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 product-men">
                    <a href="collections.jsp">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img src="images/medica.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a>Medicine</a>
                                </h4>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4 product-men">
                    <a href="collections.jsp">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img src="images/kitchen.jpg" class="img-fluid" alt="">
                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a>Kitchen Accessories</a>
                                </h4>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="more" align="center">
            <h4>
                <a href="collections.jsp">And other things...</a>
            </h4>
        </div>&nbsp;
        <div class="ban-buttons" align="center">
            <a href="collections.jsp" class="btn active1">request for goods</a>
        </div>&nbsp;
    </section><br/>
    <!-- //ab -->
    <!--/ab -->

    <!-- //ab -->
    <!-- brands -->

    <!-- brands -->
    <!-- footer -->

    <div class="footer col-100 floatLft">
        <div class="footmenu">
            <ul>
                <a href="index.jsp"><i class="fa fa-users fa-lg"></i><span> PGS</span></a>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact</a></li>
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
