<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<body>
	
		<c:if test="${not empty empresa}">
			<h1>Empresa ${empresa} cadastrada com sucesso</h1>
		</c:if>
		
		<c:if test="${empty empresa}">
			<h1>Nenhuma empresa cadastrada</h1>
		</c:if>
	</body>
</html>