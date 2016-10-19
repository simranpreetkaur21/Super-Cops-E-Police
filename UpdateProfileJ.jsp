<%-- 
    Document   : UpdateProfileJ
    Created on : Jul 19, 2015, 8:34:17 PM
    Author     : Simranpreet Kaur
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <%
            String Name=request.getParameter("Name");
            String FathersName=request.getParameter("FathersName");        
            String MobileNo=request.getParameter("MobileNo");
            String Email=request.getParameter("Email");
            String Address=request.getParameter("Address");
            String Gender=request.getParameter("Gender");
            session=request.getSession(false);
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                PreparedStatement pstmt=conn.prepareStatement("update SUPERUSER12 set NAME=?,FATHERSNAME=?,MOBILE_NO=?,EMAIL=?,ADDRESS=?,GENDER=? where USERID='"+session.getAttribute("username")+"' ");
                pstmt.setString(1, Name);
                pstmt.setString(2, FathersName);
                pstmt.setString(3, MobileNo);
                pstmt.setString(4, Email);
                pstmt.setString(5, Address);
                pstmt.setString(6, Gender);
                int i=pstmt.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("index.jsp");
                }
                else
                {
                    response.sendRedirect("UpdateProfile.jsp");
                }
                
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>

