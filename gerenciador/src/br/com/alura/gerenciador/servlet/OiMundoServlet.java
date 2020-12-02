package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/oi")
public class OiMundoServlet extends HttpServlet {
	
	public OiMundoServlet() {
		System.out.println("Criando Oi Mundo Servlet");
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException  {
		
		PrintWriter out = resp.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("Oi mundo, parabéns, você acaba de escrever seu primeiro Servlet!");
		out.print("</body>");
		out.print("</html>");
		
		System.out.println("O Servlet OiMundoServlet foi chamado");
	}
}
