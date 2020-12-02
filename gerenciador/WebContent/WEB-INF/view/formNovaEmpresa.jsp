<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada" var="linkEntradaServlet" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar nova empresa</title>
</head>
<body>
<c:import url="logout-parcial.jsp" />
	<h2>Cadastrar Nova Empresa:</h2>
	<form action="${ linkEntradaServlet }" method="POST">
		Nome:
		<input type="text" name="nome" />
		Data Abertura:
		<input type="text" name="dataAbertura">
		<input type="hidden" name="acao" value="NovaEmpresa">
		
		<button type="submit">Cadastrar</button>
	</form>
</body>
</html>