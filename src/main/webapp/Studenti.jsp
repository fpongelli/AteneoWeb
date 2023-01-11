<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.generationitaly.examplewebapp.entity.Studente" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>Lista studenti</title>
</head>
<body style="background-image:url(https://metronews.it/wp-content/uploads/2022/04/19185536_medium-1568x990.jpg); background-repeat: no;
    background-size: cover;">
<%List<Studente> studenti = (List<Studente>) request.getAttribute("studenti"); %> <!-- qua facciamo un cast -->
	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th>Matricola:</th>
				<th>Codice Fiscale:</th>
				<th>Nome:</th>
				<th>Cognome:</th>
				<th>Data Nascita:</th>
				<th>Sesso:</th>
				<th>Modifica</th>
				<th>Visualizza Esami</th>
				<th>Info Studente </th>
				
			</tr>
		
		</thead>
	<tbody>
		<%for(Studente studente : studenti){ %>
		<tr>
			<td><%= studente.getMatricola() %></td>
			<td><%= studente.getCodiceFiscale() %></td>
			<td><%= studente.getNome() %></td>
			<td><%= studente.getCognome() %></td>
			<td><%= studente.getDataNascita() %></td>
			<td><%= studente.getSesso() %></td>
			<td>
			<form action="mod1">
				<input type="hidden" name="id" value="<%= studente.getId() %>">
				<button type="submit">Modifica</button>
				</form>
			</td>
			
		
		<td>
		<form action="VisualizzaEsamiServlet">
		<input type="hidden" name="id" value="<%= studente.getId() %>">
		<button type="submit">Visualizza esami</button>
		</form>	
		</td>
		
		<td>
		<form action="ContattiServlet">
		<input type="hidden" name="id" value="<%= studente.getId() %>">
		<button type="submit">Info Studente</button>
		</form>
		</td>
		
		
		</tr>
	<%} %>
	</tbody>
	
	</table>
	<a href="AggiungiStudente.jsp"><button type="button" class="btn btn-light"> Aggiungi</button></a>
	<a href="index.jsp"><button type="button" class="btn btn-danger">Torna indietro</button></a>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>