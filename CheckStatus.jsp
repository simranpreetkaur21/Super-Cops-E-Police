<%-- 
    Document   : register
    Created on : Jul 15, 2015, 9:31:40 AM
    Author     : Asus lappy
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<title>Check Complaint Status</title>
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
					<div class="row"><div class="col col-md-12"><h1>Check Complaint Status</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
                                                    <h4>Please enter your Complain ID</h4>
                                                    
                                                    
                                                    <form  action="Scomplaint.jsp" method="post" class="navbar-form">
                                                        <div class="form-group">
                                                            <table>
                                                                  
                                                                <tr>
                                                                    <td> <p> ComplainId </p></td>
                                                                    <td><input type="text" name="complainid" class="round" placeholder="complainid"></td>
                                                                </tr>
                                                            </table><br><br>
                                                            <button type="submit" class="btn btn-primary" name="Search">submit</button>
                                                            <button type="RESET" class="btn btn-primary" name="Search">Reset</button>
                                                        </div> 
                                                    </form>
                                                    <br><br>
                                                    <h3>Strict action will be taken against the fake complaints</h3>														
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
