<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="RegisterServlet" method="post">
		<input id="input-username" class="form-control" name="username" type="text" required>   
		<label for="input-username">Username</label>  <!-- con il for nel label diciamo che siamo associati all'id nell'input -->
		
		<input id="input-password" class="form-control" name="password" type="text" required> <!-- form control è solo per bootstrap per dargli uno stile -->
		<label for="input-password">Password</label>
		
		<input id="input-ripetiPassword" class="form-control" name="ripetiPassword" type="number" required> <!-- form control è solo per bootstrap per dargli uno stile -->
		<label for="input-ripetiPassword">Ripeti Password</label>
		
  		<button type="submit">Registrati</button>

	</form>
</body>
</html>