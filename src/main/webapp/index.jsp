<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Libro"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
<%
String error=(String)request.getAttribute("error");
if(error!=null){
	%>
	<p><%=error %>
	<% 
}
%>
<%
String info=(String)request.getAttribute("info");
if(info!=null){
	%>
	<p><%=info%>
	<% 
}
%>
	<table>
		<tr>
			<th><b>ISBN</b></th>
			<th><b>Título</b></th>
			<th><b>Autor</b></th>
		</tr>
		<%ArrayList<Libro> libros = (ArrayList<Libro>) request.getAttribute("libros");
		if (libros != null) {
			for (Libro l : libros) {%>
		
		<tr>
			<td><%=l.getIsbn()%></td>
			<td><%=l.getTitulo()%></td>
			<td><%=l.getAutor()%></td>
		</tr>

		<%
		}
		}
		%>

	</table>
	<div>
	
		<form action="insertar">
			<label for="isbn">ISBN</label> <input type="text" id="isbn"
				name="isbn" placeholder="ISBN..."> <label for="titulo">Título</label>
			<input type="text" id="titulo" name="titulo" placeholder="Titulo...">

			<label for="autor">Autor</label> <input type="text" id="autor"
				name="autor" placeholder="Autor..."> <input type="submit"
				value="Submit">

		</form>
	</div>
</body>
</html>