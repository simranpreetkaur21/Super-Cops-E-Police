<%-- 
    Document   : contact
    Created on : Jul 15, 2015, 9:33:56 AM
    Author     : Asus lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>Contact - SuperCop</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
   
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="templatemo_style.css" rel="stylesheet" type="text/css">

	
</head>
<body class="templatemo_garden_bg">
	<div id="main_container">
		<div class="container" id="contact">
			<div class="row col-wrap">			 
				<div id="left_container" class="col col-md-3 col-sm-12">
					<div class="templatemo_logo">
						<a href="#"><h1><b><i>SuperCop</i></b></h1></a>
					</div>
					<nav id="main_nav">
						<ul class="nav">
                                                    <li><a href="index.jsp">Home</a></li>
                                                    <li><a href="register.jsp">Register</a></li>
                                                    <li><a href="login.jsp">Login</a></li>
                                                    <li class="active"><a href="contact.jsp">Contact</a></li><br><br>
						</ul>
					</nav>
					
				</div>			  	
				<div id="right_container" class="col col-md-9 col-sm-12">
					<div class="row"><div class="col col-md-12"><h3>Contact Us</h3></div></div>
					<div class="row">
						<div class="col-md-12">
							<p>You may leave us a message for any kind of business matter or personal greeting. Nam nec tellus a odio tincidunt auctor a ornare odio. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow">XHTML</a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow">CSS</a>.</p>
						</div>
					</div>
					<form role="form" action="ContactJ.jsp" method="post">
						<div class="row">
							<div class="col-md-5">
								<div class="form-group left-inner-addon">
									<span class="glyphicon glyphicon-user"></span>
									<input name="Name" type="text" class="form-control" id="input_name" placeholder="Name">
							  </div>
								<div class="form-group left-inner-addon">
									<span class="glyphicon glyphicon-envelope"></span>
									<input name="Email" type="email" class="form-control" id="input_email" placeholder="Email">
								</div>
								<div class="form-group left-inner-addon">
									<span class="glyphicon glyphicon-earphone"></span>
									<input name="Phone" type="tel" class="form-control" id="input_tel" placeholder="Phone">
								</div>
							</div> 
							<div class="col-md-7">
								<div class="form-group left-inner-addon">
									<span class="glyphicon glyphicon-comment"></span>
									<textarea name="Message" rows="6" class="form-control" id="input_message" placeholder="Message..."></textarea><br>
									<button type="submit" class="btn btn-primary">Send</button>
									<button type="reset" class="btn btn-default float_r">Reset</button>
								</div>
							</div>
						</div> <!-- row -->
					</form>

					<div class="row">
                        <div class="col col-md-12">
                        	<h3>Our Location</h3>
                        </div>
                    </div>
                    
					<div class="row">
						<section class="col-xs-12 col-md-12">
							<iframe height="320" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Central+Park,+New+York,+NY,+USA&amp;aq=0&amp;sll=14.093957,1.318359&amp;sspn=69.699334,135.263672&amp;vpsrc=6&amp;ie=UTF8&amp;hq=Central+Park,+New+York,+NY,+USA&amp;ll=40.778265,-73.96988&amp;spn=0.033797,0.06403&amp;t=m&amp;output=embed"></iframe>
						</section>
					</div>	 
                                             
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