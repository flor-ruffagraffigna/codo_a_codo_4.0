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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	try{
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/compra_ticket", "root", "");
		Statement stm = cn.createStatement();
		int valor = 1;
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
		while(rsId.next()){
			int eid = rsId.getInt(1);
			String consulta = ("UPDATE ticket SET nombre='"+nombre+"', apellido='"+apellido+"', mail='"+mail+"', cantidad='"+cantidad+"', categoria='"+categoria+"' WHERE id="+eid+" ");

			stm.executeUpdate(consulta);
		}
	} catch(Exception e){
		out.print("Error al modificar los datos");
	}
%>

<jsp:include page="compraTickets.jsp"></jsp:include>

</body>
</html>
