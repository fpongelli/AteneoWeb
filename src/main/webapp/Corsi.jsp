<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.generationitaly.examplewebapp.entity.Corso" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<Corso> corsi = (List<Corso>) request.getAttribute("corsi"); %> <!-- qua facciamo un cast -->
	<table>
		<thead>
			<tr>
				<th>Nome:</th>
				<th>Codice:</th>
				<th>Cfu:</th>
			</tr>
		
		</thead>
	<tbody>
		<%for(Corso corso : corsi){ %>
		<tr>
			<td><%= corso.getNome()%></td>
			<td><%= corso.getCodice() %></td>
			<td><%= corso.getCfu() %></td>
			<td>
			<form action="mod3">
				<input type="hidden" name="id" value="<%= corso.getId() %>">
				<button type="submit">Modifica</button>
				</form>
			</td>
			<td><button type="button">Elimina</button></td>
		
		
		
		</tr>
	<%} %>
	</tbody>
	
	</table>
	<a href="AggiungiCorso.jsp">Aggiungi</a>
	<a href="index.jsp"><button type="button" class="btn btn-danger">Torna indietro</button></a>
	
	
	
</body>
</html>