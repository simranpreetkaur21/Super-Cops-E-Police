<%-- 
    Document   : register
    Created on : Jul 15, 2015, 9:31:40 AM
    Author     : Asus lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>Update Profile</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="templatemo_style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />
</head>
<body class="templatemo_padaut_bg">
	<div id="main_container">
		<div class="container" id="about">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
					<div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
					</div>
					<nav id="main_nav">
					<ul class="nav">
						<li><a href="police.jsp">Home</a></li>
                                                <li><a href="record.jsp">Record</a></li>
                                                <li><a href="setting.jsp">Settings</a></li>
                                                <li><a href="Login.jsp">Logout</a></li>
						</ul>
					</nav> <!-- nav -->	
					
				</div>			  	
				<div id="right_container" class="col col-md-9 col-sm-12">
					<div class="row"><div class="col col-md-12"></div></div>
					<article class="row">							
						<div class="col col-md-12">
							<h4>Please enter the Details</h4>
							<form action="PUpdateProfileJ.jsp" method="post" class="navbar-form">
							<div class="form-group">
                                                            <%
                                                            session=request.getSession(false);
                                                            %>
							 
              
            
            <table>
                              
                <tr>
                    <td><p> Police Id: </p></td>
                    <td><input type="text" name="Uname" value='<%session.getAttribute("username");%>'></td>
                </tr>
                <tr>
                    <td><p>Police Batch No.</p></td>			
                    <td><input type="text" name="Batch" placeholder="Batch No."></td>
                </tr>
                <tr>
                    <td><p>Full name</p></td>			
                    <td><input type="text" name="Name" placeholder="Name"></td>
                </tr>
                <tr>
                    <td><p>Father's Name :</p></td>
                    <td><input type="text" name='FathersName' placeholder="Father's Name"></td>
                <br>
                </tr>
              
                <tr>
                    <td><p> Mobile No. :</p></td>
                    <td><input type="text" name='MobileNo' placeholder="Mobile No."></td>
                </tr>
                <tr>
                    <td><p> Email : </p></td>
                    <td><input type="email" name='Email' placeholder="Email"></td>
                </tr><br>
                 <tr>
                    <td><p>Address</p></td>
                    <td><input type="text area" name="Address" placeholder="address"></td>
                    
                </tr>
               
                <tr>
                  <td><p>Gender :</p></td>
                    <td><input type="Radio" name="Gender" value="Male" default><p>Male</p></td>
                    <td>   <input type="Radio" name="Gender" value="Female" ><p>Female</p></td>
                </tr>
            </table>
                <input type="submit" value="Update" class="btn btn-primary">
        </div>   </form>
			<br><br>
										
														
							</div>														            
						</article>								                          
					</div>
				</div> 
			<footer class="row credit">
				<div class="col col-md-12">
					<div id="templatemo_footer">
						Copyright © 2015 <a href="#">SuperCop</a>
					</div>
				</div>
			</footer>
		</div>		
	</div>
</body>
</html>
