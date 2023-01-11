<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="it.generationitaly.examplewebapp.entity.Corso" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Corso corso= (Corso) request.getAttribute("corso"); %>
	<form action="mod4" method="post">
		<input type="hidden" name="id" value="<%= corso.getId() %>"> 
		<input id="input-codice" class="form-control" name="codice" type="text" value="<%= corso.getCodice() %>" required >   
		<label for="input-codice">Codice</label>  <!-- con il for nel label diciamo che siamo associati all'id nell'input -->
	
		
		<input id="input-nome" class="form-control" name="nome" type="text" value ="<%= corso.getNome()%>" required >
		<label for="input-nome">Nome</label>
		
		<input id="input-cfu" class="form-control" name="cfu" type="number" value="<%= corso.getCfu()%>" required > <!-- form control è solo per bootstrap per dargli uno stile -->
		<label for="input-cfu">Cfu</label>
		
		<button type="submit">Aggiorna</button>
		
	</form>
	
</body>
</html>