<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AggiungiCorsoServlet" method="post">
		<input id="input-codice" class="form-control" name="codice" type="text" required>   
		<label for="input-codice">Codice</label>  <!-- con il for nel label diciamo che siamo associati all'id nell'input -->
	
		
		<input id="input-nome" class="form-control" name="nome" type="text" required>
		<label for="input-nome">Nome</label>
		
		<input id="input-cfu" class="form-control" name="cfu" type="number" required> <!-- form control è solo per bootstrap per dargli uno stile -->
		<label for="input-cfu">Cfu</label>
		
  		<button type="submit">Aggiungi Corso</button>

	</form>
</body>
</html>