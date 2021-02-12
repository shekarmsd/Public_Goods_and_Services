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
                        <a href="index.jsp"><i class="fa fa-users fa-2x"></i><span> PGS</span></a>
                    </div>

                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop" />
                    <ul class="menu mt-2">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active"><a href="about.jsp">About</a></li>
                        <li><a href="collections.jsp">Collections</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
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
        <li class="breadcrumb-item active">About Us</li>
    </ol>
    <!---->
    <!--// mian-content -->
    <!--/ab -->
    <section class="hand-crafted py-5">
        <div class="container">
            <div class="inner-sec py-md-5 px-lg-5">
                <h3 class="tittle text-center"><span class="sub-tittle"></span> Our Problem Statement</h3>
                <p class="mb-4 text-center px-lg-4">  Donation is the act by which the owner of a thing voluntarily transfers the
                    title and possession of the same from himself to another person, without any
                    consideration. A donation may take various forms, particularly goods such as
                    clothing, toys, food, accessories and etc. Where the places/areas are affected by
                    various natural disasters, during the causes people used to come and collect the
                    things from different parts of the region, which may not able to cover all the
                    parts of the region due to leak of time consumes for carrying the goods and
                    travelling process which may not reach the affected people in time. <br><span class="sub-tittle">-------------------------------------------------------------------------------------------------------------------------------------------------------------------------</span>
                    To overcome this problem we have come up with a system called Public Goods
                    and Services Management System. Which can help affected people to get the
                    necessary things in time, the system helps donors to donate their things through
                    this system. It is an all-time service system, people who are willing to donate can
                    able to donate at any time.
                </p>

                <h3 class="tittle text-center"><span class="sub-tittle"></span> Public Goods and Services</h3>
                <p class="mb-4 text-center px-lg-4" style="color: #c89666">  Public Goods and Services Management System. Which can help affected people to get the necessary things in time, the system helps donors to donate their things through this system. It is an all-time service system, people who are willing to donate can able to donate at any time.</p>
            </div>
        </div>
    </section>
    <!-- //ab -->
    <!--/ab -->
    <section class="about py-md-5 py-5">
        <div class="container py-md-3">
            <h3 class="tittle text-center">Services We Provide</h3>
            <div class="feature-grids1 row">
                <div class="col-md-4 gd-bottom mt-lg-4">
                    <div class="bottom-gd p-lg-5 p-4">
                        <span class="fa fa-truck fa-3x" aria-hidden="true"></span>
                        <h3 class="my-3">DISTRIBUTE</h3>
                        <p>We distribute required goods to the respected places all around on your request.</p>
                    </div>
                </div>
                <div class="col-md-4 gd-bottom mt-lg-4">
                    <div class="bottom-gd p-lg-5 p-4">
                        <span class="fa fa-server" aria-hidden="true"></span>
                        <h3 class="my-3">COLLECTIONS</h3>
                        <p>Which is helpful for people who affected by natural disasters, likely clothes, meditations & more.</p>
                    </div>
                </div>
                <div class="col-md-4 gd-bottom mt-lg-4">
                    <div class="bottom-gd p-lg-5 p-4">
                        <span class="fa fa-archive" aria-hidden="true"></span>
                        <h3 class="my-3">DONATION</h3>
                        <p>This PGS system will be helpful for people who willing to donate and to become a DONOR.</p>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- //ab -->

    <!-- //hand-crafted -->
    <!-- stats -->
    <section class="stats py-5" id="stats">
        <div class="container py-md-3">
            <div class="row stat-grids">
                <div class="col-lg-6 ser-lt">
                    <div class="d-flex services-box">
                        <div class="icon">
                            <span class="fa fa-truck"></span>
                        </div>
                        <!-- .Icon ends here -->
                        <div class="service-content">
                            <h4>Distribution</h4>
                            <p class="serp">
                                We distribute the required goods to the respected places all around on your request, with free of cost.
                            </p>
                        </div>
                        <!-- .Service-content ends here -->
                    </div>
                    <!-- .Services-box ends here -->

                    <div class="d-flex services-box ser-midd">
                        <div class="icon">
                            <span class="fa fa-archive"></span>
                        </div>
                        <!-- .Icon ends here -->
                        <div class="service-content">
                            <h4>Donations</h4>
                            <p class="serp">
                                PUBLIC GOODS AND SERVICES (PSG) system provides an opportunity to people out there willing to donate can donate through this service, which will be helpful for affected families. To become a DONOR! <a href="donate.jsp" style="color: red"> Click here.</a>
                        </div>
                        <!-- .Service-content ends here -->
                    </div>
                    <!-- .Services-box ends here -->
                    <!-- .Services-box ends here -->
                    <!-- .Services-box ends here -->
                </div>
                <div class="col-lg-6 ser-lt ser-right">
                    <div class="d-flex services-box">
                        <div class="icon">
                            <span class="fa fa-server"></span>
                        </div>
                        <!-- .Icon ends here -->
                        <div class="service-content">
                            <h4>Collections</h4>
                            <p class="serp">
                               We provide a few types which is helpful for people who affected by natural disasters, likely clothes, medicines & more.
                            </p>
                        </div>
                        <!-- .Service-content ends here -->
                    </div>
                    <!-- .Services-box ends here -->

                    <div class="d-flex services-box ser-midd">
                        <div class="icon">
                            <span class="fa fa-bell-o"></span>
                        </div>
                        <!-- .Icon ends here -->
                        <div class="service-content">
                            <h4>Report / Contact</h4>
                            <p class="serp">
                                Contact us if any issues regarding PGS. It's open for any kind of suggestions regarding this PGS<a href="contact.jsp" style="color: red"> Click here.</a>
                            </p>
                        </div>
                        <!-- .Service-content ends here -->
                    </div>
                    <!-- .Services-box ends here -->
                    <!-- .Services-box ends here -->
                    <!-- .Services-box ends here -->
                </div>
            </div>
        </div>
    </section>
    <!-- //stats -->

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
