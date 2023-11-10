<%--
 Document : register
 Created on : 12 Feb, 2023, 8:51:28 AM
 Author : Ketan
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>register</title>
 </head>
 <body>
 <% String name1; String email1;String pass;%>
 <%
 name1=request.getParameter("txt");
 email1=request.getParameter("email");
 pass=request.getParameter("pswd");
 PreparedStatement ps=null;
 String sql="insert into Employee(email,password,name) values(?,?,?)";
 if(name1!=null && email1!= null && pass!=null)
 {
 try{
 Connection 
con=DriverManager.getConnection("jdbc:derby://localhost:1527/cred","cred","cred");
 ps=con.prepareStatement(sql);
 ps.setString(1,email1);
 ps.setString(2,pass);
 ps.setString(3,name1);
 ps.execute();
 ps.close();
 
 response.sendRedirect("login.html");
 
 
 
 }
 catch(SQLException e)
 {
 out.println(e);
 }
 
 }
 
 %>
 </body>
</html>
