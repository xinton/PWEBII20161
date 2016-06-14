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
		request.setAttribute("nome", request.getParameter("nome"));
		request.setAttribute("endereco", request.getParameter("endereco"));
		request.setAttribute("pais", request.getParameter("pais"));
		request.setAttribute("data", request.getParameter("data"));
		request.setAttribute("cartao", request.getParameter("cartao"));
		request.setAttribute("total", request.getParameter("total"));
		
		session.invalidate();
		
		RequestDispatcher rd = request.getRequestDispatcher("resumo.jsp");
		rd.forward(request, response);
		
	}

}
