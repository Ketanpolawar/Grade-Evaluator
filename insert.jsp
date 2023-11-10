<%--
 Document : insert
 Created on : 12 Feb, 2023, 1:28:35 PM
 Author : DHANSHRI
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>form</title>
 </head>
 <body>
 <% String name1;Integer roll1;Integer one;Integer two;Integer three;Integer four;Integer 
five;Integer six;Integer seven;Integer eight;Integer nine;String grade;%>
 <%
 name1=request.getParameter("name");
 roll1=Integer.parseInt(request.getParameter("txt"));
 one=Integer.parseInt(request.getParameter("marks1"));
 two=Integer.parseInt(request.getParameter("marks2"));
 three=Integer.parseInt(request.getParameter("marks3"));
 four=Integer.parseInt(request.getParameter("marks4"));
 five=Integer.parseInt(request.getParameter("marks5"));
 six=Integer.parseInt(request.getParameter("marks6"));
 seven=Integer.parseInt(request.getParameter("marks7"));
 eight=Integer.parseInt(request.getParameter("marks8"));
 nine=Integer.parseInt(request.getParameter("marks9"));
 grade=null;
 PreparedStatement ps=null;
 String sql="insert into 
Class(roll,name,marks1,marks2,marks3,marks4,marks5,marks6,marks7,marks8,internal,grade) 
values(?,?,?,?,?,?,?,?,?,?,?,?)";
 if(name1!= null && one !=null && two !=null && three !=null && four !=null && roll1 !=null && 
five!=null && six!=null && seven!=null && eight!=null && nine!=null)
 {
 try{
 Connection 
con=DriverManager.getConnection("jdbc:derby://localhost:1527/Student","Student","Student");
 ps=con.prepareStatement(sql);
 ps.setInt(1,roll1);
 ps.setString(2,name1);
 ps.setInt(3,one);
 ps.setInt(4,two);
 ps.setInt(5,three);
 ps.setInt(6,four);
 ps.setInt(7,five);
 ps.setInt(8,six);
 ps.setInt(9,seven);
 ps.setInt(10,eight);
 ps.setInt(11,nine);
 ps.setString(12,grade);
 
 response.sendRedirect("choice.html");
 
 ps.execute();
 ps.close(); 
 
 }
 catch(SQLException e)
 {
 out.println(e);
 }
 
 }
 
 
 
 %>
 
 </body>
</html>
