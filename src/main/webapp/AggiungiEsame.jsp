<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="it.generationitaly.examplewebapp.entity.Corso" %>
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
<% List<Corso> corsi = (List<Corso>)request.getAttribute("corso"); %>
<% Studente studente = (Studente)request.getAttribute("studente"); %>
<form action="AggiungiEsameServlet2" method="post">
<br>
<label for="input-corso">Corso</label>
<select id="input-corso" name="input-corso" class="form-select" aria-label="Default select example">
  
  <% for(Corso corso : corsi){%>
  <option value="<%=corso.getId()%>"><%=corso.getNome()%></option>
<% } %>


</select>
			<input type="hidden" name="id" value="<%= studente.getId() %>">
				
		
		<br><br>
		
		<div class="form-floating mb-3">
		<input id="input-dataEsame" class="form-control" name="dataEsame" type="date" required>   
		<label for="input-dataEsame">Data esame:</label>  <!-- con il for nel label diciamo che siamo associati all'id nell'input -->
		</div>
		
		<br><br>
		<div class="form-floating mb-3">
		<input id="input-voto" class="form-control" name="voto" type="number" required>
		<label for="input-voto">Voto</label>
		</div>
		
	
		<label for="input-lode">Lode</label>
		<input id="input-lode" name="lode" type="checkbox"> <!-- form control è solo per bootstrap per dargli uno stile -->
		
		<br><br>
		
		<br><br>
  		<button type="submit" class="btn btn-dark">Aggiungi Esame</button>
  		<button type="button" class="btn btn-dark" ><a href="index.jsp">Torna alla home</a></button>
		
		
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>