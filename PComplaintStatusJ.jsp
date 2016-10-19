<%-- 
    Document   : FileComplainJ
    Created on : Jul 18, 2015, 2:28:57 PM
    Author     : Simranpreet Kaur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.beans.Statement"%>
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
            session=request.getSession(false);
            String status=request.getParameter("status");
            String remarks=request.getParameter("Remarks");
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                
                PreparedStatement pstmt=conn.prepareStatement("update USERCOMPLAINT1 set STATUS=?,REMARKS=? where COMPLAINT_ID='"+session.getAttribute("complaintid")+"'");
               pstmt.setString(1,status);
               pstmt.setString(2,remarks);
               ResultSet rs=pstmt.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("PComplaintStatus.jsp");
                }
                else
                {
                    response.sendRedirect("index.jsp");
                }
                
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>

