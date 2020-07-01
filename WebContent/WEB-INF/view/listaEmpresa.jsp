<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>

<%@
	page import="java.util.List,gerenciador.modelo.Empresa"
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
	<body>		
		
		<c:if test="${not empty empresa}">
			<h1>Empresa ${empresa} cadastrada com sucesso</h1>
		</c:if>
		
		<ul>
			<c:forEach items="${empresas}" var="empresa">			
				<li> 
					${empresa.nome} - 
					<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
					<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">editar</a>
					<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remover</a>
				</li>
			</c:forEach>
		</ul>
	
	</body>
</html>