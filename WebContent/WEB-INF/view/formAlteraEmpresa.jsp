<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logoutParcial.jsp" />
	<br/>
	<form action="${linkServletNovaEmpresa}" method="post">
	<label>Nome</label>
	<input type="text" name="nome" value="${empresa.nome}"/>
	<label>Data abertura:</label>
	<input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
	<input type="hidden" name="id" value="${empresa.id}"/>
	<input type="hidden" name="acao" value="AlteraEmpresa"/>
	<input type="submit" />
	</form>
</body>
</html>