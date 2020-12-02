<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada" var="linkEntradaServlet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulário de Login</title>
</head>
<body>
	<h2>Formulário de Login:</h2>
	<form action="${ linkEntradaServlet }" method="POST">
		Login:
		<input type="text" name="login">
		Senha:
		<input type="password" name="senha"/>
		<input type="hidden" name="acao" value="Login"/>
		
		<button type="submit">Login</button>
	</form>
</body>
</html>