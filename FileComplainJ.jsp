<%-- 
    Document   : FileComplainJ
    Created on : Jul 18, 2015, 2:28:57 PM
    Author     : Simranpreet Kaur
--%>

<%@page import="javax.swing.JOptionPane"%>
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
            String ComplaintId=request.getParameter("ComplaintId");
            String Complaint=request.getParameter("Complaint");
            String DateOfCrime=request.getParameter("DateOfCrime");
            //java.util.Date date = new java.util.Date();
            //java.sql.Date sqlDate = new java.sql.Date(DateOfCrime);
            DateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
            java.util.Date myDate = formatter.parse(DateOfCrime);
            java.sql.Date sqlDate= new java.sql.Date(myDate.getTime());
            //out.println(""+sqlDate);
            //java.sql.Date sqlDate = new java.sql.Date(myDate.getTime());
            //SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");                       
            //java.sql.Date d= new java.sql.Date(format.parse(DateOfCrime).getTime());
            String TimeOfCrime=request.getParameter("TimeOfCrime");
            String Location=request.getParameter("PlaceOfCrime");
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                PreparedStatement pstmt=conn.prepareStatement("insert into USERCOMPLAINT1(COMPLAINT_ID,USER_ID,COMPLAINT,LOCATION,DATEOFCOMPLAINT,TIME) values(?,?,?,?,?,?)");
                int cid=Integer.parseInt(ComplaintId);
                out.println(cid);
                pstmt.setInt(1,cid);
                pstmt.setString(2,""+session.getAttribute("username"));
                pstmt.setString(3,Complaint);
                pstmt.setString(4,Location);
                pstmt.setDate(5,sqlDate);
                pstmt.setString(6,TimeOfCrime);
             
               session=request.getSession(true);
                session.setAttribute("complaint", Complaint);
                session.setAttribute("complaintid", ComplaintId);
               session.setAttribute("username", session.getAttribute("username"));
               session.setAttribute("password", session.getAttribute("password"));
                int i=pstmt.executeUpdate();
                if(i>0)
                {
                    JOptionPane.showMessageDialog(null,"You Successfully filed Comaplint\nUser Id:"+session.getAttribute("username")+"\nComplaint Id:"+cid);
                    response.sendRedirect("index.jsp");
                }
                else
                {
                    response.sendRedirect("FileComplain.jsp");
                }
                
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>

