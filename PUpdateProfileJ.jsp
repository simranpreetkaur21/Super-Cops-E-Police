<%-- 
    Document   : RegisterJ
    Created on : Jul 15, 2015, 10:19:21 AM
    Author     : Asus lappy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
    </head>
    <body>
        <%
            try{   
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
        PreparedStatement pstmt=conn.prepareStatement("select * from SUPERPOLICE  ");
        
        ResultSet rs=pstmt.executeQuery();
            %>
            <h1>Registration Here</h1>
        <form action="updatprofilevalidation.jsp" method="post">
            <table border="2">
                <% if(rs.next())
        {
        %>
        <tr>
					<td><p>Full name</p></td>
                    
					
                    <td><input type="text" name="Name" value="<%=rs.getString(1)%>"></td>
                </tr>
                <tr>
                    <td><p>Father's Name :</p></td>
                    <td><input type="text" name='FathersName' value="<%=rs.getString(2)%>"></td>
                <br>
                </tr>
              
                <tr>
                    <td><p> Mobile No. :</p></td>
                    <td><input type="text" name='MobileNo' value="<%=rs.getString(3)%>"></td>
                </tr>
                <tr>
                    <td><p> Email : </p></td>
                    <td><input type="email" name='Email' value="<%=rs.getString(4)%>"></td>
                </tr><br>
                 <tr>
                    <td><p>Address</p></td>
                    <td><input type="text area" name="Address" value="<%=rs.getString(5)%>"></td>
                    
                </tr>
               
                <tr>
                  <td><p>Gender :</p></td>
                    <td><input type="Radio" name="Gender" value="Male"><p>Male</p></td>
                    <td>   <input type="Radio" name="Gender" value="Female" ><p>Female</p></td>
                </tr>
              
                <tr>
                    <td><p> Username : </p></td>
                    <td><input type="text" name="Uname" class="round" value="<%=rs.getString(7)%>"></td>
                </tr>
                <tr> 
                    <td><p>Password :</p> </td>
                    <td><input type="password" name="Upass" class="round" placeholder="Password"></td>
                </tr>
                
                <tr>
                    <td> <p> Confirm password : </p></td>
                    <td><input type="password" name="Cpass" class="round" placeholder="Password"></td>
                </tr>
             <%
        }
              
              %>
            </table> 
            <input type="submit" class="btn btn-primary" value="Update">
            <input type="reset" class="btn btn-primary" value="reset">
             
        </form>
        <%
        
         }catch(Exception e)
         {
             out.println(e);
         }
        %>
    </body>
</html>

