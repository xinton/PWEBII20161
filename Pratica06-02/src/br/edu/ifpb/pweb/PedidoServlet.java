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
import br.edu.ifpb.pweb.carrinho.model.Catalogo;
import br.edu.ifpb.pweb.carrinho.model.Item;


@WebServlet("/pedido")
public class PedidoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("pedido.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemID = request.getParameter("itemID");	
		
		Item item = Catalogo.getItem(itemID);
		
		HttpSession session = request.getSession();		
				
		if( session.isNew() ) 
		{
			Carrinho c = new Carrinho();
			c.adicioneItem(itemID);

			if ( request.getParameter("altQtd") != null ) {
				Integer quantidadeItem = Integer.parseInt( request.getParameter("quantidade") );
				c.setQtdeItens(itemID, quantidadeItem);
			}
						
			session.setAttribute("carrinho", c );
			
			RequestDispatcher rd = request.getRequestDispatcher("pedido.jsp");
			rd.forward(request, response);
		} 
		else{	
			Carrinho c = (Carrinho) session.getAttribute("carrinho");
			c.adicioneItem(itemID);

			if ( request.getParameter("altQtd") != null ) {
				Integer quantidadeItem = Integer.parseInt( request.getParameter("quantidade") );
				c.setQtdeItens(itemID, quantidadeItem);
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("pedido.jsp");
			rd.forward(request, response);
		}
	}


}
