<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${linkServletNovaEmpresa}" method="post">
	<label>Nome</label>
	<input type="text" name="nome" />
	<label>Data abertura:</label>
	<input type="text" name="data" />
	<input type="submit" />
	</form>
</body>
</html>