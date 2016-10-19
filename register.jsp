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
	<title>Register</title>
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
					<nav id="main_nav">
					<ul class="nav">
						<li><a href="index.jsp">Home</a></li>
                                                <li class="active"><a href="NewRegister.jsp">Register</a></li>
                                                <li><a href="login.jsp">Login</a></li>
                                                <li><a href="contact.jsp">Contact</a></li><br><br>
						</ul>
					</nav> <!-- nav -->	
				</div>			  	
				<div id="right_container" class="col col-md-9 col-sm-12">
					<div class="row"><div class="col col-md-12"><h1>Register Here</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
                                                    <h4>Please enter your Details</h4>
                                                    
                                                    <%!
                                                         static int uid=10000;
                                                         
                                                        %>
                                                        <%
                                                        try
                                                        {
                                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                                            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system", "waheguru");
                                                            String query="select MAX(userid) from SUPERUSER12";
                                                            
                                                            Statement st=con.createStatement();
                                                            ResultSet rs=st.executeQuery(query);
                                                            if(rs.next())
                                                            {
                                                                uid=rs.getInt(1);
                                                                uid++;
                                                               
                                                            }
                                                           
                                                             
                                                            
                                                        }catch(Exception e)
                                                        {
                                                            out.println(e);
                                                        }
                                                        
                                                        
                                                        %>
                                                    <form  action="RegisterJ.jsp" method="post" class="navbar-form">
                                                        <div class="form-group">
                                                            <table>
                                                                <tr>
                                                                    <td><p>User ID:</p></td>		
                                                                    <td><input type="text" name="userid" value="<%=uid%>" readonly="readonly"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><p>Full name</p></td>		
                                                                    <td><input type="text" name="Name" placeholder="Name"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><p>Father's Name :</p></td>
                                                                    <td><input type="text" name='FathersName' placeholder="Father's Name"></td>
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
                                                                    <td><input type="Radio" name="Gender" value="Female" ><p>Female</p></td>
                                                                </tr>             
                                                                <tr>
                                                                    <td><p> Username : </p></td>
                                                                    <td><input type="text" name="Uname" class="round" placeholder="UserName"></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><p>Password :</p> </td>
                                                                    <td><input type="password" name="Upass" class="round" placeholder="Password"></td>
                                                                </tr>       
                                                                <tr>
                                                                    <td> <p> Confirm password : </p></td>
                                                                    <td><input type="password" name="Cpass" class="round" placeholder="Password"></td>
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
