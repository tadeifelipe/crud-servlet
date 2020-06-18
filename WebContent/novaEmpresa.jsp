<%
	String nomeEmpresa = (String)request.getAttribute("empresa");
	System.out.println(nomeEmpresa);
%>

<html>
	<body>
		<h1>Empresa <%= nomeEmpresa %> cadastrada com sucesso</h1>
	</body>
</html>