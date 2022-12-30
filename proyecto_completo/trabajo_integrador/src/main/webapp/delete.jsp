<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		
	Class.forName("com.mysql.cj.jdbc.Driver");

	try{
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/compratickets", "root", "");
		Statement stm = cn.createStatement();
		stm.executeUpdate("UPDATE ticket SET confirmacionCompra='1' WHERE id=(SELECT MAX(id) FROM ticket)");//si cancelan la compra, la confirmacion pasa a FALSE
	} catch(Exception e){
		out.print("Error en la carga de datos");
	}
%>

<jsp:include page="./pages/compraTickets.html"></jsp:include>

</body>
</html>