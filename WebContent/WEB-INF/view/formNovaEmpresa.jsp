<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkEntrada"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logoutParcial.jsp" />
	<br/>
	<form action="${linkEntrada}" method="post">
	<label>Nome</label>
	<input type="text" name="nome" />
	<label>Data abertura:</label>
	<input type="text" name="data" />
	<input type="hidden" name="acao" value="NovaEmpresa"/>
	<input type="submit" />
	</form>
</body>
</html>