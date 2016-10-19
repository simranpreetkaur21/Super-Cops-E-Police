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
	<title>Register</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="templatemo_style.css" rel="stylesheet" type="text/css">
        <script src="slider/modernizr.js"></script>
</head>
<body class="templatemo_flower_2">
	<div id="main_container">
		<div class="container" id="about">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
					<div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
                                  
                                                <br><br><br>
                                                <a href="PoliceRecord.jsp"><h3 color="red">Police records</h3></a>
                                                <br>
                                                <a href="UserRecord.jsp"><h3>User records</h3></a>
                                                
                                  

                                                
				</div>	

                              </div>  				<div id="right_container" class="col col-md-9 col-sm-12">
					<div class="row"><div class="col col-md-12"><h1>Administrator</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
							
							<form  action="#" method="post" class="navbar-form">
							<div color="white">
						<div class="flexslider">
                            
                            </div>	 
                                                                                               
            <nav id="main_nav">
				<ul class="nav" style="font-size:20px;"color="white">
                                   
                                        <li><a href="complaintoadmin.jsp">User Complains</a></li>
                                        <li><a href="admincomplain.jsp">Complain Processing</a></li>
                                        <li><a href="login.jsp">Logout</a></li>

				</ul>
            </nav> <!-- nav -->
                                                          
                                                           
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
    <!-- templatemo 391 botany -->
    <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>
    
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
