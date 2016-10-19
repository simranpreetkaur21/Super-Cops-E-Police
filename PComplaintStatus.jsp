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
	<title>Compaint status</title>
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
					<div class="row"><div class="col col-md-12"><h1>File Complaint Status</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
							<h4>File Your Complain</h4>
							
							<div class="form-group">
                                                            
                                                            <%
        session=request.getSession(true);
         try{   
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
        PreparedStatement pstmt=conn.prepareStatement("select * from USERCOMPLAINT1 ");
        
        ResultSet rs=pstmt.executeQuery();
        %>
        <%! int i=1;%>
        <form action="PComplaintStatusJ.jsp" method="post">
           <table color="white" border="2">
               <tr>
                    <td>Complain Id</td>
                    <td>UserName</td> 
                    <td>Complaint</td>
                    <td>Location</td>
                    <td>Date of Complaint</td>
                    <td>Time</td>
                    <td>Status</td>
                    <td>Remarks</td>
                   
               </tr>
                <% while(rs.next())
                {
                %>
                <tr>
                <td><%=rs.getString(1)%>
                                   </td>
                                   <%
                         session=request.getSession(true);
                         session.setAttribute("compaintid",rs.getString(1));
                    %>
                
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>  
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td>
                    <select name="status">
                        <option>Pending</option>
                        <option>Completed</option>
                        <option>Denied</option>
                    </select>
                </td>
                <td><textarea name="Remarks" Placeholder="Remarks" required></textarea></td>
 
                
                
               
                </tr>
                <%
        }
              
              %>
               <%
        
         }catch(Exception e)
         {
             out.println("<html><p>");
             out.println(e);
             out.println("</html></p>");
             
         }
        %>  
            </table> 
            <br>
                  <br>
                        <button type="submit" class="btn btn-primary" name="Search">Submit</button>
			<button type="RESET" class="btn btn-primary" name="Search">Reset</button>
             
        </form>
       
      
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
</body>
</html>

