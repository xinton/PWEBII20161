package br.edu.ifpb.pweb;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/finaliza")
public class FinalizaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String pais = request.getParameter("pais");
		
		String data = request.getParameter("data");
		
		String cartao = request.getParameter("cartao");
		String total = request.getParameter("total");
		
		RequestDispatcher rd = request.getRequestDispatcher("resumo.jsp");
		rd.forward(request, response);
	}

}
