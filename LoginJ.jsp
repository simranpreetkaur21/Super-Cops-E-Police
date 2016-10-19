<%-- 
    Document   : LoginJ
    Created on : Jul 15, 2015, 10:54:37 AM
    Author     : Asus lappy
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%
            String uid=request.getParameter("Uid");
            String upass=request.getParameter("Upass");
            session=request.getSession(true);  
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "waheguru");
                PreparedStatement pstmt=conn.prepareStatement("select * from SUPERADMIN where USERNAME=? and PASSWORD=?");
                pstmt.setString(1, uid);
                pstmt.setString(2, upass);
                session.setAttribute("username",uid);
                session.setAttribute("password",upass);
                int i=pstmt.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("adminhome.jsp");
                }
               else
                {
                    
                    PreparedStatement pstmt1=conn.prepareStatement("select * from SUPERPOLICE where POLICE_ID=? and PASSWORD=?");
                    pstmt1.setString(1, uid );
                    pstmt1.setString(2, upass);
                    int j=pstmt1.executeUpdate();
                    if(j>0)
                    {
                        response.sendRedirect("police.jsp");
                    }
                    else
                    {
                       PreparedStatement pstmt2=conn.prepareStatement("select * from SUPERUSER12 where USERID=? and PASSWORD=?");
                        pstmt2.setString(1, uid);
                        pstmt2.setString(2, upass);
                        int k=pstmt2.executeUpdate();
                        if(k>0)
                        {
                            response.sendRedirect("UserHome.jsp");
                        }
                        else
                        {
                        %>
                           <script>
                               myfunction()
                               {
                                alert("Invalid Username or Password");
                               }
                           </script>
                        <%
                            response.sendRedirect("login.jsp");
                    
                        }
                    
                    }
                }
                
                
               
                                 
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>

