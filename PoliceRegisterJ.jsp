<%-- 
    Document   : RegisterJ
    Created on : Jul 15, 2015, 10:19:21 AM
    Author     : Asus lappy
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Police Register</title>
    </head>
     <%!
            static int pid=50000;
     %>
    <body>
        <%
            String Belt=request.getParameter("Belt");
            String Name=request.getParameter("Name");
            String FathersName=request.getParameter("FathersName");        
            String MobileNo=request.getParameter("MobileNo");
            String Email=request.getParameter("Email");
            String Address=request.getParameter("Address");
            String Gender=request.getParameter("Gender");
         // String Uname=request.getParameter("Uname");
            String Upass=request.getParameter("Upass");
            
            
            
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                String query="select max(POLICE_ID) from SUPERPOLICE";
                Statement st=conn.createStatement();
                ResultSet rs1=st.executeQuery(query);

                                                            if(rs1.next())
                                                            {
                                                                out.println(rs1.getInt(1));
                                                                if(rs1.getInt(1)!=0)    
                                                                pid=rs1.getInt(1);
                                                                pid++;
                                                                       
                                                               
                                                            }
                PreparedStatement pstmt=conn.prepareStatement("insert into SUPERPOLICE values(?,?,?,?,?,?,?,?,?)");
                pstmt.setString(1,Belt);
                pstmt.setString(2, Name);
                pstmt.setString(3, FathersName);
                pstmt.setString(4, MobileNo);
                pstmt.setString(5, Email);
                pstmt.setString(6, Address);
                pstmt.setString(7, Gender);
                pstmt.setString(8, ""+pid);
                pstmt.setString(9, Upass);
                int i=pstmt.executeUpdate();
                if(i>0)
                {
                    JOptionPane.showMessageDialog(null,"You Are Successfully Registered and your UserId Is :"+pid);
                    response.sendRedirect("login.jsp");
                }
                else
                {
                    JOptionPane.showMessageDialog(null,"You Are not Successfully Registere");
                    response.sendRedirect("PoliceRegister.jsp");
                }
                
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>

