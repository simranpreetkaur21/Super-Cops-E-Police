<%-- 
    Document   : UpdatePasswordJ
    Created on : 18 Jul, 2015, 11:59:51 AM
    Author     : Daman
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try {
           
            String Uname=request.getParameter("Uname");
            String Upass=request.getParameter("Upass");
            String Npass=request.getParameter("Npass");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","waheguru");
            PreparedStatement pstmt=conn.prepareStatement("update SUPERPOLICE set PASSWORD=? where POLICE_ID=? and PASSWORD=?");
            pstmt.setString(1,Npass);
            pstmt.setString(2,Uname);
            pstmt.setString(3,Upass);
            int a=pstmt.executeUpdate();
            if(a>0)
            {
                
                JOptionPane.showMessageDialog(null,"Password Updated");
                response.sendRedirect("index.jsp");
            }
            else
            {
                JOptionPane.showMessageDialog(null,"Invalid Username or Password");
                response.sendRedirect("UpdatePasssword.jsp");
            }
            } catch(Exception e) 
            {            
            out.println(e);
                    }
        %>
    </body>
</html>
