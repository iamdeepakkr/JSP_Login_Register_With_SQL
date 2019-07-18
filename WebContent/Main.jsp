<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@page import="java.io.*"%>     
<%@page import="java.sql.*"%> 
<%@page import="DBConnection.*"%>    
<%
Object login_auth = session.getAttribute("login_auth");
	if (login_auth == null) {
		response.sendRedirect("Login.jsp");
	}
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div><span>Welcome: </span>
<%
						try {
			                Connection con = DataBaseConnection.getConnection();
			                Statement s = con.createStatement();
							ResultSet rs = s.executeQuery("SELECT name FROM userdetails WHERE email='" + login_auth + "'");
							if (rs.next()) {
								out.println(rs.getString("name"));

							}

						} catch (Exception e) {
							out.print(e);
						}
					%>



</div>
</body>
</html>