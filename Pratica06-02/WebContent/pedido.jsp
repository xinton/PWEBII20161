<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Pedido </title>
</head>
<body>
	
		<table style="border: black 1px solid">
			<tr> 
				<td> Descricao </td>
				<td> Preco </td>
				<td> Quantidade </td>
			</tr>
			<c:forEach items="${sessionScope.carrinho.itemsCarrinho}" var="i">
			<tr>
				<td> ${i.descricaoCurta} </td>
				<td> ${i.precoUnitario} </td>
				<td> ${i.numItens} </td>
				<td> Alterar quantidade : <input type="text" name="qtd">  </input> </td>
			
			</tr>
			</c:forEach>
		</table>
		
</body>
</html>