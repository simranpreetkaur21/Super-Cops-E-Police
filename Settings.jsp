<%-- 
    Document   : UserHome
    Created on : Jul 16, 2015, 8:00:21 PM
    Author     : Simranpreet Kaur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>Settings</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
                                                                                 
           <script src="slider/modernizr.js"></script>
        <!-- 
    Botany Template 
    http://www.templatemo.com/preview/templatemo_391_botany 
    -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="templatemo_style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />
	
</head>
<body class="templatemo_flower_1">
	<div id="main_container">
		<div class="container" id="about">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
					<div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
					</div>
                                    <nav id="main_nav">
                <ul class="nav" style="font-size:20px">
						<li><a href="police.jsp">Home</a></li>
                                                <li><a href="PComplaintStatus.jsp">Complain Status</a></li>
                                                <li><a href="Settings.jsp">Settings</a></li>
                                                <li><a href="login.jsp">Logout</a></li>
                                        </ul>
            </nav>
				</div>			  	
				<div id="right_container" class="col col-md-9 col-sm-12">
				<!--	<div class="row"><div class="col col-md-12"><h1>Settings</h1></div></div> -->
					<article class="row">							
						<div class="col col-md-12">
							
							<form  action="#" method="post" class="navbar-form">
							<div color="white">
							 
                                                                                               
           <div class="row">
                    	<div class="col col-md-12">
                        
                                                  
        				</div>
                    </div>
           <nav id="main_nav">
                <ul class="nav" style="font-size:20px;">
                    <li><a href="PUpdatePassword.jsp">Update Password</a></li><br>
                    <li><a href="PUpdateProfile.jsp">Update Profile</a></li><br>
				</ul>
            </nav> <!-- nav -->
                                                          
                                                           
            </div>   
			
							</div>														            
						</article>						
						
			<footer class="row credit">
				<div class="col col-md-12">
					<div id="templatemo_footer">
						Copyright © 2015 <a href="#">SuperCop</a>
					</div>
				</div>
			</footer>
		</div>		
	</div>
                    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>

  <!-- FlexSlider -->
  <script defer src="slider/jquery.flexslider.js"></script>

  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
</body>
</html>
