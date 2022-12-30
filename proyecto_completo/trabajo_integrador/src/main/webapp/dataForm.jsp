<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conf Bs As</title>
</head>
<body>

<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	try{
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/compra_ticket", "root", "");
		Statement stm = cn.createStatement();
		stm.executeUpdate("INSERT INTO ticket(nombre, apellido, mail, cantidad, categoria) VALUES('"+nombre+"','"+apellido+"','"+mail+"','"+cantidad+"','"+categoria+"')");
	} catch(Exception e){
		out.print("Error en la carga de datos");
	}
%>

<jsp:include page="compraTickets.jsp"></jsp:include>

</body>
</html>
