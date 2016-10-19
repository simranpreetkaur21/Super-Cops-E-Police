<%-- 
    Document   : FileComplain
    Created on : Jul 17, 2015, 9:07:28 AM
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
	<title>File Complain</title>
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
					<div class="row"><div class="col col-md-12"><h1>File Complain</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
							<h4>File Your Complain</h4>
							
							<div class="form-group">
                                                            
                                                            <%
        session=request.getSession(false);
         try{   
             String complainid=request.getParameter("complainid");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
        PreparedStatement pstmt=conn.prepareStatement("select * from POLICECOMPLAINT where COMPLAIN_ID=?");
        pstmt.setString(1,complainid);
        ResultSet rs=pstmt.executeQuery();
        %>
        <form action="#" method="post">
           <table color="white">
                <% if(rs.next())
        {
        %>
                
                <tr>
                    <td>COMPLAIN_ID</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(1)%></p>
                </tr>
                <tr>
                    <td>USER_NAME</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%></p>
                </tr>
                <tr>
                    <td>LOCATION</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(3)%></p>
                </tr>
                  <tr>
                    <td>COMPLAINT</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(4)%></p>    
                </tr>
                <tr>
                    <td>DATEOFCOMPLAINT</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(5)%></p>    
                </tr>
                <tr>
                    <td>TIME</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(6)%></p>
                </tr>
                <tr>
                    <td>STATUS</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(7)%></p>
                </tr>
                 <tr>
                    <td>REMARKS</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(8)%></p>
                </tr>
                
               
                
               <%
        }
              
              %>
            </table> 
            <br>
                  <br><button type="submit" class="btn btn-primary" name="Search">Submit</button>
			<button type="RESET" class="btn btn-primary" name="Search">Reset</button>
             
        </form>
        <%
        
         }catch(Exception e)
         {
             out.println("<html><p>");
             out.println(e);
             out.println("</html></p>");
             
         }
        %>
  
      
            </div>   
													
							</div>														            
						</article>						
						<!-- <article class="row">
							<div class="col col-md-6">
								<h4>Mauris in erat justo</h4>
								<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>
							</div>	
							<div class="col col-md-6">
								<h4>Etiam pharetra</h4>
								<p>Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat.</p>
							</div>			            
						</article> 	
						<article class="row">
							<div class="col col-md-4">
								<h4>Duis sed odio</h4>
								<p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>
							</div>	
							<div class="col col-md-4">
								<h4>Proin gravida nibh vel</h4>
								<p>Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus condimentum sit amet a augue. Proin condimentum fermentum nunc. Etiam pharetra, erat sed fermentum feugiat.</p>
							</div>
							<div class="col col-md-4">
								<h4>Lorem Ipsum</h4>
								<p>
									This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.		
								</p>
							</div>				            
						</article> 		                          
					</div>
				</div> -->
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
</body>
</html>

