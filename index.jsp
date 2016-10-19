<%-- 
    Document   : index
    Created on : Jul 15, 2015, 9:28:36 AM
    Author     : Asus lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>SuperCop Online</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="templatemo_style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />
  	<script src="slider/modernizr.js"></script>
</head>
<body class="templatemo_juice_bg">
	<div id="main_container">
		<div class="container" id="home">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
                                    <div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
                                    </div>
					<nav id="main_nav">
						<ul class="nav">
                                                    <li class="active"><a href="index.jsp">Home</a></li>
                                                    <li><a href="NewRegister.jsp">Register</a></li>
                                                    <li><a href="login.jsp">Login</a></li>
                                                    <li><a href="contact.jsp">Contact</a></li><br><br>
														
						</ul>
					</nav>	
				</div>
				<div id="right_container" class="col col-md-9 col-sm-12">
                                    <div class="row">
                                        <div class="col col-md-12">
                                        <h2>Welcome</h2> 
                                            <div class="flexslider">
                                                <ul class="slides">
                                                    <li><img src="images/rsz_crime.jpg" alt="slide 1" /></li>
                                                    <li><img src="images/rsz_coplights.jpg" alt="slide 2" /></li>
                                                    <li><img src="images/This.png" alt="slide 3" /></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <article class="row">
                                        <div class="col col-md-12">
                                            <img src="images/handcuff.jpg" alt="Pic 1" class="img-thumbnail img-responsive img_left">
                                            <h3>Introduction</h3> 
                                            <p>The objective of
SuperCop is to
Uphold the law fairly and firmly;
To prevent crime; to pursue and bring to justice
Those who break the law;
To keep the peace in partnership with the community;
To protect, help and reassure the people;
And to be seen to do all this
With integrity, common sense and sound judgment.
We must be
Compassionate, courteous and patient,
Acting without fear, or favor or prejudice
To the rights of others,
We need to be
Professional, calm and restrained
In the face of violence
And apply only that force
Which is necessity to accomplish our lawful duty
We must strive
To reduce the fears of the public
And, so far as we can,
To reflect their priorities in the action we take.
We must respond to
Well-founded criticism with a willingness to change
                                            </p>	
					</div>								            
				</article>					              
                            </div>
                    </div> 
                    <footer class="row credit">
                        <div class="col col-md-12">
                            <div id="templatemo_footer">
                                Copyright © 2015 <a href="#" style="color: orange">SuperCops</a>
                            </div>
                        </div>
                    </footer>
                </div>		
            </div>
    
  <!-- jQuery -->
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
  <!-- templatemo 391 botany -->
</body>
</html>