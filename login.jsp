LOGIN.JSP:
<%--
 Document : login
 Created on : 12 Feb, 2023, 8:51:53 AM
 Author : Ketan
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>login</title>
 </head>
 <body>
 <%! String name;String pass;String password;String email;%>
 <%
 name=request.getParameter("email");
 pass=request.getParameter("pswd");
 PreparedStatement ps=null;
 String sql="select * from Employee where email=? and password=?";
 if(name !=null && pass !=null){
 try{
 Connection 
con=DriverManager.getConnection("jdbc:derby://localhost:1527/cred","cred","cred");
 Statement stat=con.createStatement();
 ps=con.prepareStatement(sql);
 ps.setString(1,name);
 ps.setString(2,pass);
 
 ResultSet rs=ps.executeQuery();
 if(rs.next()){
 email=rs.getString("email");
 password=rs.getString("password");
 }
 if(email.equals(name) && password.equals(pass))
 {
 
 response.sendRedirect("choice.html");
 
 }
 else
 {
 
 response.sendRedirect("login.html");
 }
 
 rs.close();
 ps.close();
 con.close();
 }
 catch(SQLException e){
 out.println(e);
 }
 
 
 }
 
 
 %>
 </body>
</html>
