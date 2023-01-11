<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="AggiungiStudentiServlet" method="post">
		<input id="input-matricola" class="form-control" name="matricola" type="text" required>   
		<label for="input-matricola">Matricola</label>  <!-- con il for nel label diciamo che siamo associati all'id nell'input -->
		
		<input id="input-codiceFiscale" class="form-control" name="codiceFiscale" type="text" required>
		<label for="input-codiceFiscale">Codice Fiscale</label>
		
		<input id="input-nome" class="form-control" name="nome" type="text" required>
		<label for="input-nome">Nome</label>
		
		<input id="input-cognome" class="form-control" name="cognome" type="text" required> <!-- form control è solo per bootstrap per dargli uno stile -->
		<label for="input-cognome">Cognome</label>
		
		<input id="input-dataNascita" class="form-control" name="dataNascita" type="date" required>
		<label for="input-dataNascita">Data di Nascita</label>
		
		<input class="form-check-input" type="radio" name="sesso" id="flexRadioDefault1" value="M">
  		<label class="form-check-label" for="flexRadioDefault1">M</label>
  		
  		<input class="form-check-input" type="radio" name="sesso" id="flexRadioDefault1" value="F">
  						<label class="form-check-label" for="flexRadioDefault1">F</label>
  		
  		<input id="input-eMail" class="form-control" name="eMail" type="text" required> 
		<label for="input-eMail">Email</label>
		
		<input id="input-telefono" class="form-control" name="telefono" type="text" required> 
		<label for="input-telefono">Telefono</label>
		
		<input id="input-domicilio" class="form-control" name="domicilio" type="text" required> 
		<label for="input-domicilio">Domicilio</label>
		
  		<button type="submit">Aggiungi Studente</button>

	</form>
</body>
</html>