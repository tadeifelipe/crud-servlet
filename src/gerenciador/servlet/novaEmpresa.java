package gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novaEmpresa")
public class novaEmpresa extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Cadastrando nova empresa");
		PrintWriter out = response.getWriter();
		Date data = null;
		String nomeEmpresa = request.getParameter("nome");
		String dataAbertura = request.getParameter("data");
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			data = sdf.parse(dataAbertura);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
		
		Empresa empresa = new Empresa();
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(data);
		
		Banco banco = new Banco();
		banco.adiciona(empresa);
		
		RequestDispatcher rd = request.getRequestDispatcher("/novaEmpresa.jsp");
		request.setAttribute("empresa", empresa.getNome());
		rd.forward(request, response);
	}

}
