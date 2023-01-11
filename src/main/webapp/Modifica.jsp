<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="it.generationitaly.examplewebapp.entity.Studente" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body style="background-image:url(https://media.gqitalia.it/photos/61c1bc57ffa8ab477a2d43ae/master/w_1600%2Cc_limit/IPA_IPA7415006.jpg); background-repeat: no;
    background-size: cover;">
<% Studente studente = (Studente) request.getAttribute("studente"); %>
	<form action="mod2" method="post">
		<div class="form-floating mb-3">
		<input id="input-matricola" class="form-control" name="matricola" type="text" value="<%= studente.getMatricola() %>" required >   
		<label for="input-matricola">Matricola</label>  <!-- con il for nel label diciamo che siamo associati all'id nell'input -->
		</div>
		
		<div class="form-floating mb-3">
		<input id="input-codiceFiscale" class="form-control" name="codiceFiscale" type="text" value="<%= studente.getCodiceFiscale() %>" required >
		<label for="input-codiceFiscale">Codice Fiscale</label>
		</div>
		
		<div class="form-floating mb-3">
		<input id="input-nome" class="form-control" name="nome" type="text" value ="<%= studente.getNome()%>" required >
		<label for="input-nome">Nome</label>
		</div>
		
		<div class="form-floating mb-3">
		<input id="input-cognome" class="form-control" name="cognome" type="text" value="<%= studente.getCognome()%>" required > <!-- form control è solo per bootstrap per dargli uno stile -->
		<label for="input-cognome">Cognome</label>
		</div>
		
		<div class="form-floating mb-3">
		<input id="input-dataNascita" class="form-control" name="dataNascita" type="date"  value="<%= studente.getDataNascita()%>" required>
		<label for="input-dataNascita">Data di Nascita</label>
		</div>
		
		<div>
		<input class="form-check-input" type="radio" name="sesso" id="sesso" value="M" <%= studente.getSesso() == 'M' ? "checked" : "" %>>
  		<label class="form-check-label" for="sesso">M</label>
  		<span><% if(request.getAttribute("error-sesso")!= null) { %></span>
  		<%} %>
  		</div>
  		
  		
  		<div>
  		<input class="form-check-input" type="radio" name="sesso" id="sesso" value="F" <%= studente.getSesso() == 'F' ? "checked" : "" %>>
  		<label class="form-check-label" for="sesso">F</label>
  		<span><% if(request.getAttribute("error-sesso")!= null) { %></span>
  		<%} %>
  		</div>
  		<input type="hidden" name="id" value="<%= studente.getId() %>">
  		<button type="submit">Aggiorna Studente</button>

	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>