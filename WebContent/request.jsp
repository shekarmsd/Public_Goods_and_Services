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
                    <li><a href="about.jsp">About</a></li>
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
    <li class="breadcrumb-item active">Request Form</li>
</ol>
<!---->
<!--// mian-content -->
<!-- banner -->
<!-- banner -->
<section class="ab-info-main py-md-5">
    <p style="text-align: center; color: #c89666;"><span style="color: red">Note: &nbsp</span>Make sure before proceeding, the request must be true: otherwise your request will not be proceeded.<br> We will be cross checking your request details with different news partners.</p>
    <form action="Request_Form" method="post" class="mt-4" onSubmit="return check();" >
    <div class="container py-md-3">
        <h3 class="tittle text-center mb-lg-5 mb-3">Request Form</h3>
        <div class="single-form-left">
            <!-- contact form grid -->
            <div class="contact-single">

                    <div class="d-sm-flex">
                        <div class="col-sm-6 form-group p-0">
                            <label for="username">Name *</label>
                            <input type="text" class="form-control border" id="username" name="username">
                        </div>
                        <div class="col-sm-6 form-group ml-sm-3">
                            <label for="email">Email *</label>
                            <input type="text" class="form-control border" id="email" name="email">
                        </div>
                    </div>
                    <div class="d-sm-flex">
                        <div class="col-sm-6 form-group p-0">
                            <label for="phone">Phone *</label>
                            <input type="text" class="form-control border" id="phone" name="phone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address">Address *</label>
                        <textarea class="form-control border" rows="2" id="address" name="address" ></textarea>
                        <p><span style="color: red">Note: </span>The address should be valid with pincode.</p>
                    </div>
                    <div class="d-sm-flex">
                        <div class="col-sm-6 form-group p-0">
                            <label for="pincode">Pincode / Zipcode *</label>
                            <input type="text" class="form-control border" id="pincode" name="pincode" >
                        </div><br/><br/>
                        <div class="col-sm-6 form-group ml-sm-3" style="padding-top: 16px;">
                            <label for="state">State *</label>
                                <select   class="form-control border" id="state" name="state">
                                 <option value="-1" selected="selected">Select</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                                <option value="Daman and Diu">Daman and Diu</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Lakshadweep">Lakshadweep</option>
                                <option value="Puducherry">Puducherry</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Mizoram">Mizoram</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Odisha">Odisha</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Telangana">Telangana</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="Uttarakhand">Uttarakhand</option>
                                <option value="West Bengal">West Bengal</option>
                            </select>
                        </div>
                    </div>
                <p>Choose Your Need *</p>
                <div class="d-sm-flex">
                    <div class="check">
                        <input type="checkbox" id="check1" name="check1" value="Medicine's">
                        <label for="check1">Medicine's</label><br/>
                    </div>
                    <div class="check">
                        <input type="checkbox" id="check2" name="check2" value="Clothes">
                        <label for="check2">Clothes</label>
                    </div>
                    <div class="check">
                        <input type="checkbox" id="check3" name="check3" value="Footwear">
                        <label for="check3">Footwear</label>
                    </div>
                </div>
                <div class="d-sm-flex">
                    <div class="col-sm-6 form-group p-0">
                        <label for="cause">Cause *</label>
                        <input type="text" class="form-control border" id="cause" name="cause" >
                    </div>
                </div>
                <div class="form-group">
                    <label for="address">Message (Optional)</label>
                    <textarea class="form-control border" rows="2" id="message" name="message"></textarea>
                    <p><span style="color: red">Optional:</span> Leave additional message.</p>
                    <p><span style="color: red">Note:</span> * Mandatory Fields.</p>
                </div>

                    <button type="submit" class="mt-3 btn btn-success btn-block py-3" onSubmit="alert('Thank you for your feedback.');">Request</button>
            </div>
            <!--  //contact form grid ends here -->
        </div>

    </div>
    </form>
    
    <script>
    
    function check()
    {
    	var username = document.getElementById('username');
    	var email = document.getElementById('email');
    	var phone = document.getElementById('phone');
    	var address = document.getElementById("address");
    	var pincode = document.getElementById("pincode");
    	var state = document.getElementById("state");
    	var check1 = document.getElementById("check1");
    	var check2 = document.getElementById("check2");
    	var check3 = document.getElementById("check3");
    	var cause = document.getElementById("cause");
    	
    	if(nameVal(username))
    	{
    		if(emailVal(email))
    		{
    			if(phoneVal(phone))
    			{
    				if(addVal(address))
    				{
    					if(pincodeVal(pincode))
        				{
    						if(stateVal(state))
    						{
            					if(checkVal(check1, check2, check3))
            					{
            						if(caseVal(cause))
            						{
            							return true;
            						}
            					}
    						}
        				}
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
	
	function addVal(address)
	{
		
		if(address.value == "")
		{
			alert("Please enter your address.")
			address.focus();
			return false;
		}
		return true;
	}
	
	function pincodeVal(pincode)
	{
		if(pincode.value == "")
		{
			alert("Please enter your pincode.")
			pincode.focus();
			return false;
		}
		if(/^\d{6}$/.test(pincode.value))
		{
			return true;
		}
		else
		{
			alert("Invalid Pincode: Pin code should be 6 digits.")
			pincode.focus();
			return false;
		}
	}
	
	function stateVal(state)
	{
		if(state.value == "-1")
		{
			alert("please select your state.");
			state.focus();
			return false;
		}
		return true;
	}
	
	function checkVal(check1, check2, check3)
	{
		if((check1.checked == true) || (check2.checked == true) || (check3.checked == true))
		{
			return true;
		}
		else
		{
			alert("Please select atlest one.");
			check1.focus();
			return false;
		}
	}
	
	function caseVal(cause)
	{
		if(cause.value == "")
		{
			alert("Please enter the cause.");
			cause.focus();
			return false;
		}
		return true;
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
        </ul>
        <div class="copy">© 2020 Public Goods and Services. All rights reserved </div>
    </div>
</div>
<!-- //footer -->




</body>


</html>
