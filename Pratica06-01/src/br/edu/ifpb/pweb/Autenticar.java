package br.edu.ifpb.pweb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/autenticar")
public class Autenticar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		//String autenticar = request.getParameter("autenticar");
		
		if (senha.equals("123") && login.equals("123")) {
			System.out.println(login+senha+"TRUE");			
			session.setAttribute("autenticado", "true");
			session.setAttribute("usuario", login);
			RequestDispatcher rd = request.getRequestDispatcher("pagina1.jsp");
			rd.forward(request, response);
		} else {
			System.out.println(login+senha+"FALSE");
			RequestDispatcher rd = request.getRequestDispatcher("erro.jsp");
			rd.forward(request, response);
		}					
		
	}

}
