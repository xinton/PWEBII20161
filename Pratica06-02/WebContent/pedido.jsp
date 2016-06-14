<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Pedido </title>
<style>
table, th, td {
    border: 1px solid black;
}
th {
	background-color: yellow;
}
</style>
</head>
<body>		
	<table>
		<tr> 
			<th> Descricao </th>
			<th> Preco </th>
			<th> Quantidade </th> 
			<th> Alterar quantidade  </th>
		</tr>
		<c:forEach items="${sessionScope.carrinho.itemsCarrinho}" var="i">
		<tr>
			<td> ${i.descricaoCurta} </td>
			<td> ${i.precoUnitario} </td>
			<td> ${i.numItens} </td>
			<td> 
				<form action="pedido" method="post"> 
					<input type="hidden" name="itemID" value="${i.itemID}"/>
					<input type="text" name="quantidade" value="${i.numItens }"/> 
					<input type="submit" name="altQtd" value="Alterar quantidade"/>
				</form>				
			</td>
		</tr>
		</c:forEach>
	</table>
	<ul> 
		<li> <a href="lista"> <button> Continuar Comprando </button> </a> </li>
		<li> <a href="resumo"> <button> Resumo da compra </button> </a> </li>
	</ul>
	
	
</body>
</html>