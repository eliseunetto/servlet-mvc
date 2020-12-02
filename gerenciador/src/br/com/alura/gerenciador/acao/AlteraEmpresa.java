package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class AlteraEmpresa implements Acao {

	public String executa(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		Integer id = Integer.valueOf(request.getParameter("id"));
		String nomeEmpresa = request.getParameter("nome");
		String paranDataAbertura = request.getParameter("dataAbertura");
		
		System.out.println("AÇÃO - Altera Empresa => id: " + id);
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date dataAbertura = null;
		
		try {
			dataAbertura = sdf.parse(paranDataAbertura);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
				
		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaPorId(id);
		
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(dataAbertura);
		
		return "redirect:ListaEmpresas";
	}
}
