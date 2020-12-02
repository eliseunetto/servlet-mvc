<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada" var="linkEntradaServlet" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Empresa</title>
</head>
<body>
<c:import url="logout-parcial.jsp" />
	<h2>Editar dados da Empresa:</h2>
	<form action="${ linkEntradaServlet }" method="POST">
		Nome:
		<input type="text" name="nome" value="${ empresa.nome }"/>
		Data Abertura:
		<input type="text" name="dataAbertura" value='<fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy"/>'>
		<input type="hidden" name="id" value="${ empresa.id }"/>
		<input type="hidden" name="acao" value="AlteraEmpresa">
		<button type="submit">Salvar</button>
	</form>
</body>
</html>