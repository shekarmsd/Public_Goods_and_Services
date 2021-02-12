<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
			<%@page import="java.sql.*"%>
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

 #customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 90%;
  font-size: 12px;
}

#customers td, #customers th {
 
  padding: 8px;
}

#customers tr:nth-child(even){background-color: white;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #143D59;
  color: white;

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
                        <li class="active"><a href="Activities.jsp">Activities</a></li>
                        <li><a href="LogoutServlet">Logout <i class="fa fa-sign-out fa-sm"></i></a></li>
                         <li><a style="background-color: gray; color:white; border-radius: 20px;" title="View Profile" href="ProfilePage.jsp">&nbsp<%=un %>&nbsp </a></li>
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
        <li class="breadcrumb-item active"><a href="Activities.jsp">Activities</a></li>
        <li class="breadcrumb-item active">Request Details</li>
    </ol>
    <!---->
    <!--// mian-content -->
    <!-- banner -->
	

	
<section class="ab-info-main py-5">
<h3 class="tittle text-center"><span class="sub-tittle"></span> Recent Request Forms</h3>
<br>
	<div align="center" style="overflow-x:auto;">
			<table id="customers">
			<tr>
			<th>Full Name</th>
			<th>Email Address</th>
			<th>Phone Number</th>
			<th>Address Line</th>
			<th>Pincode</th>
			<th>State</th>
			<th>Goods Slot1</th>
			<th>Goods Slot2</th>
			<th>Goods Slot3</th>
			<th>Cause</th>
			<th>Message</th>
			<th>Date & Time</th>
			
			
			<%
			String connectionURL = "jdbc:oracle:thin:@DESKTOP-5DJ472J:1521/orcl";
	        Connection connection = null;
	        PreparedStatement pstatement = null;
	         int i = 1;
	         Class.forName("oracle.jdbc.OracleDriver").newInstance();
	              int updateQuery = 0;
	              connection = DriverManager.getConnection(connectionURL, "SYSTEM", "swift3");
	              
	              pstatement=connection.prepareStatement("SELECT * FROM REQUEST_FORM WHERE MAILID=?");
	              pstatement.setString(1,un);
	              
	          
	              ResultSet rt=pstatement.executeQuery();
	              %>
	              <%  while(rt.next()){ %>
			<tr>
			
			<td><%=rt.getString("FULL_NAME") %></td>
			<td><%=rt.getString("MAILID") %></td>
			<td><%=rt.getString("PHONE_NO") %></td>
			<td><%=rt.getString("ADDRESS_LINE") %></td>
			<td><%=rt.getString("PINCODE") %></td>
			<td><%=rt.getString("STATE") %></td>
			<td><%=rt.getString("GOODS_SLOT1") %></td>
			<td><%=rt.getString("GOODS_SLOT2") %></td>
			<td><%=rt.getString("GOODS_SLOT3") %></td>
			<td><%=rt.getString("CAUSE") %></td>
			<td><%=rt.getString("MESSAGE") %></td>
			<td><%=rt.getString("CREATED_DATE") %></td>
			
			</tr>
			    <% }
       %>
			</table>
	</div>
	
	 
</section>
	
	
    <!-- //contact -->
    <!-- footer -->

<br>

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
