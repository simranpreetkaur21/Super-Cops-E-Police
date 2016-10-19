<%-- 
    Document   : UpdatePassword
    Created on : Jul 19, 2015, 5:44:26 PM
    Author     : Simranpreet Kaur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>Update Password</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="templatemo_style.css" rel="stylesheet" type="text/css">
</head>
<body class="templatemo_flower_2">
	<div id="main_container">
		<div class="container" id="about">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
					<div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
					</div>
				</div>			  	
				<div id="right_container" class="col col-md-9 col-sm-12">
					<div class="row"><div class="col col-md-12"><h1>Update Password</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
                                                    <div class="form-group">
                                                    <%
                                                    session=request.getSession(false);
                                                   %>
                                                    <form action="UpdatePasswordJ.jsp" method="post">
                                                    <table color="white">
                                                    <tr>
                                                        <td>Username</td>
                                                        <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%out.println(""+session.getAttribute("username"));%></p>
                                                    </tr>
                                                    <tr>
                                                        <td>Old Password:</td>
                                                        <td><input type="text" name="Upass"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>New Password</td>
                                                        <td><input type="text" name="NewPass"></td>
                                                    </tr>
                                                    </table><br><br> 
                                                    <button type="submit" class="btn btn-primary" name="Search" onclick="myFunction()">Submit</button>
                                                    <button type="RESET" class="btn btn-primary" name="Search">Reset</button>
                                                    </form>
                                                 </div>   
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
    <script>
        function myFunction() 
        {
        alert("Password Updated");
        }
    </script>

</body>
</html>

