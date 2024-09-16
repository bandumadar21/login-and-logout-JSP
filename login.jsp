<%@page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <link rel="stylesheet" href="login1.css" />
    </head>
<body>
<%
String userid=request.getParameter("user");
String password=request.getParameter("password");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from users1");
int flag=0;
while(rs.next())
{
if(rs.getString(4).equals(userid) && rs.getString(5).equals(password))
{
flag=1;
break;
}
} 
if (flag==0)  
{
out.print("<div>");
out.print("<span><h2>Username or Password is not correct</h2>");
out.print("<a href='index.html'><p>Back to Login</p></a>");
out.print("</span></div>");
}
else
{

session.setAttribute("uname",userid);
response.sendRedirect("welcome.jsp");

}

%>

</body>
</html>