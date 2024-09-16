<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<html>
	<head>
      <link rel="stylesheet" href="regprocess.css" />

	</head>
	<body>
		<%@page import="java.sql.*,java.util.*" %>
			<% 
			String fname=request.getParameter("fname"); 
			String lname=request.getParameter("lname"); 
			String email=request.getParameter("email");
			String userid=request.getParameter("userid");
			String password=request.getParameter("password"); 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager"); 
			Statement st=con.createStatement(); 
			int i=st.executeUpdate("insert into users1(fname,lname,email,userid,password)values('"+fname+"','"+lname+"','"+email+"','"+userid+"','"+password+"')");
			out.print("<div>");
			if(i>0)
			{
			out.println("<span style='padding:50px;font-size: 25px;'>Thank you for register ! <br/><br/>Please <a href='index.html'>Login</a> to continue.");
			}
			else
			{
			out.print("Registration is failed</span>");

			}
			out.print("</div>");
			%>

	</body>

	</html>