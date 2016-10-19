<%-- 
    Document   : FileComplain
    Created on : Jul 17, 2015, 9:07:28 AM
    Author     : Simranpreet Kaur
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
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
  <%!
       static int complaintid=90000 ;  
  %>
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
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
        String query="select max(COMPLAINT_ID) from USERCOMPLAINT1";
        Statement st=conn.createStatement();
        ResultSet rs1=st.executeQuery(query);

                                                            if(rs1.next())
                                                            {
                                                                out.println(rs1.getInt(1));
                                                                if(rs1.getInt(1)!=0)    
                                                                complaintid=rs1.getInt(1);
                                                                complaintid++;
                                                                       
                                                               
                                                            }
        PreparedStatement pstmt=conn.prepareStatement("select * from SUPERUSER12 where USERID='"+session.getAttribute("username")+"' ");       
        ResultSet rs=pstmt.executeQuery();
        %>
        <form action="FileComplainJ.jsp" method="post">
           <table color="white">
                <% if(rs.next())
        {
        %>
                <tr>
                     <td><p>Complaint ID:</p></td>		
                     <td><input type="text" name="ComplaintId" value="<%=complaintid%>" readonly="readonly"></td>
                     </tr>
                <tr>
                    <td>Name:</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%></p>
                </tr>
                <tr>
                    <td>Fathers's Name:</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(3)%></p>
                </tr>
                <tr>
                    <td>Mobile No.</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(4)%></p>
                </tr>
                <tr>
                    <td>Email id</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(5)%></p>    
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(6)%></p>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><p>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(7)%></p>
                </tr>
                 <tr>
                    <td><p>Complain</p></td>
                    <td><textarea name="Complaint" Placeholder="Complain" required></textarea></td>
                </tr>
                <tr>
                    <td><p>Location of crime </p></td>
                    <td><input type=text" name="PlaceOfCrime" Placeholder="Location"></td>
                </tr>
                <tr>
                    <td><p>Date of Crime (yyyy-mm-dd):</p></td>
                    <td><input type="date" name="DateOfCrime" Placeholder="date"></td>
                </tr>
                <tr>
                    <td><p>Time of Crime (hh:mm:ss):</p></td>
                    <td><input type="text" name="TimeOfCrime" Placeholder="Time"></td>
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

