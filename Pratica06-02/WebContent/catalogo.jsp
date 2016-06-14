<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core"           
           %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Catalogo de Itens </title>
</head>
<body>
	<center> 
	<c:forEach items = "${catalogo}" var = "i">
		<form action="pedido" method="post">
		  	<p>
		  		Descricao Curta: ${i.descricaoCurta} <br/>
		  		Descricao Longa: <c:out value="${i.descricaoLonga}"/> <br/>
				Preco: <c:out value="${i.preco}"/> <br/>
				<input type="hidden" name="itemID" value="${i.itemID}"> </input>
				<input type="submit" value="Adicionar ao carrinho"> </input> <br/>
			</p>  
		</form>
		<hr/>
	</c:forEach>	
	
	<%-- 
	<form action="pedido" method="post">
		<ul>
		<c:forEach items = "${catalogo}" var = "i">
		  	<li>
		  		Descricao Curta: <c:out value="${i.descricaoCurta}"/> <br/>
		  		Descricao Longa: <c:out value="${i.descricaoLonga}"/> <br/>
		  		Preco: <c:out value="${i.preco}"/> <br/>
		  		<input type="hidden" name="itemID" value="${i.itemID}"> </input>
		  		<input type="submit" name="${i.itemID}" value="Adicionar ao carrinho"> </input> <br/>
		  	</li>  
		</c:forEach>	
	</ul>
	</form>
	--%>
	</center>
</body>
</html>