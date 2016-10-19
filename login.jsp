<%-- 
    Document   : login
    Created on : Jul 15, 2015, 9:31:52 AM
    Author     : Asus lappyS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>Login</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="templatemo_style.css" rel="stylesheet" type="text/css">
</head>
<body class="templatemo_padaut_bg">
	<div id="main_container">
		<div class="container" id="services">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
					<div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
					</div>
					<nav id="main_nav">
						<ul class="nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="NewRegister.jsp">Register</a></li>
							<li class="active"><a href="login.jsp">Login</a></li>
							<li><a href="contact.jsp">Contact</a></li><br><br>
						</ul>
					</nav> 	
                                        </div>			  	
                                        <div id="right_container" class="col col-md-9 col-sm-12">
                                            <div class="row">
                                                <div class="col col-md-12">
                                                    <h2>Login</h2>
                                                </div>
                                            </div>
                                            <center>
                                            <form action="LoginJ.jsp" method="post">
                                                <p>User Id : <input type="text" name="Uid"></p><br>
                                                <p>Password : <input type="password" name="Upass"></p>
                                                <input type="submit" class="btn btn-primary" value="Login" onclick="myFunction()">
                                            </form>
                                            </center>					
                                        </div>
                            </div>
			<footer class="row credit">
				<div class="col col-md-12">
					<div id="templatemo_footer">
						Copyright © 2015 <a href="index.jsp">SuperCop</a>
					</div>
				</div>
			</footer>
		</div>		
	</div>
    <!-- templatemo 391 botany -->
</body>
</html>