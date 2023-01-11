<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="it.generationitaly.examplewebapp.entity.Esame" %>
    <%@ page import="it.generationitaly.examplewebapp.entity.Studente" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<% Studente studente = (Studente) request.getAttribute("studente"); %>
	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th>Email:</th>
				<th>Telefono:</th>
				<th>Domicilio:</th>

			</tr>
		
		</thead>	
		<tbody>
			<tr>
			<td><%= studente.getContatti().geteMail() %></td>
			<td><%= studente.getContatti().getTelefono() %></td>
			<td><%= studente.getContatti().getDomicilio() %></td>
			</tr>
		
		</tbody>
		</table>
		<button type="button" class="w-40 btn btn-lg btn-danger"  name="back" onclick="history.back()">Indietro</button>
		
		



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>	
</body>
</html>