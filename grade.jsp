<%--
 Document : grade
 Created on : 12 Feb, 2023, 3:20:04 PM
 Author : DHANSHRI
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 <style>
 body{
margin: 0;
padding: 0;
display: flex;
min-height: 100vh;
font-family: 'Jost', sans-serif;
 font-size: larger;
 color: white;
background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
}
.main{
width: 350px;
height: 350px;
background: red;
overflow: hidden;
background: url("https://doc-08-2cdocs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiuc
mc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpE
pnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922
298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
border-radius: 10px;
box-shadow: 5px 20px 50px #000;
}
#chk{
display: none;
}
.signup{
position: relative;
width:100%;
height: 100%;
 color:#eee
}
label{
color: #fff;
font-size: 2.3em;
justify-content: center;
display: flex;
margin: 60px;
font-weight: bold;
cursor: pointer;
transition: .5s ease-in-out;
}
input{
width: 60%;
height: 20px;
background: #e0dede;
justify-content: center;
display: flex;
margin: 20px auto;
padding: 10px;
border: none;
outline: none;
border-radius: 5px;
}
.abc{
width: 60%;
height: 40px;
margin: 10px auto;
justify-content: center;
display: block;
color: #fff;
background: #573b8a;
font-size: 1em;
font-weight: bold;
margin-top: 20px;
outline: none;
border: none;
border-radius: 5px;
transition: .2s ease-in;
cursor: pointer;
}
button:hover{
background: #6d44b8;
}
.login{
height: 460px;
background:#eee
border-radius: 60% / 10%;
transform: translateY(-180px);
transition: .8s ease-in-out;
}
.login label{
color:url("https://doc-08-2cdocs.googleusercontent.com/docs/securesc/68c90smiglihng9534mvqmq1946dmis5/fo0picsp1nhiuc
mc0l25s29respgpr4j/1631524275000/03522360960922298374/03522360960922298374/1Sx0jhdpE
pnNIydS4rnN4kHSJtU1EyWka?e=view&authuser=0&nonce=gcrocepgbb17m&user=03522360960922
298374&hash=tfhgbs86ka6divo3llbvp93mg4csvb38") no-repeat center/ cover;
transform: scale(.6);
}
#chk:checked ~ .login{
transform: translateY(-500px);
}
#chk:checked ~ .login label{
transform: scale(1);
}
#chk:checked ~ .signup label{
transform: scale(.6);
}
 </style>
 </head>
 <body>
 <%Integer sum;Integer one;Integer two;Integer three;Integer four;Integer five;Integer 
six;Integer seven;Integer eight;Integer nine;String grade;Integer roll1;%>
 <%
 roll1=Integer.parseInt(request.getParameter("marks2"));
 PreparedStatement ps=null;
 grade="e";
 
 String sql="select * from Class where roll=?";
 String sql2="update Class set grade=? where roll=?";
 if(roll1!= null)
 {
 try{
 Connection 
con=DriverManager.getConnection("jdbc:derby://localhost:1527/Student","Student","Student");
 ps=con.prepareStatement(sql);
 ps.setInt(1,roll1);
 ResultSet rs=ps.executeQuery();
 if(rs.next())
 {
 one=rs.getInt("marks1");
 two=rs.getInt("marks2");
 three=rs.getInt("marks3");
 four=rs.getInt("marks4");
 five=rs.getInt("marks5");
 six=rs.getInt("marks6");
 seven=rs.getInt("marks7");
 eight=rs.getInt("marks8");
 nine=rs.getInt("internal");
 sum=one+two+three+four+five+six+seven+eight+nine;
 if(sum>45 && sum<=55)
 {
 grade="A";
 out.println("grade=A");
 }
 else if(sum>40 && sum<=45)
 {
 grade="B";
 out.println("grade=B");
 
 }
 else if(sum>35 && sum<=40)
 {
 grade="C";
 out.println("grade=C");
 
 }
 else if(sum>30 && sum<=35)
 {
 grade="D";
 out.println("grade=D");
 
 }
 else 
 {
 grade="E";
 out.println("grade=E");
 
 } 
 
 }
 ps.close();
 PreparedStatement pc=null;
 pc=con.prepareStatement(sql2);
 pc.setString(1,grade);
 pc.setInt(2,roll1);
 pc.execute();
 pc.close();
 con.close();
 
 
 }
 catch(SQLException e)
 {
 out.println(e);
 }
 }
 
 %>
 </body>
</html>
