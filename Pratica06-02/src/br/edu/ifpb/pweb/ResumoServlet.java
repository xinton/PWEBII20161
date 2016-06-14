package br.edu.ifpb.pweb;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.ifpb.pweb.carrinho.model.Carrinho;
import br.edu.ifpb.pweb.carrinho.model.ItemCarrinho;


@WebServlet("/resumo")
public class ResumoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Carrinho c = (Carrinho) session.getAttribute("carrinho");
		
		double total = 0;
		for ( ItemCarrinho i : c.getItemsCarrinho() ){			
			total += i.getPrecoTotal();
		}		
		session.setAttribute("total", total);
		
		RequestDispatcher rd = request.getRequestDispatcher("pagamento.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
