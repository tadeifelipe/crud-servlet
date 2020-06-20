package gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AlteraEmpresa")
public class AlteraEmpresa extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date data = null;
		String nomeEmpresa = request.getParameter("nome");
		String dataAbertura = request.getParameter("data");
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			data = sdf.parse(dataAbertura);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
		
		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaPeloId(id);
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(data);
		
		response.sendRedirect("listaEmpresas");
		
	}

}
