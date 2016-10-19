<%-- 
    Document   : UpdateProfile
    Created on : Jul 19, 2015, 5:44:39 PM
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
	<title>Update Profile</title>
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
					<div class="row"><div class="col col-md-12"><h1>Update Profile</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
                                                    <div class="form-group">
                                                    <%
                                                    session=request.getSession(false);
                                                    try{   
                                                    Class.forName("oracle.jdbc.driver.OracleDriver");
                                                    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                                                    PreparedStatement pstmt=conn.prepareStatement("select * from SUPERUSER12 where USERID='"+session.getAttribute("username")+"'");
                                                    ResultSet rs=pstmt.executeQuery();
                                                    %>
                                                    <form action="UpdateProfileJ.jsp" method="post">
                                                    <table color="white">
                                                    <% if(rs.next())
                                                        {
                                                    %>
                                                    <tr>
                                                        <td><p>User ID:</p></td>		
                                                        <td><input type="text" name="userid" value="<%=rs.getString(1)%>" readonly="readonly"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Name:</td>
                                                        <td><input type="text" name="Name" value="<%=rs.getString(2)%>"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Fathers's Name:</td>
                                                        <td><input type="text" name="FathersName" value="<%=rs.getString(3)%>"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mobile No.</td>
                                                        <td><input type="text" name="MobileNo" value="<%=rs.getString(4)%>"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email id</td>
                                                        <td><input type="text" name="Email" value="<%=rs.getString(5)%>"></td>   
                                                    </tr>
                                                    <tr>
                                                        <td>Address:</td>
                                                        <td><input type="text" name="Address" value="<%=rs.getString(6)%>"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Gender:</td>
                                                        <td><input type="text" name="Gender" value="<%=rs.getString(7)%>"></td>
                                                    </tr>
                                                   <%
                                                        }
              
                                                   %>
                                                    </table><br><br> 
                                                    <button type="submit" class="btn btn-primary" name="Search" onclick="myFunction()">Submit</button>
                                                    <button type="RESET" class="btn btn-primary" name="Search">Reset</button>
                                                    </form>
                                                    <%
                                                    }
                                                    catch(Exception e)
                                                    {
                                                    out.println(e);
                                                    }
                                                    %>
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
        alert("Profile Updated");
        }
    </script>

</body>
</html>

