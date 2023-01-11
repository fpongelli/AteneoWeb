<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="it.generationitaly.examplewebapp.entity.Esame" %>
    <%@ page import="it.generationitaly.examplewebapp.entity.Studente" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Studente studente = (Studente) request.getAttribute("studente"); %>
		<table>
		<thead>
			<tr>
				<th>Data Esame:</th>
				<th>Voto:</th>
				<th>Lode:</th>
				<th>Corso:</th>
				<th>CFU:</th>
			</tr>
		
		</thead>
		<tbody>
			<%for(Esame esame : studente.getEsami()){ %>
		<tr>
			<td><%= esame.getDataEsame()%></td>
			<td><%= esame.getVoto()%></td>
			<td><%= esame.getLode()%></td>
			<td><%= esame.getCorso().getNome()%></td>
			<td><%= esame.getCorso().getCfu() %></td>
			
		</tr>
		
		<% } %>
		<form action="AggiungiEsameServelt1">
                <input type="hidden"  name="id" value="<%= studente.getId()%>">
                <button type="submit" class="btn btn-info">aggiungi esame</button>
                </form>
		</tbody>

</table>

	
</body>
</html>