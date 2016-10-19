<%-- 
    Document   : RegisterJ
    Created on : Jul 15, 2015, 10:19:21 AM
    Author     : Asus lappy
--%>
<%@page import="javax.swing.*" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>

    <body>

        <%
            String Name=request.getParameter("Name");
            String Email=request.getParameter("Email");
            String Phone=request.getParameter("Phone");
            String Message=request.getParameter("Message");
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                PreparedStatement pstmt=conn.prepareStatement("insert into CONTACTREQUEST values(?,?,?,?)");
                pstmt.setString(1, Name);
                pstmt.setString(2, Email);
                pstmt.setString(3, Phone);
                pstmt.setString(4, Message);
                int i=pstmt.executeUpdate();
                if(i>0)
                {
                        JOptionPane.showMessageDialog(null,"Message filed");
                        response.sendRedirect("index.jsp");
                }
                else
                {
                        JOptionPane.showMessageDialog(null,"Mesage Not filed");
                    response.sendRedirect("contact.jsp");
                }                
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>

