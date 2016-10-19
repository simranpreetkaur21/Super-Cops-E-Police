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
	<title>Police Home</title>
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
                                    <form action="Scomplaint.jsp" method="post">
                                        <table>
                                        <tr>
                                            <td>Search Complaint :</td>
                                            <td><input type="text" name="complainid" placeholder="Complaint no."></td>
                                                    
                                        </tr>
                                    </table>
                                        <input type="submit" value="Search" class="btn btn-primary">
                                        </form>
				</div>			  	
				<div id="right_container" class="col col-md-9 col-sm-12">
                                    <div class="row"><div class="col col-md-12"><center><h3>Menu</h3></center></div></div>
					<article class="row">							
						<div class="col col-md-12">

							 
                                                                                               
            <nav id="main_nav">
                <ul class="nav" style="font-size:20px">
						<li><a href="police.jsp">Home</a></li>
                                                <li><a href="PComplaintStatus.jsp">Complain Status</a></li>
                                                <li><a href="Settings.jsp">Settings</a></li>
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
</body>
</html>
