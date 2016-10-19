<%-- 
    Document   : PoliceRecord
    Created on : Jul 20, 2015, 10:39:53 AM
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
	<title>Complaint Status</title>
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
					<div class="row"><div class="col col-md-12"><h1>Complaint Status</h1></div></div>
					<article class="row">							
						<div class="col col-md-12">
							
							
							<div class="form-group">
                                                            
                                                            <%
        session=request.getSession(false);
         try{   
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
        PreparedStatement pstmt=conn.prepareStatement("select STATUS,REMARKS,COMPLAINT_ID from USERCOMPLAINT1");
        
    
        %>
       
           <table color="white" border="4px" style=" border-style: double;border-width: 2px;border-color: greenyellow; border-radius: 2px;font-size: 20px">
               <tr>
                  
                    <td>Status</td>
                    <td>Remarks</td>
                    <td>Complaint Id</td>
                    
                </tr>
                <%     ResultSet rs=pstmt.executeQuery();
        while(rs.next())
        {
        %>
                
                <tr>
                    <td><p><%=rs.getString(1)%><p></td>
                    <td><p><%=rs.getString(2)%><p></td>
                    <td><p><%=rs.getString(3)%><p></td>
                    
                </tr>
                    
                
               <%
        }
              
              %>
            </table> 
            <br>
        <%
        
         }catch(Exception e)
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
    <!-- templatemo 391 botany -->
</body>
</html>

