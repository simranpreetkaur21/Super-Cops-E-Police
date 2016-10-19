<%-- 
    Document   : UpdatePasswordJ
    Created on : Jul 19, 2015, 8:19:31 PM
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
            String Upass=request.getParameter("Upass");
            String NewPass=request.getParameter("NewPass");
            session=request.getSession(false);
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                PreparedStatement pstmt=conn.prepareStatement("update SUPERUSER12 set PASSWORD=? where USERID='"+session.getAttribute("username")+"' and PASSWORD=? ");
                pstmt.setString(1,NewPass);
                pstmt.setString(2,Upass);
                int i=pstmt.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("index.jsp");
                }
                else
                {
                    response.sendRedirect("UpdatePassword.jsp");
                }
                
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>

