<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix= "c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Persona</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>
 <form action="../PersonaServlet"  method="post">

 <input type="submit" name="accion" value="Listar">
 
 </form>
 
 <table>
 	<thead>
 	<tr>
 		<th>Cedula  </th> 
 		<th> Nombre </th> 
 		<th> Apellido </th> 
 		<th> Correo  </th> 
 		<th> Contraseņa </th> 
 	</tr>
 	
 	</thead>
 	<tbody>
 		
 		<c:forEach var="dato" items="${lista}">
 			<tr>
 				<td>${dato.getCedula()}</td> 
 				<td>${dato.getNombre()}  </td> 
 				<td>${dato.getApellido()} </td> 
 				<td>${dato.getCorreo()} </td>  
 				<td>${dato.getContrasena()} </td> 
 			</tr>
 	</c:forEach>
 	
	 
 	
 	</tbody>
 
 </table>
</body>
</html>