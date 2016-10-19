<%-- 
    Document   : GenerateComplaintId
    Created on : Jul 18, 2015, 3:41:44 PM
    Author     : Simranpreet Kaur
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>Complaint Submission</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
    <!-- 
    Botany Template 
    http://www.templatemo.com/preview/templatemo_391_botany 
    -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="templatemo_style.css" rel="stylesheet" type="text/css">
 <link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />

	<!-- Modernizr -->
  	<script src="slider/modernizr.js"></script>
	<!-- HTML 5 shim for IE backwards compatibility -->
		<!-- [if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js">
		</script>
		<![endif]-->
	<!-- 
	Credits
	Equal Height Columns http://www.hongkiat.com/blog/css-equal-height/ -->
</head>
<body class="templatemo_flower_2">
    <% session=request.getSession(false); %>
    
	<div id="main_container">
		<div class="container" id="about">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
					<div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
					</div>	
				</div>			  	
				<div id="right_container" class="col col-md-9 col-sm-12"  >
					<div class="row"style="margin-left: 40px" ><div class="col col-md-12"><h1>Complaint Submitted Successfully..</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">	
						<div color="white" style=" margin-top: 80px;">
                                                    <center>
                                                    <table>
                                                        <tr>
                                                            <td>UserID:</td>
                                                            <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<% out.println(""+session.getAttribute("username")); %></p></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Complaint:</td>
                                                            <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<% out.println(""+session.getAttribute("complaint"));%></p></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td>Complaint Id:</td>
                                                            <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<% out.println(""+session.getAttribute("complaintid"));%></p></td>
                                                        </tr>
                                                    </table>
                                                    </center>
                                                </div>
                                                </div>   														            
					</article>
                                </div>
                        </div>
                      
                                                            %>
						
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

